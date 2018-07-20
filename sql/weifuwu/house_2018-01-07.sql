# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.25-log)
# Database: house
# Generation Time: 2018-01-06 17:35:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(11) NOT NULL DEFAULT '' COMMENT '城市名称',
  `city_code` varchar(10) NOT NULL DEFAULT '' COMMENT '城市编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;

INSERT INTO `city` (`id`, `city_name`, `city_code`)
VALUES
	(1,'北京市','110000');

/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table community
# ------------------------------------------------------------

DROP TABLE IF EXISTS `community`;

CREATE TABLE `community` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city_code` varchar(11) NOT NULL DEFAULT '' COMMENT '城市编码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '小区名称',
  `city_name` varchar(11) NOT NULL DEFAULT '' COMMENT '城市名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;

INSERT INTO `community` (`id`, `city_code`, `name`, `city_name`)
VALUES
	(1,'110000','西山华府','北京市'),
	(2,'110000','万柳书苑','北京市'),
	(3,'110000','太阳公元','北京市'),
	(4,'110000','橡树湾','北京市'),
	(5,'110000','阳光丽景','北京市'),
	(6,'110000','紫苑华府','北京市'),
	(7,'110000','北街嘉园','北京市');

/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table house
# ------------------------------------------------------------

DROP TABLE IF EXISTS `house`;

CREATE TABLE `house` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '房产名称',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:销售，2:出租',
  `price` int(11) NOT NULL COMMENT '单元元',
  `images` varchar(1024) NOT NULL DEFAULT '' COMMENT '图片地址',
  `area` int(11) NOT NULL DEFAULT '0' COMMENT '面积',
  `beds` int(11) NOT NULL DEFAULT '0' COMMENT '卧室数量',
  `baths` int(11) NOT NULL DEFAULT '0' COMMENT '卫生间数量',
  `rating` double NOT NULL DEFAULT '0' COMMENT '评级',
  `remarks` varchar(512) NOT NULL DEFAULT '' COMMENT '房产描述',
  `properties` varchar(512) NOT NULL DEFAULT '' COMMENT '属性',
  `floor_plan` varchar(250) NOT NULL DEFAULT '' COMMENT '户型图',
  `tags` varchar(20) NOT NULL DEFAULT '' COMMENT '标签',
  `create_time` date NOT NULL COMMENT '创建时间',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市名称',
  `community_id` int(11) NOT NULL DEFAULT '0' COMMENT '小区名称',
  `address` varchar(20) NOT NULL DEFAULT '' COMMENT '房产地址',
  `state` tinyint(1) DEFAULT '1' COMMENT '1-上架，2-下架',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;

INSERT INTO `house` (`id`, `name`, `type`, `price`, `images`, `area`, `beds`, `baths`, `rating`, `remarks`, `properties`, `floor_plan`, `tags`, `create_time`, `city_id`, `community_id`, `address`, `state`)
VALUES
	(22,'西山华府 120平',1,600,'/1493370993/property-07.jpg,/1493370999/property-08.jpg',120,2,12,5,'西山华府 120平西山华府 120平西山华府 120平西山华府 120平西山华府 120平','得房率高,户型好,落地窗','','','2017-04-28',1,1,'西山华府',1),
	(23,'万柳书苑 180平 南北通透',1,800,'/1493381459/property-detail-01.jpg,/1493381460/property-detail-02.jpg,/1493381462/property-detail-03.jpg',120,2,2,5,'万柳书苑 180平 南北通透','满五年,采光好,价格合理,税少,学区房','','','2017-04-28',1,2,'清河中街',1),
	(24,'阳光丽景 三面采光 高楼层',1,140,'/1493432771/property-11.jpg,/1493432771/property-12.jpg,/1493432771/property-13.jpg',140,2,2,4,'阳光丽景 三面采光 高楼层','南北通透,环境好,带阳台','/1493432771/floor-plan-01.jpg,/1493432771/floor-plan-02.jpg','','2017-04-29',1,5,'西城区',1),
	(25,'橡树湾 南北通透 三居室',2,800,'/1494256315/property-12.jpg,/1494256315/property-13.jpg',130,2,2,0,'橡树湾 南北通透橡树湾 南北通透橡树湾 南北通透橡树湾 南北通透','得房率高,临地铁,户型好,没有遮挡,落地窗,精装修','/1494256315/floor-plan-01.jpg,/1494256315/floor-plan-02.jpg','','2017-05-08',1,4,'清河中街',1),
	(26,'中央广场3层大四居',1,500,'/1500801115/property-09.jpg,/1500801115/property-10.jpg,/1500801115/property-11.jpg',400,3,3,0,'中央广场3层大四居豪华装修','满五年,满两年,采光好,高楼层,环境好,价格合理,楼龄新,带阳台,税少,得房率高,临地铁','','','2018-01-06',1,3,'中北后海面一号',1),
	(27,'北街嘉园 全南向 南北通透',1,300,'/1515253220/property-13.jpg,/1515253220/property-12.jpg,/1515253220/property-11.jpg',299,3,3,0,'北街嘉园 全南向 南北通透','满两年,南北通透,高楼层,环境好,楼龄新,带阳台,得房率高,临地铁','/1515253246/floor-plan-01.jpg','','2018-01-06',1,7,'清河中街',1);

/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table house_msg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `house_msg`;

CREATE TABLE `house_msg` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(512) NOT NULL DEFAULT '' COMMENT '消息',
  `create_time` date NOT NULL COMMENT '创建时间',
  `agent_id` bigint(20) NOT NULL COMMENT '经纪人id',
  `house_id` bigint(20) NOT NULL COMMENT '房屋id',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `house_msg` WRITE;
/*!40000 ALTER TABLE `house_msg` DISABLE KEYS */;

INSERT INTO `house_msg` (`id`, `msg`, `create_time`, `agent_id`, `house_id`, `user_name`)
VALUES
	(12,'11','2017-05-08',7,24,'11'),
	(13,'111','2017-05-08',7,24,'111'),
	(14,'111','2018-01-06',7,23,'11');

/*!40000 ALTER TABLE `house_msg` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table house_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `house_user`;

CREATE TABLE `house_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` bigint(20) NOT NULL COMMENT '房屋id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `create_time` date NOT NULL COMMENT '创建时间',
  `type` tinyint(1) NOT NULL COMMENT '1-售卖，2-收藏',
  PRIMARY KEY (`id`),
  UNIQUE KEY `house_id_user_id_type` (`house_id`,`user_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `house_user` WRITE;
