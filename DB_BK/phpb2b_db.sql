/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.0.51b-community-nt-log : Database - phpb2b_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `pb_adminfields` */

DROP TABLE IF EXISTS `pb_adminfields`;

CREATE TABLE `pb_adminfields` (
  `member_id` int(10) NOT NULL default '-1',
  `depart_id` tinyint(1) NOT NULL default '0',
  `first_name` varchar(25) NOT NULL default '',
  `last_name` varchar(25) NOT NULL default '',
  `level` tinyint(1) NOT NULL default '0',
  `last_login` int(10) NOT NULL default '0',
  `last_ip` varchar(25) NOT NULL default '',
  `expired` int(10) NOT NULL default '0',
  `permissions` text NOT NULL,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_adminfields` */

insert  into `pb_adminfields`(`member_id`,`depart_id`,`first_name`,`last_name`,`level`,`last_login`,`last_ip`,`expired`,`permissions`,`created`,`modified`) values (1,0,'','administrator',0,1361622196,'127.0.0.1',0,'',1361622111,1361622111);

/*Table structure for table `pb_adminmodules` */

DROP TABLE IF EXISTS `pb_adminmodules`;

CREATE TABLE `pb_adminmodules` (
  `id` smallint(3) NOT NULL auto_increment,
  `parent_id` smallint(3) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_adminmodules` */

/*Table structure for table `pb_adminnotes` */

DROP TABLE IF EXISTS `pb_adminnotes`;

CREATE TABLE `pb_adminnotes` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `content` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_adminnotes` */

/*Table structure for table `pb_adminprivileges` */

DROP TABLE IF EXISTS `pb_adminprivileges`;

CREATE TABLE `pb_adminprivileges` (
  `id` int(5) NOT NULL auto_increment,
  `adminmodule_id` int(5) NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_adminprivileges` */

/*Table structure for table `pb_adminroles` */

DROP TABLE IF EXISTS `pb_adminroles`;

CREATE TABLE `pb_adminroles` (
  `id` tinyint(2) NOT NULL auto_increment,
  `name` varchar(25) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_adminroles` */

/*Table structure for table `pb_adses` */

DROP TABLE IF EXISTS `pb_adses`;

CREATE TABLE `pb_adses` (
  `id` smallint(6) NOT NULL auto_increment,
  `adzone_id` smallint(3) NOT NULL default '0',
  `title` varchar(50) NOT NULL default '',
  `description` text,
  `is_image` tinyint(1) NOT NULL default '1',
  `source_name` varchar(100) NOT NULL default '',
  `source_type` varchar(100) NOT NULL default '',
  `source_url` varchar(255) NOT NULL default '',
  `target_url` varchar(255) NOT NULL default '',
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `pb_adses` */

insert  into `pb_adses`(`id`,`adzone_id`,`title`,`description`,`is_image`,`source_name`,`source_type`,`source_url`,`target_url`,`width`,`height`,`alt_words`,`start_date`,`end_date`,`priority`,`clicked`,`target`,`seq`,`state`,`status`,`picture_replace`,`created`,`modified`) values (1,1,'GIF','Sample Ad 1',1,'','image/gif','attachment/sample/default/blue.gif','',152,52,'',0,0,0,1,'_blank',0,1,1,'',1361622118,1361622118),(2,1,'JPG','Sample Ad 2',1,'','image/gif','attachment/sample/default/blue.gif','',152,52,'',0,0,0,1,'_blank',0,1,1,'',1361622118,1361622118),(3,1,'PNG','Sample Ad 3',1,'','image/gif','attachment/sample/default/blue.gif','',152,52,'',0,0,0,1,'_blank',0,1,1,'',1361622118,1361622118),(4,1,'Sample Ad 4','',1,'','image/gif','attachment/sample/default/blue.gif','',152,52,'',0,0,0,1,'_blank',0,1,1,'',1361622118,1361622118),(5,1,'Sample Ad 5','PNG',1,'','image/gif','attachment/sample/default/blue.gif','',152,52,'',0,0,0,1,'_blank',0,1,1,'',1361622118,1361622118),(6,1,'Sample Ad 6','',1,'','image/gif','attachment/sample/default/blue.gif','',152,52,'',0,0,0,1,'_blank',0,1,1,'',1361622118,1361622118),(7,2,'Sample Ad','',1,'','image/pjpeg','attachment/sample/example_958.jpg','http://www.phpb2b.com',958,62,'',0,0,0,1,'_blank',0,1,1,'attachment/sample/example_958.jpg',1361622118,1361622118),(8,3,'Trade AD','',1,'','image/pjpeg','attachment/sample/breathe-offer1.jpg','',477,170,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(9,3,'Welcome Register','Register',1,'','image/pjpeg','attachment/sample/breathe-offer2.jpg','',477,170,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(15,4,'product index banner','',1,'','image/pjpeg','attachment/sample/breathe-product1.jpg','',500,200,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1303735837),(16,5,'index page banner','',1,'','image/pjpeg','attachment/sample/breathe-index1.jpg','',500,200,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(18,4,'register banner','',1,'','image/pjpeg','attachment/sample/breathe-product2.jpg','',570,170,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(17,5,'member banner','asdf',1,'','image/pjpeg','attachment/sample/breathe-index2.jpg','',500,200,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(19,6,'special banner sample 1','sample',1,'','image/pjpeg','attachment/sample/144x120.png','http://www.phpb2b.com/',500,200,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(20,6,'special banner 2',NULL,1,'','image/pjpeg','attachment/sample/144x120.png','http://www.phpb2b.com/',500,200,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(21,6,'special banner 3',NULL,1,'','image/pjpeg','attachment/sample/144x120.png','http://www.phpb2b.com/',500,200,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118),(24,7,'community','',1,'','image/pjpeg','attachment/sample/phpb2b.jpg','http://bbs.phpb2b.com/',220,82,'',0,0,0,1,'_blank',0,1,1,'images/nopicture_small.gif',1361622118,1361622118);

/*Table structure for table `pb_adzones` */

DROP TABLE IF EXISTS `pb_adzones`;

CREATE TABLE `pb_adzones` (
  `id` smallint(6) NOT NULL auto_increment,
  `membergroup_ids` varchar(50) NOT NULL default '',
  `what` varchar(10) NOT NULL default '',
  `style` tinyint(1) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `description` text,
  `additional_adwords` text,
  `price` float(9,2) NOT NULL default '0.00',
  `file_name` varchar(100) NOT NULL default '',
  `width` smallint(6) NOT NULL default '0',
  `height` smallint(6) NOT NULL default '0',
  `wrap` smallint(6) NOT NULL default '0',
  `max_ad` smallint(6) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `pb_adzones` */

insert  into `pb_adzones`(`id`,`membergroup_ids`,`what`,`style`,`name`,`description`,`additional_adwords`,`price`,`file_name`,`width`,`height`,`wrap`,`max_ad`,`created`,`modified`) values (1,'8,9','1',0,'index page top banner','','',1000.00,'index.php',760,52,6,12,1361622118,1361622118),(2,'0','1',0,'index banner','','',3000.00,'index.php',958,62,0,0,1361622118,1361622118),(3,'','1',1,'offer page banner','','',1000.00,'',380,270,0,0,1361622118,1361622118),(4,'','1',1,'product page banner','','',0.01,'',570,170,0,0,1361622118,1361622118),(5,'0','1',1,'index page big banner','','',0.01,'',473,170,0,0,1361622118,1361622118),(6,'','1',0,'special page left banner','','',0.00,'',0,0,0,0,1361622118,1361622118),(7,'','1',0,'Community','PHPB2B community','',0.00,'',0,0,0,0,1361622118,1361622118);

/*Table structure for table `pb_albums` */

DROP TABLE IF EXISTS `pb_albums`;

CREATE TABLE `pb_albums` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `attachment_id` int(10) NOT NULL default '0',
  `type_id` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_albums` */

/*Table structure for table `pb_albumtypes` */

DROP TABLE IF EXISTS `pb_albumtypes`;

CREATE TABLE `pb_albumtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_albumtypes` */

insert  into `pb_albumtypes`(`id`,`name`,`display_order`) values (1,'Albums',0),(2,'Products',0),(3,'Advertisement',0);

/*Table structure for table `pb_announcements` */

DROP TABLE IF EXISTS `pb_announcements`;

CREATE TABLE `pb_announcements` (
  `id` smallint(6) unsigned NOT NULL auto_increment,
  `announcetype_id` smallint(3) NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text,
  `display_order` tinyint(1) NOT NULL default '0',
  `display_expiration` int(10) unsigned NOT NULL default '0',
  `created` int(10) unsigned NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `pb_announcements` */

insert  into `pb_announcements`(`id`,`announcetype_id`,`subject`,`message`,`display_order`,`display_expiration`,`created`,`modified`) values (4,1,'How to build your shop',NULL,0,0,1361622118,0),(3,2,'Service Introduction',NULL,0,0,1361622118,0),(2,1,'Upload your company info',NULL,0,0,1361622118,0),(1,1,'The world expo ','Shanghai world expo',0,0,1361622118,0);

/*Table structure for table `pb_announcementtypes` */

DROP TABLE IF EXISTS `pb_announcementtypes`;

CREATE TABLE `pb_announcementtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_announcementtypes` */

insert  into `pb_announcementtypes`(`id`,`name`) values (1,'Site Announce'),(2,'Site Ads');

/*Table structure for table `pb_areas` */

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
) ENGINE=MyISAM AUTO_INCREMENT=1943 DEFAULT CHARSET=utf8;

/*Data for the table `pb_areas` */

insert  into `pb_areas`(`id`,`attachment_id`,`areatype_id`,`child_ids`,`top_parentid`,`level`,`name`,`url`,`alias_name`,`highlight`,`parent_id`,`display_order`,`description`,`available`,`created`,`modified`) values (1,0,1,NULL,0,1,'[:en-us]Beijing[:zh-cn]北京','','',0,0,0,NULL,1,0,0),(2,0,1,NULL,0,1,'[:en-us]Tianjin[:zh-cn]天津','','',0,0,0,NULL,1,0,0),(3,0,1,NULL,0,1,'[:en-us]Hebei[:zh-cn]河北','','',0,0,0,NULL,1,0,0),(4,0,1,NULL,0,1,'[:en-us]Shanxi[:zh-cn]山西','','',0,0,0,NULL,1,0,0),(5,0,1,NULL,0,1,'[:en-us]Neimenggu[:zh-cn]内蒙古','','',0,0,0,NULL,1,0,0),(6,0,1,NULL,0,1,'[:en-us]Liaoning[:zh-cn]辽宁','','',0,0,0,NULL,1,0,0),(7,0,1,NULL,0,1,'[:en-us]Jilin[:zh-cn]吉林','','',0,0,0,NULL,1,0,0),(8,0,1,NULL,0,1,'[:en-us]Heilongjiang[:zh-cn]黑龙江','','',0,0,0,NULL,1,0,0),(9,0,1,NULL,0,1,'[:en-us]Shanghai[:zh-cn]上海','','',0,0,0,NULL,1,0,0),(10,0,1,NULL,0,1,'[:en-us]Jiangsu[:zh-cn]江苏','','',0,0,0,NULL,1,0,0),(11,0,1,NULL,0,1,'[:en-us]zhejiang[:zh-cn]浙江','','',0,0,0,NULL,1,0,0),(12,0,1,NULL,0,1,'[:en-us]Anhui[:zh-cn]安徽','','',0,0,0,NULL,1,0,0),(13,0,1,NULL,0,1,'[:en-us]Fujian[:zh-cn]福建','','',0,0,0,NULL,1,0,0),(14,0,1,NULL,0,1,'[:en-us]Jiangxi[:zh-cn]江西','','',0,0,0,NULL,1,0,0),(15,0,1,NULL,0,1,'[:en-us]Shandong[:zh-cn]山东','','',0,0,0,NULL,1,0,0),(16,0,1,NULL,0,1,'[:en-us]Henan[:zh-cn]河南','','',0,0,0,NULL,1,0,0),(17,0,1,NULL,0,1,'[:en-us]Hubei[:zh-cn]湖北','','',0,0,0,NULL,1,0,0),(18,0,1,NULL,0,1,'[:en-us]Hunan[:zh-cn]湖南','','',0,0,0,NULL,1,0,0),(19,0,1,NULL,0,1,'[:en-us]Guangdong[:zh-cn]广东','','',0,0,0,NULL,1,0,0),(20,0,1,NULL,0,1,'[:en-us]Guangxi[:zh-cn]广西','','',0,0,0,NULL,1,0,0),(21,0,1,NULL,0,1,'[:en-us]Hainan[:zh-cn]海南','','',0,0,0,NULL,1,0,0),(22,0,1,NULL,0,1,'[:en-us]Chongqing[:zh-cn]重庆','','',0,0,0,NULL,1,0,0),(23,0,1,NULL,0,1,'[:en-us]Sichuan[:zh-cn]四川','','',0,0,0,NULL,1,0,0),(24,0,1,NULL,0,1,'[:en-us]Guizhou[:zh-cn]贵州','','',0,0,0,NULL,1,0,0),(25,0,1,NULL,0,1,'[:en-us]Yunnan[:zh-cn]云南','','',0,0,0,NULL,1,0,0),(26,0,1,NULL,0,1,'[:en-us]Xizang[:zh-cn]西藏','','',0,0,0,NULL,1,0,0),(27,0,1,NULL,0,1,'[:en-us]Shanxi[:zh-cn]陕西','','',0,0,0,NULL,1,0,0),(28,0,1,NULL,0,1,'[:en-us]Gansu[:zh-cn]甘肃','','',0,0,0,NULL,1,0,0),(29,0,1,NULL,0,1,'[:en-us]Qinghai[:zh-cn]青海','','',0,0,0,NULL,1,0,0),(30,0,1,NULL,0,1,'[:en-us]Ningxia[:zh-cn]宁夏','','',0,0,0,NULL,1,0,0),(31,0,1,NULL,0,1,'[:en-us]Xinjiang[:zh-cn]新疆','','',0,0,0,NULL,1,0,0),(32,0,1,NULL,0,1,'[:en-us]Taiwan[:zh-cn]台湾','','',0,0,0,NULL,1,0,0),(33,0,1,NULL,0,1,'[:en-us]Xianggang[:zh-cn]香港','','',0,0,0,NULL,1,0,0),(34,0,1,NULL,0,1,'[:en-us]Aomen[:zh-cn]澳门','','',0,0,0,NULL,1,0,0),(35,0,1,NULL,1,2,'[:en-us]Municipal[:zh-cn]市辖区','','',0,1,0,NULL,1,0,0),(36,0,1,NULL,1,2,'[:en-us]Country[:zh-cn]县','','',0,1,0,NULL,1,0,0),(37,0,1,NULL,2,2,'[:en-us]Municipal[:zh-cn]市辖区','','',0,2,0,NULL,1,0,0),(38,0,1,NULL,2,2,'[:en-us]Country[:zh-cn]县','','',0,2,0,NULL,1,0,0),(39,0,1,NULL,3,2,'[:en-us]Shijiazhuang[:zh-cn]石家庄市','','',0,3,0,NULL,1,0,0),(40,0,1,NULL,3,2,'[:en-us]Tangshan[:zh-cn]唐山市','','',0,3,0,NULL,1,0,0),(41,0,1,NULL,3,2,'[:en-us]Qinhuangdao[:zh-cn]秦皇岛市','','',0,3,0,NULL,1,0,0),(42,0,1,NULL,3,2,'[:en-us]Handan[:zh-cn]邯郸市','','',0,3,0,NULL,1,0,0),(43,0,1,NULL,3,2,'[:en-us]Xingtai[:zh-cn]邢台市','','',0,3,0,NULL,1,0,0),(44,0,1,NULL,3,2,'[:en-us]Baoding[:zh-cn]保定市','','',0,3,0,NULL,1,0,0),(45,0,1,NULL,3,2,'[:en-us]Zhangjiakou[:zh-cn]张家口市','','',0,3,0,NULL,1,0,0),(46,0,1,NULL,3,2,'[:en-us]Chengde[:zh-cn]承德市','','',0,3,0,NULL,1,0,0),(47,0,1,NULL,3,2,'[:en-us]Cangzhou[:zh-cn]沧州市','','',0,3,0,NULL,1,0,0),(48,0,1,NULL,3,2,'[:en-us]Langfang[:zh-cn]廊坊市','','',0,3,0,NULL,1,0,0),(49,0,1,NULL,3,2,'[:en-us]Hengshui[:zh-cn]衡水市','','',0,3,0,NULL,1,0,0),(50,0,1,NULL,4,2,'[:en-us]Taiyuan[:zh-cn]太原市','','',0,4,0,NULL,1,0,0),(51,0,1,NULL,4,2,'[:en-us]Datong[:zh-cn]大同市','','',0,4,0,NULL,1,0,0),(52,0,1,NULL,4,2,'[:en-us]Yangquan[:zh-cn]阳泉市','','',0,4,0,NULL,1,0,0),(53,0,1,NULL,4,2,'[:en-us]Changzhi[:zh-cn]长治市','','',0,4,0,NULL,1,0,0),(54,0,1,NULL,4,2,'[:en-us]Jincheng[:zh-cn]晋城市','','',0,4,0,NULL,1,0,0),(55,0,1,NULL,4,2,'[:en-us]Shuozhou[:zh-cn]朔州市','','',0,4,0,NULL,1,0,0),(56,0,1,NULL,4,2,'[:en-us]Jinzhong[:zh-cn]晋中市','','',0,4,0,NULL,1,0,0),(57,0,1,NULL,4,2,'[:en-us]Yuncheng[:zh-cn]运城市','','',0,4,0,NULL,1,0,0),(58,0,1,NULL,4,2,'[:en-us]Xinzhou[:zh-cn]忻州市','','',0,4,0,NULL,1,0,0),(59,0,1,NULL,4,2,'[:en-us]Linfen[:zh-cn]临汾市','','',0,4,0,NULL,1,0,0),(60,0,1,NULL,4,2,'[:en-us]Luliang[:zh-cn]吕梁市','','',0,4,0,NULL,1,0,0),(61,0,1,NULL,5,2,'[:en-us]Huhehaote[:zh-cn]呼和浩特市','','',0,5,0,NULL,1,0,0),(62,0,1,NULL,5,2,'[:en-us]Baotou[:zh-cn]包头市','','',0,5,0,NULL,1,0,0),(63,0,1,NULL,5,2,'[:en-us]Wuhai[:zh-cn]乌海市','','',0,5,0,NULL,1,0,0),(64,0,1,NULL,5,2,'[:en-us]Chifeng[:zh-cn]赤峰市','','',0,5,0,NULL,1,0,0),(65,0,1,NULL,5,2,'[:en-us]Tongliao[:zh-cn]通辽市','','',0,5,0,NULL,1,0,0),(66,0,1,NULL,5,2,'[:en-us]Eerduosi[:zh-cn]鄂尔多斯市','','',0,5,0,NULL,1,0,0),(67,0,1,NULL,5,2,'[:en-us]Hulunbeier[:zh-cn]呼伦贝尔市','','',0,5,0,NULL,1,0,0),(68,0,1,NULL,5,2,'[:en-us]Bayanzhaer[:zh-cn]巴彦淖尔市','','',0,5,0,NULL,1,0,0),(69,0,1,NULL,5,2,'[:en-us]Wulanchabu[:zh-cn]乌兰察布市','','',0,5,0,NULL,1,0,0),(70,0,1,NULL,5,2,'[:en-us]Xingwangmeng[:zh-cn]兴安盟','','',0,5,0,NULL,1,0,0),(71,0,1,NULL,5,2,'[:en-us]Xilinguolemeng[:zh-cn]锡林郭勒盟','','',0,5,0,NULL,1,0,0),(72,0,1,NULL,5,2,'[:en-us]Alashanmeng[:zh-cn]阿拉善盟','','',0,5,0,NULL,1,0,0),(73,0,1,NULL,6,2,'[:en-us]Shenyang[:zh-cn]沈阳市','','',0,6,0,NULL,1,0,0),(74,0,1,NULL,6,2,'[:en-us]Dalian[:zh-cn]大连市','','',0,6,0,NULL,1,0,0),(75,0,1,NULL,6,2,'[:en-us]Anshang[:zh-cn]鞍山市','','',0,6,0,NULL,1,0,0),(76,0,1,NULL,6,2,'[:en-us]Fushun[:zh-cn]抚顺市','','',0,6,0,NULL,1,0,0),(77,0,1,NULL,6,2,'[:en-us]Benxi[:zh-cn]本溪市','','',0,6,0,NULL,1,0,0),(78,0,1,NULL,6,2,'[:en-us]Dandong[:zh-cn]丹东市','','',0,6,0,NULL,1,0,0),(79,0,1,NULL,6,2,'[:en-us]Jinzhou[:zh-cn]锦州市','','',0,6,0,NULL,1,0,0),(80,0,1,NULL,6,2,'[:en-us]Yingkou[:zh-cn]营口市','','',0,6,0,NULL,1,0,0),(81,0,1,NULL,6,2,'[:en-us]Puxin[:zh-cn]阜新市','','',0,6,0,NULL,1,0,0),(82,0,1,NULL,6,2,'[:en-us]Liaoyang[:zh-cn]辽阳市','','',0,6,0,NULL,1,0,0),(83,0,1,NULL,6,2,'[:en-us]Panjin[:zh-cn]盘锦市','','',0,6,0,NULL,1,0,0),(84,0,1,NULL,6,2,'[:en-us]Tieling[:zh-cn]铁岭市','','',0,6,0,NULL,1,0,0),(85,0,1,NULL,6,2,'[:en-us]Zhaoyang[:zh-cn]朝阳市','','',0,6,0,NULL,1,0,0),(86,0,1,NULL,6,2,'[:en-us]Huludao[:zh-cn]葫芦岛市','','',0,6,0,NULL,1,0,0),(87,0,1,NULL,7,2,'[:en-us]Changchun[:zh-cn]长春市','','',0,7,0,NULL,1,0,0),(88,0,1,NULL,7,2,'[:en-us]Jilin[:zh-cn]吉林市','','',0,7,0,NULL,1,0,0),(89,0,1,NULL,7,2,'[:en-us]Siping[:zh-cn]四平市','','',0,7,0,NULL,1,0,0),(90,0,1,NULL,7,2,'[:en-us]Liaoyuan[:zh-cn]辽源市','','',0,7,0,NULL,1,0,0),(91,0,1,NULL,7,2,'[:en-us]Tonghua[:zh-cn]通化市','','',0,7,0,NULL,1,0,0),(92,0,1,NULL,7,2,'[:en-us]Baishan[:zh-cn]白山市','','',0,7,0,NULL,1,0,0),(93,0,1,NULL,7,2,'[:en-us]Songyuan[:zh-cn]松原市','','',0,7,0,NULL,1,0,0),(94,0,1,NULL,7,2,'[:en-us]Baicheng[:zh-cn]白城市','','',0,7,0,NULL,1,0,0),(95,0,1,NULL,7,2,'[:en-us]Yanbianchaoxianzuzizhizhou[:zh-cn]延边朝鲜族自治州','','',0,7,0,NULL,1,0,0),(96,0,1,NULL,8,2,'[:en-us]Haerbin[:zh-cn]哈尔滨市','','',0,8,0,NULL,1,0,0),(97,0,1,NULL,8,2,'[:en-us]Qiqihaer[:zh-cn]齐齐哈尔市','','',0,8,0,NULL,1,0,0),(98,0,1,NULL,8,2,'[:en-us]Jixi[:zh-cn]鸡西市','','',0,8,0,NULL,1,0,0),(99,0,1,NULL,8,2,'[:en-us]Hegang[:zh-cn]鹤岗市','','',0,8,0,NULL,1,0,0),(100,0,1,NULL,8,2,'[:en-us]Shuangyashang[:zh-cn]双鸭山市','','',0,8,0,NULL,1,0,0),(101,0,1,NULL,8,2,'[:en-us]Daqing[:zh-cn]大庆市','','',0,8,0,NULL,1,0,0),(102,0,1,NULL,8,2,'[:en-us]Yichun[:zh-cn]伊春市','','',0,8,0,NULL,1,0,0),(103,0,1,NULL,8,2,'[:en-us]Jamusi[:zh-cn]佳木斯市','','',0,8,0,NULL,1,0,0),(104,0,1,NULL,8,2,'[:en-us]Qitaihe[:zh-cn]七台河市','','',0,8,0,NULL,1,0,0),(105,0,1,NULL,8,2,'[:en-us]Mudanjiang[:zh-cn]牡丹江市','','',0,8,0,NULL,1,0,0),(106,0,1,NULL,8,2,'[:en-us]Heihe[:zh-cn]黑河市','','',0,8,0,NULL,1,0,0),(107,0,1,NULL,8,2,'[:en-us]Suihua[:zh-cn]绥化市','','',0,8,0,NULL,1,0,0),(108,0,1,NULL,8,2,'[:en-us]Daxinganling[:zh-cn]大兴安岭地区','','',0,8,0,NULL,1,0,0),(109,0,1,NULL,9,2,'[:en-us]Municipal[:zh-cn]市辖区','','',0,9,0,NULL,1,0,0),(110,0,1,NULL,9,2,'[:en-us]Country[:zh-cn]县','','',0,9,0,NULL,1,0,0),(111,0,1,NULL,10,2,'[:en-us]Nanjing[:zh-cn]南京市','','',0,10,0,NULL,1,0,0),(112,0,1,NULL,10,2,'[:en-us]Wuxi[:zh-cn]无锡市','','',0,10,0,NULL,1,0,0),(113,0,1,NULL,10,2,'[:en-us]Xuzhou[:zh-cn]徐州市','','',0,10,0,NULL,1,0,0),(114,0,1,NULL,10,2,'[:en-us]Changzhou[:zh-cn]常州市','','',0,10,0,NULL,1,0,0),(115,0,1,NULL,10,2,'[:en-us]Suzhou[:zh-cn]苏州市','','',0,10,0,NULL,1,0,0),(116,0,1,NULL,10,2,'[:en-us]Nantong[:zh-cn]南通市','','',0,10,0,NULL,1,0,0),(117,0,1,NULL,10,2,'[:en-us]Lianyungang[:zh-cn]连云港市','','',0,10,0,NULL,1,0,0),(118,0,1,NULL,10,2,'[:en-us]Huainan[:zh-cn]淮安市','','',0,10,0,NULL,1,0,0),(119,0,1,NULL,10,2,'[:en-us]Yancheng[:zh-cn]盐城市','','',0,10,0,NULL,1,0,0),(120,0,1,NULL,10,2,'[:en-us]Yangzhou[:zh-cn]扬州市','','',0,10,0,NULL,1,0,0),(121,0,1,NULL,10,2,'[:en-us]Zhenjiang[:zh-cn]镇江市','','',0,10,0,NULL,1,0,0),(122,0,1,NULL,10,2,'[:en-us]Taizhou[:zh-cn]泰州市','','',0,10,0,NULL,1,0,0),(123,0,1,NULL,10,2,'[:en-us]Suqian[:zh-cn]宿迁市','','',0,10,0,NULL,1,0,0),(124,0,1,NULL,11,2,'[:en-us]Hangzhou[:zh-cn]杭州市','','',0,11,0,NULL,1,0,0),(125,0,1,NULL,11,2,'[:en-us]Ningbo[:zh-cn]宁波市','','',0,11,0,NULL,1,0,0),(126,0,1,NULL,11,2,'[:en-us]Wenzhou[:zh-cn]温州市','','',0,11,0,NULL,1,0,0),(127,0,1,NULL,11,2,'[:en-us]Jiaxing[:zh-cn]嘉兴市','','',0,11,0,NULL,1,0,0),(128,0,1,NULL,11,2,'[:en-us]Huzhou[:zh-cn]湖州市','','',0,11,0,NULL,1,0,0),(129,0,1,NULL,11,2,'[:en-us]Shaoxing[:zh-cn]绍兴市','','',0,11,0,NULL,1,0,0),(130,0,1,NULL,11,2,'[:en-us]Jinhua[:zh-cn]金华市','','',0,11,0,NULL,1,0,0),(131,0,1,NULL,11,2,'[:en-us]Quzhou[:zh-cn]衢州市','','',0,11,0,NULL,1,0,0),(132,0,1,NULL,11,2,'[:en-us]Zhoushang[:zh-cn]舟山市','','',0,11,0,NULL,1,0,0),(133,0,1,NULL,11,2,'[:en-us]Taizhou[:zh-cn]台州市','','',0,11,0,NULL,1,0,0),(134,0,1,NULL,11,2,'[:en-us]Lishui[:zh-cn]丽水市','','',0,11,0,NULL,1,0,0),(135,0,1,NULL,12,2,'[:en-us]Hefei[:zh-cn]合肥市','','',0,12,0,NULL,1,0,0),(136,0,1,NULL,12,2,'[:en-us]Wuzhou[:zh-cn]芜湖市','','',0,12,0,NULL,1,0,0),(137,0,1,NULL,12,2,'[:en-us]Bengbu[:zh-cn]蚌埠市','','',0,12,0,NULL,1,0,0),(138,0,1,NULL,12,2,'[:en-us]Huainan[:zh-cn]淮南市','','',0,12,0,NULL,1,0,0),(139,0,1,NULL,12,2,'[:en-us]Maanshang[:zh-cn]马鞍山市','','',0,12,0,NULL,1,0,0),(140,0,1,NULL,12,2,'[:en-us]Huaibei[:zh-cn]淮北市','','',0,12,0,NULL,1,0,0),(141,0,1,NULL,12,2,'[:en-us]Tongling[:zh-cn]铜陵市','','',0,12,0,NULL,1,0,0),(142,0,1,NULL,12,2,'[:en-us]Anqing[:zh-cn]安庆市','','',0,12,0,NULL,1,0,0),(143,0,1,NULL,12,2,'[:en-us]Huangshan[:zh-cn]黄山市','','',0,12,0,NULL,1,0,0),(144,0,1,NULL,12,2,'[:en-us]Chuzhou[:zh-cn]滁州市','','',0,12,0,NULL,1,0,0),(145,0,1,NULL,12,2,'[:en-us]Fuyang[:zh-cn]阜阳市','','',0,12,0,NULL,1,0,0),(146,0,1,NULL,12,2,'[:en-us]Suzhou[:zh-cn]宿州市','','',0,12,0,NULL,1,0,0),(147,0,1,NULL,12,2,'[:en-us]Chaohu[:zh-cn]巢湖市','','',0,12,0,NULL,1,0,0),(148,0,1,NULL,12,2,'[:en-us]Liuan[:zh-cn]六安市','','',0,12,0,NULL,1,0,0),(149,0,1,NULL,12,2,'[:en-us]Haozhou[:zh-cn]亳州市','','',0,12,0,NULL,1,0,0),(150,0,1,NULL,12,2,'[:en-us]Chizhou[:zh-cn]池州市','','',0,12,0,NULL,1,0,0),(151,0,1,NULL,12,2,'[:en-us]Yicheng[:zh-cn]宣城市','','',0,12,0,NULL,1,0,0),(152,0,1,NULL,13,2,'[:en-us]Fuzhou[:zh-cn]福州市','','',0,13,0,NULL,1,0,0),(153,0,1,NULL,13,2,'[:en-us]Xiamen[:zh-cn]厦门市','','',0,13,0,NULL,1,0,0),(154,0,1,NULL,13,2,'[:en-us]Putian[:zh-cn]莆田市','','',0,13,0,NULL,1,0,0),(155,0,1,NULL,13,2,'[:en-us]Sanming[:zh-cn]三明市','','',0,13,0,NULL,1,0,0),(156,0,1,NULL,13,2,'[:en-us]Quanzhou[:zh-cn]泉州市','','',0,13,0,NULL,1,0,0),(157,0,1,NULL,13,2,'[:en-us]Zhangzhou[:zh-cn]漳州市','','',0,13,0,NULL,1,0,0),(158,0,1,NULL,13,2,'[:en-us]Nanping[:zh-cn]南平市','','',0,13,0,NULL,1,0,0),(159,0,1,NULL,13,2,'[:en-us]Longyan[:zh-cn]龙岩市','','',0,13,0,NULL,1,0,0),(160,0,1,NULL,13,2,'[:en-us]Ningde[:zh-cn]宁德市','','',0,13,0,NULL,1,0,0),(161,0,1,NULL,14,2,'[:en-us]Nanchang[:zh-cn]南昌市','','',0,14,0,NULL,1,0,0),(162,0,1,NULL,14,2,'[:en-us]Jingdezhen[:zh-cn]景德镇市','','',0,14,0,NULL,1,0,0),(163,0,1,NULL,14,2,'[:en-us]Pingxiang[:zh-cn]萍乡市','','',0,14,0,NULL,1,0,0),(164,0,1,NULL,14,2,'[:en-us]Jiujiang[:zh-cn]九江市','','',0,14,0,NULL,1,0,0),(165,0,1,NULL,14,2,'[:en-us]Xinyu[:zh-cn]新余市','','',0,14,0,NULL,1,0,0),(166,0,1,NULL,14,2,'[:en-us]Yingtan[:zh-cn]鹰潭市','','',0,14,0,NULL,1,0,0),(167,0,1,NULL,14,2,'[:en-us]Ganzhou[:zh-cn]赣州市','','',0,14,0,NULL,1,0,0),(168,0,1,NULL,14,2,'[:en-us]Jian[:zh-cn]吉安市','','',0,14,0,NULL,1,0,0),(169,0,1,NULL,14,2,'[:en-us]Yichun[:zh-cn]宜春市','','',0,14,0,NULL,1,0,0),(170,0,1,NULL,14,2,'[:en-us]Fuzhou[:zh-cn]抚州市','','',0,14,0,NULL,1,0,0),(171,0,1,NULL,14,2,'[:en-us]Shangrao[:zh-cn]上饶市','','',0,14,0,NULL,1,0,0),(172,0,1,NULL,15,2,'[:en-us]Jinan[:zh-cn]济南市','','',0,15,0,NULL,1,0,0),(173,0,1,NULL,15,2,'[:en-us]Qingdao[:zh-cn]青岛市','','',0,15,0,NULL,1,0,0),(174,0,1,NULL,15,2,'[:en-us]Zibo[:zh-cn]淄博市','','',0,15,0,NULL,1,0,0),(175,0,1,NULL,15,2,'[:en-us]Zaozhuang[:zh-cn]枣庄市','','',0,15,0,NULL,1,0,0),(176,0,1,NULL,15,2,'[:en-us]Dongying[:zh-cn]东营市','','',0,15,0,NULL,1,0,0),(177,0,1,NULL,15,2,'[:en-us]Yantai[:zh-cn]烟台市','','',0,15,0,NULL,1,0,0),(178,0,1,NULL,15,2,'[:en-us]Weifang[:zh-cn]潍坊市','','',0,15,0,NULL,1,0,0),(179,0,1,NULL,15,2,'[:en-us]Jining[:zh-cn]济宁市','','',0,15,0,NULL,1,0,0),(180,0,1,NULL,15,2,'[:en-us]Taian[:zh-cn]泰安市','','',0,15,0,NULL,1,0,0),(181,0,1,NULL,15,2,'[:en-us]Weihai[:zh-cn]威海市','','',0,15,0,NULL,1,0,0),(182,0,1,NULL,15,2,'[:en-us]Rizhao[:zh-cn]日照市','','',0,15,0,NULL,1,0,0),(183,0,1,NULL,15,2,'[:en-us]Laiwu[:zh-cn]莱芜市','','',0,15,0,NULL,1,0,0),(184,0,1,NULL,15,2,'[:en-us]Linyi[:zh-cn]临沂市','','',0,15,0,NULL,1,0,0),(185,0,1,NULL,15,2,'[:en-us]Dezhou[:zh-cn]德州市','','',0,15,0,NULL,1,0,0),(186,0,1,NULL,15,2,'[:en-us]Liaocheng[:zh-cn]聊城市','','',0,15,0,NULL,1,0,0),(187,0,1,NULL,15,2,'[:en-us]Binzhou[:zh-cn]滨州市','','',0,15,0,NULL,1,0,0),(188,0,1,NULL,15,2,'[:en-us]Heze[:zh-cn]荷泽市','','',0,15,0,NULL,1,0,0),(189,0,1,NULL,16,2,'[:en-us]Zhengzhou[:zh-cn]郑州市','','',0,16,0,NULL,1,0,0),(190,0,1,NULL,16,2,'[:en-us]Kaifeng[:zh-cn]开封市','','',0,16,0,NULL,1,0,0),(191,0,1,NULL,16,2,'[:en-us]Luoyang[:zh-cn]洛阳市','','',0,16,0,NULL,1,0,0),(192,0,1,NULL,16,2,'[:en-us]Pingdingshang[:zh-cn]平顶山市','','',0,16,0,NULL,1,0,0),(193,0,1,NULL,16,2,'[:en-us]Anyang[:zh-cn]安阳市','','',0,16,0,NULL,1,0,0),(194,0,1,NULL,16,2,'[:en-us]Hebi[:zh-cn]鹤壁市','','',0,16,0,NULL,1,0,0),(195,0,1,NULL,16,2,'[:en-us]Xinxiang[:zh-cn]新乡市','','',0,16,0,NULL,1,0,0),(196,0,1,NULL,16,2,'[:en-us]Jiaozuo[:zh-cn]焦作市','','',0,16,0,NULL,1,0,0),(197,0,1,NULL,16,2,'[:en-us]Puyang[:zh-cn]濮阳市','','',0,16,0,NULL,1,0,0),(198,0,1,NULL,16,2,'[:en-us]Xuchang[:zh-cn]许昌市','','',0,16,0,NULL,1,0,0),(199,0,1,NULL,16,2,'[:en-us]Luohe[:zh-cn]漯河市','','',0,16,0,NULL,1,0,0),(200,0,1,NULL,16,2,'[:en-us]Sanmenxia[:zh-cn]三门峡市','','',0,16,0,NULL,1,0,0),(201,0,1,NULL,16,2,'[:en-us]Nanyang[:zh-cn]南阳市','','',0,16,0,NULL,1,0,0),(202,0,1,NULL,16,2,'[:en-us]Shangqiu[:zh-cn]商丘市','','',0,16,0,NULL,1,0,0),(203,0,1,NULL,16,2,'[:en-us]Xinyang[:zh-cn]信阳市','','',0,16,0,NULL,1,0,0),(204,0,1,NULL,16,2,'[:en-us]Zhoukou[:zh-cn]周口市','','',0,16,0,NULL,1,0,0),(205,0,1,NULL,16,2,'[:en-us]Zhumadian[:zh-cn]驻马店市','','',0,16,0,NULL,1,0,0),(206,0,1,NULL,17,2,'[:en-us]Wuhan[:zh-cn]武汉市','','',0,17,0,NULL,1,0,0),(207,0,1,NULL,17,2,'[:en-us]Huangshi[:zh-cn]黄石市','','',0,17,0,NULL,1,0,0),(208,0,1,NULL,17,2,'[:en-us]Shiyan[:zh-cn]十堰市','','',0,17,0,NULL,1,0,0),(209,0,1,NULL,17,2,'[:en-us]Yichang[:zh-cn]宜昌市','','',0,17,0,NULL,1,0,0),(210,0,1,NULL,17,2,'[:en-us]Xiangfan[:zh-cn]襄樊市','','',0,17,0,NULL,1,0,0),(211,0,1,NULL,17,2,'[:en-us]Ezhou[:zh-cn]鄂州市','','',0,17,0,NULL,1,0,0),(212,0,1,NULL,17,2,'[:en-us]Jingmen[:zh-cn]荆门市','','',0,17,0,NULL,1,0,0),(213,0,1,NULL,17,2,'[:en-us]Xiaogan[:zh-cn]孝感市','','',0,17,0,NULL,1,0,0),(214,0,1,NULL,17,2,'[:en-us]Jingzhou[:zh-cn]荆州市','','',0,17,0,NULL,1,0,0),(215,0,1,NULL,17,2,'[:en-us]Huanggang[:zh-cn]黄冈市','','',0,17,0,NULL,1,0,0),(216,0,1,NULL,17,2,'[:en-us]Xianning[:zh-cn]咸宁市','','',0,17,0,NULL,1,0,0),(217,0,1,NULL,17,2,'[:en-us]Suizhou[:zh-cn]随州市','','',0,17,0,NULL,1,0,0),(218,0,1,NULL,17,2,'[:en-us]Enshitujiazumiaozuzizhizhou[:zh-cn]恩施土家族苗族自治州','','',0,17,0,NULL,1,0,0),(219,0,1,NULL,17,2,'[:en-us]Provincial[:zh-cn]省直辖行政单位','','',0,17,0,NULL,1,0,0),(220,0,1,NULL,18,2,'[:en-us]Changsha[:zh-cn]长沙市','','',0,18,0,NULL,1,0,0),(221,0,1,NULL,18,2,'[:en-us]Zhuzhou[:zh-cn]株洲市','','',0,18,0,NULL,1,0,0),(222,0,1,NULL,18,2,'[:en-us]Xiangtan[:zh-cn]湘潭市','','',0,18,0,NULL,1,0,0),(223,0,1,NULL,18,2,'[:en-us]Hengyang[:zh-cn]衡阳市','','',0,18,0,NULL,1,0,0),(224,0,1,NULL,18,2,'[:en-us]Shaoyang[:zh-cn]邵阳市','','',0,18,0,NULL,1,0,0),(225,0,1,NULL,18,2,'[:en-us]Yueyang[:zh-cn]岳阳市','','',0,18,0,NULL,1,0,0),(226,0,1,NULL,18,2,'[:en-us]Changde[:zh-cn]常德市','','',0,18,0,NULL,1,0,0),(227,0,1,NULL,18,2,'[:en-us]Zhangjiajie[:zh-cn]张家界市','','',0,18,0,NULL,1,0,0),(228,0,1,NULL,18,2,'[:en-us]Yiyang[:zh-cn]益阳市','','',0,18,0,NULL,1,0,0),(229,0,1,NULL,18,2,'[:en-us]Chenzhou[:zh-cn]郴州市','','',0,18,0,NULL,1,0,0),(230,0,1,NULL,18,2,'[:en-us]Yongzhou[:zh-cn]永州市','','',0,18,0,NULL,1,0,0),(231,0,1,NULL,18,2,'[:en-us]Huaihua[:zh-cn]怀化市','','',0,18,0,NULL,1,0,0),(232,0,1,NULL,18,2,'[:en-us]Loudi[:zh-cn]娄底市','','',0,18,0,NULL,1,0,0),(233,0,1,NULL,18,2,'[:en-us]Xiangxitujiazumiaozuzizhizhou[:zh-cn]湘西土家族苗族自治州','','',0,18,0,NULL,1,0,0),(234,0,1,NULL,19,2,'[:en-us]Guangzhou[:zh-cn]广州市','','',0,19,0,NULL,1,0,0),(235,0,1,NULL,19,2,'[:en-us]Shaoguan[:zh-cn]韶关市','','',0,19,0,NULL,1,0,0),(236,0,1,NULL,19,2,'[:en-us]Shenzhen[:zh-cn]深圳市','','',0,19,0,NULL,1,0,0),(237,0,1,NULL,19,2,'[:en-us]Zhuhai[:zh-cn]珠海市','','',0,19,0,NULL,1,0,0),(238,0,1,NULL,19,2,'[:en-us]Shantou[:zh-cn]汕头市','','',0,19,0,NULL,1,0,0),(239,0,1,NULL,19,2,'[:en-us]Foshang[:zh-cn]佛山市','','',0,19,0,NULL,1,0,0),(240,0,1,NULL,19,2,'[:en-us]Jiangmen[:zh-cn]江门市','','',0,19,0,NULL,1,0,0),(241,0,1,NULL,19,2,'[:en-us]Zhanjiang[:zh-cn]湛江市','','',0,19,0,NULL,1,0,0),(242,0,1,NULL,19,2,'[:en-us]Maoming[:zh-cn]茂名市','','',0,19,0,NULL,1,0,0),(243,0,1,NULL,19,2,'[:en-us]Zhaoqing[:zh-cn]肇庆市','','',0,19,0,NULL,1,0,0),(244,0,1,NULL,19,2,'[:en-us]Huizhou[:zh-cn]惠州市','','',0,19,0,NULL,1,0,0),(245,0,1,NULL,19,2,'[:en-us]Meizhou[:zh-cn]梅州市','','',0,19,0,NULL,1,0,0),(246,0,1,NULL,19,2,'[:en-us]Shanwei[:zh-cn]汕尾市','','',0,19,0,NULL,1,0,0),(247,0,1,NULL,19,2,'[:en-us]Heyuan[:zh-cn]河源市','','',0,19,0,NULL,1,0,0),(248,0,1,NULL,19,2,'[:en-us]Yangjiang[:zh-cn]阳江市','','',0,19,0,NULL,1,0,0),(249,0,1,NULL,19,2,'[:en-us]Qingyuan[:zh-cn]清远市','','',0,19,0,NULL,1,0,0),(250,0,1,NULL,19,2,'[:en-us]Dongguan[:zh-cn]东莞市','','',0,19,0,NULL,1,0,0),(251,0,1,NULL,19,2,'[:en-us]Zhongshang[:zh-cn]中山市','','',0,19,0,NULL,1,0,0),(252,0,1,NULL,19,2,'[:en-us]Chaozhou[:zh-cn]潮州市','','',0,19,0,NULL,1,0,0),(253,0,1,NULL,19,2,'[:en-us]Jieyang[:zh-cn]揭阳市','','',0,19,0,NULL,1,0,0),(254,0,1,NULL,19,2,'[:en-us]Yunfu[:zh-cn]云浮市','','',0,19,0,NULL,1,0,0),(255,0,1,NULL,20,2,'[:en-us]Nanning[:zh-cn]南宁市','','',0,20,0,NULL,1,0,0),(256,0,1,NULL,20,2,'[:en-us]Liuzhou[:zh-cn]柳州市','','',0,20,0,NULL,1,0,0),(257,0,1,NULL,20,2,'[:en-us]Guilin[:zh-cn]桂林市','','',0,20,0,NULL,1,0,0),(258,0,1,NULL,20,2,'[:en-us]Wuzhou[:zh-cn]梧州市','','',0,20,0,NULL,1,0,0),(259,0,1,NULL,20,2,'[:en-us]Beihai[:zh-cn]北海市','','',0,20,0,NULL,1,0,0),(260,0,1,NULL,20,2,'[:en-us]Fangchenggang[:zh-cn]防城港市','','',0,20,0,NULL,1,0,0),(261,0,1,NULL,20,2,'[:en-us]Qinzhou[:zh-cn]钦州市','','',0,20,0,NULL,1,0,0),(262,0,1,NULL,20,2,'[:en-us]Guigang[:zh-cn]贵港市','','',0,20,0,NULL,1,0,0),(263,0,1,NULL,20,2,'[:en-us]Yulin[:zh-cn]玉林市','','',0,20,0,NULL,1,0,0),(264,0,1,NULL,20,2,'[:en-us]Baise[:zh-cn]百色市','','',0,20,0,NULL,1,0,0),(265,0,1,NULL,20,2,'[:en-us]Hezhou[:zh-cn]贺州市','','',0,20,0,NULL,1,0,0),(266,0,1,NULL,20,2,'[:en-us]Hechi[:zh-cn]河池市','','',0,20,0,NULL,1,0,0),(267,0,1,NULL,20,2,'[:en-us]Laibin[:zh-cn]来宾市','','',0,20,0,NULL,1,0,0),(268,0,1,NULL,20,2,'[:en-us]Chongzuo[:zh-cn]崇左市','','',0,20,0,NULL,1,0,0),(269,0,1,NULL,21,2,'[:en-us]Haikfou[:zh-cn]海口市','','',0,21,0,NULL,1,0,0),(270,0,1,NULL,21,2,'[:en-us]Sanya[:zh-cn]三亚市','','',0,21,0,NULL,1,0,0),(271,0,1,NULL,21,2,'[:en-us]Provincial[:zh-cn]省直辖县级行政单位','','',0,21,0,NULL,1,0,0),(272,0,1,NULL,22,2,'[:en-us]Municipal[:zh-cn]市辖区','','',0,22,0,NULL,1,0,0),(273,0,1,NULL,22,2,'[:en-us]Country[:zh-cn]县','','',0,22,0,NULL,1,0,0),(274,0,1,NULL,22,2,'[:en-us]City[:zh-cn]市','','',0,22,0,NULL,1,0,0),(275,0,1,NULL,23,2,'[:en-us]Chengdu[:zh-cn]成都市','','',0,23,0,NULL,1,0,0),(276,0,1,NULL,23,2,'[:en-us]Zigong[:zh-cn]自贡市','','',0,23,0,NULL,1,0,0),(277,0,1,NULL,23,2,'[:en-us]Panzhihua[:zh-cn]攀枝花市','','',0,23,0,NULL,1,0,0),(278,0,1,NULL,23,2,'[:en-us]Luzhou[:zh-cn]泸州市','','',0,23,0,NULL,1,0,0),(279,0,1,NULL,23,2,'[:en-us]Deyang[:zh-cn]德阳市','','',0,23,0,NULL,1,0,0),(280,0,1,NULL,23,2,'[:en-us]Manyang[:zh-cn]绵阳市','','',0,23,0,NULL,1,0,0),(281,0,1,NULL,23,2,'[:en-us]Guangyuan[:zh-cn]广元市','','',0,23,0,NULL,1,0,0),(282,0,1,NULL,23,2,'[:en-us]Suining[:zh-cn]遂宁市','','',0,23,0,NULL,1,0,0),(283,0,1,NULL,23,2,'[:en-us]Neijiang[:zh-cn]内江市','','',0,23,0,NULL,1,0,0),(284,0,1,NULL,23,2,'[:en-us]Yeushang[:zh-cn]乐山市','','',0,23,0,NULL,1,0,0),(285,0,1,NULL,23,2,'[:en-us]Nanchong[:zh-cn]南充市','','',0,23,0,NULL,1,0,0),(286,0,1,NULL,23,2,'[:en-us]Meishang[:zh-cn]眉山市','','',0,23,0,NULL,1,0,0),(287,0,1,NULL,23,2,'[:en-us]Yibin[:zh-cn]宜宾市','','',0,23,0,NULL,1,0,0),(288,0,1,NULL,23,2,'[:en-us]Guangan[:zh-cn]广安市','','',0,23,0,NULL,1,0,0),(289,0,1,NULL,23,2,'[:en-us]Dazhou[:zh-cn]达州市','','',0,23,0,NULL,1,0,0),(290,0,1,NULL,23,2,'[:en-us]yaan[:zh-cn]雅安市','','',0,23,0,NULL,1,0,0),(291,0,1,NULL,23,2,'[:en-us]Bazhong[:zh-cn]巴中市','','',0,23,0,NULL,1,0,0),(292,0,1,NULL,23,2,'[:en-us]Ziyang[:zh-cn]资阳市','','',0,23,0,NULL,1,0,0),(293,0,1,NULL,23,2,'[:en-us]Abazangzuqiangzuzizhizhou[:zh-cn]阿坝藏族羌族自治州','','',0,23,0,NULL,1,0,0),(294,0,1,NULL,23,2,'[:en-us]Ganzizangzuzizhizhou[:zh-cn]甘孜藏族自治州','','',0,23,0,NULL,1,0,0),(295,0,1,NULL,23,2,'[:en-us]Liangshangyizuzizhizhou[:zh-cn]凉山彝族自治州','','',0,23,0,NULL,1,0,0),(296,0,1,NULL,24,2,'[:en-us]Gunyang[:zh-cn]贵阳市','','',0,24,0,NULL,1,0,0),(297,0,1,NULL,24,2,'[:en-us]Liupanshui[:zh-cn]六盘水市','','',0,24,0,NULL,1,0,0),(298,0,1,NULL,24,2,'[:en-us]Zunyi[:zh-cn]遵义市','','',0,24,0,NULL,1,0,0),(299,0,1,NULL,24,2,'[:en-us]Anshun[:zh-cn]安顺市','','',0,24,0,NULL,1,0,0),(300,0,1,NULL,24,2,'[:en-us]Tongren[:zh-cn]铜仁地区','','',0,24,0,NULL,1,0,0),(301,0,1,NULL,24,2,'[:en-us]Qianxinanbuyizuzizhizhou[:zh-cn]黔西南布依族苗族自治州','','',0,24,0,NULL,1,0,0),(302,0,1,NULL,24,2,'[:en-us]Bijie[:zh-cn]毕节地区','','',0,24,0,NULL,1,0,0),(303,0,1,NULL,24,2,'[:en-us]Qiandongnanmiaozudongzuzizhizhou[:zh-cn]黔东南苗族侗族自治州','','',0,24,0,NULL,1,0,0),(304,0,1,NULL,24,2,'[:en-us]Qiannanbuyizumiaozuzizhizhou[:zh-cn]黔南布依族苗族自治州','','',0,24,0,NULL,1,0,0),(305,0,1,NULL,25,2,'[:en-us]Kunming[:zh-cn]昆明市','','',0,25,0,NULL,1,0,0),(306,0,1,NULL,25,2,'[:en-us]Qujing[:zh-cn]曲靖市','','',0,25,0,NULL,1,0,0),(307,0,1,NULL,25,2,'[:en-us]Yuxi[:zh-cn]玉溪市','','',0,25,0,NULL,1,0,0),(308,0,1,NULL,25,2,'[:en-us]Baoshang[:zh-cn]保山市','','',0,25,0,NULL,1,0,0),(309,0,1,NULL,25,2,'[:en-us]Zhaotong[:zh-cn]昭通市','','',0,25,0,NULL,1,0,0),(310,0,1,NULL,25,2,'[:en-us]Lijiang[:zh-cn]丽江市','','',0,25,0,NULL,1,0,0),(311,0,1,NULL,25,2,'[:en-us]Simao[:zh-cn]思茅市','','',0,25,0,NULL,1,0,0),(312,0,1,NULL,25,2,'[:en-us]Lincang[:zh-cn]临沧市','','',0,25,0,NULL,1,0,0),(313,0,1,NULL,25,2,'[:en-us]Chuxiongyizuzizhizhou[:zh-cn]楚雄彝族自治州','','',0,25,0,NULL,1,0,0),(314,0,1,NULL,25,2,'[:en-us]Honghehanizuyizuzizhizhou[:zh-cn]红河哈尼族彝族自治州','','',0,25,0,NULL,1,0,0),(315,0,1,NULL,25,2,'[:en-us]Wenshangzhuangzumiaozuzizhizhou[:zh-cn]文山壮族苗族自治州','','',0,25,0,NULL,1,0,0),(316,0,1,NULL,25,2,'[:en-us]Xishuangbannazizhizhou[:zh-cn]西双版纳傣族自治州','','',0,25,0,NULL,1,0,0),(317,0,1,NULL,25,2,'[:en-us]Dalibaizuzizhihzou[:zh-cn]大理白族自治州','','',0,25,0,NULL,1,0,0),(318,0,1,NULL,25,2,'[:en-us]Dehongdaizujingpozuzizhizhou[:zh-cn]德宏傣族景颇族自治州','','',0,25,0,NULL,1,0,0),(319,0,1,NULL,25,2,'[:en-us]Nujianglilizuzizhihou[:zh-cn]怒江傈僳族自治州','','',0,25,0,NULL,1,0,0),(320,0,1,NULL,25,2,'[:en-us]Diqingzangzuzizhizhou[:zh-cn]迪庆藏族自治州','','',0,25,0,NULL,1,0,0),(321,0,1,NULL,26,2,'[:en-us]Lasa[:zh-cn]拉萨市','','',0,26,0,NULL,1,0,0),(322,0,1,NULL,26,2,'[:en-us]Changdu[:zh-cn]昌都地区','','',0,26,0,NULL,1,0,0),(323,0,1,NULL,26,2,'[:en-us]Shangnan[:zh-cn]山南地区','','',0,26,0,NULL,1,0,0),(324,0,1,NULL,26,2,'[:en-us]Rikaze[:zh-cn]日喀则地区','','',0,26,0,NULL,1,0,0),(325,0,1,NULL,26,2,'[:en-us]Naqu[:zh-cn]那曲地区','','',0,26,0,NULL,1,0,0),(326,0,1,NULL,26,2,'[:en-us]Ali[:zh-cn]阿里地区','','',0,26,0,NULL,1,0,0),(327,0,1,NULL,26,2,'[:en-us]Linzhi[:zh-cn]林芝地区','','',0,26,0,NULL,1,0,0),(328,0,1,NULL,27,2,'[:en-us]Xian[:zh-cn]西安市','','',0,27,0,NULL,1,0,0),(329,0,1,NULL,27,2,'[:en-us]Tongling[:zh-cn]铜川市','','',0,27,0,NULL,1,0,0),(330,0,1,NULL,27,2,'[:en-us]Baoji[:zh-cn]宝鸡市','','',0,27,0,NULL,1,0,0),(331,0,1,NULL,27,2,'[:en-us]Xianyang[:zh-cn]咸阳市','','',0,27,0,NULL,1,0,0),(332,0,1,NULL,27,2,'[:en-us]Weinan[:zh-cn]渭南市','','',0,27,0,NULL,1,0,0),(333,0,1,NULL,27,2,'[:en-us]Yanan[:zh-cn]延安市','','',0,27,0,NULL,1,0,0),(334,0,1,NULL,27,2,'[:en-us]Hanzhong[:zh-cn]汉中市','','',0,27,0,NULL,1,0,0),(335,0,1,NULL,27,2,'[:en-us]Yulin[:zh-cn]榆林市','','',0,27,0,NULL,1,0,0),(336,0,1,NULL,27,2,'[:en-us]Ankang[:zh-cn]安康市','','',0,27,0,NULL,1,0,0),(337,0,1,NULL,27,2,'[:en-us]Shangluo[:zh-cn]商洛市','','',0,27,0,NULL,1,0,0),(338,0,1,NULL,28,2,'[:en-us]Lanzhou[:zh-cn]兰州市','','',0,28,0,NULL,1,0,0),(339,0,1,NULL,28,2,'[:en-us]Jiayuguan[:zh-cn]嘉峪关市','','',0,28,0,NULL,1,0,0),(340,0,1,NULL,28,2,'[:en-us]Jinchang[:zh-cn]金昌市','','',0,28,0,NULL,1,0,0),(341,0,1,NULL,28,2,'[:en-us]Baiyin[:zh-cn]白银市','','',0,28,0,NULL,1,0,0),(342,0,1,NULL,28,2,'[:en-us]Tianshui[:zh-cn]天水市','','',0,28,0,NULL,1,0,0),(343,0,1,NULL,28,2,'[:en-us]Wuwei[:zh-cn]武威市','','',0,28,0,NULL,1,0,0),(344,0,1,NULL,28,2,'[:en-us]Zhangye[:zh-cn]张掖市','','',0,28,0,NULL,1,0,0),(345,0,1,NULL,28,2,'[:en-us]Pingliang[:zh-cn]平凉市','','',0,28,0,NULL,1,0,0),(346,0,1,NULL,28,2,'[:en-us]Jiuquan[:zh-cn]酒泉市','','',0,28,0,NULL,1,0,0),(347,0,1,NULL,28,2,'[:en-us]Qingyang[:zh-cn]庆阳市','','',0,28,0,NULL,1,0,0),(348,0,1,NULL,28,2,'[:en-us]Dingxi[:zh-cn]定西市','','',0,28,0,NULL,1,0,0),(349,0,1,NULL,28,2,'[:en-us]Longnan[:zh-cn]陇南市','','',0,28,0,NULL,1,0,0),(350,0,1,NULL,28,2,'[:en-us]Linshahuizu[:zh-cn]临夏回族自治州','','',0,28,0,NULL,1,0,0),(351,0,1,NULL,28,2,'[:en-us]Gannanzangzu[:zh-cn]甘南藏族自治州','','',0,28,0,NULL,1,0,0),(352,0,1,NULL,29,2,'[:en-us]Xining[:zh-cn]西宁市','','',0,29,0,NULL,1,0,0),(353,0,1,NULL,29,2,'[:en-us]Haidong[:zh-cn]海东地区','','',0,29,0,NULL,1,0,0),(354,0,1,NULL,29,2,'[:en-us]Haibeizangzu[:zh-cn]海北藏族自治州','','',0,29,0,NULL,1,0,0),(355,0,1,NULL,29,2,'[:en-us]Huangnanzangzu[:zh-cn]黄南藏族自治州','','',0,29,0,NULL,1,0,0),(356,0,1,NULL,29,2,'[:en-us]Hainanzangzu[:zh-cn]海南藏族自治州','','',0,29,0,NULL,1,0,0),(357,0,1,NULL,29,2,'[:en-us]Guoluozangzu[:zh-cn]果洛藏族自治州','','',0,29,0,NULL,1,0,0),(358,0,1,NULL,29,2,'[:en-us]Yushuzangzu[:zh-cn]玉树藏族自治州','','',0,29,0,NULL,1,0,0),(359,0,1,NULL,29,2,'[:en-us]Haiximengguozuzangzu[:zh-cn]海西蒙古族藏族自治州','','',0,29,0,NULL,1,0,0),(360,0,1,NULL,30,2,'[:en-us]Yinchuan[:zh-cn]银川市','','',0,30,0,NULL,1,0,0),(361,0,1,NULL,30,2,'[:en-us]Shizuishan[:zh-cn]石嘴山市','','',0,30,0,NULL,1,0,0),(362,0,1,NULL,30,2,'[:en-us]Wuzhong[:zh-cn]吴忠市','','',0,30,0,NULL,1,0,0),(363,0,1,NULL,30,2,'[:en-us]Guyuan[:zh-cn]固原市','','',0,30,0,NULL,1,0,0),(364,0,1,NULL,30,2,'[:en-us]Zhongwei[:zh-cn]中卫市','','',0,30,0,NULL,1,0,0),(365,0,1,NULL,31,2,'[:en-us]Wulumuqi[:zh-cn]乌鲁木齐市','','',0,31,0,NULL,1,0,0),(366,0,1,NULL,31,2,'[:en-us]Kelamayi[:zh-cn]克拉玛依市','','',0,31,0,NULL,1,0,0),(367,0,1,NULL,31,2,'[:en-us]Tulufan[:zh-cn]吐鲁番地区','','',0,31,0,NULL,1,0,0),(368,0,1,NULL,31,2,'[:en-us]Hami[:zh-cn]哈密地区','','',0,31,0,NULL,1,0,0),(369,0,1,NULL,31,2,'[:en-us]Changjihuizu[:zh-cn]昌吉回族自治州','','',0,31,0,NULL,1,0,0),(370,0,1,NULL,31,2,'[:en-us]Boertalamenggu[:zh-cn]博尔塔拉蒙古自治州','','',0,31,0,NULL,1,0,0),(371,0,1,NULL,31,2,'[:en-us]Bayinguolengmenggu[:zh-cn]巴音郭楞蒙古自治州','','',0,31,0,NULL,1,0,0),(372,0,1,NULL,31,2,'[:en-us]Akesu[:zh-cn]阿克苏地区','','',0,31,0,NULL,1,0,0),(373,0,1,NULL,31,2,'[:en-us]Kezilesukeerkezi[:zh-cn]克孜勒苏柯尔克孜自治州','','',0,31,0,NULL,1,0,0),(374,0,1,NULL,31,2,'[:en-us]Kashen[:zh-cn]喀什地区','','',0,31,0,NULL,1,0,0),(375,0,1,NULL,31,2,'[:en-us]Hetian[:zh-cn]和田地区','','',0,31,0,NULL,1,0,0),(376,0,1,NULL,31,2,'[:en-us]Yilihasake[:zh-cn]伊犁哈萨克自治州','','',0,31,0,NULL,1,0,0),(377,0,1,NULL,31,2,'[:en-us]Tcheng[:zh-cn]塔城地区','','',0,31,0,NULL,1,0,0),(378,0,1,NULL,31,2,'[:en-us]Aletai[:zh-cn]阿勒泰地区','','',0,31,0,NULL,1,0,0),(379,0,1,NULL,31,2,'[:en-us]Provincial[:zh-cn]省直辖行政单位','','',0,31,0,NULL,1,0,0),(380,0,1,NULL,33,2,'[:en-us]Xianggang[:zh-cn]香港','','',0,33,0,NULL,1,0,0),(381,0,1,NULL,34,2,'[:en-us]Aomen[:zh-cn]澳门','','',0,34,0,NULL,1,0,0),(382,0,1,NULL,32,2,'[:en-us]Taibei[:zh-cn]台北','','',0,32,0,NULL,1,0,0),(383,0,1,NULL,32,2,'[:en-us]Gaoxiong[:zh-cn]高雄','','',0,32,0,NULL,1,0,0),(384,0,1,NULL,32,2,'[:en-us]Jilong[:zh-cn]基隆','','',0,32,0,NULL,1,0,0),(385,0,1,NULL,32,2,'[:en-us]Taizhong[:zh-cn]台中','','',0,32,0,NULL,1,0,0),(386,0,1,NULL,32,2,'[:en-us]Tainan[:zh-cn]台南','','',0,32,0,NULL,1,0,0),(387,0,1,NULL,32,2,'[:en-us]Xinzhu[:zh-cn]新竹','','',0,32,0,NULL,1,0,0),(388,0,1,NULL,32,2,'[:en-us]Jiayi[:zh-cn]嘉义','','',0,32,0,NULL,1,0,0),(389,0,1,NULL,32,2,'[:en-us]Taibai[:zh-cn]台北县','','',0,32,0,NULL,1,0,0),(390,0,1,NULL,32,2,'[:en-us]Yilan[:zh-cn]宜兰县','','',0,32,0,NULL,1,0,0),(391,0,1,NULL,32,2,'[:en-us]Taoyuan[:zh-cn]桃园县','','',0,32,0,NULL,1,0,0),(392,0,1,NULL,32,2,'[:en-us]Xinzhu[:zh-cn]新竹县','','',0,32,0,NULL,1,0,0),(393,0,1,NULL,32,2,'[:en-us]Miaoli[:zh-cn]苗栗县','','',0,32,0,NULL,1,0,0),(394,0,1,NULL,32,2,'[:en-us]Taizhong[:zh-cn]台中县','','',0,32,0,NULL,1,0,0),(395,0,1,NULL,32,2,'[:en-us]Zhanghua[:zh-cn]彰化县','','',0,32,0,NULL,1,0,0),(396,0,1,NULL,32,2,'[:en-us]Nantou[:zh-cn]南投县','','',0,32,0,NULL,1,0,0),(397,0,1,NULL,32,2,'[:en-us]Yunlin[:zh-cn]云林县','','',0,32,0,NULL,1,0,0),(398,0,1,NULL,32,2,'[:en-us]Jiayi[:zh-cn]嘉义县','','',0,32,0,NULL,1,0,0),(399,0,1,NULL,32,2,'[:en-us]Tainan[:zh-cn]台南县','','',0,32,0,NULL,1,0,0),(400,0,1,NULL,32,2,'[:en-us]Gaoxiong[:zh-cn]高雄县','','',0,32,0,NULL,1,0,0),(401,0,1,NULL,32,2,'[:en-us]Pindong[:zh-cn]屏东县','','',0,32,0,NULL,1,0,0),(402,0,1,NULL,32,2,'[:en-us]Taidong[:zh-cn]台东县','','',0,32,0,NULL,1,0,0),(403,0,1,NULL,32,2,'[:en-us]Huanlian[:zh-cn]花莲县','','',0,32,0,NULL,1,0,0),(404,0,1,NULL,32,2,'[:en-us]Penghu[:zh-cn]澎湖县','','',0,32,0,NULL,1,0,0),(405,0,0,NULL,1,3,'[:en-us]Dongcheng[:zh-cn]东城区','','',0,35,0,NULL,1,0,0),(406,0,0,NULL,1,3,'[:en-us]Xicheng[:zh-cn]西城区','','',0,35,0,NULL,1,0,0),(407,0,0,NULL,1,3,'[:en-us]Chongwen[:zh-cn]崇文区','','',0,35,0,NULL,1,0,0),(408,0,0,NULL,1,3,'[:en-us]Xuanwu[:zh-cn]宣武区','','',0,35,0,NULL,1,0,0),(409,0,0,NULL,1,3,'[:en-us]Chaoyang[:zh-cn]朝阳区','','',0,35,0,NULL,1,0,0),(410,0,0,NULL,1,3,'[:en-us]Fengtai[:zh-cn]丰台区','','',0,35,0,NULL,1,0,0),(411,0,0,NULL,1,3,'[:en-us]Shijingshan[:zh-cn]石景山区','','',0,35,0,NULL,1,0,0),(412,0,0,NULL,1,3,'[:en-us]Haidian[:zh-cn]海淀区','','',0,35,0,NULL,1,0,0),(413,0,0,NULL,1,3,'[:en-us]Mentougou[:zh-cn]门头沟区','','',0,35,0,NULL,1,0,0),(414,0,0,NULL,1,3,'[:en-us]Fangshan[:zh-cn]房山区','','',0,35,0,NULL,1,0,0),(415,0,0,NULL,1,3,'[:en-us]Tongzhou[:zh-cn]通州区','','',0,35,0,NULL,1,0,0),(416,0,0,NULL,1,3,'[:en-us]Shunyi[:zh-cn]顺义区','','',0,35,0,NULL,1,0,0),(417,0,0,NULL,1,3,'[:en-us]Changping[:zh-cn]昌平区','','',0,35,0,NULL,1,0,0),(418,0,0,NULL,1,3,'[:en-us]Daxing[:zh-cn]大兴区','','',0,35,0,NULL,1,0,0),(419,0,0,NULL,1,3,'[:en-us]Huairou[:zh-cn]怀柔区','','',0,35,0,NULL,1,0,0),(420,0,0,NULL,1,3,'[:en-us]Pinggu[:zh-cn]平谷区','','',0,35,0,NULL,1,0,0),(421,0,0,NULL,1,3,'[:en-us]Miyun[:zh-cn]密云县','','',0,36,0,NULL,1,0,0),(422,0,0,NULL,1,3,'[:en-us]Yanqing[:zh-cn]延庆县','','',0,36,0,NULL,1,0,0),(423,0,0,NULL,2,3,'[:en-us]Heping[:zh-cn]和平区','','',0,37,0,NULL,1,0,0),(424,0,0,NULL,2,3,'[:en-us]Hedong[:zh-cn]河东区','','',0,37,0,NULL,1,0,0),(425,0,0,NULL,2,3,'[:en-us]Hexi[:zh-cn]河西区','','',0,37,0,NULL,1,0,0),(426,0,0,NULL,2,3,'[:en-us]Nankai[:zh-cn]南开区','','',0,37,0,NULL,1,0,0),(427,0,0,NULL,2,3,'[:en-us]Hebei[:zh-cn]河北区','','',0,37,0,NULL,1,0,0),(428,0,0,NULL,2,3,'[:en-us]Hongdqiao[:zh-cn]红桥区','','',0,37,0,NULL,1,0,0),(429,0,0,NULL,2,3,'[:en-us]Tanggu[:zh-cn]塘沽区','','',0,37,0,NULL,1,0,0),(430,0,0,NULL,2,3,'[:en-us]Hangu[:zh-cn]汉沽区','','',0,37,0,NULL,1,0,0),(431,0,0,NULL,2,3,'[:en-us]Dagang[:zh-cn]大港区','','',0,37,0,NULL,1,0,0),(432,0,0,NULL,2,3,'[:en-us]Dongli[:zh-cn]东丽区','','',0,37,0,NULL,1,0,0),(433,0,0,NULL,2,3,'[:en-us]Xiqing[:zh-cn]西青区','','',0,37,0,NULL,1,0,0),(434,0,0,NULL,2,3,'[:en-us]Jingnan[:zh-cn]津南区','','',0,37,0,NULL,1,0,0),(435,0,0,NULL,2,3,'[:en-us]Beichen[:zh-cn]北辰区','','',0,37,0,NULL,1,0,0),(436,0,0,NULL,2,3,'[:en-us]Wuqing[:zh-cn]武清区','','',0,37,0,NULL,1,0,0),(437,0,0,NULL,2,3,'[:en-us]Baodi[:zh-cn]宝坻区','','',0,37,0,NULL,1,0,0),(438,0,0,NULL,2,3,'[:en-us]Ninghe[:zh-cn]宁河县','','',0,38,0,NULL,1,0,0),(439,0,0,NULL,2,3,'[:en-us]Jinghai[:zh-cn]静海县','','',0,38,0,NULL,1,0,0),(440,0,0,NULL,2,3,'[:en-us]ji[:zh-cn]蓟县','','',0,38,0,NULL,1,0,0),(441,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,39,0,NULL,1,0,0),(442,0,0,NULL,3,3,'[:en-us]Changan[:zh-cn]长安区','','',0,39,0,NULL,1,0,0),(443,0,0,NULL,3,3,'[:en-us]Qiaodong[:zh-cn]桥东区','','',0,39,0,NULL,1,0,0),(444,0,0,NULL,3,3,'[:en-us]Qiaoxi[:zh-cn]桥西区','','',0,39,0,NULL,1,0,0),(445,0,0,NULL,3,3,'[:en-us]Xinghua[:zh-cn]新华区','','',0,39,0,NULL,1,0,0),(446,0,0,NULL,3,3,'[:en-us]Jingxing[:zh-cn]井陉矿区','','',0,39,0,NULL,1,0,0),(447,0,0,NULL,3,3,'[:en-us]Yuhua[:zh-cn]裕华区','','',0,39,0,NULL,1,0,0),(448,0,0,NULL,3,3,'[:en-us]Jingxing[:zh-cn]井陉县','','',0,39,0,NULL,1,0,0),(449,0,0,NULL,3,3,'[:en-us]Zhengding[:zh-cn]正定县','','',0,39,0,NULL,1,0,0),(450,0,0,NULL,3,3,'[:en-us]Luancheng[:zh-cn]栾城县','','',0,39,0,NULL,1,0,0),(451,0,0,NULL,3,3,'[:en-us]Xingtang[:zh-cn]行唐县','','',0,39,0,NULL,1,0,0),(452,0,0,NULL,3,3,'[:en-us]Lingshou[:zh-cn]灵寿县','','',0,39,0,NULL,1,0,0),(453,0,0,NULL,3,3,'[:en-us]Gaoyi[:zh-cn]高邑县','','',0,39,0,NULL,1,0,0),(454,0,0,NULL,3,3,'[:en-us]Shenze[:zh-cn]深泽县','','',0,39,0,NULL,1,0,0),(455,0,0,NULL,3,3,'[:en-us]Zanhuang[:zh-cn]赞皇县','','',0,39,0,NULL,1,0,0),(456,0,0,NULL,3,3,'[:en-us]Wuji[:zh-cn]无极县','','',0,39,0,NULL,1,0,0),(457,0,0,NULL,3,3,'[:en-us]Pingshan[:zh-cn]平山县','','',0,39,0,NULL,1,0,0),(458,0,0,NULL,3,3,'[:en-us]Yuanshi[:zh-cn]元氏县','','',0,39,0,NULL,1,0,0),(459,0,0,NULL,3,3,'[:en-us]Zhaoxian[:zh-cn]赵县','','',0,39,0,NULL,1,0,0),(460,0,0,NULL,3,3,'[:en-us]Xinji[:zh-cn]辛集市','','',0,39,0,NULL,1,0,0),(461,0,0,NULL,3,3,'[:en-us]Gaocheng[:zh-cn]藁城市','','',0,39,0,NULL,1,0,0),(462,0,0,NULL,3,3,'[:en-us]Jinzhou[:zh-cn]晋州市','','',0,39,0,NULL,1,0,0),(463,0,0,NULL,3,3,'[:en-us]Xinyue[:zh-cn]新乐市','','',0,39,0,NULL,1,0,0),(464,0,0,NULL,3,3,'[:en-us]Luquan[:zh-cn]鹿泉市','','',0,39,0,NULL,1,0,0),(465,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,40,0,NULL,1,0,0),(466,0,0,NULL,3,3,'[:en-us]lunan[:zh-cn]路南区','','',0,40,0,NULL,1,0,0),(467,0,0,NULL,3,3,'[:en-us]Lubai[:zh-cn]路北区','','',0,40,0,NULL,1,0,0),(468,0,0,NULL,3,3,'[:en-us]Guye[:zh-cn]古冶区','','',0,40,0,NULL,1,0,0),(469,0,0,NULL,3,3,'[:en-us]Kaiping[:zh-cn]开平区','','',0,40,0,NULL,1,0,0),(470,0,0,NULL,3,3,'[:en-us]Fengnan[:zh-cn]丰南区','','',0,40,0,NULL,1,0,0),(471,0,0,NULL,3,3,'[:en-us]Fengrun[:zh-cn]丰润区','','',0,40,0,NULL,1,0,0),(472,0,0,NULL,3,3,'[:en-us]Luanxian[:zh-cn]滦县','','',0,40,0,NULL,1,0,0),(473,0,0,NULL,3,3,'[:en-us]Luannang[:zh-cn]滦南县','','',0,40,0,NULL,1,0,0),(474,0,0,NULL,3,3,'[:en-us]Yenting[:zh-cn]乐亭县','','',0,40,0,NULL,1,0,0),(475,0,0,NULL,3,3,'[:en-us]Qianxi[:zh-cn]迁西县','','',0,40,0,NULL,1,0,0),(476,0,0,NULL,3,3,'[:en-us]Yutian[:zh-cn]玉田县','','',0,40,0,NULL,1,0,0),(477,0,0,NULL,3,3,'[:en-us]Tanghai[:zh-cn]唐海县','','',0,40,0,NULL,1,0,0),(478,0,0,NULL,3,3,'[:en-us]Zunhua[:zh-cn]遵化市','','',0,40,0,NULL,1,0,0),(479,0,0,NULL,3,3,'[:en-us]Qianan[:zh-cn]迁安市','','',0,40,0,NULL,1,0,0),(480,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,41,0,NULL,1,0,0),(481,0,0,NULL,3,3,'[:en-us]Haigang[:zh-cn]海港区','','',0,41,0,NULL,1,0,0),(482,0,0,NULL,3,3,'[:en-us]Shanhaiguan[:zh-cn]山海关区','','',0,41,0,NULL,1,0,0),(483,0,0,NULL,3,3,'[:en-us]Beidaihe[:zh-cn]北戴河区','','',0,41,0,NULL,1,0,0),(484,0,0,NULL,3,3,'[:en-us]Qinglongmanzu[:zh-cn]青龙满族自治县','','',0,41,0,NULL,1,0,0),(485,0,0,NULL,3,3,'[:en-us]Changli[:zh-cn]昌黎县','','',0,41,0,NULL,1,0,0),(486,0,0,NULL,3,3,'[:en-us]Funing[:zh-cn]抚宁县','','',0,41,0,NULL,1,0,0),(487,0,0,NULL,3,3,'[:en-us]Lulong[:zh-cn]卢龙县','','',0,41,0,NULL,1,0,0),(488,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,42,0,NULL,1,0,0),(489,0,0,NULL,3,3,'[:en-us]Hanshan[:zh-cn]邯山区','','',0,42,0,NULL,1,0,0),(490,0,0,NULL,3,3,'[:en-us]Congtai[:zh-cn]丛台区','','',0,42,0,NULL,1,0,0),(491,0,0,NULL,3,3,'[:en-us]Fuxing[:zh-cn]复兴区','','',0,42,0,NULL,1,0,0),(492,0,0,NULL,3,3,'[:en-us]Fengfeng[:zh-cn]峰峰矿区','','',0,42,0,NULL,1,0,0),(493,0,0,NULL,3,3,'[:en-us]Handan[:zh-cn]邯郸县','','',0,42,0,NULL,1,0,0),(494,0,0,NULL,3,3,'[:en-us]Linzhang[:zh-cn]临漳县','','',0,42,0,NULL,1,0,0),(495,0,0,NULL,3,3,'[:en-us]Chengan[:zh-cn]成安县','','',0,42,0,NULL,1,0,0),(496,0,0,NULL,3,3,'[:en-us]Daming[:zh-cn]大名县','','',0,42,0,NULL,1,0,0),(497,0,0,NULL,3,3,'[:en-us]Shexian[:zh-cn]涉县','','',0,42,0,NULL,1,0,0),(498,0,0,NULL,3,3,'[:en-us]Cixian[:zh-cn]磁县','','',0,42,0,NULL,1,0,0),(499,0,0,NULL,3,3,'[:en-us]Feixiang[:zh-cn]肥乡县','','',0,42,0,NULL,1,0,0),(500,0,0,NULL,3,3,'[:en-us]Yongnian[:zh-cn]永年县','','',0,42,0,NULL,1,0,0),(501,0,0,NULL,3,3,'[:en-us]Qiuxian[:zh-cn]邱县','','',0,42,0,NULL,1,0,0),(502,0,0,NULL,3,3,'[:en-us]Jize[:zh-cn]鸡泽县','','',0,42,0,NULL,1,0,0),(503,0,0,NULL,3,3,'[:en-us]Guangping[:zh-cn]广平县','','',0,42,0,NULL,1,0,0),(504,0,0,NULL,3,3,'[:en-us]Guantao[:zh-cn]馆陶县','','',0,42,0,NULL,1,0,0),(505,0,0,NULL,3,3,'[:en-us]Weixian[:zh-cn]魏县','','',0,42,0,NULL,1,0,0),(506,0,0,NULL,3,3,'[:en-us]Quzhou[:zh-cn]曲周县','','',0,42,0,NULL,1,0,0),(507,0,0,NULL,3,3,'[:en-us]Wuan[:zh-cn]武安市','','',0,42,0,NULL,1,0,0),(508,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,43,0,NULL,1,0,0),(509,0,0,NULL,3,3,'[:en-us]Qiaodong[:zh-cn]桥东区','','',0,43,0,NULL,1,0,0),(510,0,0,NULL,3,3,'[:en-us]Qiaoxi[:zh-cn]桥西区','','',0,43,0,NULL,1,0,0),(511,0,0,NULL,3,3,'[:en-us]Xingtai[:zh-cn]邢台县','','',0,43,0,NULL,1,0,0),(512,0,0,NULL,3,3,'[:en-us]Lincheng[:zh-cn]临城县','','',0,43,0,NULL,1,0,0),(513,0,0,NULL,3,3,'[:en-us]Neiqiu[:zh-cn]内丘县','','',0,43,0,NULL,1,0,0),(514,0,0,NULL,3,3,'[:en-us]Boxiang[:zh-cn]柏乡县','','',0,43,0,NULL,1,0,0),(515,0,0,NULL,3,3,'[:en-us]Longrao[:zh-cn]隆尧县','','',0,43,0,NULL,1,0,0),(516,0,0,NULL,3,3,'[:en-us]Renxian[:zh-cn]任县','','',0,43,0,NULL,1,0,0),(517,0,0,NULL,3,3,'[:en-us]Nanhe[:zh-cn]南和县','','',0,43,0,NULL,1,0,0),(518,0,0,NULL,3,3,'[:en-us]Ningjin[:zh-cn]宁晋县','','',0,43,0,NULL,1,0,0),(519,0,0,NULL,3,3,'[:en-us]Julu[:zh-cn]巨鹿县','','',0,43,0,NULL,1,0,0),(520,0,0,NULL,3,3,'[:en-us]Xinhe[:zh-cn]新河县','','',0,43,0,NULL,1,0,0),(521,0,0,NULL,3,3,'[:en-us]Guangzong[:zh-cn]广宗县','','',0,43,0,NULL,1,0,0),(522,0,0,NULL,3,3,'[:en-us]Pingxing[:zh-cn]平乡县','','',0,43,0,NULL,1,0,0),(523,0,0,NULL,3,3,'[:en-us]Weixing[:zh-cn]威县','','',0,43,0,NULL,1,0,0),(524,0,0,NULL,3,3,'[:en-us]Qinghe[:zh-cn]清河县','','',0,43,0,NULL,1,0,0),(525,0,0,NULL,3,3,'[:en-us]Linxi[:zh-cn]临西县','','',0,43,0,NULL,1,0,0),(526,0,0,NULL,3,3,'[:en-us]Nangong[:zh-cn]南宫市','','',0,43,0,NULL,1,0,0),(527,0,0,NULL,3,3,'[:en-us]Shahe[:zh-cn]沙河市','','',0,43,0,NULL,1,0,0),(528,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,44,0,NULL,1,0,0),(529,0,0,NULL,3,3,'[:en-us]Xinshi[:zh-cn]新市区','','',0,44,0,NULL,1,0,0),(530,0,0,NULL,3,3,'[:en-us]Beishi[:zh-cn]北市区','','',0,44,0,NULL,1,0,0),(531,0,0,NULL,3,3,'[:en-us]Nanshi[:zh-cn]南市区','','',0,44,0,NULL,1,0,0),(532,0,0,NULL,3,3,'[:en-us]Mancheng[:zh-cn]满城县','','',0,44,0,NULL,1,0,0),(533,0,0,NULL,3,3,'[:en-us]Qingyuan[:zh-cn]清苑县','','',0,44,0,NULL,1,0,0),(534,0,0,NULL,3,3,'[:en-us]Laishui[:zh-cn]涞水县','','',0,44,0,NULL,1,0,0),(535,0,0,NULL,3,3,'[:en-us]Fuping[:zh-cn]阜平县','','',0,44,0,NULL,1,0,0),(536,0,0,NULL,3,3,'[:en-us]Xushui[:zh-cn]徐水县','','',0,44,0,NULL,1,0,0),(537,0,0,NULL,3,3,'[:en-us]Dingxing[:zh-cn]定兴县','','',0,44,0,NULL,1,0,0),(538,0,0,NULL,3,3,'[:en-us]Tangxian[:zh-cn]唐县','','',0,44,0,NULL,1,0,0),(539,0,0,NULL,3,3,'[:en-us]Gaoyang[:zh-cn]高阳县','','',0,44,0,NULL,1,0,0),(540,0,0,NULL,3,3,'[:en-us]Rongcheng[:zh-cn]容城县','','',0,44,0,NULL,1,0,0),(541,0,0,NULL,3,3,'[:en-us]Laiyuan[:zh-cn]涞源县','','',0,44,0,NULL,1,0,0),(542,0,0,NULL,3,3,'[:en-us]Wangdu[:zh-cn]望都县','','',0,44,0,NULL,1,0,0),(543,0,0,NULL,3,3,'[:en-us]Anxin[:zh-cn]安新县','','',0,44,0,NULL,1,0,0),(544,0,0,NULL,3,3,'[:en-us]Yixian[:zh-cn]易县','','',0,44,0,NULL,1,0,0),(545,0,0,NULL,3,3,'[:en-us]Quyang[:zh-cn]曲阳县','','',0,44,0,NULL,1,0,0),(546,0,0,NULL,3,3,'[:en-us]Lixian[:zh-cn]蠡县','','',0,44,0,NULL,1,0,0),(547,0,0,NULL,3,3,'[:en-us]Shunping[:zh-cn]顺平县','','',0,44,0,NULL,1,0,0),(548,0,0,NULL,3,3,'[:en-us]Boye[:zh-cn]博野县','','',0,44,0,NULL,1,0,0),(549,0,0,NULL,3,3,'[:en-us]Xiongxian[:zh-cn]雄县','','',0,44,0,NULL,1,0,0),(550,0,0,NULL,3,3,'[:en-us]Zhuozhou[:zh-cn]涿州市','','',0,44,0,NULL,1,0,0),(551,0,0,NULL,3,3,'[:en-us]Dingzhou[:zh-cn]定州市','','',0,44,0,NULL,1,0,0),(552,0,0,NULL,3,3,'[:en-us]Anguo[:zh-cn]安国市','','',0,44,0,NULL,1,0,0),(553,0,0,NULL,3,3,'[:en-us]Gaobeidian[:zh-cn]高碑店','','',0,44,0,NULL,1,0,0),(554,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,45,0,NULL,1,0,0),(555,0,0,NULL,3,3,'[:en-us]Qiaodong[:zh-cn]桥东区','','',0,45,0,NULL,1,0,0),(556,0,0,NULL,3,3,'[:en-us]Qiaoxi[:zh-cn]桥西区','','',0,45,0,NULL,1,0,0),(557,0,0,NULL,3,3,'[:en-us]Yihua[:zh-cn]宣化区','','',0,45,0,NULL,1,0,0),(558,0,0,NULL,3,3,'[:en-us]Xiahuayuan[:zh-cn]下花园区','','',0,45,0,NULL,1,0,0),(559,0,0,NULL,3,3,'[:en-us]Yihua[:zh-cn]宣化县','','',0,45,0,NULL,1,0,0),(560,0,0,NULL,3,3,'[:en-us]Zhangbei[:zh-cn]张北县','','',0,45,0,NULL,1,0,0),(561,0,0,NULL,3,3,'[:en-us]Kangbao[:zh-cn]康保县','','',0,45,0,NULL,1,0,0),(562,0,0,NULL,3,3,'[:en-us]Guyuan[:zh-cn]沽源县','','',0,45,0,NULL,1,0,0),(563,0,0,NULL,3,3,'[:en-us]Shangyi[:zh-cn]尚义县','','',0,45,0,NULL,1,0,0),(564,0,0,NULL,3,3,'[:en-us]Weixian[:zh-cn]蔚县','','',0,45,0,NULL,1,0,0),(565,0,0,NULL,3,3,'[:en-us]Yangyuan[:zh-cn]阳原县','','',0,45,0,NULL,1,0,0),(566,0,0,NULL,3,3,'[:en-us]Huaian[:zh-cn]怀安县','','',0,45,0,NULL,1,0,0),(567,0,0,NULL,3,3,'[:en-us]Wanquan[:zh-cn]万全县','','',0,45,0,NULL,1,0,0),(568,0,0,NULL,3,3,'[:en-us]Huailai[:zh-cn]怀来县','','',0,45,0,NULL,1,0,0),(569,0,0,NULL,3,3,'[:en-us]Zhuolu[:zh-cn]涿鹿县','','',0,45,0,NULL,1,0,0),(570,0,0,NULL,3,3,'[:en-us]Chicheng[:zh-cn]赤城县','','',0,45,0,NULL,1,0,0),(571,0,0,NULL,3,3,'[:en-us]Zongli[:zh-cn]崇礼县','','',0,45,0,NULL,1,0,0),(572,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,46,0,NULL,1,0,0),(573,0,0,NULL,3,3,'[:en-us]Shuangqiao[:zh-cn]双桥区','','',0,46,0,NULL,1,0,0),(574,0,0,NULL,3,3,'[:en-us]Shuangluan[:zh-cn]双滦区','','',0,46,0,NULL,1,0,0),(575,0,0,NULL,3,3,'[:en-us]Yingshouyingzi[:zh-cn]鹰手营子矿区','','',0,46,0,NULL,1,0,0),(576,0,0,NULL,3,3,'[:en-us]Chengde[:zh-cn]承德县','','',0,46,0,NULL,1,0,0),(577,0,0,NULL,3,3,'[:en-us]Xinglong[:zh-cn]兴隆县','','',0,46,0,NULL,1,0,0),(578,0,0,NULL,3,3,'[:en-us]Pingquan[:zh-cn]平泉县','','',0,46,0,NULL,1,0,0),(579,0,0,NULL,3,3,'[:en-us]Luanping[:zh-cn]滦平县','','',0,46,0,NULL,1,0,0),(580,0,0,NULL,3,3,'[:en-us]Longhua[:zh-cn]隆化县','','',0,46,0,NULL,1,0,0),(581,0,0,NULL,3,3,'[:en-us]Fengningmanzu[:zh-cn]丰宁满族自治县','','',0,46,0,NULL,1,0,0),(582,0,0,NULL,3,3,'[:en-us]Kuanchengmanzu[:zh-cn]宽城满族自治县','','',0,46,0,NULL,1,0,0),(583,0,0,NULL,3,3,'[:en-us]Weichangmanzumengguzu[:zh-cn]围场满族蒙古族自治县','','',0,46,0,NULL,1,0,0),(588,0,0,NULL,3,3,'[:en-us]Chengde[:zh-cn]承德县','','',0,46,0,NULL,1,0,0),(596,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,46,0,NULL,1,0,0),(597,0,0,NULL,3,3,'[:en-us]Shuangqiao[:zh-cn]双桥区','','',0,46,0,NULL,1,0,0),(598,0,0,NULL,3,3,'[:en-us]Shuangluan[:zh-cn]双滦区','','',0,46,0,NULL,1,0,0),(599,0,0,NULL,3,3,'[:en-us]Yingshouyingzi[:zh-cn]鹰手营子矿区','','',0,46,0,NULL,1,0,0),(600,0,0,NULL,3,3,'[:en-us]Chengde[:zh-cn]承德县','','',0,46,0,NULL,1,0,0),(601,0,0,NULL,3,3,'[:en-us]Xinglong[:zh-cn]兴隆县','','',0,46,0,NULL,1,0,0),(602,0,0,NULL,3,3,'[:en-us]Pingquan[:zh-cn]平泉县','','',0,46,0,NULL,1,0,0),(603,0,0,NULL,3,3,'[:en-us]Luanpin[:zh-cn]滦平县','','',0,46,0,NULL,1,0,0),(604,0,0,NULL,3,3,'[:en-us]Longhua[:zh-cn]隆化县','','',0,46,0,NULL,1,0,0),(605,0,0,NULL,3,3,'[:en-us]Fengningmanzu[:zh-cn]丰宁满族自治县','','',0,46,0,NULL,1,0,0),(606,0,0,NULL,3,3,'[:en-us]Kuanchengmanzu[:zh-cn]宽城满族自治县','','',0,46,0,NULL,1,0,0),(607,0,0,NULL,3,3,'[:en-us]Kuanchengmanzu[:zh-cn]围场满族蒙古族自治县','','',0,46,0,NULL,1,0,0),(608,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,46,0,NULL,1,0,0),(609,0,0,NULL,3,3,'[:en-us]Shuangqiao[:zh-cn]双桥区','','',0,46,0,NULL,1,0,0),(610,0,0,NULL,3,3,'[:en-us]Shuangluan[:zh-cn]双滦区','','',0,46,0,NULL,1,0,0),(611,0,0,NULL,3,3,'[:en-us]Yingshouyingzi[:zh-cn]鹰手营子矿区','','',0,46,0,NULL,1,0,0),(612,0,0,NULL,3,3,'[:en-us]Chengde[:zh-cn]承德县','','',0,46,0,NULL,1,0,0),(613,0,0,NULL,3,3,'[:en-us]Xinglong[:zh-cn]兴隆县','','',0,46,0,NULL,1,0,0),(614,0,0,NULL,3,3,'[:en-us]Pingquan[:zh-cn]平泉县','','',0,46,0,NULL,1,0,0),(615,0,0,NULL,3,3,'[:en-us]Luanpin[:zh-cn]滦平县','','',0,46,0,NULL,1,0,0),(616,0,0,NULL,3,3,'[:en-us]Longhua[:zh-cn]隆化县','','',0,46,0,NULL,1,0,0),(617,0,0,NULL,3,3,'[:en-us]Fengningmanzu[:zh-cn]丰宁满族自治县','','',0,46,0,NULL,1,0,0),(618,0,0,NULL,3,3,'[:en-us]Kuanchengmanzu[:zh-cn]宽城满族自治县','','',0,46,0,NULL,1,0,0),(619,0,0,NULL,3,3,'[:en-us]Kuanchengmanzu[:zh-cn]围场满族蒙古族自治县','','',0,46,0,NULL,1,0,0),(620,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,47,0,NULL,1,0,0),(621,0,0,NULL,3,3,'[:en-us]Xinhua[:zh-cn]新华区','','',0,47,0,NULL,1,0,0),(622,0,0,NULL,3,3,'[:en-us]Yunhe[:zh-cn]运河区','','',0,47,0,NULL,1,0,0),(623,0,0,NULL,3,3,'[:en-us]Cangxian[:zh-cn]沧县','','',0,47,0,NULL,1,0,0),(624,0,0,NULL,3,3,'[:en-us]Qingxian[:zh-cn]青县','','',0,47,0,NULL,1,0,0),(625,0,0,NULL,3,3,'[:en-us]Dongguang[:zh-cn]东光县','','',0,47,0,NULL,1,0,0),(626,0,0,NULL,3,3,'[:en-us]Haixing[:zh-cn]海兴县','','',0,47,0,NULL,1,0,0),(627,0,0,NULL,3,3,'[:en-us]Yanshan[:zh-cn]盐山县','','',0,47,0,NULL,1,0,0),(628,0,0,NULL,3,3,'[:en-us]Suning[:zh-cn]肃宁县','','',0,47,0,NULL,1,0,0),(629,0,0,NULL,3,3,'[:en-us]Nanpi[:zh-cn]南皮县','','',0,47,0,NULL,1,0,0),(630,0,0,NULL,3,3,'[:en-us]Wuqiao[:zh-cn]吴桥县','','',0,47,0,NULL,1,0,0),(631,0,0,NULL,3,3,'[:en-us]Xianxian[:zh-cn]献县','','',0,47,0,NULL,1,0,0),(632,0,0,NULL,3,3,'[:en-us]Mengcunhuizu[:zh-cn]孟村回族自治县','','',0,47,0,NULL,1,0,0),(633,0,0,NULL,3,3,'[:en-us]Botou[:zh-cn]泊头市','','',0,47,0,NULL,1,0,0),(634,0,0,NULL,3,3,'[:en-us]Renqiu[:zh-cn]任丘市','','',0,47,0,NULL,1,0,0),(635,0,0,NULL,3,3,'[:en-us]Huanghua[:zh-cn]黄骅市','','',0,47,0,NULL,1,0,0),(636,0,0,NULL,3,3,'[:en-us]Hejian[:zh-cn]河间市','','',0,47,0,NULL,1,0,0),(637,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,48,0,NULL,1,0,0),(638,0,0,NULL,3,3,'[:en-us]Anci[:zh-cn]安次区','','',0,48,0,NULL,1,0,0),(639,0,0,NULL,3,3,'[:en-us]Gangyang[:zh-cn]广阳区','','',0,48,0,NULL,1,0,0),(640,0,0,NULL,3,3,'[:en-us]Guan[:zh-cn]固安县','','',0,48,0,NULL,1,0,0),(641,0,0,NULL,3,3,'[:en-us]Yongqing[:zh-cn]永清县','','',0,48,0,NULL,1,0,0),(642,0,0,NULL,3,3,'[:en-us]Xianghe[:zh-cn]香河县','','',0,48,0,NULL,1,0,0),(643,0,0,NULL,3,3,'[:en-us]Dacheng[:zh-cn]大城县','','',0,48,0,NULL,1,0,0),(644,0,0,NULL,3,3,'[:en-us]Wenan[:zh-cn]文安县','','',0,48,0,NULL,1,0,0),(645,0,0,NULL,3,3,'[:en-us]Dachanghuizu[:zh-cn]大厂回族自治县','','',0,48,0,NULL,1,0,0),(646,0,0,NULL,3,3,'[:en-us]Bazhou[:zh-cn]霸州市','','',0,48,0,NULL,1,0,0),(647,0,0,NULL,3,3,'[:en-us]Sanhe[:zh-cn]三河市','','',0,48,0,NULL,1,0,0),(648,0,0,NULL,3,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,49,0,NULL,1,0,0),(649,0,0,NULL,3,3,'[:en-us]Taocheng[:zh-cn]桃城区','','',0,49,0,NULL,1,0,0),(650,0,0,NULL,3,3,'[:en-us]Zaoqiang[:zh-cn]枣强县','','',0,49,0,NULL,1,0,0),(651,0,0,NULL,3,3,'[:en-us]Wuyi[:zh-cn]武邑县','','',0,49,0,NULL,1,0,0),(652,0,0,NULL,3,3,'[:en-us]Wuqiang[:zh-cn]武强县','','',0,49,0,NULL,1,0,0),(653,0,0,NULL,3,3,'[:en-us]Raoyang[:zh-cn]饶阳县','','',0,49,0,NULL,1,0,0),(654,0,0,NULL,3,3,'[:en-us]Anping[:zh-cn]安平县','','',0,49,0,NULL,1,0,0),(655,0,0,NULL,3,3,'[:en-us]Gucheng[:zh-cn]故城县','','',0,49,0,NULL,1,0,0),(656,0,0,NULL,3,3,'[:en-us]Jingxian[:zh-cn]景县','','',0,49,0,NULL,1,0,0),(657,0,0,NULL,3,3,'[:en-us]Fucheng[:zh-cn]阜城县','','',0,49,0,NULL,1,0,0),(658,0,0,NULL,3,3,'[:en-us]Jizhou[:zh-cn]冀州市','','',0,49,0,NULL,1,0,0),(659,0,0,NULL,3,3,'[:en-us]Shenzhou[:zh-cn]深州市','','',0,49,0,NULL,1,0,0),(660,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,50,0,NULL,1,0,0),(661,0,0,NULL,4,3,'[:en-us]Xiaodian[:zh-cn]小店区','','',0,50,0,NULL,1,0,0),(662,0,0,NULL,4,3,'[:en-us]Yinze[:zh-cn]迎泽区','','',0,50,0,NULL,1,0,0),(663,0,0,NULL,4,3,'[:en-us]Xinghualing[:zh-cn]杏花岭区','','',0,50,0,NULL,1,0,0),(664,0,0,NULL,4,3,'[:en-us]Jiancaoping[:zh-cn]尖草坪区','','',0,50,0,NULL,1,0,0),(665,0,0,NULL,4,3,'[:en-us]Wanbailin[:zh-cn]万柏林区','','',0,50,0,NULL,1,0,0),(666,0,0,NULL,4,3,'[:en-us]Jiyuan[:zh-cn]晋源区','','',0,50,0,NULL,1,0,0),(667,0,0,NULL,4,3,'[:en-us]Qingxu[:zh-cn]清徐县','','',0,50,0,NULL,1,0,0),(668,0,0,NULL,4,3,'[:en-us]Yangqu[:zh-cn]阳曲县','','',0,50,0,NULL,1,0,0),(669,0,0,NULL,4,3,'[:en-us]Loufan[:zh-cn]娄烦县','','',0,50,0,NULL,1,0,0),(670,0,0,NULL,4,3,'[:en-us]Gujiao[:zh-cn]古交市','','',0,50,0,NULL,1,0,0),(671,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,51,0,NULL,1,0,0),(672,0,0,NULL,4,3,'[:en-us]Chengqu[:zh-cn]城区','','',0,51,0,NULL,1,0,0),(673,0,0,NULL,4,3,'[:en-us]Kuangqu[:zh-cn]矿区','','',0,51,0,NULL,1,0,0),(674,0,0,NULL,4,3,'[:en-us]Nangjiaoqu[:zh-cn]南郊区','','',0,51,0,NULL,1,0,0),(675,0,0,NULL,4,3,'[:en-us]Xingrongqu[:zh-cn]新荣区','','',0,51,0,NULL,1,0,0),(676,0,0,NULL,4,3,'[:en-us]Yanggao[:zh-cn]阳高县','','',0,51,0,NULL,1,0,0),(677,0,0,NULL,4,3,'[:en-us]Tianzhen[:zh-cn]天镇县','','',0,51,0,NULL,1,0,0),(678,0,0,NULL,4,3,'[:en-us]Guangling[:zh-cn]广灵县','','',0,51,0,NULL,1,0,0),(679,0,0,NULL,4,3,'[:en-us]Lingqiu[:zh-cn]灵丘县','','',0,51,0,NULL,1,0,0),(680,0,0,NULL,4,3,'[:en-us]Hunyuan[:zh-cn]浑源县','','',0,51,0,NULL,1,0,0),(681,0,0,NULL,4,3,'[:en-us]Zuoyun[:zh-cn]左云县','','',0,51,0,NULL,1,0,0),(682,0,0,NULL,4,3,'[:en-us]Datong[:zh-cn]大同县','','',0,51,0,NULL,1,0,0),(683,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,52,0,NULL,1,0,0),(684,0,0,NULL,4,3,'[:en-us]Chengqu[:zh-cn]城区','','',0,52,0,NULL,1,0,0),(685,0,0,NULL,4,3,'[:en-us]Kuangqu[:zh-cn]矿区','','',0,52,0,NULL,1,0,0),(686,0,0,NULL,4,3,'[:en-us]Jiaoqu[:zh-cn]郊区','','',0,52,0,NULL,1,0,0),(687,0,0,NULL,4,3,'[:en-us]Pingding[:zh-cn]平定县','','',0,52,0,NULL,1,0,0),(688,0,0,NULL,4,3,'[:en-us]yuxiang[:zh-cn]盂县','','',0,52,0,NULL,1,0,0),(689,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,53,0,NULL,1,0,0),(690,0,0,NULL,4,3,'[:en-us]Chengqu[:zh-cn]城区','','',0,53,0,NULL,1,0,0),(691,0,0,NULL,4,3,'[:en-us]Jiaoqu[:zh-cn]郊区','','',0,53,0,NULL,1,0,0),(692,0,0,NULL,4,3,'[:en-us]Changzhi[:zh-cn]长治县','','',0,53,0,NULL,1,0,0),(693,0,0,NULL,4,3,'[:en-us]Xiangyuan[:zh-cn]襄垣县','','',0,53,0,NULL,1,0,0),(694,0,0,NULL,4,3,'[:en-us]Dunliu[:zh-cn]屯留县','','',0,53,0,NULL,1,0,0),(695,0,0,NULL,4,3,'[:en-us]Pingshun[:zh-cn]平顺县','','',0,53,0,NULL,1,0,0),(696,0,0,NULL,4,3,'[:en-us]Licheng[:zh-cn]黎城县','','',0,53,0,NULL,1,0,0),(697,0,0,NULL,4,3,'[:en-us]Huguan[:zh-cn]壶关县','','',0,53,0,NULL,1,0,0),(698,0,0,NULL,4,3,'[:en-us]Changzi[:zh-cn]长子县','','',0,53,0,NULL,1,0,0),(699,0,0,NULL,4,3,'[:en-us]Wuxiang[:zh-cn]武乡县','','',0,53,0,NULL,1,0,0),(700,0,0,NULL,4,3,'[:en-us]Qinxian[:zh-cn]沁县','','',0,53,0,NULL,1,0,0),(701,0,0,NULL,4,3,'[:en-us]Qinyuan[:zh-cn]沁源县','','',0,53,0,NULL,1,0,0),(702,0,0,NULL,4,3,'[:en-us]Lucheng[:zh-cn]潞城市','','',0,53,0,NULL,1,0,0),(703,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,54,0,NULL,1,0,0),(704,0,0,NULL,4,3,'[:en-us]Chengqu[:zh-cn]城区','','',0,54,0,NULL,1,0,0),(705,0,0,NULL,4,3,'[:en-us]Qinshui[:zh-cn]沁水县','','',0,54,0,NULL,1,0,0),(706,0,0,NULL,4,3,'[:en-us]Yangcheng[:zh-cn]阳城县','','',0,54,0,NULL,1,0,0),(707,0,0,NULL,4,3,'[:en-us]Lingchuan[:zh-cn]陵川县','','',0,54,0,NULL,1,0,0),(708,0,0,NULL,4,3,'[:en-us]Zezhou[:zh-cn]泽州县','','',0,54,0,NULL,1,0,0),(709,0,0,NULL,4,3,'[:en-us]Gaoping[:zh-cn]高平市','','',0,54,0,NULL,1,0,0),(710,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,55,0,NULL,1,0,0),(711,0,0,NULL,4,3,'[:en-us]Suocheng[:zh-cn]朔城区','','',0,55,0,NULL,1,0,0),(712,0,0,NULL,4,3,'[:en-us]Pinglu[:zh-cn]平鲁区','','',0,55,0,NULL,1,0,0),(713,0,0,NULL,4,3,'[:en-us]Shanyin[:zh-cn]山阴县','','',0,55,0,NULL,1,0,0),(714,0,0,NULL,4,3,'[:en-us]Yingxiang[:zh-cn]应县','','',0,55,0,NULL,1,0,0),(715,0,0,NULL,4,3,'[:en-us]Youyu[:zh-cn]右玉县','','',0,55,0,NULL,1,0,0),(716,0,0,NULL,4,3,'[:en-us]Huairen[:zh-cn]怀仁县','','',0,55,0,NULL,1,0,0),(717,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,56,0,NULL,1,0,0),(718,0,0,NULL,4,3,'[:en-us]Yuci[:zh-cn]榆次区','','',0,56,0,NULL,1,0,0),(719,0,0,NULL,4,3,'[:en-us]Yushe[:zh-cn]榆社县','','',0,56,0,NULL,1,0,0),(720,0,0,NULL,4,3,'[:en-us]Zuoquan[:zh-cn]左权县','','',0,56,0,NULL,1,0,0),(721,0,0,NULL,4,3,'[:en-us]Heshun[:zh-cn]和顺县','','',0,56,0,NULL,1,0,0),(722,0,0,NULL,4,3,'[:en-us]Xiyang[:zh-cn]昔阳县','','',0,56,0,NULL,1,0,0),(723,0,0,NULL,4,3,'[:en-us]Shouyang[:zh-cn]寿阳县','','',0,56,0,NULL,1,0,0),(724,0,0,NULL,4,3,'[:en-us]Taigu[:zh-cn]太谷县','','',0,56,0,NULL,1,0,0),(725,0,0,NULL,4,3,'[:en-us]Qixian[:zh-cn]祁县','','',0,56,0,NULL,1,0,0),(726,0,0,NULL,4,3,'[:en-us]Pingyao[:zh-cn]平遥县','','',0,56,0,NULL,1,0,0),(727,0,0,NULL,4,3,'[:en-us]Lingshi[:zh-cn]灵石县','','',0,56,0,NULL,1,0,0),(728,0,0,NULL,4,3,'[:en-us]Jiexiu[:zh-cn]介休市','','',0,56,0,NULL,1,0,0),(729,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,57,0,NULL,1,0,0),(730,0,0,NULL,4,3,'[:en-us]Yanhu[:zh-cn]盐湖区','','',0,57,0,NULL,1,0,0),(731,0,0,NULL,4,3,'[:en-us]Linyi[:zh-cn]临猗县','','',0,57,0,NULL,1,0,0),(732,0,0,NULL,4,3,'[:en-us]Wanrong[:zh-cn]万荣县','','',0,57,0,NULL,1,0,0),(733,0,0,NULL,4,3,'[:en-us]Wenxi[:zh-cn]闻喜县','','',0,57,0,NULL,1,0,0),(734,0,0,NULL,4,3,'[:en-us]Jishan[:zh-cn]稷山县','','',0,57,0,NULL,1,0,0),(735,0,0,NULL,4,3,'[:en-us]Xijiang[:zh-cn]新绛县','','',0,57,0,NULL,1,0,0),(736,0,0,NULL,4,3,'[:en-us]Jiangxian[:zh-cn]绛县','','',0,57,0,NULL,1,0,0),(737,0,0,NULL,4,3,'[:en-us]Yuanqu[:zh-cn]垣曲县','','',0,57,0,NULL,1,0,0),(738,0,0,NULL,4,3,'[:en-us]Xiaxian[:zh-cn]夏县','','',0,57,0,NULL,1,0,0),(739,0,0,NULL,4,3,'[:en-us]Pinglu[:zh-cn]平陆县','','',0,57,0,NULL,1,0,0),(740,0,0,NULL,4,3,'[:en-us]Ruicheng[:zh-cn]芮城县','','',0,57,0,NULL,1,0,0),(741,0,0,NULL,4,3,'[:en-us]Yongji[:zh-cn]永济市','','',0,57,0,NULL,1,0,0),(742,0,0,NULL,4,3,'[:en-us]Hejing[:zh-cn]河津市','','',0,57,0,NULL,1,0,0),(743,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,58,0,NULL,1,0,0),(744,0,0,NULL,4,3,'[:en-us]Xinfu[:zh-cn]忻府区','','',0,58,0,NULL,1,0,0),(745,0,0,NULL,4,3,'[:en-us]Dingxiang[:zh-cn]定襄县','','',0,58,0,NULL,1,0,0),(746,0,0,NULL,4,3,'[:en-us]Wutai[:zh-cn]五台县','','',0,58,0,NULL,1,0,0),(747,0,0,NULL,4,3,'[:en-us]Daixian[:zh-cn]代县','','',0,58,0,NULL,1,0,0),(748,0,0,NULL,4,3,'[:en-us]Fanzhi[:zh-cn]繁峙县','','',0,58,0,NULL,1,0,0),(749,0,0,NULL,4,3,'[:en-us]Ningwu[:zh-cn]宁武县','','',0,58,0,NULL,1,0,0),(750,0,0,NULL,4,3,'[:en-us]Qingyue[:zh-cn]静乐县','','',0,58,0,NULL,1,0,0),(751,0,0,NULL,4,3,'[:en-us]Shenchi[:zh-cn]神池县','','',0,58,0,NULL,1,0,0),(752,0,0,NULL,4,3,'[:en-us]Wuzhai[:zh-cn]五寨县','','',0,58,0,NULL,1,0,0),(753,0,0,NULL,4,3,'[:en-us]Kelan[:zh-cn]岢岚县','','',0,58,0,NULL,1,0,0),(754,0,0,NULL,4,3,'[:en-us]Hequ[:zh-cn]河曲县','','',0,58,0,NULL,1,0,0),(755,0,0,NULL,4,3,'[:en-us]Boaode[:zh-cn]保德县','','',0,58,0,NULL,1,0,0),(756,0,0,NULL,4,3,'[:en-us]Pianguan[:zh-cn]偏关县','','',0,58,0,NULL,1,0,0),(757,0,0,NULL,4,3,'[:en-us]Yuanpin[:zh-cn]原平市','','',0,58,0,NULL,1,0,0),(758,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,59,0,NULL,1,0,0),(759,0,0,NULL,4,3,'[:en-us]Yaodu[:zh-cn]尧都区','','',0,59,0,NULL,1,0,0),(760,0,0,NULL,4,3,'[:en-us]Quwo[:zh-cn]曲沃县','','',0,59,0,NULL,1,0,0),(761,0,0,NULL,4,3,'[:en-us]Yicheng[:zh-cn]翼城县','','',0,59,0,NULL,1,0,0),(762,0,0,NULL,4,3,'[:en-us]Xiangfen[:zh-cn]襄汾县','','',0,59,0,NULL,1,0,0),(763,0,0,NULL,4,3,'[:en-us]Hongdong[:zh-cn]洪洞县','','',0,59,0,NULL,1,0,0),(764,0,0,NULL,4,3,'[:en-us]Guxian[:zh-cn]古县','','',0,59,0,NULL,1,0,0),(765,0,0,NULL,4,3,'[:en-us]Anze[:zh-cn]安泽县','','',0,59,0,NULL,1,0,0),(766,0,0,NULL,4,3,'[:en-us]Fushan[:zh-cn]浮山县','','',0,59,0,NULL,1,0,0),(767,0,0,NULL,4,3,'[:en-us]Jixian[:zh-cn]吉县','','',0,59,0,NULL,1,0,0),(768,0,0,NULL,4,3,'[:en-us]Xiangning[:zh-cn]乡宁县','','',0,59,0,NULL,1,0,0),(769,0,0,NULL,4,3,'[:en-us]Daning[:zh-cn]大宁县','','',0,59,0,NULL,1,0,0),(770,0,0,NULL,4,3,'[:en-us]Xixian[:zh-cn]隰县','','',0,59,0,NULL,1,0,0),(771,0,0,NULL,4,3,'[:en-us]Yonghe[:zh-cn]永和县','','',0,59,0,NULL,1,0,0),(772,0,0,NULL,4,3,'[:en-us]Puxian[:zh-cn]蒲县','','',0,59,0,NULL,1,0,0),(773,0,0,NULL,4,3,'[:en-us]Fenxi[:zh-cn]汾西县','','',0,59,0,NULL,1,0,0),(774,0,0,NULL,4,3,'[:en-us]Houma[:zh-cn]侯马市','','',0,59,0,NULL,1,0,0),(775,0,0,NULL,4,3,'[:en-us]Huozhou[:zh-cn]霍州市','','',0,59,0,NULL,1,0,0),(776,0,0,NULL,4,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,60,0,NULL,1,0,0),(777,0,0,NULL,4,3,'[:en-us]Lishi[:zh-cn]离石区','','',0,60,0,NULL,1,0,0),(778,0,0,NULL,4,3,'[:en-us]Wenshui[:zh-cn]文水县','','',0,60,0,NULL,1,0,0),(779,0,0,NULL,4,3,'[:en-us]Jiaocheng[:zh-cn]交城县','','',0,60,0,NULL,1,0,0),(780,0,0,NULL,4,3,'[:en-us]Xingxian[:zh-cn]兴县','','',0,60,0,NULL,1,0,0),(781,0,0,NULL,4,3,'[:en-us]Linxian[:zh-cn]临县','','',0,60,0,NULL,1,0,0),(782,0,0,NULL,4,3,'[:en-us]Liulin[:zh-cn]柳林县','','',0,60,0,NULL,1,0,0),(783,0,0,NULL,4,3,'[:en-us]Shilou[:zh-cn]石楼县','','',0,60,0,NULL,1,0,0),(784,0,0,NULL,4,3,'[:en-us]Lanxian[:zh-cn]岚县','','',0,60,0,NULL,1,0,0),(785,0,0,NULL,4,3,'[:en-us]Fangshan[:zh-cn]方山县','','',0,60,0,NULL,1,0,0),(786,0,0,NULL,4,3,'[:en-us]Zhongyang[:zh-cn]中阳县','','',0,60,0,NULL,1,0,0),(787,0,0,NULL,4,3,'[:en-us]Jiaokou[:zh-cn]交口县','','',0,60,0,NULL,1,0,0),(788,0,0,NULL,4,3,'[:en-us]Xiaoyi[:zh-cn]孝义市','','',0,60,0,NULL,1,0,0),(789,0,0,NULL,4,3,'[:en-us]Fenyang[:zh-cn]汾阳市','','',0,60,0,NULL,1,0,0),(790,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,61,0,NULL,1,0,0),(791,0,0,NULL,5,3,'[:en-us]Xincheng[:zh-cn]新城区','','',0,61,0,NULL,1,0,0),(792,0,0,NULL,5,3,'[:en-us]Huimin[:zh-cn]回民区','','',0,61,0,NULL,1,0,0),(793,0,0,NULL,5,3,'[:en-us]Yuquan[:zh-cn]玉泉区','','',0,61,0,NULL,1,0,0),(794,0,0,NULL,5,3,'[:en-us]Saihan[:zh-cn]赛罕区','','',0,61,0,NULL,1,0,0),(795,0,0,NULL,5,3,'[:en-us]Tumotezuoqi[:zh-cn]土默特左旗','','',0,61,0,NULL,1,0,0),(796,0,0,NULL,5,3,'[:en-us]Tuoketuo[:zh-cn]托克托县','','',0,61,0,NULL,1,0,0),(797,0,0,NULL,5,3,'[:en-us]Helingeer[:zh-cn]和林格尔县','','',0,61,0,NULL,1,0,0),(798,0,0,NULL,5,3,'[:en-us]Qinshuihe[:zh-cn]清水河县','','',0,61,0,NULL,1,0,0),(799,0,0,NULL,5,3,'[:en-us]Wuchuan[:zh-cn]武川县','','',0,61,0,NULL,1,0,0),(800,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,62,0,NULL,1,0,0),(801,0,0,NULL,5,3,'[:en-us]Donghe[:zh-cn]东河区','','',0,62,0,NULL,1,0,0),(802,0,0,NULL,5,3,'[:en-us]Kundulun[:zh-cn]昆都仑区','','',0,62,0,NULL,1,0,0),(803,0,0,NULL,5,3,'[:en-us]Qinshan[:zh-cn]青山区','','',0,62,0,NULL,1,0,0),(804,0,0,NULL,5,3,'[:en-us]Shiguan[:zh-cn]石拐区','','',0,62,0,NULL,1,0,0),(805,0,0,NULL,5,3,'[:en-us]Baiyunkuang[:zh-cn]白云矿区','','',0,62,0,NULL,1,0,0),(806,0,0,NULL,5,3,'[:en-us]Jiuyuan[:zh-cn]九原区','','',0,62,0,NULL,1,0,0),(807,0,0,NULL,5,3,'[:en-us]Tumoteyouqi[:zh-cn]土默特右旗','','',0,62,0,NULL,1,0,0),(808,0,0,NULL,5,3,'[:en-us]Guyan[:zh-cn]固阳县','','',0,62,0,NULL,1,0,0),(809,0,0,NULL,5,3,'[:en-us]Daerhanmaominganlianheqi[:zh-cn]达尔罕茂明安联合旗','','',0,62,0,NULL,1,0,0),(810,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,63,0,NULL,1,0,0),(811,0,0,NULL,5,3,'[:en-us]Haibowan[:zh-cn]海勃湾区','','',0,63,0,NULL,1,0,0),(812,0,0,NULL,5,3,'[:en-us]Hainan[:zh-cn]海南区','','',0,63,0,NULL,1,0,0),(813,0,0,NULL,5,3,'[:en-us]Wuda[:zh-cn]乌达区','','',0,63,0,NULL,1,0,0),(814,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,64,0,NULL,1,0,0),(815,0,0,NULL,5,3,'[:en-us]Hongshan[:zh-cn]红山区','','',0,64,0,NULL,1,0,0),(816,0,0,NULL,5,3,'[:en-us]Yanbaoshan[:zh-cn]元宝山区','','',0,64,0,NULL,1,0,0),(817,0,0,NULL,5,3,'[:en-us]Songshan[:zh-cn]松山区','','',0,64,0,NULL,1,0,0),(818,0,0,NULL,5,3,'[:en-us]Alukeerqinqi[:zh-cn]阿鲁科尔沁旗','','',0,64,0,NULL,1,0,0),(819,0,0,NULL,5,3,'[:en-us]Balinzuoqi[:zh-cn]巴林左旗','','',0,64,0,NULL,1,0,0),(820,0,0,NULL,5,3,'[:en-us]Balinyouqi[:zh-cn]巴林右旗','','',0,64,0,NULL,1,0,0),(821,0,0,NULL,5,3,'[:en-us]Linxi[:zh-cn]林西县','','',0,64,0,NULL,1,0,0),(822,0,0,NULL,5,3,'[:en-us]Keshenketeng[:zh-cn]克什克腾旗','','',0,64,0,NULL,1,0,0),(823,0,0,NULL,5,3,'[:en-us]Wengniute[:zh-cn]翁牛特旗','','',0,64,0,NULL,1,0,0),(824,0,0,NULL,5,3,'[:en-us]Kalaqin[:zh-cn]喀喇沁旗','','',0,64,0,NULL,1,0,0),(825,0,0,NULL,5,3,'[:en-us]Ningcheng[:zh-cn]宁城县','','',0,64,0,NULL,1,0,0),(826,0,0,NULL,5,3,'[:en-us]Aohan[:zh-cn]敖汉旗','','',0,64,0,NULL,1,0,0),(827,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,65,0,NULL,1,0,0),(828,0,0,NULL,5,3,'[:en-us]Keerqin[:zh-cn]科尔沁区','','',0,65,0,NULL,1,0,0),(829,0,0,NULL,5,3,'[:en-us]Keerqinzuoyi[:zh-cn]科尔沁左翼中旗','','',0,65,0,NULL,1,0,0),(830,0,0,NULL,5,3,'[:en-us]Keerqinzuoyihouqi[:zh-cn]科尔沁左翼后旗','','',0,65,0,NULL,1,0,0),(831,0,0,NULL,5,3,'[:en-us]Kilu[:zh-cn]开鲁县','','',0,65,0,NULL,1,0,0),(832,0,0,NULL,5,3,'[:en-us]Kulun[:zh-cn]库伦旗','','',0,65,0,NULL,1,0,0),(833,0,0,NULL,5,3,'[:en-us]Naiman[:zh-cn]奈曼旗','','',0,65,0,NULL,1,0,0),(834,0,0,NULL,5,3,'[:en-us]Zhalute[:zh-cn]扎鲁特旗','','',0,65,0,NULL,1,0,0),(835,0,0,NULL,5,3,'[:en-us]Milinguole[:zh-cn]霍林郭勒市','','',0,65,0,NULL,1,0,0),(836,0,0,NULL,5,3,'[:en-us]Dongsheng[:zh-cn]东胜区','','',0,66,0,NULL,1,0,0),(837,0,0,NULL,5,3,'[:en-us]Dalate[:zh-cn]达拉特旗','','',0,66,0,NULL,1,0,0),(838,0,0,NULL,5,3,'[:en-us]Zhungeer[:zh-cn]准格尔旗','','',0,66,0,NULL,1,0,0),(839,0,0,NULL,5,3,'[:en-us]Etuokeqianqi[:zh-cn]鄂托克前旗','','',0,66,0,NULL,1,0,0),(840,0,0,NULL,5,3,'[:en-us]Etuokeqi[:zh-cn]鄂托克旗','','',0,66,0,NULL,1,0,0),(841,0,0,NULL,5,3,'[:en-us]Hangjinqi[:zh-cn]杭锦旗','','',0,66,0,NULL,1,0,0),(842,0,0,NULL,5,3,'[:en-us]Wushenqi[:zh-cn]乌审旗','','',0,66,0,NULL,1,0,0),(843,0,0,NULL,5,3,'[:en-us]Yijinhuoluo[:zh-cn]伊金霍洛旗','','',0,66,0,NULL,1,0,0),(844,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,67,0,NULL,1,0,0),(845,0,0,NULL,5,3,'[:en-us]Hailaer[:zh-cn]海拉尔区','','',0,67,0,NULL,1,0,0),(846,0,0,NULL,5,3,'[:en-us]Arongqi[:zh-cn]阿荣旗','','',0,67,0,NULL,1,0,0),(847,0,0,NULL,5,3,'[:en-us]Molidawaganerzu[:zh-cn]莫力达瓦达斡尔族自治旗','','',0,67,0,NULL,1,0,0),(848,0,0,NULL,5,3,'[:en-us]Elunchun[:zh-cn]鄂伦春自治旗','','',0,67,0,NULL,1,0,0),(849,0,0,NULL,5,3,'[:en-us]Ewenkezu[:zh-cn]鄂温克族自治旗','','',0,67,0,NULL,1,0,0),(850,0,0,NULL,5,3,'[:en-us]Chenbaerhuqi[:zh-cn]陈巴尔虎旗','','',0,67,0,NULL,1,0,0),(851,0,0,NULL,5,3,'[:en-us]Xinbaerhuzuoqi[:zh-cn]新巴尔虎左旗','','',0,67,0,NULL,1,0,0),(852,0,0,NULL,5,3,'[:en-us]Xinbaerhuyouqi[:zh-cn]新巴尔虎右旗','','',0,67,0,NULL,1,0,0),(853,0,0,NULL,5,3,'[:en-us]Manzhouli[:zh-cn]满洲里市','','',0,67,0,NULL,1,0,0),(854,0,0,NULL,5,3,'[:en-us]Yakeshi[:zh-cn]牙克石市','','',0,67,0,NULL,1,0,0),(855,0,0,NULL,5,3,'[:en-us]Zhalantun[:zh-cn]扎兰屯市','','',0,67,0,NULL,1,0,0),(856,0,0,NULL,5,3,'[:en-us]Eerguna[:zh-cn]额尔古纳市','','',0,67,0,NULL,1,0,0),(857,0,0,NULL,5,3,'[:en-us]Genhe[:zh-cn]根河市','','',0,67,0,NULL,1,0,0),(858,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,68,0,NULL,1,0,0),(859,0,0,NULL,5,3,'[:en-us]Linhe[:zh-cn]临河区','','',0,68,0,NULL,1,0,0),(860,0,0,NULL,5,3,'[:en-us]Wuyuan[:zh-cn]五原县','','',0,68,0,NULL,1,0,0),(861,0,0,NULL,5,3,'[:en-us]Dengkou[:zh-cn]磴口县','','',0,68,0,NULL,1,0,0),(862,0,0,NULL,5,3,'[:en-us]Wulateqianqi[:zh-cn]乌拉特前旗','','',0,68,0,NULL,1,0,0),(863,0,0,NULL,5,3,'[:en-us]Wulatezhongqi[:zh-cn]乌拉特中旗','','',0,68,0,NULL,1,0,0),(864,0,0,NULL,5,3,'[:en-us]Wulatehouqi[:zh-cn]乌拉特后旗','','',0,68,0,NULL,1,0,0),(865,0,0,NULL,5,3,'[:en-us]Hangjinhouqi[:zh-cn]杭锦后旗','','',0,68,0,NULL,1,0,0),(866,0,0,NULL,5,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,69,0,NULL,1,0,0),(867,0,0,NULL,5,3,'[:en-us]Jining[:zh-cn]集宁区','','',0,69,0,NULL,1,0,0),(868,0,0,NULL,5,3,'[:en-us]Zhuozi[:zh-cn]卓资县','','',0,69,0,NULL,1,0,0),(869,0,0,NULL,5,3,'[:en-us]Huade[:zh-cn]化德县','','',0,69,0,NULL,1,0,0),(870,0,0,NULL,5,3,'[:en-us]Shangdu[:zh-cn]商都县','','',0,69,0,NULL,1,0,0),(871,0,0,NULL,5,3,'[:en-us]Xinghe[:zh-cn]兴和县','','',0,69,0,NULL,1,0,0),(872,0,0,NULL,5,3,'[:en-us]Liangcheng[:zh-cn]凉城县','','',0,69,0,NULL,1,0,0),(873,0,0,NULL,5,3,'[:en-us]Chahaeryouyiqianqi[:zh-cn]察哈尔右翼前旗','','',0,69,0,NULL,1,0,0),(874,0,0,NULL,5,3,'[:en-us]Chahaeryouyizhongnqi[:zh-cn]察哈尔右翼中旗','','',0,69,0,NULL,1,0,0),(875,0,0,NULL,5,3,'[:en-us]Chahaeryouyihounqi[:zh-cn]察哈尔右翼后旗','','',0,69,0,NULL,1,0,0),(876,0,0,NULL,5,3,'[:en-us]Siziwang[:zh-cn]四子王旗','','',0,69,0,NULL,1,0,0),(877,0,0,NULL,5,3,'[:en-us]Fengzhen[:zh-cn]丰镇市','','',0,69,0,NULL,1,0,0),(878,0,0,NULL,5,3,'[:en-us]Wulanhaote[:zh-cn]乌兰浩特市','','',0,70,0,NULL,1,0,0),(879,0,0,NULL,5,3,'[:en-us]Aershan[:zh-cn]阿尔山市','','',0,70,0,NULL,1,0,0),(880,0,0,NULL,5,3,'[:en-us]Keerqinyouyiqianqi[:zh-cn]科尔沁右翼前旗','','',0,70,0,NULL,1,0,0),(881,0,0,NULL,5,3,'[:en-us]Keerqinyouyizhongqi[:zh-cn]科尔沁右翼中旗','','',0,70,0,NULL,1,0,0),(882,0,0,NULL,5,3,'[:en-us]Laiteqi[:zh-cn]扎赉特旗','','',0,70,0,NULL,1,0,0),(883,0,0,NULL,5,3,'[:en-us]Tuquan[:zh-cn]突泉县','','',0,70,0,NULL,1,0,0),(884,0,0,NULL,5,3,'[:en-us]Erlianhaote[:zh-cn]二连浩特市','','',0,71,0,NULL,1,0,0),(885,0,0,NULL,5,3,'[:en-us]Xilinhaote[:zh-cn]锡林浩特市','','',0,71,0,NULL,1,0,0),(886,0,0,NULL,5,3,'[:en-us]Abagaqi[:zh-cn]阿巴嘎旗','','',0,71,0,NULL,1,0,0),(887,0,0,NULL,5,3,'[:en-us]Sunitezuoqi[:zh-cn]苏尼特左旗','','',0,71,0,NULL,1,0,0),(888,0,0,NULL,5,3,'[:en-us]Suniteyouqi[:zh-cn]苏尼特右旗','','',0,71,0,NULL,1,0,0),(889,0,0,NULL,5,3,'[:en-us]Dongwuzhumuqinqi[:zh-cn]东乌珠穆沁旗','','',0,71,0,NULL,1,0,0),(890,0,0,NULL,5,3,'[:en-us]Xiwuzhumuqinqi[:zh-cn]西乌珠穆沁旗','','',0,71,0,NULL,1,0,0),(891,0,0,NULL,5,3,'[:en-us]Taipusi[:zh-cn]太仆寺旗','','',0,71,0,NULL,1,0,0),(892,0,0,NULL,5,3,'[:en-us]Xianghuangqi[:zh-cn]镶黄旗','','',0,71,0,NULL,1,0,0),(893,0,0,NULL,5,3,'[:en-us]Zhengxiangbaiqi[:zh-cn]正镶白旗','','',0,71,0,NULL,1,0,0),(894,0,0,NULL,5,3,'[:en-us]Zhenglanqi[:zh-cn]正蓝旗','','',0,71,0,NULL,1,0,0),(895,0,0,NULL,5,3,'[:en-us]Duolun[:zh-cn]多伦县','','',0,71,0,NULL,1,0,0),(896,0,0,NULL,5,3,'[:en-us]Alashanzuoqi[:zh-cn]阿拉善左旗','','',0,72,0,NULL,1,0,0),(897,0,0,NULL,5,3,'[:en-us]Alashanyouqi[:zh-cn]阿拉善右旗','','',0,72,0,NULL,1,0,0),(898,0,0,NULL,5,3,'[:en-us]Ejinaqi[:zh-cn]额济纳旗','','',0,72,0,NULL,1,0,0),(899,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,73,0,NULL,1,0,0),(900,0,0,NULL,6,3,'[:en-us]Heping[:zh-cn]和平区','','',0,73,0,NULL,1,0,0),(901,0,0,NULL,6,3,'[:en-us]Shenghe[:zh-cn]沈河区','','',0,73,0,NULL,1,0,0),(902,0,0,NULL,6,3,'[:en-us]Dadong[:zh-cn]大东区','','',0,73,0,NULL,1,0,0),(903,0,0,NULL,6,3,'[:en-us]Huanggu[:zh-cn]皇姑区','','',0,73,0,NULL,1,0,0),(904,0,0,NULL,6,3,'[:en-us]Tiexi[:zh-cn]铁西区','','',0,73,0,NULL,1,0,0),(905,0,0,NULL,6,3,'[:en-us]Sujiatun[:zh-cn]苏家屯区','','',0,73,0,NULL,1,0,0),(906,0,0,NULL,6,3,'[:en-us]Dongling[:zh-cn]东陵区','','',0,73,0,NULL,1,0,0),(907,0,0,NULL,6,3,'[:en-us]Xingchengzi[:zh-cn]新城子区','','',0,73,0,NULL,1,0,0),(908,0,0,NULL,6,3,'[:en-us]Yuhong[:zh-cn]于洪区','','',0,73,0,NULL,1,0,0),(909,0,0,NULL,6,3,'[:en-us]Liaozhong[:zh-cn]辽中县','','',0,73,0,NULL,1,0,0),(910,0,0,NULL,6,3,'[:en-us]Kangpin[:zh-cn]康平县','','',0,73,0,NULL,1,0,0),(911,0,0,NULL,6,3,'[:en-us]Faku[:zh-cn]法库县','','',0,73,0,NULL,1,0,0),(912,0,0,NULL,6,3,'[:en-us]Xingmin[:zh-cn]新民市','','',0,73,0,NULL,1,0,0),(913,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,74,0,NULL,1,0,0),(914,0,0,NULL,6,3,'[:en-us]Zhongshan[:zh-cn]中山区','','',0,74,0,NULL,1,0,0),(915,0,0,NULL,6,3,'[:en-us]Xigang[:zh-cn]西岗区','','',0,74,0,NULL,1,0,0),(916,0,0,NULL,6,3,'[:en-us]Shahekou[:zh-cn]沙河口区','','',0,74,0,NULL,1,0,0),(917,0,0,NULL,6,3,'[:en-us]Ganjingzi[:zh-cn]甘井子区','','',0,74,0,NULL,1,0,0),(918,0,0,NULL,6,3,'[:en-us]Lushunkou[:zh-cn]旅顺口区','','',0,74,0,NULL,1,0,0),(919,0,0,NULL,6,3,'[:en-us]Jinzhou[:zh-cn]金州区','','',0,74,0,NULL,1,0,0),(920,0,0,NULL,6,3,'[:en-us]Changhai[:zh-cn]长海县','','',0,74,0,NULL,1,0,0),(921,0,0,NULL,6,3,'[:en-us]Wafangdian[:zh-cn]瓦房店市','','',0,74,0,NULL,1,0,0),(922,0,0,NULL,6,3,'[:en-us]Pulandian[:zh-cn]普兰店市','','',0,74,0,NULL,1,0,0),(923,0,0,NULL,6,3,'[:en-us]Zhuanghe[:zh-cn]庄河市','','',0,74,0,NULL,1,0,0),(924,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,75,0,NULL,1,0,0),(925,0,0,NULL,6,3,'[:en-us]Tiedong[:zh-cn]铁东区','','',0,75,0,NULL,1,0,0),(926,0,0,NULL,6,3,'[:en-us]Tiexi[:zh-cn]铁西区','','',0,75,0,NULL,1,0,0),(927,0,0,NULL,6,3,'[:en-us]Lishan[:zh-cn]立山区','','',0,75,0,NULL,1,0,0),(928,0,0,NULL,6,3,'[:en-us]Qianshan[:zh-cn]千山区','','',0,75,0,NULL,1,0,0),(929,0,0,NULL,6,3,'[:en-us]Taian[:zh-cn]台安县','','',0,75,0,NULL,1,0,0),(930,0,0,NULL,6,3,'[:en-us]Quyanmanzu[:zh-cn]岫岩满族自治县','','',0,75,0,NULL,1,0,0),(931,0,0,NULL,6,3,'[:en-us]Haicheng[:zh-cn]海城市','','',0,75,0,NULL,1,0,0),(932,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,76,0,NULL,1,0,0),(933,0,0,NULL,6,3,'[:en-us]Xinfu[:zh-cn]新抚区','','',0,76,0,NULL,1,0,0),(934,0,0,NULL,6,3,'[:en-us]Dongzhou[:zh-cn]东洲区','','',0,76,0,NULL,1,0,0),(935,0,0,NULL,6,3,'[:en-us]Wanghua[:zh-cn]望花区','','',0,76,0,NULL,1,0,0),(936,0,0,NULL,6,3,'[:en-us]Shuncheng[:zh-cn]顺城区','','',0,76,0,NULL,1,0,0),(937,0,0,NULL,6,3,'[:en-us]Fushun[:zh-cn]抚顺县','','',0,76,0,NULL,1,0,0),(938,0,0,NULL,6,3,'[:en-us]Xinbinmanzu[:zh-cn]新宾满族自治县','','',0,76,0,NULL,1,0,0),(939,0,0,NULL,6,3,'[:en-us]Qingyunmanzu[:zh-cn]清原满族自治县','','',0,76,0,NULL,1,0,0),(940,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,77,0,NULL,1,0,0),(941,0,0,NULL,6,3,'[:en-us]Pingshan[:zh-cn]平山区','','',0,77,0,NULL,1,0,0),(942,0,0,NULL,6,3,'[:en-us]Xihu[:zh-cn]溪湖区','','',0,77,0,NULL,1,0,0),(943,0,0,NULL,6,3,'[:en-us]Mingshan[:zh-cn]明山区','','',0,77,0,NULL,1,0,0),(944,0,0,NULL,6,3,'[:en-us]Nanfen[:zh-cn]南芬区','','',0,77,0,NULL,1,0,0),(945,0,0,NULL,6,3,'[:en-us]Benximanzu[:zh-cn]本溪满族自治县','','',0,77,0,NULL,1,0,0),(946,0,0,NULL,6,3,'[:en-us]Henrenmanzu[:zh-cn]桓仁满族自治县','','',0,77,0,NULL,1,0,0),(947,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,78,0,NULL,1,0,0),(948,0,0,NULL,6,3,'[:en-us]yuanbao[:zh-cn]元宝区','','',0,78,0,NULL,1,0,0),(949,0,0,NULL,6,3,'[:en-us]Zhengxing[:zh-cn]振兴区','','',0,78,0,NULL,1,0,0),(950,0,0,NULL,6,3,'[:en-us]Zhenan[:zh-cn]振安区','','',0,78,0,NULL,1,0,0),(951,0,0,NULL,6,3,'[:en-us]Kuandianmanzu[:zh-cn]宽甸满族自治县','','',0,78,0,NULL,1,0,0),(952,0,0,NULL,6,3,'[:en-us]Donggang[:zh-cn]东港市','','',0,78,0,NULL,1,0,0),(953,0,0,NULL,6,3,'[:en-us]Fengcheng[:zh-cn]凤城市','','',0,78,0,NULL,1,0,0),(954,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,79,0,NULL,1,0,0),(955,0,0,NULL,6,3,'[:en-us]Guta[:zh-cn]古塔区','','',0,79,0,NULL,1,0,0),(956,0,0,NULL,6,3,'[:en-us]Linghe[:zh-cn]凌河区','','',0,79,0,NULL,1,0,0),(957,0,0,NULL,6,3,'[:en-us]Taihe[:zh-cn]太和区','','',0,79,0,NULL,1,0,0),(958,0,0,NULL,6,3,'[:en-us]Heshang[:zh-cn]黑山县','','',0,79,0,NULL,1,0,0),(959,0,0,NULL,6,3,'[:en-us]Yixian[:zh-cn]义县','','',0,79,0,NULL,1,0,0),(960,0,0,NULL,6,3,'[:en-us]Linghai[:zh-cn]凌海市','','',0,79,0,NULL,1,0,0),(961,0,0,NULL,6,3,'[:en-us]Beining[:zh-cn]北宁市','','',0,79,0,NULL,1,0,0),(962,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,80,0,NULL,1,0,0),(963,0,0,NULL,6,3,'[:en-us]Zhanqian[:zh-cn]站前区','','',0,80,0,NULL,1,0,0),(964,0,0,NULL,6,3,'[:en-us]Xinshi[:zh-cn]西市区','','',0,80,0,NULL,1,0,0),(965,0,0,NULL,6,3,'[:en-us]Bayuquan[:zh-cn]鲅鱼圈区','','',0,80,0,NULL,1,0,0),(966,0,0,NULL,6,3,'[:en-us]Lobian[:zh-cn]老边区','','',0,80,0,NULL,1,0,0),(967,0,0,NULL,6,3,'[:en-us]Ganzhou[:zh-cn]盖州市','','',0,80,0,NULL,1,0,0),(968,0,0,NULL,6,3,'[:en-us]Dashiqiao[:zh-cn]大石桥市','','',0,80,0,NULL,1,0,0),(969,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,81,0,NULL,1,0,0),(970,0,0,NULL,6,3,'[:en-us]Haizhou[:zh-cn]海州区','','',0,81,0,NULL,1,0,0),(971,0,0,NULL,6,3,'[:en-us]Xinqiu[:zh-cn]新邱区','','',0,81,0,NULL,1,0,0),(972,0,0,NULL,6,3,'[:en-us]Taiping[:zh-cn]太平区','','',0,81,0,NULL,1,0,0),(973,0,0,NULL,6,3,'[:en-us]Qinghemen[:zh-cn]清河门区','','',0,81,0,NULL,1,0,0),(974,0,0,NULL,6,3,'[:en-us]Xihe[:zh-cn]细河区','','',0,81,0,NULL,1,0,0),(975,0,0,NULL,6,3,'[:en-us]Fuxinmengguzu[:zh-cn]阜新蒙古族自治县','','',0,81,0,NULL,1,0,0),(976,0,0,NULL,6,3,'[:en-us]Zhangwu[:zh-cn]彰武县','','',0,81,0,NULL,1,0,0),(977,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,82,0,NULL,1,0,0),(978,0,0,NULL,6,3,'[:en-us]Baita[:zh-cn]白塔区','','',0,82,0,NULL,1,0,0),(979,0,0,NULL,6,3,'[:en-us]Wensheng[:zh-cn]文圣区','','',0,82,0,NULL,1,0,0),(980,0,0,NULL,6,3,'[:en-us]Hongwei[:zh-cn]宏伟区','','',0,82,0,NULL,1,0,0),(981,0,0,NULL,6,3,'[:en-us]Gongchangling[:zh-cn]弓长岭区','','',0,82,0,NULL,1,0,0),(982,0,0,NULL,6,3,'[:en-us]Taizihe[:zh-cn]太子河区','','',0,82,0,NULL,1,0,0),(983,0,0,NULL,6,3,'[:en-us]Liaoyang[:zh-cn]辽阳县','','',0,82,0,NULL,1,0,0),(984,0,0,NULL,6,3,'[:en-us]Dengta[:zh-cn]灯塔市','','',0,82,0,NULL,1,0,0),(985,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,83,0,NULL,1,0,0),(986,0,0,NULL,6,3,'[:en-us]Shuangtaizi[:zh-cn]双台子区','','',0,83,0,NULL,1,0,0),(987,0,0,NULL,6,3,'[:en-us]Xinglongtai[:zh-cn]兴隆台区','','',0,83,0,NULL,1,0,0),(988,0,0,NULL,6,3,'[:en-us]Dawa[:zh-cn]大洼县','','',0,83,0,NULL,1,0,0),(989,0,0,NULL,6,3,'[:en-us]Pangshan[:zh-cn]盘山县','','',0,83,0,NULL,1,0,0),(990,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,84,0,NULL,1,0,0),(991,0,0,NULL,6,3,'[:en-us]Yinchuan[:zh-cn]银州区','','',0,84,0,NULL,1,0,0),(992,0,0,NULL,6,3,'[:en-us]Qinghe[:zh-cn]清河区','','',0,84,0,NULL,1,0,0),(993,0,0,NULL,6,3,'[:en-us]Tieling[:zh-cn]铁岭县','','',0,84,0,NULL,1,0,0),(994,0,0,NULL,6,3,'[:en-us]Xifeng[:zh-cn]西丰县','','',0,84,0,NULL,1,0,0),(995,0,0,NULL,6,3,'[:en-us]Changtu[:zh-cn]昌图县','','',0,84,0,NULL,1,0,0),(996,0,0,NULL,6,3,'[:en-us]Diaobingshan[:zh-cn]调兵山市','','',0,84,0,NULL,1,0,0),(997,0,0,NULL,6,3,'[:en-us]Kaiyuan[:zh-cn]开原市','','',0,84,0,NULL,1,0,0),(998,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,85,0,NULL,1,0,0),(999,0,0,NULL,6,3,'[:en-us]Shuangta[:zh-cn]双塔区','','',0,85,0,NULL,1,0,0),(1000,0,0,NULL,6,3,'[:en-us]Longcheng[:zh-cn]龙城区','','',0,85,0,NULL,1,0,0),(1001,0,0,NULL,6,3,'[:en-us]Chaoyang[:zh-cn]朝阳县','','',0,85,0,NULL,1,0,0),(1002,0,0,NULL,6,3,'[:en-us]Jianpin[:zh-cn]建平县','','',0,85,0,NULL,1,0,0),(1003,0,0,NULL,6,3,'[:en-us]Kelaqinzuoyimengguzu[:zh-cn]喀喇沁左翼蒙古族自治县','','',0,85,0,NULL,1,0,0),(1004,0,0,NULL,6,3,'[:en-us]Beipiao[:zh-cn]北票市','','',0,85,0,NULL,1,0,0),(1005,0,0,NULL,6,3,'[:en-us]Lingyuan[:zh-cn]凌源市','','',0,85,0,NULL,1,0,0),(1006,0,0,NULL,6,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,86,0,NULL,1,0,0),(1007,0,0,NULL,6,3,'[:en-us]Lianshan[:zh-cn]连山区','','',0,86,0,NULL,1,0,0),(1008,0,0,NULL,6,3,'[:en-us]Longgang[:zh-cn]龙港区','','',0,86,0,NULL,1,0,0),(1009,0,0,NULL,6,3,'[:en-us]Nanpiao[:zh-cn]南票区','','',0,86,0,NULL,1,0,0),(1010,0,0,NULL,6,3,'[:en-us]Suizhong[:zh-cn]绥中县','','',0,86,0,NULL,1,0,0),(1011,0,0,NULL,6,3,'[:en-us]Jianchang[:zh-cn]建昌县','','',0,86,0,NULL,1,0,0),(1012,0,0,NULL,6,3,'[:en-us]Xingcheng[:zh-cn]兴城市','','',0,86,0,NULL,1,0,0),(1013,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,87,0,NULL,1,0,0),(1014,0,0,NULL,7,3,'[:en-us]Nanguan[:zh-cn]南关区','','',0,87,0,NULL,1,0,0),(1015,0,0,NULL,7,3,'[:en-us]Kuancheng[:zh-cn]宽城区','','',0,87,0,NULL,1,0,0),(1016,0,0,NULL,7,3,'[:en-us]Chaoyang[:zh-cn]朝阳区','','',0,87,0,NULL,1,0,0),(1017,0,0,NULL,7,3,'[:en-us]Erdao[:zh-cn]二道区','','',0,87,0,NULL,1,0,0),(1018,0,0,NULL,7,3,'[:en-us]Luyuan[:zh-cn]绿园区','','',0,87,0,NULL,1,0,0),(1019,0,0,NULL,7,3,'[:en-us]Shuangyang[:zh-cn]双阳区','','',0,87,0,NULL,1,0,0),(1020,0,0,NULL,7,3,'[:en-us]Yian[:zh-cn]农安县','','',0,87,0,NULL,1,0,0),(1021,0,0,NULL,7,3,'[:en-us]Jiutai[:zh-cn]九台市','','',0,87,0,NULL,1,0,0),(1022,0,0,NULL,7,3,'[:en-us]Yushu[:zh-cn]榆树市','','',0,87,0,NULL,1,0,0),(1023,0,0,NULL,7,3,'[:en-us]Dehun[:zh-cn]德惠市','','',0,87,0,NULL,1,0,0),(1024,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,88,0,NULL,1,0,0),(1025,0,0,NULL,7,3,'[:en-us]Chsngyi[:zh-cn]昌邑区','','',0,88,0,NULL,1,0,0),(1026,0,0,NULL,7,3,'[:en-us]Longtan[:zh-cn]龙潭区','','',0,88,0,NULL,1,0,0),(1027,0,0,NULL,7,3,'[:en-us]Chuanying[:zh-cn]船营区','','',0,88,0,NULL,1,0,0),(1028,0,0,NULL,7,3,'[:en-us]Fengman[:zh-cn]丰满区','','',0,88,0,NULL,1,0,0),(1029,0,0,NULL,7,3,'[:en-us]Yongji[:zh-cn]永吉县','','',0,88,0,NULL,1,0,0),(1030,0,0,NULL,7,3,'[:en-us]Jioahe[:zh-cn]蛟河市','','',0,88,0,NULL,1,0,0),(1031,0,0,NULL,7,3,'[:en-us]Huadian[:zh-cn]桦甸市','','',0,88,0,NULL,1,0,0),(1032,0,0,NULL,7,3,'[:en-us]Shulan[:zh-cn]舒兰市','','',0,88,0,NULL,1,0,0),(1033,0,0,NULL,7,3,'[:en-us]Panshi[:zh-cn]磐石市','','',0,88,0,NULL,1,0,0),(1034,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,89,0,NULL,1,0,0),(1035,0,0,NULL,7,3,'[:en-us]Tiexi[:zh-cn]铁西区','','',0,89,0,NULL,1,0,0),(1036,0,0,NULL,7,3,'[:en-us]Tiedong[:zh-cn]铁东区','','',0,89,0,NULL,1,0,0),(1037,0,0,NULL,7,3,'[:en-us]Lishu[:zh-cn]梨树县','','',0,89,0,NULL,1,0,0),(1038,0,0,NULL,7,3,'[:en-us]Yitongmanzu[:zh-cn]伊通满族自治县','','',0,89,0,NULL,1,0,0),(1039,0,0,NULL,7,3,'[:en-us]Gongzhuling[:zh-cn]公主岭市','','',0,89,0,NULL,1,0,0),(1040,0,0,NULL,7,3,'[:en-us]Shuangliao[:zh-cn]双辽市','','',0,89,0,NULL,1,0,0),(1041,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,90,0,NULL,1,0,0),(1042,0,0,NULL,7,3,'[:en-us]Longshan[:zh-cn]龙山区','','',0,90,0,NULL,1,0,0),(1043,0,0,NULL,7,3,'[:en-us]Xian[:zh-cn]西安区','','',0,90,0,NULL,1,0,0),(1044,0,0,NULL,7,3,'[:en-us]Dongfeng[:zh-cn]东丰县','','',0,90,0,NULL,1,0,0),(1045,0,0,NULL,7,3,'[:en-us]Dongliao[:zh-cn]东辽县','','',0,90,0,NULL,1,0,0),(1046,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,91,0,NULL,1,0,0),(1047,0,0,NULL,7,3,'[:en-us]Dongchang[:zh-cn]东昌区','','',0,91,0,NULL,1,0,0),(1048,0,0,NULL,7,3,'[:en-us]Erdaojiang[:zh-cn]二道江区','','',0,91,0,NULL,1,0,0),(1049,0,0,NULL,7,3,'[:en-us]Tonghua[:zh-cn]通化县','','',0,91,0,NULL,1,0,0),(1050,0,0,NULL,7,3,'[:en-us]Huinan[:zh-cn]辉南县','','',0,91,0,NULL,1,0,0),(1051,0,0,NULL,7,3,'[:en-us]Liuhe[:zh-cn]柳河县','','',0,91,0,NULL,1,0,0),(1052,0,0,NULL,7,3,'[:en-us]Meihekou[:zh-cn]梅河口市','','',0,91,0,NULL,1,0,0),(1053,0,0,NULL,7,3,'[:en-us]Jian[:zh-cn]集安市','','',0,91,0,NULL,1,0,0),(1054,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,92,0,NULL,1,0,0),(1055,0,0,NULL,7,3,'[:en-us]Bdaokou[:zh-cn]八道江区','','',0,92,0,NULL,1,0,0),(1056,0,0,NULL,7,3,'[:en-us]Fusong[:zh-cn]抚松县','','',0,92,0,NULL,1,0,0),(1057,0,0,NULL,7,3,'[:en-us]Jingyu[:zh-cn]靖宇县','','',0,92,0,NULL,1,0,0),(1058,0,0,NULL,7,3,'[:en-us]Changbaichaoxianzu[:zh-cn]长白朝鲜族自治县','','',0,92,0,NULL,1,0,0),(1059,0,0,NULL,7,3,'[:en-us]Jiangyuan[:zh-cn]江源县','','',0,92,0,NULL,1,0,0),(1060,0,0,NULL,7,3,'[:en-us]Linjiang[:zh-cn]临江市','','',0,92,0,NULL,1,0,0),(1061,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,93,0,NULL,1,0,0),(1062,0,0,NULL,7,3,'[:en-us]Ningjiang[:zh-cn]宁江区','','',0,93,0,NULL,1,0,0),(1063,0,0,NULL,7,3,'[:en-us]Qianeerluosimengguzu[:zh-cn]前郭尔罗斯蒙古族自治县','','',0,93,0,NULL,1,0,0),(1064,0,0,NULL,7,3,'[:en-us]Changling[:zh-cn]长岭县','','',0,93,0,NULL,1,0,0),(1065,0,0,NULL,7,3,'[:en-us]Qianan[:zh-cn]乾安县','','',0,93,0,NULL,1,0,0),(1066,0,0,NULL,7,3,'[:en-us]Fuyu[:zh-cn]扶余县','','',0,93,0,NULL,1,0,0),(1067,0,0,NULL,7,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,94,0,NULL,1,0,0),(1068,0,0,NULL,7,3,'[:en-us]Taobei[:zh-cn]洮北区','','',0,94,0,NULL,1,0,0),(1069,0,0,NULL,7,3,'[:en-us]Zhengxiang[:zh-cn]镇赉县','','',0,94,0,NULL,1,0,0),(1070,0,0,NULL,7,3,'[:en-us]Tongyu[:zh-cn]通榆县','','',0,94,0,NULL,1,0,0),(1071,0,0,NULL,7,3,'[:en-us]Taonan[:zh-cn]洮南市','','',0,94,0,NULL,1,0,0),(1072,0,0,NULL,7,3,'[:en-us]Daan[:zh-cn]大安市','','',0,94,0,NULL,1,0,0),(1073,0,0,NULL,7,3,'[:en-us]Yanji[:zh-cn]延吉市','','',0,95,0,NULL,1,0,0),(1074,0,0,NULL,7,3,'[:en-us]Tumen[:zh-cn]图们市','','',0,95,0,NULL,1,0,0),(1075,0,0,NULL,7,3,'[:en-us]Dunhua[:zh-cn]敦化市','','',0,95,0,NULL,1,0,0),(1076,0,0,NULL,7,3,'[:en-us]Hunchun[:zh-cn]珲春市','','',0,95,0,NULL,1,0,0),(1077,0,0,NULL,7,3,'[:en-us]Longjing[:zh-cn]龙井市','','',0,95,0,NULL,1,0,0),(1078,0,0,NULL,7,3,'[:en-us]Helong[:zh-cn]和龙市','','',0,95,0,NULL,1,0,0),(1079,0,0,NULL,7,3,'[:en-us]Wangqing[:zh-cn]汪清县','','',0,95,0,NULL,1,0,0),(1080,0,0,NULL,7,3,'[:en-us]Antu[:zh-cn]安图县','','',0,95,0,NULL,1,0,0),(1081,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,96,0,NULL,1,0,0),(1082,0,0,NULL,8,3,'[:en-us]Daoli[:zh-cn]道里区','','',0,96,0,NULL,1,0,0),(1083,0,0,NULL,8,3,'[:en-us]Nangang[:zh-cn]南岗区','','',0,96,0,NULL,1,0,0),(1084,0,0,NULL,8,3,'[:en-us]Daowai[:zh-cn]道外区','','',0,96,0,NULL,1,0,0),(1085,0,0,NULL,8,3,'[:en-us]Xiangfang[:zh-cn]香坊区','','',0,96,0,NULL,1,0,0),(1086,0,0,NULL,8,3,'[:en-us]Dongli[:zh-cn]动力区','','',0,96,0,NULL,1,0,0),(1087,0,0,NULL,8,3,'[:en-us]Pingfang[:zh-cn]平房区','','',0,96,0,NULL,1,0,0),(1088,0,0,NULL,8,3,'[:en-us]Songbei[:zh-cn]松北区','','',0,96,0,NULL,1,0,0),(1089,0,0,NULL,8,3,'[:en-us]Hulan[:zh-cn]呼兰区','','',0,96,0,NULL,1,0,0),(1090,0,0,NULL,8,3,'[:en-us]Yilan[:zh-cn]依兰县','','',0,96,0,NULL,1,0,0),(1091,0,0,NULL,8,3,'[:en-us]Fangzheng[:zh-cn]方正县','','',0,96,0,NULL,1,0,0),(1092,0,0,NULL,8,3,'[:en-us]Binxian[:zh-cn]宾县','','',0,96,0,NULL,1,0,0),(1093,0,0,NULL,8,3,'[:en-us]Bayan[:zh-cn]巴彦县','','',0,96,0,NULL,1,0,0),(1094,0,0,NULL,8,3,'[:en-us]Mulan[:zh-cn]木兰县','','',0,96,0,NULL,1,0,0),(1095,0,0,NULL,8,3,'[:en-us]Tonghe[:zh-cn]通河县','','',0,96,0,NULL,1,0,0),(1096,0,0,NULL,8,3,'[:en-us]Yanshou[:zh-cn]延寿县','','',0,96,0,NULL,1,0,0),(1097,0,0,NULL,8,3,'[:en-us]Acheng[:zh-cn]阿城市','','',0,96,0,NULL,1,0,0),(1098,0,0,NULL,8,3,'[:en-us]Shuangcheng[:zh-cn]双城市','','',0,96,0,NULL,1,0,0),(1099,0,0,NULL,8,3,'[:en-us]Shangzhi[:zh-cn]尚志市','','',0,96,0,NULL,1,0,0),(1100,0,0,NULL,8,3,'[:en-us]Wuchang[:zh-cn]五常市','','',0,96,0,NULL,1,0,0),(1101,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,97,0,NULL,1,0,0),(1102,0,0,NULL,8,3,'[:en-us]Longsha[:zh-cn]龙沙区','','',0,97,0,NULL,1,0,0),(1103,0,0,NULL,8,3,'[:en-us]Jianhua[:zh-cn]建华区','','',0,97,0,NULL,1,0,0),(1104,0,0,NULL,8,3,'[:en-us]Tietan[:zh-cn]铁锋区','','',0,97,0,NULL,1,0,0),(1105,0,0,NULL,8,3,'[:en-us]Angangxi[:zh-cn]昂昂溪区','','',0,97,0,NULL,1,0,0),(1106,0,0,NULL,8,3,'[:en-us]Fulaerji[:zh-cn]富拉尔基区','','',0,97,0,NULL,1,0,0),(1107,0,0,NULL,8,3,'[:en-us]Nianzishan[:zh-cn]碾子山区','','',0,97,0,NULL,1,0,0),(1108,0,0,NULL,8,3,'[:en-us]Meilisidaganerzu[:zh-cn]梅里斯达斡尔族区','','',0,97,0,NULL,1,0,0),(1109,0,0,NULL,8,3,'[:en-us]Longjiang[:zh-cn]龙江县','','',0,97,0,NULL,1,0,0),(1110,0,0,NULL,8,3,'[:en-us]Yian[:zh-cn]依安县','','',0,97,0,NULL,1,0,0),(1111,0,0,NULL,8,3,'[:en-us]Tailai[:zh-cn]泰来县','','',0,97,0,NULL,1,0,0),(1112,0,0,NULL,8,3,'[:en-us]Gannan[:zh-cn]甘南县','','',0,97,0,NULL,1,0,0),(1113,0,0,NULL,8,3,'[:en-us]Fuyu[:zh-cn]富裕县','','',0,97,0,NULL,1,0,0),(1114,0,0,NULL,8,3,'[:en-us]Keshan[:zh-cn]克山县','','',0,97,0,NULL,1,0,0),(1115,0,0,NULL,8,3,'[:en-us]Kedong[:zh-cn]克东县','','',0,97,0,NULL,1,0,0),(1116,0,0,NULL,8,3,'[:en-us]Baiquan[:zh-cn]拜泉县','','',0,97,0,NULL,1,0,0),(1117,0,0,NULL,8,3,'[:en-us]Nahe[:zh-cn]讷河市','','',0,97,0,NULL,1,0,0),(1118,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,98,0,NULL,1,0,0),(1119,0,0,NULL,8,3,'[:en-us]Jiguan[:zh-cn]鸡冠区','','',0,98,0,NULL,1,0,0),(1120,0,0,NULL,8,3,'[:en-us]Hengshan[:zh-cn]恒山区','','',0,98,0,NULL,1,0,0),(1121,0,0,NULL,8,3,'[:en-us]Didao[:zh-cn]滴道区','','',0,98,0,NULL,1,0,0),(1122,0,0,NULL,8,3,'[:en-us]Lishu[:zh-cn]梨树区','','',0,98,0,NULL,1,0,0),(1123,0,0,NULL,8,3,'[:en-us]Chengzihe[:zh-cn]城子河区','','',0,98,0,NULL,1,0,0),(1124,0,0,NULL,8,3,'[:en-us]Mashan[:zh-cn]麻山区','','',0,98,0,NULL,1,0,0),(1125,0,0,NULL,8,3,'[:en-us]Jidong[:zh-cn]鸡东县','','',0,98,0,NULL,1,0,0),(1126,0,0,NULL,8,3,'[:en-us]Hulin[:zh-cn]虎林市','','',0,98,0,NULL,1,0,0),(1127,0,0,NULL,8,3,'[:en-us]Mishang[:zh-cn]密山市','','',0,98,0,NULL,1,0,0),(1128,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,99,0,NULL,1,0,0),(1129,0,0,NULL,8,3,'[:en-us]Xiangyang[:zh-cn]向阳区','','',0,99,0,NULL,1,0,0),(1130,0,0,NULL,8,3,'[:en-us]Gongnong[:zh-cn]工农区','','',0,99,0,NULL,1,0,0),(1131,0,0,NULL,8,3,'[:en-us]Nanshan[:zh-cn]南山区','','',0,99,0,NULL,1,0,0),(1132,0,0,NULL,8,3,'[:en-us]Xingan[:zh-cn]兴安区','','',0,99,0,NULL,1,0,0),(1133,0,0,NULL,8,3,'[:en-us]Dongshan[:zh-cn]东山区','','',0,99,0,NULL,1,0,0),(1134,0,0,NULL,8,3,'[:en-us]Xingshan[:zh-cn]兴山区','','',0,99,0,NULL,1,0,0),(1135,0,0,NULL,8,3,'[:en-us]Luobei[:zh-cn]萝北县','','',0,99,0,NULL,1,0,0),(1136,0,0,NULL,8,3,'[:en-us]Suibin[:zh-cn]绥滨县','','',0,99,0,NULL,1,0,0),(1137,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,100,0,NULL,1,0,0),(1138,0,0,NULL,8,3,'[:en-us]Jianshan[:zh-cn]尖山区','','',0,100,0,NULL,1,0,0),(1139,0,0,NULL,8,3,'[:en-us]Lingdong[:zh-cn]岭东区','','',0,100,0,NULL,1,0,0),(1140,0,0,NULL,8,3,'[:en-us]Sifangtai[:zh-cn]四方台区','','',0,100,0,NULL,1,0,0),(1141,0,0,NULL,8,3,'[:en-us]Baoshan[:zh-cn]宝山区','','',0,100,0,NULL,1,0,0),(1142,0,0,NULL,8,3,'[:en-us]Jixian[:zh-cn]集贤县','','',0,100,0,NULL,1,0,0),(1143,0,0,NULL,8,3,'[:en-us]Youyi[:zh-cn]友谊县','','',0,100,0,NULL,1,0,0),(1144,0,0,NULL,8,3,'[:en-us]Baoqing[:zh-cn]宝清县','','',0,100,0,NULL,1,0,0),(1145,0,0,NULL,8,3,'[:en-us]Rouhe[:zh-cn]饶河县','','',0,100,0,NULL,1,0,0),(1146,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,101,0,NULL,1,0,0),(1147,0,0,NULL,8,3,'[:en-us]Saertu[:zh-cn]萨尔图区','','',0,101,0,NULL,1,0,0),(1148,0,0,NULL,8,3,'[:en-us]Longfeng[:zh-cn]龙凤区','','',0,101,0,NULL,1,0,0),(1149,0,0,NULL,8,3,'[:en-us]Ranghulu[:zh-cn]让胡路区','','',0,101,0,NULL,1,0,0),(1150,0,0,NULL,8,3,'[:en-us]Honggang[:zh-cn]红岗区','','',0,101,0,NULL,1,0,0),(1151,0,0,NULL,8,3,'[:en-us]Datong[:zh-cn]大同区','','',0,101,0,NULL,1,0,0),(1152,0,0,NULL,8,3,'[:en-us]Zhaozhou[:zh-cn]肇州县','','',0,101,0,NULL,1,0,0),(1153,0,0,NULL,8,3,'[:en-us]Zhaoyuan[:zh-cn]肇源县','','',0,101,0,NULL,1,0,0),(1154,0,0,NULL,8,3,'[:en-us]Lindian[:zh-cn]林甸县','','',0,101,0,NULL,1,0,0),(1155,0,0,NULL,8,3,'[:en-us]Duerpatemengguzu[:zh-cn]杜尔伯特蒙古族自治县','','',0,101,0,NULL,1,0,0),(1156,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,102,0,NULL,1,0,0),(1157,0,0,NULL,8,3,'[:en-us]Yichun[:zh-cn]伊春区','','',0,102,0,NULL,1,0,0),(1158,0,0,NULL,8,3,'[:en-us]Nancha[:zh-cn]南岔区','','',0,102,0,NULL,1,0,0),(1159,0,0,NULL,8,3,'[:en-us]Youhao[:zh-cn]友好区','','',0,102,0,NULL,1,0,0),(1160,0,0,NULL,8,3,'[:en-us]Xilin[:zh-cn]西林区','','',0,102,0,NULL,1,0,0),(1161,0,0,NULL,8,3,'[:en-us]Cuiluan[:zh-cn]翠峦区','','',0,102,0,NULL,1,0,0),(1162,0,0,NULL,8,3,'[:en-us]Xinqing[:zh-cn]新青区','','',0,102,0,NULL,1,0,0),(1163,0,0,NULL,8,3,'[:en-us]Meixi[:zh-cn]美溪区','','',0,102,0,NULL,1,0,0),(1164,0,0,NULL,8,3,'[:en-us]Jinshantun[:zh-cn]金山屯区','','',0,102,0,NULL,1,0,0),(1165,0,0,NULL,8,3,'[:en-us]Wuying[:zh-cn]五营区','','',0,102,0,NULL,1,0,0),(1166,0,0,NULL,8,3,'[:en-us]Wumahe[:zh-cn]乌马河区','','',0,102,0,NULL,1,0,0),(1167,0,0,NULL,8,3,'[:en-us]Tangwanghe[:zh-cn]汤旺河区','','',0,102,0,NULL,1,0,0),(1168,0,0,NULL,8,3,'[:en-us]Dailing[:zh-cn]带岭区','','',0,102,0,NULL,1,0,0),(1169,0,0,NULL,8,3,'[:en-us]Wuyiling[:zh-cn]乌伊岭区','','',0,102,0,NULL,1,0,0),(1170,0,0,NULL,8,3,'[:en-us]Hongxing[:zh-cn]红星区','','',0,102,0,NULL,1,0,0),(1171,0,0,NULL,8,3,'[:en-us]Shangganling[:zh-cn]上甘岭区','','',0,102,0,NULL,1,0,0),(1172,0,0,NULL,8,3,'[:en-us]Jiayin[:zh-cn]嘉荫县','','',0,102,0,NULL,1,0,0),(1173,0,0,NULL,8,3,'[:en-us]Tieli[:zh-cn]铁力市','','',0,102,0,NULL,1,0,0),(1174,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,103,0,NULL,1,0,0),(1175,0,0,NULL,8,3,'[:en-us]Yonghong[:zh-cn]永红区','','',0,103,0,NULL,1,0,0),(1176,0,0,NULL,8,3,'[:en-us]Xiangyang[:zh-cn]向阳区','','',0,103,0,NULL,1,0,0),(1177,0,0,NULL,8,3,'[:en-us]Qianjin[:zh-cn]前进区','','',0,103,0,NULL,1,0,0),(1178,0,0,NULL,8,3,'[:en-us]Dongfeng[:zh-cn]东风区','','',0,103,0,NULL,1,0,0),(1179,0,0,NULL,8,3,'[:en-us]Jiaoqu[:zh-cn]郊区','','',0,103,0,NULL,1,0,0),(1180,0,0,NULL,8,3,'[:en-us]Huanan[:zh-cn]桦南县','','',0,103,0,NULL,1,0,0),(1181,0,0,NULL,8,3,'[:en-us]Huachuan[:zh-cn]桦川县','','',0,103,0,NULL,1,0,0),(1182,0,0,NULL,8,3,'[:en-us]Tangyuan[:zh-cn]汤原县','','',0,103,0,NULL,1,0,0),(1183,0,0,NULL,8,3,'[:en-us]Fuyuan[:zh-cn]抚远县','','',0,103,0,NULL,1,0,0),(1184,0,0,NULL,8,3,'[:en-us]Tongjiang[:zh-cn]同江市','','',0,103,0,NULL,1,0,0),(1185,0,0,NULL,8,3,'[:en-us]Fujin[:zh-cn]富锦市','','',0,103,0,NULL,1,0,0),(1186,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,104,0,NULL,1,0,0),(1187,0,0,NULL,8,3,'[:en-us]Xinxing[:zh-cn]新兴区','','',0,104,0,NULL,1,0,0),(1188,0,0,NULL,8,3,'[:en-us]Taoshan[:zh-cn]桃山区','','',0,104,0,NULL,1,0,0),(1189,0,0,NULL,8,3,'[:en-us]Qiezihe[:zh-cn]茄子河区','','',0,104,0,NULL,1,0,0),(1190,0,0,NULL,8,3,'[:en-us]Boli[:zh-cn]勃利县','','',0,104,0,NULL,1,0,0),(1202,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,106,0,NULL,1,0,0),(1203,0,0,NULL,8,3,'[:en-us]Aihui[:zh-cn]爱辉区','','',0,106,0,NULL,1,0,0),(1204,0,0,NULL,8,3,'[:en-us]Nunjiang[:zh-cn]嫩江县','','',0,106,0,NULL,1,0,0),(1205,0,0,NULL,8,3,'[:en-us]Xunke[:zh-cn]逊克县','','',0,106,0,NULL,1,0,0),(1206,0,0,NULL,8,3,'[:en-us]Sunwu[:zh-cn]孙吴县','','',0,106,0,NULL,1,0,0),(1207,0,0,NULL,8,3,'[:en-us]Beian[:zh-cn]北安市','','',0,106,0,NULL,1,0,0),(1208,0,0,NULL,8,3,'[:en-us]Wudalianchi[:zh-cn]五大连池市','','',0,106,0,NULL,1,0,0),(1209,0,0,NULL,8,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,107,0,NULL,1,0,0),(1210,0,0,NULL,8,3,'[:en-us]Beilin[:zh-cn]北林区','','',0,107,0,NULL,1,0,0),(1211,0,0,NULL,8,3,'[:en-us]Wangkui[:zh-cn]望奎县','','',0,107,0,NULL,1,0,0),(1212,0,0,NULL,8,3,'[:en-us]Lanxi[:zh-cn]兰西县','','',0,107,0,NULL,1,0,0),(1213,0,0,NULL,8,3,'[:en-us]Qinggang[:zh-cn]青冈县','','',0,107,0,NULL,1,0,0),(1214,0,0,NULL,8,3,'[:en-us]Qingan[:zh-cn]庆安县','','',0,107,0,NULL,1,0,0),(1215,0,0,NULL,8,3,'[:en-us]Mingshui[:zh-cn]明水县','','',0,107,0,NULL,1,0,0),(1216,0,0,NULL,8,3,'[:en-us]Suileng[:zh-cn]绥棱县','','',0,107,0,NULL,1,0,0),(1217,0,0,NULL,8,3,'[:en-us]Anda[:zh-cn]安达市','','',0,107,0,NULL,1,0,0),(1218,0,0,NULL,8,3,'[:en-us]Qingdong[:zh-cn]肇东市','','',0,107,0,NULL,1,0,0),(1219,0,0,NULL,8,3,'[:en-us]Hailun[:zh-cn]海伦市','','',0,107,0,NULL,1,0,0),(1220,0,0,NULL,8,3,'[:en-us]Huma[:zh-cn]呼玛县','','',0,108,0,NULL,1,0,0),(1221,0,0,NULL,8,3,'[:en-us]Tahe[:zh-cn]塔河县','','',0,108,0,NULL,1,0,0),(1222,0,0,NULL,8,3,'[:en-us]Mohe[:zh-cn]漠河县','','',0,108,0,NULL,1,0,0),(1223,0,0,NULL,8,3,'[:en-us]Huangpu[:zh-cn]黄浦区','','',0,109,0,NULL,1,0,0),(1224,0,0,NULL,8,3,'[:en-us]Luwan[:zh-cn]卢湾区','','',0,109,0,NULL,1,0,0),(1225,0,0,NULL,8,3,'[:en-us]Xuhun[:zh-cn]徐汇区','','',0,109,0,NULL,1,0,0),(1226,0,0,NULL,8,3,'[:en-us]Changning[:zh-cn]长宁区','','',0,109,0,NULL,1,0,0),(1227,0,0,NULL,8,3,'[:en-us]Jingan[:zh-cn]静安区','','',0,109,0,NULL,1,0,0),(1228,0,0,NULL,8,3,'[:en-us]Putuo[:zh-cn]普陀区','','',0,109,0,NULL,1,0,0),(1229,0,0,NULL,8,3,'[:en-us]zhabei[:zh-cn]闸北区','','',0,109,0,NULL,1,0,0),(1230,0,0,NULL,8,3,'[:en-us]Hongkou[:zh-cn]虹口区','','',0,109,0,NULL,1,0,0),(1231,0,0,NULL,8,3,'[:en-us]Yangpu[:zh-cn]杨浦区','','',0,109,0,NULL,1,0,0),(1232,0,0,NULL,8,3,'[:en-us]Minxing[:zh-cn]闵行区','','',0,109,0,NULL,1,0,0),(1233,0,0,NULL,8,3,'[:en-us]Baoshan[:zh-cn]宝山区','','',0,109,0,NULL,1,0,0),(1234,0,0,NULL,8,3,'[:en-us]Jiading[:zh-cn]嘉定区','','',0,109,0,NULL,1,0,0),(1235,0,0,NULL,8,3,'[:en-us]Pudong[:zh-cn]浦东新区','','',0,109,0,NULL,1,0,0),(1236,0,0,NULL,8,3,'[:en-us]Jinshan[:zh-cn]金山区','','',0,109,0,NULL,1,0,0),(1237,0,0,NULL,8,3,'[:en-us]Songjiang[:zh-cn]松江区','','',0,109,0,NULL,1,0,0),(1238,0,0,NULL,8,3,'[:en-us]Qingpu[:zh-cn]青浦区','','',0,109,0,NULL,1,0,0),(1239,0,0,NULL,8,3,'[:en-us]Nanghui[:zh-cn]南汇区','','',0,109,0,NULL,1,0,0),(1240,0,0,NULL,8,3,'[:en-us]Fengxian[:zh-cn]奉贤区','','',0,109,0,NULL,1,0,0),(1241,0,0,NULL,9,3,'[:en-us]Chongming[:zh-cn]崇明县','','',0,110,0,NULL,1,0,0),(1242,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,111,0,NULL,1,0,0),(1243,0,0,NULL,10,3,'[:en-us]Xuanwu[:zh-cn]玄武区','','',0,111,0,NULL,1,0,0),(1244,0,0,NULL,10,3,'[:en-us]Baixia[:zh-cn]白下区','','',0,111,0,NULL,1,0,0),(1245,0,0,NULL,10,3,'[:en-us]Qinhuai[:zh-cn]秦淮区','','',0,111,0,NULL,1,0,0),(1246,0,0,NULL,10,3,'[:en-us]Jianye[:zh-cn]建邺区','','',0,111,0,NULL,1,0,0),(1247,0,0,NULL,10,3,'[:en-us]Gulou[:zh-cn]鼓楼区','','',0,111,0,NULL,1,0,0),(1248,0,0,NULL,10,3,'[:en-us]Xiaguan[:zh-cn]下关区','','',0,111,0,NULL,1,0,0),(1249,0,0,NULL,10,3,'[:en-us]Pukou[:zh-cn]浦口区','','',0,111,0,NULL,1,0,0),(1250,0,0,NULL,10,3,'[:en-us]Xixia[:zh-cn]栖霞区','','',0,111,0,NULL,1,0,0),(1251,0,0,NULL,10,3,'[:en-us]Yuhuatai[:zh-cn]雨花台区','','',0,111,0,NULL,1,0,0),(1252,0,0,NULL,10,3,'[:en-us]Jiangning[:zh-cn]江宁区','','',0,111,0,NULL,1,0,0),(1253,0,0,NULL,10,3,'[:en-us]Liuhe[:zh-cn]六合区','','',0,111,0,NULL,1,0,0),(1254,0,0,NULL,10,3,'[:en-us]Lishui[:zh-cn]溧水县','','',0,111,0,NULL,1,0,0),(1255,0,0,NULL,10,3,'[:en-us]Gaochun[:zh-cn]高淳县','','',0,111,0,NULL,1,0,0),(1256,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,112,0,NULL,1,0,0),(1257,0,0,NULL,10,3,'[:en-us]Chongan[:zh-cn]崇安区','','',0,112,0,NULL,1,0,0),(1258,0,0,NULL,10,3,'[:en-us]Nanchang[:zh-cn]南长区','','',0,112,0,NULL,1,0,0),(1259,0,0,NULL,10,3,'[:en-us]Beitang[:zh-cn]北塘区','','',0,112,0,NULL,1,0,0),(1260,0,0,NULL,10,3,'[:en-us]Xishan[:zh-cn]锡山区','','',0,112,0,NULL,1,0,0),(1261,0,0,NULL,10,3,'[:en-us]Huishan[:zh-cn]惠山区','','',0,112,0,NULL,1,0,0),(1262,0,0,NULL,10,3,'[:en-us]Binhu[:zh-cn]滨湖区','','',0,112,0,NULL,1,0,0),(1263,0,0,NULL,10,3,'[:en-us]Jiangyin[:zh-cn]江阴市','','',0,112,0,NULL,1,0,0),(1264,0,0,NULL,10,3,'[:en-us]Yixing[:zh-cn]宜兴市','','',0,112,0,NULL,1,0,0),(1265,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,113,0,NULL,1,0,0),(1266,0,0,NULL,10,3,'[:en-us]Gulou[:zh-cn]鼓楼区','','',0,113,0,NULL,1,0,0),(1267,0,0,NULL,10,3,'[:en-us]Yunlong[:zh-cn]云龙区','','',0,113,0,NULL,1,0,0),(1268,0,0,NULL,10,3,'[:en-us]Jiuli[:zh-cn]九里区','','',0,113,0,NULL,1,0,0),(1269,0,0,NULL,10,3,'[:en-us]Jiawang[:zh-cn]贾汪区','','',0,113,0,NULL,1,0,0),(1270,0,0,NULL,10,3,'[:en-us]Quanshan[:zh-cn]泉山区','','',0,113,0,NULL,1,0,0),(1271,0,0,NULL,10,3,'[:en-us]Fengxian[:zh-cn]丰县','','',0,113,0,NULL,1,0,0),(1272,0,0,NULL,10,3,'[:en-us]Peixian[:zh-cn]沛县','','',0,113,0,NULL,1,0,0),(1273,0,0,NULL,10,3,'[:en-us]Tongxian[:zh-cn]铜山县','','',0,113,0,NULL,1,0,0),(1274,0,0,NULL,10,3,'[:en-us]Qiaoning[:zh-cn]睢宁县','','',0,113,0,NULL,1,0,0),(1275,0,0,NULL,10,3,'[:en-us]Xinyi[:zh-cn]新沂市','','',0,113,0,NULL,1,0,0),(1276,0,0,NULL,10,3,'[:en-us]Pizhou[:zh-cn]邳州市','','',0,113,0,NULL,1,0,0),(1278,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,114,0,NULL,1,0,0),(1279,0,0,NULL,10,3,'[:en-us]Tianning[:zh-cn]天宁区','','',0,114,0,NULL,1,0,0),(1280,0,0,NULL,10,3,'[:en-us]Zhonglou[:zh-cn]钟楼区','','',0,114,0,NULL,1,0,0),(1281,0,0,NULL,10,3,'[:en-us]Qinshuyan[:zh-cn]戚墅堰区','','',0,114,0,NULL,1,0,0),(1282,0,0,NULL,10,3,'[:en-us]Xinbei[:zh-cn]新北区','','',0,114,0,NULL,1,0,0),(1283,0,0,NULL,10,3,'[:en-us]Wujin[:zh-cn]武进区','','',0,114,0,NULL,1,0,0),(1284,0,0,NULL,10,3,'[:en-us]Liyang[:zh-cn]溧阳市','','',0,114,0,NULL,1,0,0),(1285,0,0,NULL,10,3,'[:en-us]Jintan[:zh-cn]金坛市','','',0,114,0,NULL,1,0,0),(1286,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,115,0,NULL,1,0,0),(1287,0,0,NULL,10,3,'[:en-us]Canglang[:zh-cn]沧浪区','','',0,115,0,NULL,1,0,0),(1288,0,0,NULL,10,3,'[:en-us]Pingjiang[:zh-cn]平江区','','',0,115,0,NULL,1,0,0),(1289,0,0,NULL,10,3,'[:en-us]Jinchuang[:zh-cn]金阊区','','',0,115,0,NULL,1,0,0),(1290,0,0,NULL,10,3,'[:en-us]Huqiu[:zh-cn]虎丘区','','',0,115,0,NULL,1,0,0),(1291,0,0,NULL,10,3,'[:en-us]Wuzhong[:zh-cn]吴中区','','',0,115,0,NULL,1,0,0),(1292,0,0,NULL,10,3,'[:en-us]Xiangcheng[:zh-cn]相城区','','',0,115,0,NULL,1,0,0),(1293,0,0,NULL,10,3,'[:en-us]Changshu[:zh-cn]常熟市','','',0,115,0,NULL,1,0,0),(1294,0,0,NULL,10,3,'[:en-us]Zhangjiagang[:zh-cn]张家港市','','',0,115,0,NULL,1,0,0),(1295,0,0,NULL,10,3,'[:en-us]Kunshan[:zh-cn]昆山市','','',0,115,0,NULL,1,0,0),(1296,0,0,NULL,10,3,'[:en-us]Wujiang[:zh-cn]吴江市','','',0,115,0,NULL,1,0,0),(1297,0,0,NULL,10,3,'[:en-us]Taicang[:zh-cn]太仓市','','',0,115,0,NULL,1,0,0),(1298,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,116,0,NULL,1,0,0),(1299,0,0,NULL,10,3,'[:en-us]Chongchuan[:zh-cn]崇川区','','',0,116,0,NULL,1,0,0),(1300,0,0,NULL,10,3,'[:en-us]Gangzha[:zh-cn]港闸区','','',0,116,0,NULL,1,0,0),(1301,0,0,NULL,10,3,'[:en-us]Haian[:zh-cn]海安县','','',0,116,0,NULL,1,0,0),(1302,0,0,NULL,10,3,'[:en-us]Rudong[:zh-cn]如东县','','',0,116,0,NULL,1,0,0),(1303,0,0,NULL,10,3,'[:en-us]Qidong[:zh-cn]启东市','','',0,116,0,NULL,1,0,0),(1304,0,0,NULL,10,3,'[:en-us]Rugao[:zh-cn]如皋市','','',0,116,0,NULL,1,0,0),(1305,0,0,NULL,10,3,'[:en-us]Tongzhou[:zh-cn]通州市','','',0,116,0,NULL,1,0,0),(1306,0,0,NULL,10,3,'[:en-us]Haimen[:zh-cn]海门市','','',0,116,0,NULL,1,0,0),(1307,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,117,0,NULL,1,0,0),(1308,0,0,NULL,10,3,'[:en-us]Lianyungang[:zh-cn]连云区','','',0,117,0,NULL,1,0,0),(1309,0,0,NULL,10,3,'[:en-us]Xinpu[:zh-cn]新浦区','','',0,117,0,NULL,1,0,0),(1310,0,0,NULL,10,3,'[:en-us]Haizhou[:zh-cn]海州区','','',0,117,0,NULL,1,0,0),(1311,0,0,NULL,10,3,'[:en-us]Ganyu[:zh-cn]赣榆县','','',0,117,0,NULL,1,0,0),(1312,0,0,NULL,10,3,'[:en-us]Donghai[:zh-cn]东海县','','',0,117,0,NULL,1,0,0),(1313,0,0,NULL,10,3,'[:en-us]Guanyun[:zh-cn]灌云县','','',0,117,0,NULL,1,0,0),(1314,0,0,NULL,10,3,'[:en-us]Guannan[:zh-cn]灌南县','','',0,117,0,NULL,1,0,0),(1315,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,118,0,NULL,1,0,0),(1316,0,0,NULL,10,3,'[:en-us]Qinghe[:zh-cn]清河区','','',0,118,0,NULL,1,0,0),(1317,0,0,NULL,10,3,'[:en-us]Chuzhou[:zh-cn]楚州区','','',0,118,0,NULL,1,0,0),(1318,0,0,NULL,10,3,'[:en-us]Huaiyin[:zh-cn]淮阴区','','',0,118,0,NULL,1,0,0),(1319,0,0,NULL,10,3,'[:en-us]Qingpu[:zh-cn]清浦区','','',0,118,0,NULL,1,0,0),(1320,0,0,NULL,10,3,'[:en-us]Lianshui[:zh-cn]涟水县','','',0,118,0,NULL,1,0,0),(1321,0,0,NULL,10,3,'[:en-us]Hongze[:zh-cn]洪泽县','','',0,118,0,NULL,1,0,0),(1322,0,0,NULL,10,3,'[:en-us]Yuyi[:zh-cn]盱眙县','','',0,118,0,NULL,1,0,0),(1323,0,0,NULL,10,3,'[:en-us]Jinhu[:zh-cn]金湖县','','',0,118,0,NULL,1,0,0),(1324,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,119,0,NULL,1,0,0),(1325,0,0,NULL,10,3,'[:en-us]Tinghu[:zh-cn]亭湖区','','',0,119,0,NULL,1,0,0),(1326,0,0,NULL,10,3,'[:en-us]Yandu[:zh-cn]盐都区','','',0,119,0,NULL,1,0,0),(1327,0,0,NULL,10,3,'[:en-us]XIangshui[:zh-cn]响水县','','',0,119,0,NULL,1,0,0),(1328,0,0,NULL,10,3,'[:en-us]Binhai[:zh-cn]滨海县','','',0,119,0,NULL,1,0,0),(1329,0,0,NULL,10,3,'[:en-us]Funing[:zh-cn]阜宁县','','',0,119,0,NULL,1,0,0),(1330,0,0,NULL,10,3,'[:en-us]Sheyang[:zh-cn]射阳县','','',0,119,0,NULL,1,0,0),(1331,0,0,NULL,10,3,'[:en-us]Jianhu[:zh-cn]建湖县','','',0,119,0,NULL,1,0,0),(1332,0,0,NULL,10,3,'[:en-us]Dongtai[:zh-cn]东台市','','',0,119,0,NULL,1,0,0),(1333,0,0,NULL,10,3,'[:en-us]Dafeng[:zh-cn]大丰市','','',0,119,0,NULL,1,0,0),(1334,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,120,0,NULL,1,0,0),(1335,0,0,NULL,10,3,'[:en-us]Guangling[:zh-cn]广陵区','','',0,120,0,NULL,1,0,0),(1336,0,0,NULL,10,3,'[:en-us]Hanjiang[:zh-cn]邗江区','','',0,120,0,NULL,1,0,0),(1337,0,0,NULL,10,3,'[:en-us]Jiaoqu[:zh-cn]郊区','','',0,120,0,NULL,1,0,0),(1338,0,0,NULL,10,3,'[:en-us]Baoying[:zh-cn]宝应县','','',0,120,0,NULL,1,0,0),(1339,0,0,NULL,10,3,'[:en-us]Yizheng[:zh-cn]仪征市','','',0,120,0,NULL,1,0,0),(1340,0,0,NULL,10,3,'[:en-us]Gaoyou[:zh-cn]高邮市','','',0,120,0,NULL,1,0,0),(1341,0,0,NULL,10,3,'[:en-us]Jiangdu[:zh-cn]江都市','','',0,120,0,NULL,1,0,0),(1342,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,121,0,NULL,1,0,0),(1343,0,0,NULL,10,3,'[:en-us]Jiangkou[:zh-cn]京口区','','',0,121,0,NULL,1,0,0),(1344,0,0,NULL,10,3,'[:en-us]Runzhou[:zh-cn]润州区','','',0,121,0,NULL,1,0,0),(1345,0,0,NULL,10,3,'[:en-us]Dantu[:zh-cn]丹徒区','','',0,121,0,NULL,1,0,0),(1346,0,0,NULL,10,3,'[:en-us]Danyang[:zh-cn]丹阳市','','',0,121,0,NULL,1,0,0),(1347,0,0,NULL,10,3,'[:en-us]Yangzhong[:zh-cn]扬中市','','',0,121,0,NULL,1,0,0),(1348,0,0,NULL,10,3,'[:en-us]Jurong[:zh-cn]句容市','','',0,121,0,NULL,1,0,0),(1349,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,122,0,NULL,1,0,0),(1350,0,0,NULL,10,3,'[:en-us]Hailing[:zh-cn]海陵区','','',0,122,0,NULL,1,0,0),(1351,0,0,NULL,10,3,'[:en-us]Gaogang[:zh-cn]高港区','','',0,122,0,NULL,1,0,0),(1352,0,0,NULL,10,3,'[:en-us]Xianghua[:zh-cn]兴化市','','',0,122,0,NULL,1,0,0),(1353,0,0,NULL,10,3,'[:en-us]Jingjiang[:zh-cn]靖江市','','',0,122,0,NULL,1,0,0),(1354,0,0,NULL,10,3,'[:en-us]Taixing[:zh-cn]泰兴市','','',0,122,0,NULL,1,0,0),(1355,0,0,NULL,10,3,'[:en-us]JIngyan[:zh-cn]姜堰市','','',0,122,0,NULL,1,0,0),(1356,0,0,NULL,10,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,123,0,NULL,1,0,0),(1357,0,0,NULL,10,3,'[:en-us]Sucheng[:zh-cn]宿城区','','',0,123,0,NULL,1,0,0),(1358,0,0,NULL,10,3,'[:en-us]Suyu[:zh-cn]宿豫区','','',0,123,0,NULL,1,0,0),(1359,0,0,NULL,10,3,'[:en-us]Muyang[:zh-cn]沭阳县','','',0,123,0,NULL,1,0,0),(1360,0,0,NULL,10,3,'[:en-us]Siyang[:zh-cn]泗阳县','','',0,123,0,NULL,1,0,0),(1361,0,0,NULL,10,3,'[:en-us]Sihong[:zh-cn]泗洪县','','',0,123,0,NULL,1,0,0),(1362,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,124,0,NULL,1,0,0),(1363,0,0,NULL,11,3,'[:en-us]Shangcheng[:zh-cn]上城区','','',0,124,0,NULL,1,0,0),(1364,0,0,NULL,11,3,'[:en-us]Xiacheng[:zh-cn]下城区','','',0,124,0,NULL,1,0,0),(1365,0,0,NULL,11,3,'[:en-us]Jianggan[:zh-cn]江干区','','',0,124,0,NULL,1,0,0),(1366,0,0,NULL,11,3,'[:en-us]Gongshu[:zh-cn]拱墅区','','',0,124,0,NULL,1,0,0),(1367,0,0,NULL,11,3,'[:en-us]Xihu[:zh-cn]西湖区','','',0,124,0,NULL,1,0,0),(1368,0,0,NULL,11,3,'[:en-us]Binjiang[:zh-cn]滨江区','','',0,124,0,NULL,1,0,0),(1369,0,0,NULL,11,3,'[:en-us]Xiaoshan[:zh-cn]萧山区','','',0,124,0,NULL,1,0,0),(1370,0,0,NULL,11,3,'[:en-us]Yuhang[:zh-cn]余杭区','','',0,124,0,NULL,1,0,0),(1371,0,0,NULL,11,3,'[:en-us]Tonglu[:zh-cn]桐庐县','','',0,124,0,NULL,1,0,0),(1372,0,0,NULL,11,3,'[:en-us]Chunan[:zh-cn]淳安县','','',0,124,0,NULL,1,0,0),(1373,0,0,NULL,11,3,'[:en-us]Jiande[:zh-cn]建德市','','',0,124,0,NULL,1,0,0),(1374,0,0,NULL,11,3,'[:en-us]Fuyang[:zh-cn]富阳市','','',0,124,0,NULL,1,0,0),(1375,0,0,NULL,11,3,'[:en-us]Linan[:zh-cn]临安市','','',0,124,0,NULL,1,0,0),(1376,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,125,0,NULL,1,0,0),(1377,0,0,NULL,11,3,'[:en-us]Haishu[:zh-cn]海曙区','','',0,125,0,NULL,1,0,0),(1378,0,0,NULL,11,3,'[:en-us]Jiangdong[:zh-cn]江东区','','',0,125,0,NULL,1,0,0),(1379,0,0,NULL,11,3,'[:en-us]Jiangbei[:zh-cn]江北区','','',0,125,0,NULL,1,0,0),(1380,0,0,NULL,11,3,'[:en-us]Beilun[:zh-cn]北仑区','','',0,125,0,NULL,1,0,0),(1381,0,0,NULL,11,3,'[:en-us]Zhenhai[:zh-cn]镇海区','','',0,125,0,NULL,1,0,0),(1382,0,0,NULL,11,3,'[:en-us]Yingzhou[:zh-cn]鄞州区','','',0,125,0,NULL,1,0,0),(1383,0,0,NULL,11,3,'[:en-us]Xiangshan[:zh-cn]象山县','','',0,125,0,NULL,1,0,0),(1384,0,0,NULL,11,3,'[:en-us]Ninghai[:zh-cn]宁海县','','',0,125,0,NULL,1,0,0),(1385,0,0,NULL,11,3,'[:en-us]Yuyao[:zh-cn]余姚市','','',0,125,0,NULL,1,0,0),(1386,0,0,NULL,11,3,'[:en-us]Cixi[:zh-cn]慈溪市','','',0,125,0,NULL,1,0,0),(1387,0,0,NULL,11,3,'[:en-us]Fenghua[:zh-cn]奉化市','','',0,125,0,NULL,1,0,0),(1388,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,126,0,NULL,1,0,0),(1389,0,0,NULL,11,3,'[:en-us]Lucheng[:zh-cn]鹿城区','','',0,126,0,NULL,1,0,0),(1390,0,0,NULL,11,3,'[:en-us]Longwan[:zh-cn]龙湾区','','',0,126,0,NULL,1,0,0),(1391,0,0,NULL,11,3,'[:en-us]Ouhai[:zh-cn]瓯海区','','',0,126,0,NULL,1,0,0),(1392,0,0,NULL,11,3,'[:en-us]Dongtou[:zh-cn]洞头县','','',0,126,0,NULL,1,0,0),(1393,0,0,NULL,11,3,'[:en-us]Yongjia[:zh-cn]永嘉县','','',0,126,0,NULL,1,0,0),(1394,0,0,NULL,11,3,'[:en-us]Pingyang[:zh-cn]平阳县','','',0,126,0,NULL,1,0,0),(1395,0,0,NULL,11,3,'[:en-us]Cangnan[:zh-cn]苍南县','','',0,126,0,NULL,1,0,0),(1396,0,0,NULL,11,3,'[:en-us]Wencheng[:zh-cn]文成县','','',0,126,0,NULL,1,0,0),(1397,0,0,NULL,11,3,'[:en-us]Taishun[:zh-cn]泰顺县','','',0,126,0,NULL,1,0,0),(1398,0,0,NULL,11,3,'[:en-us]Ruian[:zh-cn]瑞安市','','',0,126,0,NULL,1,0,0),(1399,0,0,NULL,11,3,'[:en-us]Leqing[:zh-cn]乐清市','','',0,126,0,NULL,1,0,0),(1400,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,127,0,NULL,1,0,0),(1401,0,0,NULL,11,3,'[:en-us]Xiucheng[:zh-cn]秀城区','','',0,127,0,NULL,1,0,0),(1402,0,0,NULL,11,3,'[:en-us]Xiuzhou[:zh-cn]秀洲区','','',0,127,0,NULL,1,0,0),(1403,0,0,NULL,11,3,'[:en-us]Jiashan[:zh-cn]嘉善县','','',0,127,0,NULL,1,0,0),(1404,0,0,NULL,11,3,'[:en-us]Haiyan[:zh-cn]海盐县','','',0,127,0,NULL,1,0,0),(1405,0,0,NULL,11,3,'[:en-us]Haining[:zh-cn]海宁市','','',0,127,0,NULL,1,0,0),(1406,0,0,NULL,11,3,'[:en-us]Pinghu[:zh-cn]平湖市','','',0,127,0,NULL,1,0,0),(1407,0,0,NULL,11,3,'[:en-us]Tongxiang[:zh-cn]桐乡市','','',0,127,0,NULL,1,0,0),(1408,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,128,0,NULL,1,0,0),(1409,0,0,NULL,11,3,'[:en-us]Wuxing[:zh-cn]吴兴区','','',0,128,0,NULL,1,0,0),(1410,0,0,NULL,11,3,'[:en-us]Nanxun[:zh-cn]南浔区','','',0,128,0,NULL,1,0,0),(1411,0,0,NULL,11,3,'[:en-us]Deqing[:zh-cn]德清县','','',0,128,0,NULL,1,0,0),(1412,0,0,NULL,11,3,'[:en-us]Changxing[:zh-cn]长兴县','','',0,128,0,NULL,1,0,0),(1413,0,0,NULL,11,3,'[:en-us]Anji[:zh-cn]安吉县','','',0,128,0,NULL,1,0,0),(1414,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,129,0,NULL,1,0,0),(1415,0,0,NULL,11,3,'[:en-us]Yuecheng[:zh-cn]越城区','','',0,129,0,NULL,1,0,0),(1416,0,0,NULL,11,3,'[:en-us]Shaoxing[:zh-cn]绍兴县','','',0,129,0,NULL,1,0,0),(1417,0,0,NULL,11,3,'[:en-us]Xinchang[:zh-cn]新昌县','','',0,129,0,NULL,1,0,0),(1418,0,0,NULL,11,3,'[:en-us]Zhuji[:zh-cn]诸暨市','','',0,129,0,NULL,1,0,0),(1419,0,0,NULL,11,3,'[:en-us]Shangyu[:zh-cn]上虞市','','',0,129,0,NULL,1,0,0),(1420,0,0,NULL,11,3,'[:en-us]Shenzhou[:zh-cn]嵊州市','','',0,129,0,NULL,1,0,0),(1421,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,130,0,NULL,1,0,0),(1422,0,0,NULL,11,3,'[:en-us]Wucheng[:zh-cn]婺城区','','',0,130,0,NULL,1,0,0),(1423,0,0,NULL,11,3,'[:en-us]Jindong[:zh-cn]金东区','','',0,130,0,NULL,1,0,0),(1424,0,0,NULL,11,3,'[:en-us]Wuyi[:zh-cn]武义县','','',0,130,0,NULL,1,0,0),(1425,0,0,NULL,11,3,'[:en-us]Pujiang[:zh-cn]浦江县','','',0,130,0,NULL,1,0,0),(1426,0,0,NULL,11,3,'[:en-us]Panan[:zh-cn]磐安县','','',0,130,0,NULL,1,0,0),(1427,0,0,NULL,11,3,'[:en-us]Lanxi[:zh-cn]兰溪市','','',0,130,0,NULL,1,0,0),(1428,0,0,NULL,11,3,'[:en-us]Yiwu[:zh-cn]义乌市','','',0,130,0,NULL,1,0,0),(1429,0,0,NULL,11,3,'[:en-us]Dongyang[:zh-cn]东阳市','','',0,130,0,NULL,1,0,0),(1430,0,0,NULL,11,3,'[:en-us]Yongkang[:zh-cn]永康市','','',0,131,0,NULL,1,0,0),(1431,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,131,0,NULL,1,0,0),(1432,0,0,NULL,11,3,'[:en-us]Kecheng[:zh-cn]柯城区','','',0,131,0,NULL,1,0,0),(1433,0,0,NULL,11,3,'[:en-us]Qujiang[:zh-cn]衢江区','','',0,131,0,NULL,1,0,0),(1434,0,0,NULL,11,3,'[:en-us]Changshan[:zh-cn]常山县','','',0,131,0,NULL,1,0,0),(1435,0,0,NULL,11,3,'[:en-us]Kaihua[:zh-cn]开化县','','',0,131,0,NULL,1,0,0),(1436,0,0,NULL,11,3,'[:en-us]Longyou[:zh-cn]龙游县','','',0,131,0,NULL,1,0,0),(1437,0,0,NULL,11,3,'[:en-us]Jiangshan[:zh-cn]江山市','','',0,131,0,NULL,1,0,0),(1438,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,132,0,NULL,1,0,0),(1439,0,0,NULL,11,3,'[:en-us]Dinghai[:zh-cn]定海区','','',0,132,0,NULL,1,0,0),(1440,0,0,NULL,11,3,'[:en-us]Putuo[:zh-cn]普陀区','','',0,132,0,NULL,1,0,0),(1441,0,0,NULL,11,3,'[:en-us]Daishan[:zh-cn]岱山县','','',0,132,0,NULL,1,0,0),(1442,0,0,NULL,11,3,'[:en-us]Shengsi[:zh-cn]嵊泗县','','',0,132,0,NULL,1,0,0),(1443,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,133,0,NULL,1,0,0),(1444,0,0,NULL,11,3,'[:en-us]Jiaojiang[:zh-cn]椒江区','','',0,133,0,NULL,1,0,0),(1445,0,0,NULL,11,3,'[:en-us]Huangyan[:zh-cn]黄岩区','','',0,133,0,NULL,1,0,0),(1446,0,0,NULL,11,3,'[:en-us]Luqiao[:zh-cn]路桥区','','',0,133,0,NULL,1,0,0),(1447,0,0,NULL,11,3,'[:en-us]Yuhuan[:zh-cn]玉环县','','',0,133,0,NULL,1,0,0),(1448,0,0,NULL,11,3,'[:en-us]Sanmen[:zh-cn]三门县','','',0,133,0,NULL,1,0,0),(1449,0,0,NULL,11,3,'[:en-us]Tiantai[:zh-cn]天台县','','',0,133,0,NULL,1,0,0),(1450,0,0,NULL,11,3,'[:en-us]Xianju[:zh-cn]仙居县','','',0,133,0,NULL,1,0,0),(1451,0,0,NULL,11,3,'[:en-us]Wenling[:zh-cn]温岭市','','',0,133,0,NULL,1,0,0),(1452,0,0,NULL,11,3,'[:en-us]Linhai[:zh-cn]临海市','','',0,133,0,NULL,1,0,0),(1453,0,0,NULL,11,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,134,0,NULL,1,0,0),(1454,0,0,NULL,11,3,'[:en-us]Liandu[:zh-cn]莲都区','','',0,134,0,NULL,1,0,0),(1455,0,0,NULL,11,3,'[:en-us]Qingtian[:zh-cn]青田县','','',0,134,0,NULL,1,0,0),(1456,0,0,NULL,11,3,'[:en-us]Jinyun[:zh-cn]缙云县','','',0,134,0,NULL,1,0,0),(1457,0,0,NULL,11,3,'[:en-us]Shuichang[:zh-cn]遂昌县','','',0,134,0,NULL,1,0,0),(1458,0,0,NULL,11,3,'[:en-us]Songyang[:zh-cn]松阳县','','',0,134,0,NULL,1,0,0),(1459,0,0,NULL,11,3,'[:en-us]Yunhe[:zh-cn]云和县','','',0,134,0,NULL,1,0,0),(1460,0,0,NULL,11,3,'[:en-us]Qingyuan[:zh-cn]庆元县','','',0,134,0,NULL,1,0,0),(1461,0,0,NULL,11,3,'[:en-us]Jingning[:zh-cn]景宁畲族自治县','','',0,134,0,NULL,1,0,0),(1462,0,0,NULL,11,3,'[:en-us]Longquan[:zh-cn]龙泉市','','',0,134,0,NULL,1,0,0),(1463,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,135,0,NULL,1,0,0),(1464,0,0,NULL,12,3,'[:en-us]Yaohai[:zh-cn]瑶海区','','',0,135,0,NULL,1,0,0),(1465,0,0,NULL,12,3,'[:en-us]Luyang[:zh-cn]庐阳区','','',0,135,0,NULL,1,0,0),(1466,0,0,NULL,12,3,'[:en-us]Shushan[:zh-cn]蜀山区','','',0,135,0,NULL,1,0,0),(1467,0,0,NULL,12,3,'[:en-us]Baohe[:zh-cn]包河区','','',0,135,0,NULL,1,0,0),(1468,0,0,NULL,12,3,'[:en-us]Changfeng[:zh-cn]长丰县','','',0,135,0,NULL,1,0,0),(1469,0,0,NULL,12,3,'[:en-us]Feidong[:zh-cn]肥东县','','',0,135,0,NULL,1,0,0),(1470,0,0,NULL,12,3,'[:en-us]Feixi[:zh-cn]肥西县','','',0,135,0,NULL,1,0,0),(1471,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,136,0,NULL,1,0,0),(1472,0,0,NULL,12,3,'[:en-us]Jinghu[:zh-cn]镜湖区','','',0,136,0,NULL,1,0,0),(1473,0,0,NULL,12,3,'[:en-us]Matang[:zh-cn]马塘区','','',0,136,0,NULL,1,0,0),(1474,0,0,NULL,12,3,'[:en-us]Xinwu[:zh-cn]新芜区','','',0,136,0,NULL,1,0,0),(1475,0,0,NULL,12,3,'[:en-us]Jiujiang[:zh-cn]鸠江区','','',0,136,0,NULL,1,0,0),(1476,0,0,NULL,12,3,'[:en-us]Wuhu[:zh-cn]芜湖县','','',0,136,0,NULL,1,0,0),(1477,0,0,NULL,12,3,'[:en-us]Fanchang[:zh-cn]繁昌县','','',0,136,0,NULL,1,0,0),(1478,0,0,NULL,12,3,'[:en-us]Nanling[:zh-cn]南陵县','','',0,136,0,NULL,1,0,0),(1479,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,137,0,NULL,1,0,0),(1480,0,0,NULL,12,3,'[:en-us]Longzihu[:zh-cn]龙子湖区','','',0,137,0,NULL,1,0,0),(1481,0,0,NULL,12,3,'[:en-us]Bangshan[:zh-cn]蚌山区','','',0,137,0,NULL,1,0,0),(1482,0,0,NULL,12,3,'[:en-us]Yuhui[:zh-cn]禹会区','','',0,137,0,NULL,1,0,0),(1483,0,0,NULL,12,3,'[:en-us]Huaishan[:zh-cn]淮上区','','',0,137,0,NULL,1,0,0),(1484,0,0,NULL,12,3,'[:en-us]Huaiyuan[:zh-cn]怀远县','','',0,137,0,NULL,1,0,0),(1485,0,0,NULL,12,3,'[:en-us]Wuhe[:zh-cn]五河县','','',0,137,0,NULL,1,0,0),(1486,0,0,NULL,12,3,'[:en-us]Guzhen[:zh-cn]固镇县','','',0,137,0,NULL,1,0,0),(1487,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,138,0,NULL,1,0,0),(1488,0,0,NULL,12,3,'[:en-us]Datong[:zh-cn]大通区','','',0,138,0,NULL,1,0,0),(1489,0,0,NULL,12,3,'[:en-us]Tianjiaan[:zh-cn]田家庵区','','',0,138,0,NULL,1,0,0),(1490,0,0,NULL,12,3,'[:en-us]Xiejiaji[:zh-cn]谢家集区','','',0,138,0,NULL,1,0,0),(1491,0,0,NULL,12,3,'[:en-us]Bagongshan[:zh-cn]八公山区','','',0,138,0,NULL,1,0,0),(1492,0,0,NULL,12,3,'[:en-us]Panji[:zh-cn]潘集区','','',0,138,0,NULL,1,0,0),(1493,0,0,NULL,12,3,'[:en-us]Fengtai[:zh-cn]凤台县','','',0,138,0,NULL,1,0,0),(1494,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,139,0,NULL,1,0,0),(1495,0,0,NULL,12,3,'[:en-us]Jinjiazhuang[:zh-cn]金家庄区','','',0,139,0,NULL,1,0,0),(1496,0,0,NULL,12,3,'[:en-us]Huashan[:zh-cn]花山区','','',0,139,0,NULL,1,0,0),(1497,0,0,NULL,12,3,'[:en-us]Yushan[:zh-cn]雨山区','','',0,139,0,NULL,1,0,0),(1498,0,0,NULL,12,3,'[:en-us]Dangtu[:zh-cn]当涂县','','',0,139,0,NULL,1,0,0),(1499,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,140,0,NULL,1,0,0),(1500,0,0,NULL,12,3,'[:en-us]Duji[:zh-cn]杜集区','','',0,140,0,NULL,1,0,0),(1501,0,0,NULL,12,3,'[:en-us]Xiangshan[:zh-cn]相山区','','',0,140,0,NULL,1,0,0),(1502,0,0,NULL,12,3,'[:en-us]Lieshan[:zh-cn]烈山区','','',0,140,0,NULL,1,0,0),(1503,0,0,NULL,12,3,'[:en-us]Suixi[:zh-cn]濉溪县','','',0,140,0,NULL,1,0,0),(1504,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,141,0,NULL,1,0,0),(1505,0,0,NULL,12,3,'[:en-us]Tongguanshan[:zh-cn]铜官山区','','',0,141,0,NULL,1,0,0),(1506,0,0,NULL,12,3,'[:en-us]Shizishan[:zh-cn]狮子山区','','',0,141,0,NULL,1,0,0),(1507,0,0,NULL,12,3,'[:en-us]Jiaoqu[:zh-cn]郊区','','',0,141,0,NULL,1,0,0),(1508,0,0,NULL,12,3,'[:en-us]Tongling[:zh-cn]铜陵县','','',0,141,0,NULL,1,0,0),(1509,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,142,0,NULL,1,0,0),(1510,0,0,NULL,12,3,'[:en-us]Yingjiang[:zh-cn]迎江区','','',0,142,0,NULL,1,0,0),(1511,0,0,NULL,12,3,'[:en-us]Daguan[:zh-cn]大观区','','',0,142,0,NULL,1,0,0),(1512,0,0,NULL,12,3,'[:en-us]Jiaoqu[:zh-cn]郊区','','',0,142,0,NULL,1,0,0),(1513,0,0,NULL,12,3,'[:en-us]Huaining[:zh-cn]怀宁县','','',0,142,0,NULL,1,0,0),(1514,0,0,NULL,12,3,'[:en-us]Zongyang[:zh-cn]枞阳县','','',0,142,0,NULL,1,0,0),(1515,0,0,NULL,12,3,'[:en-us]Qianshan[:zh-cn]潜山县','','',0,142,0,NULL,1,0,0),(1516,0,0,NULL,12,3,'[:en-us]Taihu[:zh-cn]太湖县','','',0,142,0,NULL,1,0,0),(1517,0,0,NULL,12,3,'[:en-us]Susong[:zh-cn]宿松县','','',0,142,0,NULL,1,0,0),(1518,0,0,NULL,12,3,'[:en-us]Wangjiang[:zh-cn]望江县','','',0,142,0,NULL,1,0,0),(1519,0,0,NULL,12,3,'[:en-us]Yuexi[:zh-cn]岳西县','','',0,142,0,NULL,1,0,0),(1520,0,0,NULL,12,3,'[:en-us]Tongcheng[:zh-cn]桐城市','','',0,142,0,NULL,1,0,0),(1521,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,143,0,NULL,1,0,0),(1522,0,0,NULL,12,3,'[:en-us]Tunxi[:zh-cn]屯溪区','','',0,143,0,NULL,1,0,0),(1523,0,0,NULL,12,3,'[:en-us]Huangshan[:zh-cn]黄山区','','',0,143,0,NULL,1,0,0),(1524,0,0,NULL,12,3,'[:en-us]Huizhou[:zh-cn]徽州区','','',0,143,0,NULL,1,0,0),(1525,0,0,NULL,12,3,'[:en-us]Shexian[:zh-cn]歙县','','',0,143,0,NULL,1,0,0),(1526,0,0,NULL,12,3,'[:en-us]Xiuning[:zh-cn]休宁县','','',0,143,0,NULL,1,0,0),(1527,0,0,NULL,12,3,'[:en-us]Yixian[:zh-cn]黟县','','',0,143,0,NULL,1,0,0),(1528,0,0,NULL,12,3,'[:en-us]Qimen[:zh-cn]祁门县','','',0,143,0,NULL,1,0,0),(1529,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,144,0,NULL,1,0,0),(1530,0,0,NULL,12,3,'[:en-us]Langya[:zh-cn]琅琊区','','',0,144,0,NULL,1,0,0),(1531,0,0,NULL,12,3,'[:en-us]Nanjiao[:zh-cn]南谯区','','',0,144,0,NULL,1,0,0),(1532,0,0,NULL,12,3,'[:en-us]Laian[:zh-cn]来安县','','',0,144,0,NULL,1,0,0),(1533,0,0,NULL,12,3,'[:en-us]Quanjiao[:zh-cn]全椒县','','',0,144,0,NULL,1,0,0),(1534,0,0,NULL,12,3,'[:en-us]Dingyuan[:zh-cn]定远县','','',0,144,0,NULL,1,0,0),(1535,0,0,NULL,12,3,'[:en-us]Fengyang[:zh-cn]凤阳县','','',0,144,0,NULL,1,0,0),(1536,0,0,NULL,12,3,'[:en-us]Tianchang[:zh-cn]天长市','','',0,144,0,NULL,1,0,0),(1537,0,0,NULL,12,3,'[:en-us]Mingguang[:zh-cn]明光市','','',0,144,0,NULL,1,0,0),(1538,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,145,0,NULL,1,0,0),(1539,0,0,NULL,12,3,'[:en-us]Yingzhou[:zh-cn]颍州区','','',0,145,0,NULL,1,0,0),(1540,0,0,NULL,12,3,'[:en-us]Yingdong[:zh-cn]颍东区','','',0,145,0,NULL,1,0,0),(1541,0,0,NULL,12,3,'[:en-us]Yingquan[:zh-cn]颍泉区','','',0,145,0,NULL,1,0,0),(1542,0,0,NULL,12,3,'[:en-us]Linquan[:zh-cn]临泉县','','',0,145,0,NULL,1,0,0),(1543,0,0,NULL,12,3,'[:en-us]Taihe[:zh-cn]太和县','','',0,145,0,NULL,1,0,0),(1544,0,0,NULL,12,3,'[:en-us]Funan[:zh-cn]阜南县','','',0,145,0,NULL,1,0,0),(1545,0,0,NULL,12,3,'[:en-us]Yingshan[:zh-cn]颍上县','','',0,145,0,NULL,1,0,0),(1546,0,0,NULL,12,3,'[:en-us]Jieshou[:zh-cn]界首市','','',0,145,0,NULL,1,0,0),(1547,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,146,0,NULL,1,0,0),(1548,0,0,NULL,12,3,'[:en-us]Tangqiao[:zh-cn]墉桥区','','',0,146,0,NULL,1,0,0),(1549,0,0,NULL,12,3,'[:en-us]Dangshan[:zh-cn]砀山县','','',0,146,0,NULL,1,0,0),(1550,0,0,NULL,12,3,'[:en-us]Xiaoxian[:zh-cn]萧县','','',0,146,0,NULL,1,0,0),(1551,0,0,NULL,12,3,'[:en-us]Lingbi[:zh-cn]灵璧县','','',0,146,0,NULL,1,0,0),(1552,0,0,NULL,12,3,'[:en-us]Sixian[:zh-cn]泗县','','',0,146,0,NULL,1,0,0),(1553,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,147,0,NULL,1,0,0),(1554,0,0,NULL,12,3,'[:en-us]Juchao[:zh-cn]居巢区','','',0,147,0,NULL,1,0,0),(1555,0,0,NULL,12,3,'[:en-us]Lujiang[:zh-cn]庐江县','','',0,147,0,NULL,1,0,0),(1556,0,0,NULL,12,3,'[:en-us]Wuwei[:zh-cn]无为县','','',0,147,0,NULL,1,0,0),(1557,0,0,NULL,12,3,'[:en-us]Hanshan[:zh-cn]含山县','','',0,147,0,NULL,1,0,0),(1558,0,0,NULL,12,3,'[:en-us]Hexian[:zh-cn]和县','','',0,147,0,NULL,1,0,0),(1559,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,148,0,NULL,1,0,0),(1560,0,0,NULL,12,3,'[:en-us]Jinan[:zh-cn]金安区','','',0,148,0,NULL,1,0,0),(1561,0,0,NULL,12,3,'[:en-us]Yuan[:zh-cn]裕安区','','',0,148,0,NULL,1,0,0),(1562,0,0,NULL,12,3,'[:en-us]Shouxian[:zh-cn]寿县','','',0,148,0,NULL,1,0,0),(1563,0,0,NULL,12,3,'[:en-us]Huoqiu[:zh-cn]霍邱县','','',0,148,0,NULL,1,0,0),(1564,0,0,NULL,12,3,'[:en-us]Shucheng[:zh-cn]舒城县','','',0,148,0,NULL,1,0,0),(1565,0,0,NULL,12,3,'[:en-us]Jinzhai[:zh-cn]金寨县','','',0,148,0,NULL,1,0,0),(1566,0,0,NULL,12,3,'[:en-us]Huoshan[:zh-cn]霍山县','','',0,148,0,NULL,1,0,0),(1567,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,149,0,NULL,1,0,0),(1568,0,0,NULL,12,3,'[:en-us]Jiaocheng[:zh-cn]谯城区','','',0,149,0,NULL,1,0,0),(1569,0,0,NULL,12,3,'[:en-us]Woyang[:zh-cn]涡阳县','','',0,149,0,NULL,1,0,0),(1570,0,0,NULL,12,3,'[:en-us]Mengcheng[:zh-cn]蒙城县','','',0,149,0,NULL,1,0,0),(1571,0,0,NULL,12,3,'[:en-us]Lixin[:zh-cn]利辛县','','',0,149,0,NULL,1,0,0),(1572,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,150,0,NULL,1,0,0),(1573,0,0,NULL,12,3,'[:en-us]Guizhi[:zh-cn]贵池区','','',0,150,0,NULL,1,0,0),(1574,0,0,NULL,12,3,'[:en-us]Dongzhi[:zh-cn]东至县','','',0,150,0,NULL,1,0,0),(1575,0,0,NULL,12,3,'[:en-us]Shitai[:zh-cn]石台县','','',0,150,0,NULL,1,0,0),(1576,0,0,NULL,12,3,'[:en-us]Qingyang[:zh-cn]青阳县','','',0,150,0,NULL,1,0,0),(1577,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,150,0,NULL,1,0,0),(1578,0,0,NULL,12,3,'[:en-us]Guichi[:zh-cn]贵池区','','',0,150,0,NULL,1,0,0),(1579,0,0,NULL,12,3,'[:en-us]Dongzhi[:zh-cn]东至县','','',0,150,0,NULL,1,0,0),(1580,0,0,NULL,12,3,'[:en-us]Shitai[:zh-cn]石台县','','',0,150,0,NULL,1,0,0),(1581,0,0,NULL,12,3,'[:en-us]Qingyang[:zh-cn]青阳县','','',0,150,0,NULL,1,0,0),(1582,0,0,NULL,12,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,151,0,NULL,1,0,0),(1583,0,0,NULL,12,3,'[:en-us]Xuanzhou[:zh-cn]宣州区','','',0,151,0,NULL,1,0,0),(1584,0,0,NULL,12,3,'[:en-us]Langxi[:zh-cn]郎溪县','','',0,151,0,NULL,1,0,0),(1585,0,0,NULL,12,3,'[:en-us]Guangde[:zh-cn]广德县','','',0,151,0,NULL,1,0,0),(1586,0,0,NULL,12,3,'[:en-us]Jingxian[:zh-cn]泾县','','',0,151,0,NULL,1,0,0),(1587,0,0,NULL,12,3,'[:en-us]Jixi[:zh-cn]绩溪县','','',0,151,0,NULL,1,0,0),(1588,0,0,NULL,12,3,'[:en-us]Jingde[:zh-cn]旌德县','','',0,151,0,NULL,1,0,0),(1589,0,0,NULL,12,3,'[:en-us]Ningguo[:zh-cn]宁国市','','',0,151,0,NULL,1,0,0),(1590,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,152,0,NULL,1,0,0),(1591,0,0,NULL,13,3,'[:en-us]Gulou[:zh-cn]鼓楼区','','',0,152,0,NULL,1,0,0),(1592,0,0,NULL,13,3,'[:en-us]Taijiang[:zh-cn]台江区','','',0,152,0,NULL,1,0,0),(1593,0,0,NULL,13,3,'[:en-us]Cangshan[:zh-cn]仓山区','','',0,152,0,NULL,1,0,0),(1594,0,0,NULL,13,3,'[:en-us]Mawei[:zh-cn]马尾区','','',0,152,0,NULL,1,0,0),(1595,0,0,NULL,13,3,'[:en-us]Jinan[:zh-cn]晋安区','','',0,152,0,NULL,1,0,0),(1596,0,0,NULL,13,3,'[:en-us]Minhou[:zh-cn]闽侯县','','',0,152,0,NULL,1,0,0),(1597,0,0,NULL,13,3,'[:en-us]Lianjiang[:zh-cn]连江县','','',0,152,0,NULL,1,0,0),(1598,0,0,NULL,13,3,'[:en-us]Luoyuan[:zh-cn]罗源县','','',0,152,0,NULL,1,0,0),(1599,0,0,NULL,13,3,'[:en-us]Minqing[:zh-cn]闽清县','','',0,152,0,NULL,1,0,0),(1600,0,0,NULL,13,3,'[:en-us]Yongtai[:zh-cn]永泰县','','',0,152,0,NULL,1,0,0),(1601,0,0,NULL,13,3,'[:en-us]Pingtan[:zh-cn]平潭县','','',0,152,0,NULL,1,0,0),(1602,0,0,NULL,13,3,'[:en-us]Fuqing[:zh-cn]福清市','','',0,152,0,NULL,1,0,0),(1603,0,0,NULL,13,3,'[:en-us]Changle[:zh-cn]长乐市','','',0,152,0,NULL,1,0,0),(1604,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,153,0,NULL,1,0,0),(1605,0,0,NULL,13,3,'[:en-us]Siming[:zh-cn]思明区','','',0,153,0,NULL,1,0,0),(1606,0,0,NULL,13,3,'[:en-us]Haicang[:zh-cn]海沧区','','',0,153,0,NULL,1,0,0),(1607,0,0,NULL,13,3,'[:en-us]Huli[:zh-cn]湖里区','','',0,153,0,NULL,1,0,0),(1608,0,0,NULL,13,3,'[:en-us]Jimei[:zh-cn]集美区','','',0,153,0,NULL,1,0,0),(1609,0,0,NULL,13,3,'[:en-us]Tongan[:zh-cn]同安区','','',0,153,0,NULL,1,0,0),(1610,0,0,NULL,13,3,'[:en-us]Xiangan[:zh-cn]翔安区','','',0,153,0,NULL,1,0,0),(1611,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,154,0,NULL,1,0,0),(1612,0,0,NULL,13,3,'[:en-us]Chengxiang[:zh-cn]城厢区','','',0,154,0,NULL,1,0,0),(1613,0,0,NULL,13,3,'[:en-us]Hanjiang[:zh-cn]涵江区','','',0,154,0,NULL,1,0,0),(1614,0,0,NULL,13,3,'[:en-us]Licheng[:zh-cn]荔城区','','',0,154,0,NULL,1,0,0),(1615,0,0,NULL,13,3,'[:en-us]Xiuyu[:zh-cn]秀屿区','','',0,154,0,NULL,1,0,0),(1616,0,0,NULL,13,3,'[:en-us]Xianyou[:zh-cn]仙游县','','',0,154,0,NULL,1,0,0),(1617,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,155,0,NULL,1,0,0),(1618,0,0,NULL,13,3,'[:en-us]Meilie[:zh-cn]梅列区','','',0,155,0,NULL,1,0,0),(1619,0,0,NULL,13,3,'[:en-us]Sanyuan[:zh-cn]三元区','','',0,155,0,NULL,1,0,0),(1620,0,0,NULL,13,3,'[:en-us]Mingxi[:zh-cn]明溪县','','',0,155,0,NULL,1,0,0),(1621,0,0,NULL,13,3,'[:en-us]Qingliu[:zh-cn]清流县','','',0,155,0,NULL,1,0,0),(1622,0,0,NULL,13,3,'[:en-us]Ninghua[:zh-cn]宁化县','','',0,155,0,NULL,1,0,0),(1623,0,0,NULL,13,3,'[:en-us]Datian[:zh-cn]大田县','','',0,155,0,NULL,1,0,0),(1624,0,0,NULL,13,3,'[:en-us]Youxi[:zh-cn]尤溪县','','',0,155,0,NULL,1,0,0),(1625,0,0,NULL,13,3,'[:en-us]Shaxian[:zh-cn]沙县','','',0,155,0,NULL,1,0,0),(1626,0,0,NULL,13,3,'[:en-us]Jiangle[:zh-cn]将乐县','','',0,155,0,NULL,1,0,0),(1627,0,0,NULL,13,3,'[:en-us]Taining[:zh-cn]泰宁县','','',0,155,0,NULL,1,0,0),(1628,0,0,NULL,13,3,'[:en-us]Jianning[:zh-cn]建宁县','','',0,155,0,NULL,1,0,0),(1629,0,0,NULL,13,3,'[:en-us]Yongan[:zh-cn]永安市','','',0,155,0,NULL,1,0,0),(1630,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,156,0,NULL,1,0,0),(1631,0,0,NULL,13,3,'[:en-us]Licheng[:zh-cn]鲤城区','','',0,156,0,NULL,1,0,0),(1632,0,0,NULL,13,3,'[:en-us]Femgze[:zh-cn]丰泽区','','',0,156,0,NULL,1,0,0),(1633,0,0,NULL,13,3,'[:en-us]Luojiang[zh-cn]洛江区','','',0,156,0,NULL,1,0,0),(1634,0,0,NULL,13,3,'[:en-us]Quangang[:zh-cn]泉港区','','',0,156,0,NULL,1,0,0),(1635,0,0,NULL,13,3,'[:en-us]Huian[:zh-cn]惠安县','','',0,156,0,NULL,1,0,0),(1636,0,0,NULL,13,3,'[:en-us]Anxi[:zh-cn]安溪县','','',0,156,0,NULL,1,0,0),(1637,0,0,NULL,13,3,'[:en-us]Yongchun[:zh-cn]永春县','','',0,156,0,NULL,1,0,0),(1638,0,0,NULL,13,3,'[:en-us]Dehua:zh-cn]德化县','','',0,156,0,NULL,1,0,0),(1639,0,0,NULL,13,3,'[:en-us]Jingmen[:zh-cn]金门县','','',0,156,0,NULL,1,0,0),(1640,0,0,NULL,13,3,'[:en-us]Shishi[:zh-cn]石狮市','','',0,156,0,NULL,1,0,0),(1641,0,0,NULL,13,3,'[:en-us]Jinjiang[:zh-cn]晋江市','','',0,156,0,NULL,1,0,0),(1642,0,0,NULL,13,3,'[:en-us]Nanan[:zh-cn]南安市','','',0,156,0,NULL,1,0,0),(1643,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,157,0,NULL,1,0,0),(1644,0,0,NULL,13,3,'[:en-us]Xiangcheng[:zh-cn]芗城区','','',0,157,0,NULL,1,0,0),(1645,0,0,NULL,13,3,'[:en-us]Longwen[:zh-cn]龙文区','','',0,157,0,NULL,1,0,0),(1646,0,0,NULL,13,3,'[:en-us]Yunxiao[:zh-cn]云霄县','','',0,157,0,NULL,1,0,0),(1647,0,0,NULL,13,3,'[:en-us]zhangpu[:zh-cn]漳浦县','','',0,157,0,NULL,1,0,0),(1648,0,0,NULL,13,3,'[:en-us]Shaoan[:zh-cn]诏安县','','',0,157,0,NULL,1,0,0),(1649,0,0,NULL,13,3,'[:en-us]Changtai[:zh-cn]长泰县','','',0,157,0,NULL,1,0,0),(1650,0,0,NULL,13,3,'[:en-us]Dongshan[:zh-cn]东山县','','',0,157,0,NULL,1,0,0),(1651,0,0,NULL,13,3,'[:en-us]Nanjing[:zh-cn]南靖县','','',0,157,0,NULL,1,0,0),(1652,0,0,NULL,13,3,'[:en-us]Heping[:zh-cn]平和县','','',0,157,0,NULL,1,0,0),(1653,0,0,NULL,13,3,'[:en-us]Huaan[:zh-cn]华安县','','',0,157,0,NULL,1,0,0),(1654,0,0,NULL,13,3,'[:en-us]Longhai[:zh-cn]龙海市','','',0,157,0,NULL,1,0,0),(1655,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,158,0,NULL,1,0,0),(1656,0,0,NULL,13,3,'[:en-us]Yanping[:zh-cn]延平区','','',0,158,0,NULL,1,0,0),(1657,0,0,NULL,13,3,'[:en-us]Shunchang[:zh-cn]顺昌县','','',0,158,0,NULL,1,0,0),(1658,0,0,NULL,13,3,'[:en-us]Pucheng[:zh-cn]浦城县','','',0,158,0,NULL,1,0,0),(1659,0,0,NULL,13,3,'[:en-us]Guangze[:zh-cn]光泽县','','',0,158,0,NULL,1,0,0),(1660,0,0,NULL,13,3,'[:en-us]Songxi[:zh-cn]松溪县','','',0,158,0,NULL,1,0,0),(1661,0,0,NULL,13,3,'[:en-us]Zhenghe[:zh-cn]政和县','','',0,158,0,NULL,1,0,0),(1662,0,0,NULL,13,3,'[:en-us]Shaowu[:zh-cn]邵武市','','',0,158,0,NULL,1,0,0),(1663,0,0,NULL,13,3,'[:en-us]Wuyishan[:zh-cn]武夷山市','','',0,158,0,NULL,1,0,0),(1664,0,0,NULL,13,3,'[:en-us]Jianou[:zh-cn]建瓯市','','',0,158,0,NULL,1,0,0),(1665,0,0,NULL,13,3,'[:en-us]Jianyang[:zh-cn]建阳市','','',0,158,0,NULL,1,0,0),(1666,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,159,0,NULL,1,0,0),(1667,0,0,NULL,13,3,'[:en-us]Xinluo[:zh-cn]新罗区','','',0,159,0,NULL,1,0,0),(1668,0,0,NULL,13,3,'[:en-us]Changting[:zh-cn]长汀县','','',0,159,0,NULL,1,0,0),(1669,0,0,NULL,13,3,'[:en-us]Yongding[:zh-cn]永定县','','',0,159,0,NULL,1,0,0),(1670,0,0,NULL,13,3,'[:en-us]Shanghang[:zh-cn]上杭县','','',0,159,0,NULL,1,0,0),(1671,0,0,NULL,13,3,'[:en-us]Wuping[:zh-cn]武平县','','',0,159,0,NULL,1,0,0),(1672,0,0,NULL,13,3,'[:en-us]Liancheng[:zh-cn]连城县','','',0,159,0,NULL,1,0,0),(1673,0,0,NULL,13,3,'[:en-us]Zhangping[:zh-cn]漳平市','','',0,159,0,NULL,1,0,0),(1674,0,0,NULL,13,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,160,0,NULL,1,0,0),(1675,0,0,NULL,13,3,'[:en-us]Jiaocheng[:zh-cn]蕉城区','','',0,160,0,NULL,1,0,0),(1676,0,0,NULL,13,3,'[:en-us]Xiapu[:zh-cn]霞浦县','','',0,160,0,NULL,1,0,0),(1677,0,0,NULL,13,3,'[:en-us]Gutian[:zh-cn]古田县','','',0,160,0,NULL,1,0,0),(1678,0,0,NULL,13,3,'[:en-us]Pingnan[:zh-cn]屏南县','','',0,160,0,NULL,1,0,0),(1679,0,0,NULL,13,3,'[:en-us]Shouning[:zh-cn]寿宁县','','',0,160,0,NULL,1,0,0),(1680,0,0,NULL,13,3,'[:en-us]Zhouning[:zh-cn]周宁县','','',0,160,0,NULL,1,0,0),(1681,0,0,NULL,13,3,'[:en-us]Tuorong[:zh-cn]柘荣县','','',0,160,0,NULL,1,0,0),(1682,0,0,NULL,13,3,'[:en-us]Fuan[:zh-cn]福安市','','',0,160,0,NULL,1,0,0),(1683,0,0,NULL,13,3,'[:en-us]Fudian[:zh-cn]福鼎市','','',0,160,0,NULL,1,0,0),(1684,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,161,0,NULL,1,0,0),(1685,0,0,NULL,14,3,'[:en-us]Donghu[:zh-cn]东湖区','','',0,161,0,NULL,1,0,0),(1686,0,0,NULL,14,3,'[:en-us]Xihu[:zh-cn]西湖区','','',0,161,0,NULL,1,0,0),(1687,0,0,NULL,14,3,'[:en-us]Qingyupu[:zh-cn]青云谱区','','',0,161,0,NULL,1,0,0),(1688,0,0,NULL,14,3,'[:en-us]Wanli[:zh-cn]湾里区','','',0,161,0,NULL,1,0,0),(1689,0,0,NULL,14,3,'[:en-us]Qingshanhu[:zh-cn]青山湖区','','',0,161,0,NULL,1,0,0),(1690,0,0,NULL,14,3,'[:en-us]Nanchang[:zh-cn]南昌县','','',0,161,0,NULL,1,0,0),(1691,0,0,NULL,14,3,'[:en-us]Xinjian[:zh-cn]新建县','','',0,161,0,NULL,1,0,0),(1692,0,0,NULL,14,3,'[:en-us]Anyi[:zh-cn]安义县','','',0,161,0,NULL,1,0,0),(1693,0,0,NULL,14,3,'[:en-us]Jinxian[:zh-cn]进贤县','','',0,161,0,NULL,1,0,0),(1694,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,162,0,NULL,1,0,0),(1695,0,0,NULL,14,3,'[:en-us]Changjiang[:zh-cn]昌江区','','',0,162,0,NULL,1,0,0),(1696,0,0,NULL,14,3,'[:en-us]Zhushan[:zh-cn]珠山区','','',0,162,0,NULL,1,0,0),(1697,0,0,NULL,14,3,'[:en-us]Fuliang[:zh-cn]浮梁县','','',0,162,0,NULL,1,0,0),(1698,0,0,NULL,14,3,'[:en-us]Leping[:zh-cn]乐平市','','',0,162,0,NULL,1,0,0),(1699,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,163,0,NULL,1,0,0),(1700,0,0,NULL,14,3,'[:en-us]Anyuan[:zh-cn]安源区','','',0,163,0,NULL,1,0,0),(1701,0,0,NULL,14,3,'[:en-us]Xiangdong[:zh-cn]湘东区','','',0,163,0,NULL,1,0,0),(1702,0,0,NULL,14,3,'[:en-us]Lianhua[:zh-cn]莲花县','','',0,163,0,NULL,1,0,0),(1703,0,0,NULL,14,3,'[:en-us]Shangsu[:zh-cn]上栗县','','',0,163,0,NULL,1,0,0),(1704,0,0,NULL,14,3,'[:en-us]Luxi[:zh-cn]芦溪县','','',0,163,0,NULL,1,0,0),(1718,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,164,0,NULL,1,0,0),(1719,0,0,NULL,14,3,'[:en-us]Lushan[:zh-cn]庐山区','','',0,164,0,NULL,1,0,0),(1720,0,0,NULL,14,3,'[:en-us]Xunyang[:zh-cn]浔阳区','','',0,164,0,NULL,1,0,0),(1721,0,0,NULL,14,3,'[:en-us]Jiujiang[:zh-cn]九江县','','',0,164,0,NULL,1,0,0),(1722,0,0,NULL,14,3,'[:en-us]Wuning[:zh-cn]武宁县','','',0,164,0,NULL,1,0,0),(1723,0,0,NULL,14,3,'[:en-us]Xiushui[:zh-cn]修水县','','',0,164,0,NULL,1,0,0),(1724,0,0,NULL,14,3,'[:en-us]Yongxiu[:zh-cn]永修县','','',0,164,0,NULL,1,0,0),(1725,0,0,NULL,14,3,'[:en-us]Dean[:zh-cn]德安县','','',0,164,0,NULL,1,0,0),(1726,0,0,NULL,14,3,'[:en-us]Xingzi[:zh-cn]星子县','','',0,164,0,NULL,1,0,0),(1727,0,0,NULL,14,3,'[:en-us]Duchang[:zh-cn]都昌县','','',0,164,0,NULL,1,0,0),(1728,0,0,NULL,14,3,'[:en-us]Hukou[:zh-cn]湖口县','','',0,164,0,NULL,1,0,0),(1729,0,0,NULL,14,3,'[:en-us]Pengze[:zh-cn]彭泽县','','',0,164,0,NULL,1,0,0),(1730,0,0,NULL,14,3,'[:en-us]Ruichang[:zh-cn]瑞昌市','','',0,164,0,NULL,1,0,0),(1731,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,165,0,NULL,1,0,0),(1732,0,0,NULL,14,3,'[:en-us]Yushui[:zh-cn]渝水区','','',0,165,0,NULL,1,0,0),(1733,0,0,NULL,14,3,'[:en-us]Fenyi[:zh-cn]分宜县','','',0,165,0,NULL,1,0,0),(1734,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,166,0,NULL,1,0,0),(1735,0,0,NULL,14,3,'[:en-us]Yuehu[:zh-cn]月湖区','','',0,166,0,NULL,1,0,0),(1736,0,0,NULL,14,3,'[:en-us]Yujiang[:zh-cn]余江县','','',0,166,0,NULL,1,0,0),(1737,0,0,NULL,14,3,'[:en-us]Guixi[:zh-cn]贵溪市','','',0,166,0,NULL,1,0,0),(1738,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,167,0,NULL,1,0,0),(1739,0,0,NULL,14,3,'[:en-us]Zhanggong[:zh-cn]章贡区','','',0,167,0,NULL,1,0,0),(1740,0,0,NULL,14,3,'[:en-us]Ganxian[:zh-cn]赣县','','',0,167,0,NULL,1,0,0),(1741,0,0,NULL,14,3,'[:en-us]Xinfeng[:zh-cn]信丰县','','',0,167,0,NULL,1,0,0),(1742,0,0,NULL,14,3,'[:en-us]Dayu[:zh-cn]大余县','','',0,167,0,NULL,1,0,0),(1743,0,0,NULL,14,3,'[:en-us]Shangyou[:zh-cn]上犹县','','',0,167,0,NULL,1,0,0),(1744,0,0,NULL,14,3,'[:en-us]Chongyi[:zh-cn]崇义县','','',0,167,0,NULL,1,0,0),(1745,0,0,NULL,14,3,'[:en-us]Anyuan[:zh-cn]安远县','','',0,167,0,NULL,1,0,0),(1746,0,0,NULL,14,3,'[:en-us]Longnan[:zh-cn]龙南县','','',0,167,0,NULL,1,0,0),(1747,0,0,NULL,14,3,'[:en-us]Dingnan[:zh-cn]定南县','','',0,167,0,NULL,1,0,0),(1748,0,0,NULL,14,3,'[:en-us]Quannan[:zh-cn]全南县','','',0,167,0,NULL,1,0,0),(1749,0,0,NULL,14,3,'[:en-us]Ningdu[:zh-cn]宁都县','','',0,167,0,NULL,1,0,0),(1750,0,0,NULL,14,3,'[:en-us]Yudu[:zh-cn]于都县','','',0,167,0,NULL,1,0,0),(1751,0,0,NULL,14,3,'[:en-us]Xingguo[:zh-cn]兴国县','','',0,167,0,NULL,1,0,0),(1752,0,0,NULL,14,3,'[:en-us]Huichang[:zh-cn]会昌县','','',0,167,0,NULL,1,0,0),(1753,0,0,NULL,14,3,'[:en-us]Xunwu[:zh-cn]寻乌县','','',0,167,0,NULL,1,0,0),(1754,0,0,NULL,14,3,'[:en-us]Shicheng[:zh-cn]石城县','','',0,167,0,NULL,1,0,0),(1755,0,0,NULL,14,3,'[:en-us]Ruijin[:zh-cn]瑞金市','','',0,167,0,NULL,1,0,0),(1756,0,0,NULL,14,3,'[:en-us]Nankang[:zh-cn]南康市','','',0,167,0,NULL,1,0,0),(1757,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,167,0,NULL,1,0,0),(1758,0,0,NULL,14,3,'[:en-us]Zhanggong[:zh-cn]章贡区','','',0,167,0,NULL,1,0,0),(1759,0,0,NULL,14,3,'[:en-us]Ganxian[:zh-cn]赣县','','',0,167,0,NULL,1,0,0),(1760,0,0,NULL,14,3,'[:en-us]Xinfeng[:zh-cn]信丰县','','',0,167,0,NULL,1,0,0),(1761,0,0,NULL,14,3,'[:en-us]Dayu[:zh-cn]大余县','','',0,167,0,NULL,1,0,0),(1762,0,0,NULL,14,3,'[:en-us]Shangyou[:zh-cn]上犹县','','',0,167,0,NULL,1,0,0),(1763,0,0,NULL,14,3,'[:en-us]Chongyi[:zh-cn]崇义县','','',0,167,0,NULL,1,0,0),(1764,0,0,NULL,14,3,'[:en-us]Anyuan[:zh-cn]安远县','','',0,167,0,NULL,1,0,0),(1765,0,0,NULL,14,3,'[:en-us]Longnan[:zh-cn]龙南县','','',0,167,0,NULL,1,0,0),(1766,0,0,NULL,14,3,'[:en-us]Dingnan[:zh-cn]定南县','','',0,167,0,NULL,1,0,0),(1767,0,0,NULL,14,3,'[:en-us]Quannan[:zh-cn]全南县','','',0,167,0,NULL,1,0,0),(1768,0,0,NULL,14,3,'[:en-us]Ningdu[:zh-cn]宁都县','','',0,167,0,NULL,1,0,0),(1769,0,0,NULL,14,3,'[:en-us]Yudu[:zh-cn]于都县','','',0,167,0,NULL,1,0,0),(1770,0,0,NULL,14,3,'[:en-us]Xingguo[:zh-cn]兴国县','','',0,167,0,NULL,1,0,0),(1771,0,0,NULL,14,3,'[:en-us]Huichang[:zh-cn]会昌县','','',0,167,0,NULL,1,0,0),(1772,0,0,NULL,14,3,'[:en-us]Xunwu[:zh-cn]寻乌县','','',0,167,0,NULL,1,0,0),(1773,0,0,NULL,14,3,'[:en-us]Shicheng[:zh-cn]石城县','','',0,167,0,NULL,1,0,0),(1774,0,0,NULL,14,3,'[:en-us]Ruijin[:zh-cn]瑞金市','','',0,167,0,NULL,1,0,0),(1775,0,0,NULL,14,3,'[:en-us]Nankang[:zh-cn]南康市','','',0,167,0,NULL,1,0,0),(1776,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,168,0,NULL,1,0,0),(1777,0,0,NULL,14,3,'[:en-us]Jizhou[:zh-cn]吉州区','','',0,168,0,NULL,1,0,0),(1778,0,0,NULL,14,3,'[:en-us]Qingyuan[:zh-cn]青原区','','',0,168,0,NULL,1,0,0),(1779,0,0,NULL,14,3,'[:en-us]Jian[:zh-cn]吉安县','','',0,168,0,NULL,1,0,0),(1780,0,0,NULL,14,3,'[:en-us]Jishui[:zh-cn]吉水县','','',0,168,0,NULL,1,0,0),(1781,0,0,NULL,14,3,'[:en-us]Xiajiang[:zh-cn]峡江县','','',0,168,0,NULL,1,0,0),(1782,0,0,NULL,14,3,'[:en-us]Xingan[:zh-cn]新干县','','',0,168,0,NULL,1,0,0),(1783,0,0,NULL,14,3,'[:en-us]Yongfeng[:zh-cn]永丰县','','',0,168,0,NULL,1,0,0),(1784,0,0,NULL,14,3,'[:en-us]Taihe[:zh-cn]泰和县','','',0,168,0,NULL,1,0,0),(1785,0,0,NULL,14,3,'[:en-us]Shuichuan[:zh-cn]遂川县','','',0,168,0,NULL,1,0,0),(1786,0,0,NULL,14,3,'[:en-us]Wanan[:zh-cn]万安县','','',0,168,0,NULL,1,0,0),(1787,0,0,NULL,14,3,'[:en-us]Anfu[:zh-cn]安福县','','',0,168,0,NULL,1,0,0),(1788,0,0,NULL,14,3,'[:en-us]Yongxin[:zh-cn]永新县','','',0,168,0,NULL,1,0,0),(1789,0,0,NULL,14,3,'[:en-us]Jinggangshan[:zh-cn]井冈山市','','',0,168,0,NULL,1,0,0),(1790,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,169,0,NULL,1,0,0),(1791,0,0,NULL,14,3,'[:en-us]Yuanzhou[:zh-cn]袁州区','','',0,169,0,NULL,1,0,0),(1792,0,0,NULL,14,3,'[:en-us]Fengxin[:zh-cn]奉新县','','',0,169,0,NULL,1,0,0),(1793,0,0,NULL,14,3,'[:en-us]Wanzai[:zh-cn]万载县','','',0,169,0,NULL,1,0,0),(1794,0,0,NULL,14,3,'[:en-us]Shanggao[:zh-cn]上高县','','',0,169,0,NULL,1,0,0),(1795,0,0,NULL,14,3,'[:en-us]Yifeng[:zh-cn]宜丰县','','',0,169,0,NULL,1,0,0),(1796,0,0,NULL,14,3,'[:en-us]Jinan[:zh-cn]靖安县','','',0,169,0,NULL,1,0,0),(1797,0,0,NULL,14,3,'[:en-us]Tonggu[:zh-cn]铜鼓县','','',0,169,0,NULL,1,0,0),(1798,0,0,NULL,14,3,'[:en-us]Fengcheng[:zh-cn]丰城市','','',0,169,0,NULL,1,0,0),(1799,0,0,NULL,14,3,'[:en-us]Zhangshu[:zh-cn]樟树市','','',0,169,0,NULL,1,0,0),(1800,0,0,NULL,14,3,'[:en-us]Gaoan[:zh-cn]高安市','','',0,169,0,NULL,1,0,0),(1801,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,170,0,NULL,1,0,0),(1802,0,0,NULL,14,3,'[:en-us]Linchuan[:zh-cn]临川区','','',0,170,0,NULL,1,0,0),(1803,0,0,NULL,14,3,'[:en-us]Nancheng[:zh-cn]南城县','','',0,170,0,NULL,1,0,0),(1804,0,0,NULL,14,3,'[:en-us]Lichuan[:zh-cn]黎川县','','',0,170,0,NULL,1,0,0),(1805,0,0,NULL,14,3,'[:en-us]Nanfeng[:zh-cn]南丰县','','',0,170,0,NULL,1,0,0),(1806,0,0,NULL,14,3,'[:en-us]Chongren[:zh-cn]崇仁县','','',0,170,0,NULL,1,0,0),(1807,0,0,NULL,14,3,'[:en-us]Lean[:zh-cn]乐安县','','',0,170,0,NULL,1,0,0),(1808,0,0,NULL,14,3,'[:en-us]Yihuang[:zh-cn]宜黄县','','',0,170,0,NULL,1,0,0),(1809,0,0,NULL,14,3,'[:en-us]Jinxi[:zh-cn]金溪县','','',0,170,0,NULL,1,0,0),(1810,0,0,NULL,14,3,'[:en-us]Zixi[:zh-cn]资溪县','','',0,170,0,NULL,1,0,0),(1811,0,0,NULL,14,3,'[:en-us]Dongxiang[:zh-cn]东乡县','','',0,170,0,NULL,1,0,0),(1812,0,0,NULL,14,3,'[:en-us]Guangchang[:zh-cn]广昌县','','',0,170,0,NULL,1,0,0),(1813,0,0,NULL,14,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,171,0,NULL,1,0,0),(1814,0,0,NULL,14,3,'[:en-us]Xinzhou[:zh-cn]信州区','','',0,171,0,NULL,1,0,0),(1815,0,0,NULL,14,3,'[:en-us]Shangrao[:zh-cn]上饶县','','',0,171,0,NULL,1,0,0),(1816,0,0,NULL,14,3,'[:en-us]Guangfeng[:zh-cn]广丰县','','',0,171,0,NULL,1,0,0),(1817,0,0,NULL,14,3,'[:en-us]Yushan[:zh-cn]玉山县','','',0,171,0,NULL,1,0,0),(1818,0,0,NULL,14,3,'[:en-us]Qianshan[:zh-cn]铅山县','','',0,171,0,NULL,1,0,0),(1819,0,0,NULL,14,3,'[:en-us]Hengfeng[:zh-cn]横峰县','','',0,171,0,NULL,1,0,0),(1820,0,0,NULL,14,3,'[:en-us]Geyang[:zh-cn]弋阳县','','',0,171,0,NULL,1,0,0),(1821,0,0,NULL,14,3,'[:en-us]Yugan[:zh-cn]余干县','','',0,171,0,NULL,1,0,0),(1822,0,0,NULL,14,3,'[:en-us]Boyang[:zh-cn]鄱阳县','','',0,171,0,NULL,1,0,0),(1823,0,0,NULL,14,3,'[:en-us]Wannian[:zh-cn]万年县','','',0,171,0,NULL,1,0,0),(1824,0,0,NULL,14,3,'[:en-us]Wuyuan[:zh-cn]婺源县','','',0,171,0,NULL,1,0,0),(1825,0,0,NULL,14,3,'[:en-us]Dexing[:zh-cn]德兴市','','',0,171,0,NULL,1,0,0),(1826,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,172,0,NULL,1,0,0),(1827,0,0,NULL,15,3,'[:en-us]Lixia[:zh-cn]历下区','','',0,172,0,NULL,1,0,0),(1828,0,0,NULL,15,3,'[:en-us]Middle[:zh-cn]市中区','','',0,172,0,NULL,1,0,0),(1829,0,0,NULL,15,3,'[:en-us]Huaiying[:zh-cn]槐荫区','','',0,172,0,NULL,1,0,0),(1830,0,0,NULL,15,3,'[:en-us]Tianqiao[:zh-cn]天桥区','','',0,172,0,NULL,1,0,0),(1831,0,0,NULL,15,3,'[:en-us]Licheng[:zh-cn]历城区','','',0,172,0,NULL,1,0,0),(1832,0,0,NULL,15,3,'[:en-us]Changqing[:zh-cn]长清区','','',0,172,0,NULL,1,0,0),(1833,0,0,NULL,15,3,'[:en-us]Pingying[:zh-cn]平阴县','','',0,172,0,NULL,1,0,0),(1834,0,0,NULL,15,3,'[:en-us]Jiyang[:zh-cn]济阳县','','',0,172,0,NULL,1,0,0),(1835,0,0,NULL,15,3,'[:en-us]Shanghe[:zh-cn]商河县','','',0,172,0,NULL,1,0,0),(1836,0,0,NULL,15,3,'[:en-us]Zhangqiu[:zh-cn]章丘市','','',0,172,0,NULL,1,0,0),(1837,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,173,0,NULL,1,0,0),(1838,0,0,NULL,15,3,'[:en-us]South[:zh-cn]市南区','','',0,173,0,NULL,1,0,0),(1839,0,0,NULL,15,3,'[:en-us]North[:zh-cn]市北区','','',0,173,0,NULL,1,0,0),(1840,0,0,NULL,15,3,'[:en-us]Sifang[:zh-cn]四方区','','',0,173,0,NULL,1,0,0),(1841,0,0,NULL,15,3,'[:en-us]Huangdao[:zh-cn]黄岛区','','',0,173,0,NULL,1,0,0),(1842,0,0,NULL,15,3,'[:en-us]Laoshan[:zh-cn]崂山区','','',0,173,0,NULL,1,0,0),(1843,0,0,NULL,15,3,'[:en-us]Licang[:zh-cn]李沧区','','',0,173,0,NULL,1,0,0),(1844,0,0,NULL,15,3,'[:en-us]Chengyang[:zh-cn]城阳区','','',0,173,0,NULL,1,0,0),(1845,0,0,NULL,15,3,'[:en-us]Jiaozhou[:zh-cn]胶州市','','',0,173,0,NULL,1,0,0),(1846,0,0,NULL,15,3,'[:en-us]Jimo[:zh-cn]即墨市','','',0,173,0,NULL,1,0,0),(1847,0,0,NULL,15,3,'[:en-us]Pingdu[:zh-cn]平度市','','',0,173,0,NULL,1,0,0),(1848,0,0,NULL,15,3,'[:en-us]Jiaonan[:zh-cn]胶南市','','',0,173,0,NULL,1,0,0),(1849,0,0,NULL,15,3,'[:en-us]Laixi[:zh-cn]莱西市','','',0,173,0,NULL,1,0,0),(1850,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,174,0,NULL,1,0,0),(1851,0,0,NULL,15,3,'[:en-us]Zichuan[:zh-cn]淄川区','','',0,174,0,NULL,1,0,0),(1852,0,0,NULL,15,3,'[:en-us]Zhangdian[:zh-cn]张店区','','',0,174,0,NULL,1,0,0),(1853,0,0,NULL,15,3,'[:en-us]Boshan[:zh-cn]博山区','','',0,174,0,NULL,1,0,0),(1854,0,0,NULL,15,3,'[:en-us]Linzi[:zh-cn]临淄区','','',0,174,0,NULL,1,0,0),(1855,0,0,NULL,15,3,'[:en-us]Zhoucun[:zh-cn]周村区','','',0,174,0,NULL,1,0,0),(1856,0,0,NULL,15,3,'[:en-us]Huantai[:zh-cn]桓台县','','',0,174,0,NULL,1,0,0),(1857,0,0,NULL,15,3,'[:en-us]Gaoqing[:zh-cn]高青县','','',0,174,0,NULL,1,0,0),(1858,0,0,NULL,15,3,'[:en-us]Yiyuan[:zh-cn]沂源县','','',0,174,0,NULL,1,0,0),(1859,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,175,0,NULL,1,0,0),(1860,0,0,NULL,15,3,'[:en-us]City[:zh-cn]市中区','','',0,175,0,NULL,1,0,0),(1861,0,0,NULL,15,3,'[:en-us]Xuecheng[:zh-cn]薛城区','','',0,175,0,NULL,1,0,0),(1862,0,0,NULL,15,3,'[:en-us]Fengcheng[:zh-cn]峄城区','','',0,175,0,NULL,1,0,0),(1863,0,0,NULL,15,3,'[:en-us]Taierzhuang[:zh-cn]台儿庄区','','',0,175,0,NULL,1,0,0),(1864,0,0,NULL,15,3,'[:en-us]Shanting[:zh-cn]山亭区','','',0,175,0,NULL,1,0,0),(1865,0,0,NULL,15,3,'[:en-us]Tengzhou[:zh-cn]滕州市','','',0,175,0,NULL,1,0,0),(1866,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,176,0,NULL,1,0,0),(1867,0,0,NULL,15,3,'[:en-us]Dongying[:zh-cn]东营区','','',0,176,0,NULL,1,0,0),(1868,0,0,NULL,15,3,'[:en-us]Hekou[:zh-cn]河口区','','',0,176,0,NULL,1,0,0),(1869,0,0,NULL,15,3,'[:en-us]Kenli[:zh-cn]垦利县','','',0,176,0,NULL,1,0,0),(1870,0,0,NULL,15,3,'[:en-us]Lijin[:zh-cn]利津县','','',0,176,0,NULL,1,0,0),(1871,0,0,NULL,15,3,'[:en-us]Guangrao[:zh-cn]广饶县','','',0,176,0,NULL,1,0,0),(1872,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,177,0,NULL,1,0,0),(1873,0,0,NULL,15,3,'[:en-us]Zhifu[:zh-cn]芝罘区','','',0,177,0,NULL,1,0,0),(1874,0,0,NULL,15,3,'[:en-us]Fushan[:zh-cn]福山区','','',0,177,0,NULL,1,0,0),(1875,0,0,NULL,15,3,'[:en-us]Mouping[:zh-cn]牟平区','','',0,177,0,NULL,1,0,0),(1876,0,0,NULL,15,3,'[:en-us]Laishan[:zh-cn]莱山区','','',0,177,0,NULL,1,0,0),(1877,0,0,NULL,15,3,'[:en-us]Changdao[:zh-cn]长岛县','','',0,177,0,NULL,1,0,0),(1878,0,0,NULL,15,3,'[:en-us]Longkou[:zh-cn]龙口市','','',0,177,0,NULL,1,0,0),(1879,0,0,NULL,15,3,'[:en-us]Laiyang[:zh-cn]莱阳市','','',0,177,0,NULL,1,0,0),(1880,0,0,NULL,15,3,'[:en-us]Laizhou[:zh-cn]莱州市','','',0,177,0,NULL,1,0,0),(1881,0,0,NULL,15,3,'[:en-us]Penglai[:zh-cn]蓬莱市','','',0,177,0,NULL,1,0,0),(1882,0,0,NULL,15,3,'[:en-us]Zhaoyuan[:zh-cn]招远市','','',0,177,0,NULL,1,0,0),(1883,0,0,NULL,15,3,'[:en-us]Qixia[:zh-cn]栖霞市','','',0,177,0,NULL,1,0,0),(1884,0,0,NULL,15,3,'[:en-us]Haiyang[:zh-cn]海阳市','','',0,177,0,NULL,1,0,0),(1885,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,178,0,NULL,1,0,0),(1886,0,0,NULL,15,3,'[:en-us]Tancheng[:zh-cn]潍城区','','',0,178,0,NULL,1,0,0),(1887,0,0,NULL,15,3,'[:en-us]Hanting[:zh-cn]寒亭区','','',0,178,0,NULL,1,0,0),(1888,0,0,NULL,15,3,'[:en-us]Fangzi[:zh-cn]坊子区','','',0,178,0,NULL,1,0,0),(1889,0,0,NULL,15,3,'[:en-us]Kuiwen[:zh-cn]奎文区','','',0,178,0,NULL,1,0,0),(1890,0,0,NULL,15,3,'[:en-us]Linqu[:zh-cn]临朐县','','',0,178,0,NULL,1,0,0),(1891,0,0,NULL,15,3,'[:en-us]Changle[:zh-cn]昌乐县','','',0,178,0,NULL,1,0,0),(1892,0,0,NULL,15,3,'[:en-us]Qingzhou[:zh-cn]青州市','','',0,178,0,NULL,1,0,0),(1893,0,0,NULL,15,3,'[:en-us]Zhucheng[:zh-cn]诸城市','','',0,178,0,NULL,1,0,0),(1894,0,0,NULL,15,3,'[:en-us]Shouguang[:zh-cn]寿光市','','',0,178,0,NULL,1,0,0),(1895,0,0,NULL,15,3,'[:en-us]Anqiu[:zh-cn]安丘市','','',0,178,0,NULL,1,0,0),(1896,0,0,NULL,15,3,'[:en-us]Gaomi[:zh-cn]高密市','','',0,178,0,NULL,1,0,0),(1897,0,0,NULL,15,3,'[:en-us]Changyi[:zh-cn]昌邑市','','',0,178,0,NULL,1,0,0),(1898,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,179,0,NULL,1,0,0),(1899,0,0,NULL,15,3,'[:en-us]City[:zh-cn]市中区','','',0,179,0,NULL,1,0,0),(1900,0,0,NULL,15,3,'[:en-us]Rencheng[:zh-cn]任城区','','',0,179,0,NULL,1,0,0),(1901,0,0,NULL,15,3,'[:en-us]Huishan[:zh-cn]微山县','','',0,179,0,NULL,1,0,0),(1902,0,0,NULL,15,3,'[:en-us]Yutai[:zh-cn]鱼台县','','',0,179,0,NULL,1,0,0),(1903,0,0,NULL,15,3,'[:en-us]Jinxiang[:zh-cn]金乡县','','',0,179,0,NULL,1,0,0),(1904,0,0,NULL,15,3,'[:en-us]Jiaxiang[:zh-cn]嘉祥县','','',0,179,0,NULL,1,0,0),(1905,0,0,NULL,15,3,'[:en-us]Wenshang[:zh-cn]汶上县','','',0,179,0,NULL,1,0,0),(1906,0,0,NULL,15,3,'[:en-us]Sishui[:zh-cn]泗水县','','',0,179,0,NULL,1,0,0),(1907,0,0,NULL,15,3,'[:en-us]Liangshan[:zh-cn]梁山县','','',0,179,0,NULL,1,0,0),(1908,0,0,NULL,15,3,'[:en-us]Qufu[:zh-cn]曲阜市','','',0,179,0,NULL,1,0,0),(1909,0,0,NULL,15,3,'[:en-us]Yongzhou[:zh-cn]兖州市','','',0,179,0,NULL,1,0,0),(1910,0,0,NULL,15,3,'[:en-us]Zhoucheng[:zh-cn]邹城市','','',0,179,0,NULL,1,0,0),(1911,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,180,0,NULL,1,0,0),(1912,0,0,NULL,15,3,'[:en-us]Taishan[:zh-cn]泰山区','','',0,180,0,NULL,1,0,0),(1913,0,0,NULL,15,3,'[:en-us]Daiyue[:zh-cn]岱岳区','','',0,180,0,NULL,1,0,0),(1914,0,0,NULL,15,3,'[:en-us]Ningyang[:zh-cn]宁阳县','','',0,180,0,NULL,1,0,0),(1915,0,0,NULL,15,3,'[:en-us]Dongping[:zh-cn]东平县','','',0,180,0,NULL,1,0,0),(1916,0,0,NULL,15,3,'[:en-us]Xintai[:zh-cn]新泰市','','',0,180,0,NULL,1,0,0),(1917,0,0,NULL,15,3,'[:en-us]Feicheng[:zh-cn]肥城市','','',0,180,0,NULL,1,0,0),(1918,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,181,0,NULL,1,0,0),(1919,0,0,NULL,15,3,'[:en-us]Huanchui[:zh-cn]环翠区','','',0,181,0,NULL,1,0,0),(1920,0,0,NULL,15,3,'[:en-us]Wendeng[:zh-cn]文登市','','',0,181,0,NULL,1,0,0),(1921,0,0,NULL,15,3,'[:en-us]Rongcheng[:zh-cn]荣成市','','',0,181,0,NULL,1,0,0),(1922,0,0,NULL,15,3,'[:en-us]Rushan[:zh-cn]乳山市','','',0,181,0,NULL,1,0,0),(1923,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,182,0,NULL,1,0,0),(1924,0,0,NULL,15,3,'[:en-us]Donggang[:zh-cn]东港区','','',0,182,0,NULL,1,0,0),(1925,0,0,NULL,15,3,'[:en-us]Lanshan[:zh-cn]岚山区','','',0,182,0,NULL,1,0,0),(1926,0,0,NULL,15,3,'[:en-us]Wulian[:zh-cn]五莲县','','',0,182,0,NULL,1,0,0),(1927,0,0,NULL,15,3,'[:en-us]Chang[:zh-cn]莒县','','',0,182,0,NULL,1,0,0),(1928,0,0,NULL,15,3,'[:en-us]Municipal[:zh-cn]市辖区','','',0,183,0,NULL,1,0,0),(1929,0,0,NULL,15,3,'[:en-us]Laicheng[:zh-cn]莱城区','','',0,183,0,NULL,1,0,0),(1930,0,0,NULL,15,3,'[:en-us]Gangcheng[:zh-cn]钢城区','','',0,183,0,NULL,1,0,0),(1931,0,0,NULL,15,3,'[:en-us]Lanshan[:zh-cn]兰山区','','',0,184,0,NULL,1,0,0),(1932,0,0,NULL,15,3,'[:en-us]Luozhuang[:zh-cn]罗庄区','','',0,184,0,NULL,1,0,0),(1933,0,0,NULL,15,3,'[:en-us]Hedong[:zh-cn]河东区','','',0,184,0,NULL,1,0,0),(1934,0,0,NULL,15,3,'[:en-us]Yinan[:zh-cn]沂南县','','',0,184,0,NULL,1,0,0),(1935,0,0,NULL,15,3,'[:en-us]Yancheng[:zh-cn]郯城县','','',0,184,0,NULL,1,0,0),(1936,0,0,NULL,15,3,'[:en-us]Yishui[:zh-cn]沂水县','','',0,184,0,NULL,1,0,0),(1937,0,0,NULL,15,3,'[:en-us]Cangshan[:zh-cn]苍山县','','',0,184,0,NULL,1,0,0),(1938,0,0,NULL,15,3,'[:en-us]Feixian[:zh-cn]费县','','',0,184,0,NULL,1,0,0),(1939,0,0,NULL,15,3,'[:en-us]Pingyi[:zh-cn]平邑县','','',0,184,0,NULL,1,0,0),(1940,0,0,NULL,15,3,'[:en-us]Changnan[:zh-cn]莒南县','','',0,184,0,NULL,1,0,0),(1941,0,0,NULL,15,3,'[:en-us]Mengying[:zh-cn]蒙阴县','','',0,184,0,NULL,1,0,0),(1942,0,0,NULL,15,3,'[:en-us]Linmu[:zh-cn]临沭县','','',0,184,0,NULL,1,0,0);

/*Table structure for table `pb_areatypes` */

DROP TABLE IF EXISTS `pb_areatypes`;

CREATE TABLE `pb_areatypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `pb_areatypes` */

insert  into `pb_areatypes`(`id`,`name`) values (1,'[:en-us]North China[:zh-cn]华北'),(2,'[:en-us]East North China[:zh-cn]东北'),(3,'[:en-us]East China[:zh-cn]华东'),(4,'[:en-us]Middle China[:zh-cn]华中'),(5,'[:en-us]West South China[:zh-cn]西南'),(6,'[:en-us]West North China[:zh-cn]西北'),(7,'[:en-us]South China[:zh-cn]华南'),(8,'[:en-us]Special Region[:zh-cn]特区');

/*Table structure for table `pb_attachments` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_attachments` */

/*Table structure for table `pb_attachmenttypes` */

DROP TABLE IF EXISTS `pb_attachmenttypes`;

CREATE TABLE `pb_attachmenttypes` (
  `id` tinyint(1) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_attachmenttypes` */

/*Table structure for table `pb_banned` */

DROP TABLE IF EXISTS `pb_banned`;

CREATE TABLE `pb_banned` (
  `id` smallint(6) NOT NULL auto_increment,
  `ip1` char(3) NOT NULL default '',
  `ip2` char(3) NOT NULL default '',
  `ip3` char(3) NOT NULL default '',
  `ip4` char(3) NOT NULL default '',
  `expiration` int(10) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ip1` (`ip1`,`ip2`,`ip3`,`ip4`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_banned` */

/*Table structure for table `pb_brands` */

DROP TABLE IF EXISTS `pb_brands`;

CREATE TABLE `pb_brands` (
  `id` smallint(6) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `type_id` smallint(3) NOT NULL default '0',
  `if_commend` tinyint(1) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `alias_name` varchar(100) NOT NULL default '',
  `picture` varchar(255) NOT NULL default '',
  `description` text NOT NULL,
  `hits` smallint(6) NOT NULL default '0',
  `ranks` smallint(3) NOT NULL default '0',
  `letter` varchar(2) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `pb_brands` */

insert  into `pb_brands`(`id`,`member_id`,`company_id`,`type_id`,`if_commend`,`name`,`alias_name`,`picture`,`description`,`hits`,`ranks`,`letter`,`created`,`modified`) values (1,-1,0,1,1,'palm','palm','sample/brand/1.jpg','',1,0,'p',1361622118,0),(2,-1,0,2,1,'LG','LG','sample/brand/2.jpg','',1,0,'l',1361622118,0),(3,-1,0,4,0,'Moto','motolola','sample/brand/3.jpg','',1,0,'m',1361622118,0),(4,-1,1,4,1,'Nokia','nokia','sample/brand/4.jpg','',1,0,'n',1361622118,0),(13,1,1,4,1,'Philips','philips','sample/brand/5.jpg','',0,0,'f',1361622118,0),(14,-1,1,4,0,'Samsung','samsung','sample/brand/6.jpg','',0,0,'s',1361622118,0),(7,-1,1,4,0,'Panasonic','panasonic','sample/brand/7.jpg','',0,0,'s',1361622118,0),(8,-1,1,4,0,'Sonic','sony','sample/brand/8.jpg','',0,0,'s',1361622118,0),(9,-1,1,3,0,'Semens','simens','sample/brand/9.jpg','',0,0,'x',1361622118,0),(10,1,1,2,0,'Nike','alcatel','sample/brand/10.jpg','asdf',0,0,'a',1361622118,0),(11,-1,1,0,0,'Adidas','Adidas','sample/brand/11.jpg','',0,0,'',0,0),(12,-1,1,0,0,'Suntory','','sample/brand/12.jpg','',0,0,'',0,0),(5,-1,1,0,0,'China Mobile','','sample/brand/13.jpg','',0,0,'',0,0),(6,-1,1,0,0,'CNNIC','','sample/brand/14.jpg','',0,0,'',0,0);

/*Table structure for table `pb_brandtypes` */

DROP TABLE IF EXISTS `pb_brandtypes`;

CREATE TABLE `pb_brandtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `parent_id` smallint(3) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `pb_brandtypes` */

insert  into `pb_brandtypes`(`id`,`parent_id`,`level`,`name`,`display_order`) values (1,0,1,'Regional',0),(2,0,1,'Domestic',0),(3,0,1,'International',0),(4,0,1,'Manufacturer',0),(5,0,1,'Operators',0),(6,0,1,'Own',0),(7,0,1,'Foreign',0),(8,0,1,'Grafting',0),(9,5,2,'Home appliances',0),(10,5,2,'Food beverage',0),(11,5,2,'Household chemicals',0),(12,5,2,'Services',0);

/*Table structure for table `pb_companies` */

DROP TABLE IF EXISTS `pb_companies`;

CREATE TABLE `pb_companies` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `cache_spacename` varchar(255) NOT NULL default '',
  `cache_membergroupid` smallint(3) NOT NULL default '0',
  `cache_credits` smallint(6) NOT NULL default '0',
  `topleveldomain` varchar(255) NOT NULL default '',
  `industry_id` smallint(6) NOT NULL default '0',
  `area_id` char(6) NOT NULL default '0',
  `type_id` tinyint(2) NOT NULL default '0',
  `name` char(255) NOT NULL default '',
  `description` text,
  `english_name` char(100) NOT NULL default '',
  `adwords` char(25) NOT NULL default '',
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
  KEY `member_id` (`member_id`),
  KEY `name` (`name`),
  KEY `status` (`status`),
  KEY `picture` (`picture`),
  KEY `industry_id1` (`industry_id`,`area_id`),
  KEY `status_2` (`status`),
  KEY `picture_2` (`picture`,`status`),
  KEY `name_2` (`name`),
  KEY `name_3` (`name`),
  KEY `status_3` (`status`),
  KEY `picture_3` (`picture`),
  KEY `industry_id1_2` (`industry_id`,`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `pb_companies` */

insert  into `pb_companies`(`id`,`member_id`,`cache_spacename`,`cache_membergroupid`,`cache_credits`,`topleveldomain`,`industry_id`,`area_id`,`type_id`,`name`,`description`,`english_name`,`adwords`,`keywords`,`boss_name`,`manage_type`,`year_annual`,`property`,`configs`,`bank_from`,`bank_account`,`main_prod`,`employee_amount`,`found_date`,`reg_fund`,`reg_address`,`address`,`zipcode`,`main_brand`,`main_market`,`main_biz_place`,`main_customer`,`link_man`,`link_man_gender`,`position`,`tel`,`fax`,`mobile`,`email`,`site_url`,`picture`,`status`,`first_letter`,`if_commend`,`clicked`,`created`,`modified`) values (1,1,'admin',9,0,'',1,'3',1,'Ualink E-Commerce','PHPB2B','UALINK E-Commerce','','','Stephen','1',3,1,'a:1:{s:12:\"templet_name\";b:0;}','Bank Of Beijing','12342143','','4','946684800',5,'Beijing','Beijing East District','100010','Ualink','1,2,3','Beijing City','Company Unit','Stephen',1,4,'(086)10-41235678','(086)10-41235678','130123456782','service@phpb2b.com','http://www.phpb2b.com/','sample/company/1.jpg',1,'A',1,1,1361622118,1361622118),(2,1,'admin2',9,0,'',1,'3',1,'Beijing Ualink E-Commerce Inc.','Beijing Ualink E-Commerce Inc.','','','','','1',0,1,NULL,'','','','','',5,'Beijing','Beijing East District','100010','Ualink','2,3,4','Beijing City','','',1,4,'(086)10-41235678','(086)10-41235678','','service@phpb2b.com','http://www.phpb2b.com/','sample/company/1.jpg',1,'A',1,1,1361622118,0),(3,2,'athena1',9,0,'',1,'3',1,'3M China Ltd,Beijing Branch Office','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(4,2,'athena2',9,0,'',1,'2',1,'AT&T(China)Co.,Ltd.','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(5,2,'',9,0,'',1,'2',1,'BP Amoco China Co., Ltd','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(6,2,'',9,0,'',2,'2',1,'IONA Technologies Corporation','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(7,2,'',9,0,'',2,'2',1,'Alpine Electronics(China)Co.,Ltd.','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(8,2,'',9,0,'',2,'1',1,'ARCO CHINA INC.','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(9,2,'',9,0,'',2,'1',1,'Accenture Co., Ltd.','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(10,2,'athena8',9,0,'',3,'1',1,'Irdeto Access Technology(Beijing)Co.,Ltd.','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0),(11,2,'athena9',9,0,'',3,'1',1,'Ericsson(China)Company Ltd.','This is the demo data, does not guarantee the authenticity of the data','','','','','1',0,1,NULL,'','','','','',0,'','','','','','','','',1,7,'','','','','','sample/company/no.jpg',1,'A',1,1,1361622118,0);

/*Table structure for table `pb_companyfields` */

DROP TABLE IF EXISTS `pb_companyfields`;

CREATE TABLE `pb_companyfields` (
  `company_id` int(10) NOT NULL default '0',
  `map_longitude` varchar(25) NOT NULL default '',
  `map_latitude` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_companyfields` */

/*Table structure for table `pb_companynewses` */

DROP TABLE IF EXISTS `pb_companynewses`;

CREATE TABLE `pb_companynewses` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `type_id` smallint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `content` text,
  `picture` varchar(100) NOT NULL default '',
  `status` tinyint(1) NOT NULL default '0',
  `clicked` int(5) NOT NULL default '1',
  `created` int(9) NOT NULL default '0',
  `modified` int(9) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_companynewses` */

/*Table structure for table `pb_companynewstypes` */

DROP TABLE IF EXISTS `pb_companynewstypes`;

CREATE TABLE `pb_companynewstypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_companynewstypes` */

/*Table structure for table `pb_companytypes` */

DROP TABLE IF EXISTS `pb_companytypes`;

CREATE TABLE `pb_companytypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  `url` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_companytypes` */

/*Table structure for table `pb_countries` */

DROP TABLE IF EXISTS `pb_countries`;

CREATE TABLE `pb_countries` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `picture` varchar(100) NOT NULL default '0',
  `display_order` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_countries` */

insert  into `pb_countries`(`id`,`name`,`picture`,`display_order`) values (1,'China','cn.gif',0),(3,'Hongkong','hk.gif',0);

/*Table structure for table `pb_dicts` */

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_dicts` */

insert  into `pb_dicts`(`id`,`dicttype_id`,`extend_dicttypeid`,`word`,`word_name`,`digest`,`content`,`picture`,`refer`,`hits`,`closed`,`if_commend`,`created`,`modified`) values (1,7,'','Red Apple phenomenon','Cost and Freight','','','','',7,0,0,1361622118,0),(2,1,'','Toucan tongue is a cluster','','','','','',4,0,0,1361622118,0);

/*Table structure for table `pb_dicttypes` */

DROP TABLE IF EXISTS `pb_dicttypes`;

CREATE TABLE `pb_dicttypes` (
  `id` smallint(6) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `parent_id` smallint(6) NOT NULL default '0',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `pb_dicttypes` */

insert  into `pb_dicttypes`(`id`,`name`,`parent_id`,`display_order`) values (1,'Nature',0,0),(2,'Culture',0,0),(3,'People',0,0),(4,'History',0,0),(5,'Life',0,0),(6,'Social',0,0),(7,'Arts',1,0),(8,'Economy',1,0),(9,'Science',1,0),(10,'Sports',1,0),(11,'Technology',1,0),(12,'Geography',1,0),(13,'Hot',1,0),(14,'Other',1,0);

/*Table structure for table `pb_expomembers` */

DROP TABLE IF EXISTS `pb_expomembers`;

CREATE TABLE `pb_expomembers` (
  `id` smallint(6) NOT NULL auto_increment,
  `expo_id` smallint(6) NOT NULL default '0',
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `expo_id` (`expo_id`,`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_expomembers` */

/*Table structure for table `pb_expos` */

DROP TABLE IF EXISTS `pb_expos`;

CREATE TABLE `pb_expos` (
  `id` int(10) NOT NULL auto_increment,
  `expotype_id` smallint(3) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `description` text,
  `begin_time` int(10) NOT NULL default '0',
  `end_time` int(10) NOT NULL default '0',
  `industry_ids` varchar(100) NOT NULL default '0',
  `industry_id` smallint(6) NOT NULL default '0',
  `area_id` smallint(6) NOT NULL default '0',
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
  PRIMARY KEY  (`id`),
  KEY `status` (`status`),
  KEY `status_2` (`status`),
  KEY `status_3` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `pb_expos` */

insert  into `pb_expos`(`id`,`expotype_id`,`name`,`description`,`begin_time`,`end_time`,`industry_ids`,`industry_id`,`area_id`,`address`,`stadium_name`,`refresh_method`,`scope`,`hosts`,`organisers`,`co_organisers`,`sponsors`,`contacts`,`important_notice`,`picture`,`if_commend`,`status`,`hits`,`created`,`modified`) values (1,1,'2011 Hong Kong International ICT Expo (ICT)','',1293936472,1296528472,'0',0,0,'','','','','','','','','','','',0,1,1,1361622118,0),(2,1,'2011 Hong Kong Electronics Fair Spring','',1293936472,1296528472,'0',0,0,'','','','','','','','','','','',0,1,1,1361622118,0),(3,1,'2011 Dubai Wood, furniture accessories and Woodworking Machinery Exhibition','',1293936472,1296528472,'0',0,0,'','','','','','','','','','','',0,1,1,1361622118,0),(4,1,'2011 Vietnam International Leather, Leather Chemical and Equipment Exhibition','',1293936472,1296528472,'0',0,0,'','','','','','','','','','','',0,1,1,1361622118,0),(5,2,'Dubai 2011 exhibition and entertainment facilities, theme park development','',1293936472,1296528472,'0',0,0,'','','','','','','','','','','',0,1,1,1361622118,0),(6,2,'2011 South African Medical Fair AFRICA HEALTH','',1293936472,1296528472,'0',0,0,'','','','','','','','','','','',0,1,1,1361622118,0),(7,1,'Russia 2011 Exhibition of professional cosmetics and beauty equipment','Russia 2011 Exhibition of professional cosmetics and beauty equipment',1293936472,1296528472,'0',0,0,'','','','','','','','','','','',0,1,1,1361622118,0),(8,2,'2011 Seoul International Book Fair SIBF','2011 Seoul International Book Fair SIBF',1293936472,1296528472,'0',0,0,'','','','','','','','',NULL,NULL,'',0,1,1,1361622118,0),(9,1,'Egyptian International Packaging Exhibition 2011','Egyptian International Packaging Exhibition 2011',1293936472,1296528472,'0',0,0,'','','','','','','','',NULL,NULL,'',0,1,1,1361622118,0),(10,2,'2011 China (Beijing) International Tea and Tea Expo','2011 China (Beijing) International Tea and Tea Expo',1293936472,1296528472,'0',0,0,'','','','','','','','',NULL,NULL,'',0,1,1,1361622118,0),(12,1,'Hanoi, Vietnam 2011 International Security Technology & Equipment Exhibition','Hanoi, Vietnam 2011 International Security Technology & Equipment Exhibition',1293936472,1296528472,'0',0,0,'','','','','','','','',NULL,NULL,'sample/other/fair-1.jpg',1,1,1,1361622118,0);

/*Table structure for table `pb_expostadiums` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_expostadiums` */

/*Table structure for table `pb_expotypes` */

DROP TABLE IF EXISTS `pb_expotypes`;

CREATE TABLE `pb_expotypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_expotypes` */

insert  into `pb_expotypes`(`id`,`name`,`created`,`modified`) values (1,'Domestic',1361622118,0),(2,'International',1361622118,0);

/*Table structure for table `pb_favorites` */

DROP TABLE IF EXISTS `pb_favorites`;

CREATE TABLE `pb_favorites` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `target_id` int(10) NOT NULL default '-1',
  `type_id` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `member_id` (`member_id`,`target_id`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_favorites` */

/*Table structure for table `pb_feeds` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_feeds` */

/*Table structure for table `pb_formattributes` */

DROP TABLE IF EXISTS `pb_formattributes`;

CREATE TABLE `pb_formattributes` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL default '0',
  `form_id` smallint(3) NOT NULL default '0',
  `formitem_id` smallint(3) NOT NULL default '0',
  `primary_id` int(10) NOT NULL default '-1',
  `attribute` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_formattributes` */

/*Table structure for table `pb_formitems` */

DROP TABLE IF EXISTS `pb_formitems`;

CREATE TABLE `pb_formitems` (
  `id` smallint(3) NOT NULL auto_increment,
  `form_id` smallint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `description` text,
  `identifier` varchar(50) NOT NULL default '',
  `type` enum('checkbox','select','radio','calendar','url','image','textarea','email','number','text') NOT NULL default 'text',
  `rules` text,
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `pb_formitems` */

insert  into `pb_formitems`(`id`,`form_id`,`title`,`description`,`identifier`,`type`,`rules`,`display_order`) values (1,0,'Quality','','product_quantity','text','',0),(2,0,'Package','','packing','text','',0),(3,0,'Price','','product_price','text','',0),(4,0,'Scale','','product_specification','text','',0),(5,0,'Serial','','serial_number','text','',0),(6,0,'Produce','','production_place','text','',0),(7,0,'Brand',NULL,'brand_name','text',NULL,0);

/*Table structure for table `pb_forms` */

DROP TABLE IF EXISTS `pb_forms`;

CREATE TABLE `pb_forms` (
  `id` smallint(3) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL default '0',
  `name` varchar(100) NOT NULL default '',
  `items` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_forms` */

insert  into `pb_forms`(`id`,`type_id`,`name`,`items`) values (1,1,'Trade Column','1,2,3,4,5,6'),(2,2,'Product Column','1,2,3,4,5,6,7');

/*Table structure for table `pb_friendlinks` */

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_friendlinks` */

insert  into `pb_friendlinks`(`id`,`friendlinktype_id`,`industry_id`,`area_id`,`title`,`logo`,`url`,`priority`,`status`,`description`,`created`,`modified`) values (1,1,0,0,'PHPB2B','','http://www.phpb2b.com/',0,1,'',1293936472,0),(2,2,0,0,'PHPB2B Demo','','http://demo.phpb2b.com/',0,1,'',1293936472,0);

/*Table structure for table `pb_friendlinktypes` */

DROP TABLE IF EXISTS `pb_friendlinktypes`;

CREATE TABLE `pb_friendlinktypes` (
  `id` tinyint(1) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_friendlinktypes` */

insert  into `pb_friendlinktypes`(`id`,`name`) values (1,'Links'),(2,'Partners');

/*Table structure for table `pb_goods` */

DROP TABLE IF EXISTS `pb_goods`;

CREATE TABLE `pb_goods` (
  `id` smallint(6) NOT NULL auto_increment,
  `type_id` smallint(3) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `price` float(9,2) NOT NULL default '0.00',
  `closed` tinyint(1) NOT NULL default '1',
  `picture` varchar(100) NOT NULL default '',
  `if_commend` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_goods` */

insert  into `pb_goods`(`id`,`type_id`,`name`,`description`,`price`,`closed`,`picture`,`if_commend`,`created`,`modified`) values (2,1,'VIP Upgrade','',0.02,1,'',0,1293936472,1300889949),(1,1,'Professional Upgrade','',0.01,1,'',0,1293936472,1300889956);

/*Table structure for table `pb_goodtypes` */

DROP TABLE IF EXISTS `pb_goodtypes`;

CREATE TABLE `pb_goodtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_goodtypes` */

insert  into `pb_goodtypes`(`id`,`name`,`display_order`) values (1,'Service',0),(2,'Cache',0),(3,'Ads',0);

/*Table structure for table `pb_helps` */

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_helps` */

insert  into `pb_helps`(`id`,`helptype_id`,`title`,`content`,`highlight`,`created`,`modified`) values (1,1,'Login step','',0,0,0),(2,2,'Register step','',0,0,0);

/*Table structure for table `pb_helptypes` */

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_helptypes` */

insert  into `pb_helptypes`(`id`,`title`,`description`,`parent_id`,`level`,`display_order`,`created`,`modified`) values (1,'Site Help','',0,0,0,0,0),(2,'Outside the station to help','',0,0,0,0,0);

/*Table structure for table `pb_industries` */

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
) ENGINE=MyISAM AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

/*Data for the table `pb_industries` */

insert  into `pb_industries`(`id`,`attachment_id`,`industrytype_id`,`child_ids`,`name`,`url`,`alias_name`,`highlight`,`parent_id`,`top_parentid`,`level`,`display_order`,`description`,`available`,`created`,`modified`) values (1,0,0,NULL,'[:en-us]Clothing[:zh-cn]服装服饰','','',0,0,0,1,0,NULL,1,0,0),(2,0,0,NULL,'[:en-us]Merchandise[:zh-cn]日用百货','','',0,0,0,1,0,NULL,1,0,0),(3,0,0,NULL,'[:en-us]Equipment[:zh-cn]机电设备','','',0,0,0,1,0,NULL,1,0,0),(4,0,0,NULL,'[:en-us]Materials[:zh-cn]原材料','','',0,0,0,1,0,NULL,1,0,0),(5,0,0,NULL,'[:en-us]Other[:zh-cn]其他服务','','',0,0,0,1,0,NULL,1,0,0),(6,0,0,NULL,'[:en-us]Women[:zh-cn]女装','','',0,1,1,2,0,NULL,1,0,0),(7,0,0,NULL,'[:en-us]Men[:zh-cn]男装','','',0,1,1,2,0,NULL,1,0,0),(8,0,0,NULL,'[:en-us]Children[:zh-cn]童装','','',0,1,1,2,0,NULL,1,0,0),(9,0,0,NULL,'[:en-us]Underwear[:zh-cn]内衣','','',0,1,1,2,0,NULL,1,0,0),(10,0,0,NULL,'[:en-us]Shoe[:zh-cn]鞋','','',0,1,1,2,0,NULL,1,0,0),(11,0,0,NULL,'[:en-us]Sportswear[:zh-cn]运动服','','',0,1,1,2,0,NULL,1,0,0),(12,0,0,NULL,'[:en-us]Spinning[:zh-cn]纺织','','',0,1,1,2,0,NULL,1,0,0),(13,0,0,NULL,'[:en-us]Accessories[:zh-cn]饰品','','',0,1,1,2,0,NULL,1,0,0),(14,0,0,NULL,'[:en-us]Ruili[:zh-cn]瑞丽','','',0,6,1,3,0,NULL,1,0,0),(15,0,0,NULL,'[:en-us]Korean goods[:zh-cn]韩货','','',0,6,1,3,0,NULL,1,0,0),(16,0,0,NULL,'[:en-us]Spring[:zh-cn]春装','','',0,6,1,3,0,NULL,1,0,0),(17,0,0,NULL,'[:en-us]Coat[:zh-cn]外套','','',0,6,1,3,0,NULL,1,0,0),(18,0,0,NULL,'[:en-us]Jeans[:zh-cn]牛仔裤','','',0,6,1,3,0,NULL,1,0,0),(19,0,0,NULL,'[:en-us]Business[:zh-cn]商务','','',0,7,1,3,0,NULL,1,0,0),(20,0,0,NULL,'[:en-us]Leisure[:zh-cn]休闲','','',0,7,1,3,0,NULL,1,0,0),(21,0,0,NULL,'[:en-us]England[:zh-cn]英伦','','',0,7,1,3,0,NULL,1,0,0),(22,0,0,NULL,'[:en-us]Foreign trade[:zh-cn]外贸','','',0,7,1,3,0,NULL,1,0,0),(23,0,0,NULL,'[:en-us]Brand[:zh-cn]品牌','','',0,7,1,3,0,NULL,1,0,0),(24,0,0,NULL,'[:en-us]Baby[:zh-cn]婴儿装','','',0,8,1,3,0,NULL,1,0,0),(25,0,0,NULL,'[:en-us]Brand[:zh-cn]品牌','','',0,8,1,3,0,NULL,1,0,0),(26,0,0,NULL,'[:en-us]1-3 years[:zh-cn]1到3岁','','',0,8,1,3,0,NULL,1,0,0),(27,0,0,NULL,'[:en-us]Maternity[:zh-cn]孕妇装','','',0,8,1,3,0,NULL,1,0,0),(28,0,0,NULL,'[:en-us]Bra[:zh-cn]文胸','','',0,9,1,3,0,NULL,1,0,0),(29,0,0,NULL,'[:en-us]Underpants[:zh-cn]内裤','','',0,9,1,3,0,NULL,1,0,0),(30,0,0,NULL,'[:en-us]Delight[:zh-cn]情趣','','',0,9,1,3,0,NULL,1,0,0),(31,0,0,NULL,'[:en-us]Brand[:zh-cn]品牌','','',0,9,1,3,0,NULL,1,0,0),(32,0,0,NULL,'[:en-us]Set[:zh-cn]套装','','',0,9,1,3,0,NULL,1,0,0),(33,0,0,NULL,'[:en-us]Shoes[:zh-cn]女鞋','','',0,10,1,3,0,NULL,1,0,0),(34,0,0,NULL,'[:en-us]Men shoes[:zh-cn]男鞋','','',0,10,1,3,0,NULL,1,0,0),(35,0,0,NULL,'[:en-us]Children shoes[:zh-cn]童鞋','','',0,10,1,3,0,NULL,1,0,0),(36,0,0,NULL,'[:en-us]Foreign trade[:zh-cn]外贸鞋','','',0,10,1,3,0,NULL,1,0,0),(37,0,0,NULL,'[:en-us]Brand[:zh-cn]品牌鞋','','',0,10,1,3,0,NULL,1,0,0),(38,0,0,NULL,'[:en-us]Belt[:zh-cn]腰带','','',0,11,1,3,0,NULL,1,0,0),(39,0,0,NULL,'[:en-us]Handbags[:zh-cn]女包','','',0,11,1,3,0,NULL,1,0,0),(40,0,0,NULL,'[:en-us]M package[:zh-cn]男包','','',0,11,1,3,0,NULL,1,0,0),(41,0,0,NULL,'[:en-us]Sports bag[:zh-cn]运动包','','',0,11,1,3,0,NULL,1,0,0),(42,0,0,NULL,'[:en-us]Lining[:zh-cn]衬料','','',0,12,1,3,0,NULL,1,0,0),(43,0,0,NULL,'[:en-us]Leather[:zh-cn]皮革','','',0,12,1,3,0,NULL,1,0,0),(44,0,0,NULL,'[:en-us]Button[:zh-cn]纽扣','','',0,12,1,3,0,NULL,1,0,0),(45,0,0,NULL,'[:en-us]Zipper[:zh-cn]拉链','','',0,12,1,3,0,NULL,1,0,0),(46,0,0,NULL,'[:en-us]Lace[:zh-cn]花边','','',0,12,1,3,0,NULL,1,0,0),(47,0,0,NULL,'[:en-us]Headdress[:zh-cn]头饰','','',0,13,1,3,0,NULL,1,0,0),(48,0,0,NULL,'[:en-us]Earring[:zh-cn]耳饰','','',0,13,1,3,0,NULL,1,0,0),(49,0,0,NULL,'[:en-us]Pendant[:zh-cn]项饰','','',0,13,1,3,0,NULL,1,0,0),(50,0,0,NULL,'[:en-us]Jewelery[:zh-cn]手饰','','',0,13,1,3,0,NULL,1,0,0),(51,0,0,NULL,'[:en-us]Korean[:zh-cn]韩版','','',0,13,1,3,0,NULL,1,0,0),(52,0,0,NULL,'[:en-us]Home[:zh-cn]家居','','',0,2,2,2,0,NULL,1,0,0),(53,0,0,NULL,'[:en-us]Home improvement[:zh-cn]家装','','',0,2,2,2,0,NULL,1,0,0),(54,0,0,NULL,'[:en-us]Gift[:zh-cn]礼品','','',0,2,2,2,0,NULL,1,0,0),(55,0,0,NULL,'[:en-us]Toy[:zh-cn]玩具','','',0,2,2,2,0,NULL,1,0,0),(56,0,0,NULL,'[:en-us]Office Supplies[:zh-cn]办公文教','','',0,2,2,2,0,NULL,1,0,0),(57,0,0,NULL,'[:en-us]Sports and Leisure[:zh-cn]运动休闲','','',0,2,2,2,0,NULL,1,0,0),(58,0,0,NULL,'[:en-us]Food[:zh-cn]食品','','',0,2,2,2,0,NULL,1,0,0),(59,0,0,NULL,'[:en-us]Appliances[:zh-cn]家电','','',0,2,2,2,0,NULL,1,0,0),(60,0,0,NULL,'[:en-us]Digital[:zh-cn]数码','','',0,2,2,2,0,NULL,1,0,0),(61,0,0,NULL,'[:en-us]Communication[:zh-cn]通讯','','',0,2,2,2,0,NULL,1,0,0),(62,0,0,NULL,'[:en-us]Skin Care[:zh-cn]护肤','','',0,52,2,3,0,NULL,1,0,0),(63,0,0,NULL,'[:en-us]Make-up[:zh-cn]彩妆','','',0,52,2,3,0,NULL,1,0,0),(64,0,0,NULL,'[:en-us]Day of[:zh-cn]日化','','',0,52,2,3,0,NULL,1,0,0),(65,0,0,NULL,'[:en-us]Maternal and Child[:zh-cn]母婴','','',0,52,2,3,0,NULL,1,0,0),(66,0,0,NULL,'[:en-us]General merchandise[:zh-cn]百货','','',0,52,2,3,0,NULL,1,0,0),(67,0,0,NULL,'[:en-us]Lamps[:zh-cn]灯具','','',0,53,2,3,0,NULL,1,0,0),(68,0,0,NULL,'[:en-us]Furniture[:zh-cn]家具','','',0,53,2,3,0,NULL,1,0,0),(69,0,0,NULL,'[:en-us]Wallpaper[:zh-cn]壁纸','','',0,53,2,3,0,NULL,1,0,0),(70,0,0,NULL,'[:en-us]Furnishings[:zh-cn]家饰','','',0,53,2,3,0,NULL,1,0,0),(71,0,0,NULL,'[:en-us]Home Textiles[:zh-cn]家纺','','',0,53,2,3,0,NULL,1,0,0),(72,0,0,NULL,'[:en-us]Cross Stitch[:zh-cn]十字绣','','',0,54,2,3,0,NULL,1,0,0),(73,0,0,NULL,'[:en-us]Strange new[:zh-cn]新奇特','','',0,54,2,3,0,NULL,1,0,0),(74,0,0,NULL,'[:en-us]Home[:zh-cn]居家','','',0,54,2,3,0,NULL,1,0,0),(75,0,0,NULL,'[:en-us]Festival[:zh-cn]节庆','','',0,54,2,3,0,NULL,1,0,0),(76,0,0,NULL,'[:en-us]Doll[:zh-cn]公仔','','',0,55,2,3,0,NULL,1,0,0),(77,0,0,NULL,'[:en-us]Building block[:zh-cn]积木','','',0,55,2,3,0,NULL,1,0,0),(78,0,0,NULL,'[:en-us]Animation[:zh-cn]动漫','','',0,55,2,3,0,NULL,1,0,0),(79,0,0,NULL,'[:en-us]Model[:zh-cn]模型','','',0,55,2,3,0,NULL,1,0,0),(80,0,0,NULL,'[:en-us]Puzzle[:zh-cn]益智','','',0,55,2,3,0,NULL,1,0,0),(81,0,0,NULL,'[:en-us]Stationery[:zh-cn]文具','','',0,56,2,3,0,NULL,1,0,0),(82,0,0,NULL,'[:en-us]Pens[:zh-cn]笔具','','',0,56,2,3,0,NULL,1,0,0),(83,0,0,NULL,'[:en-us]Book[:zh-cn]本子','','',0,56,2,3,0,NULL,1,0,0),(84,0,0,NULL,'[:en-us]South Korea stationery[:zh-cn]韩国文具','','',0,56,2,3,0,NULL,1,0,0),(85,0,0,NULL,'[:en-us]Outdoor[:zh-cn]户外','','',0,57,2,3,0,NULL,1,0,0),(86,0,0,NULL,'[:en-us]Sports[:zh-cn]体育','','',0,57,2,3,0,NULL,1,0,0),(87,0,0,NULL,'[:en-us]Fishing[:zh-cn]垂钓','','',0,57,2,3,0,NULL,1,0,0),(88,0,0,NULL,'[:en-us]Chess[:zh-cn]棋牌','','',0,57,2,3,0,NULL,1,0,0),(89,0,0,NULL,'[:en-us]Snacks[:zh-cn]零食','','',0,58,2,3,0,NULL,1,0,0),(90,0,0,NULL,'[:en-us]Candy[:zh-cn]糖果','','',0,58,2,3,0,NULL,1,0,0),(91,0,0,NULL,'[:en-us]Confiture[:zh-cn]蜜饯','','',0,58,2,3,0,NULL,1,0,0),(92,0,0,NULL,'[:en-us]Drinks[:zh-cn]饮料','','',0,58,2,3,0,NULL,1,0,0),(93,0,0,NULL,'[:en-us]Tea[:zh-cn]茶叶','','',0,58,2,3,0,NULL,1,0,0),(94,0,0,NULL,'[:en-us]Small appliances[:zh-cn]小家电','','',0,59,2,3,0,NULL,1,0,0),(95,0,0,NULL,'[:en-us]Water heater[:zh-cn]热水器','','',0,59,2,3,0,NULL,1,0,0),(96,0,0,NULL,'[:en-us]Washing machine[:zh-cn]洗衣机','','',0,59,2,3,0,NULL,1,0,0),(97,0,0,NULL,'[:en-us]TV[:zh-cn]电视','','',0,59,2,3,0,NULL,1,0,0),(98,0,0,NULL,'[:en-us]MP3[:zh-cn]MP3','','',0,60,2,3,0,NULL,1,0,0),(99,0,0,NULL,'[:en-us]U disk[:zh-cn]U盘','','',0,60,2,3,0,NULL,1,0,0),(100,0,0,NULL,'[:en-us]Notebook[:zh-cn]笔记本','','',0,60,2,3,0,NULL,1,0,0),(101,0,0,NULL,'[:en-us]Digital cameras[:zh-cn]数码相机','','',0,60,2,3,0,NULL,1,0,0),(102,0,0,NULL,'[:en-us]Mobile[:zh-cn]手机','','',0,61,2,3,0,NULL,1,0,0),(103,0,0,NULL,'[:en-us]Nokia[:zh-cn]诺基亚','','',0,61,2,3,0,NULL,1,0,0),(104,0,0,NULL,'[:en-us]Samsung[:zh-cn]三星','','',0,61,2,3,0,NULL,1,0,0),(105,0,0,NULL,'[:en-us]Sony Ericsson[:zh-cn]索爱','','',0,61,2,3,0,NULL,1,0,0),(106,0,0,NULL,'[:en-us]Electronic[:zh-cn]电子','','',0,3,3,2,0,NULL,1,0,0),(107,0,0,NULL,'[:en-us]Industry equipment[:zh-cn]行业设备','','',0,3,3,2,0,NULL,1,0,0),(108,0,0,NULL,'[:en-us]Hardware[:zh-cn]五金','','',0,3,3,2,0,NULL,1,0,0),(109,0,0,NULL,'[:en-us]Mechanical[:zh-cn]机械','','',0,3,3,2,0,NULL,1,0,0),(110,0,0,NULL,'[:en-us]Machining[:zh-cn]机加工','','',0,3,3,2,0,NULL,1,0,0),(111,0,0,NULL,'[:en-us]Electrician[:zh-cn]电工','','',0,3,3,2,0,NULL,1,0,0),(112,0,0,NULL,'[:en-us]Car[:zh-cn]汽车','','',0,3,3,2,0,NULL,1,0,0),(113,0,0,NULL,'[:en-us]Security[:zh-cn]安防','','',0,3,3,2,0,NULL,1,0,0),(114,0,0,NULL,'[:en-us]Bearing[:zh-cn]轴承','','',0,114,3,3,0,NULL,1,0,0),(115,0,0,NULL,'[:en-us]Valve[:zh-cn]阀门','','',0,114,3,3,0,NULL,1,0,0),(116,0,0,NULL,'[:en-us]Mold[:zh-cn]模具','','',0,114,3,3,0,NULL,1,0,0),(117,0,0,NULL,'[:en-us]Tool fixture[:zh-cn]刀具夹具','','',0,114,3,3,0,NULL,1,0,0),(118,0,0,NULL,'[:en-us]Pump[:zh-cn]泵','','',0,114,3,3,0,NULL,1,0,0),(119,0,0,NULL,'[:en-us]Fastener[:zh-cn]紧固件','','',0,115,3,3,0,NULL,1,0,0),(120,0,0,NULL,'[:en-us]Hardware[:zh-cn]五金件','','',0,115,3,3,0,NULL,1,0,0),(121,0,0,NULL,'[:en-us]Faucet[:zh-cn]水龙头','','',0,115,3,3,0,NULL,1,0,0),(122,0,0,NULL,'[:en-us]Locks[:zh-cn]锁具','','',0,115,3,3,0,NULL,1,0,0),(123,0,0,NULL,'[:en-us]Construction Machinery[:zh-cn]工程机械','','',0,116,3,3,0,NULL,1,0,0),(124,0,0,NULL,'[:en-us]Food Machinery[:zh-cn]食品机械','','',0,116,3,3,0,NULL,1,0,0),(125,0,0,NULL,'[:en-us]Textile Machinery[:zh-cn]纺机','','',0,116,3,3,0,NULL,1,0,0),(126,0,0,NULL,'[:en-us]Instrumentation[:zh-cn]仪器仪表','','',0,117,3,3,0,NULL,1,0,0),(127,0,0,NULL,'[:en-us]LED[:zh-cn]LED设备','','',0,117,3,3,0,NULL,1,0,0),(128,0,0,NULL,'[:en-us]PCB[:zh-cn]PCB设备','','',0,117,3,3,0,NULL,1,0,0),(129,0,0,NULL,'[:en-us]Diode[:zh-cn]二极管','','',0,117,3,3,0,NULL,1,0,0),(130,0,0,NULL,'[:en-us]Sheet metal[:zh-cn]钣金加工','','',0,118,3,3,0,NULL,1,0,0),(131,0,0,NULL,'[:en-us]Laser[:zh-cn]激光加工','','',0,118,3,3,0,NULL,1,0,0),(132,0,0,NULL,'[:en-us]Stamping[:zh-cn]冲压','','',0,118,3,3,0,NULL,1,0,0),(133,0,0,NULL,'[:en-us]Battery[:zh-cn]电池','','',0,119,3,3,0,NULL,1,0,0),(134,0,0,NULL,'[:en-us]Switch[:zh-cn]开关','','',0,119,3,3,0,NULL,1,0,0),(135,0,0,NULL,'[:en-us]Wire and cable[:zh-cn]电线电缆','','',0,119,3,3,0,NULL,1,0,0),(136,0,0,NULL,'[:en-us]Generator[:zh-cn]发电机','','',0,119,3,3,0,NULL,1,0,0),(137,0,0,NULL,'[:en-us]Transportation[:zh-cn]交通运输','','',0,120,3,3,0,NULL,1,0,0),(138,0,0,NULL,'[:en-us]Interior[:zh-cn]内饰','','',0,120,3,3,0,NULL,1,0,0),(139,0,0,NULL,'[:en-us]Exterior[:zh-cn]外饰','','',0,120,3,3,0,NULL,1,0,0),(140,0,0,NULL,'[:en-us]Electric cars[:zh-cn]电动车','','',0,120,3,3,0,NULL,1,0,0),(141,0,0,NULL,'[:en-us]Monitoring system[:zh-cn]监控系统','','',0,121,3,3,0,NULL,1,0,0),(142,0,0,NULL,'[:en-us]Fire equipment[:zh-cn]消防器材','','',0,121,3,3,0,NULL,1,0,0),(143,0,0,NULL,'[:en-us]Used Equipment[:zh-cn]二手设备','','',0,121,3,3,0,NULL,1,0,0),(144,0,0,NULL,'[:en-us]Chemical industry[:zh-cn]化工','','',0,4,4,2,0,NULL,1,0,0),(145,0,0,NULL,'[:en-us]Fine Chemicals[:zh-cn]精细化学品','','',0,4,4,2,0,NULL,1,0,0),(146,0,0,NULL,'[:en-us]Rubber and Plastic[:zh-cn]橡塑','','',0,4,4,2,0,NULL,1,0,0),(147,0,0,NULL,'[:en-us]Building[:zh-cn]建筑','','',0,4,4,2,0,NULL,1,0,0),(148,0,0,NULL,'[:en-us]Medicine[:zh-cn]医药','','',0,4,4,2,0,NULL,1,0,0),(149,0,0,NULL,'[:en-us]Agriculture[:zh-cn]农业','','',0,4,4,2,0,NULL,1,0,0),(150,0,0,NULL,'[:en-us]Metallurgy[:zh-cn]冶金','','',0,4,4,2,0,NULL,1,0,0),(151,0,0,NULL,'[:en-us]Energy[:zh-cn]能源','','',0,4,4,2,0,NULL,1,0,0),(152,0,0,NULL,'[:en-us]Alcohols[:zh-cn]醇类','','',0,152,4,3,0,NULL,1,0,0),(153,0,0,NULL,'[:en-us]Hydrocarbon[:zh-cn]烃类','','',0,152,4,3,0,NULL,1,0,0),(154,0,0,NULL,'[:en-us]Inorganic salts[:zh-cn]无机盐','','',0,152,4,3,0,NULL,1,0,0),(155,0,0,NULL,'[:en-us]Synthetic resin[:zh-cn]合成树脂','','',0,152,4,3,0,NULL,1,0,0),(156,0,0,NULL,'[:en-us]Lubricating oil[:zh-cn]润滑油','','',0,153,4,3,0,NULL,1,0,0),(157,0,0,NULL,'[:en-us]Paints and coatings[:zh-cn]涂料油漆','','',0,153,4,3,0,NULL,1,0,0),(158,0,0,NULL,'[:en-us]Fertilizer[:zh-cn]化肥','','',0,153,4,3,0,NULL,1,0,0),(159,0,0,NULL,'[:en-us]General Plastics[:zh-cn]通用塑料','','',0,154,4,3,0,NULL,1,0,0),(160,0,0,NULL,'[:en-us]Engineering plastics[:zh-cn]工程塑料','','',0,154,4,3,0,NULL,1,0,0),(161,0,0,NULL,'[:en-us]Waste plastics[:zh-cn]废塑料','','',0,154,4,3,0,NULL,1,0,0),(162,0,0,NULL,'[:en-us]Fittings[:zh-cn]管件','','',0,155,4,3,0,NULL,1,0,0),(163,0,0,NULL,'[:en-us]Stone[:zh-cn]石材','','',0,155,4,3,0,NULL,1,0,0),(164,0,0,NULL,'[:en-us]Cement[:zh-cn]水泥','','',0,155,4,3,0,NULL,1,0,0),(165,0,0,NULL,'[:en-us]Refractory[:zh-cn]耐火材料','','',0,155,4,3,0,NULL,1,0,0),(166,0,0,NULL,'[:en-us]Health care products[:zh-cn]保健品','','',0,156,4,3,0,NULL,1,0,0),(167,0,0,NULL,'[:en-us]Pharmaceutical intermediates[:zh-cn]医药中间体','','',0,156,4,3,0,NULL,1,0,0),(168,0,0,NULL,'[:en-us]Medical equipment[:zh-cn]医疗设备','','',0,156,4,3,0,NULL,1,0,0),(169,0,0,NULL,'[:en-us]Special breeding[:zh-cn]特种养殖','','',0,157,4,3,0,NULL,1,0,0),(170,0,0,NULL,'[:en-us]Animal Husbandry[:zh-cn]畜牧','','',0,157,4,3,0,NULL,1,0,0),(171,0,0,NULL,'[:en-us]Aquatic[:zh-cn]水产品','','',0,157,4,3,0,NULL,1,0,0),(172,0,0,NULL,'[:en-us]Corn[:zh-cn]玉米','','',0,157,4,3,0,NULL,1,0,0),(173,0,0,NULL,'[:en-us]Steel[:zh-cn]钢材','','',0,158,4,3,0,NULL,1,0,0),(174,0,0,NULL,'[:en-us]Stainless steel[:zh-cn]不锈钢','','',0,158,4,3,0,NULL,1,0,0),(175,0,0,NULL,'[:en-us]Aluminum profile[:zh-cn]铝型材','','',0,158,4,3,0,NULL,1,0,0),(176,0,0,NULL,'[:en-us]Scrap metal[:zh-cn]废金属','','',0,158,4,3,0,NULL,1,0,0),(177,0,0,NULL,'[:en-us]Environmental protection[:zh-cn]环保','','',0,159,4,3,0,NULL,1,0,0),(178,0,0,NULL,'[:en-us]Natural gas[:zh-cn]天然气','','',0,159,4,3,0,NULL,1,0,0),(179,0,0,NULL,'[:en-us]Diesel fuel[:zh-cn]柴油','','',0,159,4,3,0,NULL,1,0,0),(180,0,0,NULL,'[:en-us]Anthracite[:zh-cn]无烟煤','','',0,159,4,3,0,NULL,1,0,0),(181,0,0,NULL,'[:en-us]Business Services[:zh-cn]商务服务','','',0,5,5,2,0,NULL,1,0,0),(182,0,0,NULL,'[:en-us]Logistics[:zh-cn]物流','','',0,5,5,2,0,NULL,1,0,0),(183,0,0,NULL,'[:en-us]Show network[:zh-cn]展会网','','',0,5,5,2,0,NULL,1,0,0),(184,0,0,NULL,'[:en-us]Advertising[:zh-cn]广告','','',0,5,5,2,0,NULL,1,0,0),(185,0,0,NULL,'[:en-us]Print[:zh-cn]印刷','','',0,5,5,2,0,NULL,1,0,0),(186,0,0,NULL,'[:en-us]Package[:zh-cn]包装','','',0,5,5,2,0,NULL,1,0,0),(187,0,0,NULL,'[:en-us]Recruitment[:zh-cn]招聘求职','','',0,189,5,3,0,NULL,1,0,0),(188,0,0,NULL,'[:en-us]Network part[:zh-cn]网络兼职','','',0,189,5,3,0,NULL,1,0,0),(189,0,0,NULL,'[:en-us]​​Sell[:zh-cn]销售','','',0,189,5,3,0,NULL,1,0,0),(190,0,0,NULL,'[:en-us]Domestic land[:zh-cn]国内陆运','','',0,190,5,3,0,NULL,1,0,0),(191,0,0,NULL,'[:en-us]International Chamber of Shipping[:zh-cn]国际海运','','',0,190,5,3,0,NULL,1,0,0),(192,0,0,NULL,'[:en-us]Import and export[:zh-cn]进出口','','',0,190,5,3,0,NULL,1,0,0),(193,0,0,NULL,'[:en-us]Fair[:zh-cn]广交会','','',0,191,5,3,0,NULL,1,0,0),(194,0,0,NULL,'[:en-us]Clothing exhibition[:zh-cn]服装展会','','',0,191,5,3,0,NULL,1,0,0),(195,0,0,NULL,'[:en-us]Gift Exhibition[:zh-cn]礼品展会','','',0,191,5,3,0,NULL,1,0,0),(196,0,0,NULL,'[:en-us]Graphic Design[:zh-cn]平面设计','','',0,192,5,3,0,NULL,1,0,0),(197,0,0,NULL,'[:en-us]Advertising agency[:zh-cn]广告代理','','',0,192,5,3,0,NULL,1,0,0),(198,0,0,NULL,'[:en-us]Advertising production[:zh-cn]广告制作','','',0,192,5,3,0,NULL,1,0,0),(199,0,0,NULL,'[:en-us]Paper printing[:zh-cn]纸类印刷','','',0,193,5,3,0,NULL,1,0,0),(200,0,0,NULL,'[:en-us]Special printing[:zh-cn]特种印刷','','',0,193,5,3,0,NULL,1,0,0),(201,0,0,NULL,'[:en-us]Heat transfer printing[:zh-cn]热转印','','',0,193,5,3,0,NULL,1,0,0),(202,0,0,NULL,'[:en-us]Plastic[:zh-cn]塑料制品','','',0,194,5,3,0,NULL,1,0,0),(203,0,0,NULL,'[:en-us]Glass products[:zh-cn]玻璃制品','','',0,194,5,3,0,NULL,1,0,0),(204,0,0,NULL,'[:en-us]Paper products[:zh-cn]纸制品','','',0,194,5,3,0,NULL,1,0,0),(205,0,0,NULL,'[:en-us]Virtual[:zh-cn]虚拟','','',0,0,0,1,0,NULL,1,0,0),(206,0,0,NULL,'[:en-us]Maternal and child[:zh-cn]母婴','','',0,0,0,1,0,NULL,1,0,0),(207,0,0,NULL,'[:en-us]Insurance[:zh-cn]保险','','',0,0,0,1,0,NULL,1,0,0),(208,0,0,NULL,'[:en-us]Recharge center[:zh-cn]充值中心','','',0,213,213,2,0,NULL,1,0,0),(209,0,0,NULL,'[:en-us]Online games[:zh-cn]网游','','',0,213,213,2,0,NULL,1,0,0),(210,0,0,NULL,'[:en-us]Lottery ticket[:zh-cn]彩票','','',0,213,213,2,0,NULL,1,0,0),(211,0,0,NULL,'[:en-us]IP card[:zh-cn]IP卡','','',0,213,213,2,0,NULL,1,0,0),(212,0,0,NULL,'[:en-us]Poing card[:zh-cn]点卡','','',0,213,213,2,0,NULL,1,0,0),(213,0,0,NULL,'[:en-us]lights[:zh-cn]机票','','',0,213,213,2,0,NULL,1,0,0),(214,0,0,NULL,'[:en-us]Calls[:zh-cn]话费','','',0,216,213,3,0,NULL,1,0,0),(215,0,0,NULL,'[:en-us]Mobile[:zh-cn]移动','','',0,216,213,3,0,NULL,1,0,0),(216,0,0,NULL,'[:en-us]Link[:zh-cn]联通','','',0,216,213,3,0,NULL,1,0,0),(217,0,0,NULL,'[:en-us]Telecommunications[:zh-cn]电信','','',0,216,213,3,0,NULL,1,0,0),(218,0,0,NULL,'[:en-us]Journey[:zh-cn]征途','','',0,217,213,3,0,NULL,1,0,0),(219,0,0,NULL,'[:en-us]Dragon 2[:zh-cn]天龙2','','',0,217,213,3,0,NULL,1,0,0),(220,0,0,NULL,'[:en-us]Fantasy Westward Journey[:zh-cn]梦幻西游','','',0,217,213,3,0,NULL,1,0,0),(221,0,0,NULL,'[:en-us]DNF[:zh-cn]DNF','','',0,217,213,3,0,NULL,1,0,0),(222,0,0,NULL,'[:en-us]Lotto[:zh-cn]大乐透','','',0,218,213,3,0,NULL,1,0,0),(223,0,0,NULL,'[:en-us]Rows of three[:zh-cn]排三','','',0,218,213,3,0,NULL,1,0,0),(224,0,0,NULL,'[:en-us]Color ball[:zh-cn]双色球','','',0,218,213,3,0,NULL,1,0,0),(225,0,0,NULL,'[:en-us]Lottery[:zh-cn]足彩','','',0,218,213,3,0,NULL,1,0,0),(226,0,0,NULL,'[:en-us]Internet telephony[:zh-cn]网络电话','','',0,219,213,3,0,NULL,1,0,0),(227,0,0,NULL,'[:en-us]Skype[:zh-cn]skype','','',0,219,213,3,0,NULL,1,0,0),(228,0,0,NULL,'[:en-us]Mobile Number[:zh-cn]手机号码','','',0,219,213,3,0,NULL,1,0,0),(229,0,0,NULL,'[:en-us]Warcraft[:zh-cn]魔兽','','',0,220,213,3,0,NULL,1,0,0),(230,0,0,NULL,'[:en-us]Shu door[:zh-cn]蜀门','','',0,220,213,3,0,NULL,1,0,0),(231,0,0,NULL,'[:en-us]Perfect World International[:zh-cn]完美国际','','',0,220,213,3,0,NULL,1,0,0),(232,0,0,NULL,'[:en-us]QQ[:zh-cn]QQ','','',0,220,213,3,0,NULL,1,0,0),(233,0,0,NULL,'[:en-us]Hotel[:zh-cn]酒店','','',0,221,213,3,0,NULL,1,0,0),(234,0,0,NULL,'[:en-us]Tickets[:zh-cn]门票','','',0,221,213,3,0,NULL,1,0,0),(235,0,0,NULL,'[:en-us]Inn features[:zh-cn]特色客栈','','',0,221,213,3,0,NULL,1,0,0),(236,0,0,NULL,'[:en-us]Travel[:zh-cn]旅游','','',0,221,213,3,0,NULL,1,0,0),(237,0,0,NULL,'[:en-us]Milk powder[:zh-cn]奶粉','','',0,214,214,2,0,NULL,1,0,0),(238,0,0,NULL,'[:en-us]Articles[:zh-cn]用品','','',0,214,214,2,0,NULL,1,0,0),(239,0,0,NULL,'[:en-us]Puzzle[:zh-cn]益智','','',0,214,214,2,0,NULL,1,0,0),(240,0,0,NULL,'[:en-us]Food supplement[:zh-cn]辅食','','',0,245,214,3,0,NULL,1,0,0),(241,0,0,NULL,'[:en-us]Nutrition[:zh-cn]营养','','',0,245,214,3,0,NULL,1,0,0),(242,0,0,NULL,'[:en-us]Mother care[:zh-cn]妈妈保健','','',0,245,214,3,0,NULL,1,0,0),(243,0,0,NULL,'[:en-us]Child health[:zh-cn]儿童保健','','',0,245,214,3,0,NULL,1,0,0),(244,0,0,NULL,'[:en-us]Diapers[:zh-cn]尿片','','',0,246,214,3,0,NULL,1,0,0),(245,0,0,NULL,'[:en-us]Sleeping bag[:zh-cn]睡袋','','',0,246,214,3,0,NULL,1,0,0),(246,0,0,NULL,'[:en-us]Personal care[:zh-cn]洗护','','',0,246,214,3,0,NULL,1,0,0),(247,0,0,NULL,'[:en-us]Feeding[:zh-cn]喂哺','','',0,246,214,3,0,NULL,1,0,0),(248,0,0,NULL,'[:en-us]Wipes[:zh-cn]湿巾','','',0,246,214,3,0,NULL,1,0,0),(249,0,0,NULL,'[:en-us]Toy[:zh-cn]玩具','','',0,247,214,3,0,NULL,1,0,0),(250,0,0,NULL,'[:en-us]Early Learning[:zh-cn]早教','','',0,247,214,3,0,NULL,1,0,0),(251,0,0,NULL,'[:en-us]Cart[:zh-cn]推车','','',0,247,214,3,0,NULL,1,0,0),(252,0,0,NULL,'[:en-us]Bed[:zh-cn]床','','',0,247,214,3,0,NULL,1,0,0),(253,0,0,NULL,'[:en-us]Outdoor[:zh-cn]户外','','',0,247,214,3,0,NULL,1,0,0),(254,0,0,NULL,'[:en-us]Casualty[:zh-cn]意外险','','',0,215,215,2,0,NULL,1,0,0),(255,0,0,NULL,'[:en-us]Insurance company[:zh-cn]保险公司','','',0,215,215,2,0,NULL,1,0,0),(256,0,0,NULL,'[:en-us]Characteristic[:zh-cn]特色','','',0,215,215,2,0,NULL,1,0,0),(257,0,0,NULL,'[:en-us]Traffic[:zh-cn]交通','','',0,262,215,3,0,NULL,1,0,0),(258,0,0,NULL,'[:en-us]Travel[:zh-cn]旅行','','',0,262,215,3,0,NULL,1,0,0),(259,0,0,NULL,'[:en-us]Accidental Medical[:zh-cn]意外医疗','','',0,262,215,3,0,NULL,1,0,0),(260,0,0,NULL,'[:en-us]Taikang[:zh-cn]泰康','','',0,263,215,3,0,NULL,1,0,0),(261,0,0,NULL,'[:en-us]Huatai[:zh-cn]华泰','','',0,263,215,3,0,NULL,1,0,0),(262,0,0,NULL,'[:en-us]Property & Casualty[:zh-cn]阳光产险','','',0,263,215,3,0,NULL,1,0,0),(263,0,0,NULL,'[:en-us]Life[:zh-cn]阳光人寿','','',0,263,215,3,0,NULL,1,0,0),(264,0,0,NULL,'[:en-us]Study abroad[:zh-cn]出国留学','','',0,264,215,3,0,NULL,1,0,0),(265,0,0,NULL,'[:en-us]Self-driving[:zh-cn]自驾车','','',0,264,215,3,0,NULL,1,0,0),(266,0,0,NULL,'[:en-us]Financial management[:zh-cn]家财','','',0,264,215,3,0,NULL,1,0,0);

/*Table structure for table `pb_industrytypes` */

DROP TABLE IF EXISTS `pb_industrytypes`;

CREATE TABLE `pb_industrytypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `pb_industrytypes` */

insert  into `pb_industrytypes`(`id`,`name`) values (1,'[:en-us]Industrial[:zh-cn]工业品'),(2,'[:en-us]Goods[:zh-cn]消费品'),(3,'[:en-us]Materials[:zh-cn]原材料'),(4,'[:en-us]Business[:zh-cn]商业服务'),(5,'[:en-us]Other[:zh-cn]其他');

/*Table structure for table `pb_inqueries` */

DROP TABLE IF EXISTS `pb_inqueries`;

CREATE TABLE `pb_inqueries` (
  `id` int(10) NOT NULL auto_increment,
  `to_member_id` int(10) default NULL,
  `to_company_id` int(10) default NULL,
  `title` varchar(50) NOT NULL default '',
  `content` text,
  `send_achive` tinyint(1) default NULL,
  `know_more` varchar(50) NOT NULL default '',
  `exp_quantity` varchar(15) NOT NULL default '',
  `exp_price` float(9,2) NOT NULL default '0.00',
  `contacts` text,
  `user_ip` varchar(11) default '',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_inqueries` */

/*Table structure for table `pb_jobs` */

DROP TABLE IF EXISTS `pb_jobs`;

CREATE TABLE `pb_jobs` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `cache_spacename` varchar(25) NOT NULL default '',
  `industry_id` smallint(6) NOT NULL default '0',
  `area_id` smallint(6) NOT NULL default '0',
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
  `jobtype_id` smallint(6) NOT NULL default '0',
  `expire_time` int(10) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_jobs` */

/*Table structure for table `pb_jobtypes` */

DROP TABLE IF EXISTS `pb_jobtypes`;

CREATE TABLE `pb_jobtypes` (
  `id` smallint(6) NOT NULL auto_increment,
  `parent_id` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_jobtypes` */

/*Table structure for table `pb_keywords` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_keywords` */

/*Table structure for table `pb_logs` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_logs` */

/*Table structure for table `pb_markets` */

DROP TABLE IF EXISTS `pb_markets`;

CREATE TABLE `pb_markets` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `main_business` varchar(255) NOT NULL default '',
  `content` text,
  `markettype_id` smallint(3) NOT NULL default '0',
  `area_id` smallint(6) NOT NULL default '0',
  `industry_id` smallint(6) NOT NULL default '0',
  `picture` varchar(50) NOT NULL default '',
  `ip_address` int(10) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `clicked` smallint(6) NOT NULL default '1',
  `if_commend` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `pb_markets` */

insert  into `pb_markets`(`id`,`name`,`main_business`,`content`,`markettype_id`,`area_id`,`industry_id`,`picture`,`ip_address`,`status`,`clicked`,`if_commend`,`created`,`modified`) values (5,'A product market','Information,software','',1,1,1,'sample/market/01.jpg',0,1,1,1,1361622118,0),(6,'A professional market','Information,software','',1,1,1,'sample/market/02.jpg',0,1,1,1,1361622118,0),(3,'China big market','Information,software','',1,1,1,'sample/market/03.jpg',0,1,1,1,1361622118,0),(4,'World market','Information,software','',1,1,1,'sample/market/04.jpg',0,1,1,1,1361622118,0),(1,'One world market','Information,software',NULL,0,1,1,'sample/market/05.jpg',0,0,1,0,0,0),(2,'An indian market','Information,software',NULL,0,1,1,'sample/market/06.jpg',0,0,1,0,0,0);

/*Table structure for table `pb_markettypes` */

DROP TABLE IF EXISTS `pb_markettypes`;

CREATE TABLE `pb_markettypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_markettypes` */

insert  into `pb_markettypes`(`id`,`name`,`display_order`) values (1,'Internal',0),(2,'External',0),(3,'Super',0);

/*Table structure for table `pb_membercaches` */

DROP TABLE IF EXISTS `pb_membercaches`;

CREATE TABLE `pb_membercaches` (
  `member_id` int(10) NOT NULL default '-1',
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_membercaches` */

/*Table structure for table `pb_memberfields` */

DROP TABLE IF EXISTS `pb_memberfields`;

CREATE TABLE `pb_memberfields` (
  `member_id` int(10) NOT NULL default '0',
  `today_logins` smallint(6) NOT NULL default '0',
  `total_logins` smallint(6) NOT NULL default '0',
  `area_id` smallint(6) NOT NULL default '0',
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
  `skype` varchar(50) NOT NULL default '',
  `address` varchar(50) NOT NULL default '',
  `zipcode` varchar(16) NOT NULL default '',
  `site_url` varchar(100) NOT NULL default '',
  `question` varchar(50) NOT NULL default '',
  `answer` varchar(50) NOT NULL default '',
  `reg_ip` varchar(25) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_memberfields` */

insert  into `pb_memberfields`(`member_id`,`today_logins`,`total_logins`,`area_id`,`first_name`,`last_name`,`gender`,`tel`,`fax`,`mobile`,`qq`,`msn`,`icq`,`yahoo`,`skype`,`address`,`zipcode`,`site_url`,`question`,`answer`,`reg_ip`) values (1,0,0,6,'Zhang','San',1,'','','','','','','','','','','','','',''),(2,0,0,0,'Li','Si',0,'','','','','','','','','','','','','','');

/*Table structure for table `pb_membergroups` */

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `pb_membergroups` */

insert  into `pb_membergroups`(`id`,`membertype_id`,`name`,`description`,`type`,`system`,`picture`,`point_max`,`point_min`,`max_offer`,`max_product`,`max_job`,`max_companynews`,`max_producttype`,`max_album`,`max_attach_size`,`max_size_perday`,`max_favorite`,`is_default`,`allow_offer`,`allow_market`,`allow_company`,`allow_product`,`allow_job`,`allow_companynews`,`allow_album`,`allow_space`,`default_live_time`,`after_live_time`,`exempt`,`created`,`modified`) values (1,1,'Associate','','system','private','informal.gif',0,-32767,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,2,0,0,1274002638),(2,1,'Formal','','system','private','formal.gif',32767,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,2,25,0,1274002638),(3,1,'Pending','Awaiting verification','special','private','special_checking.gif',0,0,0,0,0,0,3,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,0,0,1274002638),(4,1,'Forbidden','Block access to Web site','special','private','special_novisit.gif',0,0,0,0,0,0,3,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,0,0,1274002638),(5,1,'Embargo','Prohibit any of the information published in the Business Room','special','private','special_noperm.gif',0,0,0,0,0,0,3,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,0,0,1274002638),(6,1,'Prohibition of landing','Prohibition of Commercial Office Login','special','private','special_nologin.gif',0,0,0,0,0,0,3,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,0,0,1274002638),(7,1,'Individual Members','General Level Member','define','public','copper.gif',0,0,5,0,0,0,3,0,0,0,0,1,3,1,3,3,3,3,1,1,1,9,24,0,1274002638),(8,1,'Senior Individual Member','Senior Individual Member','define','public','silver.gif',0,0,0,0,0,0,3,0,0,0,0,0,1,1,1,1,1,1,1,1,2,6,25,0,1274002638),(9,1,'Ordinary Corporate Member','Member companies at this level generally','define','public','gold.gif',0,0,2,2,0,0,3,0,0,0,0,0,2,3,3,2,2,2,2,1,1,2,31,0,1274002638),(10,2,'VIP Corporate Membership','Senior Corporate Member','define','public','vip.gif',0,0,0,0,0,0,3,0,0,0,0,0,3,3,3,3,3,3,3,1,1,2,31,0,1274002638);

/*Table structure for table `pb_members` */

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
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_members` */

insert  into `pb_members`(`id`,`space_name`,`templet_id`,`username`,`userpass`,`email`,`points`,`credits`,`balance_amount`,`trusttype_ids`,`status`,`photo`,`membertype_id`,`membergroup_id`,`last_login`,`last_ip`,`service_start_date`,`service_end_date`,`office_redirect`,`created`,`modified`) values (1,'',0,'admin','21232f297a57a5a743894a0e4a801fc3','sahil_bwp@yahoo.com',0,0,0.00,'','1','',2,9,'0','0','0','0',0,'1361622111','1361622111'),(2,'athena',1,'athena','e10adc3949ba59abbe56e057f20f883e','administrator@host.com',81,80,0.00,'1,2','1','',2,9,'1293936472','2130706433','1293936472','1294022872',0,'1293936472','0');

/*Table structure for table `pb_membertypes` */

DROP TABLE IF EXISTS `pb_membertypes`;

CREATE TABLE `pb_membertypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `default_membergroup_id` smallint(3) NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_membertypes` */

insert  into `pb_membertypes`(`id`,`default_membergroup_id`,`name`,`description`) values (1,7,'Personal','Personal Member'),(2,9,'Company','Company Member'),(3,10,'Shop','Shoper');

/*Table structure for table `pb_messages` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_messages` */

/*Table structure for table `pb_metas` */

DROP TABLE IF EXISTS `pb_metas`;

CREATE TABLE `pb_metas` (
  `id` int(10) NOT NULL auto_increment,
  `object_id` int(10) NOT NULL default '0',
  `object_type` varchar(100) NOT NULL default '',
  `content` tinytext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_metas` */

/*Table structure for table `pb_navs` */

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `pb_navs` */

insert  into `pb_navs`(`id`,`parent_id`,`name`,`description`,`url`,`target`,`status`,`display_order`,`highlight`,`level`,`class_name`,`created`,`modified`) values (1,0,'Home','','index.php','_self',1,1,0,0,'',1361622118,0),(2,0,'Buy','','index.php?do=offer&action=lists&typeid=1&navid=2','_self',1,2,0,0,'',1361622118,1361622118),(3,0,'Sell','','index.php?do=offer&action=lists&typeid=2&navid=3','_self',1,3,0,0,'',1361622118,1361622118),(4,0,'Invest','','index.php?do=offer&action=invest','_self',1,5,0,0,'',1361622118,1361622118),(5,0,'Fair','','index.php?do=fair','_self',1,6,0,0,'',1361622118,1361622118),(6,0,'Quote','','index.php?do=market&action=quote','_self',1,8,0,0,'',1361622118,0),(7,0,'Market','','index.php?do=market','_self',1,9,0,0,'',1361622118,1361622118),(9,0,'Job','','index.php?do=job','_self',1,11,0,0,'',1361622118,1361622118),(10,0,'Brand','','index.php?do=brand','_self',1,7,0,0,'',1361622118,1361622118),(11,0,'Wholesale','','index.php?do=offer&action=wholesale','_self',1,4,0,0,'',1361622118,1361622118),(12,0,'Dict','Industry Dictionary','index.php?do=dict','_self',1,12,0,0,'',1361622118,1361622118);

/*Table structure for table `pb_newses` */

DROP TABLE IF EXISTS `pb_newses`;

CREATE TABLE `pb_newses` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` smallint(3) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
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
  `flag` tinyint(1) NOT NULL default '0',
  `require_membertype` varchar(15) NOT NULL default '0',
  `tag_ids` varchar(255) default '',
  `created` int(10) NOT NULL default '0',
  `create_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_time` date NOT NULL default '0000-00-00',
  `end_time` date NOT NULL default '0000-00-00',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `type_id` (`type_id`,`status`),
  KEY `type_id_2` (`type_id`,`status`),
  KEY `status` (`status`),
  KEY `picture` (`picture`,`status`),
  KEY `type_id_3` (`type_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `pb_newses` */

insert  into `pb_newses`(`id`,`type_id`,`type`,`industry_id`,`area_id`,`title`,`content`,`source`,`picture`,`if_focus`,`if_commend`,`highlight`,`clicked`,`status`,`flag`,`require_membertype`,`tag_ids`,`created`,`create_time`,`start_time`,`end_time`,`modified`) values (14,2,0,0,0,'Tear gas could be used to tame drunk drivers','','','sample/news/1.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(15,2,0,0,0,'China eyes fair treatment for its firms in US','','','sample/news/2.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(3,2,0,0,0,'France expels 14 Libyan diplomats','','','sample/news/3.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(4,2,0,0,0,'China punishes Unilever for price hike remarks','','','sample/news/4.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(5,2,0,0,0,'Pakistan warns US not to stage more raids','','','sample/news/5.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(6,2,0,0,0,'Rise of China top news of the century','','','sample/news/6.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(7,2,0,0,0,'2 Chinese sites may make World Heritage List','','','sample/news/7.jpg',0,0,0,123668,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(8,2,0,0,0,'US halts F-22 flights over system concerns','','','sample/news/8.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(9,1,0,0,0,'Paralyzed gymnast files harassment report','','','sample/news/9.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(10,1,0,0,0,'terfall festival flows in Guizhou','','','sample/news/10.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(11,1,0,0,0,'Red Cross pours 18.7b yuan into Sichuan','','','sample/news/11.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(12,1,0,0,0,'Paralyzed gymnast files harassment report','','','sample/news/12.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(2,1,0,0,0,'Officials in Chongqing become part-time farmers',NULL,'','sample/news/14.jpg',0,1,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(1,1,0,0,0,'Expert: AIDS-like disease is not just phobia','','','sample/news/14.jpg',0,1,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0),(13,5,0,0,0,'The Week: A weekly round-up of fun, funky news','','','sample/news/13.jpg',0,0,0,123,1,0,'0','',1361622118,'2011-01-02 02:47:28','0000-00-00','0000-00-00',0);

/*Table structure for table `pb_newstypes` */

DROP TABLE IF EXISTS `pb_newstypes`;

CREATE TABLE `pb_newstypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `level_id` tinyint(1) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '1',
  `parent_id` smallint(3) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `pb_newstypes` */

insert  into `pb_newstypes`(`id`,`name`,`level_id`,`status`,`parent_id`,`created`) values (1,'Multimedia',1,1,0,1361622118),(2,'Chinese Media',1,1,0,1361622118),(3,'Business',1,1,0,1361622118),(4,'Regional',1,1,0,1361622118),(5,'Opnion',1,1,0,1361622118),(6,'Entertainment',1,1,0,1361622118),(7,'Metro Beijing',1,1,0,1361622118),(8,'Life',1,1,0,1361622118);

/*Table structure for table `pb_ordergoods` */

DROP TABLE IF EXISTS `pb_ordergoods`;

CREATE TABLE `pb_ordergoods` (
  `goods_id` smallint(6) NOT NULL default '0',
  `order_id` smallint(6) unsigned zerofill NOT NULL default '000000',
  `trade_no` char(16) NOT NULL default '',
  `amount` smallint(3) NOT NULL default '1',
  PRIMARY KEY  (`goods_id`,`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_ordergoods` */

/*Table structure for table `pb_orders` */

DROP TABLE IF EXISTS `pb_orders`;

CREATE TABLE `pb_orders` (
  `id` smallint(6) unsigned zerofill NOT NULL auto_increment,
  `trade_no` char(16) NOT NULL default '',
  `member_id` int(10) NOT NULL default '-1',
  `anonymous` tinyint(1) NOT NULL default '0',
  `cache_username` varchar(25) NOT NULL default '',
  `total_price` float(9,2) NOT NULL default '0.00',
  `subject` varchar(100) NOT NULL default '',
  `content` text,
  `pay_status` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `pay_id` smallint(3) NOT NULL default '0',
  `pay_name` varchar(25) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_orders` */

/*Table structure for table `pb_passports` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_passports` */

/*Table structure for table `pb_payhistories` */

DROP TABLE IF EXISTS `pb_payhistories`;

CREATE TABLE `pb_payhistories` (
  `id` int(9) NOT NULL auto_increment,
  `member_id` int(9) NOT NULL default '-1',
  `trade_no` char(25) NOT NULL default '-1',
  `amount` float(7,2) NOT NULL default '0.00',
  `remain` float(7,2) NOT NULL default '0.00',
  `ip_address` varchar(15) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `one_trade_no` (`trade_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_payhistories` */

/*Table structure for table `pb_payments` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_payments` */

/*Table structure for table `pb_personals` */

DROP TABLE IF EXISTS `pb_personals`;

CREATE TABLE `pb_personals` (
  `member_id` int(10) NOT NULL default '-1',
  `resume_status` tinyint(1) NOT NULL default '0',
  `max_education` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_personals` */

/*Table structure for table `pb_plugins` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_plugins` */

/*Table structure for table `pb_pointlogs` */

DROP TABLE IF EXISTS `pb_pointlogs`;

CREATE TABLE `pb_pointlogs` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `action_name` varchar(25) NOT NULL default '',
  `points` smallint(3) NOT NULL default '0',
  `description` text,
  `ip_address` varchar(15) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_pointlogs` */

/*Table structure for table `pb_productcategories` */

DROP TABLE IF EXISTS `pb_productcategories`;

CREATE TABLE `pb_productcategories` (
  `id` smallint(6) NOT NULL auto_increment,
  `parent_id` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `pb_productcategories` */

insert  into `pb_productcategories`(`id`,`parent_id`,`level`,`name`,`display_order`) values (1,0,1,'ELECTRONIC ELEMENTS',0),(2,0,1,'Beauty Care',0),(3,0,1,'Medical Care',0),(4,0,1,'Instrumentation ',0),(5,0,1,'Household items ',0),(6,0,1,'Gifts Toys',0),(7,0,1,'Auto Parts',0),(8,0,1,'Iron and steel metallurgy',0),(9,0,1,'Packaging',0),(10,0,1,'Computer software',0),(11,1,2,'Insurance components',0),(12,1,2,'Semiconductor materials',0),(13,1,2,'Other electronic materials',0),(14,1,2,'Capacitors',0),(15,1,2,'Electronic Components',0);

/*Table structure for table `pb_productprices` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_productprices` */

/*Table structure for table `pb_products` */

DROP TABLE IF EXISTS `pb_products`;

CREATE TABLE `pb_products` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '0',
  `cache_companyname` varchar(100) NOT NULL default '',
  `sort_id` tinyint(1) NOT NULL default '1',
  `brand_id` smallint(6) NOT NULL default '0',
  `category_id` smallint(6) NOT NULL default '0',
  `industry_id` smallint(6) NOT NULL default '0',
  `country_id` smallint(6) NOT NULL default '0',
  `area_id` smallint(6) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `price` float(9,2) NOT NULL default '0.00',
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
  PRIMARY KEY  (`id`),
  KEY `picture` (`picture`,`status`,`state`),
  KEY `picture_2` (`picture`,`status`,`state`),
  KEY `picture_3` (`picture`,`status`,`state`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `pb_products` */

insert  into `pb_products`(`id`,`member_id`,`company_id`,`cache_companyname`,`sort_id`,`brand_id`,`category_id`,`industry_id`,`country_id`,`area_id`,`name`,`price`,`sn`,`spec`,`produce_area`,`packing_content`,`picture`,`content`,`producttype_id`,`status`,`state`,`ifnew`,`ifcommend`,`priority`,`tag_ids`,`clicked`,`formattribute_ids`,`created`,`modified`) values (1,1,1,'Ualink E-Commerce',0,0,0,5,0,1,'Rubber grommet',100.00,'','','','','sample/product/1.jpg','Feature This is kind of rubber grommet to use industrial and automotive field. Material : EPDM, NBR, Silicone, CR',1,1,1,0,1,0,'',10,NULL,1361622118,1361622118),(2,1,1,'Ualink E-Commerce',1,0,0,1,0,1,'Plastics parts',125.00,'','','','','sample/product/2.jpg','Feature This is kind of plastics parts to use industrial and automotive parts. Material : Nylon, PET, PPS',1,1,1,0,1,0,NULL,2,NULL,1361622118,1361622118),(3,1,1,'Ualink E-Commerce',1,0,0,1,0,1,'Interlocking Rubber Flooring',256.00,'','','','','sample/product/3.jpg','Product Description Interlocking tiles simply lock together for a quick and easy installation.',1,1,1,0,1,0,NULL,11,NULL,1361622118,1361622118),(4,1,1,'Ualink E-Commerce',1,0,0,1,0,1,'Sweep Movement',352.00,'','','','','sample/product/4.jpg','Product Name: Sweep Movement Size: 56x56x16. 2mm Weight: 22g Crystal Frequency: 32, 768KHz Accuracy: (A)+/- 0. 5',1,1,1,0,0,0,NULL,2,NULL,1361622118,1361622118),(5,1,1,'Ualink E-Commerce',1,0,0,1,0,1,'ASA Pocket Bike 206A with CE',145.00,'','','','','sample/product/5.jpg','206A Transmission chain Engine Type 49cc/47cc/40cc air cooling Starting Mode drawing rope Fuel Tank 0.81L Max.',2,1,1,0,0,0,NULL,2,NULL,1361622118,1361622118),(6,1,1,'Ualink E-Commerce',1,0,0,1,0,1,'Brand Sunglasses,Sunglass.Paypal Verified Member',255.00,'','','','','sample/product/6.jpg','We accept paypal, we are verified paypal member in US. We have agent located in USA to do after-sale service.',2,1,1,0,0,0,NULL,4,NULL,1361622118,1361622118),(7,1,1,'Ualink E-Commerce',1,0,0,1,0,1,'Double Sided Acrylic Foam Tape',6632.00,'','','','','sample/product/7.jpg','Description 1) Characteristic of Acrylic Foam Tape - Possible to strong bonding to adhere with some pressure. ',3,1,1,0,0,0,NULL,8,NULL,1361622118,1361622118);

/*Table structure for table `pb_productsorts` */

DROP TABLE IF EXISTS `pb_productsorts`;

CREATE TABLE `pb_productsorts` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_productsorts` */

insert  into `pb_productsorts`(`id`,`name`,`display_order`) values (1,'Newest Product',0),(2,'Stored Product',0),(3,'Common Product',0);

/*Table structure for table `pb_producttypes` */

DROP TABLE IF EXISTS `pb_producttypes`;

CREATE TABLE `pb_producttypes` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `company_id` int(10) NOT NULL default '-1',
  `name` varchar(25) NOT NULL default '',
  `level` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_producttypes` */

/*Table structure for table `pb_quotes` */

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
  `units` tinyint(1) NOT NULL default '1',
  `currency` tinyint(1) NOT NULL default '1',
  `trend_data` text NOT NULL,
  `hits` int(10) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `pb_quotes` */

insert  into `pb_quotes`(`id`,`product_id`,`market_id`,`type_id`,`title`,`content`,`area_id`,`area_id1`,`area_id2`,`area_id3`,`max_price`,`min_price`,`units`,`currency`,`trend_data`,`hits`,`created`,`modified`) values (1,1,-1,0,'Today, the International Cotton Indices(SM)','',0,0,0,0,100.00,90.00,1,1,'',4,1361622118,0),(2,1,-1,0,'A national cotton prices index A today','',0,0,0,0,150.00,100.00,1,1,'',1,1361622118,0),(3,1,-1,0,'A national cotton prices index B today','',0,0,0,0,210.00,120.00,1,1,'',1,1361622118,0),(4,1,-1,0,'Chinese cotton purchase price index today','',0,0,0,0,230.00,200.00,1,1,'',4,1361622118,0),(10,-1,-1,0,'Today, parts of the Market Price of soybean meal price','',0,0,0,0,0.00,0.00,1,1,'a:2:{s:1:\"x\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}s:1:\"y\";a:2:{i:0;s:3:\"150\";i:1;s:3:\"200\";}}',24,1361622118,1361622118);

/*Table structure for table `pb_quotetypes` */

DROP TABLE IF EXISTS `pb_quotetypes`;

CREATE TABLE `pb_quotetypes` (
  `id` smallint(6) NOT NULL auto_increment,
  `parent_id` smallint(6) NOT NULL default '0',
  `level` tinyint(1) NOT NULL default '1',
  `name` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_quotetypes` */

/*Table structure for table `pb_roleadminers` */

DROP TABLE IF EXISTS `pb_roleadminers`;

CREATE TABLE `pb_roleadminers` (
  `id` int(5) NOT NULL auto_increment,
  `adminrole_id` int(2) default NULL,
  `adminer_id` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_roleadminers` */

/*Table structure for table `pb_roleprivileges` */

DROP TABLE IF EXISTS `pb_roleprivileges`;

CREATE TABLE `pb_roleprivileges` (
  `id` int(5) NOT NULL auto_increment,
  `adminrole_id` int(2) default NULL,
  `adminprivilege_id` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_roleprivileges` */

/*Table structure for table `pb_services` */

DROP TABLE IF EXISTS `pb_services`;

CREATE TABLE `pb_services` (
  `id` smallint(6) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `title` varchar(25) NOT NULL default '',
  `content` text,
  `nick_name` varchar(25) default '',
  `email` varchar(25) NOT NULL default '',
  `user_ip` varchar(11) NOT NULL default '',
  `type_id` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  `revert_content` text,
  `revert_date` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_services` */

/*Table structure for table `pb_sessions` */

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_sessions` */

/*Table structure for table `pb_settings` */

DROP TABLE IF EXISTS `pb_settings`;

CREATE TABLE `pb_settings` (
  `id` smallint(3) NOT NULL auto_increment,
  `type_id` tinyint(1) NOT NULL default '0',
  `variable` varchar(150) NOT NULL default '',
  `valued` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `variable` (`variable`)
) ENGINE=MyISAM AUTO_INCREMENT=413 DEFAULT CHARSET=utf8;

/*Data for the table `pb_settings` */

insert  into `pb_settings`(`id`,`type_id`,`variable`,`valued`) values (407,0,'site_name',' E-Commerce System'),(408,0,'site_title',' E-Commerce - Powered By PHPB2B'),(350,0,'site_banner_word','The Professional B2B Online'),(4,0,'company_name','Copyright'),(410,0,'site_url','http://phpb2b-local:8080/'),(353,0,'icp_number','ICP Num.'),(7,0,'service_tel','(86)10-41235678'),(8,0,'sale_tel','(86)10-41235678'),(9,0,'service_qq','1319250566'),(10,0,'service_msn','service@host.com'),(11,0,'service_email','service@host.com'),(324,0,'site_description','<p>phpb2b description</p>'),(13,0,'cp_picture','0'),(14,0,'register_picture','0'),(15,0,'login_picture','0'),(16,0,'vispost_auth','1'),(17,0,'watermark','1'),(411,0,'watertext','http://phpb2b-local:8080/'),(19,0,'watercolor','#990000'),(20,0,'add_market_check','1'),(21,0,'regcheck','0'),(268,0,'vis_post','1'),(270,0,'vis_post_check','0'),(271,0,'sell_logincheck','1'),(272,0,'buy_logincheck','0'),(406,0,'install_dateline','1361622111'),(27,0,'last_backup','1361622118'),(28,0,'smtp_server','smtp.yourdomain.com'),(29,0,'smtp_port','25'),(30,0,'smtp_auth','1'),(31,0,'mail_from','administrator@host.com'),(32,0,'mail_fromwho','Administrator'),(33,0,'auth_username','administrator@host.com'),(34,0,'auth_password','password'),(35,0,'send_mail','2'),(36,0,'sendmail_silent','1'),(37,0,'mail_delimiter','0'),(360,0,'reg_filename','register.php'),(402,0,'new_userauth','0'),(361,0,'post_filename','post.php'),(41,0,'forbid_ip',''),(403,0,'ip_reg_sep','0'),(409,0,'backup_dir','fQXsy8'),(258,0,'capt_logging','0'),(259,0,'capt_register','1'),(260,0,'capt_post_free','0'),(261,0,'capt_add_market','0'),(262,0,'capt_login_admin','1'),(263,0,'capt_apply_friendlink','0'),(264,0,'capt_service','0'),(51,0,'backup_type','1'),(400,0,'register_type','open_common_reg'),(412,0,'auth_key','UnygA6fu1EPeMqNR'),(54,0,'keyword_bidding','0'),(201,0,'passport_support','0'),(351,0,'site_logo','images/logo.jpg'),(362,0,'main_cache','1'),(363,0,'member_cache','0'),(364,0,'space_cache','0'),(365,0,'label_cache','0'),(366,0,'main_cache_lifetime','3600'),(367,0,'main_cache_check','0'),(344,1,'update_alert_type','1'),(345,1,'update_alert_lasttime','1301549982'),(369,0,'theme','red'),(269,0,'tag_check','0'),(273,0,'session_savepath','0'),(274,1,'offer_expire_method','1'),(275,1,'offer_moderate_point','0'),(276,1,'offer_refresh_lower_day','3'),(277,1,'offer_update_lower_hour','24'),(278,1,'offer_filter','0'),(358,0,'redirect_url',''),(405,0,'languages','a:3:{s:5:\"en-us\";a:2:{s:5:\"title\";s:7:\"English\";s:3:\"img\";s:24:\"languages/en-us/icon.gif\";}s:5:\"zh-cn\";a:2:{s:5:\"title\";s:12:\"简体中文\";s:3:\"img\";s:24:\"languages/zh-cn/icon.gif\";}s:5:\"zh-tw\";a:1:{s:5:\"title\";s:12:\"繁體中文\";}}'),(346,0,'time_offset','0'),(347,0,'date_format','Y-m-d'),(401,0,'agreement','Demo'),(359,0,'space_name','Space'),(404,0,'welcome_msg','0');

/*Table structure for table `pb_spacecaches` */

DROP TABLE IF EXISTS `pb_spacecaches`;

CREATE TABLE `pb_spacecaches` (
  `cache_spacename` varchar(255) NOT NULL default '',
  `company_id` int(10) NOT NULL default '-1',
  `data1` text NOT NULL,
  `data2` text NOT NULL,
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`company_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_spacecaches` */

/*Table structure for table `pb_spacelinks` */

DROP TABLE IF EXISTS `pb_spacelinks`;

CREATE TABLE `pb_spacelinks` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `company_id` int(10) NOT NULL default '0',
  `display_order` smallint(3) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `is_outlink` tinyint(1) NOT NULL default '0',
  `description` varchar(100) NOT NULL default '',
  `logo` varchar(255) NOT NULL default '',
  `highlight` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_spacelinks` */

/*Table structure for table `pb_spreadadses` */

DROP TABLE IF EXISTS `pb_spreadadses`;

CREATE TABLE `pb_spreadadses` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `desc1` varchar(200) NOT NULL default '',
  `desc2` varchar(200) NOT NULL default '',
  `show_url` varchar(100) NOT NULL default '',
  `target_url` varchar(100) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_spreadadses` */

/*Table structure for table `pb_spreadadstypes` */

DROP TABLE IF EXISTS `pb_spreadadstypes`;

CREATE TABLE `pb_spreadadstypes` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `name` varchar(250) NOT NULL default '',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_spreadadstypes` */

/*Table structure for table `pb_spreads` */

DROP TABLE IF EXISTS `pb_spreads`;

CREATE TABLE `pb_spreads` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '-1',
  `keyword_name` varchar(25) NOT NULL default '',
  `title` varchar(50) NOT NULL default '',
  `content` varchar(200) NOT NULL default '',
  `target_url` varchar(100) NOT NULL default '',
  `hits` int(10) NOT NULL default '1',
  `status` tinyint(1) NOT NULL default '0',
  `expiration` int(10) NOT NULL default '0',
  `show_times` int(10) NOT NULL default '1',
  `cost_every_hit` float(7,2) NOT NULL default '0.00',
  `display_order` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `spread` (`id`,`keyword_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `pb_spreads` */

insert  into `pb_spreads`(`id`,`member_id`,`keyword_name`,`title`,`content`,`target_url`,`hits`,`status`,`expiration`,`show_times`,`cost_every_hit`,`display_order`,`created`) values (1,1,'Inc','Beijing Ualink E-Commerce Inc.','Although solid Sino-US economic and trade relations do not automatically mean good political ties, they serve as a buffer to serious clashes between the two countries','http://www.phpb2b.com',1,1,1364214118,1,0.00,0,1361622118);

/*Table structure for table `pb_standards` */

DROP TABLE IF EXISTS `pb_standards`;

CREATE TABLE `pb_standards` (
  `id` smallint(6) NOT NULL auto_increment,
  `attachment_id` smallint(6) NOT NULL default '0',
  `type_id` smallint(6) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `source` varchar(255) NOT NULL default '',
  `digest` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `publish_time` int(10) NOT NULL default '0',
  `force_time` int(10) NOT NULL default '0',
  `clicked` smallint(6) NOT NULL default '1',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `pb_standards` */

insert  into `pb_standards`(`id`,`attachment_id`,`type_id`,`title`,`source`,`digest`,`content`,`publish_time`,`force_time`,`clicked`,`created`,`modified`) values (7,0,2,'Help revolutionaries get rid of Gadafi.','','','',0,0,1,1361622118,0);

/*Table structure for table `pb_standardtypes` */

DROP TABLE IF EXISTS `pb_standardtypes`;

CREATE TABLE `pb_standardtypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_standardtypes` */

insert  into `pb_standardtypes`(`id`,`name`,`display_order`) values (1,'Administrative regulations',0),(2,'Safety Standards',0);

/*Table structure for table `pb_tags` */

DROP TABLE IF EXISTS `pb_tags`;

CREATE TABLE `pb_tags` (
  `id` int(10) NOT NULL auto_increment,
  `member_id` int(10) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `numbers` smallint(6) NOT NULL default '0',
  `closed` tinyint(1) NOT NULL default '0',
  `flag` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `title` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_tags` */

insert  into `pb_tags`(`id`,`member_id`,`name`,`numbers`,`closed`,`flag`,`created`,`modified`) values (1,0,'Hots',1,0,0,1361622118,1361622118),(2,0,'Search',2,0,1,1361622118,1361622118),(3,0,'Label',1,0,2,1361622118,1361622118);

/*Table structure for table `pb_templets` */

DROP TABLE IF EXISTS `pb_templets`;

CREATE TABLE `pb_templets` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(25) NOT NULL default '',
  `title` varchar(25) NOT NULL default '',
  `directory` varchar(100) NOT NULL default '',
  `type` enum('system','user') NOT NULL default 'system',
  `author` varchar(100) NOT NULL default '',
  `style` varchar(255) NOT NULL default '',
  `description` text,
  `is_default` tinyint(1) NOT NULL default '0',
  `require_membertype` varchar(100) NOT NULL default '0',
  `require_membergroups` varchar(100) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `pb_templets` */

insert  into `pb_templets`(`id`,`name`,`title`,`directory`,`type`,`author`,`style`,`description`,`is_default`,`require_membertype`,`require_membergroups`,`status`) values (3,'brown','Brown Space Skin','skins/brown/','user','PB TEAM','','A PHPB2B Corperate Templet. Enjoy!',0,'0','0',1),(4,'red','Red Space Skin','skins/red/','user','PB TEAM','','A PHPB2B Corperate Templet. Enjoy!',0,'0','0',1),(5,'default','Default Space Skin','skins/default/','user','PB TEAM','','A PHPB2B Corperate Templet. Enjoy!',0,'0','0',1),(7,'green','Green Space Skin','skins/green/','user','PB TEAM','','A PHPB2B Corperate Templet. Enjoy!',0,'0','0',1),(8,'orange','Orange Space Skin','skins/orange/','user','PB TEAM','','A PHPB2B Corperate Templet. Enjoy!',0,'0','0',1),(12,'default','Default Site Templet','templates/default/','system','PB TEAM','#4DB5F8','A Ualink Default Template. Enjoy!',0,'0','0',1);

/*Table structure for table `pb_topicnews` */

DROP TABLE IF EXISTS `pb_topicnews`;

CREATE TABLE `pb_topicnews` (
  `topic_id` smallint(6) NOT NULL default '0',
  `news_id` smallint(6) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_topicnews` */

/*Table structure for table `pb_topics` */

DROP TABLE IF EXISTS `pb_topics`;

CREATE TABLE `pb_topics` (
  `id` smallint(6) NOT NULL auto_increment,
  `alias_name` varchar(100) NOT NULL default '',
  `templet` varchar(100) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `picture` varchar(255) NOT NULL default '',
  `description` text,
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pb_topics` */

insert  into `pb_topics`(`id`,`alias_name`,`templet`,`title`,`picture`,`description`,`created`,`modified`) values (1,'test1','test1','London 2012','sample/topic/1.jpg','',1361622118,0),(2,'test2','','Ipad3 Released','sample/topic/2.jpg','',1361622118,0),(3,'test3','','China import and export fair','sample/topic/3.jpg','',1361622118,0);

/*Table structure for table `pb_tradefields` */

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
  `brand_name` char(50) NOT NULL default '',
  `template` char(50) NOT NULL default '',
  PRIMARY KEY  (`trade_id`),
  UNIQUE KEY `trade_id` (`trade_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_tradefields` */

/*Table structure for table `pb_trades` */

DROP TABLE IF EXISTS `pb_trades`;

CREATE TABLE `pb_trades` (
  `id` int(10) NOT NULL auto_increment,
  `type_id` tinyint(2) NOT NULL default '0',
  `industry_id` smallint(6) NOT NULL default '0',
  `country_id` smallint(6) NOT NULL default '0',
  `area_id` smallint(6) NOT NULL default '0',
  `member_id` int(10) NOT NULL default '0',
  `company_id` int(5) NOT NULL default '0',
  `cache_username` varchar(25) NOT NULL default '',
  `cache_companyname` varchar(100) NOT NULL default '',
  `cache_contacts` varchar(255) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `adwords` varchar(125) NOT NULL default '',
  `content` text,
  `price` float(9,2) NOT NULL default '0.00',
  `measuring_unit` varchar(15) NOT NULL default '0',
  `monetary_unit` varchar(15) NOT NULL default '0',
  `packing` varchar(150) NOT NULL default '',
  `quantity` varchar(25) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  `display_expiration` int(10) NOT NULL default '0',
  `spec` varchar(200) NOT NULL default '',
  `sn` varchar(25) NOT NULL default '',
  `picture` varchar(50) NOT NULL default '',
  `picture_remote` varchar(50) NOT NULL default '',
  `status` tinyint(2) NOT NULL default '0',
  `submit_time` int(10) NOT NULL default '0',
  `expire_time` int(10) NOT NULL default '0',
  `expire_days` int(3) NOT NULL default '10',
  `if_commend` tinyint(1) NOT NULL default '0',
  `if_urgent` enum('0','1') NOT NULL default '0',
  `if_locked` enum('0','1') NOT NULL default '0',
  `require_point` smallint(6) NOT NULL default '0',
  `require_membertype` smallint(6) NOT NULL default '0',
  `require_freedate` int(10) NOT NULL default '0',
  `ip_addr` varchar(15) NOT NULL default '',
  `clicked` int(10) NOT NULL default '1',
  `tag_ids` varchar(255) NOT NULL default '',
  `formattribute_ids` text,
  `highlight` tinyint(2) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `type_id` (`type_id`,`picture`,`status`,`expire_time`),
  KEY `type_id_2` (`type_id`,`picture`,`status`,`expire_time`),
  KEY `type_id_3` (`type_id`,`status`),
  KEY `type_id_4` (`type_id`,`status`,`expire_time`),
  KEY `type_id_5` (`type_id`,`picture`,`status`,`expire_time`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

/*Data for the table `pb_trades` */

insert  into `pb_trades`(`id`,`type_id`,`industry_id`,`country_id`,`area_id`,`member_id`,`company_id`,`cache_username`,`cache_companyname`,`cache_contacts`,`title`,`adwords`,`content`,`price`,`measuring_unit`,`monetary_unit`,`packing`,`quantity`,`display_order`,`display_expiration`,`spec`,`sn`,`picture`,`picture_remote`,`status`,`submit_time`,`expire_time`,`expire_days`,`if_commend`,`if_urgent`,`if_locked`,`require_point`,`require_membertype`,`require_freedate`,`ip_addr`,`clicked`,`tag_ids`,`formattribute_ids`,`highlight`,`created`,`modified`) values (1,1,1,0,0,1,13,'','','','Buy Wood Sawing Machines ','Mark Board','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/1.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',4,'',NULL,0,1361622118,1361622118),(2,1,1,0,0,1,13,'','','','Buy Office Stationery','cork block','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/2.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',3,'',NULL,0,1361622118,1361622118),(3,1,1,0,0,1,13,'','','','Buy looking for gas motor bicycle kits electric bicycle kits','cork roll','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/3.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(4,1,1,0,0,1,13,'','','','Buy Apple Products','cork sheet','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/4.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',3,'',NULL,0,1361622118,1361622118),(5,1,1,0,0,1,13,'','','','Buy Used Steam Locomotive','600 ring','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/5.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(6,1,1,0,0,1,13,'','','','Buy Pig Iron','600/601 pipe','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/6.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',3,'',NULL,0,1361622118,1361622118),(7,1,1,0,0,1,13,'','','','Buy Agent Required for Complete Sourcing Project','BP connectors ','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/7.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(8,1,1,0,0,1,1,'','','','Buy Plastic Scrap','circular connectors','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/8.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(9,1,1,0,0,1,1,'','','','Buy Scrap','ODU connectors','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/9.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(10,1,1,0,0,1,1,'','','','Buy Looking for,Water Dispenser,Heater and LCD TV.','LEMO connectors','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/10.jpg','',1,1293936472,1294022872,10,1,'1','0',0,0,0,'',5,'',NULL,0,1361622118,1361622118),(11,1,1,0,0,1,1,'','','','Buy Iron Ore','ATS','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/11.jpg','',1,1293936472,1294022872,10,1,'0','0',0,0,0,'',3,'',NULL,0,1361622118,1361622118),(12,1,1,0,0,1,1,'','','','Buy Children Football Boot','Paralleling panel','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/12.jpg','',1,1294062132,1294062132,10,1,'0','0',0,0,0,'',3,'',NULL,0,1361622118,1361622118),(13,1,1,0,0,1,1,'','','','Sell Construction machinery engine','Mobile gen-set','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/13.jpg','',1,1294062132,1294062132,10,1,'0','0',0,0,0,'',4,'',NULL,0,1361622118,1361622118),(14,1,1,0,0,1,1,'','','','Sell Brazilian Frozen Meat','MARKING MACHINE','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/14.jpg','',1,1301194546,1302058546,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(15,2,1,0,0,1,1,'','','','Sell YC (YELLOW CORN/MAIZE)','GPS','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/1.jpg','',1,1294062132,1294062132,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(16,2,1,0,0,1,1,'','','','Sell Chicken and Chicken Parts','MP4 device','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/2.jpg','',1,1294062132,1294062132,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(17,2,1,0,0,1,1,'','','','Sell Roasted Coffee','spotlight','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/3.jpg','',1,1294062132,1294062132,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(18,2,1,0,0,1,13,'','','','Sell Cappuccino','Neon Tube','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/4.jpg','',1,1294062132,1294062132,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(19,2,1,0,0,1,1,'','','','Sell Brazilian Green Coffee','Warning Lihgt','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/5.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(20,2,1,0,0,1,1,'','','','Sell Brazilian and Indian Instant Coffee','fall lighting','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/6.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(21,2,1,0,0,1,1,'','','','Sell Brazilian and Indian Agglomerated Instant Coffee','Candle Light','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/7.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(22,2,1,0,0,1,1,'','','','Sell Brazilian and Indian Spray Dried ( Powder ) Instant Coffee','lighting','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/8.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',3,'',NULL,0,1361622118,1361622118),(23,2,1,0,0,1,1,'','','','Promotional Wooden Comb ','rain light','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/9.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(24,2,1,0,0,1,1,'','','','Sell Aida Arm Chairs ','Neon Tube','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/10.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(25,2,2,0,0,1,1,'','','','Vacuum Dehydrator For Emulsified','curvang machine','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/11.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(26,2,2,0,0,1,1,'','','','Samsung Cartridge Chips ','Bag Hanger','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/12.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(27,2,2,3,0,1,1,'','','','Sell Polarized Lens','Key Chain','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/13.jpg','',1,1303736195,1303736195,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(28,2,2,3,0,1,1,'','','','Buy Cattle Fence From','gasoline generator','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/14.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',7,'',NULL,0,1361622118,1361622118),(29,6,1,1,3,1,1,'','','','Sell JY-8830 Rechargeable Flashlight','Rechargeable Flashlight ','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/1.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',9,'3,4','5,6,7,8,9,10',0,1361622118,1361622118),(70,4,3,2,1,1,1,'','','','Sell JY-5530 Rechargeable Multi-purpose Fan','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/12.jpg','',0,1303736168,1303736168,10,0,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(71,4,3,2,1,1,1,'','','','Sell automatic block making machine','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/13.jpg','',0,1303736168,1303736168,10,0,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(30,6,1,1,3,1,1,'','','','Sell cement mixer','cement mixer','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/2.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(31,6,1,1,3,1,1,'','','','Sell bread packing machine','packing machine','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/3.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',1,'',NULL,51,1361622118,1361622118),(32,6,1,1,3,1,1,'','','','Sell oil filter','oil filter','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/4.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(33,6,2,1,3,1,1,'','','','Offer Expanded Graphite Gaskets','Graphite Gaskets','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/5.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',1,'',NULL,46,1361622118,1361622118),(34,6,2,1,2,1,1,'','','','Offer Oval Ring Joint Gasket','Joint Gasket','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/6.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(35,6,2,1,2,1,1,'','','','Offer Corrugated Gaskets','Corrugated Gaskets','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/7.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(36,6,2,1,2,1,1,'','','','Offer Copper Gaskets','Copper Gaskets','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/8.jpg','',1,1303736346,1304600346,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(37,6,3,1,2,1,1,'','','','Offer Spiral Wound Gaskets','Wound Gaskets','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/9.jpg','',1,0,0,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(38,6,3,1,1,1,1,'','','','Offer Rubber Gaskets','Rubber Gaskets','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/10.jpg','',1,0,0,10,1,'0','0',0,0,0,'',1,'',NULL,47,1361622118,1361622118),(39,6,3,1,1,1,1,'','','','Sell rhinestone','rhinestone','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/11.jpg','',1,0,0,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(40,6,3,1,1,1,1,'','','','glass hotfix rhinestone','hotfix rhinestone','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/12.jpg','',1,0,0,10,1,'0','0',0,0,0,'',1,'',NULL,47,1361622118,1361622118),(41,6,3,1,1,1,1,'','','','Offers of Fishing Tackles','Fishing Tackles','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/1/13.jpg','',1,0,0,10,1,'0','0',0,0,0,'',5,'',NULL,47,1361622118,1361622118),(42,4,1,1,3,1,1,'','','','the Kite pole','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/1.jpg','',1,0,0,10,1,'0','0',0,0,0,'',2,'',NULL,0,1361622118,1361622118),(43,4,1,1,3,1,1,'','','','the ski and walking pole ','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/2.jpg','',1,0,0,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(44,4,1,1,3,1,1,'','','','Olive Stick ','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/3.jpg','',1,0,0,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(45,4,1,1,3,1,1,'','','','MELAMINE MOLDING POWDER','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/4.jpg','',1,0,0,10,1,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(46,4,2,1,2,1,1,'','','','glass rhinestones','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/5.jpg','',1,1303736168,1303736168,10,1,'0','0',0,0,0,'',3,'',NULL,0,1361622118,1361622118),(47,4,2,1,2,1,1,'','','','CRYSTAL HOTFIX RHINESTONE','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/6.jpg','',1,1303736168,1303736168,10,1,'0','0',0,0,0,'',6,'',NULL,47,1361622118,1361622118),(48,4,2,1,2,1,1,'','','','Corner Guard','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/7.jpg','',1,1303736168,1303736168,10,1,'0','0',0,0,0,'',5,'',NULL,6,1361622118,1361622118),(49,4,2,1,2,1,1,'','','','Wall Guard','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/8.jpg','',1,1303736168,1303736168,10,1,'0','0',0,0,0,'',4,'',NULL,0,1361622118,1361622118),(50,4,3,2,1,1,1,'','','','Hospital Handrail,Handrails','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/9.jpg','',1,1303736168,1303736168,10,1,'0','0',0,0,0,'',5,'',NULL,51,1361622118,1361622118),(68,4,3,2,1,1,1,'','','','Brazilian Soft Drinks','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/10.jpg','',0,1303736168,1303736168,10,0,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118),(69,4,3,2,1,1,1,'','','','Sell Brazilian Fruit Juice','','This is the demo data, does not guarantee the authenticity of the data',1.23,'0','0','','',0,0,'','','sample/offer/2/11.jpg','',0,1303736168,1303736168,10,0,'0','0',0,0,0,'',1,'',NULL,0,1361622118,1361622118);

/*Table structure for table `pb_tradetypes` */

DROP TABLE IF EXISTS `pb_tradetypes`;

CREATE TABLE `pb_tradetypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `parent_id` smallint(3) NOT NULL default '0',
  `name` varchar(25) NOT NULL default '',
  `level` tinyint(1) NOT NULL default '1',
  `display_order` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `pb_tradetypes` */

insert  into `pb_tradetypes`(`id`,`parent_id`,`name`,`level`,`display_order`) values (1,0,'Buy',1,0),(2,0,'Sell',1,0),(3,0,'Agent',1,0),(4,3,'Ship',1,0),(5,0,'Commercial',1,0),(6,5,'Invest',1,0),(7,0,'Store',1,0),(8,7,'Stock',1,0),(9,1,'Internal',2,0),(10,1,'External',2,0),(11,7,'Wholesale',2,0),(12,3,'Agent',2,0),(13,5,'Investment ',2,0);

/*Table structure for table `pb_trustlogs` */

DROP TABLE IF EXISTS `pb_trustlogs`;

CREATE TABLE `pb_trustlogs` (
  `member_id` int(10) NOT NULL auto_increment,
  `trusttype_id` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_trustlogs` */

/*Table structure for table `pb_trusttypes` */

DROP TABLE IF EXISTS `pb_trusttypes`;

CREATE TABLE `pb_trusttypes` (
  `id` smallint(3) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `description` text,
  `image` varchar(255) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pb_trusttypes` */

insert  into `pb_trusttypes`(`id`,`name`,`description`,`image`,`display_order`,`status`) values (2,'Company',NULL,'company.gif',0,1),(1,'ID',NULL,'truename.gif',0,1);

/*Table structure for table `pb_typemodels` */

DROP TABLE IF EXISTS `pb_typemodels`;

CREATE TABLE `pb_typemodels` (
  `id` smallint(3) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `type_name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `pb_typemodels` */

insert  into `pb_typemodels`(`id`,`title`,`type_name`) values (1,'expiration time','offer_expire'),(2,'Type','manage_type'),(3,'major markets','main_market'),(4,'registered capital','reg_fund'),(5,'turnover','year_annual'),(6,'economy type','economic_type'),(7,'moderation status','check_status'),(8,'employees','employee_amount'),(9,'status','common_status'),(10,'the proposed type','service_type'),(11,'educational experience','education'),(12,'wages','salary'),(13,'the nature','work_type'),(14,'Job Title','position'),(15,'gender','gender'),(16,'Phone Type','phone_type'),(17,'instant messaging category','im_type'),(18,'option','common_option'),(19,'honorific','calls'),(20,'units','measuring'),(21,'currency','monetary'),(22,'quote type','price_type'),(23,'price trend','price_trends');

/*Table structure for table `pb_typeoptions` */

DROP TABLE IF EXISTS `pb_typeoptions`;

CREATE TABLE `pb_typeoptions` (
  `id` smallint(3) NOT NULL auto_increment,
  `typemodel_id` smallint(3) NOT NULL default '0',
  `option_value` varchar(50) NOT NULL default '',
  `option_label` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

/*Data for the table `pb_typeoptions` */

insert  into `pb_typeoptions`(`id`,`typemodel_id`,`option_value`,`option_label`) values (1,1,'10','10 days'),(2,1,'30','month'),(3,1,'90','three'),(4,1,'180','six'),(5,2,'1','production'),(6,2,'2','trade type'),(7,2,'3','service'),(8,2,'4','the Government or other agencies'),(9,3,'1','China'),(10,3,'2','Hong Kong, Macao and Taiwan'),(11,3,'3','North America'),(12,3,'4','South America'),(13,3,'5','Europe'),(14,3,'6','Asia'),(15,3,'7','Africa'),(16,3,'8','Oceania'),(17,3,'9','other market'),(18,4,'0','closed'),(19,4,'1','one hundred thousand yuan less'),(20,4,'2','RMB 10-30 million'),(21,4,'3','RMB 30-50 million'),(22,4,'4','RMB 50-100 million'),(23,4,'5','RMB 100-300 million'),(24,4,'6','RMB 300-500 million'),(25,4,'7','RMB 500-1,000 million'),(26,4,'8','million RMB 1000-5000'),(27,4,'9','more than RMB 50 million'),(28,4,'10','other'),(29,5,'1','RMB 10 million or less/year'),(30,5,'2','RMB 10-30 million/year'),(31,5,'3','RMB 30-50 million/year'),(32,5,'4','RMB 50-100 million/year'),(33,5,'5','RMB 100-300 million/year'),(34,5,'6','RMB 300-500 million/year'),(35,5,'7','RMB 500-1,000 million/year'),(36,5,'8','RMB 1000-5000 million/year'),(37,5,'9','more than 50 million RMB/year'),(38,5,'10','other'),(39,6,'1','state-owned enterprises'),(40,6,'2','collective enterprises'),(41,6,'3','Corporations'),(42,6,'4','joint venture'),(43,6,'5','limited liability company'),(44,6,'6','Corporation'),(45,6,'7','private'),(46,6,'8','individual enterprise'),(47,6,'9','non-profit organization'),(48,6,'10','other'),(49,7,'0','invalid'),(50,7,'1','effective'),(51,7,'2','awaiting approval'),(52,7,'3','audit is not passed'),(53,8,'1','5 less'),(54,8,'2','5-10 people'),(55,8,'3','11-50 people'),(56,8,'4','51-100 people'),(57,8,'5','101-500 persons'),(58,8,'6','501-1000 person'),(59,8,'7','1000 or more'),(60,10,'1','consultation'),(61,10,'2','proposal'),(62,10,'3','complaints'),(63,11,'0','other'),(64,11,'-1','not required'),(65,11,'-2','open'),(66,11,'1','Doctor'),(67,11,'2','Master'),(68,11,'3','undergraduate'),(69,11,'4','college'),(70,11,'5','secondary'),(71,11,'6','technical school'),(72,11,'7','high'),(73,11,'8','middle'),(74,11,'9','primary'),(75,12,'0','no choice'),(76,12,'-1','Interview'),(77,12,'1','1500 less'),(78,12,'2','1500-1999 RMB/month'),(79,12,'3','2000-2999 yuan/month'),(80,12,'4','3000-4999 yuan/month'),(81,12,'5','5000 above'),(82,13,'0','no choice'),(83,13,'1','full'),(84,13,'2','part-time'),(85,13,'3','provisional'),(86,13,'4','practice'),(87,13,'5','other'),(88,14,'0','no choice'),(89,14,'1','chairman, president and deputies'),(90,14,'2','the executive branch managers/executives'),(91,14,'3','technical manager/technical staff'),(92,14,'4','production manager/production staff'),(93,14,'5','marketing manager/marketing staff'),(94,14,'6,','purchasing department manager/procurement officer'),(95,14,'7','sales manager/sales'),(96,14,'8','other'),(97,15,'0','no choice'),(98,15,'1','Male'),(99,15,'2','Female'),(100,15,'-1','open'),(101,16,'1','mobile phone'),(102,16,'2','residential'),(103,16,'3','business phone'),(104,16,'4','other'),(105,17,'1','QQ'),(106,17,'2','ICQ'),(107,17,'3','MSN Messenger'),(108,17,'4','Yahoo Messenger'),(109,17,'5','Skype'),(110,17,'6','other'),(111,17,'0','no choice'),(112,16,'0','no choice'),(113,6,'0','no choice'),(114,9,'0','invalid'),(115,9,'1','effective'),(116,18,'0','no'),(117,18,'1','yes'),(118,19,'1','Mr.'),(119,19,'2','Ms.'),(120,20,'1','single'),(121,20,'2','pieces'),(122,21,'1','element'),(123,21,'3','USD'),(124,22,'1','buy'),(125,22,'2','sell'),(126,23,'1','up'),(127,23,'2','stable'),(128,23,'3','down'),(129,23,'4','uncertain'),(130,21,'2','million');

/*Table structure for table `pb_userpages` */

DROP TABLE IF EXISTS `pb_userpages`;

CREATE TABLE `pb_userpages` (
  `id` int(5) NOT NULL auto_increment,
  `templet_name` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `title` varchar(50) NOT NULL default '',
  `digest` varchar(50) NOT NULL default '',
  `content` text,
  `url` varchar(100) NOT NULL default '',
  `display_order` tinyint(1) NOT NULL default '0',
  `created` int(10) NOT NULL default '0',
  `modified` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `pb_userpages` */

insert  into `pb_userpages`(`id`,`templet_name`,`name`,`title`,`digest`,`content`,`url`,`display_order`,`created`,`modified`) values (1,'','aboutus','About Us','','','',0,1361622118,1361622118),(2,'','contactus','Contacts','','','',0,1361622118,1361622118),(4,'','sitemap','Sitemap','','','',0,1361622118,1361622118),(5,'','legal','Agreement','','','',0,1361622118,0),(6,'','friendlink','Links','','','index.php?do=friendlink',0,1361622118,0),(7,'','help','Helps','','','index.php?do=help',0,1361622118,1361622118),(8,'','service','Service','','','',0,1361622118,1361622118),(9,'','special','Special','','','index.php?do=topic',0,1361622118,1361622118),(10,'','wap','WAP','Wap','','index.php?do=wap',0,1361622118,1361622118);

/*Table structure for table `pb_visitlogs` */

DROP TABLE IF EXISTS `pb_visitlogs`;

CREATE TABLE `pb_visitlogs` (
  `id` smallint(6) NOT NULL auto_increment,
  `salt` varchar(32) NOT NULL default '',
  `date_line` varchar(15) NOT NULL default '',
  `type_name` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `salt` (`salt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_visitlogs` */

/*Table structure for table `pb_words` */

DROP TABLE IF EXISTS `pb_words`;

CREATE TABLE `pb_words` (
  `id` smallint(6) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `replace_to` varchar(50) NOT NULL default '',
  `expiration` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `word` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pb_words` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
