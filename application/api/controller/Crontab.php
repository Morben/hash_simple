<?php

namespace app\api\controller;

use app\common\controller\Api;
use IEXBase\TronAPI\Tron;
use think\Db;
use IEXBase\TronAPI\Support\Base58;
use GuzzleHttp\Client;
/**
 * 首页接口
 */
class Crontab extends Api
{
    protected $noNeedLogin = ['*'];
    protected $noNeedRight = ['*'];
    
    
    public function gettest(){
        $text = "21312";
        $txt = $this->encrypt($text);
        dump($txt);
        dump($this->decrypt($txt));
    }
    
    //开奖 每秒一次
    public function Draw_prize(){
        
        //获取需要开奖的数据
        $draw_list = Db::name("game_record")->where(['contractRet'=>"SUCCESS",'status'=>0])->select();

        foreach ($draw_list as $draw){
            
            $game = Db::name("config")->where("value",$draw['to_address'])->find();
            //检测是否存在该游戏
            if(!empty($game)){
                //检测投注限额
                $quota = Db::name("config")->where("name",$game['name']."quota")->find();
                $quota = json_decode($quota['value'],true);
                if($draw['amount']<$quota[$draw['currency']."_min"]){
                    $this->settlement($draw,2,"投资金额小于最低限额，不予退回",1,$game['name']);
                }else{
                    $res = $this->Get_winning_information($draw,$game['name'],$quota['Odds']);    
                }
                if($draw['amount']>$quota[$draw['currency']."_max"]){
                    $this->settlement($draw,1,"投资金额大于最高限额，退回95%",2,$game['name']);
                }else{
                    $res = $this->Get_winning_information($draw,$game['name'],$quota['Odds']);
                }
                //计算中奖金额
                
                
                
            }else{
                $res = $this->settlement($draw,2,"游戏地址不存在",1,$game['name']);
            }
            
            echo $res;
        }
        
        
    }
    
    //转账 每秒1次
    public function transfer_accounts(){
        //获取未转账列表
        $draw_list = Db::name("game_record")->where(['contractRet'=>"SUCCESS",'status'=>1])->select();
        $config = Db::name("config")->where("name","forbiddenaddress")->value("value");
        $config = explode("\r\n",$config);
        
        foreach ($draw_list as $draw){
            if(!in_array($draw['owner_address'],$config)){
                if($draw['currency'] == "TRX"){
                $res = $this->send_trx($draw);
                }else if($draw['currency'] == "USDT"){
                    $res = $this->send_usdt($draw);
                }else{
                    $res = "不符合结算";
                } 
            }
            
           
        }
        
    }
    
   
    
    public function send_trx($draw){
        
        // dump($draw);
        //引入iexbase
        $fullNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $solidityNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $eventServer = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        
        try {
            $tron = new \IEXBase\TronAPI\Tron($fullNode, $solidityNode, $eventServer);
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            exit($e->getMessage());
        }
        $from_address = Db::name("config")->whereOR("name","payaddress")->value("value");
        // $to_address = $tron->toHex("TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB");
        $privatekey = Db::name("config")->whereOR("name","payprivatekey")->value("value");
        $tron->setAddress($from_address);
        $tron->setPrivateKey($privatekey);
        
        try {
            
            $transfer = $tron->send($draw['owner_address'], $draw['winmoney']);
            
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            die($e->getMessage());
        }
        // dump($transfer);die;
        if(isset($transfer['result']) && $transfer['result']){
            $newdraw['status'] = 3;
            $newdraw['updatetime'] = time();
            $newdraw['remark'] = "结算完成:";
            $transfer_record['contractRet'] = $transfer['result'];
        }else{
            $newdraw['updatetime'] = time();
            $newdraw['remark'] = "结算转账失败:".$transfer['code'];
            $transfer_record['contractRet'] = $transfer['code'];
        }
        $transfer_record['txID'] = $transfer['txid'];
        $transfer_record['grid'] = $draw['id'];
        $transfer_record['amount'] = $draw['winmoney'];
        $transfer_record['owner_address'] = $tron->fromHex($transfer['raw_data']['contract'][0]['parameter']['value']['owner_address']);
        $transfer_record['to_address'] = $tron->fromHex($transfer['raw_data']['contract'][0]['parameter']['value']['to_address']);
        $transfer_record['type'] = $transfer['raw_data']['contract'][0]['type'];
        $transfer_record['currency'] = "TRX";
        $transfer_record['createtime'] = time();
        $transfer_record['remark'] = "奖金";
        // $transfer_record['contractRet'] = $transfer['code'];
        
        // 启动事务
        Db::startTrans();
        try {
            Db::name('game_record')->where("id",$draw['id'])->update($newdraw);
            Db::name('transfer_record')->insert($transfer_record);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            $newdraw['remark'] = "转账完成，数据更新失败:".$transfer['code'];
            Db::name('game_record')->where("id",$draw['id'])->update($newdraw);
        }
       
        
        
    }
    
