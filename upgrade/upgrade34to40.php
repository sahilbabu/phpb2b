<?php
/**
 *      [PHPB2B] Copyright (C) 2007-2099, Ualink Inc. All Rights Reserved.
 *      The contents of this file are subject to the License; you may not use this file except in compliance with the License. 
 *
 *      @version $Revision: 2048 $
 */
session_start();
error_reporting(E_ERROR);
@set_time_limit(1000);
@set_magic_quotes_runtime(0);
@ini_set('magic_quotes_sybase', 0);
if (isset($_GET['act'])) {
	if($_GET['act'] == "phpinfo"){
		die(phpinfo());
	}
}
define('TIME', time());
define('MAGIC_QUOTES_GPC', get_magic_quotes_gpc());
define('PHPB2B_ROOT', @dir(__FILE__));
define('JSMIN_AS_LIB', true); // prevents auto-run on include
require 'data/phpb2b_version.php';
require 'configs/config.inc.php';
define('IN_PHPB2B',true);
if (!defined('DIRECTORY_SEPARATOR')) {
	define('DIRECTORY_SEPARATOR','/');
}
define('DS', DIRECTORY_SEPARATOR);
if(!defined('LIB_PATH')) define('LIB_PATH',PHPB2B_ROOT.'libraries'.DS);
require 'libraries/global.func.php';
require "libraries/db_mysql.inc.php";
require "libraries/json_config.php";
require "libraries/core/object.php";
require "libraries/smarty/Smarty.class.php";
require "libraries/core/controller.php";
require "libraries/file.class.php";
require("libraries/error.class.php");
$app_lang = 'zh-cn';
if (!empty($_GET['app_lang']) && file_exists(PHPB2B_ROOT. 'languages'.DS.$_GET['app_lang'].DS."default.dot")) {
	$app_lang = $_GET['app_lang'];
}
if (!defined('CACHE_PATH')) {
	define('CACHE_PATH', PHPB2B_ROOT."data".DS."cache".DS.$app_lang.DS);
	define('CACHE_LANG_PATH', PHPB2B_ROOT."data".DS."cache".DS.$app_lang.DS);
}
//language
$params = array('file'=>'default.dot','section'=>'install', 'scope' => 'global');
$_file = isset($params['file']) ? dequote($params['file']) : null;
$_section = isset($params['section']) ? dequote($params['section']) : null;
$config_dir = PHPB2B_ROOT. 'languages'.DS. $app_lang.DS;
require_once PHPB2B_ROOT.'libraries/language.class.php';
$smarty->_conf_obj = new ConfigFile($config_dir);
$_params['source_content'] = '';
$smarty->_conf_obj->set_file_contents($_file, $_params['source_content']);
$arrTemplate = array_merge($smarty->_conf_obj->get($_file),
$smarty->_conf_obj->get($_file, $_section));
extract($arrTemplate);
//:~
$db = new DB_Sql();
$db->connect($dbname,$dbhost,$dbuser,$dbpasswd);
$file_cls = new Files();
$smarty = new Smarty();
$pb_protocol = 'http';
if ( isset( $_SERVER['HTTPS'] ) && ( strtolower( $_SERVER['HTTPS'] ) != 'off' ) ) {
	$pb_protocol = 'https';
}
$PHP_SELF = isset($_SERVER['SCRIPT_NAME']) ? $_SERVER['SCRIPT_NAME'] : preg_replace("/(.*)\.php(.*)/i", "\\1.php", $_SERVER['PHP_SELF']);
$BASESCRIPT = basename($PHP_SELF);
list($BASEFILENAME) = explode('.', $BASESCRIPT);
$install_url = htmlspecialchars($pb_protocol."://".pb_getenv('HTTP_HOST').preg_replace("/\/+(api|wap)?\/*$/i", '', substr($PHP_SELF, 0, strrpos($PHP_SELF, '/'))).'/');
$siteUrl = substr($install_url,0,-(strlen($BASEFILENAME)+1));
$time_stamp = TIME;
if($_REQUEST)
{
	if(!MAGIC_QUOTES_GPC)
	{
		$_REQUEST = pb_addslashes($_REQUEST);
		if($_COOKIE) $_COOKIE = pb_addslashes($_COOKIE);
	}
	extract($_REQUEST, EXTR_SKIP);
}
if(!isset($_GET['step'])) {
	$step = '1';
}else{
	$step = intval($_GET['step']);
}
if(file_exists(PHPB2B_ROOT.'./data/upgrade.lock')) {
	die("Please delete the file data".DS."upgrade.lock and <a href='javascript:;' onclick='window.location.reload();'>refresh</a>!");
}
$low_version  = array("3.4","3.3 Stable","3.3 Beta");
$license_file_name = "LICENSE.txt";
if (!file_exists(PHPB2B_ROOT.$license_file_name)) {
	$msg = L("license_not_exists");
	Errors::showError($msg);
	exit;
}
$backupdir = pb_radom(6);
$db_error = false;
if(!isset($_GET['step'])) {
	$step = '1';
}else{
	$step = intval($_GET['step']);
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $charset;?>">
<title> <?php echo $_software_name ; ?> 升级向导</title>
<link href="install/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="scripts/jquery.js"></script>
<script>
jQuery(function($) {
    $("img[@src$=png], #image-one, #image-two").pngfix();
});
</script>
</head>
<body>
<div id="main">
<div id="ads">- <?php echo $_software_name?>行业电子商务网站管理系统</div>
<div id="top"><a href="http://www.phpb2b.com/" target="_blank">官方网站</a>　|　<a href="http://www.phpb2b.com/forum-and-community" target="_blank">官方论坛</a></div>
<div id="step-title">升级步骤</div>
  <div id="left">
    <ul>
	<?php
	 $steps = array(
    '1'=>'升级须知',
    '2'=>'升级完成'
     );
	foreach($steps as $k=>$v)
	{
		$selected = $k == $step ? 'id="now"' : '';
	    echo "<li {$selected}>{$v}</li>";
	}
	?>
    </ul>
  </div>
  <div id="right">
    <h3><span><?php echo $step;?></span><?php echo $steps[$step];?></h3>
<?php
$alter_tb[2] = <<<EOT
ALTER TABLE `pb_brands` ADD `created` int(10) NOT NULL DEFAULT '0' , ADD `modified` int(10) NOT NULL DEFAULT '0' ;
EOT;
$alter_tb[1] = <<<EOT
EOT;
$alter_tb[0] = <<<EOT
EOT;
$alter_public = <<<EOT
ALTER TABLE `pb_companytypes` CHANGE `display_order` `display_order` TINYINT( 1 ) NOT NULL DEFAULT '0',
CHANGE `url` `url` VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '';
ALTER TABLE `pb_topics` ADD `alias_name` VARCHAR( 100 ) NOT NULL DEFAULT '' AFTER `description` ,
ADD `templet` VARCHAR( 50 ) NOT NULL DEFAULT '' AFTER `alias_name` ;

ALTER TABLE `pb_ordergoods` CHANGE `order_id` `order_id` INT( 10 ) UNSIGNED ZEROFILL NOT NULL DEFAULT '000000';

ALTER TABLE `pb_ordergoods` ADD `trade_no` CHAR( 16 ) NOT NULL DEFAULT '' AFTER `order_id`;

ALTER TABLE `pb_spreads` ADD `keyword_name` VARCHAR( 25 ) NOT NULL DEFAULT '',
ADD `title` VARCHAR( 50 ) NOT NULL DEFAULT '' ,
ADD `content` VARCHAR( 200 ) NOT NULL AFTER `title` ,
ADD `target_url` VARCHAR( 100 ) NOT NULL DEFAULT '' ,
ADD `hits` INT( 10 ) NOT NULL DEFAULT '1' ,
ADD `created` INT(10) NOT NULL DEFAULT '0',
ADD `status` TINYINT( 1 ) NOT NULL DEFAULT '0' ;

ALTER TABLE `pb_spreads` CHANGE `keyword_id` `id` INT( 10 ) NOT NULL AUTO_INCREMENT;
ALTER TABLE `pb_spreads` ADD `created` INT( 10 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_spreads` ADD `member_id` INT( 10 ) NOT NULL DEFAULT '-1';

ALTER TABLE `pb_trades` ADD `industry_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `id` ,
ADD `highlight` TINYINT( 2 ) NOT NULL DEFAULT '0' ,
ADD `adwords` VARCHAR( 25 ) NOT NULL DEFAULT '' ,
ADD `country_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' ,
ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0';

ALTER TABLE `pb_companies` ADD `industry_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `id` ,
ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0',
ADD `main_product` VARCHAR( 100 ) NOT NULL DEFAULT '',
ADD `adwords` VARCHAR( 25 ) NOT NULL DEFAULT '';

ALTER TABLE `pb_members` ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `id`;
ALTER TABLE `pb_memberfields` ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_markets` ADD `industry_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `id` ,
ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `industry_id` ,
ADD `main_business` VARCHAR( 255 ) NOT NULL DEFAULT '' AFTER `area_id` ,
ADD `markettype_id` SMALLINT( 3 ) NOT NULL DEFAULT '0' AFTER `main_business`;

ALTER TABLE `pb_products` ADD `country_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `id` ,
ADD `industry_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `country_id` ,
ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `industry_id`;

ALTER TABLE `pb_jobs` ADD `industry_id` SMALLINT( 6 ) NOT NULL DEFAULT '0',
ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0';

RENAME TABLE `pb_expoes` TO `pb_expos` ;

ALTER TABLE `pb_expos` ADD `industry_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `id` ,
ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `industry_id` ;

ALTER TABLE `pb_quotes` ADD `trend_data` TEXT NOT NULL,
ADD `hits` INT( 10 ) NOT NULL DEFAULT '1' AFTER `trend_data` ;

ALTER TABLE `pb_orders` ADD `pay_id` SMALLINT( 3 ) NOT NULL DEFAULT '0',
ADD `pay_name` VARCHAR( 25 ) NOT NULL DEFAULT '',
ADD `subject` VARCHAR( 100 ) NOT NULL DEFAULT '',
ADD `trade_no` CHAR( 16 ) NOT NULL DEFAULT '',
ADD `pay_status` TINYINT( 1 ) NOT NULL DEFAULT '0';

ALTER TABLE `pb_ordergoods` CHANGE `goods_id` `good_id` SMALLINT( 6 ) NOT NULL DEFAULT '0';

ALTER TABLE `pb_goods` ADD `type_id` SMALLINT( 3 ) NOT NULL DEFAULT '0' AFTER `id` ;

ALTER TABLE `pb_tradefields` ADD `brand_name` VARCHAR( 50 ) NOT NULL DEFAULT '',
ADD `template` VARCHAR( 255 ) NOT NULL DEFAULT '';

CREATE TABLE IF NOT EXISTS `pb_countries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `picture` varchar(100) NOT NULL DEFAULT '0',
  `display_order` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) TYPE=MyISAM ;

CREATE TABLE IF NOT EXISTS `pb_goodtypes` (
  `id` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `display_order` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) TYPE=MyISAM ;

CREATE TABLE IF NOT EXISTS `pb_payhistories` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `member_id` int(9) NOT NULL DEFAULT '-1',
  `trade_no` char(25) NOT NULL DEFAULT '-1' ,
  `amount` float(7,2) NOT NULL DEFAULT '0.00' ,
  `remain` float(7,2) NOT NULL DEFAULT '0.00' ,
  `ip_address` varchar(15) NOT NULL DEFAULT '1',
  `created` int(10) NOT NULL DEFAULT '0',
  `modified` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `one_trade_no` (`trade_no`)
) TYPE=MyISAM ;

