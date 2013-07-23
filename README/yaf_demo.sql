/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.16-log : Database - yaf_demo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yaf_demo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yaf_demo`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject` char(60) NOT NULL DEFAULT '' COMMENT '标题',
  `seot` char(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seok` char(255) NOT NULL DEFAULT '' COMMENT 'SEO关键词',
  `seod` char(255) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `comment` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `view` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='博客表';

/*Data for the table `blog` */

insert  into `blog`(`id`,`subject`,`seot`,`seok`,`seod`,`created`,`comment`,`view`) values (1,'YAF第1个博客','Yaftitle1','YafKw1','YafD1',1334566572,2,4),(2,'YAF第2个博客','Yaftitle2','YafKw2','YafD2',1334566599,0,9);

/*Table structure for table `bloginfo` */

DROP TABLE IF EXISTS `bloginfo`;

CREATE TABLE `bloginfo` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外键',
  `content` text COMMENT '内容',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='博客信息';

/*Data for the table `bloginfo` */

insert  into `bloginfo`(`id`,`content`) values (1,'YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容，YAF第1个博客内容。'),(2,'YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容，YAF第2个博客内容。');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'BLOGID',
  `content` char(255) NOT NULL DEFAULT '' COMMENT '内容',
  `created` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='评论表';

/*Data for the table `comment` */

insert  into `comment`(`id`,`bid`,`content`,`created`) values (1,1,'第1个博客 的第1条评论',1334566622),(2,1,'第1个博客 的第2条评论',1334566627);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
