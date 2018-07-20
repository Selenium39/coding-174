# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.25-log)
# Database: user
# Generation Time: 2018-01-06 17:35:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table agency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `agency`;

CREATE TABLE `agency` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '经纪机构名称',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  `phone` varchar(30) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `about_us` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '电话',
  `web_site` varchar(20) NOT NULL DEFAULT '' COMMENT '网站',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;

INSERT INTO `agency` (`id`, `name`, `address`, `phone`, `email`, `about_us`, `mobile`, `web_site`)
VALUES
	(1,'恋家','恋家地址','010-89898989','010@gmail.com','1','1','1'),
	(2,'交点房产','交点房产地址','010-87898989','020@gmail.com','1','1','1'),
	(3,'唛田','唛田地址','010-88898989','030@gmail.com','1','1','1'),
	(4,'安聚客','安聚客地址','010-81898989','040@gmail.com','1','1','1');

/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table agent_msg
# ------------------------------------------------------------

DROP TABLE IF EXISTS `agent_msg`;

CREATE TABLE `agent_msg` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(512) NOT NULL DEFAULT '' COMMENT '消息',
  `create_time` date NOT NULL COMMENT '创建时间',
  `agent_id` bigint(20) NOT NULL COMMENT '经纪人id',
  `house_id` bigint(20) NOT NULL COMMENT '房屋id',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `agent_msg` WRITE;
/*!40000 ALTER TABLE `agent_msg` DISABLE KEYS */;

INSERT INTO `agent_msg` (`id`, `msg`, `create_time`, `agent_id`, `house_id`, `user_name`)
VALUES
	(1,'spring_boot@163.com','2017-02-12',13,5,'sadfasd'),
	(2,'d','2017-03-27',13,9,'111'),
	(3,'1','2017-04-29',7,24,'11');

/*!40000 ALTER TABLE `agent_msg` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` char(13) NOT NULL DEFAULT '' COMMENT '手机号',
  `email` varchar(90) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `aboutme` varchar(250) NOT NULL DEFAULT '' COMMENT '自我介绍',
  `passwd` varchar(512) NOT NULL DEFAULT '' COMMENT '加密密码',
  `avatar` varchar(512) NOT NULL DEFAULT '' COMMENT '头像图片',
  `type` tinyint(1) NOT NULL COMMENT '1:普通用户，2:房产经纪人',
  `create_time` date NOT NULL COMMENT '创建时间',
  `enable` tinyint(1) NOT NULL COMMENT '是否启用,1启用，0停用',
  `agency_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属经纪机构',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `aboutme`, `passwd`, `avatar`, `type`, `create_time`, `enable`, `agency_id`)
VALUES
	(7,'hello99','hello','spring_boot@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/4.jpg',2,'2017-01-31',1,1),
	(8,'hello1','hello','spring_boot2@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/1.jpg',2,'2017-01-31',1,1),
	(9,'hello2','hello','spring_boot3@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/2.jpg',2,'2017-01-31',1,1),
	(10,'hello3','hello','spring_boot4@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/3.jpg',2,'2017-01-31',1,1),
	(11,'hello4','hello','spring_boot5@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/4.jpg',2,'2017-01-31',1,1),
	(12,'hello5','hello','spring_boot6@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/5.jpg',2,'2017-01-31',1,1),
	(13,'hello6','hello','spring_boot7@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/6.jpg',2,'2017-01-31',1,1),
	(14,'张晶','18909090909','spring_boot8@163.com','张晶','75fb23b165249cedeb60544c4095ec99','/1493438523/7.jpg',2,'2017-04-29',1,0),
	(15,'王将军','18909090909','sin1ewy4@163.com','王将军','75fb23b165249cedeb60544c4095ec99','/1493439911/client-01.jpg',2,'2017-04-29',1,0),
	(20,'李四','18909090909','mooc_hello@163.com','李啊','75fb23b165249cedeb60544c4095ec99','/1493442257/member-03.jpg',1,'2017-04-29',1,0),
	(24,'刘大','18909090909','ugx1zl@163.com','刘大啊','75fb23b165249cedeb60544c4095ec99','/1493452900/client-01.jpg',1,'2017-04-29',1,0),
	(25,'1','18909090909','mooc_hello2@163.com','11111','75fb23b165249cedeb60544c4095ec99','/1494253659/agent-01.jpg',1,'2017-05-08',1,0),
	(38,'mooc_hello','12090909090','mooc_hello1@163.com','新用户111','3bf8013c27e39f2bb7060368bf5f6e49','/1514816998/client-01.jpg',1,'2018-01-01',1,0),
	(42,'王大治','12090909090','ganglihu@163.com','111111','3bf8013c27e39f2bb7060368bf5f6e49','/1515259075/agent-01.jpg',2,'2018-01-07',1,0);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
