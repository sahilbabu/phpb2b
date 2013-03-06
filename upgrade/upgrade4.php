<?php
/**
 * PHPB2B :  Opensource B2B Script (http://www.phpb2b.com/)
 * Copyright (C) 2007-2010, Ualink. All Rights Reserved.
 * 
 * Licensed under The Languages Packages Licenses.
 * Support : phpb2b@hotmail.com
 * 
 * @version $Revision$
 */
error_reporting(0);
@set_time_limit(1000);
@set_magic_quotes_runtime(0);
define('TIME', time());
define('MAGIC_QUOTES_GPC', @get_magic_quotes_gpc());
define('PHPB2B_ROOT', @dir(__FILE__));
define('JSMIN_AS_LIB', true);
require 'libraries/global.func.php';
require 'configs/config.inc.php';
require "libraries/db_mysql.inc.php";
require "libraries/json_config.php";
require "libraries/smarty/Smarty.class.php";
require "libraries/core/object.php";
require "libraries/file.class.php";
if(file_exists("data/phpb2b_version.php")){
	require "data/phpb2b_version.php";
}
$file = new Files();
$smarty = new Smarty();
define('IN_PHPB2B',true);
if (!defined('DIRECTORY_SEPARATOR')) {
	define('DIRECTORY_SEPARATOR','/');
}
define('DS', DIRECTORY_SEPARATOR);
if(!defined('LIB_PATH')) define('LIB_PATH',PHPB2B_ROOT.'libraries'.DS);
$app_lang = 'zh-cn';
if (isset($_GET['app_lang'])) {
	$_SESSION['lang'] = $_COOKIE['lang'] = $app_lang = $_GET['app_lang'];
}
if (isset($_SESSION['lang'])) {
	$app_lang = $_SESSION['lang'];
}
require "languages/".$app_lang."/template.install.inc.php";
if (!defined('CACHE_PATH')) {
	define('CACHE_PATH', PHPB2B_ROOT."data".DS."cache".DS.$app_lang.DS);
}
if(file_exists(PHPB2B_ROOT.'./data/upgrade.lock')) {
	die("Please delete the file data".DS."upgrade.lock and <a href='javascript:;' onclick='window.location.reload();'>refresh</a>!");
}
$low_version  = array("3.3 Stable","3.3 Beta","3.2 Stable(Athena)");
extract($arrTemplate);
$db = new DB_Sql();
$db->connect($dbname,$dbhost,$dbuser,$dbpasswd);
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
<div id="top"><a href="http://www.phpb2b.com/" target="_blank">官方网站</a>　|　<a href="http://www.phpb2b.com/bbs/" target="_blank">官方论坛</a></div>
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
DROP TABLE IF EXISTS `pb_jobtypes`;
CREATE TABLE `pb_jobtypes` (
  `id` smallint(6) NOT NULL auto_increment,
  `parent_id` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM  AUTO_INCREMENT=375 ;
DROP TABLE IF EXISTS `pb_albumtypes`;
CREATE TABLE `pb_albumtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_brands`;
CREATE TABLE `pb_brands` (
  `id` smallint(6) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `type_id` smallint(3) NOT NULL default '0',
  `if_commend` tinyint(1) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `alias_name` varchar(100) NOT NULL default '',
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `hits` smallint(6) NOT NULL default '0',
  `ranks` smallint(3) NOT NULL default '0',
  `letter` varchar(2) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_brandtypes`;
CREATE TABLE `pb_brandtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `parent_id` smallint(3) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_companynewstypes`;
CREATE TABLE `pb_companynewstypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_feeds`;
CREATE TABLE `pb_feeds` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL default '0',
  `type` varchar(100) NOT NULL default '',
  `member_id` int(10) NOT NULL default '0',
  `username` varchar(100) NOT NULL default '',
  `data` text NOT NULL,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_markettypes`;
CREATE TABLE `pb_markettypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_productcategories`;
CREATE TABLE `pb_productcategories` (
  `id` smallint(6) NOT NULL auto_increment,
  `parent_id` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_productprices`;
CREATE TABLE `pb_productprices` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL default '1',
  `product_id` int(10) NOT NULL default '-1',
  `brand_id` smallint(6) NOT NULL default '-1',
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `area_id` smallint(6) NOT NULL default '0',
  `price_trends` tinyint(1) NOT NULL default '0',
  `category_id` smallint(6) NOT NULL default '0',
  `source` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `units` tinyint(1) NOT NULL default '1',
  `currency` tinyint(1) NOT NULL default '1',
  `price` float(9,2) NOT NULL default '0.00',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_productsorts`;
CREATE TABLE `pb_productsorts` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_quotes`;
CREATE TABLE `pb_quotes` (
  `id` smallint(6) NOT NULL auto_increment,
  `product_id` int(10) NOT NULL default '-1',
  `market_id` smallint(6) NOT NULL default '-1',
  `type_id` smallint(6) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `area_id` smallint(6) NOT NULL default '0',
  `area_id1` smallint(6) NOT NULL default '0',
  `area_id2` smallint(6) NOT NULL default '0',
  `area_id3` smallint(6) NOT NULL default '0',
  `max_price` float(9,2) NOT NULL default '0.00',
  `min_price` float(9,2) NOT NULL default '0.00',
  `currency` tinyint(1) NOT NULL default '0',
  `units` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_quotetypes`;
CREATE TABLE `pb_quotetypes` (
  `id` smallint(6) NOT NULL auto_increment,
  `parent_id` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
ALTER TABLE `pb_announcements` ADD `display_expiration` INT( 10 ) NOT NULL DEFAULT '0' AFTER `display_order` ;
ALTER TABLE `pb_tags` ADD `flag` TINYINT( 1 ) NOT NULL DEFAULT '0' AFTER `closed` ;
ALTER TABLE `pb_companynewses` ADD `type_id` SMALLINT( 3 ) NOT NULL DEFAULT '0' AFTER `company_id` ;
ALTER TABLE `pb_products` ADD `brand_id` SMALLINT( 6 ) NOT NULL DEFAULT '0' AFTER `sort_id` ;
ALTER TABLE `pb_tradetypes` ADD `level` TINYINT( 1 ) NOT NULL DEFAULT '1',
ADD `parent_id` SMALLINT( 3 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_newses` ADD `type` TINYINT( 1 ) NOT NULL DEFAULT '0',
ADD `flag` TINYINT( 1 ) NOT NULL DEFAULT '0';
RENAME TABLE `pb_ipbanned` TO `pb_banned` ;
ALTER TABLE `pb_banned` ADD `created` INT( 10 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_adzones` ADD `membergroup_ids` VARCHAR( 50 ) NOT NULL ;
ALTER TABLE `pb_adzones` ADD `style` TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_services` ADD `modified` INT( 10 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_trades` ADD `display_order` TINYINT( 1 ) NOT NULL DEFAULT '0',
ADD `display_expiration` INT( 10 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_memberfields` ADD `skype` VARCHAR( 50 ) NOT NULL AFTER `yahoo` ;
ALTER TABLE `pb_announcementtypes` CHANGE `title` `name` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `pb_trades` ADD `cache_contacts` VARCHAR( 255 ) NOT NULL ;
INSERT INTO `pb_typemodels` (`id`, `title`, `type_name`) VALUES (19, '尊称', 'calls');
INSERT INTO `pb_typemodels` (`id`, `title`, `type_name`) VALUES (20, '计量单位', 'measuring');
INSERT INTO `pb_typemodels` (`id`, `title`, `type_name`) VALUES (21, '货币单位', 'monetary');
INSERT INTO `pb_typemodels` (`id`, `title`, `type_name`) VALUES (22, '报价类型', 'price_type');
INSERT INTO `pb_typemodels` (`id`, `title`, `type_name`) VALUES (23, '价格趋势', 'price_trends');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (118, 19, '1', '先生');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (119, 19, '2', '女士');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (120, 20, '1', '个');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (121, 20, '2', '件');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (122, 21, '1', '元');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (123, 21, '2', '美元');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (124, 22, '1', '买');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (125, 22, '2', '卖');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (126, 23, '1', '升');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (127, 23, '2', '稳');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (128, 23, '3', '降');
INSERT INTO `pb_typeoptions` (`id`, `typemodel_id`, `option_value`, `option_label`) VALUES (129, 23, '4', '不确定');
EOT;
$alter_tb[0] = <<<EOT
EOT;
$alter_tb[1] = <<<EOT
ALTER TABLE `pb_brands` ADD `created` int(10) NOT NULL DEFAULT '0' , ADD `modified` int(10) NOT NULL DEFAULT '0' ;
EOT;
$alter_public = <<<EOT
DROP TABLE IF EXISTS `pb_standards`;
CREATE TABLE `pb_standards` (
  `id` smallint(6) NOT NULL auto_increment,
  `attachment_id` smallint(6) NOT NULL default '0',
  `type_id` smallint(6) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `source` varchar(255) NOT NULL,
  `digest` varchar(255) NOT NULL default '' ,
  `content` text NOT NULL,
  `publish_time` int(10) NOT NULL default '0',
  `force_time` int(10) NOT NULL default '0',
  `clicked` smallint(6) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_standardtypes`;
CREATE TABLE `pb_standardtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
ALTER TABLE `pb_templets` ADD `style` VARCHAR( 25 ) NOT NULL AFTER `is_default` ;
ALTER TABLE `pb_products` ADD `category_id` SMALLINT(6) NOT NULL DEFAULT '0' ;
ALTER TABLE `pb_albums` ADD `type_id` SMALLINT(3) NOT NULL DEFAULT '0' ;
ALTER TABLE `pb_adminfields` ADD `permissions` TEXT NOT NULL ;
INSERT INTO `pb_trusttypes` (`id`, `name`, `description`, `image`, `display_order`, `status`) VALUES 
(2, '企业资质认证', NULL, 'company.gif', 0, 1),
(1, '实名认证', NULL, 'truename.gif', 0, 1);
INSERT INTO `pb_userpages` (`templet_name`, `name`, `title`, `digest`, `content`, `url`, `display_order`, `created`, `modified`) VALUES ('', 'special', '分站专题', '', '行业或者地区分站', 'special/', 0, unix_timestamp(), unix_timestamp());
EOT;
switch($step)
{
	case '1':
if(defined("PHPB2B_VERSION")){
$last_version = PHPB2B_VERSION;
}else{
	$last_version = "3.4";
}
	?>
	<form id="install" action="upgrade4.php" method="get">
		<div class="content">
		<div id="installdiv">
		  <h3>欢迎您使用<?php echo $_software_name ; ?>升级程序</h3>
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
			<p><br /><font color="yellow">在运行本升级程序之前强烈要求您对原始数据进行备份(例如用phpMyAdmin)！</font></p>
			<p><br />由于本次升级会改动数据库表的一些结构，请在升级前先关闭网站，避免在升级过程中对数据库造成不必要的损害导致数据的丢失。升级成功后请到控制台更新缓存。
			  感谢您对<?php echo $_software_name ; ?>的关注和支持！</p>
	</li>
		  </ul>
		</div>
		<br />
		<input type="button" class="btn" onClick="$('#install').submit();" value="我明白了 开始升级" title="点击开始升级" />
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
		$cache->cacheAll();
	    @touch(PHPB2B_ROOT.'./data/upgrade.lock');
		$smarty->clear_compiled_tpl();
		$file->rmDirs(PHPB2B_ROOT. "./data/templates_c".DS);
		if(file_exists(PHPB2B_ROOT. "./data/dbcache".DS)){
         $file->rmDirs(PHPB2B_ROOT. "./data/dbcache".DS);
		}
		?>
		 <div id="installmessage" style="height:50px; overflow:auto; line-height:50px; font-size:28px; font-weight:bold;  padding-left:215px;" class="content">升级成功</div>
		
		  </br> </br><p><font size='3'color='yellow'>升级成功后请删除upgrade4.php！</font></p> </br> </br>
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
?>