# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.25-log)
# Database: comment
# Generation Time: 2018-01-06 17:35:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


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
  `create_time` datetime NOT NULL COMMENT '发布时间戳',
  `blog_id` int(11) NOT NULL COMMENT '博客id',
  `type` tinyint(1) NOT NULL COMMENT '类型1-房产评论，2-博客评论',
  `user_id` bigint(20) NOT NULL COMMENT '评论用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;

INSERT INTO `comment` (`id`, `content`, `house_id`, `create_time`, `blog_id`, `type`, `user_id`)
VALUES
	(1,'asfsadfsaf',5,'2017-02-12 00:00:00',0,1,7),
	(2,'asfasfasfdasfsdfasfasfdasdfsadf',5,'2017-02-12 00:00:00',0,1,7),
	(3,'111',1,'2017-02-14 00:00:00',0,1,7),
	(4,'asf',0,'2017-03-04 00:00:00',0,1,7),
	(5,'asfdsadf',0,'2017-03-04 00:00:00',0,1,7),
	(6,'暗杀发送发送',0,'2017-03-04 00:00:00',2,2,7),
	(7,'李克华是大傻逼吗',0,'2017-03-04 00:00:00',2,2,7),
	(8,'1',16,'2017-03-21 00:00:00',0,1,7),
	(9,'11',9,'2017-03-27 00:00:00',0,1,7),
	(10,'111',0,'2017-04-05 00:00:00',1,2,7),
	(11,'撒发达撒的发',17,'2017-04-24 00:00:00',0,1,7),
	(12,'11111',17,'2017-04-24 00:00:00',0,1,7),
	(13,'333333333',17,'2017-04-24 00:00:00',0,1,7),
	(14,'4444444',17,'2017-04-24 00:00:00',0,1,7),
	(15,'1111',24,'2017-04-29 00:00:00',0,1,7),
	(16,'111',23,'2017-04-29 00:00:00',0,1,7),
	(17,'qq',23,'2017-05-08 00:00:00',0,1,7),
	(18,'发送',24,'2017-05-08 00:00:00',0,1,25),
	(19,'11111',0,'2017-05-08 00:00:00',1,2,25),
	(20,'不错',24,'2018-01-06 00:00:00',0,1,7),
	(21,'测试下',24,'2018-01-06 00:00:00',0,1,7),
	(22,'测试',24,'2018-01-06 00:00:00',0,1,7),
	(23,'第一个评论',25,'2018-01-06 00:00:00',0,1,38),
	(24,'好房',23,'2018-01-06 00:00:00',0,1,7),
	(25,'确实不错',23,'2018-01-06 22:26:49',0,1,38),
	(26,'个税和社保缴纳标准满足一个即可非京籍买房，个税和社保缴纳标准满足一个即可',0,'2018-01-06 23:42:50',1,2,38),
	(27,'按“工资、薪金所得”缴税的纳税人',0,'2018-01-06 23:43:05',1,2,38),
	(28,'1',25,'2018-01-07 00:21:03',0,1,38);

/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