UPDATE pb_trades SET industry_id = industry_id1;

ALTER TABLE `pb_trades` ADD `tmp_type_id` TINYINT( 2 ) NOT NULL DEFAULT '0' AFTER `id`;

UPDATE pb_trades SET tmp_type_id=1 WHERE type_id='1';
UPDATE pb_trades SET tmp_type_id=2 WHERE type_id='2';
UPDATE pb_trades SET tmp_type_id=3 WHERE type_id='3';
UPDATE pb_trades SET tmp_type_id=4 WHERE type_id='4';
UPDATE pb_trades SET tmp_type_id=5 WHERE type_id='5';
UPDATE pb_trades SET tmp_type_id=6 WHERE type_id='6';
UPDATE pb_trades SET tmp_type_id=7 WHERE type_id='7';
UPDATE pb_trades SET tmp_type_id=8 WHERE type_id='8';
UPDATE pb_trades SET tmp_type_id=9 WHERE type_id='9';
UPDATE pb_trades SET tmp_type_id=10 WHERE type_id='10';
ALTER TABLE `pb_trades` CHANGE `type_id` `old_type_id` ENUM( '8', '7', '6', '5', '4', '3', '2', '1' ) NOT NULL DEFAULT '1';
ALTER TABLE `pb_trades` CHANGE `tmp_type_id` `type_id` TINYINT( 2 ) NOT NULL DEFAULT '0';
EOT;
switch($step)
{
	case '1':
if(defined("PHPB2B_VERSION")){
$last_version = PHPB2B_VERSION;
}else{
	$last_version = "4.0";
}
	?>
	<form id="install" action="<?php echo pb_getenv('PHP_SELF');?>" method="get">
		<div class="content">
		<div id="installdiv">
		  <h3>欢迎您使用<?php echo $_software_name ; ?>升级程序，本程序支持从<?php echo implode(",", $low_version);?>升级到4.0</h3>
		  <ul>
            <li>
			<p>请选择你要升级的程序版本：
			<select name="oldversion" id="dataOldversion">
			<?php
			foreach ($low_version as $key=>$val) {
				echo "<option value='".$key."'";
				if ($val == $last_version) {
					echo " selected='selected'";
				}
				echo ">".$val."</option>";
			}
			?>
			</select>至<?php echo $last_version;?>
			</p>
			<p><br /><font color="yellow">尽管本系统在升级时不会破坏你原有的数据，但是我们强烈建议在运行本升级程序之前用其他工具对原始数据进行备份(例如用phpMyAdmin)！</font></p>
			<p><br />由于本次升级会改动数据库表的一些结构，请在升级前先关闭网站，避免在升级过程中对数据库造成不必要的损害导致数据的丢失。升级成功后请到控制台更新缓存。
			  感谢您对<?php echo $_software_name ; ?>的关注和支持！</p>
	</li>
		  </ul>
		</div>
		<br />
		<input type="button" class="btn" onClick="$(this).attr('disabled',true);$('#install').submit();" value="我明白了 开始升级" title="点击开始升级" />
	</div>
	<input type="hidden" name="step" value="2">
	</form>
  </div>
</div>
</body>
</html>
<?php
	break;
	case '2':
		runquery($alter_public);
		if (isset($_GET['oldversion']) && array_key_exists($_GET['oldversion'], $low_version)) {
			$query_str = $alter_tb[$_GET['oldversion']];
			runquery($query_str);
		}
		require(PHPB2B_ROOT. "libraries".DS.'adodb'.DS.'adodb.inc.php');
		require(PHPB2B_ROOT. "libraries".DS."cache.class.php");
		$cache = new Caches();
		$pdb = &NewADOConnection($database);
		$conn = $pdb->PConnect($dbhost,$dbuser,$dbpasswd,$dbname);
		if($dbcharset) {
			$pdb->Execute("SET NAMES '{$dbcharset}'");
		}
		$cache->writeCache("industry", "industry");
		$cache->writeCache("area", "area");
		$cache->writeCache("membergroup", "membergroup");
		$cache->writeCache("userpage", "userpage");
		$cache->writeCache("trusttype", "trusttype");
		$cache->writeCache("form", "form");
		$cache->writeCache("nav", "nav");
		$cache->writeCache("country", "country");
		$cache->updateTypevars();
		$cache->updateLanguages();
		$cache->updateTypes();
		$cache->updateIndexCache();
	    @touch(PHPB2B_ROOT.'./data/upgrade.lock');
		$smarty->clear_compiled_tpl();
		$file_cls->rmDirs(PHPB2B_ROOT. "./data/templates_c".DS);
		if(file_exists(PHPB2B_ROOT. "./data/dbcache".DS)){
			$file_cls->rmDirs(PHPB2B_ROOT. "./data/dbcache".DS);
		}
		?>
		 <div id="installmessage" style="height:50px; overflow:auto; line-height:50px; font-size:28px; font-weight:bold;  padding-left:215px;" class="content">升级成功</div>
		
		  </br> </br><p><font size='3'color='yellow'>升级成功后请删除<?php echo pb_getenv("PHP_SELF");?>！</font></p> </br> </br>
		<p>网站前台：<a href="<?php echo $absolute_uri;?>" target="_blank"><?php echo $absolute_uri;?></a></p>
		<p>登录商务室：<a href="<?php echo $absolute_uri;?>logging.php" target="_blank"><?php echo $absolute_uri;?>logging.php</a></p>
		<p>进入控制台：<a href="<?php echo $absolute_uri;?>pb-admin/login.php" target="_blank"><?php echo $absolute_uri;?>pb-admin/login.php</a></p>
	
		</div>
		</div>
		</body>
		</html>
		<?php
		break;
 }
 function runquery($query) {
	global $db, $tablepre, $tb_prefix, $dbcharset;
    $db->query("SET NAMES $dbcharset");
	$query = str_replace("\r", "\n", str_replace('pb_', $tb_prefix, $query));
	$expquery = explode(";\n", $query);
	foreach($expquery as $sql) {
		$sql = trim($sql);
		if($sql == '') continue;
		if(strtoupper(substr($sql, 0, 12)) == 'CREATE TABLE') {
			$db->query(createtable($sql, $dbcharset));
		} else {
			$db->query($sql);
		}
	}
}
function createtable($sql, $dbcharset) {
	$type = strtoupper(preg_replace("/^\s*CREATE TABLE\s+.+\s+\(.+?\).*(ENGINE|TYPE)\s*=\s*([a-z]+?).*$/isU", "\\2", $sql));
	$type = in_array($type, array('MYISAM', 'HEAP')) ? $type : 'MYISAM';
	return preg_replace("/^\s*(CREATE TABLE\s+.+\s+\(.+?\)).*$/isU", "\\1", $sql).
	(mysql_get_server_info() > '4.1' ? " ENGINE=$type default CHARSET=$dbcharset" : " TYPE=$type");
}

