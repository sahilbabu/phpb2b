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

$alter_tb = <<<EOT
-- 程序名称: PHPB2B
-- 程序版本: 3.2 - ATHENA
-- 最后更新: 2010-3-15

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_adminfields`
-- 

DROP TABLE IF EXISTS `pb_adminfields`;
CREATE TABLE `pb_adminfields` (
  `member_id` int(10) NOT NULL,
  `depart_id` tinyint(1) NOT NULL default '0',
  `first_name` varchar(25) NOT NULL default '',
  `last_name` varchar(25) NOT NULL default '',
  `level` tinyint(1) NOT NULL default '0',
  `last_login` int(10) NOT NULL default '0',
  `last_ip` varchar(25) NOT NULL default '',
  `expired` int(10) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_adminmodules`
-- 

DROP TABLE IF EXISTS `pb_adminmodules`;
CREATE TABLE `pb_adminmodules` (
  `id` smallint(3) NOT NULL auto_increment,
  `parent_id` smallint(3) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_adminnotes`
-- 

DROP TABLE IF EXISTS `pb_adminnotes`;
CREATE TABLE `pb_adminnotes` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `content` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_adminprivileges`
-- 

DROP TABLE IF EXISTS `pb_adminprivileges`;
CREATE TABLE `pb_adminprivileges` (
  `id` int(5) NOT NULL auto_increment,
  `adminmodule_id` int(5) NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_adminroles`
-- 

DROP TABLE IF EXISTS `pb_adminroles`;
CREATE TABLE `pb_adminroles` (
  `id` tinyint(2) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_adses`
-- 

DROP TABLE IF EXISTS `pb_adses`;
CREATE TABLE `pb_adses` (
  `id` smallint(6) NOT NULL auto_increment,
  `adzone_id` smallint(3) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `description` text,
  `is_image` tinyint(1) NOT NULL default '1',
  `source_name` varchar(100) NOT NULL default '',
  `source_type` varchar(100) NOT NULL default '',
  `source_url` varchar(100) NOT NULL default '',
  `target_url` varchar(100) NOT NULL default '',
  `width` smallint(6) NOT NULL default '0',
  `height` smallint(6) NOT NULL default '0',
  `alt_words` varchar(25) NOT NULL default '',
  `start_date` int(10) NOT NULL default '0',
  `end_date` int(10) NOT NULL default '0',
  `priority` tinyint(1) NOT NULL default '0',
  `clicked` smallint(6) NOT NULL default '1',
  `target` enum('_parent','_self','_blank') NOT NULL default '_blank',
  `seq` tinyint(1) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '0',
  `picture_replace` varchar(255) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_adzones`
-- 

DROP TABLE IF EXISTS `pb_adzones`;
CREATE TABLE `pb_adzones` (
  `id` smallint(6) NOT NULL auto_increment,
  `what` varchar(10) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `description` text,
  `additional_adwords` text,
  `price` varchar(50) NOT NULL default '0',
  `file_name` varchar(100) NOT NULL default '',
  `width` smallint(6) NOT NULL default '0',
  `height` smallint(6) NOT NULL default '0',
  `wrap` smallint(6) NOT NULL default '0',
  `max_ad` smallint(6) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_albums`
-- 

DROP TABLE IF EXISTS `pb_albums`;
CREATE TABLE `pb_albums` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `attachment_id` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_announcements`
-- 

DROP TABLE IF EXISTS `pb_announcements`;
CREATE TABLE `pb_announcements` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `announcetype_id` smallint(3) NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text,
  `display_order` tinyint(1) NOT NULL default '0',
  `created` int(10) unsigned NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_announcementtypes`
-- 

DROP TABLE IF EXISTS `pb_announcementtypes`;
CREATE TABLE `pb_announcementtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_areas`
-- 

DROP TABLE IF EXISTS `pb_areas`;
CREATE TABLE `pb_areas` (
  `id` smallint(6) NOT NULL auto_increment,
  `attachment_id` int(10) NOT NULL default '0',
  `areatype_id` smallint(3) NOT NULL default '0',
  `child_ids` text,
  `top_parentid` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `alias_name` varchar(255) NOT NULL default '',
  `highlight` tinyint(1) NOT NULL default '0',
  `parent_id` smallint(6) NOT NULL default '0',
  `display_order` tinyint(1) NOT NULL default '0',
  `description` text,
  `available` tinyint(1) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_areatypes`
-- 

DROP TABLE IF EXISTS `pb_areatypes`;
CREATE TABLE `pb_areatypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_attachments`
-- 

DROP TABLE IF EXISTS `pb_attachments`;
CREATE TABLE `pb_attachments` (
  `id` int(10) NOT NULL auto_increment,
  `attachmenttype_id` smallint(3) NOT NULL default '0',
  `member_id` int(10) NOT NULL default '-1',
  `file_name` char(100) NOT NULL default '',
  `attachment` char(255) NOT NULL default '',
  `title` char(100) NOT NULL default '',
  `description` text,
  `file_type` char(50) NOT NULL default '0',
  `file_size` mediumint(8) NOT NULL default '0',
  `thumb` varchar(100) NOT NULL default '',
  `remote` varchar(100) NOT NULL default '',
  `is_image` tinyint(1) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_companies`
-- 

DROP TABLE IF EXISTS `pb_companies`;
CREATE TABLE `pb_companies` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `cache_spacename` varchar(255) NOT NULL default '',
  `cache_membergroupid` smallint(3) NOT NULL default '0',
  `cache_credits` smallint(6) NOT NULL default '0',
  `topleveldomain` varchar(255) NOT NULL default '',
  `industry_id1` smallint(6) NOT NULL default '0',
  `industry_id2` smallint(6) NOT NULL default '0',
  `industry_id3` smallint(6) NOT NULL default '0',
  `area_id1` char(6) NOT NULL default '0',
  `area_id2` char(6) NOT NULL default '0',
  `area_id3` char(6) NOT NULL default '0',
  `type_id` tinyint(2) NOT NULL default '0',
  `name` char(255) NOT NULL default '',
  `description` text,
  `english_name` char(100) NOT NULL default '',
  `keywords` varchar(50) NOT NULL default '',
  `boss_name` varchar(25) NOT NULL default '',
  `manage_type` varchar(25) NOT NULL default '',
  `year_annual` tinyint(2) NOT NULL default '0',
  `property` tinyint(1) NOT NULL default '0',
  `configs` text,
  `bank_from` varchar(50) NOT NULL default '',
  `bank_account` varchar(50) NOT NULL default '',
  `main_prod` varchar(100) NOT NULL default '',
  `employee_amount` varchar(25) NOT NULL default '',
  `found_date` char(10) NOT NULL default '0',
  `reg_fund` tinyint(2) NOT NULL default '0',
  `reg_address` varchar(200) NOT NULL default '',
  `address` varchar(200) NOT NULL default '',
  `zipcode` varchar(15) NOT NULL default '',
  `main_brand` varchar(100) NOT NULL default '',
  `main_market` varchar(200) NOT NULL default '',
  `main_biz_place` varchar(50) NOT NULL default '',
  `main_customer` varchar(200) NOT NULL default '',
  `link_man` varchar(25) NOT NULL default '',
  `link_man_gender` tinyint(1) NOT NULL default '0',
  `position` tinyint(1) NOT NULL default '0',
  `tel` varchar(25) NOT NULL default '',
  `fax` varchar(25) NOT NULL default '',
  `mobile` varchar(25) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `site_url` varchar(100) NOT NULL default '',
  `picture` varchar(50) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `first_letter` char(2) NOT NULL default '',
  `if_commend` tinyint(1) NOT NULL default '0',
  `clicked` int(5) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `member_id` (`member_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_companyfields`
-- 

DROP TABLE IF EXISTS `pb_companyfields`;
CREATE TABLE `pb_companyfields` (
  `company_id` int(10) NOT NULL default '0',
  `map_longitude` varchar(25) NOT NULL default '',
  `map_latitude` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`company_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_companynewses`
-- 

DROP TABLE IF EXISTS `pb_companynewses`;
CREATE TABLE `pb_companynewses` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `title` varchar(100) NOT NULL default '',
  `content` text,
  `picture` varchar(100) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `clicked` int(5) NOT NULL default '1',
  `created` int(11) NOT NULL default '0',
  `modified` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_expoes`
-- 

DROP TABLE IF EXISTS `pb_expoes`;
CREATE TABLE `pb_expoes` (
  `id` int(10) NOT NULL auto_increment,
  `expotype_id` smallint(3) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `description` text,
  `begin_time` int(10) NOT NULL default '0',
  `end_time` int(10) NOT NULL default '0',
  `industry_ids` varchar(100) NOT NULL default '0',
  `industry_id1` smallint(6) NOT NULL default '0',
  `industry_id2` smallint(6) NOT NULL default '0',
  `industry_id3` smallint(6) NOT NULL default '0',
  `area_id1` smallint(6) NOT NULL default '0',
  `area_id2` smallint(6) NOT NULL default '0',
  `area_id3` smallint(6) NOT NULL default '0',
  `address` varchar(100) NOT NULL default '',
  `stadium_name` varchar(100) NOT NULL default '',
  `refresh_method` varchar(100) NOT NULL default '',
  `scope` varchar(100) NOT NULL default '',
  `hosts` varchar(255) NOT NULL default '',
  `organisers` varchar(255) NOT NULL default '',
  `co_organisers` varchar(255) NOT NULL default '',
  `sponsors` varchar(255) NOT NULL default '',
  `contacts` text,
  `important_notice` text,
  `picture` varchar(100) NOT NULL default '',
  `if_commend` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `hits` smallint(6) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_expomembers`
-- 

DROP TABLE IF EXISTS `pb_expomembers`;
CREATE TABLE `pb_expomembers` (
  `id` smallint(6) NOT NULL auto_increment,
  `expo_id` smallint(6) NOT NULL default '0',
  `member_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `expo_id` (`expo_id`,`member_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_expostadiums`
-- 

DROP TABLE IF EXISTS `pb_expostadiums`;
CREATE TABLE `pb_expostadiums` (
  `id` smallint(6) NOT NULL auto_increment,
  `sa` varchar(100) default '',
  `country_id` smallint(6) default '0',
  `province_id` smallint(6) default '0',
  `city_id` smallint(6) default '0',
  `sb` varchar(200) default '',
  `sc` varchar(150) default '',
  `sd` varchar(150) default '',
  `se` varchar(150) default '',
  `sf` varchar(150) default '',
  `sg` text,
  `sh` smallint(6) default '0',
  `created` int(10) default NULL,
  `modified` int(10) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_expotypes`
-- 

DROP TABLE IF EXISTS `pb_expotypes`;
CREATE TABLE `pb_expotypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_favorites`
-- 

DROP TABLE IF EXISTS `pb_favorites`;
CREATE TABLE `pb_favorites` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `target_id` int(10) NOT NULL,
  `type_id` tinyint(1) NOT NULL,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `member_id` (`member_id`,`target_id`,`type_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_formattributes`
-- 

DROP TABLE IF EXISTS `pb_formattributes`;
CREATE TABLE `pb_formattributes` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL,
  `form_id` smallint(3) NOT NULL default '0',
  `formitem_id` smallint(3) NOT NULL default '0',
  `primary_id` int(10) NOT NULL,
  `attribute` text,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_formitems`
-- 

DROP TABLE IF EXISTS `pb_formitems`;
CREATE TABLE `pb_formitems` (
  `id` smallint(3) NOT NULL auto_increment,
  `form_id` smallint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `description` text,
  `identifier` varchar(50) NOT NULL default '',
  `type` enum('checkbox','select','radio','calendar','url','image','textarea','email','number','text') NOT NULL default 'text',
  `rules` text,
  `display_order` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_forms`
-- 

DROP TABLE IF EXISTS `pb_forms`;
CREATE TABLE `pb_forms` (
  `id` smallint(3) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL default '',
  `items` text,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_friendlinks`
-- 

DROP TABLE IF EXISTS `pb_friendlinks`;
CREATE TABLE `pb_friendlinks` (
  `id` smallint(3) NOT NULL auto_increment,
  `friendlinktype_id` tinyint(1) NOT NULL default '0',
  `industry_id` smallint(6) NOT NULL default '0',
  `area_id` smallint(6) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `logo` varchar(100) NOT NULL default '',
  `url` varchar(50) NOT NULL default '',
  `priority` smallint(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  `description` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_friendlinktypes`
-- 

DROP TABLE IF EXISTS `pb_friendlinktypes`;
CREATE TABLE `pb_friendlinktypes` (
  `id` tinyint(1) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_goods`
-- 

DROP TABLE IF EXISTS `pb_goods`;
CREATE TABLE `pb_goods` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `price` float(7,2) NOT NULL default '0.00',
  `closed` tinyint(1) NOT NULL default '1',
  `picture` varchar(100) NOT NULL default '',
  `if_commend` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_helps`
-- 

DROP TABLE IF EXISTS `pb_helps`;
CREATE TABLE `pb_helps` (
  `id` smallint(6) NOT NULL auto_increment,
  `helptype_id` smallint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `content` text,
  `highlight` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_helptypes`
-- 

DROP TABLE IF EXISTS `pb_helptypes`;
CREATE TABLE `pb_helptypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` varchar(100) NOT NULL default '',
  `parent_id` smallint(3) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '0',
  `display_order` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_htmlcaches`
-- 

DROP TABLE IF EXISTS `pb_htmlcaches`;
CREATE TABLE `pb_htmlcaches` (
  `id` int(5) NOT NULL auto_increment,
  `page_name` varchar(100) NOT NULL default '',
  `last_cached_time` int(10) NOT NULL default '0',
  `cache_cycle_time` int(10) NOT NULL default '86400',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_industries`
-- 

DROP TABLE IF EXISTS `pb_industries`;
CREATE TABLE `pb_industries` (
  `id` smallint(6) NOT NULL auto_increment,
  `attachment_id` int(9) NOT NULL default '0',
  `industrytype_id` smallint(3) NOT NULL default '0',
  `child_ids` text,
  `name` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `alias_name` varchar(255) NOT NULL default '',
  `highlight` tinyint(1) NOT NULL default '0',
  `parent_id` smallint(6) NOT NULL default '0',
  `top_parentid` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `display_order` tinyint(1) NOT NULL default '0',
  `description` text,
  `available` tinyint(1) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_industryfields`
-- 

DROP TABLE IF EXISTS `pb_industryfields`;
CREATE TABLE `pb_industryfields` (
  `industry_id` smallint(6) NOT NULL,
  `type_id` enum('offer','company','product','fair','market','news','hr') NOT NULL default 'offer',
  `keyword_ids` text,
  PRIMARY KEY  (`industry_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_industrymodels`
-- 

DROP TABLE IF EXISTS `pb_industrymodels`;
CREATE TABLE `pb_industrymodels` (
  `industry_id` smallint(6) NOT NULL,
  `model_id` enum('offers','products','companies') NOT NULL default 'offers',
  PRIMARY KEY  (`industry_id`,`model_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_industrytypes`
-- 

DROP TABLE IF EXISTS `pb_industrytypes`;
CREATE TABLE `pb_industrytypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_inqueries`
-- 

DROP TABLE IF EXISTS `pb_inqueries`;
CREATE TABLE `pb_inqueries` (
  `id` int(10) NOT NULL auto_increment,
  `to_member_id` int(10) default NULL,
  `to_company_id` int(10) default NULL,
  `title` varchar(50) NOT NULL default '',
  `content` text,
  `send_achive` tinyint(1) default NULL,
  `know_more` varchar(50) default '',
  `exp_quantity` varchar(15) default '',
  `exp_price` varchar(15) default '',
  `contacts` text,
  `user_ip` varchar(11) default '',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_ipbanned`
-- 

DROP TABLE IF EXISTS `pb_ipbanned`;
CREATE TABLE `pb_ipbanned` (
  `id` smallint(6) NOT NULL auto_increment,
  `ip1` char(3) NOT NULL default '',
  `ip2` char(3) NOT NULL default '',
  `ip3` char(3) NOT NULL default '',
  `ip4` char(3) NOT NULL default '',
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ip1` (`ip1`,`ip2`,`ip3`,`ip4`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_jobs`
-- 

DROP TABLE IF EXISTS `pb_jobs`;
CREATE TABLE `pb_jobs` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `cache_spacename` varchar(25) NOT NULL default '',
  `industry_id1` smallint(6) NOT NULL default '0',
  `industry_id2` smallint(6) NOT NULL default '0',
  `industry_id3` smallint(6) NOT NULL default '0',
  `area_id1` smallint(6) NOT NULL default '0',
  `area_id2` smallint(6) NOT NULL default '0',
  `area_id3` smallint(6) NOT NULL default '0',
  `name` varchar(150) NOT NULL default '',
  `work_station` varchar(50) NOT NULL default '',
  `content` text,
  `require_gender_id` tinyint(1) NOT NULL default '0',
  `peoples` varchar(5) NOT NULL default '',
  `require_education_id` tinyint(1) NOT NULL default '0',
  `require_age` varchar(10) NOT NULL default '',
  `salary_id` tinyint(1) NOT NULL default '0',
  `worktype_id` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `clicked` int(5) NOT NULL default '1',
  `expire_time` int(10) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_keywords`
-- 

DROP TABLE IF EXISTS `pb_keywords`;
CREATE TABLE `pb_keywords` (
  `id` int(5) NOT NULL auto_increment,
  `title` varchar(25) NOT NULL default '',
  `target_id` int(10) NOT NULL default '0',
  `target_position` tinyint(1) NOT NULL default '0',
  `type_name` enum('trades','companies','newses','products') NOT NULL default 'trades',
  `hits` smallint(6) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `title` (`title`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_logs`
-- 

DROP TABLE IF EXISTS `pb_logs`;
CREATE TABLE `pb_logs` (
  `id` int(10) NOT NULL auto_increment,
  `handle_type` enum('error','info','warning') NOT NULL default 'info',
  `source_module` varchar(50) NOT NULL default '',
  `description` text,
  `ip_address` int(10) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_marketprice`
-- 

DROP TABLE IF EXISTS `pb_marketprice`;
CREATE TABLE `pb_marketprice` (
  `id` int(10) NOT NULL auto_increment,
  `product_id` int(10) default NULL,
  `units` varchar(25) default '',
  `max_price` smallint(6) default '0',
  `min_price` smallint(6) default '0',
  `av_price` smallint(6) default '0',
  `content` text,
  `created` int(10) default NULL,
  `modified` int(10) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_markets`
-- 

DROP TABLE IF EXISTS `pb_markets`;
CREATE TABLE `pb_markets` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `content` text,
  `area_id1` smallint(6) NOT NULL default '0',
  `area_id2` smallint(6) NOT NULL default '0',
  `area_id3` smallint(6) NOT NULL default '0',
  `industry_id1` smallint(6) NOT NULL default '0',
  `industry_id2` smallint(6) NOT NULL default '0',
  `industry_id3` smallint(6) NOT NULL default '0',
  `picture` varchar(50) NOT NULL default '',
  `ip_address` int(10) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `clicked` smallint(6) NOT NULL default '1',
  `if_commend` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_memberfields`
-- 

DROP TABLE IF EXISTS `pb_memberfields`;
CREATE TABLE `pb_memberfields` (
  `member_id` int(10) NOT NULL default '0',
  `today_logins` smallint(6) NOT NULL default '0',
  `total_logins` smallint(6) NOT NULL default '0',
  `area_id1` smallint(6) NOT NULL default '0',
  `area_id2` smallint(6) NOT NULL default '0',
  `area_id3` smallint(6) NOT NULL default '0',
  `first_name` varchar(25) NOT NULL default '',
  `last_name` varchar(25) NOT NULL default '',
  `gender` tinyint(1) NOT NULL default '0',
  `tel` varchar(25) NOT NULL default '',
  `fax` varchar(25) NOT NULL default '',
  `mobile` varchar(25) NOT NULL default '',
  `qq` varchar(12) NOT NULL default '',
  `msn` varchar(50) NOT NULL default '',
  `icq` varchar(12) NOT NULL default '',
  `yahoo` varchar(50) NOT NULL default '',
  `address` varchar(50) NOT NULL default '',
  `zipcode` varchar(16) NOT NULL default '',
  `site_url` varchar(100) NOT NULL default '',
  `question` varchar(50) NOT NULL default '',
  `answer` varchar(50) NOT NULL default '',
  `reg_ip` varchar(25) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_membergroups`
-- 

DROP TABLE IF EXISTS `pb_membergroups`;
CREATE TABLE `pb_membergroups` (
  `id` smallint(3) NOT NULL auto_increment,
  `membertype_id` tinyint(1) NOT NULL default '-1',
  `name` varchar(50) NOT NULL default '',
  `description` text,
  `type` enum('define','special','system') NOT NULL default 'define',
  `system` enum('private','public') NOT NULL default 'private',
  `picture` varchar(50) NOT NULL default 'default.gif',
  `point_max` smallint(6) NOT NULL default '0',
  `point_min` smallint(6) NOT NULL default '0',
  `max_offer` smallint(3) NOT NULL default '0',
  `max_product` smallint(3) NOT NULL default '0',
  `max_job` smallint(3) NOT NULL default '0',
  `max_companynews` smallint(3) NOT NULL default '0',
  `max_producttype` smallint(3) NOT NULL default '3',
  `max_album` smallint(3) NOT NULL default '0',
  `max_attach_size` smallint(6) NOT NULL default '0',
  `max_size_perday` smallint(6) NOT NULL default '0',
  `max_favorite` smallint(3) NOT NULL default '0',
  `is_default` tinyint(1) NOT NULL default '0',
  `allow_offer` tinyint(1) NOT NULL default '0',
  `allow_market` tinyint(1) NOT NULL default '0',
  `allow_company` tinyint(1) NOT NULL default '0',
  `allow_product` tinyint(1) NOT NULL default '0',
  `allow_job` tinyint(1) NOT NULL default '0',
  `allow_companynews` tinyint(1) NOT NULL default '1',
  `allow_album` tinyint(1) NOT NULL default '0',
  `allow_space` tinyint(1) NOT NULL default '1',
  `default_live_time` tinyint(1) NOT NULL default '1',
  `after_live_time` tinyint(1) NOT NULL default '1',
  `exempt` tinyint(1) unsigned zerofill NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_members`
-- 

DROP TABLE IF EXISTS `pb_members`;
CREATE TABLE `pb_members` (
  `id` int(10) NOT NULL auto_increment,
  `space_name` varchar(255) NOT NULL default '',
  `templet_id` smallint(3) NOT NULL default '0',
  `username` varchar(25) NOT NULL default '',
  `userpass` varchar(50) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `points` smallint(6) NOT NULL default '0',
  `credits` smallint(6) NOT NULL default '0',
  `balance_amount` float(7,2) NOT NULL default '0.00',
  `trusttype_ids` varchar(25) NOT NULL default '',
  `status` enum('3','2','1','0') NOT NULL default '0',
  `photo` varchar(100) NOT NULL default '',
  `membertype_id` smallint(3) NOT NULL default '0',
  `membergroup_id` smallint(3) NOT NULL default '0',
  `last_login` varchar(11) NOT NULL default '0',
  `last_ip` varchar(25) NOT NULL default '0',
  `service_start_date` varchar(11) NOT NULL default '0',
  `service_end_date` varchar(11) NOT NULL default '0',
  `office_redirect` smallint(6) NOT NULL default '0',
  `created` varchar(10) NOT NULL default '0',
  `modified` varchar(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_membertypes`
-- 

DROP TABLE IF EXISTS `pb_membertypes`;
CREATE TABLE `pb_membertypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `default_membergroup_id` smallint(3) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` text,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_messages`
-- 

DROP TABLE IF EXISTS `pb_messages`;
CREATE TABLE `pb_messages` (
  `id` int(10) NOT NULL auto_increment,
  `type` enum('system','user','inquery') NOT NULL default 'user',
  `from_member_id` int(10) NOT NULL default '-1',
  `cache_from_username` varchar(25) NOT NULL default '',
  `to_member_id` int(10) NOT NULL default '-1',
  `cache_to_username` varchar(25) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `content` text,
  `status` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_navs`
-- 

DROP TABLE IF EXISTS `pb_navs`;
CREATE TABLE `pb_navs` (
  `id` smallint(3) NOT NULL auto_increment,
  `parent_id` smallint(3) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `target` enum('_blank','_self') NOT NULL default '_self',
  `status` tinyint(1) NOT NULL default '1',
  `display_order` smallint(3) NOT NULL default '0',
  `highlight` tinyint(1) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '0',
  `class_name` varchar(25) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_newscomments`
-- 

DROP TABLE IF EXISTS `pb_newscomments`;
CREATE TABLE `pb_newscomments` (
  `id` int(10) NOT NULL auto_increment,
  `news_id` int(10) NOT NULL default '0',
  `member_id` int(10) NOT NULL default '-1',
  `cache_username` varchar(25) NOT NULL default '',
  `message` text,
  `ip_address` char(15) NOT NULL default '',
  `invisible` tinyint(1) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `date_line` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_newses`
-- 

DROP TABLE IF EXISTS `pb_newses`;
CREATE TABLE `pb_newses` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` int(5) NOT NULL default '0',
  `industry_id` smallint(3) NOT NULL default '0',
  `area_id` smallint(3) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text,
  `source` varchar(25) NOT NULL default '',
  `picture` varchar(50) NOT NULL default '',
  `if_focus` tinyint(1) NOT NULL default '0',
  `if_commend` tinyint(1) NOT NULL default '0',
  `highlight` tinyint(1) NOT NULL default '0',
  `clicked` int(10) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  `require_membertype` varchar(15) NOT NULL default '0',
  `tag_ids` varchar(255) default '',
  `created` int(10) NOT NULL default '0',
  `create_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_newstypes`
-- 

DROP TABLE IF EXISTS `pb_newstypes`;
CREATE TABLE `pb_newstypes` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `level_id` tinyint(1) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  `parent_id` smallint(3) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_ordergoods`
-- 

DROP TABLE IF EXISTS `pb_ordergoods`;
CREATE TABLE `pb_ordergoods` (
  `goods_id` smallint(6) NOT NULL default '0',
  `order_id` smallint(6) unsigned zerofill NOT NULL default '000000',
  `amount` smallint(3) NOT NULL default '1',
  PRIMARY KEY  (`goods_id`,`order_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_orders`
-- 

DROP TABLE IF EXISTS `pb_orders`;
CREATE TABLE `pb_orders` (
  `id` smallint(6) unsigned zerofill NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `anonymous` tinyint(1) NOT NULL default '0',
  `cache_username` varchar(25) NOT NULL default '',
  `total_price` smallint(3) NOT NULL default '0',
  `content` text,
  `status` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_passports`
-- 

DROP TABLE IF EXISTS `pb_passports`;
CREATE TABLE `pb_passports` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `title` varchar(25) NOT NULL default '',
  `description` text,
  `url` varchar(25) NOT NULL default '',
  `config` text,
  `available` tinyint(1) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_payments`
-- 

DROP TABLE IF EXISTS `pb_payments`;
CREATE TABLE `pb_payments` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `title` varchar(25) NOT NULL default '',
  `description` text,
  `config` text,
  `available` tinyint(1) NOT NULL default '1',
  `if_online_support` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_personals`
-- 

DROP TABLE IF EXISTS `pb_personals`;
CREATE TABLE `pb_personals` (
  `member_id` int(10) NOT NULL,
  `resume_status` tinyint(1) NOT NULL default '0',
  `max_education` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_plugins`
-- 

DROP TABLE IF EXISTS `pb_plugins`;
CREATE TABLE `pb_plugins` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `title` varchar(25) NOT NULL default '',
  `description` text,
  `copyright` varchar(25) NOT NULL default '',
  `version` varchar(15) NOT NULL default '',
  `pluginvar` text,
  `available` tinyint(1) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_pointlogs`
-- 

DROP TABLE IF EXISTS `pb_pointlogs`;
CREATE TABLE `pb_pointlogs` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL,
  `action_name` varchar(25) NOT NULL default '',
  `points` smallint(3) NOT NULL default '0',
  `description` text,
  `ip_address` varchar(15) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_products`
-- 

DROP TABLE IF EXISTS `pb_products`;
CREATE TABLE `pb_products` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL default '0',
  `cache_companyname` varchar(100) NOT NULL default '',
  `sort_id` tinyint(1) NOT NULL default '1',
  `industry_id1` smallint(6) NOT NULL default '0',
  `industry_id2` smallint(6) NOT NULL default '0',
  `industry_id3` smallint(6) NOT NULL default '0',
  `area_id1` smallint(6) NOT NULL default '0',
  `area_id2` smallint(6) NOT NULL default '0',
  `area_id3` smallint(6) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `price` varchar(15) NOT NULL default '0',
  `sn` varchar(20) NOT NULL default '',
  `spec` varchar(20) NOT NULL default '',
  `produce_area` varchar(50) NOT NULL default '',
  `packing_content` varchar(100) NOT NULL default '',
  `picture` varchar(50) NOT NULL default '',
  `content` text,
  `producttype_id` smallint(6) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '1',
  `ifnew` tinyint(1) NOT NULL default '0',
  `ifcommend` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) NOT NULL default '0',
  `tag_ids` varchar(255) default '',
  `clicked` smallint(6) NOT NULL default '1',
  `formattribute_ids` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_producttypes`
-- 

DROP TABLE IF EXISTS `pb_producttypes`;
CREATE TABLE `pb_producttypes` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL default '',
  `level` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_roleadminers`
-- 

DROP TABLE IF EXISTS `pb_roleadminers`;
CREATE TABLE `pb_roleadminers` (
  `id` int(5) NOT NULL auto_increment,
  `adminrole_id` int(2) default NULL,
  `adminer_id` int(2) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_roleprivileges`
-- 

DROP TABLE IF EXISTS `pb_roleprivileges`;
CREATE TABLE `pb_roleprivileges` (
  `id` int(5) NOT NULL auto_increment,
  `adminrole_id` int(2) default NULL,
  `adminprivilege_id` int(2) default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_segmentcaches`
-- 

DROP TABLE IF EXISTS `pb_segmentcaches`;
CREATE TABLE `pb_segmentcaches` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `data` text,
  `display_order` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_segmentdicts`
-- 

DROP TABLE IF EXISTS `pb_segmentdicts`;
CREATE TABLE `pb_segmentdicts` (
  `id` int(10) NOT NULL auto_increment,
  `word` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_services`
-- 

DROP TABLE IF EXISTS `pb_services`;
CREATE TABLE `pb_services` (
  `id` smallint(6) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL,
  `title` varchar(25) NOT NULL default '',
  `content` text,
  `nick_name` varchar(25) default '',
  `email` varchar(25) NOT NULL default '',
  `user_ip` varchar(11) NOT NULL default '',
  `type_id` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `revert_content` text,
  `revert_date` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_sessions`
-- 

DROP TABLE IF EXISTS `pb_sessions`;
CREATE TABLE `pb_sessions` (
  `sesskey` char(32) NOT NULL default '',
  `expiry` int(10) NOT NULL default '0',
  `expireref` char(64) NOT NULL default '',
  `data` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  KEY `sess2_expiry` (`expiry`),
  KEY `sess2_expireref` (`expireref`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_settings`
-- 

DROP TABLE IF EXISTS `pb_settings`;
CREATE TABLE `pb_settings` (
  `id` smallint(3) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL default '0',
  `variable` varchar(150) NOT NULL default '',
  `valued` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `variable` (`variable`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_spacelinks`
-- 

DROP TABLE IF EXISTS `pb_spacelinks`;
CREATE TABLE `pb_spacelinks` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL,
  `company_id` int(10) NOT NULL,
  `display_order` smallint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `is_outlink` tinyint(1) NOT NULL default '0',
  `description` varchar(100) NOT NULL default '',
  `logo` varchar(255) NOT NULL default '',
  `highlight` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_spreads`
-- 

DROP TABLE IF EXISTS `pb_spreads`;
CREATE TABLE `pb_spreads` (
  `keyword_id` int(10) NOT NULL,
  `target_id` int(10) NOT NULL,
  `type_name` enum('trades','companies','newses','products') NOT NULL default 'trades',
  `expiration` int(10) NOT NULL default '0',
  `display_order` tinyint(1) NOT NULL,
  PRIMARY KEY  (`keyword_id`),
  KEY `spread` (`keyword_id`,`target_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_stats`
-- 

DROP TABLE IF EXISTS `pb_stats`;
CREATE TABLE `pb_stats` (
  `id` smallint(6) NOT NULL auto_increment,
  `sa` varchar(25) default '',
  `sb` varchar(50) default '',
  `description` varchar(50) NOT NULL default '',
  `sc` int(10) default NULL,
  `sd` int(10) default NULL,
  `se` smallint(6) default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_tags`
-- 

DROP TABLE IF EXISTS `pb_tags`;
CREATE TABLE `pb_tags` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL default '',
  `numbers` smallint(6) NOT NULL default '0',
  `closed` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `title` (`name`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_templets`
-- 

DROP TABLE IF EXISTS `pb_templets`;
CREATE TABLE `pb_templets` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `title` varchar(25) NOT NULL default '',
  `directory` varchar(100) NOT NULL default '',
  `type` enum('system','user') NOT NULL default 'system',
  `author` varchar(100) NOT NULL default '',
  `description` text,
  `is_default` tinyint(1) NOT NULL default '0',
  `require_membertype` varchar(100) NOT NULL default '0',
  `require_membergroups` varchar(100) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_topicnews`
-- 

DROP TABLE IF EXISTS `pb_topicnews`;
CREATE TABLE `pb_topicnews` (
  `topic_id` smallint(6) NOT NULL default '0',
  `news_id` smallint(6) NOT NULL default '0'
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_topics`
-- 

DROP TABLE IF EXISTS `pb_topics`;
CREATE TABLE `pb_topics` (
  `id` smallint(6) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `picture` varchar(255) NOT NULL default '',
  `description` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_tradefields`
-- 

DROP TABLE IF EXISTS `pb_tradefields`;
CREATE TABLE `pb_tradefields` (
  `trade_id` int(10) NOT NULL default '0',
  `member_id` int(10) NOT NULL default '0',
  `link_man` varchar(100) NOT NULL default '',
  `address` varchar(100) NOT NULL default '',
  `company_name` varchar(100) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `prim_tel` tinyint(1) NOT NULL default '0',
  `prim_telnumber` varchar(25) NOT NULL default '',
  `prim_im` tinyint(1) NOT NULL default '0',
  `prim_imaccount` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`trade_id`),
  UNIQUE KEY `trade_id` (`trade_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_trades`
-- 

DROP TABLE IF EXISTS `pb_trades`;
CREATE TABLE `pb_trades` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` enum('8','7','6','5','4','3','2','1') NOT NULL default '1',
  `industry_id1` smallint(6) NOT NULL default '0',
  `industry_id2` smallint(6) NOT NULL default '0',
  `industry_id3` smallint(6) NOT NULL default '0',
  `area_id1` smallint(6) NOT NULL default '0',
  `area_id2` smallint(6) NOT NULL default '0',
  `area_id3` smallint(6) NOT NULL default '0',
  `member_id` int(10) NOT NULL default '0',
  `company_id` int(5) NOT NULL default '0',
  `cache_username` varchar(25) NOT NULL default '',
  `cache_companyname` varchar(100) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `content` text,
  `price` float(8,2) NOT NULL default '0.00',
  `measuring_unit` varchar(15) NOT NULL default '0',
  `monetary_unit` varchar(15) NOT NULL default '0',
  `packing` varchar(150) NOT NULL default '',
  `quantity` varchar(25) NOT NULL default '',
  `offer_expire` int(10) NOT NULL default '0',
  `spec` varchar(200) NOT NULL default '',
  `sn` varchar(25) NOT NULL default '',
  `picture` varchar(50) NOT NULL default '',
  `picture_remote` varchar(50) NOT NULL default '',
  `status` tinyint(2) NOT NULL default '0',
  `submit_time` int(10) NOT NULL default '0',
  `expire_time` int(10) NOT NULL default '0',
  `expire_days` int(3) NOT NULL default '0',
  `if_commend` tinyint(1) NOT NULL default '0',
  `if_urgent` enum('0','1') NOT NULL default '0',
  `if_locked` enum('0','1') NOT NULL default '0',
  `require_point` smallint(6) NOT NULL default '0',
  `require_membertype` smallint(6) NOT NULL default '0',
  `require_freedate` int(10) NOT NULL default '0',
  `ip_addr` varchar(15) NOT NULL default '',
  `clicked` int(10) NOT NULL default '1',
  `tag_ids` varchar(255) default '',
  `formattribute_ids` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_tradetypes`
-- 

DROP TABLE IF EXISTS `pb_tradetypes`;
CREATE TABLE `pb_tradetypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM ;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_trustlogs`
-- 

DROP TABLE IF EXISTS `pb_trustlogs`;
CREATE TABLE `pb_trustlogs` (
  `member_id` int(10) NOT NULL auto_increment,
  `trusttype_id` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_trusttypes`
-- 

DROP TABLE IF EXISTS `pb_trusttypes`;
CREATE TABLE `pb_trusttypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `description` text,
  `image` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_typemodels`
-- 

DROP TABLE IF EXISTS `pb_typemodels`;
CREATE TABLE `pb_typemodels` (
  `id` smallint(3) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `type_name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_typeoptions`
-- 

DROP TABLE IF EXISTS `pb_typeoptions`;
CREATE TABLE `pb_typeoptions` (
  `id` smallint(3) NOT NULL auto_increment,
  `typemodel_id` smallint(3) NOT NULL default '0',
  `option_value` varchar(50) NOT NULL default '',
  `option_label` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_userpages`
-- 

DROP TABLE IF EXISTS `pb_userpages`;
CREATE TABLE `pb_userpages` (
  `id` int(5) NOT NULL auto_increment,
  `templet_name` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL default '',
  `title` varchar(50) NOT NULL default '',
  `digest` varchar(50) NOT NULL default '',
  `content` text,
  `url` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_visitlogs`
-- 

DROP TABLE IF EXISTS `pb_visitlogs`;
CREATE TABLE `pb_visitlogs` (
  `id` smallint(6) NOT NULL auto_increment,
  `salt` varchar(32) NOT NULL default '',
  `date_line` varchar(15) NOT NULL default '',
  `type_name` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `salt` (`salt`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_words`
-- 

DROP TABLE IF EXISTS `pb_words`;
CREATE TABLE `pb_words` (
  `id` smallint(6) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `replace_to` varchar(50) NOT NULL default '',
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `word` (`title`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_companytypes`
-- 

DROP TABLE IF EXISTS `pb_companytypes`;
CREATE TABLE `pb_companytypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `display_order` tinyint(1) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_attachmenttypes`
-- 

DROP TABLE IF EXISTS `pb_attachmenttypes`;
CREATE TABLE `pb_attachmenttypes` (
  `id` tinyint(1) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_dicts`
-- 

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
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_dicttypes`
-- 

DROP TABLE IF EXISTS `pb_dicttypes`;
CREATE TABLE `pb_dicttypes` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `parent_id` smallint(6) NOT NULL default '0',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_membercaches`
-- 

DROP TABLE IF EXISTS `pb_membercaches`;
CREATE TABLE `pb_membercaches` (
  `member_id` int(10) NOT NULL default '-1',
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) TYPE=MyISAM;

-- --------------------------------------------------------

-- 
-- 表的结构 `pb_spacecaches`
-- 

DROP TABLE IF EXISTS `pb_spacecaches`;
CREATE TABLE `pb_spacecaches` (
  `cache_spacename` varchar(255) NOT NULL default '',
  `company_id` int(10) NOT NULL default '-1',
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`company_id`)
) TYPE=MyISAM;


-- 
-- 导出表中的数据 `pb_membertypes`
-- 

INSERT INTO `pb_membertypes` VALUES (1, 7, '个人会员', '');
INSERT INTO `pb_membertypes` VALUES (2, 9, '企业会员', '');

-- 
-- 导出表中的数据 `pb_friendlinktypes`
-- 

INSERT INTO `pb_friendlinktypes` VALUES (1, '友情链接');
INSERT INTO `pb_friendlinktypes` VALUES (2, '合作伙伴');

-- 
-- 导出表中的数据 `pb_navs`
-- 

INSERT INTO `pb_navs` VALUES (1, 0, '首页', '', 'index.php', '_self', 1, 1, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (2, 0, '求购', '', 'buy/', '_self', 1, 2, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (3, 0, '供应', '', 'sell/', '_self', 1, 3, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (4, 0, '公司库', '', 'company/index.php', '_self', 1, 5, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (5, 0, '产品库', '', 'product/index.php', '_self', 1, 6, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (6, 0, '资讯', '', 'news/index.php', '_self', 1, 7, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (7, 0, '市场库', '', 'market/index.php', '_self', 1, 8, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (8, 0, '展会', '', 'fair/index.php', '_self', 1, 9, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (9, 0, '人才招聘', '', 'hr/index.php', '_self', 1, 10, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (10, 0, '库存', '', 'offer/list.php?typeid=8&navid=10', '_self', 1, 4, 0, 0, '', 0, 0);
INSERT INTO `pb_navs` VALUES (11, 0, '行业词典', '', 'dict/', '_self', 1, 11, 0, 0, '', 0, 0);

-- 
-- 导出表中的数据 `pb_plugins`
-- 

INSERT INTO `pb_plugins` VALUES (1, 'hello', '演示的插件', '这是一个演示的插件， 显示在前台的图片轮换上', 'PB TEAM', '1.0', 'a:5:{s:5:"movie";s:24:"plugins/hello/bcastr.swf";s:5:"width";s:3:"473";s:6:"height";s:3:"170";s:7:"bgcolor";s:7:"#ff0000";s:9:"flashvars";s:27:"xml=plugins/hello/hello.xml";}', 1, 1260213787, 1260213787);
INSERT INTO `pb_plugins` VALUES (2, 'googlesitemap', 'Googlesitemap', '使用Google sitemap能提高网站/网页在SERP中的排名', 'PB TEAM', '1.0', 'a:1:{s:7:"lastmod";s:19:"2009-12-08 12:12:12";}', 1, 1260263957, 1260263957);
INSERT INTO `pb_plugins` VALUES (4, 'vcastr', '企业视频展播', '此插件可以调用企业视频，使用方法见插件调用：<{plugin name="vcastr"}>', 'PB TEAM', '1.0', 'a:4:{s:5:"movie";s:27:"plugins/vcastr/vcastr22.swf";s:9:"flashvars";s:24:"plugins/vcastr/video.xml";s:5:"width";s:3:"410";s:6:"height";s:3:"190";}', 1, 1260949966, 1260949966);
INSERT INTO `pb_plugins` VALUES (5, 'qqservice', 'QQ在线客服', '本插件现支持在线QQ，在线MSN和邮件服务', 'PB TEAM', '1.0', 'a:4:{s:3:"url";s:22:"http://www.phpb2b.com/";s:5:"email";s:17:"steven@phpb2b.com";s:2:"qq";s:8:"47731473";s:3:"msn";s:21:"stevenchow811@163.com";}', 1, 1260950430, 1260950430);
INSERT INTO `pb_plugins` VALUES (3, 'baidusitemap', '百度sitemap', '使用百度互联网论坛收录开放协议能提高网站流量', 'PB TEAM', '1.0', '', 1, 1261303439, 1261303439);

-- 
-- 导出表中的数据 `pb_settings`
-- 

INSERT INTO `pb_settings` (variable,valued) VALUES ('site_name', 'B2B网站的名称');
INSERT INTO `pb_settings` (variable,valued) VALUES ('site_title', 'B2B网站的标题-显示在标题栏');
INSERT INTO `pb_settings` (variable,valued) VALUES ('site_banner_word', '网站的宣传语');
INSERT INTO `pb_settings` (variable,valued) VALUES ('company_name', '网站的版权者');
INSERT INTO `pb_settings` (variable,valued) VALUES ('site_url', 'http://localhost/athena/');
INSERT INTO `pb_settings` (variable,valued) VALUES ('icp_number', 'ICP备案号码<ID>');
INSERT INTO `pb_settings` (variable,valued) VALUES ('service_tel', '(86)10-84128912');
INSERT INTO `pb_settings` (variable,valued) VALUES ('sale_tel', '(86)10-84128912');
INSERT INTO `pb_settings` (variable,valued) VALUES ('service_qq', '100864825');
INSERT INTO `pb_settings` (variable,valued) VALUES ('service_msn', 'service_msn@yourdomain.com');
INSERT INTO `pb_settings` (variable,valued) VALUES ('service_email', 'service_email@yourdomain.com');
INSERT INTO `pb_settings` (type_id,variable,valued) VALUES (1,'site_description', '<p>网站的详细描述</p>');
INSERT INTO `pb_settings` (variable,valued) VALUES ('cp_picture', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('register_picture', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('login_picture', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('vispost_auth', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('watermark', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('watertext', 'athena');
INSERT INTO `pb_settings` (variable,valued) VALUES ('watercolor', '#990000');
INSERT INTO `pb_settings` (variable,valued) VALUES ('add_market_check', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('regcheck', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('vis_post', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('vis_post_check', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('sell_logincheck', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('buy_logincheck', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('install_dateline', '1259471740');
INSERT INTO `pb_settings` (variable,valued) VALUES ('last_backup', '1259471740');
INSERT INTO `pb_settings` (variable,valued) VALUES ('smtp_server', 'smtp.yourdomain.com');
INSERT INTO `pb_settings` (variable,valued) VALUES ('smtp_port', '25');
INSERT INTO `pb_settings` (variable,valued) VALUES ('smtp_auth', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('mail_from', 'admin@yourdomain.com');
INSERT INTO `pb_settings` (variable,valued) VALUES ('mail_fromwho', '网站管理员');
INSERT INTO `pb_settings` (variable,valued) VALUES ('auth_username', 'username@yourdomain.com');
INSERT INTO `pb_settings` (variable,valued) VALUES ('auth_password', 'password');
INSERT INTO `pb_settings` (variable,valued) VALUES ('send_mail', '2');
INSERT INTO `pb_settings` (variable,valued) VALUES ('sendmail_silent', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('mail_delimiter', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('reg_filename', 'register.php');
INSERT INTO `pb_settings` (variable,valued) VALUES ('new_userauth', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('post_filename', 'post.php');
INSERT INTO `pb_settings` (variable,valued) VALUES ('forbid_ip', '');
INSERT INTO `pb_settings` (variable,valued) VALUES ('ip_reg_sep', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('backup_dir', 'JretqR');
INSERT INTO `pb_settings` (variable,valued) VALUES ('capt_logging', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('capt_register', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('capt_post_free', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('capt_add_market', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('capt_login_admin', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('capt_apply_friendlink', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('capt_service', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('backup_type', '1');
INSERT INTO `pb_settings` (variable,valued) VALUES ('register_type', 'open_common_reg');
INSERT INTO `pb_settings` (variable,valued) VALUES ('auth_key', 'xFy9W2GuK8RCMe6');
INSERT INTO `pb_settings` (variable,valued) VALUES ('keyword_bidding', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('passport_support', '0');
INSERT INTO `pb_settings` (variable,valued) VALUES ('site_logo', 'images/logo.jpg');

-- 
-- 导出表中的数据 `pb_friendlinks`
-- 

INSERT INTO `pb_friendlinks` VALUES (1, 0, 0, 0, 'PHPB2B', '', 'http://www.phpb2b.com/', 0, 1, '', 0, 0);
INSERT INTO `pb_friendlinks` VALUES (2, 0, 0, 0, 'PHP B2B电子商务网演示', '', 'http://demo.phpb2b.com/', 0, 1, '', 0, 0);

-- 
-- 导出表中的数据 `pb_tradetypes`
-- 

INSERT INTO `pb_tradetypes` VALUES (1, '求购', 0);
INSERT INTO `pb_tradetypes` VALUES (2, '供应', 0);
INSERT INTO `pb_tradetypes` VALUES (3, '代理', 0);
INSERT INTO `pb_tradetypes` VALUES (4, '合作', 0);
INSERT INTO `pb_tradetypes` VALUES (5, '招商', 0);
INSERT INTO `pb_tradetypes` VALUES (6, '加盟', 0);
INSERT INTO `pb_tradetypes` VALUES (7, '批发', 0);
INSERT INTO `pb_tradetypes` VALUES (8, '库存', 0);

-- 
-- 导出表中的数据 `pb_typemodels`
-- 

INSERT INTO `pb_typemodels` VALUES (1, '过期时间', 'offer_expire');
INSERT INTO `pb_typemodels` VALUES (2, '公司类型', 'manage_type');
INSERT INTO `pb_typemodels` VALUES (3, '主要市场', 'main_market');
INSERT INTO `pb_typemodels` VALUES (4, '注册资金', 'reg_fund');
INSERT INTO `pb_typemodels` VALUES (5, '年营业额', 'year_annual');
INSERT INTO `pb_typemodels` VALUES (6, '经济类型', 'economic_type');
INSERT INTO `pb_typemodels` VALUES (7, '审核状态', 'check_status');
INSERT INTO `pb_typemodels` VALUES (8, '员工人数', 'employee_amount');
INSERT INTO `pb_typemodels` VALUES (9, '状态', 'common_status');
INSERT INTO `pb_typemodels` VALUES (10, '建议类型', 'service_type');
INSERT INTO `pb_typemodels` VALUES (11, '教育经历', 'education');
INSERT INTO `pb_typemodels` VALUES (12, '薪资水平', 'salary');
INSERT INTO `pb_typemodels` VALUES (13, '工作性质', 'work_type');
INSERT INTO `pb_typemodels` VALUES (14, '职位名称', 'position');
INSERT INTO `pb_typemodels` VALUES (15, '性别', 'gender');
INSERT INTO `pb_typemodels` VALUES (16, '电话类别', 'phone_type');
INSERT INTO `pb_typemodels` VALUES (17, '即时通讯类别', 'im_type');
INSERT INTO `pb_typemodels` VALUES (18, '选项', 'common_option');

-- 
-- 导出表中的数据 `pb_typeoptions`
-- 

INSERT INTO `pb_typeoptions` VALUES (1, 1, '10', '10天');
INSERT INTO `pb_typeoptions` VALUES (2, 1, '30', '一个月');
INSERT INTO `pb_typeoptions` VALUES (3, 1, '90', '三个月');
INSERT INTO `pb_typeoptions` VALUES (4, 1, '180', '六个月');
INSERT INTO `pb_typeoptions` VALUES (5, 2, '1', '生产型');
INSERT INTO `pb_typeoptions` VALUES (6, 2, '2', '贸易型');
INSERT INTO `pb_typeoptions` VALUES (7, 2, '3', '服务型');
INSERT INTO `pb_typeoptions` VALUES (8, 2, '4', '政府或其他机构');
INSERT INTO `pb_typeoptions` VALUES (9, 3, '1', '大陆');
INSERT INTO `pb_typeoptions` VALUES (10, 3, '2', '港澳台');
INSERT INTO `pb_typeoptions` VALUES (11, 3, '3', '北美');
INSERT INTO `pb_typeoptions` VALUES (12, 3, '4', '南美');
INSERT INTO `pb_typeoptions` VALUES (13, 3, '5', '欧洲');
INSERT INTO `pb_typeoptions` VALUES (14, 3, '6', '亚洲');
INSERT INTO `pb_typeoptions` VALUES (15, 3, '7', '非洲');
INSERT INTO `pb_typeoptions` VALUES (16, 3, '8', '大洋洲');
INSERT INTO `pb_typeoptions` VALUES (17, 3, '9', '其他市场');
INSERT INTO `pb_typeoptions` VALUES (18, 4, '0', '不公开');
INSERT INTO `pb_typeoptions` VALUES (19, 4, '1', '人民币10万元以下');
INSERT INTO `pb_typeoptions` VALUES (20, 4, '2', '人民币10-30万');
INSERT INTO `pb_typeoptions` VALUES (21, 4, '3', '人民币30-50万');
INSERT INTO `pb_typeoptions` VALUES (22, 4, '4', '人民币50-100万');
INSERT INTO `pb_typeoptions` VALUES (23, 4, '5', '人民币100-300万');
INSERT INTO `pb_typeoptions` VALUES (24, 4, '6', '人民币300-500万');
INSERT INTO `pb_typeoptions` VALUES (25, 4, '7', '人民币500-1000万');
INSERT INTO `pb_typeoptions` VALUES (26, 4, '8', '人民币1000-5000万');
INSERT INTO `pb_typeoptions` VALUES (27, 4, '9', '人民币5000万以上');
INSERT INTO `pb_typeoptions` VALUES (28, 4, '10', '其他');
INSERT INTO `pb_typeoptions` VALUES (29, 5, '1', '人民币10万以下/年');
INSERT INTO `pb_typeoptions` VALUES (30, 5, '2', '人民币10-30万/年');
INSERT INTO `pb_typeoptions` VALUES (31, 5, '3', '人民币30-50万/年');
INSERT INTO `pb_typeoptions` VALUES (32, 5, '4', '人民币50-100万/年');
INSERT INTO `pb_typeoptions` VALUES (33, 5, '5', '人民币100-300万/年');
INSERT INTO `pb_typeoptions` VALUES (34, 5, '6', '人民币300-500万/年');
INSERT INTO `pb_typeoptions` VALUES (35, 5, '7', '人民币500-1000万/年');
INSERT INTO `pb_typeoptions` VALUES (36, 5, '8', '人民币1000-5000万/年');
INSERT INTO `pb_typeoptions` VALUES (37, 5, '9', '人民币5000万以上/年');
INSERT INTO `pb_typeoptions` VALUES (38, 5, '10', '其他');
INSERT INTO `pb_typeoptions` VALUES (39, 6, '1', '国有企业');
INSERT INTO `pb_typeoptions` VALUES (40, 6, '2', '集体企业');
INSERT INTO `pb_typeoptions` VALUES (41, 6, '3', '股份合作企业');
INSERT INTO `pb_typeoptions` VALUES (42, 6, '4', '联营企业');
INSERT INTO `pb_typeoptions` VALUES (43, 6, '5', '有限责任公司');
INSERT INTO `pb_typeoptions` VALUES (44, 6, '6', '股份有限公司');
INSERT INTO `pb_typeoptions` VALUES (45, 6, '7', '私营企业');
INSERT INTO `pb_typeoptions` VALUES (46, 6, '8', '个人独资企业');
INSERT INTO `pb_typeoptions` VALUES (47, 6, '9', '非盈利组织');
INSERT INTO `pb_typeoptions` VALUES (48, 6, '10', '其他');
INSERT INTO `pb_typeoptions` VALUES (49, 7, '0', '无效');
INSERT INTO `pb_typeoptions` VALUES (50, 7, '1', '有效');
INSERT INTO `pb_typeoptions` VALUES (51, 7, '2', '等待审核');
INSERT INTO `pb_typeoptions` VALUES (52, 7, '3', '审核不通过');
INSERT INTO `pb_typeoptions` VALUES (53, 8, '1', '5人以下');
INSERT INTO `pb_typeoptions` VALUES (54, 8, '2', '5-10人');
INSERT INTO `pb_typeoptions` VALUES (55, 8, '3', '11-50人');
INSERT INTO `pb_typeoptions` VALUES (56, 8, '4', '51-100人');
INSERT INTO `pb_typeoptions` VALUES (57, 8, '5', '101-500人');
INSERT INTO `pb_typeoptions` VALUES (58, 8, '6', '501-1000人');
INSERT INTO `pb_typeoptions` VALUES (59, 8, '7', '1000人以上');
INSERT INTO `pb_typeoptions` VALUES (60, 10, '1', '咨询');
INSERT INTO `pb_typeoptions` VALUES (61, 10, '2', '建议');
INSERT INTO `pb_typeoptions` VALUES (62, 10, '3', '投诉');
INSERT INTO `pb_typeoptions` VALUES (63, 11, '0', '其他');
INSERT INTO `pb_typeoptions` VALUES (64, 11, '-1', '不要求');
INSERT INTO `pb_typeoptions` VALUES (65, 11, '-2', '不限');
INSERT INTO `pb_typeoptions` VALUES (66, 11, '1', '博士');
INSERT INTO `pb_typeoptions` VALUES (67, 11, '2', '硕士');
INSERT INTO `pb_typeoptions` VALUES (68, 11, '3', '本科');
INSERT INTO `pb_typeoptions` VALUES (69, 11, '4', '大专');
INSERT INTO `pb_typeoptions` VALUES (70, 11, '5', '中专');
INSERT INTO `pb_typeoptions` VALUES (71, 11, '6', '技校');
INSERT INTO `pb_typeoptions` VALUES (72, 11, '7', '高中');
INSERT INTO `pb_typeoptions` VALUES (73, 11, '8', '初中');
INSERT INTO `pb_typeoptions` VALUES (74, 11, '9', '小学');
INSERT INTO `pb_typeoptions` VALUES (75, 12, '0', '不选择');
INSERT INTO `pb_typeoptions` VALUES (76, 12, '-1', '面议');
INSERT INTO `pb_typeoptions` VALUES (77, 12, '1', '1500以下');
INSERT INTO `pb_typeoptions` VALUES (78, 12, '2', '1500-1999元/月');
INSERT INTO `pb_typeoptions` VALUES (79, 12, '3', '2000-2999元/月');
INSERT INTO `pb_typeoptions` VALUES (80, 12, '4', '3000-4999元/月');
INSERT INTO `pb_typeoptions` VALUES (81, 12, '5', '5000以上');
INSERT INTO `pb_typeoptions` VALUES (82, 13, '0', '不选择');
INSERT INTO `pb_typeoptions` VALUES (83, 13, '1', '全职');
INSERT INTO `pb_typeoptions` VALUES (84, 13, '2', '兼职');
INSERT INTO `pb_typeoptions` VALUES (85, 13, '3', '临时');
INSERT INTO `pb_typeoptions` VALUES (86, 13, '4', '实习');
INSERT INTO `pb_typeoptions` VALUES (87, 13, '5', '其他');
INSERT INTO `pb_typeoptions` VALUES (88, 14, '0', '不选择');
INSERT INTO `pb_typeoptions` VALUES (89, 14, '1', '董事长、总裁及副职，企业主、企业合伙人，总经理/副总经理');
INSERT INTO `pb_typeoptions` VALUES (90, 14, '2', '行政部门经理/行政人员');
INSERT INTO `pb_typeoptions` VALUES (91, 14, '3', '技术部门经理/技术人员');
INSERT INTO `pb_typeoptions` VALUES (92, 14, '4', '生产部门经理/生产人员');
INSERT INTO `pb_typeoptions` VALUES (93, 14, '5', '市场部门经理/市场人员');
INSERT INTO `pb_typeoptions` VALUES (94, 14, '6', '采购部门经理/采购人员');
INSERT INTO `pb_typeoptions` VALUES (95, 14, '7', '销售部门经理/销售人员');
INSERT INTO `pb_typeoptions` VALUES (96, 14, '8', '其他');
INSERT INTO `pb_typeoptions` VALUES (97, 15, '0', '不选择');
INSERT INTO `pb_typeoptions` VALUES (98, 15, '1', '男');
INSERT INTO `pb_typeoptions` VALUES (99, 15, '2', '女');
INSERT INTO `pb_typeoptions` VALUES (100, 15, '-1', '不限');
INSERT INTO `pb_typeoptions` VALUES (101, 16, '1', '移动电话');
INSERT INTO `pb_typeoptions` VALUES (102, 16, '2', '住宅电话');
INSERT INTO `pb_typeoptions` VALUES (103, 16, '3', '商务电话');
INSERT INTO `pb_typeoptions` VALUES (104, 16, '4', '其他');
INSERT INTO `pb_typeoptions` VALUES (105, 17, '1', 'QQ');
INSERT INTO `pb_typeoptions` VALUES (106, 17, '2', 'ICQ');
INSERT INTO `pb_typeoptions` VALUES (107, 17, '3', 'MSN Messenger');
INSERT INTO `pb_typeoptions` VALUES (108, 17, '4', 'Yahoo Messenger');
INSERT INTO `pb_typeoptions` VALUES (109, 17, '5', 'Skype');
INSERT INTO `pb_typeoptions` VALUES (110, 17, '6', '其他');
INSERT INTO `pb_typeoptions` VALUES (111, 17, '0', '不选择');
INSERT INTO `pb_typeoptions` VALUES (112, 16, '0', '不选择');
INSERT INTO `pb_typeoptions` VALUES (113, 6, '0', '不选择');
INSERT INTO `pb_typeoptions` VALUES (114, 9, '0', '无效');
INSERT INTO `pb_typeoptions` VALUES (115, 9, '1', '有效');
INSERT INTO `pb_typeoptions` VALUES (116, 18, '0', '否');
INSERT INTO `pb_typeoptions` VALUES (117, 18, '1', '是');


-- 
-- 导出表中的数据 `pb_forms`
-- 

INSERT INTO `pb_forms` VALUES (1, 1, '供求自定义字段', '1,2,3,4,5,6');
INSERT INTO `pb_forms` VALUES (2, 2, '产品自定义字段', '1,2,3,4,5,6');

-- 
-- 导出表中的数据 `pb_formitems`
-- 

INSERT INTO `pb_formitems` VALUES (1, 1, '产品数量', '', 'product_quantity', 'text', '', 0);
INSERT INTO `pb_formitems` VALUES (2, 1, '包装说明', '', 'packing', 'text', '', 0);
INSERT INTO `pb_formitems` VALUES (3, 1, '价格说明', '', 'product_price', 'text', '', 0);
INSERT INTO `pb_formitems` VALUES (4, 1, '产品规格', '', 'product_specification', 'text', '', 0);
INSERT INTO `pb_formitems` VALUES (5, 1, '产品编号', '', 'serial_number', 'text', '', 0);
INSERT INTO `pb_formitems` VALUES (6, 1, '产地', '', 'production_place', 'text', '', 0);

-- 
-- 导出表中的数据 `pb_templets`
-- 

INSERT INTO `pb_templets` VALUES (1, 'default', 'PHPB2B默认模板套系', 'skins/default/', 'user', '友邻电子商务科技有限公司', 'PHPB2B默认模板套系', 1, '0', '0', 1);
INSERT INTO `pb_templets` VALUES (2, 'orange', '橙色系列模板', 'skins/orange/', 'user', 'PB TEAM', '适合医疗企事业', 0, '0', '0', 1);
INSERT INTO `pb_templets` VALUES (3, 'brown', '棕色系列模板', 'skins/brown/', 'user', 'PB TEAM', '适合工业企业', 0, '0', '0', 1);
INSERT INTO `pb_templets` VALUES (4, 'green', '绿色系列模板', 'skins/green/', 'user', 'PB TEAM', '适合农产品网站', 0, '0', '0', 1);
INSERT INTO `pb_templets` VALUES (5, 'red', '红色系列模板', 'skins/red/', 'user', 'PB TEAM', '适合中小企业', 0, '0', '0', 1);

-- 
-- 导出表中的数据 `pb_membergroups`
-- 

INSERT INTO `pb_membergroups` VALUES (1, 1, '非正式会员', '', 'system', 'private', 'informal.gif', 0, -32767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (2, 1, '正式会员', '', 'system', 'private', 'formal.gif', 32767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 2, 12, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (3, 1, '待审核会员', '等待验证', 'special', 'private', 'special_checking.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (4, 1, '禁止访问', '禁止访问网站', 'special', 'private', 'special_novisit.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (5, 1, '禁止发布', '禁止在商务室发表任何信息', 'special', 'private', 'special_noperm.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (6, 1, '禁止登陆', '禁止登陆商务室', 'special', 'private', 'special_nologin.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (7, 1, '普通会员', '普通级别会员', 'define', 'public', 'copper.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 2, 12, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (8, 1, '正式会员', '比普通高一级的个人会员，但是还是个人会员', 'define', 'public', 'silver.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 6, 12, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (9, 2, '企业会员', '企业会员一般此级别', 'define', 'public', 'gold.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 15, 0, 1261303629);
INSERT INTO `pb_membergroups` VALUES (10, 2, 'VIP会员', '高级企业会员', 'define', 'public', 'vip.gif', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 3, 1, 1, 2, 15, 0, 1261303629);
EOT;

$update_sql = <<<EOT
replace into pb_members(id,username,userpass,membertype_id,credits,email,created,last_login,service_start_date,service_end_date,status,modified) select id,username,userpass,user_type,user_level,email,created,last_login,service_start_date,service_end_date,status,modified from eos_members;
replace into pb_memberfields(member_id,today_logins,first_name,last_name,gender,tel,fax,mobile,qq,msn,icq,yahoo,address,zipcode,site_url,question,answer) select id,today_logins,firstname,lastname,gender,tel,fax,mobile,qq,msn,icq,yahoo,address,zipcode,site_url,question,answer from eos_members;
replace into pb_companies(id,member_id,type_id,name,english_name,keywords,boss_name,manage_type,year_annual,property,description,bank_from,bank_account,main_prod,employee_amount,found_date,reg_fund,reg_address,address,zipcode,main_brand,main_market,main_biz_place,main_customer,link_man,link_man_gender,position,tel,fax,mobile,email,site_url,picture,status,clicked,created,modified) select id,member_id,type_id,name,english_name,keywords,boss_name,manage_type,year_annual,property,description,bank_from,bank_account,main_prod,employee_amount,found_date,reg_fund,reg_address,address,zipcode,main_brand,main_market,main_biz_place,main_customer,link_man,link_man_gender,position,tel,fax,mobile,email,site_url,picture,status,clicked,created,modified from eos_companies;
replace into pb_companynewses(id,member_id,company_id,title,content,picture,clicked, created, modified) select * from eos_companynewses;
replace into pb_products(id,company_id,member_id,sort_id,area_id1,area_id2,name,sn,spec,price,packing_content,picture,content,producttype_id,status,state,ifnew,ifcommend,clicked,created,modified) select id,company_id,member_id,sort_id,province_id,city_id,name,sn,spec,price,packing_content,picture,content,producttype_id,status,state,ifnew,ifcommend,clicked,created,modified from eos_products;
replace into pb_producttypes(id,member_id,company_id,name,level,created) select * from eos_producttypes;
replace into pb_services(id,title,content,nick_name,email,revert_content,type_id,status,user_ip,created,revert_date) select id,title,content,nick_name,email,revert_content,type_id,status,user_ip,created,revert_date from eos_services;
replace into pb_sessions(sesskey,expiry,expireref,data) select sesskey,expiry,expireref,data from eos_sessions;
replace into pb_jobs(id,member_id,company_id,name,work_station,content,require_gender_id,peoples,require_education_id,require_age,salary_id,worktype_id,clicked,created,expire_time) select * from eos_jobs;
replace into pb_keywords(id,title,hits,status) select id,title,clicked,status from eos_keywords;
replace into pb_newses(id,type_id,title,content,source,picture,clicked,created,modified) select id,type_id,title,content,source,picture,clicked,created,modified from eos_newses;
replace into pb_newstypes(id,name,parent_id,created) select id,name,parent_id,created from eos_newstypes;
replace into pb_markets(id,name,content,picture,status,clicked,created) select id,name,content,picture,status,clicked,created from eos_markets;
replace into pb_friendlinks(id,title,logo,url,status,created) select * from eos_links;
insert into pb_areas(id,name,alias_name) select id,name,code_id from eos_areas;
insert into pb_industries(id,name,parent_id,created,modified) select id,name,parentid,created,modified from eos_industries;
replace into pb_helps(id,helptype_id,title,content,created) select id,helptype_id,ha,hb,he from eos_helps;
replace into pb_helptypes(id,title,description,parent_id) select id,ha,hb,hc from eos_helptypes;
replace into pb_services(id,title,content,nick_name,email,user_ip,type_id,status,created,revert_date,revert_content) select id,title,content,nick_name,email,user_ip,type_id,status,created,revert_date,revert_content from eos_services;
UPDATE pb_helptypes SET level=1 WHERE parent_id=0;
UPDATE pb_helptypes SET level=2 WHERE parent_id>0;
replace into pb_messages(id,content) select id,msg_content from eos_messages;
INSERT INTO pb_messages(to_member_id,title,content) SELECT to_member_id,title,content FROM eos_companymessages;
update pb_members set space_name=username;
update pb_companies c,pb_members m set c.cache_spacename=m.space_name where c.member_id=m.id;
update pb_jobs j,pb_members m set j.cache_spacename=m.space_name where j.member_id=m.id;
UPDATE pb_members SET membertype_id=1 WHERE credits=1;
UPDATE pb_members SET membertype_id=2 WHERE credits=2;
UPDATE pb_members SET membergroup_id=8 WHERE membertype_id=1;
UPDATE pb_members SET membergroup_id=9 WHERE membertype_id=2;
update pb_members pm, eos_adminers ea set pm.userpass=ea.user_pass where pm.id=ea.id;
INSERT INTO pb_industries(id,name,parent_id,created,modified) SELECT id,name,parentid,created,modified FROM eos_industries;
DROP TABLE IF EXISTS tmp_industries;
CREATE TEMPORARY TABLE tmp_industries SELECT * FROM eos_industries;
UPDATE pb_industries SET level=2 WHERE parent_id IN (SELECT id FROM tmp_industries WHERE parentid=0);
UPDATE pb_industries SET level=3 WHERE parent_id>0 AND parent_id NOT IN (SELECT id FROM tmp_industries WHERE parentid=0);
UPDATE pb_industries SET top_parentid=0 WHERE parent_id=0;
UPDATE pb_industries SET top_parentid=parent_id WHERE parent_id>0 AND level=2;
UPDATE pb_industries,tmp_industries SET pb_industries.top_parentid=tmp_industries.parentid WHERE pb_industries.level=3 AND pb_industries.parent_id=tmp_industries.id;
update pb_areas set level=2;
update pb_areas set parent_id=0 where INSTR(alias_name,'0000');
REPLACE INTO pb_spacelinks(member_id,company_id,title,url,created) SELECT member_id,company_id,name,url,created FROM eos_companyoutlinks;
REPLACE INTO pb_spacelinks(member_id,company_id,logo,created) SELECT member_id,companyid1,friendlogo,created FROM eos_companylinks;
REPLACE INTO pb_spacelinks(member_id,company_id,logo,created) SELECT member_id,company_id,logo,created FROM eos_memberlinks;
update pb_spacelinks set is_outlink=1 where url!='';
UPDATE pb_industries,tmp_industries SET pb_industries.top_parentid=tmp_industries.parentid WHERE pb_industries.level=3 AND pb_industries.parent_id=tmp_industries.id;
UPDATE pb_products,eos_products,tmp_industries SET pb_products.industry_id1=eos_products.industry_id WHERE tmp_industries.parentid=0 AND tmp_industries.id=eos_products.industry_id AND eos_products.id=pb_products.id;
UPDATE pb_products,eos_areas SET pb_products.area_id1=eos_areas.id WHERE pb_products.area_id1=eos_areas.code_id;
UPDATE pb_products,eos_areas SET pb_products.area_id2=eos_areas.id WHERE pb_products.area_id2=eos_areas.code_id;
UPDATE pb_products,eos_areas SET pb_products.area_id3=eos_areas.id WHERE pb_products.area_id3=eos_areas.code_id;
UPDATE pb_companies,eos_companies SET pb_companies.tel=CONCAT('(',eos_companies.telcode,')',eos_companies.telzone,'-',eos_companies.tel) WHERE
pb_companies.id=eos_companies.id;
UPDATE pb_companies,eos_companies,tmp_industries SET pb_companies.industry_id1=eos_companies.industry_id WHERE tmp_industries.parentid=0 AND tmp_industries.id=eos_companies.industry_id AND eos_companies.id=pb_companies.id;
UPDATE pb_companies,eos_areas SET pb_companies.area_id1=eos_areas.id WHERE pb_companies.area_id1=eos_areas.code_id;
UPDATE pb_companies,eos_areas SET pb_companies.area_id2=eos_areas.id WHERE pb_companies.area_id2=eos_areas.code_id;
UPDATE pb_companies,eos_areas SET pb_companies.area_id3=eos_areas.id WHERE pb_companies.area_id3=eos_areas.code_id;
EOT;
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
$db = new DB_Sql();
define('IN_PHPB2B',true);
if (!defined('DIRECTORY_SEPARATOR')) {
	define('DIRECTORY_SEPARATOR','/');
}
define('DS', DIRECTORY_SEPARATOR);
if (!defined('CACHE_PATH')) {
	define('CACHE_PATH', PHPB2B_ROOT."data".DS."cache".DS);
}
if(!defined('LIB_PATH')) define('LIB_PATH',PHPB2B_ROOT.'libraries'.DS);
$low_version  = array("1.0");
require "languages/".$app_lang."/template.install.inc.php";
if(file_exists(PHPB2B_ROOT.'data/upgrade.lock')) {
	die("Please delete the file data".DS."upgrade.lock and <a href='javascript:;' onclick='window.location.reload();'>refresh</a>!");
}
if (empty($_GET['step'])) {
	init_upgrade();
}
require("libraries/chinese.class.php");
$chinese = new Chinese($charset, "UTF-8");
$dir1 = array('media/market','media/news','media/trades','media/products');
extract($arrTemplate);
$pb_protocol = 'http';
if ( isset( $_SERVER['HTTPS'] ) && ( strtolower( $_SERVER['HTTPS'] ) != 'off' ) ) {
	$pb_protocol = 'https';
}
$PHP_SELF = isset($_SERVER['SCRIPT_NAME']) ? $_SERVER['SCRIPT_NAME'] : preg_replace("/(.*)\.php(.*)/i", "\\1.php", $_SERVER['PHP_SELF']);
$BASESCRIPT = basename($PHP_SELF);
list($BASEFILENAME) = explode('.', $BASESCRIPT);
$siteUrl = htmlspecialchars($pb_protocol."://".$_SERVER['HTTP_HOST'].preg_replace("/\/+(api|wap)?\/*$/i", '', substr($PHP_SELF, 0, strrpos($PHP_SELF, '/'))).'/');
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
function checkform()
{
	if($('#dbname').val()=='')
	{
		alert('请输入数据库名称！');
		$('#dbname').focus();
		return false;
	}
	if($('#email').val()=='')
	{
		alert('请输入E-mail！');
		$('#email').focus();
		return false;
	}
	$('#install').submit();
    return false;
}
function suggestPassword() {
    var pwchars = "abcdefhjmnpqrstuvwxyz23456789ABCDEFGHJKLMNPQRSTUVWYXZ!@#$%^&*()";
    var passwordlength = 8;    // do we want that to be dynamic?  no, keep it simple :)
    var passwd = '';
    for ( i = 0; i < passwordlength; i++ ) {
        passwd += pwchars.charAt( Math.floor( Math.random() * pwchars.length ) )
    }
    return passwd;
}
</script>
</head>
<body>
<div id="main">
<div id="ads">- 行业B2B电子商务网站管理系统</div>
<div id="top"><a href="http://www.phpb2b.com/" target="_blank">官方网站</a>　|　<a href="http://www.phpb2b.com/bbs/" target="_blank">官方论坛</a></div>
<div id="step-title">升级步骤</div>
  <div id="left">
    <ul>
	<?php
	 $steps = array(
    '1'=>'升级须知',
	'2'=>'数据库及网站设置',
    '3'=>'升级完成'
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

switch($step)
{
	case '1':
	?>
	<form id="install" action="upgrade1.php" method="get">
		<div class="content">
		<div id="installdiv">
		  <h3>欢迎您使用PHPB2B升级程序</h3>
		  <ul>
          			<li>
			<p>请选择你要升级的程序版本（一般程序会自动选择）：
			<select name="oldversion" id="dataOldversion">
			<?php
			foreach ($low_version as $key=>$val) {
				echo "<option value='".$val."'";
				if ($val == UALINK_VERSION) {
					echo " selected='selected'";
				}
				echo ">".$val."</option>";
			}
			?>
			</select>至<strong><?php echo PHPB2B_VERSION;?></strong></p>
			<p><br />
			  <font color="yellow">在运行本升级程序之前强烈要求您对原始数据进行备份(例如用phpMyAdmin)，没有的用户请点击<a href="http://download.phpb2b.com/d/tools/phpMyAdmin-latest.zip">这里下载</a>最新版。</font></p>
			<p><br />
			  为了能够顺利完成此次版本升级，您需要将您的<strong>Ualink</strong>版本的数据库设置提前准备好，程序会自动把旧版本的数据导入新版本里面，同时注意以下几点：</p>
			</li>
		    <li>
		      <p><em><strong>1</strong></em>、升级失败或者升级后想还原，请将你备份文件夹外的所有目录删除，然后恢复原有内容即可；</p>
		    </li>
		    <li>
		      <p><em><strong>2</strong></em>、升级程序不会对原有数据做任何改动；</p>
	        </li>
		    <li><em><strong>3</strong></em>、原有程序备份目录名称请设为b2bold或者oldb2b；</li>
		    <li><strong><em>4</em></strong>、<font color="yellow">Mysql版本必须在4.1或者更高版本。</font></li>
		  </ul>
		</div>
		<br />
		<input type="button" class="btn" onClick="$('#install').submit();" value="我明白了 进入下一步" title="点击进入下一步" />
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
		?>
<div class="content">
<form id="install" name="myform" action="upgrade1.php?step=3" method="post">
<table width="100%" cellspacing="1" cellpadding="0" >
<caption>填写数据库信息</caption>
<tr>
<th width="30%" align="right" >数据库主机：</th>
<td><label>
  <input name="dbhost" type="text" id="dbhost" value="" style="width:120px" />
</label></td>
</tr>
<tr>
<th align="right">数据库帐号：</th>
<td><input name="dbuser" type="text" id="dbuser" value="" style="width:120px" /></td>
</tr>
<tr>
<th align="right">数据库密码：</th>
<td><input name="dbpw" type="password" id="dbpw" value="" style="width:120px" /></td>
</tr>
<tr>
<th align="right">数据库名称：</th>
<td><input name="dbname" type="text" id="dbname" value="" style="width:120px" />请填写你安装Ualink版本的数据库名称</td>
</tr>
<tr>
<th align="right">原数据表前缀：</th>
<td><input name="tablepre1" type="text" id="tablepre1" value="" style="width:120px" />  请填写Ualink版本数据表的前缀</td>
</tr>
<tr>
<th align="right">新的数据表前缀：</th>
<td><input name="tablepre2" type="text" id="tablepre2" value="pb_" style="width:120px" />(不要和原数据表前缀相同)</td>
</tr>
<span id='helptablepre'></span></td>
</tr>
</table>

<table width="100%" cellspacing="1" cellpadding="0">
<caption>填写网站信息</caption>
  <tr>
	<th width="30%" align="right">网站地址：</th>
	<td><input name="siteurl" type="text" id="siteurl" value="<?php echo $siteUrl;?>" style="width:120px"/>
		</td>
  </tr>
   <tr>
	<th align="right">通信密钥：</th>
	<td><input name="password_key" type="text" id="password_key" value="" style="width:120px"/><font color="FFFF00">（网站通信密钥，若不填写则系统自动生成一个&nbsp;<a href="javascript:;" onclick="$('#password_key').val(suggestPassword());"><img src="install/images/auth.gif" border="0" /></a>）</font>
	</td>
  </tr>
</table>
</form>
<a href="javascript:history.go(-1);" class="btn">返回上一步：<?php echo $steps[--$step];?></a>
<input type="button" name="completeInstall" onclick="checkform()" class="btn" value="下一步:开始升级" />
</div>
</div>
</div>
</body>
</html>
  <?php
	break;
    case '3':
	$configs['dbhost'] = $dbhost = $_POST['dbhost'];
	$configs['dbuser'] = $dbuser = $_POST['dbuser'];
	$configs['dbpasswd'] = $dbpasswd = $_POST['dbpw'];
	$configs['dbname'] = $dbname = $_POST['dbname'];
	$configs['tb_prefix'] = $tb_prefix = $_POST['tablepre2'];
	$configs['absolute_uri'] = $siteurl = $_POST['siteurl'];
	$old_tablepre = $_POST['tablepre1'];
	$passwordkey = $_POST['password_key'];
	if (empty($passwordkey)) {
		$passwordkey = pb_radom(16);
	}
	$conn = $db->connect($dbname,$dbhost,$dbuser,$dbpasswd);
	runquery($alter_tb,$tb_prefix);
	$update_sql = str_replace('eos_', $old_tablepre, $update_sql);
	$update_sql = str_replace('pb_', $tb_prefix, $update_sql);
    $arrQuery = explode(";", trim($update_sql));
	unset($update_sql);
	foreach($arrQuery as $query) {
        $db->query($query);
	}
	 config_edit($configs);
	 foreach($dir1 as $val){
             if(is_dir($val."/big")) dir_copy1($val."/big","attachment/",1);
		     if(is_dir($val."/small")){
				 dir_copy2($val."/small","attachment/",1,"small");
				 dir_copy2($val."/small","attachment/",1,"middle");
			 }
	 }
	 $db->query("REPLACE INTO {$tb_prefix}settings (variable, valued) VALUES ('install_dateline', '".time()."')");
	 $db->query("REPLACE INTO {$tb_prefix}settings (variable, valued) VALUES ('site_url', '".$siteurl."')");
	 $db->query("REPLACE INTO {$tb_prefix}settings (variable, valued) VALUES ('watertext', '".$siteurl."')");
	 $db->query("REPLACE INTO {$tb_prefix}settings (variable, valued) VALUES ('auth_key', '$passwordkey')");
	 $db->query("REPLACE INTO {$tb_prefix}settings (variable, valued) VALUES ('auth_key', '$passwordkey')");
	 //$aminer_id = 1;
	 //$db->query("REPLACE INTO {$tb_prefix}adminfields (member_id,last_name,created,modified) VALUES ('{$aminer_id}','管理员',".time().",".time().")");
	 $db->free();
		require(PHPB2B_ROOT. "libraries".DS.'adodb'.DS.'adodb.inc.php');
		require(PHPB2B_ROOT. "libraries".DS."cache.class.php");
		$cache = new Caches();
		$pdb = &NewADOConnection($database);
		$conn = $pdb->PConnect($dbhost,$dbuser,$dbpasswd,$dbname);
		if($dbcharset) {
			$pdb->Execute("SET NAMES '{$dbcharset}'");
		}
		$areas = $pdb->GetArray("SELECT alias_name from {$tb_prefix}areas where level=2");
		foreach($areas as $area){
		  $alias_name = $area['alias_name'];
		  $parent_name = substr($area['alias_name'],0,2)."0000";
		  $pdb->Execute("UPDATE {$tb_prefix}areas p,{$old_tablepre}areas e set p.parent_id=e.id where e.code_id='".$parent_name."' and p.alias_name='".$alias_name."'");
		  $pdb->Execute("UPDATE {$tb_prefix}areas set top_parentid=parent_id where alias_name='".$alias_name."'");
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
		
		  </br> </br><p><font size='3'color='yellow'>升级成功后请删除upgrade1.php！</font></p> </br> </br>
		<p>网站前台：<a href="<?php echo $siteurl;?>" target="_blank"><?php echo $siteurl;?></a></p>
		<p>登录商务室：<a href="<?php echo $siteurl;?>logging.php" target="_blank"><?php echo$siteurl;?>logging.php</a></p>
		<p>进入控制台：<a href="<?php echo$siteurl;?>pb-admin/login.php" target="_blank"><?php echo $siteurl;?>pb-admin/login.php</a></p>
	
		</div>
		</div>
		</body>
		</html>
		<?php
		break;
 }
 function runquery($query,$tablepre) {
	global $db, $dbcharset;
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
function config_edit($configs) {
	global $dbcharset;
	if (!is_array($configs)) {
		return;
	}
	extract($configs);
	$configfile = PHPB2B_ROOT. 'configs'.DS.'config.inc.php';
	$configfiles = file_get_contents($configfile);
	$configfiles = trim($configfiles);
	$configfiles = preg_replace("/[$]dbhost\s*\=\s*[\"'].*?[\"'];/is", "\$dbhost = '$dbhost';", $configfiles);
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
function dir_copy2($source, $destination,$child,$type){
	if(!is_dir($destination)){
		mkdir($destination,0777);
	}
	$handle=dir($source);
	while($entry=$handle->read()) {
		if(!in_array($entry, array('.', '..', '.svn'))){
			if(is_dir($source."/".$entry)){
				if($child)    {
					dir_copy2($source."/".$entry,$destination."/".$entry,$child,$type);
				}
			}else{
				$pathinfo = pathinfo($entry);
				copy($source."/".$entry,$destination."/".$entry.".".$type.".".$pathinfo['extension']);
			}
		}
	}
	return true;
}
function dir_copy1($source, $destination, $child = 0){
     if(!is_dir($destination)){  
     	mkdir($destination,0777);  
     }  
     $handle=dir($source);  
     while($entry=$handle->read()) {  
         if(!in_array($entry, array('.', '..', '.svn'))){  
             if(is_dir($source."/".$entry)){  
                 if($child)    {
                 	dir_copy1($source."/".$entry,$destination."/".$entry,$child);  
                 }
             }else{
                 copy($source."/".$entry,$destination."/".$entry);  
             }  
         }  
     }
     return true;  
}
function init_upgrade()
{
	if (is_dir(PHPB2B_ROOT. 'b2bold'.DS)) {
		$old_dir = PHPB2B_ROOT. 'b2bold'.DS;
	}elseif (is_dir(PHPB2B_ROOT. 'oldb2b'.DS)){
		$old_dir = PHPB2B_ROOT. 'oldb2b'.DS;
	}elseif(!empty($_GET['tmpdir']) && is_dir(PHPB2B_ROOT. trim($_GET['tmpdir']).DS)){
		$old_dir = PHPB2B_ROOT. trim($_GET['tmpdir']).DS;
	}else{
		echo '<script type="text/javascript"> 
		function pro() { 
		var tempA=window.prompt("请输入刚才移动的目录名称，如oldb2b", ""); 
		if( tempA=="" || tempA==null ) { 
			alert("不能得到原有目录，请将目录改名为b2bold或者oldb2b，然后刷新");
		}else{
			window.location.href="upgrade2.php?tmpdir="+tempA;
		}
		}
		pro();
		</script>';
	}
	if (!empty($old_dir) && is_dir($old_dir)) {
		if (is_dir($old_dir."app".DS."configs")) {
			dir_copy1($old_dir."app".DS."configs", PHPB2B_ROOT."app".DS."configs");
		}
		if (is_dir($old_dir."media")) {
			dir_copy1($old_dir."media", PHPB2B_ROOT."media", 1);
		}
		if (file_exists($old_dir."version.php")) {
			copy($old_dir."version.php", PHPB2B_ROOT."version.php");
		}
		if (is_dir($old_dir."data")) {
			dir_copy1($old_dir."data", PHPB2B_ROOT."data", 1);
		}
		if (is_dir($old_dir."attachment")) {
			dir_copy1($old_dir."attachment", PHPB2B_ROOT."attachment", 1);
		}
	}
}
?> 