<?php
/**
 *      [PHPB2B] Copyright (C) 2007-2099, Ualink Inc. All Rights Reserved.
 *      The contents of this file are subject to the License; you may not use this file except in compliance with the License. 
 *
 *      @version $Revision: 2148 $
 */
define('IN_PHPB2B', TRUE);
define('PHPB2B_ROOT', substr(dirname(__FILE__), 0, -9));
define('MAGIC_QUOTES_GPC', function_exists("get_magic_quotes_gpc") && get_magic_quotes_gpc());
if (!defined('DIRECTORY_SEPARATOR')) {
	define('DIRECTORY_SEPARATOR','/');
}
define('DS', DIRECTORY_SEPARATOR);
require(PHPB2B_ROOT. 'configs'.DS.'config.inc.php');
if($app_lang == "en") $app_lang = "en-us";//for older version
/**
 * PHPB2B Debug Level
 * Myabe 0-5
 */
if(!isset($debug)) $debug = 0;
require(PHPB2B_ROOT. 'libraries'.DS.'global.func.php');
require(PHPB2B_ROOT. 'configs'.DS.'paths.php');
list($accept_language) = explode(",", $_SERVER['HTTP_ACCEPT_LANGUAGE']);
//$accept_languages = unserialize($_PB_CACHE['setting']['languages']);
if(is_file(CACHE_ROOT.strtolower($accept_language).DS."lang_site.php")) $app_lang = strtolower($accept_language);
if (isset($_COOKIE[$cookiepre.'lang'])) {
	$app_lang = $_COOKIE[$cookiepre.'lang'];
}
if (isset($_GET['app_lang'])) {
	$app_lang = $_GET['app_lang'];
}
define('CACHE_COMMON_PATH', PHPB2B_ROOT."data".DS."cache".DS);
define('CACHE_PATH', PHPB2B_ROOT."data".DS."cache".DS.$app_lang.DS);
define('CACHE_LANG_PATH', PHPB2B_ROOT."data".DS."cache".DS.$app_lang.DS);
$msg = $show_ajax = null;
if (!defined("LOCALE_PATH")) {
	define("LOCALE_PATH", PHPB2B_ROOT.'languages'.DS.$app_lang.DS);
}
$php_self = pb_getenv('PHP_SELF');
$base_script = basename($php_self);
list($basefilename) = explode('.', $base_script);
define('WEBROOT_DIR', basename(dirname(dirname(__FILE__))));
if(!defined('URL')) {
	$s = null;
	if (pb_getenv('HTTPS')) {
		$s ='s';
	}
	$hosts = 'http'.$s.'://'.pb_getenv('HTTP_HOST');
	$site_url = htmlspecialchars($hosts.preg_replace("/\/+(api|app)?\/*$/i", '', substr($php_self, 0, strrpos($php_self, '/'))).'/');
	if(WEBROOT_DIR!="www" && strpos($site_url, "/".WEBROOT_DIR)){
		$site_url = substr($site_url, 0, strpos($site_url, WEBROOT_DIR)+strlen(WEBROOT_DIR))."/";
	}else{
		$site_url = $hosts."/";
	}
	define('URL', $site_url);	
}
$time_start = getmicrotime();
$time_stamp = time();
require(SOURCE_PATH. 'adodb'.DS.'adodb.inc.php');
$pdb = ADONewConnection($database);
require(LIB_PATH. 'template.class.php');
$smarty = new TemplateEngines();
$includes = array(
	LIB_PATH. 'logger.class.php',
	LIB_PATH. 'core/object.php',
	LIB_PATH. 'core/model.php',
	LIB_PATH. 'core/controller.php',
	LIB_PATH. 'core/view.php',
);
foreach ($includes as $inc) {
	if (!file_exists($inc)) {
		trigger_error(sprintf(L("file_not_exists", "msg", $inc)));
	}else{
		require($inc);
	}
}
$log = new Logger();
$connected = $pdb->Connect($dbhost,$dbuser,$dbpasswd,$dbname);
if(!$connected or empty($connected)) {
	$msg = L("db_conn_error", 'msg', $pdb->ErrorMsg());
	$msg.= "<br />".L("db_conn_error_no", 'msg', $pdb->ErrorNo());
	if (!file_exists(DATA_PATH. "install.lock")) {
		$msg.="<br /><a href='".URL."install/install.php'>".L("please_reinstall_program", "msg")."</a>";
	}
	require(LIB_PATH. "error.class.php");
	Errors::showError($msg, 'db');
	exit;
}
if($dbcharset && mysql_get_server_info() > '4.1') {
	$pdb->Execute("SET NAMES '{$dbcharset}'");
}
//caches check
if (!file_exists(CACHE_COMMON_PATH. "cache_setting.php") || !file_exists(CACHE_LANG_PATH. "lang_site.php")) {
	require(LIB_PATH. "cache.class.php");
	$cache = new Caches();
	if($cache->cacheAll()){
		$msg.="<a href='".pb_getenv('REQUEST_URI')."'>Cached successfully, please refresh.</a>";
		header_sent($msg);
		exit;
	}
}
$cachelost = (include CACHE_COMMON_PATH. 'cache_setting.php') ? '' : 'settings';
$phpb2b_auth_key = $_PB_CACHE['setting']['auth_key'];
if($headercharset) {
    @header('Content-Type: text/html; charset='.$charset);
}

