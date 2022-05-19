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
class Index extends Api
{
    protected $noNeedLogin = ['*'];
    protected $noNeedRight = ['*'];
    
   
    
    /**
     * 首页
     *
     */
     
    public function index()
    {
        //   dump($draw);
        // 引入iexbase
        // https://api.trongrid.io
        $fullNode = new \IEXBase\TronAPI\Provider\HttpProvider('https://nile.trongrid.io');
        $solidityNode = new \IEXBase\TronAPI\Provider\HttpProvider('https://nile.trongrid.io');
        $eventServer = new \IEXBase\TronAPI\Provider\HttpProvider('https://nile.trongrid.io');
        
        try {
            $tron = new \IEXBase\TronAPI\Tron($fullNode, $solidityNode, $eventServer);
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            exit($e->getMessage());
        }
        // $from_address = Db::name("config")->whereOR("name","payaddress")->value("value");
        $from_address = "TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG";
        // $to_address = $tron->toHex("TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB");
        // $privatekey = Db::name("config")->whereOR("name","payprivatekey")->value("value");
        $privatekey = "33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8";
        $tron->setAddress($from_address);
        $tron->setPrivateKey($privatekey);
        
        try {
            
            $transfer = $tron->send("TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW", 100);
            
        } catch (\IEXBase\TronAPI\Exception\TronException $e) {
            die($e->getMessage());
        }
        // dump($transfer);die;
        $this->success(__('发送成功'));
            
    }
    
     
    
    
}
