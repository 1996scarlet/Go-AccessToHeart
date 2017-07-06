/*
Navicat MySQL Data Transfer

Source Server         : golang
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : access_to_heart

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-07-06 11:08:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for heart
-- ----------------------------
DROP TABLE IF EXISTS `heart`;
CREATE TABLE `heart` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `heartBeat` int(11) NOT NULL,
  `heartLine` varchar(255) NOT NULL,
  `heartState` int(11) NOT NULL,
  `Profile` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Profile` (`Profile`),
  CONSTRAINT `heart_ibfk_1` FOREIGN KEY (`Profile`) REFERENCES `profile_user` (`mappingId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for profile_user
-- ----------------------------
DROP TABLE IF EXISTS `profile_user`;
CREATE TABLE `profile_user` (
  `mappingId` int(11) NOT NULL AUTO_INCREMENT,
  `profileName` varchar(16) NOT NULL,
  `User` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mappingId`),
  KEY `User` (`User`),
  CONSTRAINT `profile_user_ibfk_1` FOREIGN KEY (`User`) REFERENCES `user` (`userID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