    public function send_usdt($draw){
        $uri = config("network");// shasta testnet
        $api = new \Tron\Api(new Client(['base_uri' => $uri,'headers'=>['TRON-PRO-API-KEY'=>config("apikey")]]));
        $config = [
            'contract_address' => config("contract_address"),// USDT TRC20
            'decimals' => 6,
        ];
        $trc20Wallet = new \Tron\TRC20($api, $config);
        $privateKey = Db::name("config")->whereOR("name","payprivatekey")->value("value");
        $from_address = Db::name("config")->whereOR("name","payaddress")->value("value");
        $address = $draw['owner_address'];
        $amount = $draw['winmoney'];
        // dump($privateKey);
        $from = $trc20Wallet->privateKeyToAddress($privateKey);
        // dump($from);
        $to = new \Tron\Address(
            $address,
            '',
            $trc20Wallet->tron->address2HexString($address)
        );
        
        
        // $str = json_decode($str,true);
       
        //发起转账
        $transferData = $trc20Wallet->transfer($from, $to, $amount);
        // dump($transferData);
        // $transferData = json_decode($transferData,true);
        // dump($transferData);
        
        $transfer_record['txID'] = $transferData->txID;
        $transfer_record['grid'] = $draw['id'];
        $transfer_record['amount'] = $draw['winmoney'];
        $transfer_record['owner_address'] = $from_address;
        $transfer_record['to_address'] = $address;
        $transfer_record['type'] = "TriggerSmartContract";
        $transfer_record['currency'] = "USDT";
        $transfer_record['createtime'] = time();
        $transfer_record['contractRet'] = "SUCCESS";
        $transfer_record['remark'] = "奖金";
        $newdraw['status'] = 3;
        $newdraw['updatetime'] = time();
        $newdraw['remark'] = "结算完成:";
        
        
        // 启动事务
        Db::startTrans();
        try {
            Db::name('game_record')->where("id",$draw['id'])->update($newdraw);
            Db::name('transfer_record')->insert($transfer_record);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
            $newdraw['remark'] = "转账完成，数据更新失败:".$transfer['code'];
            Db::name('game_record')->where("id",$draw['id'])->update($newdraw);
        }
        
        
    }
    
    //结算  1不结算 未中奖  2结算 退回部分金额
    // 转账记录 中奖状态 备注 结算类型 游戏类型
    protected function settlement($draw,$status,$remark,$type,$wintype){
      
        switch ($type) {
            case '1':
                $draw['status'] = $status;
                $draw['remark'] = $remark;
                $draw['wintype'] = $wintype;
                $draw['winmoney'] = 0;
                $draw['updatetime'] = time();
                break;
            case '2':
                //返回部分金额
                $draw['status'] = $status;
                $draw['remark'] = $remark;
                $draw['winmoney'] = $draw['amount'] * 0.95;
                $draw['updatetime'] = time();
                $draw['wintype'] = $wintype;
                break;    
            
            default:
               //code
                break;
        }
        
        $res = Db::name("game_record")->where("id",$draw['id'])->update($draw);
        if($res){
            return "开奖完成";
        }else{
            return "开奖失败";
        }
    }
    
