/*
Navicat MySQL Data Transfer

Source Server         : xht
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : dodo

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-06-08 23:54:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '程序设计基础', '程序设计的基础课程，主要课程为C语言的学习', '2', '2019-06-04 19:11:19', '2019-06-04 19:11:21', '1');
INSERT INTO `course` VALUES ('2', '123', '132', '2', '2019-06-08 23:51:43', '2019-06-08 23:51:43', '1');
INSERT INTO `course` VALUES ('3', '123', '123', '2', '2019-06-08 23:52:02', '2019-06-08 23:52:02', '1');

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `begin_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('1', '作业1', '1', '2', '0', '2019-06-04 19:15:30', '2019-06-04 19:15:32', '2019-06-04 19:15:34', '2019-06-04 19:15:36', '1');
INSERT INTO `exam` VALUES ('2', '123', '1', '2', '0', '2019-06-08 23:35:53', '2019-06-08 23:35:53', '2019-06-08 23:35:53', '2019-06-08 23:35:53', '0');
INSERT INTO `exam` VALUES ('3', '123', '1', '2', '0', '2019-06-08 23:42:47', '2019-06-08 23:42:47', '2019-06-08 23:42:47', '2019-06-08 23:42:47', '0');

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
INSERT INTO `exam_problem_relationship` VALUES ('1', '1', '2019-06-04 19:26:36', '2019-06-04 19:26:38', '1');
INSERT INTO `exam_problem_relationship` VALUES ('2', '1', '2019-06-04 19:26:47', '2019-06-04 19:26:48', '1');

-- ----------------------------
-- Table structure for `problem`
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem
-- ----------------------------
INSERT INTO `problem` VALUES ('1', 'test1', 'qqq', 'www', 'eee', 'rrr', '1', '2019-06-04 19:25:52', '2019-06-04 19:25:54', '1');
INSERT INTO `problem` VALUES ('2', 'test2', 'w', 'r', 'e', 'q', '2', '2019-06-04 19:26:02', '2019-06-04 19:26:00', '1');
INSERT INTO `problem` VALUES ('3', '1', '1', '1', '1', '1', '1', '2019-06-08 23:53:49', '2019-06-08 23:53:49', '1');
INSERT INTO `problem` VALUES ('4', '1', '1', '1', '1', '1', '1', '2019-06-08 23:54:09', '2019-06-08 23:54:09', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '罗伟斌', '1', '123', '123', '123', '0', '2019-05-28 18:58:37', '2019-05-28 18:58:45', '1');
INSERT INTO `user` VALUES ('2', 'teacher1', '202CB962AC59075B964B07152D234B70', '大老师', '1', '12312', '1243', '1234', '1', '2019-06-04 19:12:19', '2019-06-04 19:12:21', '1');

-- ----------------------------
-- Table structure for `user_course_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_course_relationship`;
CREATE TABLE `user_course_relationship` (
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_course_relationship
-- ----------------------------
INSERT INTO `user_course_relationship` VALUES ('1', '1', '2019-06-04 19:13:30', '2019-06-04 19:13:33', '1');
INSERT INTO `user_course_relationship` VALUES ('1', '2', '2019-06-08 23:51:43', '2019-06-08 23:51:43', '1');
INSERT INTO `user_course_relationship` VALUES ('1', '3', '2019-06-08 23:52:02', '2019-06-08 23:52:02', '1');
INSERT INTO `user_course_relationship` VALUES ('2', '2', '2019-06-08 23:51:43', '2019-06-08 23:51:43', '1');
INSERT INTO `user_course_relationship` VALUES ('2', '3', '2019-06-08 23:52:02', '2019-06-08 23:52:02', '1');

-- ----------------------------
-- Table structure for `user_exam_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_exam_relationship`;
CREATE TABLE `user_exam_relationship` (
  `exam_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`exam_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_exam_relationship
-- ----------------------------
INSERT INTO `user_exam_relationship` VALUES ('1', '1', null, '2019-06-04 19:18:46', '2019-06-04 19:18:48', '1');

-- ----------------------------
-- Table structure for `user_problem_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_problem_relationship`;
CREATE TABLE `user_problem_relationship` (
  `user_id` int(11) NOT NULL,
  `probldm_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `choose` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `updated_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`,`probldm_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_problem_relationship
-- ----------------------------
