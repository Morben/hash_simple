-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2022-05-12 22:17:19
-- 服务器版本： 5.6.50-log
-- PHP 版本： 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `tronhash_yuanmah`
--

-- --------------------------------------------------------

--
-- 表的结构 `tron_admin`
--

CREATE TABLE `tron_admin` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `username` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

--
-- 转存表中的数据 `tron_admin`
--

INSERT INTO `tron_admin` (`id`, `username`, `nickname`, `password`, `salt`, `avatar`, `email`, `loginfailure`, `logintime`, `loginip`, `createtime`, `updatetime`, `token`, `status`) VALUES
(1, 'admin', 'Admin', 'd1df56825043ebcca62c9e1d96867e8f', 'zsqkfa', 'http://tronhash.yuanmah.com/assets/img/avatar.png', 'adm2in@admin.com', 0, 1652110834, '103.169.216.18', 1491635035, 1652110873, '', 'normal'),
(3, 'yuanma', 'yuanma.com', '4ce4d04dea55b25baa9ae56ece757759', 'tlMFms', '/assets/img/avatar.png', '11@qq.com', 0, 1651733474, '120.41.80.151', 1651007535, 1651733474, 'fdca5be0-f534-4faa-8490-391612b80a24', 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `tron_admin_log`
--

CREATE TABLE `tron_admin_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '日志标题',
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员日志表';

--
-- 转存表中的数据 `tron_admin_log`
--

INSERT INTO `tron_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(1, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"xzu7\"}', '222.247.7.117', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650377323),
(2, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"cubb\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446098),
(3, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"cubb\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446174),
(4, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"eyfe\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446181),
(5, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"x7tv\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446188),
(6, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"fqrs\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446235),
(7, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ztni\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446269),
(8, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"3wsy\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446635),
(9, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650446685),
(10, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"pid\":\"1\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467085),
(11, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467095),
(12, 1, 'admin', '/CrBnVqYaQe.php/auth/group/edit/ids/2?dialog=1', '权限管理 / 角色组 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,63,64,65,1,6,7,8,2,9,10,11,4,5\",\"pid\":\"1\",\"name\":\"财务\",\"status\":\"normal\"},\"ids\":\"2\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467100),
(13, 1, 'admin', '/CrBnVqYaQe.php/auth/group/del', '权限管理 / 角色组 / 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467104),
(14, 1, 'admin', '/CrBnVqYaQe.php/auth/group/del', '权限管理 / 角色组 / 删除', '{\"action\":\"del\",\"ids\":\"5\",\"params\":\"\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467106),
(15, 1, 'admin', '/CrBnVqYaQe.php/auth/group/del', '权限管理 / 角色组 / 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467108),
(16, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"pid\":\"1\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467110),
(17, 1, 'admin', '/CrBnVqYaQe.php/auth/group/add?dialog=1', '权限管理 / 角色组 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"1,13,14,16,15,17,2,6,18,19,20,21,22,7,23,24,25,26,27,28,8,29,30,31,32,33,34,3,35,36,37,38,39,5,9,40,41,42,43,10,44,45,46,11,47,48,49,50,12,51,52,53,54,4,55,56,57,58,59,60,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84\",\"pid\":\"1\",\"name\":\"代理\",\"status\":\"normal\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467119),
(18, 1, 'admin', '/CrBnVqYaQe.php/auth/admin/add?dialog=1', '权限管理 / 管理员管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"group\":[\"6\"],\"row\":{\"username\":\"yuanma\",\"email\":\"1239802371@qq.com\",\"nickname\":\"yuanma\",\"password\":\"***\",\"status\":\"normal\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650467160),
(19, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650468223),
(20, 1, 'admin', '/CrBnVqYaQe.php/auth/admin/edit/ids/2?dialog=1', '权限管理 / 管理员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"group\":[\"6\"],\"row\":{\"username\":\"yuanma\",\"email\":\"1239802371@qq.com\",\"nickname\":\"yuanma\",\"password\":\"***\",\"loginfailure\":\"0\",\"status\":\"hidden\"},\"ids\":\"2\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650469714),
(21, 1, 'admin', '/CrBnVqYaQe.php/auth/admin/edit/ids/2?dialog=1', '权限管理 / 管理员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"group\":[\"6\"],\"row\":{\"username\":\"yuanma\",\"email\":\"1239802371@qq.com\",\"nickname\":\"yuanma\",\"password\":\"***\",\"loginfailure\":\"0\",\"status\":\"normal\"},\"ids\":\"2\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650469776),
(22, 0, 'Unknown', '/CrBnVqYaQe.php/index/logout', '', '{\"__token__\":\"***\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650470406),
(23, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"tjje\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650470414),
(24, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"2\",\"name\":\"general\\/wallet\",\"title\":\"钱包配置\",\"url\":\"\",\"icon\":\"fa fa-diamond\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650471124),
(25, 1, 'admin', '/CrBnVqYaQe.php/general.wallet/update', '常规管理 / 钱包配置 / 更新个人信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"1\",\"sadgame\":\"\",\"doubletailgame\":\"\",\"pc10game\":\"\",\"payaddress\":\"\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472453),
(26, 1, 'admin', '/CrBnVqYaQe.php/general.wallet/update', '常规管理 / 钱包配置 / 更新个人信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"1\",\"sadgame\":\"2\",\"doubletailgame\":\"\",\"pc10game\":\"\",\"payaddress\":\"\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472464),
(27, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472494),
(28, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472617),
(29, 1, 'admin', '/CrBnVqYaQe.php/general.wallet/update', '常规管理 / 钱包配置 / 更新钱包信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"1\",\"sadgame\":\"2\",\"doubletailgame\":\"3\",\"pc10game\":\"\",\"payaddress\":\"\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472647),
(30, 1, 'admin', '/CrBnVqYaQe.php/general.wallet/update', '常规管理 / 钱包配置 / 更新钱包信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"1\",\"sadgame\":\"2\",\"doubletailgame\":\"3\",\"pc10game\":\"44\",\"payaddress\":\"\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472729),
(31, 1, 'admin', '/CrBnVqYaQe.php/general.profile/update', '常规管理 / 个人资料 / 更新个人信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"email\":\"adm2in@admin.com\",\"nickname\":\"Admin\",\"password\":\"***\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472784),
(32, 1, 'admin', '/CrBnVqYaQe.php/general.wallet/update', '常规管理 / 钱包配置 / 更新钱包信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"12\",\"sadgame\":\"2\",\"doubletailgame\":\"3\",\"pc10game\":\"44\",\"payaddress\":\"\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650472856),
(33, 0, 'Unknown', '/CrBnVqYaQe.php/general.wallet/update', '', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW\",\"sadgame\":\"2\",\"doubletailgame\":\"3\",\"pc10game\":\"44\",\"payaddress\":\"TPgttA7P6bRQAiduTzgwVyPfQNcEYiKS9w\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535252),
(34, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fwallet%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/wallet?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"nyzv\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535265),
(35, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fwallet%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/wallet?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"jbxd\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535284),
(36, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fwallet%3Fref%3Daddtabs', '', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/wallet?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"jety\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535297),
(37, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fwallet%3Fref%3Daddtabs', '', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/wallet?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"oaqd\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535303),
(38, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fwallet%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/wallet?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"g48f\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535313),
(39, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fwallet%3Fref%3Daddtabs', '', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/wallet?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"wxnb\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535326),
(40, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fwallet%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/wallet?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ru8x\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535334),
(41, 1, 'admin', '/CrBnVqYaQe.php/general.profile/update', '常规管理 / 个人资料 / 更新个人信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"email\":\"adm2in@admin.com\",\"nickname\":\"Admin\",\"password\":\"***\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535343),
(42, 1, 'admin', '/CrBnVqYaQe.php/general.wallet/update', '常规管理 / 钱包配置 / 更新钱包信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW\",\"sadgame\":\"2\",\"doubletailgame\":\"3\",\"pc10game\":\"44\",\"payaddress\":\"TPgttA7P6bRQAiduTzgwVyPfQNcEYiKS9w\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535355),
(43, 1, 'admin', '/CrBnVqYaQe.php/general.wallet/update', '常规管理 / 钱包配置 / 更新钱包信息', '{\"__token__\":\"***\",\"row\":{\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"sizegame\":\"TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW\",\"sadgame\":\"2\",\"doubletailgame\":\"3\",\"pc10game\":\"44\",\"payaddress\":\"TPgttA7P6bRQAiduTzgwVyPfQNcEYiKS9w\",\"payprivatekey\":\"\"}}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650535358),
(44, 1, 'admin', '/CrBnVqYaQe.php/auth/admin/edit/ids/2?dialog=1', '权限管理 / 管理员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"group\":[\"6\"],\"row\":{\"username\":\"yuanma\",\"email\":\"1239802371@qq.com\",\"nickname\":\"yuanma\",\"password\":\"***\",\"loginfailure\":\"0\",\"status\":\"hidden\"},\"ids\":\"2\"}', '222.247.5.189', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650536034),
(45, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fauth%2Fadmin%3Fref%3Daddtabs', '', '{\"url\":\"\\/CrBnVqYaQe.php\\/auth\\/admin?ref=addtabs\",\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"m1wu\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1650542668),
(46, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fauth%2Fadmin%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/auth\\/admin?ref=addtabs\",\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"dzpe\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 1650542672),
(47, 0, 'Unknown', '/CrBnVqYaQe.php/auth/admin/del', '', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719544),
(48, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fauth%2Fadmin%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/auth\\/admin?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"kspa\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719554),
(49, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fauth%2Fadmin%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/auth\\/admin?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"khxv\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719561),
(50, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"categorytype\":\"{&quot;default&quot;:&quot;默认&quot;,&quot;page&quot;:&quot;单页&quot;,&quot;article&quot;:&quot;文章&quot;,&quot;test&quot;:&quot;Test&quot;}\",\"configgroup\":\"{&quot;basic&quot;:&quot;基础配置&quot;,&quot;email&quot;:&quot;邮件配置&quot;,&quot;dictionary&quot;:&quot;字典配置&quot;,&quot;user&quot;:&quot;会员配置&quot;,&quot;example&quot;:&quot;示例分组&quot;,&quot;wallet&quot;:&quot;钱包配置&quot;}\",\"attachmentcategory\":\"{&quot;category1&quot;:&quot;分类一&quot;,&quot;category2&quot;:&quot;分类二&quot;,&quot;custom&quot;:&quot;自定义&quot;}\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719629),
(51, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"sizegame\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719654),
(52, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"wallet\",\"type\":\"string\",\"name\":\"sizegame\",\"title\":\"base58地址\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"0\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"大小游戏trc20地址\",\"rule\":\"letters\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719707),
(53, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"DSAD\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719722),
(54, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"categorytype\":\"{&quot;default&quot;:&quot;默认&quot;,&quot;page&quot;:&quot;单页&quot;,&quot;article&quot;:&quot;文章&quot;,&quot;test&quot;:&quot;Test&quot;}\",\"configgroup\":\"{&quot;basic&quot;:&quot;基础配置&quot;,&quot;email&quot;:&quot;邮件配置&quot;,&quot;dictionary&quot;:&quot;字典配置&quot;,&quot;user&quot;:&quot;会员配置&quot;,&quot;wallet&quot;:&quot;钱包配置&quot;}\",\"attachmentcategory\":\"{&quot;category1&quot;:&quot;分类一&quot;,&quot;category2&quot;:&quot;分类二&quot;,&quot;custom&quot;:&quot;自定义&quot;}\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719762),
(55, 1, 'admin', '/CrBnVqYaQe.php/general/config/del', '常规管理 / 系统配置 / 删除', '{\"name\":\"sizegame\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719772),
(56, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"大小游戏trc20地址\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719799),
(57, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"sizegame\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719805),
(58, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"wallet\",\"type\":\"string\",\"name\":\"sizegame\",\"title\":\"base58_address\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"大小游戏trc20地址\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719832),
(59, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719844),
(60, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"sadgame\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719903),
(61, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"wallet\",\"type\":\"string\",\"name\":\"sadgame\",\"title\":\"单双游戏地址(trc20)\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"0\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"单双游戏地址(trc20)\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719910),
(62, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"doubletailgame\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719927),
(63, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"wallet\",\"type\":\"string\",\"name\":\"doubletailgame\",\"title\":\"双尾游戏地址(trc20)\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"0\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"双尾游戏地址(trc20)\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719946),
(64, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"pc10game\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719956),
(65, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"wallet\",\"type\":\"string\",\"name\":\"pc10game\",\"title\":\"pc10游戏地址(trc20)\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"0\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"pc10游戏地址(trc20)\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719964),
(66, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"payaddress\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719976),
(67, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"wallet\",\"type\":\"string\",\"name\":\"payaddress\",\"title\":\"给用户转账的地址(trc20)\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"0\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"用户转账地址(trc20)\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719992),
(68, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"payprivatekey\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650719998),
(69, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"basic\",\"type\":\"string\",\"name\":\"payprivatekey\",\"title\":\"转账地址私钥\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"0\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"转账地址私钥\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650720005),
(70, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW\",\"sadgame\":\"TFdvmYCwNUXt4CvXDA111apchaF3Tred7m\",\"doubletailgame\":\"TSEqXEya6WQ8oeEDntMW8FuUh9Utkd555c\",\"pc10game\":\"TKADxjU1iPGp63aUHZ44H999RPdQnXvbHi\",\"payaddress\":\"0\"}}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650720094),
(71, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/multi', '权限管理 / 菜单规则', '{\"action\":\"\",\"ids\":\"85\",\"params\":\"ismenu=0\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650720161),
(72, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"85\",\"params\":\"\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650720178),
(73, 0, 'Unknown', '/CrBnVqYaQe.php/general.config/edit', '', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW\",\"sadgame\":\"TFdvmYCwNUXt4CvXDA111apchaF3Tred7m\",\"doubletailgame\":\"TSEqXEya6WQ8oeEDntMW8FuUh9Utkd555c\",\"pc10game\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"payaddress\":\"0\",\"payprivatekey\":\"0\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650730716),
(74, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fconfig%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/config?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"arwp\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650730728),
(75, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fconfig%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/config?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ayib\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650730733),
(76, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"TBRmRLwtmyq4eQge3za8VAtaT4TrZji5QW\",\"sadgame\":\"TFdvmYCwNUXt4CvXDA111apchaF3Tred7m\",\"doubletailgame\":\"TSEqXEya6WQ8oeEDntMW8FuUh9Utkd555c\",\"pc10game\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"payaddress\":\"0\",\"payprivatekey\":\"0\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650730741),
(77, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"TWhN5bYqY1MAq1hzvnNNR1xgZFRTy4YeeS\",\"sadgame\":\"TFdvmYCwNUXt4CvXDA111apchaF3Tred7m\",\"doubletailgame\":\"TSEqXEya6WQ8oeEDntMW8FuUh9Utkd555c\",\"pc10game\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"payaddress\":\"0\",\"payprivatekey\":\"0\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650730857),
(78, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"TWhN5bYqY1MAq1hzvnNNR1xgZFRTy4YeeS\",\"sadgame\":\"TAWVeDiEramXVkV71cDafkTRHDbaw4GcN7\",\"doubletailgame\":\"TSEqXEya6WQ8oeEDntMW8FuUh9Utkd555c\",\"pc10game\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"payaddress\":\"0\",\"payprivatekey\":\"0\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650730931),
(79, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"TWhN5bYqY1MAq1hzvnNNR1xgZFRTy4YeeS\",\"sadgame\":\"TAWVeDiEramXVkV71cDafkTRHDbaw4GcN7\",\"doubletailgame\":\"TSEqXEya6WQ8oeEDntMW8FuUh9Utkd555c\",\"pc10game\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"payaddress\":\"TMJyV39tKQgGFmSVdfaU72225ZyGfTjT1F\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650731009),
(80, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fconfig%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/config?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"tmmx\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650732093),
(81, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/edit/ids/92?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"romaddress\",\"title\":\"生成靓号\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"92\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650732142),
(82, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650732157),
(83, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/edit/ids/98?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"游戏管理\",\"title\":\"游戏管理\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"98\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650732224),
(84, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/edit/ids/98?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"玩法管理\",\"title\":\"玩法管理\",\"url\":\"\",\"icon\":\"fa fa-list\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"98\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650732246),
(85, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/edit/ids/99?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"98\",\"name\":\"game\\/record\",\"title\":\"游戏记录\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"99\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650732254),
(86, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/edit/ids/92?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"98\",\"name\":\"romaddress\",\"title\":\"生成靓号\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"92\"}', '222.247.13.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650732263),
(87, 0, 'Unknown', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Frecord%3Fref%3Daddtabs', '', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"k76s\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650774980),
(88, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Frecord%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"vrjf\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650774986),
(89, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/1?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"f2000cd61d45b0615d8622818bc35b3c29ec2f25e663125b1c9aba2541b54b0e\",\"public_key\":\"0413cd09ca43ab144d6f9780229e3a7c71988c3d7aa6caf3986c5d40be8994ea8733cb8c9fc9f647d6ac82f2661e6214126cc90853948d2c874b96be7872d8fe6f\",\"address_hex\":\"4105eac928b952840e677cbcfbc483fa820486bd3c\",\"address_base58\":\"TAWVeDiEramXVkV71cDafkTRHDbaw4GcN7\",\"remark\":\"单双 牛牛\"},\"ids\":\"1\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775058),
(90, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/3?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"ee900137110460bf2916b686fa57146c1274ae93c1da86b631d53d7a1e68ae09\",\"public_key\":\"046f40cc82370ce40da02d482256b08ca20979b710040c3026d2220d00876eccb90928d4e0baea82801e13db29bdcf8241e7c5482d505a143a56d689721b966eca\",\"address_hex\":\"41e35b906f411a0e0fad6522727c2eedcda0e5ee91\",\"address_base58\":\"TWhN5bYqY1MAq1hzvnNNR1xgZFRTy4YeeS\",\"remark\":\"大小 双尾\"},\"ids\":\"3\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775092),
(91, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/1?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"f2000cd61d45b0615d8622818bc35b3c29ec2f25e663125b1c9aba2541b54b0e\",\"public_key\":\"0413cd09ca43ab144d6f9780229e3a7c71988c3d7aa6caf3986c5d40be8994ea8733cb8c9fc9f647d6ac82f2661e6214126cc90853948d2c874b96be7872d8fe6f\",\"address_hex\":\"4105eac928b952840e677cbcfbc483fa820486bd3c\",\"address_base58\":\"TAWVeDiEramXVkV71cDafkTRHDbaw4GcN7\",\"remark\":\"单双\"},\"ids\":\"1\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775374),
(92, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/20?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"8930e26aa2d743db6255a3755b8ee23dbbec09ac7c12b84b6ae971bdacde9753\",\"public_key\":\"0436b328d9d58f45eae891f11e3186bb0c41f4cbe3b343ec8c395cbf8fcd0af0e720bb3a09a1ef2da351349454ca6add6acf0b5533de8d88c10532aaccf8a777f2\",\"address_hex\":\"410a58d620c0666dac10137cdf60f1ed981d43ce13\",\"address_base58\":\"TAuvBSYN3fnjhTRmsy4Y63ARmFUKSCd333\",\"remark\":\"单双vip\"},\"ids\":\"20\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775405),
(93, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/21?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"e68e4bd489b688617c93b0e44eaf96023cabef9c591e33c4044ca4a939834adb\",\"public_key\":\"04595e5333099d513fc5f083819e246e826ec309203d8fe269870832e46040d496d21ba76a8f0fa1b0bcdb474d05d510df580de461458e191d07a8ec68ec379518\",\"address_hex\":\"4178abcb2225f03ff01d49151aa4c8ce5aa4a7e7a2\",\"address_base58\":\"TLyFtVvqxp8tHUSnHn9bmhr26Wzj552TTT\",\"remark\":\"双尾\"},\"ids\":\"21\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775458),
(94, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/3?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"ee900137110460bf2916b686fa57146c1274ae93c1da86b631d53d7a1e68ae09\",\"public_key\":\"046f40cc82370ce40da02d482256b08ca20979b710040c3026d2220d00876eccb90928d4e0baea82801e13db29bdcf8241e7c5482d505a143a56d689721b966eca\",\"address_hex\":\"41e35b906f411a0e0fad6522727c2eedcda0e5ee91\",\"address_base58\":\"TWhN5bYqY1MAq1hzvnNNR1xgZFRTy4YeeS\",\"remark\":\"大小 牛牛\"},\"ids\":\"3\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775498),
(95, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/22?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"9c83e6c7241f84e467e26492812f31db6936fc2cb53908eac32e844aa3c548bb\",\"public_key\":\"04dbb52f545e0cb94d647b58c2b4c974fe9fc4c795cf6a1a542de619f4f7439e354ed891e6cfbc15efa2ed32e51d19ca14ab776d7820f24432d6a627be1de04e5f\",\"address_hex\":\"41a475286d20b7f846a7d97b2c97c04d87818f51c1\",\"address_base58\":\"TQxnAnzjmD7DMf9WwDi1jtiXVHVi5nWkkk\",\"remark\":\"牛牛\"},\"ids\":\"22\"}', '112.120.33.212', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775564),
(96, 0, 'Unknown', '/CrBnVqYaQe.php/romaddress/edit/ids/16?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"45c4b24e7293069c937a8452d267953f316ed9b816ee4488cf6a928768345299\",\"public_key\":\"0499260343a44622ba8fbb3534f2616d9bc7d33c534243bbecd31692c4b9f12efcfaf87aa43136671378da52c3ba9818bf4fe438fd6117bdf4d64411eb9f4743d3\",\"address_hex\":\"41b10b919592c00ae2c760c8f336654b2873afd330\",\"address_base58\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"remark\":\"pc10 百家乐\"},\"ids\":\"16\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775740),
(97, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fromaddress%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/romaddress?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ybuq\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775762),
(98, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/23?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"1f9e91d5bc54b16a37795cbf1e878b759cdb8409eed53e6abb1d1f73b34b13d5\",\"public_key\":\"0458edfad9aa39c74ecb40a9c92120ec2ed1cb00feb9f9e1e50f6912e1170b2216aee128cfc5443b597bf4a197d4d8a8ed22e5a3ee63b775a1b16588f783fc224a\",\"address_hex\":\"4120a34e8c3be359f8b861be9980419e42174153d9\",\"address_base58\":\"TCwnFxLPTTPvgxuYSgf5Jm5bNeMneoRccc\",\"remark\":\"百家乐\"},\"ids\":\"23\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775776),
(99, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/16?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"45c4b24e7293069c937a8452d267953f316ed9b816ee4488cf6a928768345299\",\"public_key\":\"0499260343a44622ba8fbb3534f2616d9bc7d33c534243bbecd31692c4b9f12efcfaf87aa43136671378da52c3ba9818bf4fe438fd6117bdf4d64411eb9f4743d3\",\"address_hex\":\"41b10b919592c00ae2c760c8f336654b2873afd330\",\"address_base58\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"remark\":\"pc10 百家乐\"},\"ids\":\"16\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650775781),
(100, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"FirstgradeCommission\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811456),
(101, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"user\",\"type\":\"string\",\"name\":\"FirstgradeCommission\",\"title\":\"一级分佣比例\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"1\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"%\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811472),
(102, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"SecondaryCommission\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811551),
(103, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"basic\",\"type\":\"string\",\"name\":\"SecondaryCommission\",\"title\":\"二级分佣比例\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"1\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"%\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811566),
(104, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"Three\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811598),
(105, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"Threecommissionandmore\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811605),
(106, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"basic\",\"type\":\"number\",\"name\":\"Threecommissionandmore\",\"title\":\"三级以上分佣比例\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"},\"value\":\"1\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"%\",\"rule\":\"digits\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811633),
(107, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"FirstgradeCommission\":\"1\",\"SecondaryCommission\":\"ddsaddsad\",\"Threecommissionandmore\":\"1\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811660),
(108, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"FirstgradeCommission\":\"1\",\"SecondaryCommission\":\"ddsaddsad\",\"Threecommissionandmore\":\"1\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811669),
(109, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"FirstgradeCommission\":\"5\",\"SecondaryCommission\":\"3\",\"Threecommissionandmore\":\"1\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811742),
(110, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/24?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"2d0cd6ecc722d0b5e0b2d76181581127b665ef4940b1b6e8be20e484a3e8c968\",\"public_key\":\"0402224a7ee276a05506d6e353eb48f38d0e502d1cf00ea0dea882321e264d66f9d598f34cd9d67a6d5c499ce6d71edbcc3120b069bd70e7222a7612b2cbf17989\",\"address_hex\":\"4153b33c18ca8696f9b9a15cc043654979c538a274\",\"address_base58\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"remark\":\"p大小\"},\"ids\":\"24\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811935),
(111, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/25?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"d1b4bcf173d7130448511f1047476b260611c2ecc4ced60da0667b5279f44edf\",\"public_key\":\"043578a6dfa2806e4a1115b01d2de706ebaad2da9b9846aa4d998a7e0b1d948edeac6526322dc185ea8708ae987782707b2265af7ab799bf24b1ce25aec3e7a724\",\"address_hex\":\"41ce0fc113bd12f62e2933df6c2ae8db11b82dfbbb\",\"address_base58\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"remark\":\"p单双\"},\"ids\":\"25\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811952),
(112, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/26?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"4daaa5be659cc67b151a59e0dd06aaf5c453533ee1de4cb69de363c6ea6d04dd\",\"public_key\":\"04459ba79f2ff7c559439548d11ba68eda2a146f7a07f442ef52c14da58b7dae8b0ff5ae354ca78b9cee721fb8c13c9f6c4a223745b1344066ba8d8964689b5d13\",\"address_hex\":\"41afa4a425198d091f81846b288a40da5877d19239\",\"address_base58\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"remark\":\"p双尾\"},\"ids\":\"26\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811962),
(113, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/27?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"df33df17cdfb4274ba1e7fcb28551f1e0aee715b54895ec3fae4c52f28b3e314\",\"public_key\":\"042aea25767063f77ace5f36d9e37c125a408bdda1a7b0bc1173dcde823a4a0c5b6f0b178a88c4ad68df32e8d7af1868303a8e152a2867f951c43aada61d5876c7\",\"address_hex\":\"417c0171be24e811707adddd69b906ac85400f2f03\",\"address_base58\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"remark\":\"p10\"},\"ids\":\"27\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811970),
(114, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/28?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"public_key\":\"040c5040bf512445c9a193e2f8a03c7e9350b5ff5a698294fb55b88776e216160499aad2dccc34f0d3b16f8dd2d0f35dadad5fe4e4f960b1f50599418d793796b3\",\"address_hex\":\"4110abf879aa11b3f9cd972109d77aeb83404136c0\",\"address_base58\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"remark\":\"转账地址\"},\"ids\":\"28\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811979);
INSERT INTO `tron_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(115, 1, 'admin', '/CrBnVqYaQe.php/romaddress/edit/ids/28?dialog=1', '生成靓号 / 编辑', '{\"dialog\":\"1\",\"row\":{\"private_key\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"public_key\":\"040c5040bf512445c9a193e2f8a03c7e9350b5ff5a698294fb55b88776e216160499aad2dccc34f0d3b16f8dd2d0f35dadad5fe4e4f960b1f50599418d793796b3\",\"address_hex\":\"4110abf879aa11b3f9cd972109d77aeb83404136c0\",\"address_base58\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"remark\":\"p转账地址\"},\"ids\":\"28\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650811986),
(116, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650812224),
(117, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650812255),
(118, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"限额配置\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650813985),
(119, 1, 'admin', '/CrBnVqYaQe.php/general/config/check', '常规管理 / 系统配置', '{\"row\":{\"name\":\"Quotaallocation\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650814002),
(120, 1, 'admin', '/CrBnVqYaQe.php/general.config/add', '常规管理 / 系统配置 / 添加', '{\"__token__\":\"***\",\"row\":{\"group\":\"wallet\",\"type\":\"array\",\"name\":\"Quotaallocation\",\"title\":\"限额配置\",\"setting\":{\"table\":\"\",\"conditions\":\"\",\"key\":\"大小游戏最低投入trx\",\"value\":\"1\"},\"value\":\"\",\"content\":\"value1|title1\\r\\nvalue2|title2\",\"tip\":\"\",\"rule\":\"\",\"visible\":\"\",\"extend\":\"\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650814021),
(121, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"Quotaallocation\":\"{&quot;大小游戏最低投入trx&quot;:&quot;2&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650814035),
(122, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"Quotaallocation\":\"{&quot;2&quot;:&quot;2&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650814101),
(123, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"Quotaallocation\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650814304),
(124, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;5&quot;:&quot;10&quot;,&quot;22&quot;:&quot;222&quot;}\",\"sadgamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815490),
(125, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;22&quot;:&quot;222&quot;}\",\"sadgamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815524),
(126, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;trx_min&quot;:&quot;222&quot;,&quot;trx_max&quot;:&quot;333&quot;,&quot;usdt_min&quot;:&quot;22&quot;,&quot;usdt_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;1&quot;:&quot;10&quot;,&quot;5&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815647),
(127, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;trx_min&quot;:&quot;222&quot;,&quot;trx_max&quot;:&quot;333&quot;,&quot;usdt_min&quot;:&quot;22&quot;,&quot;usdt_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;trx_min&quot;:&quot;10&quot;,&quot;trx_max&quot;:&quot;10&quot;,&quot;usdt_min&quot;:&quot;10&quot;,&quot;usdt_max&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;trx_min&quot;:&quot;10&quot;,&quot;trx_max&quot;:&quot;10&quot;,&quot;usdt_min&quot;:&quot;10&quot;,&quot;usdt_max&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;trx_min&quot;:&quot;10&quot;,&quot;trx_max&quot;:&quot;10&quot;,&quot;usdt_min&quot;:&quot;10&quot;,&quot;usdt_max&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815696),
(128, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;trx_min&quot;:&quot;222&quot;,&quot;trx_max&quot;:&quot;333&quot;,&quot;usdt_min&quot;:&quot;22&quot;,&quot;usdt_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;USDT_max&quot;:&quot;10&quot;,&quot;TRX_min&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815786),
(129, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;222&quot;,&quot;TRX_max&quot;:&quot;333&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;USDT_max&quot;:&quot;10&quot;,&quot;TRX_min&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815818),
(130, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;222&quot;,&quot;TRX_max&quot;:&quot;333&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;USDT_max&quot;:&quot;10&quot;,&quot;TRX_min&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815851),
(131, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;222&quot;,&quot;TRX_max&quot;:&quot;333&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;USDT_max&quot;:&quot;10&quot;,&quot;TRX_min&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815869),
(132, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;222&quot;,&quot;TRX_max&quot;:&quot;333&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;&quot;}\",\"pc10gamequota\":\"{&quot;USDT_max&quot;:&quot;10&quot;,&quot;TRX_min&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650815888),
(133, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650816002),
(134, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"766adff525a938c04cdebed12fcd6787cc382b988e57cee2b87e6bf3ec61b122\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650816672),
(135, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fconfig%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/config?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"wjyt\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650819813),
(136, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"80,79,77,75\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650849594),
(137, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"86,74\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650849634),
(138, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"73,72,71,70,69,68,67,66\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650849671),
(139, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"65,60,59,58\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650849705),
(140, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"57,56\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650849715),
(141, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"53\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650849725),
(142, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"51,49\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650849745),
(143, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"163,162,161,160,158,157,156,155\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860806),
(144, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"154,153,152,151,150,149,148,147\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860832),
(145, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"146,145,144,143,142,141,140,139\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860847),
(146, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"138,137,136,135,134,133,132,131\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860870),
(147, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"130,129,128,127,126,125,124,123\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860884),
(148, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"122,121,120,119,118,117,116,115\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860899),
(149, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"114,113,112,111,109,108,107\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860927),
(150, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"106,105,104,103,102,101,100\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860940),
(151, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"99,98,97,96,93\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650860996),
(152, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"14,13,12\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861022),
(153, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"19,18,17,15\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861037),
(154, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"7,6,5,4,2\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861051),
(155, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"9,8\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861063),
(156, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"34,33,32,31,30,29\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861083),
(157, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"44,43,42,41,40,39,38,37,36,35\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861102),
(158, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"87,85,84,83,82,78,76,64,63\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861125),
(159, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"62,61,55,54,52,50,48,47,46\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861149),
(160, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"90,89,88\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861202),
(161, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"174,173,172,171,170,169,168,167,166,165\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861234),
(162, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"184,183,182,181,180,179,178,177,176,175\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861259),
(163, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"194,193,192,191,190,189,188,187,186,185\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861285),
(164, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"204,203,202,201,200,199,198,197,196,195\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861309),
(165, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"214,213,212,211,210,209,208,207,206,205\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861331),
(166, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"218\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861354),
(167, 1, 'admin', '/CrBnVqYaQe.php/romaddress/del', '生成靓号 / 删除', '{\"action\":\"del\",\"ids\":\"217,216,215\",\"params\":\"\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650861366),
(168, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650864098),
(169, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fconfig%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/config?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"yvbr\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650866239),
(170, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\"}}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650866349),
(171, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Frecord%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"et4n\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650871006),
(172, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;22&quot;,&quot;USDT_max&quot;:&quot;33&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650873276),
(173, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Frecord%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ereg\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650903908),
(174, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Frecord%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"iexk\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650906024),
(175, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Frecord%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"dw6k\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650906296),
(176, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650906969),
(177, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650907005),
(178, 1, 'admin', '/CrBnVqYaQe.php/game/record/edit/ids/6?dialog=1', '游戏记录 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"3\"},\"ids\":\"6\"}', '222.247.2.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650907217),
(179, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fromaddress%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/romaddress?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"mwqh\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650957664),
(180, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/add?dialog=1', '权限管理 / 菜单规则 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"98\",\"name\":\"transfer\\/record\",\"title\":\"发放记录\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650965938),
(181, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;10&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;10&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650977589),
(182, 1, 'admin', '/CrBnVqYaQe.php/game/record/del', '游戏记录 / 删除', '{\"action\":\"del\",\"ids\":\"8,7,6,5,4,3,2,1\",\"params\":\"\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650978928),
(183, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"pid\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650979325),
(184, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"7\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980221),
(185, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"6\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980250),
(186, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"5\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980251),
(187, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"8\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980252),
(188, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"11\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980259),
(189, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"10\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980260),
(190, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"9\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980261),
(191, 1, 'admin', '/CrBnVqYaQe.php/user/rule/multi', '会员管理 / 会员规则 / 批量更新', '{\"action\":\"\",\"ids\":\"12\",\"params\":\"ismenu=1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980261),
(192, 1, 'admin', '/CrBnVqYaQe.php/user/group/add?dialog=1', '会员管理 / 会员分组 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"2,4,11,10,9,12,1,3,7,6,5,8\",\"name\":\"代理\",\"status\":\"normal\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980302),
(193, 1, 'admin', '/CrBnVqYaQe.php/user/group/edit/ids/1?dialog=1', '会员管理 / 会员分组 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"\",\"name\":\"普通用户\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980311),
(194, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/1?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"1\",\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"***\",\"email\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"money\":\"0.00\",\"logintime\":\"2017-04-08 15:03:55\",\"loginip\":\"127.0.0.1\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980795),
(195, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/1?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"1\",\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"***\",\"email\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"money\":\"0.00\",\"logintime\":\"2017-04-08 15:03:55\",\"loginip\":\"127.0.0.1\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980875),
(196, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/1?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"1\",\"group_id\":\"1\",\"username\":\"admin\",\"password\":\"***\",\"email\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"money\":\"0.00\",\"logintime\":\"2017-04-08 15:03:55\",\"loginip\":\"127.0.0.1\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980910),
(197, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/1?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"1\",\"group_id\":\"1\",\"username\":\"admin\",\"nickname\":\"admin\",\"password\":\"***\",\"email\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"money\":\"0.00\",\"logintime\":\"2017-04-08 15:03:55\",\"loginip\":\"127.0.0.1\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650980944),
(198, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/1?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"1\",\"group_id\":\"1\",\"username\":\"admin\",\"nickname\":\"admin\",\"password\":\"***\",\"email\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"money\":\"0.00\",\"logintime\":\"2017-04-08 15:03:55\",\"loginip\":\"127.0.0.1\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650981092),
(199, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/1?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"1\",\"group_id\":\"1\",\"username\":\"admin\",\"nickname\":\"admin\",\"password\":\"***\",\"email\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"money\":\"0.00\",\"logintime\":\"2017-04-08 15:03:55\",\"loginip\":\"127.0.0.1\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650981116),
(200, 1, 'admin', '/CrBnVqYaQe.php/user/group/del', '会员管理 / 会员分组 / 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650982047),
(201, 1, 'admin', '/CrBnVqYaQe.php/user/group/edit/ids/1?dialog=1', '会员管理 / 会员分组 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"2,4,11,10,9,12,1,3,7,6,5,8\",\"name\":\"代理用户\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650982064),
(202, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/2?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"2\",\"group_id\":\"1\",\"username\":\"zznl12\",\"nickname\":\"zznl12\",\"password\":\"***\",\"email\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"avatar\":\"\",\"money\":\"0.00\",\"logintime\":\"2022-04-26 22:05:20\",\"loginip\":\"222.247.12.165\",\"status\":\"normal\"},\"ids\":\"2\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650982070),
(203, 1, 'admin', '/CrBnVqYaQe.php/user/group/add?dialog=1', '会员管理 / 会员分组 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"\",\"name\":\"普通用户\",\"status\":\"normal\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650982088),
(204, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/4?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"4\",\"group_id\":\"1\",\"username\":\"zznl111\",\"nickname\":\"zznl12\",\"password\":\"***\",\"email\":\"TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB\",\"avatar\":\"\",\"money\":\"0.00\",\"logintime\":\"2022-04-26 22:05:20\",\"loginip\":\"222.247.12.165\",\"status\":\"normal\"},\"ids\":\"4\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650985348),
(205, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/edit/ids/107?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"98\",\"name\":\"game\\/commission\",\"title\":\"邮箱验证码管理\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"107\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650991830),
(206, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/del', '权限管理 / 菜单规则 / 删除', '{\"action\":\"del\",\"ids\":\"106\",\"params\":\"\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650991836),
(207, 1, 'admin', '/CrBnVqYaQe.php/auth/rule/edit/ids/107?dialog=1', '权限管理 / 菜单规则 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"ismenu\":\"1\",\"pid\":\"98\",\"name\":\"game\\/commission\",\"title\":\"佣金记录\",\"url\":\"\",\"icon\":\"fa fa-circle-o\",\"condition\":\"\",\"menutype\":\"addtabs\",\"extend\":\"\",\"remark\":\"\",\"weigh\":\"0\",\"status\":\"normal\"},\"ids\":\"107\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650991859),
(208, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/4?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"4\",\"group_id\":\"0\",\"username\":\"zznl111\",\"nickname\":\"zznl12\",\"password\":\"***\",\"email\":\"TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB\",\"avatar\":\"\",\"money\":\"0.00\",\"logintime\":\"2022-04-26 22:05:20\",\"loginip\":\"222.247.12.165\",\"status\":\"normal\"},\"ids\":\"4\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650992611),
(209, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/3?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"3\",\"group_id\":\"0\",\"username\":\"zznl11\",\"nickname\":\"zznl12\",\"password\":\"***\",\"email\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy9992222\",\"avatar\":\"\",\"money\":\"0.00\",\"logintime\":\"2022-04-26 22:05:20\",\"loginip\":\"222.247.12.165\",\"status\":\"normal\"},\"ids\":\"3\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650992615),
(210, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/2?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"2\",\"group_id\":\"0\",\"username\":\"zznl12\",\"nickname\":\"zznl12\",\"password\":\"***\",\"email\":\"TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2\",\"avatar\":\"\",\"money\":\"0.06\",\"logintime\":\"2022-04-26 23:03:15\",\"loginip\":\"222.247.12.165\",\"status\":\"normal\"},\"ids\":\"2\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650992619),
(211, 1, 'admin', '/CrBnVqYaQe.php/user/user/edit/ids/1?dialog=1', '会员管理 / 会员管理 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"id\":\"1\",\"group_id\":\"0\",\"username\":\"admin\",\"nickname\":\"admin\",\"password\":\"***\",\"email\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"avatar\":\"http:\\/\\/tronhash.yuanmah.com\\/assets\\/img\\/avatar.png\",\"money\":\"0.00\",\"logintime\":\"2017-04-08 15:03:55\",\"loginip\":\"127.0.0.1\",\"status\":\"normal\"},\"ids\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650992624);
INSERT INTO `tron_admin_log` (`id`, `admin_id`, `username`, `url`, `title`, `content`, `ip`, `useragent`, `createtime`) VALUES
(212, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"FirstgradeCommission\":\"5\",\"SecondaryCommission\":\"3\",\"Threecommissionandmore\":\"1\",\"forbiddenaddress\":\"asdasd\\r\\ndasdasd\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650993191),
(213, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"FirstgradeCommission\":\"5\",\"SecondaryCommission\":\"3\",\"Threecommissionandmore\":\"1\",\"forbiddenaddress\":\"TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB\\r\\nTUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650994179),
(214, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"FirstgradeCommission\":\"5\",\"SecondaryCommission\":\"3\",\"Threecommissionandmore\":\"1\",\"forbiddenaddress\":\"TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB\\r\\nTUkq3uZivUzyDqCpDffKmXPcqrgUU2X222\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1650994185),
(215, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"FirstgradeCommission\":\"5\",\"SecondaryCommission\":\"3\",\"Threecommissionandmore\":\"1\",\"forbiddenaddress\":\"\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651004158),
(216, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"pid\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651007390),
(217, 1, 'admin', '/CrBnVqYaQe.php/auth/group/add?dialog=1', '权限管理 / 角色组 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"13,18,23,29,35,40,44,47,51,55,68,76,80,93,100,108,1,6,2,7,8,3,9,5,10,11,12,4,67,66,73,79,92,98,99,107\",\"pid\":\"1\",\"name\":\"演示\",\"status\":\"normal\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651007453),
(218, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"7\",\"pid\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651007467),
(219, 1, 'admin', '/CrBnVqYaQe.php/auth/admin/add?dialog=1', '权限管理 / 管理员管理 / 添加', '{\"dialog\":\"1\",\"__token__\":\"***\",\"group\":[\"7\"],\"row\":{\"username\":\"yuanma\",\"email\":\"11@qq.com\",\"nickname\":\"yuanma.com\",\"password\":\"***\",\"status\":\"normal\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651007535),
(220, 3, 'yuanma', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Fcommission%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/commission?ref=addtabs\",\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"temd\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.50', 1651007543),
(221, 3, 'yuanma', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置', '{\"__token__\":\"***\",\"row\":{\"name\":\"银河哈希\",\"beian\":\"22\",\"version\":\"1.0.2\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.50', 1651007555),
(222, 1, 'admin', '/CrBnVqYaQe.php/auth/group/roletree', '权限管理 / 角色组', '{\"id\":\"7\",\"pid\":\"1\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651007616),
(223, 1, 'admin', '/CrBnVqYaQe.php/auth/group/edit/ids/7?dialog=1', '权限管理 / 角色组 / 编辑', '{\"dialog\":\"1\",\"__token__\":\"***\",\"row\":{\"rules\":\"13,23,29,35,40,44,47,51,55,68,76,80,93,100,108,1,7,2,8,3,9,5,10,11,12,4,67,66,73,79,92,98,99,107\",\"pid\":\"1\",\"name\":\"演示\",\"status\":\"normal\"},\"ids\":\"7\"}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651007625),
(224, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"pqxx\",\"keeplogin\":\"1\"}', '222.90.10.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1651064904),
(225, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"pqxx\",\"keeplogin\":\"1\"}', '222.90.10.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1651064912),
(226, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"4c7b\",\"keeplogin\":\"1\"}', '222.90.10.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1651064921),
(227, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;1&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651067675),
(228, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '222.247.12.165', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651067720),
(229, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Findex%2Flogout', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/index\\/logout\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"vxpg\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651075230),
(230, 0, 'Unknown', '/CrBnVqYaQe.php/index/logout', '', '{\"__token__\":\"***\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651075231),
(231, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"vtvj\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651075242),
(232, 1, 'admin', '/CrBnVqYaQe.php/game/record/del', '游戏记录 / 删除', '{\"action\":\"del\",\"ids\":\"18\",\"params\":\"\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651076891),
(233, 1, 'admin', '/CrBnVqYaQe.php/game/record/del', '游戏记录 / 删除', '{\"action\":\"del\",\"ids\":\"17,16,15\",\"params\":\"\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651076902),
(234, 0, 'Unknown', '/CrBnVqYaQe.php/index/logout', '', '{\"__token__\":\"***\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651076954),
(235, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"tlat\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651076971),
(236, 0, 'Unknown', '/CrBnVqYaQe.php/index/logout', '', '{\"__token__\":\"***\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651077045),
(237, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"azfy\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651077054),
(238, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;1&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;10&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651077690),
(239, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TUkm5CQwZHpGXgvxJjKkyigNoqCM9DWRRR\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 1651077865),
(240, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"2zfd\"}', '5.38.67.85', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', 1651079462),
(241, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"8tqg\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.133 Safari/537.36', 1651120541),
(242, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"cwaa\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.133 Safari/537.36', 1651120550),
(243, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"x8pj\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.133 Safari/537.36', 1651120559),
(244, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"4wa7\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.133 Safari/537.36', 1651120844),
(245, 1, 'admin', '/CrBnVqYaQe.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"c77t\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.133 Safari/537.36', 1651120850),
(246, 1, 'admin', '/CrBnVqYaQe.php/auth/admin/edit/ids/3?dialog=1', 'Auth / Admin / Edit', '{\"dialog\":\"1\",\"__token__\":\"***\",\"group\":[\"1\",\"7\"],\"row\":{\"username\":\"yuanma\",\"email\":\"11@qq.com\",\"nickname\":\"yuanma.com\",\"password\":\"***\",\"loginfailure\":\"0\",\"status\":\"normal\"},\"ids\":\"3\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.133 Safari/537.36', 1651120989),
(247, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"kmyd\"}', '222.247.3.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651131183),
(248, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fuser%2Fuser%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/user\\/user?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"qn4j\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651136568),
(249, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgame%2Frecord%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/game\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"i22b\"}', '222.247.3.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651154605),
(250, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"hc2n\",\"keeplogin\":\"1\"}', '203.145.94.129', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651233824),
(251, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"6XB8\"}', '203.145.94.129', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651233886),
(252, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"H7dc\"}', '203.145.94.129', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651233921),
(253, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"Ndb5\"}', '154.48.253.19', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651236542),
(254, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"hajy\"}', '139.162.120.14', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 Mobile Safari/537.36', 1651237803),
(255, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"tyim\",\"keeplogin\":\"1\"}', '139.162.120.14', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 Mobile Safari/537.36', 1651237815),
(256, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"5hp4\"}', '124.217.188.91', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651237959),
(257, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"psEq\"}', '203.145.94.167', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651239435),
(258, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fromaddress%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/romaddress?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"yrjd\"}', '222.247.3.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651239748),
(259, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"5qWJ\"}', '154.48.253.19', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651246088),
(260, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ishx\"}', '39.144.190.48', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651246133),
(261, 0, 'Unknown', '/CrBnVqYaQe.php/index/login', '', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ishx\"}', '39.144.190.48', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651246135),
(262, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"6Q5s\"}', '39.144.190.48', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; ELS-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.0.4.301 Mobile Safari/537.36', 1651246167),
(263, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"hhwa\"}', '222.247.7.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651292389),
(264, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"RSEN\"}', '203.145.94.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1651294362),
(265, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"name\":\"快乐哈希\",\"beian\":\"\",\"version\":\"1.0.2\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '203.145.94.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1651294701),
(266, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"name\":\"芒果哈希\",\"beian\":\"\",\"version\":\"1.0.2\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '203.145.94.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1651294974),
(267, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"name\":\"芒果哈希\",\"beian\":\"\",\"version\":\"1.0.2\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '203.145.94.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 1651294992),
(268, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"f3vb\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 1651340271),
(269, 3, 'yuanma', '/CrBnVqYaQe.php/auth/rule/multi', 'Auth / Rule', '{\"action\":\"\",\"ids\":\"95\",\"params\":\"ismenu=1\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 1651340637),
(270, 3, 'yuanma', '/CrBnVqYaQe.php/auth/rule/multi', 'Auth / Rule', '{\"action\":\"\",\"ids\":\"94\",\"params\":\"ismenu=1\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 1651340643),
(271, 3, 'yuanma', '/CrBnVqYaQe.php/auth/rule/multi', 'Auth / Rule', '{\"action\":\"\",\"ids\":\"93\",\"params\":\"ismenu=1\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 1651340649),
(272, 3, 'yuanma', '/CrBnVqYaQe.php/auth/rule/multi', 'Auth / Rule', '{\"action\":\"\",\"ids\":\"95\",\"params\":\"ismenu=0\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 1651340701),
(273, 3, 'yuanma', '/CrBnVqYaQe.php/auth/rule/multi', 'Auth / Rule', '{\"action\":\"\",\"ids\":\"94\",\"params\":\"ismenu=0\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 1651340708),
(274, 3, 'yuanma', '/CrBnVqYaQe.php/auth/rule/multi', 'Auth / Rule', '{\"action\":\"\",\"ids\":\"93\",\"params\":\"ismenu=0\"}', '103.97.200.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.147 Safari/537.36', 1651340713),
(275, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"dchk\"}', '111.90.149.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651391130),
(276, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"xvqm\"}', '117.30.169.33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36 Edg/101.0.1210.32', 1651469503),
(277, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"XLXU\"}', '27.149.82.191', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_3_1 like Mac OS X; zh-CN) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/19D52 UCBrowser/13.9.0.1727 Mobile  AliApp(TUnionSDK/0.1.20.4)', 1651469738),
(278, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"eeau\"}', '222.247.10.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651513529),
(279, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"lfn3\"}', '222.247.2.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651670214),
(280, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"33d63ac401d79f62a3041539ae3b880fe1f8e769e0c62556aa61aa17583495d8\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '222.247.2.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651670275),
(281, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', 'Login', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"kam6\"}', '218.107.201.178', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.9 Safari/537.36', 1651715564),
(282, 3, 'yuanma', '/CrBnVqYaQe.php/game/record/edit/ids/9?dialog=1', '游戏记录 / 编辑', '{\"dialog\":\"1\",\"row\":{\"status\":\"2\"},\"ids\":\"9\"}', '218.107.201.178', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.9 Safari/537.36', 1651716462),
(283, 3, 'yuanma', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"yuanma\",\"password\":\"***\",\"captcha\":\"lm4t\",\"keeplogin\":\"1\"}', '120.41.80.151', 'Mozilla/5.0 (Linux; Android 10; HarmonyOS; NOH-AN00; HMSCore 6.4.0.312) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.105 HuaweiBrowser/12.1.0.301 Mobile Safari/537.36', 1651733474),
(284, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"5y6z\"}', '103.35.74.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1651757840),
(285, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fgeneral%2Fattachment%3Faddtabs%3D1', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/general\\/attachment?addtabs=1\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"3ecu\"}', '103.82.4.237', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1651757959),
(286, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fauth%2Frule%3Faddtabs%3D1', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/auth\\/rule?addtabs=1\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"bpy8\"}', '103.35.74.71', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1651758122),
(287, 0, 'Unknown', '/CrBnVqYaQe.php/addon/install', '', '{\"name\":\"database\",\"force\":\"0\",\"uid\":\"58926\",\"token\":\"***\",\"version\":\"1.0.12\",\"faversion\":\"1.3.3.20220121\"}', '223.104.211.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1651758867),
(288, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Fuser%2Fuser%3Faddtabs%3D1', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/user\\/user?addtabs=1\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ptjr\",\"keeplogin\":\"1\"}', '223.104.211.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1651758882),
(351, 1, 'admin', '/CrBnVqYaQe.php/auth/adminlog/del', '权限管理 / 管理员日志 / 删除', '{\"action\":\"del\",\"ids\":\"350,299,298,297,296,295,294,293,292,291,290,289\",\"params\":\"\"}', '223.104.211.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 1651760619),
(352, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"uuw2\"}', '222.247.2.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651764802),
(353, 1, 'admin', '/CrBnVqYaQe.php/general.config/edit', '常规管理 / 系统配置 / 编辑', '{\"__token__\":\"***\",\"row\":{\"sizegame\":\"THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX\",\"sadgame\":\"TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999\",\"doubletailgame\":\"TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555\",\"pc10game\":\"TMGtXCT5a1bnYT46ketCjWFjG2BazFa555\",\"payaddress\":\"TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG\",\"payprivatekey\":\"\",\"sizegamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"sadgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"doubletailgamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:1.98&quot;}\",\"pc10gamequota\":\"{&quot;TRX_min&quot;:&quot;10&quot;,&quot;TRX_max&quot;:&quot;100000&quot;,&quot;USDT_min&quot;:&quot;5&quot;,&quot;USDT_max&quot;:&quot;100000&quot;,&quot;Odds&quot;:&quot;1:0.95&quot;}\"}}', '222.247.2.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651765071),
(354, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ngtw\"}', '222.247.10.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651806645),
(355, 1, 'admin', '/CrBnVqYaQe.php/index/login', '登录', '{\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"mii8\"}', '222.247.10.22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36', 1651843243),
(356, 1, 'admin', '/CrBnVqYaQe.php/index/login?url=%2FCrBnVqYaQe.php%2Ftransfer%2Frecord%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/CrBnVqYaQe.php\\/transfer\\/record?ref=addtabs\",\"__token__\":\"***\",\"username\":\"admin\",\"password\":\"***\",\"captcha\":\"ibGu\"}', '103.169.216.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 1652110834);

-- --------------------------------------------------------

--
-- 表的结构 `tron_area`
--

CREATE TABLE `tron_area` (
  `id` int(10) NOT NULL COMMENT 'ID',
  `pid` int(10) DEFAULT NULL COMMENT '父id',
  `shortname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简称',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `mergename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '全称',
  `level` tinyint(4) DEFAULT NULL COMMENT '层级:1=省,2=市,3=区/县',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拼音',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '长途区号',
  `zip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮编',
  `first` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首字母',
  `lng` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `lat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='地区表';

-- --------------------------------------------------------

--
-- 表的结构 `tron_attachment`
--

CREATE TABLE `tron_attachment` (
  `id` int(20) UNSIGNED NOT NULL COMMENT 'ID',
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类别',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '图片帧数',
  `filename` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件名称',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小',
  `mimetype` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '文件 sha1编码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

--
-- 转存表中的数据 `tron_attachment`
--

INSERT INTO `tron_attachment` (`id`, `category`, `admin_id`, `user_id`, `url`, `imagewidth`, `imageheight`, `imagetype`, `imageframes`, `filename`, `filesize`, `mimetype`, `extparam`, `createtime`, `updatetime`, `uploadtime`, `storage`, `sha1`) VALUES
(1, '', 1, 2, '/assets/img/qrcode.png', '150', '150', 'png', 0, 'qrcode.png', 21859, 'image/png', '', 1491635035, 1491635035, 1491635035, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- --------------------------------------------------------

--
-- 表的结构 `tron_auth_group`
--

CREATE TABLE `tron_auth_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父组别',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组表';

--
-- 转存表中的数据 `tron_auth_group`
--

INSERT INTO `tron_auth_group` (`id`, `pid`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(1, 0, 'Admin group', '*', 1491635035, 1491635035, 'normal'),
(2, 1, '财务', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,63,64,65,1,6,7,8,2,9,10,11,4,5', 1491635035, 1650467100, 'normal'),
(6, 1, '代理', '1,13,14,16,15,17,2,6,18,19,20,21,22,7,23,24,25,26,27,28,8,29,30,31,32,33,34,3,35,36,37,38,39,5,9,40,41,42,43,10,44,45,46,11,47,48,49,50,12,51,52,53,54,4,55,56,57,58,59,60,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84', 1650467119, 1650467119, 'normal'),
(7, 1, '演示', '13,23,29,35,40,44,47,51,55,68,76,80,93,100,108,1,7,2,8,3,9,5,10,11,12,4,67,66,73,79,92,98,99,107', 1651007453, 1651007625, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `tron_auth_group_access`
--

CREATE TABLE `tron_auth_group_access` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限分组表';

--
-- 转存表中的数据 `tron_auth_group_access`
--

INSERT INTO `tron_auth_group_access` (`uid`, `group_id`) VALUES
(1, 1),
(2, 6),
(3, 1),
(3, 7);

-- --------------------------------------------------------

--
-- 表的结构 `tron_auth_rule`
--

CREATE TABLE `tron_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('menu','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '规则URL',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '条件',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否为菜单',
  `menutype` enum('addtabs','blank','dialog','ajax') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '菜单类型',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `py` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音首字母',
  `pinyin` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '拼音',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点表';

--
-- 转存表中的数据 `tron_auth_rule`
--

INSERT INTO `tron_auth_rule` (`id`, `type`, `pid`, `name`, `title`, `icon`, `url`, `condition`, `remark`, `ismenu`, `menutype`, `extend`, `py`, `pinyin`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', '', 'Dashboard tips', 1, NULL, '', 'kzt', 'kongzhitai', 1491635035, 1491635035, 143, 'normal'),
(2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', '', 1, NULL, '', 'cggl', 'changguiguanli', 1491635035, 1491635035, 137, 'normal'),
(3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', '', 'Category tips', 0, NULL, '', 'flgl', 'fenleiguanli', 1491635035, 1491635035, 119, 'normal'),
(4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', '', 'Addon tips', 1, NULL, '', 'cjgl', 'chajianguanli', 1491635035, 1491635035, 0, 'normal'),
(5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', '', 1, NULL, '', 'qxgl', 'quanxianguanli', 1491635035, 1491635035, 99, 'normal'),
(6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', '', 'Config tips', 1, NULL, '', 'xtpz', 'xitongpeizhi', 1491635035, 1491635035, 60, 'normal'),
(7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', '', 'Attachment tips', 1, NULL, '', 'fjgl', 'fujianguanli', 1491635035, 1491635035, 53, 'normal'),
(8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', '', 1, NULL, '', 'grzl', 'gerenziliao', 1491635035, 1491635035, 34, 'normal'),
(9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', '', 'Admin tips', 1, NULL, '', 'glygl', 'guanliyuanguanli', 1491635035, 1491635035, 118, 'normal'),
(10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', '', 'Admin log tips', 1, NULL, '', 'glyrz', 'guanliyuanrizhi', 1491635035, 1491635035, 113, 'normal'),
(11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', '', 'Group tips', 1, NULL, '', 'jsz', 'juesezu', 1491635035, 1491635035, 109, 'normal'),
(12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', '', 'Rule tips', 1, NULL, '', 'cdgz', 'caidanguize', 1491635035, 1491635035, 104, 'normal'),
(13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 136, 'normal'),
(14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 135, 'normal'),
(15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 133, 'normal'),
(16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 134, 'normal'),
(17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 132, 'normal'),
(18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 52, 'normal'),
(19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 51, 'normal'),
(20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 50, 'normal'),
(21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 49, 'normal'),
(22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 48, 'normal'),
(23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', '', 'Attachment tips', 0, NULL, '', '', '', 1491635035, 1491635035, 59, 'normal'),
(24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 58, 'normal'),
(25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 57, 'normal'),
(26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 56, 'normal'),
(27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 55, 'normal'),
(28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 54, 'normal'),
(29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 33, 'normal'),
(30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 32, 'normal'),
(31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 31, 'normal'),
(32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 30, 'normal'),
(33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 29, 'normal'),
(34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 28, 'normal'),
(35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', '', 'Category tips', 0, NULL, '', '', '', 1491635035, 1491635035, 142, 'normal'),
(36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 141, 'normal'),
(37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 140, 'normal'),
(38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 139, 'normal'),
(39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 138, 'normal'),
(40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', '', 'Admin tips', 0, NULL, '', '', '', 1491635035, 1491635035, 117, 'normal'),
(41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 116, 'normal'),
(42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 115, 'normal'),
(43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 114, 'normal'),
(44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', '', 'Admin log tips', 0, NULL, '', '', '', 1491635035, 1491635035, 112, 'normal'),
(45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 111, 'normal'),
(46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 110, 'normal'),
(47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', '', 'Group tips', 0, NULL, '', '', '', 1491635035, 1491635035, 108, 'normal'),
(48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 107, 'normal'),
(49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 106, 'normal'),
(50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 105, 'normal'),
(51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', '', 'Rule tips', 0, NULL, '', '', '', 1491635035, 1491635035, 103, 'normal'),
(52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 102, 'normal'),
(53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 101, 'normal'),
(54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 100, 'normal'),
(55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', '', 'Addon tips', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(59, 'file', 4, 'addon/downloaded', 'Local addon', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(66, 'file', 0, 'user', 'User', 'fa fa-user-circle', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal'),
(67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', '', 1, NULL, '', 'hygl', 'huiyuanguanli', 1491635035, 1491635035, 0, 'normal'),
(68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', '', 1, NULL, '', 'hyfz', 'huiyuanfenzu', 1491635035, 1491635035, 0, 'normal'),
(74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', '', 1, NULL, '', 'hygz', 'huiyuanguize', 1491635035, 1491635035, 0, 'normal'),
(80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', '', 0, NULL, '', '', '', 1491635035, 1491635035, 0, 'normal'),
(92, 'file', 98, 'romaddress', '生成靓号', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'scjh', 'shengchengjinghao', 1650732082, 1650732263, 0, 'normal'),
(93, 'file', 92, 'romaddress/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1650732082, 1651340713, 0, 'normal'),
(94, 'file', 92, 'romaddress/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1650732082, 1651340708, 0, 'normal'),
(95, 'file', 92, 'romaddress/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1650732082, 1651340701, 0, 'normal'),
(96, 'file', 92, 'romaddress/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1650732082, 1650732082, 0, 'normal'),
(97, 'file', 92, 'romaddress/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1650732082, 1650732082, 0, 'normal'),
(98, 'file', 0, '玩法管理', '玩法管理', 'fa fa-list', '', '', '', 1, 'addtabs', '', 'wfgl', 'wanfaguanli', 1650732180, 1650732246, 0, 'normal'),
(99, 'file', 98, 'game/record', '游戏记录', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'yxjl', 'youxijilu', 1650732180, 1650732254, 0, 'normal'),
(100, 'file', 99, 'game/record/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1650732180, 1650732180, 0, 'normal'),
(101, 'file', 99, 'game/record/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1650732180, 1650732180, 0, 'normal'),
(102, 'file', 99, 'game/record/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1650732180, 1650732180, 0, 'normal'),
(103, 'file', 99, 'game/record/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1650732180, 1650732180, 0, 'normal'),
(104, 'file', 99, 'game/record/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1650732180, 1650732180, 0, 'normal'),
(105, 'file', 98, 'transfer/record', '发放记录', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'ffjl', 'fafangjilu', 1650965938, 1650965938, 0, 'normal'),
(107, 'file', 98, 'game/commission', '佣金记录', 'fa fa-circle-o', '', '', '', 1, 'addtabs', '', 'yjjl', 'yongjinjilu', 1650991803, 1650991859, 0, 'normal'),
(108, 'file', 107, 'game/commission/index', '查看', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'zk', 'zhakan', 1650991803, 1650991803, 0, 'normal'),
(109, 'file', 107, 'game/commission/add', '添加', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'tj', 'tianjia', 1650991803, 1650991803, 0, 'normal'),
(110, 'file', 107, 'game/commission/edit', '编辑', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'bj', 'bianji', 1650991803, 1650991803, 0, 'normal'),
(111, 'file', 107, 'game/commission/del', '删除', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'sc', 'shanchu', 1650991803, 1650991803, 0, 'normal'),
(112, 'file', 107, 'game/commission/multi', '批量更新', 'fa fa-circle-o', '', '', '', 0, NULL, '', 'plgx', 'pilianggengxin', 1650991803, 1650991803, 0, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `tron_category`
--

CREATE TABLE `tron_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父ID',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';

--
-- 转存表中的数据 `tron_category`
--

INSERT INTO `tron_category` (`id`, `pid`, `type`, `name`, `nickname`, `flag`, `image`, `keywords`, `description`, `diyname`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1491635035, 1491635035, 2, 'normal'),
(3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1491635035, 1491635035, 3, 'normal'),
(4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1491635035, 1491635035, 4, 'normal'),
(5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1491635035, 1491635035, 5, 'normal'),
(6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1491635035, 1491635035, 6, 'normal'),
(7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1491635035, 1491635035, 7, 'normal'),
(8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1491635035, 1491635035, 8, 'normal'),
(9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1491635035, 1491635035, 9, 'normal'),
(10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1491635035, 1491635035, 10, 'normal'),
(11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1491635035, 1491635035, 11, 'normal'),
(12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1491635035, 1491635035, 12, 'normal'),
(13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1491635035, 1491635035, 13, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `tron_config`
--

CREATE TABLE `tron_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量名',
  `group` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '分组',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `visible` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '可见条件',
  `value` text COLLATE utf8mb4_unicode_ci COMMENT '变量值',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '变量字典数据',
  `rule` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '扩展属性',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '配置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置';

--
-- 转存表中的数据 `tron_config`
--

INSERT INTO `tron_config` (`id`, `name`, `group`, `title`, `tip`, `type`, `visible`, `value`, `content`, `rule`, `extend`, `setting`) VALUES
(1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', '', '芒果哈希', '', 'required', '', NULL),
(2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '', '', NULL),
(3, 'cdnurl', 'basic', 'Cdn url', '如果全站静态资源使用第三方云储存请配置该值', 'string', '', '', '', '', '', ''),
(4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '', '1.0.2', '', 'required', '', NULL),
(5, 'timezone', 'basic', 'Timezone', '', 'string', '', 'Asia/Shanghai', '', 'required', '', NULL),
(6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '', '', NULL),
(7, 'languages', 'basic', 'Languages', '', 'array', '', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '', NULL),
(8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', '', 'dashboard', '', 'required', '', NULL),
(9, 'categorytype', 'dictionary', 'Category type', '', 'array', '', '{\"default\":\"默认\",\"page\":\"单页\",\"article\":\"文章\",\"test\":\"Test\"}', '', '', '', NULL),
(10, 'configgroup', 'dictionary', 'Config group', '', 'array', '', '{\"basic\":\"基础配置\",\"email\":\"邮件配置\",\"dictionary\":\"字典配置\",\"user\":\"会员配置\",\"wallet\":\"钱包配置\"}', '', '', '', NULL),
(11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '', '1', '[\"请选择\",\"SMTP\"]', '', '', ''),
(12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', '', 'smtp.qq.com', '', '', '', ''),
(13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '', '465', '', '', '', ''),
(14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '', '10000', '', '', '', ''),
(15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码或授权码）', 'string', '', 'password', '', '', '', ''),
(16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '', '2', '[\"无\",\"TLS\",\"SSL\"]', '', '', ''),
(17, 'mail_from', 'email', 'Mail from', '', 'string', '', '10000@qq.com', '', '', '', ''),
(18, 'attachmentcategory', 'dictionary', 'Attachment category', '', 'array', '', '{\"category1\":\"分类一\",\"category2\":\"分类二\",\"custom\":\"自定义\"}', '', '', '', NULL),
(20, 'sizegame', 'wallet', '大小游戏trc20地址', '大小游戏trc20地址', 'string', '', 'THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(21, 'sadgame', 'wallet', '单双游戏地址(trc20)', '单双游戏地址(trc20)', 'string', '', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(22, 'doubletailgame', 'wallet', '双尾游戏地址(trc20)', '双尾游戏地址(trc20)', 'string', '', 'TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(23, 'pc10game', 'wallet', '牛牛游戏地址(trc20)', 'pc10游戏地址(trc20)', 'string', '', 'TMGtXCT5a1bnYT46ketCjWFjG2BazFa555', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(24, 'payaddress', 'wallet', '给用户转账的地址(trc20)', '用户转账地址(trc20)', 'string', '', 'TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(25, 'payprivatekey', 'wallet', '转账地址私钥', '转账地址私钥', 'string', '', '', '', '', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(26, 'FirstgradeCommission', 'user', '一级分佣比例', '%', 'number', '', '5', '', 'digits', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(27, 'SecondaryCommission', 'user', '二级分佣比例', '%', 'number', '', '3', '', 'digits', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(28, 'Threecommissionandmore', 'user', '三级以上分佣比例', '%', 'number', '', '1', '', 'digits', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"\",\"value\":\"\"}'),
(29, 'sizegamequota', 'wallet', '大小限额配置(trx/usdt)', '', 'array', '', '{\"TRX_min\":\"10\",\"TRX_max\":\"100000\",\"USDT_min\":\"5\",\"USDT_max\":\"100000\",\"Odds\":\"1:1.98\"}', '{\"value1\":\"title1\",\"value2\":\"title2\"}', 'digits', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"最低\",\"value\":\"最高\"}'),
(31, 'sadgamequota', 'wallet', '单双限额配置(trx/usdt)', '', 'array', '', '{\"TRX_min\":\"10\",\"TRX_max\":\"100000\",\"USDT_min\":\"5\",\"USDT_max\":\"100000\",\"Odds\":\"1:1.98\"}', '{\"value1\":\"title1\",\"value2\":\"title2\"}', 'digits', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"最低\",\"value\":\"最高\"}'),
(32, 'doubletailgamequota', 'wallet', '双尾限额配置(trx/usdt)', '', 'array', '', '{\"TRX_min\":\"10\",\"TRX_max\":\"100000\",\"USDT_min\":\"5\",\"USDT_max\":\"100000\",\"Odds\":\"1:1.98\"}', '{\"value1\":\"title1\",\"value2\":\"title2\"}', 'digits', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"最低\",\"value\":\"最高\"}'),
(33, 'pc10gamequota', 'wallet', '牛牛限额配置(trx/usdt)', '', 'array', '', '{\"TRX_min\":\"10\",\"TRX_max\":\"100000\",\"USDT_min\":\"5\",\"USDT_max\":\"100000\",\"Odds\":\"1:0.95\"}', '{\"value1\":\"title1\",\"value2\":\"title2\"}', 'digits', '', '{\"table\":\"\",\"conditions\":\"\",\"key\":\"最低\",\"value\":\"最高\"}'),
(34, 'forbiddenaddress', 'user', 'Forbidden address', '一行一条记录', 'text', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tron_ems`
--

CREATE TABLE `tron_ems` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `tron_game_commission`
--

CREATE TABLE `tron_game_commission` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `txID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '交易哈希',
  `amount` double(10,6) NOT NULL DEFAULT '0.000000' COMMENT '转账数量',
  `to_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接受地址',
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'trx usdt',
  `createtime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(20) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

--
-- 转存表中的数据 `tron_game_commission`
--

INSERT INTO `tron_game_commission` (`id`, `txID`, `amount`, `to_address`, `currency`, `createtime`, `updatetime`, `remark`) VALUES
(1, 'f4f5118b58e7d86807dd3fc3987df18497dfc6bc9c25317249ddbb53bacc9f72', 0.018000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1650991612, NULL, '1级分佣'),
(2, 'b3da5a4b081bbe2e5c0794069756e074cbeb147dddf60961118f6b3a0d2bc63d', 0.018000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1650991645, NULL, '1级分佣'),
(3, '9c4f7dc6ab54a4abc388a757a87639c170aff0bd1ce17d61dd6c63e712982965', 0.009000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1650991672, NULL, '1级分佣'),
(4, '77e2e853e2ce55aeec24b8254e8715cc6348d610380dd5ea6567bc409b73c20c', 0.009000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1650991699, NULL, '1级分佣'),
(5, '06f70d2f10073f8fa23b110beec09cc1bc38259f9d13a4ad97b05cebc0f00e61', 0.030000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1651076875, NULL, '1级分佣'),
(6, '31f33398234ea2bc12a0cbf8e3a0d8134383a00a5d5dd599999427ebaae91578', 0.500000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1651077596, NULL, '1级分佣'),
(7, 'b657a2a55d7411b98c80cec221e81cd347f58ee4ae8d3aa7530b3a14554509c6', 0.100000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1651077724, NULL, '1级分佣'),
(8, 'b657a2a55d7411b98c80cec221e81cd347f58ee4ae8d3aa7530b3a14554509c6', 0.100000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1651670873, NULL, '1级分佣'),
(9, '31f33398234ea2bc12a0cbf8e3a0d8134383a00a5d5dd599999427ebaae91578', 0.500000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1651670873, NULL, '1级分佣'),
(10, '9860a3f3c771985ac02b0d7b9f0db0d6db838bc25e88ec6b88decdd89a816066', 0.015000, 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', 'USDT', 1651683420, NULL, '1级分佣');

-- --------------------------------------------------------

--
-- 表的结构 `tron_game_record`
--

CREATE TABLE `tron_game_record` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `txID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '交易哈希',
  `amount` double(10,6) NOT NULL DEFAULT '0.000000' COMMENT '转账数量',
  `owner_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转账地址',
  `to_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接受地址',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '交易类型',
  `contractRet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '交易状态',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '中奖状态 0开奖中 1已中奖 2未中奖 3已发放奖金',
  `wintype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '竞猜类型',
  `winmoney` double(10,6) NOT NULL DEFAULT '0.000000' COMMENT '中奖金额',
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'trx usdt',
  `createtime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(20) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

--
-- 转存表中的数据 `tron_game_record`
--

INSERT INTO `tron_game_record` (`id`, `txID`, `amount`, `owner_address`, `to_address`, `type`, `contractRet`, `status`, `wintype`, `winmoney`, `currency`, `createtime`, `updatetime`, `remark`) VALUES
(3, '1407ca4173f74c087890c4c1d28621ffe401929f16e37f87c6fb89baaa84b098', 0.000003, 'TKbU4XVvNgQJxmtEc6XdjAxfJR4gUn3333', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 1, '单双游戏', 0.000000, 'USDT', 1651588752, 1651670873, '投资金额小于最低限额，不予退回'),
(4, '2f64d9258cc3024f8d3089173dd5317715405fe0f05a7a43e1914ce66cd89ab7', 0.000003, 'TKbU4XVvNgQJxmtEc6XdjAxfJR4gUn3333', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'USDT', 1651588749, 1651670873, '大小游戏:未中奖'),
(5, 'fb1c6a50156ad1a106333adbffc8fb4ed4f6a5ad3cc3fd914e48e803924709f4', 0.000003, 'TKbU4XVvNgQJxmtEc6XdjAxfJR4gUn3333', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 1, '单双游戏', 0.000000, 'USDT', 1651588749, 1651670873, '投资金额小于最低限额，不予退回'),
(6, '2f9969ca398b69bda55136e4878f75ea36ea4ee7b12b365564b24042e8fe55b1', 10.000000, 'TNWLd5hqoj36rnFu8LVtkYhWqKGVr2dkKm', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'USDT', 1651588344, 1651670873, '大小游戏:未中奖'),
(7, '67c8dfd23fa4a89e9db4288edfab79dcf0aa5efc6b1e2194b43b6f657a6f5301', 12.000000, 'TNWLd5hqoj36rnFu8LVtkYhWqKGVr2dkKm', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'USDT', 1651588305, 1651670873, '大小游戏:未中奖'),
(8, '087c3868c4af9a52aa3465993c06bcac51b26b1c36fefc222051b1a6a19dcfcb', 10.000000, 'TNWLd5hqoj36rnFu8LVtkYhWqKGVr2dkKm', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'USDT', 1651588263, 1651670873, '大小游戏:未中奖'),
(9, 'b657a2a55d7411b98c80cec221e81cd347f58ee4ae8d3aa7530b3a14554509c6', 2.000000, 'TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB', 'TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555', 'TriggerSmartContract', 'SUCCESS', 2, '双尾游戏', 3.960000, 'USDT', 1651077714, 1651716462, '投资金额小于最低限额，不予退回'),
(10, '31f33398234ea2bc12a0cbf8e3a0d8134383a00a5d5dd599999427ebaae91578', 10.000000, 'TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB', 'TRyvV6k5FJe9uWjvHw4wfzHUCmpbZ7x555', 'TriggerSmartContract', 'SUCCESS', 2, '双尾游戏', 0.000000, 'USDT', 1651077588, 1651670878, '双尾游戏:未中奖'),
(11, 'f32fca5c2ea9996bf3369f545da381663cccd1296d0d9795d2e88d7a1c1bea9c', 0.100000, 'TPgttA7P6bRQAiduTzgwVyPfQNcEYiKS9w', 'THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX', 'TriggerSmartContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'USDT', 1651038018, 1651671087, '大小游戏:未中奖'),
(13, '92ce871d3daf368ae500075a9696b23718f572d1262103ac458808af09d6c26d', 0.000003, 'TKbU4XVvNgQJxmtEc6XdjAxfJR4gUn3333', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 1, '单双游戏', 0.000000, 'USDT', 1651588755, 1651843782, '投资金额小于最低限额，不予退回'),
(14, '19c84c20c6b65952054c0397bdf5abe213684e2b85321f4c064405d092a12105', 0.000003, 'TKbU4XVvNgQJxmtEc6XdjAxfJR4gUn3333', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'USDT', 1651588755, 1651843887, '大小游戏:未中奖'),
(15, 'c2a6b15bda3844e0a045b567c5f8015fd306d0f05e029f8c768d930abe1105b5', 20.000000, 'TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TriggerSmartContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'USDT', 1652272449, 1652272462, '大小游戏:未中奖'),
(16, '1a170d1aecf12d4b199f3ca813ccf2b5a8791545f6d2730f26c4d0022abd2649', 22.000000, 'TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG', 'TBoaP4s43UAV6rBjEWMKLJchJYNPUj9999', 'TransferContract', 'SUCCESS', 2, '大小游戏', 0.000000, 'TRX', 1652277561, 1652277513, '大小游戏:未中奖');

-- --------------------------------------------------------

--
-- 表的结构 `tron_romaddress`
--

CREATE TABLE `tron_romaddress` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `private_key` text COLLATE utf8mb4_unicode_ci COMMENT '私钥',
  `public_key` text COLLATE utf8mb4_unicode_ci COMMENT 'public_key',
  `address_hex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '哈希地址',
  `address_base58` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'base58',
  `createtime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='邮箱验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `tron_sms`
--

CREATE TABLE `tron_sms` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `event` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '验证次数',
  `ip` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='短信验证码表';

-- --------------------------------------------------------

--
-- 表的结构 `tron_test`
--

CREATE TABLE `tron_test` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `user_id` int(10) DEFAULT '0' COMMENT '会员ID',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED DEFAULT '0' COMMENT '分类ID(单选)',
  `category_ids` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '分类ID(多选)',
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标签',
  `week` enum('monday','tuesday','wednesday') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片',
  `images` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '附件',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '描述',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '省市',
  `json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `multiplejson` varchar(1500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '二维数组:title=标题,intro=介绍,author=作者,age=年龄',
  `price` decimal(10,2) UNSIGNED DEFAULT '0.00' COMMENT '价格',
  `views` int(10) UNSIGNED DEFAULT '0' COMMENT '点击',
  `workrange` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '时间区间',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表';

--
-- 转存表中的数据 `tron_test`
--

INSERT INTO `tron_test` (`id`, `user_id`, `admin_id`, `category_id`, `category_ids`, `tags`, `week`, `flag`, `genderdata`, `hobbydata`, `title`, `content`, `image`, `images`, `attachfile`, `keywords`, `description`, `city`, `json`, `multiplejson`, `price`, `views`, `workrange`, `startdate`, `activitytime`, `year`, `times`, `refreshtime`, `createtime`, `updatetime`, `deletetime`, `weigh`, `switch`, `status`, `state`) VALUES
(1, 1, 1, 12, '12,13', '互联网,计算机', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '[{\"title\":\"标题一\",\"intro\":\"介绍一\",\"author\":\"小明\",\"age\":\"21\"}]', '0.00', 0, '2020-10-01 00:00:00 - 2021-10-31 23:59:59', '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1491635035, 1491635035, 1491635035, NULL, 0, 1, 'normal', '1');

-- --------------------------------------------------------

--
-- 表的结构 `tron_transfer_record`
--

CREATE TABLE `tron_transfer_record` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `txID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '交易哈希',
  `grid` int(11) NOT NULL DEFAULT '0' COMMENT '游戏记录id',
  `amount` double(10,6) NOT NULL DEFAULT '0.000000' COMMENT '转账数量',
  `owner_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转账地址',
  `to_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接受地址',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '交易类型',
  `contractRet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '交易状态',
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'trx usdt',
  `createtime` bigint(20) DEFAULT NULL COMMENT '创建时间',
  `updatetime` bigint(20) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='结算记录';

--
-- 转存表中的数据 `tron_transfer_record`
--

INSERT INTO `tron_transfer_record` (`id`, `txID`, `grid`, `amount`, `owner_address`, `to_address`, `type`, `contractRet`, `currency`, `createtime`, `updatetime`, `remark`) VALUES
(6, '19e5be792664e4156cc41e11c9a7e80099523ea68542734928671efa8dbcea5b', 9, 11.880000, 'TBVMpra9VpDFy4ydJ7Udiow14QyrbL4GGG', 'TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB', 'TransferContract', '1', 'TRX', 1650977942, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tron_user`
--

CREATE TABLE `tron_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '组别ID',
  `pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'trc20地址',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '失败次数',
  `joinip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Token',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态',
  `verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '验证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';

--
-- 转存表中的数据 `tron_user`
--

INSERT INTO `tron_user` (`id`, `group_id`, `pid`, `username`, `nickname`, `password`, `salt`, `email`, `mobile`, `avatar`, `level`, `gender`, `birthday`, `bio`, `money`, `score`, `successions`, `maxsuccessions`, `prevtime`, `logintime`, `loginip`, `loginfailure`, `joinip`, `jointime`, `createtime`, `updatetime`, `token`, `status`, `verification`) VALUES
(1, 0, 0, 'admin', 'admin', '3808cb09b855398f06219a660eaed876', '1f75ce', 'THbmoRtTTrYdVshFsw93Nhro7SJXtHUXXX', '13888888888', 'http://tronhash.yuanmah.com/assets/img/avatar.png', 0, 0, '2017-04-08', '', '0.00', 0, 1, 1, 1491635035, 1491635035, '127.0.0.1', 0, '127.0.0.1', 1491635035, 0, 1650992624, '', 'normal', ''),
(2, 0, 0, 'zznl12', 'zznl12', '3d38b5604473cd0a56988003dd88815e', 'CRuJ7v', 'TS7LTpVEvQT3CoNMpvMYkNUdDy999UtKp2', '', '', 1, 0, NULL, '', '1.31', 0, 2, 2, 1650985395, 1651004456, '222.247.12.165', 0, '222.247.12.165', 1650981920, 1650981920, 1651004456, '', 'normal', ''),
(3, 0, 2, 'zznl11', 'zznl12', '3d38b5604473cd0a56988003dd88815e', 'CRuJ7v', 'TS7LTpVEvQT3CoNMpvMYkNUdDy9992222', '', '', 1, 0, NULL, '', '0.00', 0, 1, 1, 1650981920, 1650981920, '127.0.0.1', 0, '222.247.12.165', 1650981920, 1650981920, 1650992615, '', 'normal', ''),
(4, 0, 2, 'zznl111', 'zznl12', '10b7979b61c370f6efa8627782242f44', 'OR3D7S', 'TUkq3uZivUzyDqCpDffKmXPcqrgUU2XHFB', '', '', 1, 0, NULL, '', '0.00', 0, 1, 1, 1650981920, 1650981920, '127.0.0.1', 0, '222.247.12.165', 1650981920, 1650981920, 1650992611, '', 'normal', ''),
(5, 0, 0, 'dasd', 'dasd', '99743552b76aeec0dbb13da3ed24f566', 'SKJc5w', 'dasdasd', '', '', 1, 0, NULL, '', '0.00', 0, 1, 1, 1651077269, 1651079702, '5.38.67.85', 0, '111.90.149.235', 1651077269, 1651077269, 1651079702, '', 'normal', ''),
(6, 0, 0, 'test', 'test', '60f19a1402946a043aba0dbb4e4116db', '0bknYR', '12312412412sfsdg', '', '', 1, 0, NULL, '', '0.00', 0, 1, 1, 1651716051, 1651716051, '218.107.201.178', 0, '218.107.201.178', 1651716051, 1651716051, 1651716051, '', 'normal', '');

-- --------------------------------------------------------

--
-- 表的结构 `tron_user_group`
--

CREATE TABLE `tron_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员组表';

--
-- 转存表中的数据 `tron_user_group`
--

INSERT INTO `tron_user_group` (`id`, `name`, `rules`, `createtime`, `updatetime`, `status`) VALUES
(0, '普通用户', '', 1650982088, 1650982088, 'normal'),
(1, '代理用户', '2,4,11,10,9,12,1,3,7,6,5,8', 1491635035, 1650982064, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `tron_user_money_log`
--

CREATE TABLE `tron_user_money_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '变更后余额',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员余额变动表';

-- --------------------------------------------------------

--
-- 表的结构 `tron_user_rule`
--

CREATE TABLE `tron_user_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT '0' COMMENT '权重',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员规则表';

--
-- 转存表中的数据 `tron_user_rule`
--

INSERT INTO `tron_user_rule` (`id`, `pid`, `name`, `title`, `remark`, `ismenu`, `createtime`, `updatetime`, `weigh`, `status`) VALUES
(1, 0, 'index', 'Frontend', '', 1, 1491635035, 1491635035, 1, 'normal'),
(2, 0, 'api', 'API Interface', '', 1, 1491635035, 1491635035, 2, 'normal'),
(3, 1, 'user', 'User Module', '', 1, 1491635035, 1491635035, 12, 'normal'),
(4, 2, 'user', 'User Module', '', 1, 1491635035, 1491635035, 11, 'normal'),
(5, 3, 'index/user/login', 'Login', '', 1, 1491635035, 1650980251, 5, 'normal'),
(6, 3, 'index/user/register', 'Register', '', 1, 1491635035, 1650980250, 7, 'normal'),
(7, 3, 'index/user/index', 'User Center', '', 1, 1491635035, 1650980221, 9, 'normal'),
(8, 3, 'index/user/profile', 'Profile', '', 1, 1491635035, 1650980252, 4, 'normal'),
(9, 4, 'api/user/login', 'Login', '', 1, 1491635035, 1650980261, 6, 'normal'),
(10, 4, 'api/user/register', 'Register', '', 1, 1491635035, 1650980260, 8, 'normal'),
(11, 4, 'api/user/index', 'User Center', '', 1, 1491635035, 1650980259, 10, 'normal'),
(12, 4, 'api/user/profile', 'Profile', '', 1, 1491635035, 1650980261, 3, 'normal');

-- --------------------------------------------------------

--
-- 表的结构 `tron_user_score_log`
--

CREATE TABLE `tron_user_score_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT '0' COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT '0' COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT '0' COMMENT '变更后积分',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员积分变动表';

-- --------------------------------------------------------

--
-- 表的结构 `tron_user_token`
--

CREATE TABLE `tron_user_token` (
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员Token表';

--
-- 转存表中的数据 `tron_user_token`
--

INSERT INTO `tron_user_token` (`token`, `user_id`, `createtime`, `expiretime`) VALUES
('41e154360830ff5c8cfdaafaabbea84505c9bcc9', 6, 1651716051, 1654308051),
('83c5fd64da368403e9539d137006ddcb7948f7c1', 5, 1651079702, 1653671702),
('c7cb039476ea76b6a70acc75d936fa0673f164b0', 5, 1651077269, 1653669269);

-- --------------------------------------------------------

--
-- 表的结构 `tron_version`
--

CREATE TABLE `tron_version` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `oldversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '包大小',
  `content` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '强制更新',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='版本表';

--
-- 转储表的索引
--

--
-- 表的索引 `tron_admin`
--
ALTER TABLE `tron_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- 表的索引 `tron_admin_log`
--
ALTER TABLE `tron_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`username`);

--
-- 表的索引 `tron_area`
--
ALTER TABLE `tron_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `tron_attachment`
--
ALTER TABLE `tron_attachment`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_auth_group`
--
ALTER TABLE `tron_auth_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_auth_group_access`
--
ALTER TABLE `tron_auth_group_access`
  ADD UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `group_id` (`group_id`);

--
-- 表的索引 `tron_auth_rule`
--
ALTER TABLE `tron_auth_rule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE,
  ADD KEY `pid` (`pid`),
  ADD KEY `weigh` (`weigh`);

--
-- 表的索引 `tron_category`
--
ALTER TABLE `tron_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weigh` (`weigh`,`id`),
  ADD KEY `pid` (`pid`);

--
-- 表的索引 `tron_config`
--
ALTER TABLE `tron_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 表的索引 `tron_ems`
--
ALTER TABLE `tron_ems`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `tron_game_commission`
--
ALTER TABLE `tron_game_commission`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `tron_game_record`
--
ALTER TABLE `tron_game_record`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `tron_romaddress`
--
ALTER TABLE `tron_romaddress`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `tron_sms`
--
ALTER TABLE `tron_sms`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_test`
--
ALTER TABLE `tron_test`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_transfer_record`
--
ALTER TABLE `tron_transfer_record`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `tron_user`
--
ALTER TABLE `tron_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `mobile` (`mobile`);

--
-- 表的索引 `tron_user_group`
--
ALTER TABLE `tron_user_group`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_user_money_log`
--
ALTER TABLE `tron_user_money_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_user_rule`
--
ALTER TABLE `tron_user_rule`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_user_score_log`
--
ALTER TABLE `tron_user_score_log`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tron_user_token`
--
ALTER TABLE `tron_user_token`
  ADD PRIMARY KEY (`token`);

--
-- 表的索引 `tron_version`
--
ALTER TABLE `tron_version`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tron_admin`
--
ALTER TABLE `tron_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `tron_admin_log`
--
ALTER TABLE `tron_admin_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=357;

--
-- 使用表AUTO_INCREMENT `tron_area`
--
ALTER TABLE `tron_area`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `tron_attachment`
--
ALTER TABLE `tron_attachment`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tron_auth_group`
--
ALTER TABLE `tron_auth_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `tron_auth_rule`
--
ALTER TABLE `tron_auth_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- 使用表AUTO_INCREMENT `tron_category`
--
ALTER TABLE `tron_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `tron_config`
--
ALTER TABLE `tron_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `tron_ems`
--
ALTER TABLE `tron_ems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tron_game_commission`
--
ALTER TABLE `tron_game_commission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `tron_game_record`
--
ALTER TABLE `tron_game_record`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `tron_romaddress`
--
ALTER TABLE `tron_romaddress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `tron_sms`
--
ALTER TABLE `tron_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID';

--
-- 使用表AUTO_INCREMENT `tron_test`
--
ALTER TABLE `tron_test`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tron_transfer_record`
--
ALTER TABLE `tron_transfer_record`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `tron_user`
--
ALTER TABLE `tron_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `tron_user_group`
--
ALTER TABLE `tron_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `tron_user_money_log`
--
ALTER TABLE `tron_user_money_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `tron_user_rule`
--
ALTER TABLE `tron_user_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `tron_user_score_log`
--
ALTER TABLE `tron_user_score_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `tron_version`
--
ALTER TABLE `tron_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
