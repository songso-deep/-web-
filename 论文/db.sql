/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ruanjianxiangmu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ruanjianxiangmu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ruanjianxiangmu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-23 13:30:02'),(2,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-23 13:30:02'),(3,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-03-23 13:30:02'),(4,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-03-23 13:30:02'),(5,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-03-23 13:30:02'),(6,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-23 13:30:02'),(7,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-23 13:30:02'),(8,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-23 13:30:02'),(9,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-23 13:30:02'),(10,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-23 13:30:02'),(11,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-23 13:30:02'),(12,'jishu_types','技术类型',1,'技术类型1',NULL,NULL,'2023-03-23 13:30:02'),(13,'jishu_types','技术类型',2,'技术类型2',NULL,NULL,'2023-03-23 13:30:02'),(14,'jishu_types','技术类型',3,'技术类型3',NULL,NULL,'2023-03-23 13:30:02'),(15,'jishu_types','技术类型',4,'技术类型4',NULL,NULL,'2023-03-23 13:30:02'),(16,'jishu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-23 13:30:02'),(17,'wenxian_types','文献类型',1,'文献类型1',NULL,NULL,'2023-03-23 13:30:02'),(18,'wenxian_types','文献类型',2,'文献类型2',NULL,NULL,'2023-03-23 13:30:02'),(19,'wenxian_types','文献类型',3,'文献类型3',NULL,NULL,'2023-03-23 13:30:02'),(20,'wenxian_types','文献类型',4,'文献类型4',NULL,NULL,'2023-03-23 13:30:02'),(21,'wenxian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-23 13:30:02'),(22,'xiangmu_types','项目类型',1,'项目类型1',NULL,NULL,'2023-03-23 13:30:02'),(23,'xiangmu_types','项目类型',2,'项目类型2',NULL,NULL,'2023-03-23 13:30:02'),(24,'xiangmu_types','项目类型',3,'项目类型3',NULL,NULL,'2023-03-23 13:30:03'),(25,'xiangmu_types','项目类型',4,'项目类型4',NULL,NULL,'2023-03-23 13:30:03'),(26,'mokuai_types','模块类型',1,'模块类型1',NULL,NULL,'2023-03-23 13:30:03'),(27,'mokuai_types','模块类型',2,'模块类型2',NULL,NULL,'2023-03-23 13:30:03'),(28,'mokuai_types','模块类型',3,'模块类型3',NULL,NULL,'2023-03-23 13:30:03'),(29,'mokuai_types','模块类型',4,'模块类型4',NULL,NULL,'2023-03-23 13:30:03'),(30,'mokuai_zhuangtai_types','模块状态',1,'已分配',NULL,NULL,'2023-03-23 13:30:03'),(31,'mokuai_zhuangtai_types','模块状态',2,'已完成',NULL,NULL,'2023-03-23 13:30:03'),(32,'mokuai_huafei_types','经费使用类型',1,'经费使用类型1',NULL,NULL,'2023-03-23 13:30:03'),(33,'mokuai_huafei_types','经费使用类型',2,'经费使用类型2',NULL,NULL,'2023-03-23 13:30:03'),(34,'mokuai_huafei_types','经费使用类型',3,'经费使用类型3',NULL,NULL,'2023-03-23 13:30:03'),(35,'mokuai_huafei_types','经费使用类型',4,'经费使用类型4',NULL,NULL,'2023-03-23 13:30:03'),(36,'xiangmu_types','项目类型',5,'项目类型5',NULL,'','2023-03-23 14:02:31');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangmujingli_id` int(11) DEFAULT NULL COMMENT '项目经理',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`xiangmujingli_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,NULL,'发布内容1',306,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',31,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',123,1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',388,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,'帖子标题5',1,NULL,NULL,'发布内容5',426,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',440,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',179,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',467,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,'帖子标题9',3,NULL,NULL,'发布内容9',75,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',180,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,'帖子标题11',1,NULL,NULL,'发布内容11',403,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',315,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',217,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',282,1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18','2023-03-23 13:31:18'),(15,NULL,4,NULL,NULL,'标题1111',14,NULL,2,'2023-03-23 13:59:39',NULL,'2023-03-23 13:59:39'),(16,'帖子1111',4,NULL,NULL,'<p>广东省格式时代光华时高时低</p>',NULL,1,1,'2023-03-23 14:00:04',NULL,'2023-03-23 14:00:04'),(17,NULL,NULL,NULL,1,'哈哈哈哈',16,NULL,2,'2023-03-23 14:02:39',NULL,'2023-03-23 14:02:39'),(18,NULL,NULL,1,NULL,'和京津冀',16,NULL,2,'2023-03-23 14:04:00',NULL,'2023-03-23 14:04:00');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-23 13:31:18','公告详情1','2023-03-23 13:31:18'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-23 13:31:18','公告详情2','2023-03-23 13:31:18'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-23 13:31:18','公告详情3','2023-03-23 13:31:18'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-23 13:31:18','公告详情4','2023-03-23 13:31:18'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-23 13:31:18','公告详情5','2023-03-23 13:31:18'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-23 13:31:18','公告详情6','2023-03-23 13:31:18'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-23 13:31:18','公告详情7','2023-03-23 13:31:18'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-23 13:31:18','公告详情8','2023-03-23 13:31:18'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-23 13:31:18','公告详情9','2023-03-23 13:31:18'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-23 13:31:18','公告详情10','2023-03-23 13:31:18'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-23 13:31:18','公告详情11','2023-03-23 13:31:18'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-23 13:31:18','公告详情12','2023-03-23 13:31:18'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-23 13:31:18','公告详情13','2023-03-23 13:31:18'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-23 13:31:18','公告详情14','2023-03-23 13:31:18');

