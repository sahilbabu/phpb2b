<?php
/**
 * NOTE   :  PHP versions 4 and 5
 *
 * PHPB2B :  An Opensource Business To Business E-Commerce Script (http://www.phpb2b.com/)
 * Copyright 2007-2009, Ualink E-Commerce Co,. Ltd.
 *
 * Licensed under The GPL License (http://www.opensource.org/licenses/gpl-license.php)
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * @copyright Copyright 2007-2009, Ualink E-Commerce Co,. Ltd. (http://phpb2b.com)
 * @since PHPB2B v 1.0.0
 * @link http://phpb2b.com
 * @package phpb2b
 * @version $Id: upgrade3.php 84 2010-05-17 02:19:59Z cht117 $
 */
error_reporting(0);
@set_time_limit(1000);
@set_magic_quotes_runtime(0);
define('TIME', time());
define('MAGIC_QUOTES_GPC', @get_magic_quotes_gpc());
define('PHPB2B_ROOT', @dir(__FILE__));
require 'libraries/global.func.php';
require 'configs/config.inc.php';
require "libraries/db_mysql.inc.php";
require "phpb2b_version.php";
require "libraries/json_config.php";
require "libraries/pb_object.php";
require "libraries/smarty/Smarty.class.php";
require "libraries/file.class.php";
$file = new Files();
$smarty = new Smarty();
define('IN_PHPB2B',true);
if (!defined('DIRECTORY_SEPARATOR')) {
	define('DIRECTORY_SEPARATOR','/');
}
define('DS', DIRECTORY_SEPARATOR);
if (!defined('CACHE_PATH')) {
	define('CACHE_PATH', PHPB2B_ROOT."data".DS."cache".DS);
}
if(!defined('LIB_PATH')) define('LIB_PATH',PHPB2B_ROOT.'libraries'.DS);
if (isset($_GET['app_lang'])) {
	$_SESSION['lang'] = $_COOKIE['lang'] = $app_lang = $_GET['app_lang'];
}
if (isset($_SESSION['lang'])) {
	$app_lang = $_SESSION['lang'];
}
$low_version  = array("Athena 3.0", "Athena 3.1");
require "languages/".$app_lang."/template.install.inc.php";
if(file_exists(PHPB2B_ROOT.'data/upgrade.lock')) {
	die("Please delete the file data".DS."upgrade.lock and <a href='javascript:;' onclick='window.location.reload();'>refresh</a>!");
}
require("libraries/chinese.class.php");
$chinese = new Chinese($charset, "UTF-8");
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
<title>PHPB2B <?php echo PHPB2B_VERSION;?> 升级向导</title>
<link href="install/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="scripts/jquery.js"></script>
<script language="JavaScript" src="scripts/pngfix.js"></script>
<script>
jQuery(function($) {
    $("img[@src$=png], #image-one, #image-two").pngfix();
});
</script>
</head>
<body>
<div id="main">
<div id="ads">- 行业B2B电子商务网站管理系统</div>
<div id="top"><a href="http://www.phpb2b.com/" target="_blank">官方网站</a>　|　<a href="http://www.phpb2b.com/bbs/" target="_blank">官方论坛</a></div>
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
$alter_tb[0] = <<<EOT
ALTER TABLE `pb_userpages` ADD `templet_name` VARCHAR( 25 ) NOT NULL DEFAULT '' AFTER `id` ;
ALTER TABLE `pb_adses` ADD `picture_replace` VARCHAR( 255 ) NOT NULL default '';
ALTER TABLE `pb_attachments` ADD `attachmenttype_id` SMALLINT( 3 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_friendlinks` ADD `friendlinktype_id` TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_companyfields` ADD `map_longitude` VARCHAR( 25 ) NOT NULL DEFAULT '' ,ADD `map_latitude` VARCHAR( 25 ) NOT NULL DEFAULT '';
ALTER TABLE `pb_templets` ADD `require_membergroups` VARCHAR( 100 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_logs` CHANGE `mofied` `modified` INT( 10 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_adminfields` ADD `expired` INT( 10 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_settings` ADD `type_id` TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_newses` ADD `industry_id` SMALLINT( 3 ) NOT NULL DEFAULT '0',ADD `area_id` SMALLINT( 3 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_companies` ADD `topleveldomain` VARCHAR( 255 ) NOT NULL DEFAULT '';
ALTER TABLE `pb_payments` ADD `if_online_support` TINYINT( 1 ) NOT NULL DEFAULT '0';
ALTER TABLE `pb_friendlinks` ADD `industry_id` SMALLINT( 6 ) NOT NULL DEFAULT '0',ADD `area_id` SMALLINT( 6 ) NOT NULL DEFAULT '0';
DROP TABLE IF EXISTS `pb_companytypes`;
CREATE TABLE `pb_companytypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  `url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;
DROP TABLE IF EXISTS `pb_tradetypes`;
CREATE TABLE `pb_tradetypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_attachmenttypes`;
CREATE TABLE `pb_attachmenttypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;
DROP TABLE IF EXISTS `pb_friendlinktypes`;
CREATE TABLE `pb_friendlinktypes` (
  `id` tinyint(1) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;
DROP TABLE IF EXISTS `pb_dicts`;
CREATE TABLE `pb_dicts` (
  `id` int(10) NOT NULL auto_increment,
  `dicttype_id` smallint(6) NOT NULL default '0',
  `extend_dicttypeid` varchar(25) NOT NULL default '',
  `word` varchar(255) NOT NULL default '',
  `word_name` varchar(255) NOT NULL default '',
  `digest` varchar(255) NOT NULL default '',
  `content` text,
  `picture` varchar(255) NOT NULL default '',
  `refer` tinytext,
  `hits` int(10) NOT NULL default '1',
  `closed` tinyint(1) NOT NULL default '0',
  `if_commend` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_dicttypes`;
CREATE TABLE `pb_dicttypes` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `parent_id` smallint(6) NOT NULL default '0',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;
DROP TABLE IF EXISTS `pb_membercaches`;
CREATE TABLE `pb_membercaches` (
  `member_id` int(10) NOT NULL default '-1',
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) TYPE=MyISAM;
DROP TABLE IF EXISTS `pb_spacecaches`;
CREATE TABLE `pb_spacecaches` (
  `cache_spacename` varchar(255) NOT NULL default '',
  `company_id` int(10) NOT NULL default '-1',
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`company_id`)
) TYPE=MyISAM;
DROP TABLE IF EXISTS `pb_adminmodules`;
CREATE TABLE `pb_adminmodules` (
  `id` smallint(3) NOT NULL auto_increment,
  `parent_id` smallint(3) NOT NULL default '0',
  `children_ids` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `title` varchar(50) NOT NULL default '',
  `sub_title` varchar(50) NOT NULL default '',
  `is_default` tinyint(1) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '2',
  `url` varchar(50) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;
INSERT INTO `pb_navs` (`parent_id`, `name`, `description`, `url`, `target`, `status`, `display_order`, `highlight`, `level`, `class_name`, `created`, `modified`) VALUES (0, '行业词典', '行业网站专业词典', 'dict/', '_self', 1, 99, 0, 0, '', 1264596362, 1264609337);
UPDATE `pb_areas` SET available='1';
UPDATE `pb_settings` SET `type_id` = '1' WHERE `pb_settings`.`variable` ='site_description';
INSERT INTO `pb_typemodels` (`id` ,`title` ,`type_name` ) VALUES (NULL , '选项', 'common_option');
INSERT INTO `pb_typeoptions` (`id` ,`typemodel_id` ,`option_value` ,`option_label` ) VALUES (NULL , '18', '0', '否'), (NULL , '18', '1', '是');
INSERT INTO `pb_friendlinktypes` VALUES (1, '友情链接');
INSERT INTO `pb_friendlinktypes` VALUES (2, '合作伙伴');
INSERT INTO `pb_tradetypes` VALUES (1, '求购', 0);
INSERT INTO `pb_tradetypes` VALUES (2, '供应', 0);
INSERT INTO `pb_tradetypes` VALUES (3, '代理', 0);
INSERT INTO `pb_tradetypes` VALUES (4, '合作', 0);
INSERT INTO `pb_tradetypes` VALUES (5, '招商', 0);
INSERT INTO `pb_tradetypes` VALUES (6, '加盟', 0);
INSERT INTO `pb_tradetypes` VALUES (7, '批发', 0);
INSERT INTO `pb_tradetypes` VALUES (8, '库存', 0);
EOT;
$alter_tb[1] = <<<EOT
ALTER TABLE `pb_passports` ADD `available` TINYINT( 1 ) NOT NULL DEFAULT '1' AFTER `config` ;
ALTER TABLE `pb_userpages` ADD `templet_name` VARCHAR( 25 ) NOT NULL DEFAULT '' AFTER `id` ;
EOT;

switch($step)
{
	case '1':
	?>
	<form id="install" action="upgrade3.php" method="get">
		<div class="content">
		<div id="installdiv">
		  <h3>欢迎您使用PHPB2B升级程序</h3>
		  <ul>
			<li>
			<p>请选择你要升级的程序版本：
			<select name="oldversion" id="dataOldversion">
			<?php
			foreach ($low_version as $key=>$val) {
				echo "<option value='".$key."'";
				if ($val == PHPB2B_VERSION) {
					echo " selected='selected'";
				}
				echo ">".$val."</option>";
			}
			?>
			</select>至<?php echo PHPB2B_VERSION;?>
			</p>
			<p><br /><font color="yellow">在运行本升级程序之前强烈要求您对原始数据进行备份(例如用phpmyadmin)！</font></p>
			<p><br />由于本次升级会改动数据库表的一些结构，请在升级前先关闭网站，避免在升级过程中对数据库造成不必要的损害导致数据的丢失。升级成功后请到控制台更新缓存。
			  感谢您对phpb2b的关注和支持！</p>
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
		if (isset($_GET['oldversion']) && array_key_exists($_GET['oldversion'], $low_version)) {
			$query_str = $alter_tb[$_GET['oldversion']];
		}
		runquery($query_str);
		require(PHPB2B_ROOT. "libraries".DS.'adodb'.DS.'adodb.inc.php');
		require(PHPB2B_ROOT. "libraries".DS."cache.class.php");
		$cache = new Caches();
		$pdb = &NewADOConnection($database);
		$conn = $pdb->PConnect($dbhost,$dbuser,$dbpasswd,$dbname);
		if($dbcharset) {
			$pdb->Execute("SET NAMES '{$dbcharset}'");
		}
		$cache->writeCache("setting", "setting");
		$cache->writeCache("setting1", "setting1");
		$cache->writeCache("offertype","offertype");
		@touch(PHPB2B_ROOT.'./data/cache/cache_friendlinktype.php');
		@touch(PHPB2B_ROOT.'./data/cache/cache_markettype.php');
		@touch(PHPB2B_ROOT.'./data/cache/cache_offertype.php');
		@touch(PHPB2B_ROOT.'./data/cache/cache_productsort.php');
	    @touch(PHPB2B_ROOT.'./data/upgrade.lock');
		$smarty->clear_compiled_tpl();
		$file->rmDirs(PHPB2B_ROOT. "./data/templates_c".DS);
		?>
		 <div id="installmessage" style="height:50px; overflow:auto; line-height:50px; font-size:28px; font-weight:bold;  padding-left:215px;" class="content">升级成功</div>
		
		  </br> </br><p><font size='3'color='yellow'>升级成功后请删除upgrade3.php！</font></p> </br> </br>
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
	global $db, $tablepre, $dbcharset;
    $db->query("SET NAMES $dbcharset");
	$query = str_replace("\r", "\n", str_replace(' pb_', ' '.$tb_prefix, $query));
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