/*!40000 ALTER TABLE `house_user` DISABLE KEYS */;

INSERT INTO `house_user` (`id`, `house_id`, `user_id`, `create_time`, `type`)
VALUES
	(1,11,7,'2017-02-26',1),
	(2,12,7,'2017-02-26',1),
	(5,15,7,'2017-02-26',2),
	(7,16,7,'2017-03-21',2),
	(8,14,7,'2017-04-05',1),
	(9,14,7,'2017-04-10',2),
	(10,17,7,'2017-04-22',2),
	(11,18,7,'2017-04-28',1),
	(12,19,7,'2017-04-28',1),
	(13,20,7,'2017-04-28',1),
	(14,22,7,'2017-04-28',1),
	(16,23,7,'2017-04-28',1),
	(17,24,7,'2017-04-29',1),
	(18,24,14,'2017-04-29',2),
	(20,24,7,'2017-05-08',2),
	(21,23,7,'2017-05-08',2),
	(22,25,25,'2017-05-08',1),
	(23,23,38,'2018-01-06',2),
	(24,24,38,'2018-01-06',2),
	(25,25,38,'2018-01-06',2),
	(26,26,38,'2018-01-06',1),
	(27,27,38,'2018-01-06',1);

/*!40000 ALTER TABLE `house_user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
