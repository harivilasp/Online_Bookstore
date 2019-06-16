/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.0-m2-community : Database - bookstore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bookstore`;

/*Table structure for table `admindata` */

DROP TABLE IF EXISTS `admindata`;

CREATE TABLE `admindata` (
  `name` varchar(80) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `contact` decimal(15,0) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admindata` */

insert  into `admindata`(`name`,`address`,`contact`,`email`) values ('newadmin','admin home','99999999999','admin@gmail.com');

/*Table structure for table `book_orders` */

DROP TABLE IF EXISTS `book_orders`;

CREATE TABLE `book_orders` (
  `orderid` int(5) DEFAULT NULL,
  `bookid` varchar(90) DEFAULT NULL,
  `cartid` int(5) DEFAULT NULL,
  `amount` decimal(5,0) DEFAULT NULL,
  `order_date` varchar(30) DEFAULT NULL,
  `del_date` varchar(40) DEFAULT NULL,
  `del_status` int(11) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_orders` */

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookid` varchar(90) DEFAULT NULL,
  `book_name` varchar(90) DEFAULT NULL,
  `author` varchar(90) DEFAULT NULL,
  `book_subject` varchar(90) DEFAULT NULL,
  `publisher` varchar(90) DEFAULT NULL,
  `isbn` varchar(90) DEFAULT NULL,
  `price` decimal(9,0) DEFAULT NULL,
  `description` varchar(90) DEFAULT NULL,
  `qty` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `books` */

insert  into `books`(`bookid`,`book_name`,`author`,`book_subject`,`publisher`,`isbn`,`price`,`description`,`qty`) values (NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('admin','smdklln','kdsnlksml','mkcsdlkmcl','dkfmgdlfkmq','FDGDF434','200','fdkmgl',2),('1010','mybook','iamauthor','CSE','iampublisher','ASDF4554','200','this is description',1),('hari','Programing in C','Denis Richie','CSE','Hari Publications','HRI444','100','Awesome Book ',2),('book','book','jbkjjk','kjbkbkb','kbkbkb','jbkjbnk','120','kjsknb',1);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `bookid` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

insert  into `cart`(`bookid`,`date`,`email`) values ('dfjkds','2019-06-03','user@gmail.com'),('dfjkds','2019-06-03','user@gmail.com'),('dfjkds','2019-06-03','user@gmail.com'),('dfjkds','2019-06-03','user@gmail.com'),('dfjkds','2019-06-03','user@gmail.com'),('dfdsl','2019-06-03','user@gmail.com');

/*Table structure for table `logindata` */

DROP TABLE IF EXISTS `logindata`;

CREATE TABLE `logindata` (
  `email` varchar(80) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `usertype` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `logindata` */

insert  into `logindata`(`email`,`password`,`usertype`) values ('usernew@gmail.com','usernew','user'),('admin@gmail.com','admin','admin'),('hari@gmail.com','hari','user'),('user@gmail.com','user','user'),('','','user');

/*Table structure for table `userdata` */

DROP TABLE IF EXISTS `userdata`;

CREATE TABLE `userdata` (
  `name` varchar(80) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `contact` decimal(15,0) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `rollno` varchar(40) DEFAULT NULL,
  `branch` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdata` */

insert  into `userdata`(`name`,`address`,`contact`,`email`,`rollno`,`branch`) values ('usernew','gumanpura','218736812','usernew@gmail.com',NULL,'123456'),('hari','hari_home','833490','hari@gmail.com',NULL,'18bce'),('ritik','dadabari','99999999999','',NULL,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
