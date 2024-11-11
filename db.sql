/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yuepaiwangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yuepaiwangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yuepaiwangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-03 13:55:52'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-03 13:55:52'),(3,'fengge_types','风格类型名称',1,'文艺风格',NULL,'2021-05-03 13:55:52'),(4,'fengge_types','风格类型名称',2,'复古港风',NULL,'2021-05-03 13:55:52'),(5,'fengge_types','风格类型名称',3,'小清新风格',NULL,'2021-05-03 13:55:52'),(6,'sheyingshi_xingji_types','摄影师星级类型名称',1,'星级一',NULL,'2021-05-03 13:55:52'),(7,'sheyingshi_xingji_types','摄影师星级类型名称',2,'星级二',NULL,'2021-05-03 13:55:52'),(8,'sheyingshi_xingji_types','摄影师星级类型名称',3,'星级三',NULL,'2021-05-03 13:55:52'),(9,'sheyingshi_order_types','摄影师订单类型名称',1,'已预约',NULL,'2021-05-03 13:55:53'),(10,'sheyingshi_order_types','摄影师订单类型名称',2,'已结束',NULL,'2021-05-03 13:55:53'),(11,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-05-03 13:55:53'),(12,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-05-03 13:55:53'),(13,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-03 13:55:53'),(14,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-03 13:55:53'),(15,'sheyingshi_xingji_types','摄影师星级类型名称',4,'类型4',NULL,'2021-05-03 15:18:23'),(16,'news_types','新闻类型名称',3,'新闻类型3',NULL,'2021-05-03 15:27:36'),(17,'zhaopianku_types','照片类型名称',1,'小清新',NULL,'2021-05-05 14:58:27'),(18,'zhaopianku_types','照片类型名称',2,'人物',NULL,'2021-05-05 14:58:27'),(19,'zhaopianku_types','照片类型名称',3,'景色',NULL,'2021-05-05 14:58:27'),(20,'zhaopianku_types','照片类型名称',4,'复古',NULL,'2021-05-05 14:58:27');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告1',1,'2021-05-03 15:07:38','公告内容1','2021-05-03 15:07:48'),(2,'公告2',2,'2021-05-03 15:07:38','公告内容2','2021-05-03 15:07:48');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'新闻1',2,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620025579846.jfif','2021-05-03 15:06:25','新闻1的详情\r\n','2021-05-03 15:06:25'),(4,'新闻2',1,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620025602300.jpg','2021-05-03 15:06:47','新闻2的详情\r\n','2021-05-03 15:06:47');

/*Table structure for table `sheyingshi` */

DROP TABLE IF EXISTS `sheyingshi`;

CREATE TABLE `sheyingshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `sheyingshi_name` varchar(200) DEFAULT NULL COMMENT '摄影师名称 Search111 ',
  `sheyingshi_phone` varchar(200) DEFAULT NULL COMMENT '摄影师手机号 Search111 ',
  `sheyingshi_id_number` varchar(200) DEFAULT NULL COMMENT '摄影师身份证号 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL COMMENT '年龄 Search111 ',
  `fengge_types` int(11) DEFAULT NULL COMMENT '风格 Search111 ',
  `sheyingshi_xingji_types` int(11) DEFAULT NULL COMMENT '星级 Search111 ',
  `sheyingshi_photo` varchar(200) DEFAULT NULL COMMENT '摄影师照片',
  `sheyingshi_content` text COMMENT '摄影师详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='摄影师';

/*Data for the table `sheyingshi` */

insert  into `sheyingshi`(`id`,`username`,`password`,`sheyingshi_name`,`sheyingshi_phone`,`sheyingshi_id_number`,`sex_types`,`age`,`fengge_types`,`sheyingshi_xingji_types`,`sheyingshi_photo`,`sheyingshi_content`,`create_time`) values (1,'a11','123456','张11','17703786911','410224199610232011',1,25,3,3,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620025369324.jpg','张11摄影师的详情\r\n','2021-05-03 15:03:10'),(2,'a22','123456','张22','17703786922','410224199610232022',1,24,2,2,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620025424239.jpg','张22摄影师的详情\r\n','2021-05-03 15:03:59'),(3,'a33','123456','张三三3','17703786933','410224199610232033',1,28,1,3,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620025477078.jpg','张三三摄影师的详情\r\n','2021-05-03 15:04:50'),(4,'a44','123456','张思思','17703786944','410224199610232044',2,29,1,2,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620026141189.jpg','张思思摄影师的详情\r\n','2021-05-03 15:16:02'),(5,'a99','123456','张99','17703786999','410224199610232099',1,39,2,1,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620027323602.jpg','详情\r\n','2021-05-03 15:34:54');

/*Table structure for table `sheyingshi_collection` */

DROP TABLE IF EXISTS `sheyingshi_collection`;

CREATE TABLE `sheyingshi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheyingshi_id` int(11) DEFAULT NULL COMMENT '摄影师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='摄影师收藏';

/*Data for the table `sheyingshi_collection` */

insert  into `sheyingshi_collection`(`id`,`sheyingshi_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,1,25,'2021-05-03 15:05:31','2021-05-03 15:05:31');

