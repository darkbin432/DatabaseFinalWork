/*
Navicat MySQL Data Transfer

Source Server         : xht
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : dodo

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2019-06-09 22:15:15
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '程序设计基础', '程序设计基础（2018-2019-1）', '2', '2019-06-08 23:51:43', '2019-06-08 23:51:43', '1');
INSERT INTO `course` VALUES ('2', 'C++程序设计', 'c++程序设计（2019-2020-1）', '2', '2019-06-08 23:52:02', '2019-06-08 23:52:02', '1');
INSERT INTO `course` VALUES ('3', '计算机组成原理', '计算机组成原理（2018-2019-2）', '3', '2019-06-09 13:50:56', '2019-06-09 13:50:59', '1');
INSERT INTO `course` VALUES ('4', 'python程序设计', 'python程序设计（2019-2020-2）', '3', '2019-06-09 13:51:42', '2019-06-09 13:51:42', '1');

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
INSERT INTO `exam` VALUES ('2', '作业2', '1', '2', '0', '2019-06-08 23:35:53', '2019-06-08 23:35:53', '2019-06-08 23:35:53', '2019-06-08 23:35:53', '1');
INSERT INTO `exam` VALUES ('3', '考试1', '1', '2', '1', '2019-06-08 23:42:47', '2019-06-08 23:42:47', '2019-06-08 23:42:47', '2019-06-08 23:42:47', '1');

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
INSERT INTO `exam_problem_relationship` VALUES ('3', '1', '2019-06-09 13:57:55', '2019-06-09 13:57:58', '1');
INSERT INTO `exam_problem_relationship` VALUES ('4', '1', '2019-06-09 13:58:12', '2019-06-09 13:58:13', '1');

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
INSERT INTO `problem` VALUES ('1', '1+1=？', '1', '2', '3', '11', '2', '2019-06-04 19:25:52', '2019-06-04 19:25:54', '1');
INSERT INTO `problem` VALUES ('2', '2+2=？', '1', '2', '3', '4', '4', '2019-06-04 19:26:02', '2019-06-04 19:26:00', '1');
INSERT INTO `problem` VALUES ('3', '1*1=？', '1', '2', '3', '4', '1', '2019-06-08 23:53:49', '2019-06-08 23:53:49', '1');
INSERT INTO `problem` VALUES ('4', '1-1=？', '1', '2', '0', '11', '3', '2019-06-08 23:54:09', '2019-06-08 23:54:09', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '学生1', '1', '123', '12345', '123', '0', '2019-06-09 13:50:00', '2019-06-09 22:14:54', '1');
INSERT INTO `user` VALUES ('2', 'teacher1', '202CB962AC59075B964B07152D234B70', '老师1', '1', '12312', '1243', '1234', '1', '2019-06-04 19:12:19', '2019-06-04 19:12:21', '1');
INSERT INTO `user` VALUES ('3', 'teacher2', '202CB962AC59075B964B07152D234B70', '老师2', '0', '1231', '234', '124', '1', '2019-06-09 13:55:12', '2019-06-09 13:55:14', '1');

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
INSERT INTO `user_course_relationship` VALUES ('2', '1', '2019-06-09 13:51:42', '2019-06-09 13:51:42', '1');
INSERT INTO `user_course_relationship` VALUES ('2', '2', '2019-06-08 23:51:43', '2019-06-08 23:51:43', '1');
INSERT INTO `user_course_relationship` VALUES ('2', '3', '2019-06-08 23:52:02', '2019-06-08 23:52:02', '1');
INSERT INTO `user_course_relationship` VALUES ('2', '4', '2019-06-09 13:51:42', '2019-06-09 13:51:42', '1');

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
INSERT INTO `user_exam_relationship` VALUES ('2', '1', null, '2019-06-09 16:09:44', '2019-06-09 16:09:46', '1');
INSERT INTO `user_exam_relationship` VALUES ('3', '1', null, '2019-06-09 16:09:57', '2019-06-09 16:10:00', '1');

-- ----------------------------
-- Table structure for `user_problem_relationship`
-- ----------------------------
DROP TABLE IF EXISTS `user_problem_relationship`;
CREATE TABLE `user_problem_relationship` (
  `user_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `choose` int(11) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`,`problem_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_problem_relationship
-- ----------------------------
INSERT INTO `user_problem_relationship` VALUES ('1', '1', '1', '2', '2019-06-09 15:57:56', '2019-06-09 19:06:55', '1');
INSERT INTO `user_problem_relationship` VALUES ('1', '2', '1', '2', '2019-06-09 16:12:13', '2019-06-09 19:08:13', '1');
INSERT INTO `user_problem_relationship` VALUES ('1', '3', '1', '1', '2019-06-09 16:29:33', '2019-06-09 19:07:02', '1');
INSERT INTO `user_problem_relationship` VALUES ('1', '4', '1', '3', '2019-06-09 16:29:36', '2019-06-09 19:07:05', '1');
