# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.25-log)
# Database: houses
# Generation Time: 2018-01-06 17:34:38 +0000
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
  `mobile` varchar(100) NOT NULL DEFAULT '' COMMENT '电话',
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
	(4,'安聚客','安聚客地址','010-81898989','040@gmail.com','1','1','1'),
	(5,'链家房产','链家房产','12090909090','linke@163.com','链家房产','010-45674567','www.link.com');

/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tags` varchar(20) NOT NULL DEFAULT '' COMMENT '标签',
  `content` text NOT NULL COMMENT '内容',
  `create_time` date NOT NULL COMMENT '日期',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '标题',
  `cat` int(11) DEFAULT NULL COMMENT '分类1-准备买房，2-看房/选房，3-签约/定房，4-全款/贷款，5-缴税/过户，6-入住/交接，7-买房风险',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;

INSERT INTO `blog` (`id`, `tags`, `content`, `create_time`, `title`, `cat`)
VALUES
	(1,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL),
	(2,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL),
	(3,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL),
	(4,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL),
	(5,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL),
	(6,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL),
	(7,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL),
	(8,'a,b','<p>非京籍家庭在京买房需连续5年(含)以上在本市缴纳个人所得税或社保，在资质审核时，个税的审核标准为<strong>在京连续缴纳满60个月。</strong></p>\n<h1>一、个税需满足什么条件？</h1>\n<p>&nbsp;</p>\n<p>根据北京的限购政策，非京籍家庭连续5年(含)以上在京缴纳社会保险或个人所得税，限购1套住房。</p>\n<p>此前购房资格审核时关于工资、薪金纳税人纳税记录的认定，是5年期间，每年至少1次纳税记录即可，自2017年3月22日起已<strong>改为申请月的上一个月开始往前推算连续60个月在北京缴纳个人所得税。</strong></p>\n<p></p><p class=\"insert-img\"><img alt=\"个税审核标准的公告原文\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490269714phpVyoN4Y.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">个税审核标准的公告原文</span></p><p></p>\n<p>按照公告规定，个税缴纳记录分两种情形审核认定：</p>\n<p>（1）<strong>按“工资、薪金所得”缴税的纳税人</strong>，应从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税。</p>\n<p>（2）<strong>按“个体工商户生产、经营所得”缴税的纳税人</strong>，包括取得“个体工商户生产、经营所得”的个体工商户经营者、个人独资企业出资人、合伙企业个人合伙人和个人，根据各自适用的计税期间，采取按月缴纳税款方式的，从申请月的上一个月开始往前推算60个月在本市连续缴纳个人所得税；采取按季缴纳税款方式的，从申请月的上一季度开始往前推算20个季度在本市连续缴纳个人所得税。</p>\n<p>&nbsp;</p>\n<h1>二、个税断了还能买房吗？</h1>\n<p>&nbsp;</p>\n<p>公告规定：对于因工作变动等原因造成未缴或补缴税款且不超过3个月的，视为连续缴纳。意味着连续的60个月中，<strong>个税有过断缴但不超过3个月的不影响购房资格。</strong></p>\n<p><strong>个税断缴超过3个月或者薪资未达到个税征收标准的非京籍家庭，</strong>想要买房需看社保有没有连续缴纳满60个月，且自2012年12月18日起，补缴社保在购房资格审核中不予认可，但因工作调转单位补缴不超过3个月的视为有效。</p>\n<p></p><p class=\"insert-img\"><img alt=\"非京籍买房，个税和社保缴纳标准满足一个即可\" src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" _src=\"http://image1.ljcdn.com/neirong-image/neirong1490265314phpVriyGD.jpeg\" class=\"insert-img-img\"><span class=\"insert-img-img-title\">非京籍买房，个税和社保缴纳标准满足一个即可</span></p><p></p>\n<p>为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。</p>\n<p>资料来源：《关于进一步严格购房资格审核中个人所得税政策执行标准的公告》</p>\n','2017-03-01','非京籍家庭在京买房条件',NULL);

/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(512) NOT NULL DEFAULT '' COMMENT '评论内容',
  `house_id` bigint(20) NOT NULL COMMENT '房屋id',
  `create_time` date NOT NULL COMMENT '发布时间戳',
  `blog_id` int(11) NOT NULL COMMENT '博客id',
  `type` tinyint(1) NOT NULL COMMENT '类型1-房产评论，2-博客评论',
  `user_id` bigint(20) NOT NULL COMMENT '评论用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;

INSERT INTO `comment` (`id`, `content`, `house_id`, `create_time`, `blog_id`, `type`, `user_id`)
VALUES
	(1,'为楼主点赞',5,'2017-02-12',0,1,7),
	(2,'为楼主点赞',5,'2017-02-12',0,1,7),
	(3,'为楼主点赞',1,'2017-02-14',0,1,7),
	(4,'为楼主点赞',0,'2017-03-04',0,1,7),
	(5,'为楼主点赞',0,'2017-03-04',0,1,7),
	(6,'为楼主点赞',0,'2017-03-04',2,2,7),
	(7,'为了避免违约，想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同。',0,'2017-03-04',2,2,7),
	(8,'为楼主点赞',16,'2017-03-21',0,1,7),
	(9,'为楼主点赞',9,'2017-03-27',0,1,7),
	(10,'为楼主点赞',0,'2017-04-05',1,2,7),
	(11,'撒发达撒的发',17,'2017-04-24',0,1,7),
	(12,'为楼主点赞',17,'2017-04-24',0,1,7),
	(13,'为楼主点赞',17,'2017-04-24',0,1,7),
	(14,'为楼主点赞',17,'2017-04-24',0,1,7),
	(15,'为楼主点赞',24,'2017-04-29',0,1,7),
	(16,'为楼主点赞',23,'2017-04-29',0,1,7),
	(17,'为楼主点赞',22,'2017-05-21',0,1,7),
	(18,'好房',26,'2017-12-29',0,1,7),
	(19,'好房',36,'2017-12-29',0,1,7),
	(20,'好房',30,'2017-12-29',0,1,7),
	(21,'1111',23,'2018-01-06',0,1,7),
	(22,'1111',23,'2018-01-06',0,1,7),
	(23,'什么',0,'2018-01-06',2,2,7),
	(24,'评论',43,'2018-01-06',0,1,7),
	(25,'111',43,'2018-01-06',0,1,7),
	(26,'11',43,'2018-01-06',0,1,7),
	(27,'2222',43,'2018-01-06',0,1,7),
	(28,'想买房的非京籍家庭若个税或社保有断缴情况，建议先去不动产登记中心确认购房资质再签合同',0,'2018-01-06',6,2,24),
	(29,'评论',0,'2018-01-06',5,2,27);

/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
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
  `price` int(11) NOT NULL COMMENT '单位元',
  `images` varchar(1024) NOT NULL DEFAULT '' COMMENT '图片地址',
  `area` int(11) NOT NULL DEFAULT '0' COMMENT '面积',
  `beds` int(11) NOT NULL DEFAULT '0' COMMENT '卧室数量',
  `baths` int(11) NOT NULL DEFAULT '0' COMMENT '卫生间数量',
  `rating` double NOT NULL DEFAULT '0' COMMENT '评级',
  `remarks` varchar(512) NOT NULL DEFAULT '' COMMENT '房产描述',
  `properties` varchar(512) NOT NULL DEFAULT '' COMMENT '属性',
  `floor_plan` varchar(250) NOT NULL DEFAULT '' COMMENT '户型图',
  `tags` varchar(20) NOT NULL DEFAULT '' COMMENT '标签',
  `create_time` datetime NOT NULL COMMENT '创建时间',
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
	(22,'西山华府 120平',1,600,'/1493370993/property-07.jpg,/1493370999/property-08.jpg',120,2,12,5,'西山华府 120平西山华府 120平西山华府 120平西山华府 120平西山华府 120平','得房率高,户型好,落地窗','','','2017-04-28 00:00:00',1,1,'西山华府',1),
	(23,'万柳书苑 180平 南北通透',1,800,'/1493381459/property-detail-01.jpg,/1493381460/property-detail-02.jpg,/1493381462/property-detail-03.jpg',120,2,2,4.5,'万柳书苑 180平 南北通透','满五年,采光好,价格合理,税少,学区房','','','2017-04-28 00:00:00',1,2,'清河中街',1),
	(24,'阳光丽景 三面采光 高楼层',1,140,'/1493432771/property-11.jpg,/1493432771/property-12.jpg,/1493432771/property-13.jpg',140,2,2,2.5,'阳光丽景 三面采光 高楼层','南北通透,环境好,带阳台','/1493432771/floor-plan-01.jpg,/1493432771/floor-plan-02.jpg','','2017-04-29 00:00:00',1,5,'西城区',1),
	(25,'阳光丽景 全南 高楼层',1,140,'/1493432771/property-11.jpg,/1493432771/property-12.jpg,/1493432771/property-13.jpg',140,2,2,0,'阳光丽景 三面采光 高楼层','南北通透,环境好,带阳台','/1493432771/floor-plan-01.jpg,/1493432771/floor-plan-02.jpg','','2017-04-29 00:00:00',1,5,'西城区',1),
	(26,'北街嘉园 全南向 南北通透',1,800,'/1493381459/property-detail-01.jpg,/1493381460/property-detail-02.jpg,/1493381462/property-detail-03.jpg',120,2,2,0,'万柳书苑 180平 南北通透','满五年,采光好,价格合理,税少,学区房','','','2017-04-28 00:00:00',1,2,'清河中街',1),
	(27,'橡树湾 全南向 南北通透',2,1,'/1493381459/property-detail-01.jpg,/1493381460/property-detail-02.jpg,/1493381462/property-detail-03.jpg',120,2,2,4,'生活方便','采光好','','','2017-04-28 00:00:00',1,2,'清河中街',1),
	(30,'南北通透好三居',1,200,'/1500796444/property-12.jpg,/1500796444/property-13.jpg',2,3,2,0,'南北通透好三居','环境好,带阳台,临地铁','/1500796444/floor-plan-02.jpg','','2017-07-23 00:00:00',1,6,'紫苑华府',1),
	(31,'好三居采光充足',1,200,'/1500800727/property-12.jpg,/1500800727/property-13.jpg',100,3,2,0,'好三居采光充足','','/1500800727/floor-plan-02.jpg','','2017-07-23 00:00:00',1,7,'清河中街',1),
	(32,'好三居采光充足',1,200,'/1500800766/property-04.jpg,/1500800766/property-05.jpg,/1500800766/property-06.jpg',100,3,2,0,'好三居采光充足','','/1500800766/floor-plan-01.jpg','','2017-07-23 00:00:00',1,7,'清河中街',1),
	(33,'好三居采光充足',1,200,'/1500800883/property-09.jpg,/1500800883/property-10.jpg',100,3,2,0,'好三居采光充足','','/1500800883/floor-plan-02.jpg','','2017-07-23 00:00:00',1,7,'清河中街',1),
	(34,'南北通透好三居',1,200,'/1500800967/property-10.jpg,/1500800967/property-11.jpg',100,3,2,0,'南北通透好三居','','/1500800967/floor-plan-02.jpg','','2017-07-23 00:00:00',1,6,'清河中街',1),
	(35,'南北通透好三居',1,200,'/1500801115/property-09.jpg,/1500801115/property-10.jpg,/1500801115/property-11.jpg',100,3,2,0,'南北通透好三居','','/1500801115/floor-plan-01.jpg','','2017-07-23 00:00:00',1,6,'清河中街',1),
	(36,'南北通透好三居',1,200,'/1500801204/property-10.jpg,/1500801204/property-11.jpg',100,3,2,0,'111','','/1500801204/floor-plan-01.jpg','','2017-07-23 00:00:00',1,7,'22',1),
	(37,'南北通透好三居',1,300,'/1500801346/property-10.jpg',100,3,2,0,'撒的发达','','/1500801346/floor-plan-02.jpg','','2017-07-23 00:00:00',1,6,'撒发达',1),
	(38,'新增房产 阳光充足',1,200,'/1500801594/property-06.jpg,/1500801594/property-07.jpg',100,3,2,0,'新增房产新增房产新增房产','','/1500801594/floor-plan-02.jpg','','2017-07-23 00:00:00',1,4,'清河中街',1),
	(39,'南北通透好三居 采光充足',1,300,'/1500803086/property-13.jpg',100,3,2,5,'1111','','/1500803086/floor-plan-02.jpg','','2017-07-23 17:44:47',1,4,'清河中街',1),
	(40,'中央花园大三居',1,200,'/1514722627/property-09.jpg,/1514722627/property-08.jpg,/1514722627/property-07.jpg',200,3,3,0,'中央花园大三居，阳光好房','满两年,采光好,价格合理,楼龄新,税少,户型好','/1514722627/floor-plan-02.jpg','','2017-12-31 20:17:07',1,6,'抚顺路北大街',1),
	(41,'阳光花园大四居',1,300,'/1514727258/property-06.jpg,/1514727258/property-05.jpg,/1514727258/property-04.jpg',200,4,4,3,'阳光花园大四居阳光花园大四居阳光花园大四居','带阳台,临地铁,没有遮挡,精装修','/1514727258/floor-plan-01.jpg','','2017-12-31 21:34:18',1,7,'北新家园101',1),
	(42,'阳光花园大四居',1,300,'/1514727307/property-06.jpg,/1514727307/property-05.jpg,/1514727307/property-04.jpg',200,4,4,4,'阳光花园大四居阳光花园大四居阳光花园大四居','带阳台,临地铁,没有遮挡,精装修','/1514727307/floor-plan-01.jpg','','2017-12-31 21:35:08',1,7,'北新家园101',1),
	(43,'阳光花园大四居',1,300,'/1514727520/property-10.jpg,/1514727520/property-09.jpg,/1514727520/property-08.jpg',200,4,3,0,'阳光花园大四居阳光花园大四居阳光花园大四居','满五年,楼龄新,税少,落地窗','/1514727520/floor-plan-01.jpg','','2017-12-31 21:38:41',1,7,'北新家园101',1),
	(44,'枫丹丽舍大三居',1,300,'/1515216506/property-08.jpg,/1515216506/property-07.jpg,/1515216506/property-06.jpg',200,3,3,0,'枫丹丽舍大三居枫丹丽舍大三居','满五年,满两年,采光好,高楼层,价格合理,楼龄新,税少,得房率高','/1515216506/floor-plan-02.jpg','','2018-01-06 13:28:27',1,1,'西门大街58号',1),
	(45,'万柳书院一楼',1,400,'/1515217056/property-03.jpg,/1515217056/property-02.jpg,/1515217056/property-01.jpg',200,4,4,0,'万柳书院一楼','户型好,没有遮挡,落地窗,精装修','/1515217057/floor-plan-big.jpg','','2018-01-06 13:37:39',1,0,'万柳书院一楼',1);

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
	(1,'spring_boot@163.com','2017-02-12',13,5,'sadfasd'),
	(2,'d','2017-03-27',13,9,'111'),
	(3,'1','2017-04-29',7,24,'11'),
	(4,'1','2017-06-29',7,24,'11'),
	(5,'dafsd','2017-07-23',15,39,'hello'),
	(6,'1111','2017-07-23',15,39,'hello'),
	(7,'1111','2018-01-06',15,43,'hello'),
	(8,'111','2018-01-06',15,41,'wwww'),
	(9,'111111','2018-01-06',15,39,'111');

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
	(1,22,7,'2017-02-26',1),
	(11,43,7,'2017-04-28',1),
	(13,42,7,'2017-04-28',1),
	(17,24,7,'2017-04-29',1),
	(18,24,14,'2017-04-29',2),
	(19,23,7,'2017-04-29',2),
	(22,27,7,'2017-04-29',1),
	(23,26,7,'2017-04-29',1),
	(27,30,7,'2017-07-23',1),
	(28,36,7,'2017-07-23',1),
	(29,37,7,'2017-07-23',1),
	(30,38,7,'2017-07-23',1),
	(31,39,7,'2017-07-23',1),
	(33,40,7,'2017-12-31',1),
	(34,23,7,'2017-12-31',1),
	(35,42,7,'2018-01-06',2),
	(39,41,7,'2017-12-31',1),
	(90,25,7,'2017-04-29',1),
	(91,31,7,'2017-07-23',1),
	(92,32,7,'2017-07-23',1),
	(93,33,7,'2017-07-23',1),
	(94,34,7,'2017-07-23',1),
	(95,35,7,'2017-07-23',1),
	(96,44,7,'2018-01-06',1),
	(97,45,7,'2018-01-06',1),
	(101,44,24,'2018-01-06',2),
	(102,45,7,'2018-01-06',2);

/*!40000 ALTER TABLE `house_user` ENABLE KEYS */;
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
  `passwd` varchar(512) NOT NULL DEFAULT '' COMMENT '经过MD5加密的密码',
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
	(7,'hello99','hello','spring_boot@163.com','个人','3bf8013c27e39f2bb7060368bf5f6e49','/1493438523/4.jpg',2,'2017-01-31',1,1),
	(8,'hello1','hello','spring_boot2@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/1.jpg',2,'2017-01-31',1,1),
	(9,'hello2','hello','spring_boot3@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/2.jpg',2,'2017-01-31',1,1),
	(10,'hello3','hello','spring_boot4@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/3.jpg',2,'2017-01-31',1,1),
	(11,'hello4','hello','spring_boot5@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/4.jpg',2,'2017-01-31',1,1),
	(12,'hello5','hello','spring_boot6@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/5.jpg',2,'2017-01-31',1,1),
	(13,'hello6','hello','spring_boot7@163.com','2255','75fb23b165249cedeb60544c4095ec99','/1493438523/6.jpg',2,'2017-01-31',1,1),
	(14,'张晶','18909090909','sinewy1@163.com','张晶','75fb23b165249cedeb60544c4095ec99','/1493438523/7.jpg',2,'2017-04-29',1,0),
	(15,'刘志成','18909090909','mooc_hello1@163.com','刘志成','75fb23b165249cedeb60544c4095ec99','/1493439911/client-01.jpg',2,'2017-04-29',1,0),
	(27,'王一','18909090909','spring_boot8@163.com','111111','75fb23b165249cedeb60544c4095ec99','/1515220849/agent-01.jpg',2,'2018-01-06',1,0),
	(29,'1111','12090909090','mooc_hello@163.com','111111','75fb23b165249cedeb60544c4095ec99','/1515227400/member-01.jpg',1,'2018-01-06',1,0);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