    //计算开奖金额
    // 转账记录 游戏名 游戏赔率
    protected function Get_winning_information($draw,$gamename,$odds){
        $newdraw = [];
        switch ($gamename) {
            case 'sizegame':
                /*
                大小游戏  转账金额的个位数为0～4，代表下注小，区块哈希值(Block hash)最后的数字（只看数字，不看字母）也为0～4；或转账金额的个位数为5～9，代表下注大，区块哈希值(Block hash)最后的数字（只看数字，不看字母）也为5～9时，则成功中奖
                */
                $amount = intval($draw['amount']);
                
                $var1 = substr($amount, -1);
                
                $var2 = $draw['txID'];
                $var2 = $this->findNum($var2);
                $var2 = substr($var2, -1);
                if(0<=$var1 && $var1<=4 && 0<=$var2 && $var2<=4){
                    // 下注小 中奖
                    $odds = explode(":",$odds);
                    $winmoney = $amount * $odds[1];
                    $newdraw['winmoney'] = $winmoney;
                    $newdraw['status'] = 1;
                    $newdraw['wintype'] = "大小游戏";
                    $newdraw['updatetime'] = time();
                    $newdraw['remark'] = "买小中奖";
                    $newdraw['updatetime'] = time();
                }else if(5<=$var1 && $var1<=9 && 5<=$var2 && $var2<=9){
                    //下注大 中奖
                    $odds = explode(":",$odds);
                    $winmoney = $amount * $odds[1];
                    $newdraw['winmoney'] = $winmoney;
                    $newdraw['status'] = 1;
                    $newdraw['wintype'] = "大小游戏";
                    $newdraw['updatetime'] = time();
                    $newdraw['remark'] = "买大中奖";
                    $newdraw['updatetime'] = time();
                    
                }else{
                    $newdraw['status'] = 2;
                    $newdraw['remark'] = "大小游戏:未中奖";
                    $newdraw['wintype'] = "大小游戏";
                    $newdraw['winmoney'] = 0;
                    $newdraw['updatetime'] = time();
                }
                break;
            case 'sadgame':
                //单双游戏结算  规则:转账金额的个位数和区块哈希值(Block hash)最后的数字（只看数字，不看字母）同为单数或同为双数时，则成功中奖。
                $amount = intval($draw['amount']);
                
                $var1 = substr($amount, -1);
                $var1 = $var1 % 2;
                
                $var2 = $draw['txID'];
                $var2 = $this->findNum($var2);
                $var2 = substr($var2, -1);
                $var2 = $var2 % 2;
                if($var2 == $var1){
                    //中奖 计算中奖金额
                    $odds = explode(":",$odds);
                    $winmoney = $amount * $odds[1];
                    $newdraw['winmoney'] = $winmoney;
                    $newdraw['status'] = 1;
                    $newdraw['wintype'] = "单双游戏";
                    $newdraw['updatetime'] = time();
                    
                }else{
                    //未中奖
                    $newdraw['status'] = 2;
                    $newdraw['remark'] = "大小游戏:未中奖";
                    $newdraw['wintype'] = "大小游戏";
                    $newdraw['winmoney'] = 0;
                    $newdraw['updatetime'] = time();
                }
                break;    
            case 'doubletailgame':
                //双尾游戏结算  转账后区块哈希值(Block hash)最后的两位为“数字+字母”或“字母+数字”组合时，则成功中奖。
                $amount = intval($draw['amount']);
                
                $var2 = $draw['txID'];
                $var2 = substr($var2, -2);
                $var2 = str_split($var2, 1);
                if(is_numeric($var2[0]) != is_numeric($var2[1]) ){
                    //中奖
                    $odds = explode(":",$odds);
                    $winmoney = $amount * $odds[1];
                    $newdraw['winmoney'] = $winmoney;
                    $newdraw['status'] = 1;
                    $newdraw['wintype'] = "双尾游戏";
                    $newdraw['updatetime'] = time();
                }else{
                    //未中奖
                    $newdraw['status'] = 2;
                    $newdraw['remark'] = "双尾游戏:未中奖";
                    $newdraw['wintype'] = "双尾游戏";
                    $newdraw['winmoney'] = 0;
                    $newdraw['updatetime'] = time();
                }

                break;  
            case 'pc10game':
                //牛牛游戏结算
                /*
                采用【区块哈希值】后五位。平台点数：后五位中的前3位之和；玩家点数：后五位中的后3位之和；字母=10点
                1、牛一~牛二 玩家与平台同点 平台胜；2、牛三~牛牛 玩家与平台同点，按各自结果中的最数字依次比较，字母=10；3、牛三~牛牛 玩家与平台同点，各自结果中数字同点，和局，原额退还给玩家。
                
                */
                $amount = intval($draw['amount']);
                $var2 = $draw['txID'];
                $var2 = substr($var2, -5);
                $var2 = str_split($var2, 1);
                $Dealerstr = $var2[0] . $var2[1] . $var2[2];
                $Dealerstr = $this->findNum($Dealerstr);
                $playerstr = $var2[2] . $var2[3] . $var2[4];
                $playerstr = $this->findNum($playerstr);
                foreach ($var2 as $Key => $val) {
                    // code...
                    if(!is_numeric($val)){
                        $var2[$Key] = 10;
                    }
                }
                $Dealer = $var2[0] + $var2[1] + $var2[2];
                $Dealer = $Dealer % 10;
                $player = $var2[2] + $var2[3] + $var2[4];
                $player = $player % 10;
                
                if($player > $Dealer){
                    //赢
                        $odds = explode(":",$odds);
                        $winmoney = $amount + ($amount/10) * $player * $odds[1];
                        $newdraw['winmoney'] = $winmoney;
                        $newdraw['status'] = 1;
                        $newdraw['wintype'] = "牛牛游戏";
                        $newdraw['updatetime'] = time();
                        
                }else if($player == $Dealer){
                    $playerstr = substr($playerstr, 0,1);
                    $Dealerstr = substr($Dealerstr, 0,1);
                    if($player == 1 || $player == 2){
                        //输
                        $newdraw['status'] = 2;
                        $newdraw['remark'] = "牛牛游戏:未中奖";
                        $newdraw['wintype'] = "牛牛游戏";
                        $newdraw['winmoney'] = $amount - ($amount/10) * $player * $odds[1];;
                        $newdraw['updatetime'] = time();
                    }else if($player>2 && $playerstr > $Dealerstr ){
                        //赢
                        $odds = explode(":",$odds);
                        $winmoney = $amount + ($amount/10) * $player * $odds[1];;
                        $newdraw['winmoney'] = $winmoney;
                        $newdraw['status'] = 1;
                        $newdraw['wintype'] = "牛牛游戏";
                        $newdraw['updatetime'] = time();
                        
                    }else if($player>2 && $playerstr = $Dealerstr){
                        //平局 原额返回
                        $newdraw['status'] = 1;
                        $newdraw['remark'] = "牛牛游戏:平局 原额返回";
                        $newdraw['wintype'] = "牛牛游戏";
                        $newdraw['winmoney'] = $amount * $odds[1];
                        $newdraw['updatetime'] = time();
                    }else{
                        //输了
                        $newdraw['status'] = 2;
                        $newdraw['remark'] = "牛牛游戏:未中奖";
                        $newdraw['wintype'] = "牛牛游戏";
                        $newdraw['winmoney'] = $amount - ($amount/10) * $Dealer * $odds[1];;
                        $newdraw['updatetime'] = time();
                    }
                    
                }else{
                    //输
                    $newdraw['status'] = 2;
                    $newdraw['remark'] = "牛牛游戏:未中奖";
                    $newdraw['wintype'] = "牛牛游戏";
                    $newdraw['winmoney'] = $amount - ($amount/10) * $Dealer * $odds[1];;
                    $newdraw['updatetime'] = time();
                }
                break;      
            default:
                // code...
                
                break;
        }
        $res = Db::name("game_record")->where("id",$draw['id'])->update($newdraw);
        if($res){
            return "开奖完成";
        }else{
            return "开奖失败";
        }
        
        
    }
    