/*Table structure for table `jishu` */

DROP TABLE IF EXISTS `jishu`;

CREATE TABLE `jishu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jishu_name` varchar(200) DEFAULT NULL COMMENT '技术名称  Search111 ',
  `jishu_uuid_number` varchar(200) DEFAULT NULL COMMENT '技术编号',
  `jishu_photo` varchar(200) DEFAULT NULL COMMENT '技术照片',
  `jishu_file` varchar(200) DEFAULT NULL COMMENT '技术附件',
  `jishu_types` int(11) DEFAULT NULL COMMENT '技术类型 Search111',
  `jishu_content` longtext COMMENT '技术介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jishu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='技术';

/*Data for the table `jishu` */

insert  into `jishu`(`id`,`jishu_name`,`jishu_uuid_number`,`jishu_photo`,`jishu_file`,`jishu_types`,`jishu_content`,`shangxia_types`,`jishu_delete`,`insert_time`,`create_time`) values (1,'技术名称1','1679549478479','upload/jishu1.jpg','upload/file.rar',2,'技术介绍1',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,'技术名称2','1679549478402','upload/jishu2.jpg','upload/file.rar',2,'技术介绍2',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,'技术名称3','1679549478397','upload/jishu3.jpg','upload/file.rar',3,'技术介绍3',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,'技术名称4','1679549478426','upload/jishu4.jpg','upload/file.rar',2,'技术介绍4',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,'技术名称5','1679549478403','upload/jishu5.jpg','upload/file.rar',2,'技术介绍5',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,'技术名称6','1679549478450','upload/jishu6.jpg','upload/file.rar',4,'技术介绍6',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,'技术名称7','1679549478432','upload/jishu7.jpg','upload/file.rar',3,'技术介绍7',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,'技术名称8','1679549478474','upload/jishu8.jpg','upload/file.rar',3,'技术介绍8',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,'技术名称9','1679549478404','upload/jishu9.jpg','upload/file.rar',4,'技术介绍9',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,'技术名称10','1679549478420','upload/jishu10.jpg','upload/file.rar',3,'技术介绍10',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,'技术名称11','1679549478460','upload/jishu11.jpg','upload/file.rar',1,'技术介绍11',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,'技术名称12','1679549478406','upload/jishu12.jpg','upload/file.rar',1,'技术介绍12',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,'技术名称13','1679549478414','upload/jishu13.jpg','upload/file.rar',1,'技术介绍13',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,'技术名称14','1679549478386','upload/jishu14.jpg','upload/file.rar',1,'技术介绍14',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18');

/*Table structure for table `jishu_collection` */

DROP TABLE IF EXISTS `jishu_collection`;

CREATE TABLE `jishu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jishu_id` int(11) DEFAULT NULL COMMENT '技术',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jishu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='技术收藏';

/*Data for the table `jishu_collection` */

insert  into `jishu_collection`(`id`,`jishu_id`,`yonghu_id`,`jishu_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,2,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,3,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,4,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,5,1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,6,1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,7,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,8,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,9,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,10,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,11,1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,12,1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,13,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,14,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(15,11,4,1,'2023-03-23 14:00:46','2023-03-23 14:00:46');

/*Table structure for table `mokuai` */

DROP TABLE IF EXISTS `mokuai`;

CREATE TABLE `mokuai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `mokuai_uuid_number` varchar(200) DEFAULT NULL COMMENT '模块编号',
  `mokuai_name` varchar(200) DEFAULT NULL COMMENT '模块名称  Search111 ',
  `mokuai_types` int(11) DEFAULT NULL COMMENT '模块类型 Search111',
  `mokuai_jine` decimal(10,2) DEFAULT NULL COMMENT '模块经费',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `mokuai_content` longtext COMMENT '模块要求',
  `mokuai_zhuangtai_types` int(11) DEFAULT NULL COMMENT '模块状态 Search111',
  `mokuai_file` varchar(200) DEFAULT NULL COMMENT '模块成果',
  `mokuai_chengguo_content` longtext COMMENT '成果备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='模块';

/*Data for the table `mokuai` */

insert  into `mokuai`(`id`,`xiangmu_id`,`yonghu_id`,`mokuai_uuid_number`,`mokuai_name`,`mokuai_types`,`mokuai_jine`,`insert_time`,`mokuai_content`,`mokuai_zhuangtai_types`,`mokuai_file`,`mokuai_chengguo_content`,`create_time`) values (1,1,1,'1679549478498','模块名称1',3,'566.96','2023-03-23 13:31:18','模块要求1',1,NULL,NULL,'2023-03-23 13:31:18'),(2,2,1,'1679549478441','模块名称2',1,'876.62','2023-03-23 13:31:18','模块要求2',1,NULL,NULL,'2023-03-23 13:31:18'),(3,3,2,'1679549478450','模块名称3',3,'476.99','2023-03-23 13:31:18','模块要求3',1,NULL,NULL,'2023-03-23 13:31:18'),(4,4,1,'1679549478494','模块名称4',4,'877.55','2023-03-23 13:31:18','模块要求4',2,'upload/1679551272540.doc','给对方广东省固定死广东省广东省公司的个','2023-03-23 13:31:18'),(5,5,2,'1679549478424','模块名称5',2,'816.70','2023-03-23 13:31:18','模块要求5',1,NULL,NULL,'2023-03-23 13:31:18'),(6,6,2,'1679549478438','模块名称6',3,'350.63','2023-03-23 13:31:18','模块要求6',1,NULL,NULL,'2023-03-23 13:31:18'),(7,7,1,'1679549478423','模块名称7',4,'229.55','2023-03-23 13:31:18','模块要求7',2,'upload/1679550210687.doc','个地方都是发的','2023-03-23 13:31:18'),(8,8,2,'1679549478472','模块名称8',1,'4.36','2023-03-23 13:31:18','模块要求8',1,NULL,NULL,'2023-03-23 13:31:18'),(9,9,3,'1679549478495','模块名称9',2,'935.75','2023-03-23 13:31:18','模块要求9',1,NULL,NULL,'2023-03-23 13:31:18'),(10,10,2,'1679549478505','模块名称10',3,'40.45','2023-03-23 13:31:18','模块要求10',1,NULL,NULL,'2023-03-23 13:31:18'),(11,11,1,'1679549478451','模块名称11',1,'962.08','2023-03-23 13:31:18','模块要求11',2,'upload/file.rar','成果备注11','2023-03-23 13:31:18'),(12,12,1,'1679549478421','模块名称12',4,'658.48','2023-03-23 13:31:18','模块要求12',2,'upload/file.rar','成果备注12','2023-03-23 13:31:18'),(13,13,1,'1679549478426','模块名称13',1,'818.31','2023-03-23 13:31:18','模块要求13',2,'upload/file.rar','成果备注13','2023-03-23 13:31:18'),(14,14,1,'1679549478486','模块名称14',3,'814.47','2023-03-23 13:31:18','模块要求14',2,'upload/file.rar','成果备注14','2023-03-23 13:31:18'),(15,15,4,'1679551615409','模块1111',3,'11111.00','2023-03-23 14:07:20','<p>给对方广东省固定死广东省通过</p>',1,'','','2023-03-23 14:07:20');

/*Table structure for table `mokuai_huafei` */

DROP TABLE IF EXISTS `mokuai_huafei`;

CREATE TABLE `mokuai_huafei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `mokuai_id` int(11) DEFAULT NULL COMMENT '模块',
  `mokuai_huafei_uuid_number` varchar(200) DEFAULT NULL COMMENT '花费编号',
  `mokuai_huafei_name` varchar(200) DEFAULT NULL COMMENT '花费标题  Search111 ',
  `mokuai_huafei_types` int(11) DEFAULT NULL COMMENT '经费使用类型 Search111',
  `huafei_time` timestamp NULL DEFAULT NULL COMMENT '花费时间',
  `mokuai_huafei_jine` decimal(10,2) DEFAULT NULL COMMENT '使用金额',
  `mokuai_huafei_content` longtext COMMENT '使用缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='经费使用';

/*Data for the table `mokuai_huafei` */

insert  into `mokuai_huafei`(`id`,`mokuai_id`,`mokuai_huafei_uuid_number`,`mokuai_huafei_name`,`mokuai_huafei_types`,`huafei_time`,`mokuai_huafei_jine`,`mokuai_huafei_content`,`insert_time`,`create_time`) values (1,1,'1679549478516','花费标题1',4,'2023-03-23 13:31:18','90.62','使用缘由1','2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,2,'1679549478422','花费标题2',4,'2023-03-23 13:31:18','108.23','使用缘由2','2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,3,'1679549478431','花费标题3',3,'2023-03-23 13:31:18','237.87','使用缘由3','2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,4,'1679549478493','花费标题4',3,'2023-03-23 13:31:18','85.16','使用缘由4','2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,5,'1679549478448','花费标题5',3,'2023-03-23 13:31:18','974.84','使用缘由5','2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,6,'1679549478497','花费标题6',3,'2023-03-23 13:31:18','351.56','使用缘由6','2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,7,'1679549478485','花费标题7',3,'2023-03-23 13:31:18','942.41','使用缘由7','2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,8,'1679549478422','花费标题8',1,'2023-03-23 13:31:18','583.46','使用缘由8','2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,9,'1679549478428','花费标题9',1,'2023-03-23 13:31:18','287.17','使用缘由9','2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,10,'1679549478514','花费标题10',1,'2023-03-23 13:31:18','456.69','使用缘由10','2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,11,'1679549478500','花费标题11',4,'2023-03-23 13:31:18','590.63','使用缘由11','2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,12,'1679549478450','花费标题12',2,'2023-03-23 13:31:18','837.63','使用缘由12','2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,13,'1679549478507','花费标题13',1,'2023-03-23 13:31:18','89.36','使用缘由13','2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,14,'1679549478431','花费标题14',1,'2023-03-23 13:31:18','194.39','使用缘由14','2023-03-23 13:31:18','2023-03-23 13:31:18'),(16,11,'1679550315145','标题111',3,'2023-03-23 00:00:00','88.00','搞活动方式他改粉色都够烦的够烦的','2023-03-23 13:45:48','2023-03-23 13:45:48'),(17,12,'1679551286905','爆破筒111',3,'2023-03-15 00:00:00','88.00','低功耗所发生的广东省格式的','2023-03-23 14:01:44','2023-03-23 14:01:44');

/*Table structure for table `sixin` */

DROP TABLE IF EXISTS `sixin`;

CREATE TABLE `sixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `sixin_name` varchar(200) DEFAULT NULL COMMENT '私信标题  Search111 ',
  `sixin_text` longtext COMMENT '私信内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '私信时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='管理员私信';

/*Data for the table `sixin` */

insert  into `sixin`(`id`,`yonghu_id`,`sixin_name`,`sixin_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,'私信标题1','私信内容1','2023-03-23 13:31:18','回复信息1','2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,2,'私信标题2','私信内容2','2023-03-23 13:31:18','回复信息2','2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,1,'私信标题3','私信内容3','2023-03-23 13:31:18','回复信息3','2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,2,'私信标题4','私信内容4','2023-03-23 13:31:18','回复信息4','2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,2,'私信标题5','私信内容5','2023-03-23 13:31:18','回复信息5','2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,1,'私信标题6','私信内容6','2023-03-23 13:31:18','回复信息6','2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,1,'私信标题7','私信内容7','2023-03-23 13:31:18','回复信息7','2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,3,'私信标题8','私信内容8','2023-03-23 13:31:18','回复信息8','2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,1,'私信标题9','私信内容9','2023-03-23 13:31:18','回复信息9','2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,2,'私信标题10','私信内容10','2023-03-23 13:31:18','回复信息10','2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,2,'私信标题11','私信内容11','2023-03-23 13:31:18','回复信息11','2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,1,'私信标题12','私信内容12','2023-03-23 13:31:18','回复信息12','2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,3,'私信标题13','私信内容13','2023-03-23 13:31:18','回复信息13','2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,2,'私信标题14','私信内容14','2023-03-23 13:31:18','回复信息14','2023-03-23 13:31:18','2023-03-23 13:31:18'),(15,1,'标题111','广东省广东省固定事故递四方速递','2023-03-23 13:48:31',NULL,NULL,'2023-03-23 13:48:31'),(16,1,'私信111','第三个还是多喝点发生啥地方','2023-03-23 14:01:59',NULL,NULL,'2023-03-23 14:01:59'),(17,1,'实习2222','大概是广东省黑胡椒和','2023-03-23 14:02:11','个哈哈哈或','2023-03-23 14:03:02','2023-03-23 14:02:11');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','bwctcdw01ykttwvds9e45peixcu5ywxt','2023-03-23 13:34:22','2023-03-23 15:00:57'),(2,1,'admin','users','管理员','ps88dqd0vp1wkdhur3skdyx985j7qsbi','2023-03-23 13:46:01','2023-03-23 15:02:18'),(3,4,'a5','yonghu','用户','g3znxf20t6ncri7mtc88191jjaubi423','2023-03-23 13:59:26','2023-03-23 14:59:26'),(4,1,'a1','xiangmujingli','项目经理','0v023n9646m2dhjmn8fdqtvvycul8wmz','2023-03-23 14:03:53','2023-03-23 15:03:53');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-23 13:30:02');

/*Table structure for table `wenxian` */

DROP TABLE IF EXISTS `wenxian`;

CREATE TABLE `wenxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wenxian_name` varchar(200) DEFAULT NULL COMMENT '文献名称  Search111 ',
  `wenxian_uuid_number` varchar(200) DEFAULT NULL COMMENT '文献编号',
  `wenxian_photo` varchar(200) DEFAULT NULL COMMENT '文献照片',
  `wenxian_file` varchar(200) DEFAULT NULL COMMENT '文献附件',
  `wenxian_types` int(11) DEFAULT NULL COMMENT '文献类型 Search111',
  `wenxian_content` longtext COMMENT '文献介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `wenxian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='文献';

/*Data for the table `wenxian` */

insert  into `wenxian`(`id`,`wenxian_name`,`wenxian_uuid_number`,`wenxian_photo`,`wenxian_file`,`wenxian_types`,`wenxian_content`,`shangxia_types`,`wenxian_delete`,`insert_time`,`create_time`) values (1,'文献名称1','1679549478513','upload/wenxian1.jpg','upload/file.rar',4,'文献介绍1',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,'文献名称2','1679549478483','upload/wenxian2.jpg','upload/file.rar',3,'文献介绍2',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,'文献名称3','1679549478428','upload/wenxian3.jpg','upload/file.rar',4,'文献介绍3',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,'文献名称4','1679549478465','upload/wenxian4.jpg','upload/file.rar',3,'文献介绍4',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,'文献名称5','1679549478499','upload/wenxian5.jpg','upload/file.rar',1,'文献介绍5',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,'文献名称6','1679549478506','upload/wenxian6.jpg','upload/file.rar',3,'文献介绍6',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,'文献名称7','1679549478436','upload/wenxian7.jpg','upload/file.rar',4,'文献介绍7',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,'文献名称8','1679549478429','upload/wenxian8.jpg','upload/file.rar',1,'文献介绍8',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,'文献名称9','1679549478519','upload/wenxian9.jpg','upload/file.rar',1,'文献介绍9',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,'文献名称10','1679549478435','upload/wenxian10.jpg','upload/file.rar',2,'文献介绍10',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,'文献名称11','1679549478436','upload/wenxian11.jpg','upload/file.rar',4,'文献介绍11',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,'文献名称12','1679549478486','upload/wenxian12.jpg','upload/file.rar',1,'文献介绍12',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,'文献名称13','1679549478440','upload/wenxian13.jpg','upload/file.rar',3,'文献介绍13',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,'文献名称14','1679549478494','upload/wenxian14.jpg','upload/file.rar',2,'文献介绍14',1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18');

/*Table structure for table `wenxian_collection` */

DROP TABLE IF EXISTS `wenxian_collection`;

CREATE TABLE `wenxian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenxian_id` int(11) DEFAULT NULL COMMENT '文献',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wenxian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='文献收藏';

/*Data for the table `wenxian_collection` */

insert  into `wenxian_collection`(`id`,`wenxian_id`,`yonghu_id`,`wenxian_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,2,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,3,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,4,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,5,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,6,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,7,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,8,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,9,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,10,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,11,1,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,12,2,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,13,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,14,3,1,'2023-03-23 13:31:18','2023-03-23 13:31:18'),(15,13,4,1,'2023-03-23 14:00:43','2023-03-23 14:00:43');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmujingli_id` int(11) DEFAULT NULL COMMENT '项目经理',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `xiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `xiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `xiangmu_jine` decimal(10,2) DEFAULT NULL COMMENT '项目金额',
  `xiangmu_shengyu_jine` decimal(10,2) DEFAULT NULL COMMENT '剩余金额',
  `xiangmu_file` varchar(200) DEFAULT NULL COMMENT '项目附件',
  `xiangmu_content` longtext COMMENT '项目介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='项目';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`xiangmujingli_id`,`xiangmu_name`,`xiangmu_uuid_number`,`xiangmu_types`,`xiangmu_jine`,`xiangmu_shengyu_jine`,`xiangmu_file`,`xiangmu_content`,`insert_time`,`create_time`) values (1,1,'项目名称1','1679549478442',1,'834.89','362.77','upload/file.rar','项目介绍1','2023-03-23 13:31:18','2023-03-23 13:31:18'),(2,1,'项目名称2','1679549478498',3,'745.60','417.48','upload/file.rar','项目介绍2','2023-03-23 13:31:18','2023-03-23 13:31:18'),(3,1,'项目名称3','1679549478442',1,'742.02','320.99','upload/file.rar','项目介绍3','2023-03-23 13:31:18','2023-03-23 13:31:18'),(4,1,'项目名称4','1679549478454',3,'981.30','464.22','upload/file.rar','项目介绍4','2023-03-23 13:31:18','2023-03-23 13:31:18'),(5,2,'项目名称5','1679549478449',3,'338.69','957.62','upload/file.rar','项目介绍5','2023-03-23 13:31:18','2023-03-23 13:31:18'),(6,1,'项目名称6','1679549478502',2,'153.65','920.90','upload/file.rar','项目介绍6','2023-03-23 13:31:18','2023-03-23 13:31:18'),(7,3,'项目名称7','1679549478510',4,'436.34','933.96','upload/file.rar','项目介绍7','2023-03-23 13:31:18','2023-03-23 13:31:18'),(8,3,'项目名称8','1679549478515',3,'960.98','407.65','upload/file.rar','项目介绍8','2023-03-23 13:31:18','2023-03-23 13:31:18'),(9,2,'项目名称9','1679549478468',2,'807.83','893.73','upload/file.rar','项目介绍9','2023-03-23 13:31:18','2023-03-23 13:31:18'),(10,2,'项目名称10','1679549478502',3,'159.69','139.69','upload/file.rar','项目介绍10','2023-03-23 13:31:18','2023-03-23 13:31:18'),(11,2,'项目名称11','1679549478529',2,'650.37','960.60','upload/file.rar','项目介绍11','2023-03-23 13:31:18','2023-03-23 13:31:18'),(12,3,'项目名称12','1679549478484',3,'798.93','306.63','upload/file.rar','项目介绍12','2023-03-23 13:31:18','2023-03-23 13:31:18'),(13,3,'项目名称13','1679549478442',1,'220.35','622.29','upload/file.rar','项目介绍13','2023-03-23 13:31:18','2023-03-23 13:31:18'),(14,3,'项目名称14','1679549478440',3,'593.45','89.51','upload/file.rar','项目介绍14','2023-03-23 13:31:18','2023-03-23 13:31:18'),(15,1,'项目1111','1679551388939',5,'88888.00','77777.00','upload/1679551400952.doc','<p>还打算发广东省广东省符合规定涣发大号好 </p>','2023-03-23 14:03:24','2023-03-23 14:03:24');

/*Table structure for table `xiangmujingli` */

DROP TABLE IF EXISTS `xiangmujingli`;

CREATE TABLE `xiangmujingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xiangmujingli_name` varchar(200) DEFAULT NULL COMMENT '项目经理姓名 Search111 ',
  `xiangmujingli_phone` varchar(200) DEFAULT NULL COMMENT '项目经理手机号',
  `xiangmujingli_id_number` varchar(200) DEFAULT NULL COMMENT '项目经理身份证号',
  `xiangmujingli_photo` varchar(200) DEFAULT NULL COMMENT '项目经理头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xiangmujingli_email` varchar(200) DEFAULT NULL COMMENT '项目经理邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='项目经理';

/*Data for the table `xiangmujingli` */

insert  into `xiangmujingli`(`id`,`username`,`password`,`xiangmujingli_name`,`xiangmujingli_phone`,`xiangmujingli_id_number`,`xiangmujingli_photo`,`sex_types`,`xiangmujingli_email`,`create_time`) values (1,'a1','123456','项目经理姓名1','17703786901','410224199010102001','upload/xiangmujingli1.jpg',1,'1@qq.com','2023-03-23 13:31:18'),(2,'a2','123456','项目经理姓名2','17703786902','410224199010102002','upload/xiangmujingli2.jpg',1,'2@qq.com','2023-03-23 13:31:18'),(3,'a3','123456','项目经理姓名3','17703786903','410224199010102003','upload/xiangmujingli3.jpg',1,'3@qq.com','2023-03-23 13:31:18');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-23 13:31:18'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-23 13:31:18'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-23 13:31:18'),(4,'a5','123456','张5','17788899999','444555888888889999','upload/1679551184883.jpg',2,'5@qq.com','2023-03-23 13:59:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
