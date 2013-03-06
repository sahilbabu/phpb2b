<?php
/**
 *      [PHPB2B] Copyright (C) 2007-2099, Ualink Inc. All Rights Reserved.
 *      The contents of this file are subject to the License; you may not use this file except in compliance with the License. 
 *
 *      @version $Revision: 2244 $
 */
function smarty_function_the_url($params){
	$do = null;
	extract($params);
	global $subdomain_support, $topleveldomain_support, $rewrite_able, $rewrite_compatible;
	$return = "##";
	if (!empty($module)) {
		switch ($module) {
			case "announce":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "fair":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "news":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "market":
				if ($rewrite_able) {
					$return = URL.$module."/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "standard":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "brand":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "dict":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "product":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "company":
				if ($rewrite_able) {
					$return = URL."$module/detail/".$id.".html";
				}else{
					$return = URL."index.php?do=".$module."&action=detail&id=".$id;
				}
				break;
			case "topic":
				if ($rewrite_able) {
					$return = "topic/detail/".$id.".html";
				}else{
					$return = "index.php?do=topic&action=detail&id=".$id;
				}
				break;
			case "offer":
				if ($rewrite_able) {
					$return = "offer/detail/".$id.".html";
				}else{
					$return = "index.php?do=offer&action=detail&id=".$id;
				}
				break;
			case "producttype":
				if ($rewrite_able) {
					$return = URL."space/".$userid."/product/list-".$typeid."-".intval($page).".html";
				}else{
					$return = URL."space/?userid=".$userid."&do=product&typeid=".$typeid."&page=".$page;
				}
				break;
			case "space":
				if (!class_exists('Space')) {
					uses("space");
				}
				$space_controller = new Space();
				$return = $space_controller->rewrite($userid, $id, $do);
				break;
			case "page":
				//after 4.3, title replaced by name
				if ($rewrite_able) {
					$return = "page/".urlencode($title)."/";
				}else{
					$return = "index.php?do=page&title=".urlencode($title);
				}
				break;
			case "list":
				$extra_param = array();
				if (!empty($extra)) {
					if(strpos($extra, "|")>0){
						$tmp = explode("|", $extra);
						foreach ($tmp as $k=>$v) {
							$tmp_p = explode(",", $v);
							$extra_param[$tmp_p[0]] = $tmp_p[1];
						}
					}else{
						$tmp = explode(",", $extra);
						$extra_param[$tmp[0]] = $tmp[1];
					}
				}
				$param = http_build_query($extra_param + $_GET);
				$return = $GLOBALS['php_self']."?".$param;
				break;
			case "search":
				$return = "index.php?do=search";
				if (!empty($do)) {
					$return.="&module=".$do;
				}
				if (!empty($action)) {
					$return.="&action=".$action;
				}
				if (!empty($pos)) {
					$return.="&pos=".$pos;
				}
				if (!empty($q)) {
					$return.="&q=".$q;
				}
				if (!empty($typeid)) {
					$return.="&typeid=".intval($typeid);
				}
				if (!empty($areaid)) {
					$return.="&areaid=".$areaid;
				}
				if (!empty($industryid)) {
					$return.="&industryid=".$industryid;
				}
				if (!empty($type)) {
					$return.="&type=".$type;
				}
				if (!empty($action)) {
					$return.="&action=".$action;
				}
				break;
			case "wap":
				if($do){
					$return = "index.php?do=wap&module=".$do;
				}else{
					$return = URL."index.php?do=wap";
				}
				break;
			case "tag":
				if ($rewrite_able) {
					$return = "tag/".$do."-".$q."/";
				}else{
					$return = smarty_function_the_url(array("do"=>$do, "action"=>"lists", "q"=>$q, "module"=>"search"));
				}
				break;
			default:
				if (!empty($id)) {
					if ($rewrite_able) {
						$return = URL.$module."/detail/".$id.".html";
					}else{
						$return = URL."index.php?do=".$module."&action=detail&id=".$id;
					}
				}
				break;
		}
	}
	return $return;
}
?>