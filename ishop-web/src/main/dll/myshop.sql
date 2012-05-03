/*
SQLyog Ultimate v8.63 
MySQL - 5.1.30-community-log : Database - myshop
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myshop` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myshop`;


/*Table structure for table `app_user` */

DROP TABLE IF EXISTS `app_user`;

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hint` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `credentials_expired` bit(1) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `postal_code` varchar(15) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `account_enabled` bit(1) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_user` */

insert  into `app_user`(`id`,`username`,`email`,`password_hint`,`first_name`,`last_name`,`phone_number`,`website`,`account_expired`,`account_locked`,`credentials_expired`,`city`,`province`,`postal_code`,`address`,`country`,`account_enabled`,`version`,`password`) values (-2,'admin','matt@raibledesigns.com','Not a female kitty.','Matt','Raible','','http://raibledesigns.com','\0','\0','\0','Denver','CO','80210','','US','',1,'d033e22ae348aeb5660fc2140aec35850c4da997'),(-1,'user','matt_raible@yahoo.com','A male kitty.','Tomcat!','User','','http://tomcat.apache.org','\0','\0','\0','Denver','CO','80210','','US','',1,'12dea96fec20593566ab75692c9949596833adc9');


/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`description`) values (-2,'ROLE_USER','Default role for all Users'),(-1,'ROLE_ADMIN','Administrator role (can edit Users)');

/*Table structure for table `user_` */

DROP TABLE IF EXISTS `user_`;

CREATE TABLE `user_` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `_created_date` timestamp NOT NULL DEFAULT '1983-02-01 00:00:00',
  `_last_updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `_recycled` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`_id`,`_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `user_` */

insert  into `user_`(`_id`,`_name`,`_password`,`_email`,`_created_date`,`_last_updated_date`,`_recycled`) values (1,'xuxl','xuxl','xuxl1124@gmail.com','1983-02-01 00:00:00','2012-04-27 10:15:24','N');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK143BF46A4FD90D75` (`role_id`),
  KEY `FK143BF46AF503D155` (`user_id`),
  CONSTRAINT `FK143BF46A4FD90D75` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK143BF46AF503D155` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values (-1,-2),(-2,-1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
