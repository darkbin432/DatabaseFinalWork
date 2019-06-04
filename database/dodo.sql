/*
Navicat MySQL Data Transfer

Source Server         : xht
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : dodo

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-06-04 19:08:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `begin_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------

-- ----------------------------
-- Table structure for `exam_problem_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `exam_problem_relationship`;
CREATE TABLE `exam_problem_relationship` (
  `problem_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`problem_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_problem_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for `mail`
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` varchar(45) NOT NULL,
  `send_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for `problem`
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `id` int(11) NOT NULL,
  `problem_face` varchar(2000) NOT NULL,
  `problem_choose_1` varchar(255) NOT NULL,
  `problem_choose_2` varchar(255) NOT NULL,
  `problem_choose_3` varchar(255) NOT NULL,
  `problem_choose_4` varchar(255) NOT NULL,
  `answer` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '123', '123', '123', '123', '123', '123', '1', '2019-05-28 18:58:37', '2019-05-28 18:58:45', '1');

-- ----------------------------
-- Table structure for `user_course_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_course_relationship`;
CREATE TABLE `user_course_relationship` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_course_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for `user_exam_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_exam_relationship`;
CREATE TABLE `user_exam_relationship` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_exam_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for `user_mail_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_mail_relationship`;
CREATE TABLE `user_mail_relationship` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_mail_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for `user_problem_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_problem_relationship`;
CREATE TABLE `user_problem_relationship` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `probldm_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `choose` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `updated_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_problem_relationship
-- ----------------------------