/*Table structure for table `sheyingshi_liuyan` */

DROP TABLE IF EXISTS `sheyingshi_liuyan`;

CREATE TABLE `sheyingshi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheyingshi_id` int(11) DEFAULT NULL COMMENT '摄影师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `sheyingshi_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='摄影师留言';

/*Data for the table `sheyingshi_liuyan` */

insert  into `sheyingshi_liuyan`(`id`,`sheyingshi_id`,`yonghu_id`,`sheyingshi_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,25,'摄影多少钱\r\n','180元一天\r\n','2021-05-03 15:05:40','2021-05-03 15:05:40'),(2,4,25,'摄影技术好么\r\n','好得很\r\n','2021-05-03 15:16:30','2021-05-03 15:16:30');

/*Table structure for table `sheyingshi_order` */

DROP TABLE IF EXISTS `sheyingshi_order`;

CREATE TABLE `sheyingshi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sheyingshi_id` int(11) DEFAULT NULL COMMENT '摄影师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `sheyingshi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `sheyingshi_order_start_time` timestamp NULL DEFAULT NULL COMMENT '预定开始时间',
  `sheyingshi_order_end_time` timestamp NULL DEFAULT NULL COMMENT '预定结束时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='摄影师订单';

/*Data for the table `sheyingshi_order` */

insert  into `sheyingshi_order`(`id`,`sheyingshi_id`,`yonghu_id`,`sheyingshi_order_types`,`sheyingshi_order_start_time`,`sheyingshi_order_end_time`,`insert_time`,`create_time`) values (1,4,25,1,'2021-05-05 00:00:00','2021-05-05 00:00:00','2021-05-03 15:19:42','2021-05-03 15:19:42'),(2,3,25,1,'2021-05-21 00:00:00','2021-06-01 00:00:00','2021-05-03 15:20:03','2021-05-03 15:20:03');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qgccvwqke4ebsrr14n9dcynaxypstb60','2021-05-03 14:59:49','2021-05-05 16:18:04'),(2,25,'a1','yonghu','用户','pr6xw00y8iry54ojnwhv6ep9yu2k2ran','2021-05-03 15:05:09','2021-05-05 16:15:52'),(3,3,'a33','sheyingshi','摄影师','71wmo7l26qnbffxfcm53l9vt0qklz1z0','2021-05-03 15:21:54','2021-05-03 16:21:55'),(4,5,'a99','sheyingshi','摄影师','77z8902ktb3kqab6aq3nzed8xyhnh160','2021-05-03 15:35:03','2021-05-03 16:35:04');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`create_time`) values (25,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620025287171.jpg',2,'2021-05-03 15:01:28'),(26,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620025306189.jpg',1,'2021-05-03 15:01:48'),(27,'a3','123456','张三','17703786903','410224199610232003','http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620026014116.jpg',2,'2021-05-03 15:13:45');

/*Table structure for table `zhaopianku` */

DROP TABLE IF EXISTS `zhaopianku`;

CREATE TABLE `zhaopianku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhaopianku_name` varchar(200) DEFAULT NULL COMMENT '照片名字 Search111 ',
  `zhaopianku_types` int(11) DEFAULT NULL COMMENT '照片类型 Search111 ',
  `zhaopianku_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhaopianku_content` text COMMENT '照片详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='照片库';

/*Data for the table `zhaopianku` */

insert  into `zhaopianku`(`id`,`zhaopianku_name`,`zhaopianku_types`,`zhaopianku_photo`,`zhaopianku_content`,`create_time`) values (28,'照片1',2,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620198663787.jpg','照片1的详情\r\n','2021-05-05 15:11:08'),(29,'照片2',2,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620198678888.jpg','照片2的详情\r\n','2021-05-05 15:11:24'),(30,'照片3',4,'http://localhost:8080/yuepaiwangzhan/file/download?fileName=1620198694109.jpg','照片3的详情\r\n','2021-05-05 15:11:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
