# Host: 127.0.0.1  (Version 5.0.22-community-nt)
# Date: 2019-06-23 12:29:58
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'admin','123');

#
# Structure for table "idea"
#

DROP TABLE IF EXISTS `idea`;
CREATE TABLE `idea` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL,
  `text` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "idea"
#

INSERT INTO `idea` VALUES (5,'tom','远山','1801392620@qq.com'),(7,'tom','测试','1801392026@qq.com'),(9,'tom','测试','1801392620@qq.com'),(12,'kunkun','测试','1801392620@qq.com');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `password1` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'tom','123','123'),(4,'lili','123','123'),(5,'khb','123','123'),(6,'jack','123','123'),(7,'kunkun','123','123');