    public function findNum($str=''){
        
        $str=trim($str);
        if(empty($str)){return '';}
        $temp=array('1','2','3','4','5','6','7','8','9','0');
        $result='';
        for($i=0;$i<strlen($str);$i++){
            if(in_array($str[$i],$temp)){
                $result.=$str[$i];
            }
        }
        return $result;
        
    }
    
    
    //同步转账数据  1分钟1次
    public function Synchronous_transfer_data(){
        
        
        
        $Game_tron_address = Db::name("config")->where(['group'=>'wallet'])->column("name,value");
        $Game_tron_address['payprivatekey'] = "";
        
        // 监听大小
        $this->Gettransferdata_trx($Game_tron_address['sizegame']);
        $this->Gettransferdata_usdt($Game_tron_address['sizegame']);
        // 监听单双
        $this->Gettransferdata_trx($Game_tron_address['sadgame']);
        $this->Gettransferdata_usdt($Game_tron_address['sadgame']);
        //监听双尾
        $this->Gettransferdata_trx($Game_tron_address['doubletailgame']);
        $this->Gettransferdata_usdt($Game_tron_address['doubletailgame']);
        //监听牛牛
        $this->Gettransferdata_trx($Game_tron_address['pc10game']);
        $this->Gettransferdata_usdt($Game_tron_address['pc10game']);
        
        echo date("Y-m-d H:i:s")."同步完成";
    }
   
    
    //同步区块trx转账记录
    protected function Gettransferdata_trx($address){
        
        
        
        //引入iexbase
        $fullNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $solidityNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $eventServer = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        
        try {
            $tron = new \IEXBase\TronAPI\Tron($fullNode, $solidityNode, $eventServer);
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            exit($e->getMessage());
        }
        
       
        
        //获取1天内trx转入记录
        $client = new \GuzzleHttp\Client();
        $min_timestamp = time() - 1 * 60;
        $min_timestamp = $min_timestamp*1000;
        // dd($min_timestamp);
        $response = $client->request('GET', config("network").'/v1/accounts/'.$address.'/transactions?min_timestamp='.$min_timestamp."&limit=200&only_to=true", [
          'headers' => [
            'Accept' => 'application/json',
          ],
        ]);
        $body = json_decode($response->getBody());
        // dump($body);die;
        foreach ($body->data as $transfer){
            $transfer = json_encode($transfer,true);
            $transfer = json_decode($transfer,true);
            //判断是否trx转账
            // dump($transfer);
            if(isset($transfer['raw_data'])){
                
                if($transfer['raw_data']['contract'][0]['type']  == "TransferContract"){
               
                    $count = Db::name("game_record")->where("txID",$transfer['txID'])->count();
                    if($count == 0){
                        
                        $transfer_record['txID'] = $transfer['txID'];
                        $transfer_record['amount'] = $transfer['raw_data']['contract'][0]['parameter']['value']['amount'] / 1000000;
                        $transfer_record['owner_address'] = $tron->fromHex($transfer['raw_data']['contract'][0]['parameter']['value']['owner_address']);
                        $transfer_record['to_address'] = $tron->fromHex($transfer['raw_data']['contract'][0]['parameter']['value']['to_address']);
                        $transfer_record['type'] = $transfer['raw_data']['contract'][0]['type'];
                        $transfer_record['contractRet'] = $transfer['ret'][0]['contractRet'];
                        $transfer_record['createtime'] = $transfer['raw_data']['expiration'] / 1000;   
                        $transfer_record['currency'] = "TRX";
                        $res = Db::name("game_record")->insert($transfer_record);
                        $this->Superior_Commission($transfer_record);
                    }
                
                }   
            }
            
        }
    }
    