function config_edit($configs) {
	global $dbcharset, $app_lang;
	if (!is_array($configs)) {
		return;
	}
	extract($configs);
	$configfile = PHPB2B_ROOT. 'configs'.DS.'config.inc.php';
	$configfiles = file_get_contents($configfile);
	$configfiles = trim($configfiles);
	$configfiles = preg_replace("/[$]dbhost\s*\=\s*[\"'].*?[\"'];/is", "\$dbhost = '$dbhost';", $configfiles);
	$configfiles = preg_replace("/[$]app_lang\s*\=\s*[\"'].*?[\"'];/is", "\$app_lang = '$app_lang';", $configfiles);
	$configfiles = preg_replace("/[$]dbuser\s*\=\s*[\"'].*?[\"'];/is", "\$dbuser = '$dbuser';", $configfiles);
	$configfiles = preg_replace("/[$]dbpasswd\s*\=\s*[\"'].*?[\"'];/is", "\$dbpasswd = '$dbpasswd';", $configfiles);
	$configfiles = preg_replace("/[$]dbname\s*\=\s*[\"'].*?[\"'];/is", "\$dbname = '$dbname';", $configfiles);
	$configfiles = preg_replace("/[$]admin_email\s*\=\s*[\"'].*?[\"'];/is", "\$admin_email = '$admin_email';", $configfiles);
	$configfiles = preg_replace("/[$]tb_prefix\s*\=\s*[\"'].*?[\"'];/is", "\$tb_prefix = '$tb_prefix';", $configfiles);
	$configfiles = preg_replace("/[$]cookiepre\s*\=\s*[\"'].*?[\"'];/is", "\$cookiepre = '".pb_radom(3)."_';", $configfiles);
	$configfiles = preg_replace("/[$]absolute_uri\s*\=\s*[\"'].*?[\"'];/is", "\$absolute_uri = '".$absolute_uri."';", $configfiles);
	if(file_put_contents($configfile, $configfiles)){
		return true;
	}else{
		return false;
	}
}
function dir_copy($source, $destination, $child){
     if(!is_dir($destination)){  
     	mkdir($destination,0777);  
     }  
     $handle=dir($source);  
     while($entry=$handle->read()) {  
         if(!in_array($entry, array('.', '..', '.svn'))){  
             if(is_dir($source."/".$entry)){  
                 if($child)    {
                 	dir_copy($source."/".$entry,$destination."/".$entry,$child);  
                 }
             }else{  
                 copy($source."/".$entry,$destination."/".$entry);  
             }  
         }  
     }
     return true;  
}
function showLanguages()
{
	global $app_lang;
	$return = array();
	$path = '../languages/';
	$handle = opendir($path);
	$setting_controller = new PbController();
	while(false !== $file=(readdir($handle))){
		$dir = $path.$file;
		if(is_dir($dir) && !in_array($file, array('.', '..', '.svn'))){
			$tmp = "<option value='".$file."'";
			if($app_lang==$file) {
				$tmp.=" selected='selected'";
			}elseif ($_GET['app_lang'] == $file){
				$tmp.=" selected='selected'";
			}
			$templet_file = PHPB2B_ROOT."languages/".$file."/default.dot";
			$data = $setting_controller->getSkinData($templet_file);
			$tmp.=">".$data['Name']."</option>";
			$return[] = $tmp;
		}
	}
	if (!empty($return)) {
		return implode("\r\n", $return);
	}else{
		return false;
	}
	closedir($handle);
}
function dequote($string)
{
	if ((substr($string, 0, 1) == "'" || substr($string, 0, 1) == '"') &&
	substr($string, -1) == substr($string, 0, 1))
	return substr($string, 1, -1);
	else
	return $string;
}
?>