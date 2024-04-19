/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - att
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`att` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `att`;

/*Table structure for table `aa` */

DROP TABLE IF EXISTS `aa`;

CREATE TABLE `aa` (
  `user` varchar(20) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aa` */

insert  into `aa`(`user`,`pwd`) values ('aa','aa');

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `user` varchar(10) DEFAULT NULL,
  `pwd` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`user`,`pwd`) values ('cloud','cloud');

/*Table structure for table `dataprovider` */

DROP TABLE IF EXISTS `dataprovider`;

CREATE TABLE `dataprovider` (
  `name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gen` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `con` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Not Activated',
  `status1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataprovider` */

insert  into `dataprovider`(`name`,`pass`,`email`,`dob`,`gen`,`location`,`con`,`status`,`status1`) values ('raj','raj','raj@gmail.com','2023-12-13','male','hyderabad','8639966858','Activated','-1714345744');
insert  into `dataprovider`(`name`,`pass`,`email`,`dob`,`gen`,`location`,`con`,`status`,`status1`) values ('shan','shan','shan@gmail.com','2024-01-17','male','hyderabad','08121893257','Activated','0');

/*Table structure for table `encryptkey` */

DROP TABLE IF EXISTS `encryptkey`;

CREATE TABLE `encryptkey` (
  `filename` varchar(40) DEFAULT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` text,
  `dkey` varchar(20) DEFAULT NULL,
  `privatekey` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `encryptkey` */

insert  into `encryptkey`(`filename`,`owner`,`data`,`dkey`,`privatekey`) values ('test.txt','raj@gmail.com','hi hello how ru?\r\n\r\n','6287','dnRQosxj6QJm5+osXG2aFA==');
insert  into `encryptkey`(`filename`,`owner`,`data`,`dkey`,`privatekey`) values ('test.txt','raj@gmail.com','hi hello how ru?\r\n\r\n','9084','Jv6ZH5kXalm3PDgoWDKeJQ==');

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `file` longblob,
  `filetype` varchar(50) DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `data` longtext,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `file` */

insert  into `file`(`file`,`filetype`,`filename`,`data`,`owner`) values ('hi hello how ru?\n\n','.txt','test.txt','hi hello how ru?\n\n','raj@gmail.com');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `filename` varchar(40) DEFAULT NULL,
  `data` text,
  `owner` varchar(40) DEFAULT NULL,
  `policy` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `exp` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `umail` varchar(45) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `skey` varchar(45) DEFAULT NULL,
  `t1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`filename`,`data`,`owner`,`policy`,`time`,`exp`,`branch`,`umail`,`status`,`skey`,`t1`) values ('test.txt','f8N8CGuqxb31G3f0z0KYuWPafHDgQkygE3QkgKtKdQ0=','raj@gmail.com','scientist','2024-01-24','2','hyderabad','shivakrish5573@gmail.com','Policy Vefied','igFIyxcFzkYBGS0CFGJsAQ==','12:03');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `filename` varchar(45) DEFAULT NULL,
  `data` text,
  `owner` varchar(45) DEFAULT NULL,
  `skey` varchar(40) DEFAULT NULL,
  `policy` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `exp` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT 'No',
  `t1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`filename`,`data`,`owner`,`skey`,`policy`,`time`,`exp`,`branch`,`status`,`t1`) values ('test.txt','DjihoJqBfiA5Vfy6BOtJlaflTCAkkwZk8ehQ1EB8yZg=','raj@gmail.com','dnRQosxj6QJm5+osXG2aFA==','scientist','2024-01-24','2','hyderabad','Uploaded','12:03');
insert  into `upload`(`filename`,`data`,`owner`,`skey`,`policy`,`time`,`exp`,`branch`,`status`,`t1`) values ('test.txt','DjihoJqBfiA5Vfy6BOtJlaflTCAkkwZk8ehQ1EB8yZg=','raj@gmail.com','dnRQosxj6QJm5+osXG2aFA==','scientist','2024-01-25','2','hyderabad','Uploaded','02:01');
insert  into `upload`(`filename`,`data`,`owner`,`skey`,`policy`,`time`,`exp`,`branch`,`status`,`t1`) values ('test.txt','DjihoJqBfiA5Vfy6BOtJlaflTCAkkwZk8ehQ1EB8yZg=','raj@gmail.com','dnRQosxj6QJm5+osXG2aFA==','scientist','2024-01-25','2','hyderabad','Uploaded','14:01');
insert  into `upload`(`filename`,`data`,`owner`,`skey`,`policy`,`time`,`exp`,`branch`,`status`,`t1`) values ('test.txt','DjihoJqBfiA5Vfy6BOtJlaflTCAkkwZk8ehQ1EB8yZg=','raj@gmail.com','dnRQosxj6QJm5+osXG2aFA==','scientist','2024-01-25','2','hyderabad','Uploaded','14:01');

/*Table structure for table `uploadcloud` */

DROP TABLE IF EXISTS `uploadcloud`;

CREATE TABLE `uploadcloud` (
  `filename` varchar(45) NOT NULL,
  `data` text,
  `owner` varchar(45) DEFAULT NULL,
  `skey` varchar(40) DEFAULT NULL,
  `policy` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `exp` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT 'No',
  `t1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `uploadcloud` */

insert  into `uploadcloud`(`filename`,`data`,`owner`,`skey`,`policy`,`time`,`exp`,`branch`,`status`,`t1`) values ('test.txt','f8N8CGuqxb31G3f0z0KYuWPafHDgQkygE3QkgKtKdQ0=','raj@gmail.com','igFIyxcFzkYBGS0CFGJsAQ==','scientist','2024-01-24','2','hyderabad','Uploaded','12:03\n');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `name` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gen` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `jobposition` varchar(45) DEFAULT NULL,
  `contactno` varchar(45) DEFAULT NULL,
  `exp` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'NotActivated',
  `status1` varchar(100) DEFAULT NULL,
  `t1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`name`,`pass`,`email`,`dob`,`gen`,`location`,`jobposition`,`contactno`,`exp`,`status`,`status1`,`t1`) values ('chotu','chotu','moulalicce225@gmail.com','2024-01-09','male','hyderabad','scientist','8639966858','2','Activated','-1908989654','09:00');
insert  into `user`(`name`,`pass`,`email`,`dob`,`gen`,`location`,`jobposition`,`contactno`,`exp`,`status`,`status1`,`t1`) values ('shiva','shiva','shivakrish5573@gmail.com','2024-12-31','male','hyderabad','scientist','08121893257','2','Activated','-1805144964','00:03');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