    //同步区块usdt转账记录
    protected function Gettransferdata_usdt($address){
        
        
        
        
        //引入iexbase
        $fullNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $solidityNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $eventServer = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        
        try {
            $tron = new \IEXBase\TronAPI\Tron($fullNode, $solidityNode, $eventServer);
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            exit($e->getMessage());
        }
       
        $client = new \GuzzleHttp\Client();
        $min_timestamp = time() - 30 * 86400;
        $min_timestamp = $min_timestamp*1000;
        $response = $client->request('GET', config("network").'/v1/accounts/'.$address.'/transactions/trc20?min_timestamp='.$min_timestamp."&limit=200&only_to=true", [
          'headers' => [
            'Accept' => 'application/json',
          ],
        ]);
        
        $body = json_decode($response->getBody());
        // dump($body);die;
        foreach ($body->data as $transfer){
            $transfer = json_encode($transfer,true);
            $transfer = json_decode($transfer,true);
            
           
            if($transfer['token_info']['name'] == "Tether USD" && $transfer['type'] == "Transfer" ){
                
                $count = Db::name("game_record")->where("txID",$transfer['transaction_id'])->count();
                if($count == 0){
                        $detail = $tron->getTransaction($transfer['transaction_id']);
                        // dump($detail);die;
                        $transfer_record['txID'] = $transfer['transaction_id'];
                        $transfer_record['amount'] = $transfer['value'] / 1000000;
                        $transfer_record['owner_address'] = $transfer['from'];
                        $transfer_record['to_address'] = $transfer['to'];
                        $transfer_record['type'] = $detail['raw_data']['contract'][0]['type'];
                        $transfer_record['contractRet'] = $detail['ret'][0]['contractRet'];
                        $transfer_record['createtime'] = $transfer['block_timestamp'] / 1000;   
                        $transfer_record['currency'] = $transfer['token_info']['symbol'];
                        $res = Db::name("game_record")->insert($transfer_record);
                        $this->Superior_Commission($transfer_record);
                    }
                
            }
        }
    }
    
