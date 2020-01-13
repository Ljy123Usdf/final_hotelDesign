/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.17-log : Database - hoteldesign
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hoteldesign` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hoteldesign`;

/*Table structure for table `consume` */

DROP TABLE IF EXISTS `consume`;

CREATE TABLE `consume` (
  `conid` int(11) NOT NULL AUTO_INCREMENT COMMENT '消费清单号',
  `con_cuid` int(11) DEFAULT NULL COMMENT '住户id，与customer中cu_id对应',
  `con_room` float DEFAULT NULL COMMENT '房费',
  `con_catering` float DEFAULT NULL COMMENT '餐饮消费',
  `con_other` float DEFAULT NULL COMMENT '其他消费',
  PRIMARY KEY (`conid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `consume` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cuid` int(11) NOT NULL COMMENT '入住编号',
  `cuname` varchar(10) DEFAULT NULL COMMENT '住客姓名',
  `cuidcard` int(20) DEFAULT NULL COMMENT '住客身份证',
  `movedate` varchar(20) DEFAULT NULL COMMENT '入住日期',
  `leavedate` varchar(20) DEFAULT NULL COMMENT '离店日期',
  `cutype` varchar(10) DEFAULT NULL COMMENT '住客类型:会员/非会员',
  `cusex` varchar(2) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`cuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `or_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `or_shname` varchar(15) DEFAULT NULL COMMENT '已支付的商品的名字',
  `or_shnamenumber` int(5) DEFAULT NULL COMMENT '已支付的商品的个数',
  `or_state` int(2) DEFAULT NULL COMMENT '订单状态:(0:等待送餐/1:订单已完成)',
  PRIMARY KEY (`or_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `roid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间编号',
  `rotype` int(2) DEFAULT NULL COMMENT '房间类型,和房型表rt_id相对应',
  `rocount` int(5) DEFAULT NULL COMMENT '房间总数',
  `roprice` float DEFAULT NULL COMMENT '房间价格(根据用户是否是会员进行打折后的价格)',
  `ro_cuid` int(2) DEFAULT NULL COMMENT '房间住户,与customercu_id对应',
  `ro_state` int(2) DEFAULT NULL COMMENT '房间状态(0:正常/1:维修等)',
  PRIMARY KEY (`roid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `room` */

/*Table structure for table `rootype` */

DROP TABLE IF EXISTS `rootype`;

CREATE TABLE `rootype` (
  `rt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间类型号',
  `rt_name` varchar(10) DEFAULT NULL COMMENT '房间名称',
  `rt_price` float DEFAULT NULL COMMENT '价格',
  `rt_describe` varchar(50) DEFAULT NULL COMMENT '房间描述',
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rootype` */

/*Table structure for table `shoppingcart` */

DROP TABLE IF EXISTS `shoppingcart`;

CREATE TABLE `shoppingcart` (
  `cart_cuid` int(11) DEFAULT NULL COMMENT '购物车编号,与customer中cuid相对应从而每个用户都对应一个购物车',
  `cart_shname` varchar(20) DEFAULT NULL COMMENT '购物车中所商品的名字',
  `shopnumber` int(5) DEFAULT NULL COMMENT '已添加的商品的个数',
  `shopstate` int(10) DEFAULT NULL COMMENT '0:待支付/1:已支付'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shoppingcart` */

/*Table structure for table `shops` */

DROP TABLE IF EXISTS `shops`;

CREATE TABLE `shops` (
  `shid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `shname` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `shimg` varchar(20) DEFAULT NULL COMMENT '商品图片',
  `shprice` float DEFAULT NULL COMMENT '商品价格',
  `shsurplus` varchar(20) DEFAULT '200个' COMMENT '商品剩余量',
  `shdescribe` varchar(50) DEFAULT NULL COMMENT '商品描述',
  PRIMARY KEY (`shid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shops` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `uname` varchar(10) DEFAULT NULL COMMENT '姓名',
  `uage` int(10) DEFAULT NULL COMMENT '年龄',
  `u_position` varchar(10) DEFAULT NULL COMMENT '职位',
  `ustate` int(2) DEFAULT NULL COMMENT '状态:0/1 0:停用 1:正常',
  `uaddress` varchar(20) DEFAULT NULL COMMENT '住址',
  `uimg` varchar(10) DEFAULT NULL COMMENT '个人照片',
  `ubirthdate` varchar(20) DEFAULT NULL COMMENT '出生年月',
  `uedu` varchar(10) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