//STATIC_CHECK, IF DON'T NEED, YOU CAN DELETE ME.
//Todo:ARCHIVER
$path_parts = pathinfo($php_self);
$dir_name = PHPB2B_ROOT.'archiver'.$path_parts['dirname'].DS;
if (isset($cache_archiver)){
	if(isset($htmlize) && !empty($_PB_CACHE['setting']['main_cache'])) {
		$default_html_filename = $dir_name.basename(pb_getenv('PHP_SELF'), ".php").'-'.md5(pb_getenv('REQUEST_URI')).'.htm';
		$show_ajax = true;
		if ($_PB_CACHE['setting']['main_cache_lifetime']>0) {
			//if not the office member and adminer,make the static html page.
			if (! file_exists ( $default_html_filename )) {
				$re_create_file = true;
			} else {
				$time_sep = time () - @filemtime ( $default_html_filename );
				if ($time_sep < $_PB_CACHE ['setting'] ['main_cache_lifetime']) {
					$contents = file_get_contents ( $default_html_filename );
					echo $contents;
					exit ();
				}
			}
		}
	}
}
//END static check
//timezone
if (isset($_PB_CACHE['setting']['time_offset'])){
	$time_offset = trim($_PB_CACHE['setting']['time_offset']);
	$date_format = isset($_PB_CACHE['setting']['date_format'])?$_PB_CACHE['setting']['date_format']:"Y-m-d";
	$time_now = array('time' => gmdate("{$date_format} H:i", $time_stamp + 3600 * $time_offset),
		'offset' => ($time_offset >= 0 ? ($time_offset == 0 ? '' : '+'.$time_offset) : $time_offset));
	if(PHP_VERSION > '5.1') {
		@date_default_timezone_set('Etc/GMT'.($time_offset > 0 ? '-' : '+').(abs($time_offset)));
	}else{
		@putenv("TZ=GMT".$time_now['offset']);
	}
}
$date_line = date("Y-m-d H:i:s", $time_stamp);
$viewhelper = new PbView();
$conditions = null;
$pb_userinfo = pb_get_member_info();
if ($pb_userinfo) {
	$pb_user = $pb_userinfo;
	$pb_user = pb_addslashes($pb_user);
	uaAssign($pb_userinfo);
}
$js_language = $app_lang;
$_G = array(
'SiteUrl'=>URL, 
'charset'=>$charset, 
'AppLanguage'=>$app_lang, 
'WebRootUrl'=>$absolute_uri, 
'TemplateDir'=>'templates', 
'JsLanguage'=>$js_language, 
'cookiepre'=>$cookiepre, 
'cookiedomain'=>$cookiedomain, 
'cookiepath'=>$cookiepath
);
uaAssign($_G);
if (!empty($_PB_CACHE['setting']['site_theme_styles'])) {
	$_PB_CACHE['setting']['site_theme_styles'] = unserialize($_PB_CACHE['setting']['site_theme_styles']);
}
//at c, use $G;v, $_G.
$G = pb_lang_split_recursive($_PB_CACHE['setting']);
setvar("_G", $G);
uaAssign($G);
if ($show_ajax) {
	setvar('show_ajax', 1);
}
if(!MAGIC_QUOTES_GPC) {
    $_GET = pb_addslashes($_GET);
    $_POST = pb_addslashes($_POST);
    $_COOKIE = pb_addslashes($_COOKIE);
}
$pre_length = strlen($cookiepre);
foreach($_COOKIE as $key => $val) {
	if(substr($key, 0, $pre_length) == $cookiepre) {
		$_UCOOKIE[(substr($key, $pre_length))] = MAGIC_QUOTES_GPC ? $val : pb_addslashes($val);
	}
}
$pre_refer = empty($_SERVER['HTTP_REFERER'])?'':$_SERVER['HTTP_REFERER'];
if($gzipcompress && function_exists('ob_gzhandler')) {
	ob_start('ob_gzhandler');
} else {
	$gzipcompress = 0;
	ob_start();
}
?>