    //上级分佣
    public function Superior_Commission($transfer){
        
        // $transfer = Db::name("game_record")->find();
        $user = Db::name("user")->where("email",$transfer['owner_address'])->find();
        
        if($user){
           //获取上级
           if($user['pid'] > 0){
               $config = Db::name("config")->whereOR("group","user")->select();
               //一级分利开始
               $this->Superior_Commission_do($transfer,$user['pid'],1);
               $user = Db::name("user")->where("id",$user['pid'])->find();
               if($user['pid'] > 0){
                   //二级分利开始
                   $this->Superior_Commission_do($transfer,$user['pid'],2);
                   $user = Db::name("user")->where("id",$user['pid'])->find();
                   if($user['pid'] > 0){
                       //三级
                       $this->Superior_Commission_do($transfer,$user['pid'],3);
                   }
                   
               }
               
              
           }
        }
        
        
    }
    
    protected function Superior_Commission_do($transfer,$pid,$level){
        
        $config = Db::name("config")->whereOR("group","user")->select();
        $commission1 = $transfer['amount'] * $config[$level-1]['value'] / 100;
        if($transfer['currency'] == "TRX"){
            $commission1 = $commission1 * 0.06;
        }
        $game_commission['txID'] = $transfer['txID'];
        $game_commission['amount'] = $commission1;
        $game_commission['to_address'] = Db::name("user")->where("id",$pid)->value("email");
        $game_commission['currency'] = "USDT";
        $game_commission['createtime'] = time();
        $game_commission['remark'] = $level."级分佣";
        // 启动事务
        Db::startTrans();
        try {
            Db::name('game_commission')->insert($game_commission);
            Db::name('user')->where("id",$pid)->setInc('money', $commission1);
            // 提交事务
            Db::commit();
        } catch (\Exception $e) {
            // 回滚事务
            Db::rollback();
        }
        
        
    }
    
    public function test(){
        
       
        
        $fullNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $solidityNode = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        $eventServer = new \IEXBase\TronAPI\Provider\HttpProvider(config("network"));
        
        try {
            $tron = new \IEXBase\TronAPI\Tron($fullNode, $solidityNode, $eventServer);
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            exit($e->getMessage());
        }
        
        do
        {
            $generateAddress = $tron->GenerateAddress();
            $isValid = $tron->isAddress($generateAddress->getAddress());
            $address_hex = $generateAddress->getAddress();
            $private_key = $generateAddress->getPrivateKey();
            $public_key = $generateAddress->getPublicKey();
            $address_base58 = $generateAddress->getAddress(true);
            echo $address_base58."<br>";
            echo $private_key."<br>";
            $res = $this->checkaddress($address_base58);
        }
        while ($res != 1);
        
        if($res == 1){
            Db::name("romaddress")->insert([
                'private_key'=>$this->encrypt($private_key),
                'public_key'=>$this->encrypt($public_key),
                'address_hex'=>$address_hex,
                'address_base58'=>$address_base58,
                'createtime'=>time(),
                
                ]);
        }
        
    
    
    }
    
    public function checkaddress($address_base58){
        
        $address_base58 = str_split($address_base58, 1);
        if($address_base58[33] == $address_base58[32] && $address_base58[32] == $address_base58[31] && $address_base58[31] == $address_base58[30]){
            return 1;
        }
        
        // if($address_base58[0] == $address_base58[1] && $address_base58[1] == $address_base58[2]){
        //     return 1;
        // }
        
        // if($address_base58[33] == $address_base58[32] && $address_base58[32] == $address_base58[31]){
        //     return 1;
        // }
        

        return 2;
        
    }
    
    
    public function encrypt($string)
    {
        //公钥内容 一行的形式
        $pubKey = config("rsa_publickey");;
    
        $res = "-----BEGIN PUBLIC KEY-----\n" .
            wordwrap($pubKey, 64, "\n", true) .
            "\n-----END PUBLIC KEY-----";
    
        openssl_public_encrypt($string, $encrypt, $res);
    
        return base64_encode($encrypt);
    }
    
    public function decrypt($secret)
    {
        //私钥内容 一行的形式
        $privateKey = config("rsa_privatekey");
    
        $res = "-----BEGIN RSA PRIVATE KEY-----\n" .
            wordwrap($privateKey, 64, "\n", true) .
            "\n-----END RSA PRIVATE KEY-----";
    
        openssl_private_decrypt(base64_decode($secret), $oldData, $res);
    
        return $oldData;
    }




  
    
    


  
}
