/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50140
Source Host           : localhost:3306
Source Database       : university

Target Server Type    : MYSQL
Target Server Version : 50140
File Encoding         : 65001

Date: 2021-04-20 23:12:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `college`
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `coname` varchar(255) DEFAULT NULL COMMENT '学院名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '计算机科学学院');
INSERT INTO `college` VALUES ('2', '管理学院');
INSERT INTO `college` VALUES ('3', '艺术学院');
INSERT INTO `college` VALUES ('4', '机械学院');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `cname` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `csore` int(11) DEFAULT NULL COMMENT '学分',
  `ctype` varchar(255) DEFAULT NULL COMMENT '课程类型',
  `snumber` int(11) DEFAULT NULL COMMENT '学生人数',
  `maxnumber` int(11) DEFAULT NULL COMMENT '最高人数',
  `btime` int(11) DEFAULT NULL COMMENT '开始周数',
  `etime` int(11) DEFAULT NULL COMMENT '结束周数',
  `weeks` varchar(255) DEFAULT NULL COMMENT '星期数',
  `classnum` varchar(255) DEFAULT NULL COMMENT '上课节数',
  `cplace` varchar(255) DEFAULT NULL COMMENT '上课地点',
  `teid` int(11) DEFAULT NULL COMMENT '学期编号',
  `tid` int(11) DEFAULT NULL COMMENT '教师编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '大学英语①', '2', '必修', '20', '30', '1', '7', '星期一', '上午1-2', '教一103', '1', '1');
INSERT INTO `course` VALUES ('2', '计算机基础', '2', '必修', '20', '30', '1', '7', '星期二', '下午5-6', '教二208', '1', '2');
INSERT INTO `course` VALUES ('3', '大学数学', '2', '必修', '20', '30', '1', '7', '星期三', '上午3-4', '教三101', '1', '4');
INSERT INTO `course` VALUES ('4', '软件工程', '2', '必修', '20', '30', '3', '9', '星期五', '上午1-2', '教三209', '2', '5');
INSERT INTO `course` VALUES ('5', 'C语言程序设计', '2', '必修', '20', '30', '3', '9', '星期一', '上午1-2', '教三403', '2', '6');
INSERT INTO `course` VALUES ('6', '多媒体', '2', '必修', '20', '30', '3', '9', '星期二', '上午1-2', '教二209', '2', '7');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `dname` varchar(255) DEFAULT NULL COMMENT '专业名称',
  `coid` int(11) DEFAULT NULL COMMENT '学院编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '计算机科学与技术1班', '1');
INSERT INTO `department` VALUES ('2', '计算机科学与技术2班', '1');
INSERT INTO `department` VALUES ('3', '计算机科学与技术3班', '1');
INSERT INTO `department` VALUES ('4', '财务管理1班', '2');
INSERT INTO `department` VALUES ('5', '物流管理1班', '2');
INSERT INTO `department` VALUES ('6', '播音主持', '3');
INSERT INTO `department` VALUES ('7', '自动化', '4');

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `cid` int(11) DEFAULT NULL COMMENT '课程编号',
  `score` int(11) DEFAULT NULL COMMENT '学分',
  `message` varchar(255) DEFAULT NULL COMMENT '备注',
  `sid` int(11) DEFAULT NULL COMMENT '学生编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '1', '89', null, '1');
INSERT INTO `grade` VALUES ('2', '2', '45', null, '1');
INSERT INTO `grade` VALUES ('3', '2', '74', null, '2');
INSERT INTO `grade` VALUES ('5', '2', '79', null, '3');
INSERT INTO `grade` VALUES ('6', '2', '89', null, '6');
INSERT INTO `grade` VALUES ('7', '1', '88', null, '2');

-- ----------------------------
-- Table structure for `plans`
-- ----------------------------
DROP TABLE IF EXISTS `plans`;
CREATE TABLE `plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `csid` int(11) DEFAULT NULL COMMENT '课程编号',
  `dsid` int(11) DEFAULT NULL COMMENT '专业编号',
  `tsid` int(11) DEFAULT NULL COMMENT '学期编号',
  `pstatus` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plans
-- ----------------------------
INSERT INTO `plans` VALUES ('1', '1', '1', '1', null);
INSERT INTO `plans` VALUES ('2', '2', '1', '1', null);
INSERT INTO `plans` VALUES ('3', '3', '1', '1', null);
INSERT INTO `plans` VALUES ('4', '4', '1', '2', null);
INSERT INTO `plans` VALUES ('5', '5', '1', '2', null);
INSERT INTO `plans` VALUES ('6', '6', '1', '2', null);
INSERT INTO `plans` VALUES ('7', '1', '4', '1', null);
INSERT INTO `plans` VALUES ('8', '2', '4', '1', null);

-- ----------------------------
-- Table structure for `records`
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `rtime` varchar(255) DEFAULT NULL COMMENT '操作时间',
  `rcontents` varchar(255) DEFAULT NULL COMMENT '内容',
  `uid` int(11) DEFAULT NULL COMMENT '操作人编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of records
-- ----------------------------

-- ----------------------------
-- Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sname` varchar(255) DEFAULT NULL COMMENT '学生姓名',
  `studentid` int(16) DEFAULT NULL COMMENT '学号',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `birth` varchar(255) DEFAULT NULL COMMENT '出生时间',
  `place` varchar(255) DEFAULT NULL COMMENT '籍贯',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `sphone` varchar(255) DEFAULT NULL,
  `smail` varchar(255) DEFAULT NULL COMMENT '学生邮箱',
  `pmail` varchar(255) DEFAULT NULL COMMENT '家长邮箱',
  `ptele` varchar(255) DEFAULT NULL COMMENT '家长电话',
  `myself` varchar(255) DEFAULT NULL COMMENT '自我评价',
  `did` int(11) DEFAULT NULL COMMENT '专业编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', '    张三', '566666666', '男', '1998-12-31', '    武汉', '1', '    178474848@qq.com', '    53636376@qq.com', '   18930474453', '   18930474452', '还可以', '1');
INSERT INTO `students` VALUES ('2', '赵阳', '2016031013', '男', '995-9-9', '上海', '12', null, '53636446@qq.com', null, null, '可以', '1');
INSERT INTO `students` VALUES ('3', '王鑫', '2016031015', '男', '995-9-9', '重庆', '13', null, '53636466@qq.com', null, null, null, '1');
INSERT INTO `students` VALUES ('4', '刘备', null, null, null, null, '14', null, null, null, null, null, '2');
INSERT INTO `students` VALUES ('5', '张飞', null, null, null, null, '15', null, null, null, null, null, '2');
INSERT INTO `students` VALUES ('6', '张角', '312241', '男', '1998-08-19', '长沙', '16', null, '203948494@qq.com', null, null, null, '1');
INSERT INTO `students` VALUES ('7', '孔明', '312242', '男', '1998-11-20', '长沙', '20', null, '203948484@qq.com', null, null, null, '4');
INSERT INTO `students` VALUES ('8', '小乔', '312243', '女', '2019-04-28', '长沙', '22', null, '203948484@qq.com', null, null, null, '1');
INSERT INTO `students` VALUES ('10', '大乔', '21442348', '女', '2019-04-04', '长沙', '26', '18909864221', '203948494@qq.com', '20394845@qq.com', '18909864222', null, '1');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tname` varchar(255) DEFAULT NULL COMMENT '教师姓名',
  `dsid` int(11) DEFAULT NULL COMMENT '专业编号',
  `tetype` varchar(255) DEFAULT NULL COMMENT '教师类型',
  `uid` int(11) DEFAULT NULL COMMENT '用户编号',
  `authorizes` varchar(255) DEFAULT NULL COMMENT '授权',
  `tmail` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '张凡', '1', '任课', '2', null, null);
INSERT INTO `teacher` VALUES ('2', '王子新', '1', '班主任', '3', null, null);
INSERT INTO `teacher` VALUES ('3', '赵蓝', '1', '任课', '11', null, null);
INSERT INTO `teacher` VALUES ('4', '李四', '1', '任课', '5', null, null);
INSERT INTO `teacher` VALUES ('5', '王五', '1', '任课', '6', null, null);
INSERT INTO `teacher` VALUES ('6', '刘六', '1', '任课', '7', null, null);
INSERT INTO `teacher` VALUES ('7', '冯八', '1', '任课', '8', null, null);
INSERT INTO `teacher` VALUES ('8', '赵信', '4', '任课', '9', null, null);
INSERT INTO `teacher` VALUES ('9', '王宝强', '5', '任课', '10', null, null);
INSERT INTO `teacher` VALUES ('10', '孙策', '4', '任课', '19', null, '2612463476@qq.com');
INSERT INTO `teacher` VALUES ('11', '王乐', '3', '任课', '21', null, '2612463446@qq.com');

-- ----------------------------
-- Table structure for `teams`
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `tename` varchar(255) DEFAULT NULL COMMENT '学期名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES ('1', '第一学期');
INSERT INTO `teams` VALUES ('2', '第二学期');
INSERT INTO `teams` VALUES ('3', '第三学期');
INSERT INTO `teams` VALUES ('4', '第四学期');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `role` varchar(255) DEFAULT NULL COMMENT '权限等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '3');
INSERT INTO `user` VALUES ('2', '2001', 'admin', '2');
INSERT INTO `user` VALUES ('3', '2002', 'admin', '2');
INSERT INTO `user` VALUES ('4', '3001', 'admin', '3');
INSERT INTO `user` VALUES ('5', '2003', 'admin', '2');
INSERT INTO `user` VALUES ('6', '2004', 'admin', '2');
INSERT INTO `user` VALUES ('7', '2005', 'admin', '2');
INSERT INTO `user` VALUES ('8', '2006', 'admin', '2');
INSERT INTO `user` VALUES ('9', '2007', 'admin', '2');
INSERT INTO `user` VALUES ('10', '2008', 'admin', '2');
INSERT INTO `user` VALUES ('11', '2009', 'admin', '2');
INSERT INTO `user` VALUES ('12', '1002', 'admin', '1');
INSERT INTO `user` VALUES ('13', '1003', 'admin', '1');
INSERT INTO `user` VALUES ('14', '1004', 'admin', '1');
INSERT INTO `user` VALUES ('15', '1005', 'admin', '1');
INSERT INTO `user` VALUES ('16', '1006', 'admin', '1');
INSERT INTO `user` VALUES ('17', '2010', 'admin', '2');
INSERT INTO `user` VALUES ('19', '2011', 'admin', '2');
INSERT INTO `user` VALUES ('20', '1010', 'admin', '1');
INSERT INTO `user` VALUES ('21', '2012', 'admin', '2');
INSERT INTO `user` VALUES ('22', '1011', 'admin', '1');
INSERT INTO `user` VALUES ('26', '1012', 'admin', '1');

-- ----------------------------
-- Table structure for `zhibiao`
-- ----------------------------
DROP TABLE IF EXISTS `zhibiao`;
CREATE TABLE `zhibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `sid` int(11) DEFAULT NULL COMMENT '学生编号',
  `fenlv` int(255) DEFAULT NULL COMMENT '分率',
  `ftype` varchar(255) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhibiao
-- ----------------------------
INSERT INTO `zhibiao` VALUES ('1', '1', '78', '上课出勤');
INSERT INTO `zhibiao` VALUES ('2', '1', '78', '作业完成');
INSERT INTO `zhibiao` VALUES ('3', '1', '88', '实验出勤');
INSERT INTO `zhibiao` VALUES ('4', '1', '67', '考试成绩');
INSERT INTO `zhibiao` VALUES ('5', '2', '45', '上课出勤');
INSERT INTO `zhibiao` VALUES ('6', '2', '64', '作业完成');
INSERT INTO `zhibiao` VALUES ('7', '2', '78', '实验出勤');
INSERT INTO `zhibiao` VALUES ('8', '2', '90', '考试成绩');
INSERT INTO `zhibiao` VALUES ('9', '3', '76', '上课出勤');
INSERT INTO `zhibiao` VALUES ('10', '3', '89', '作业完成');
INSERT INTO `zhibiao` VALUES ('11', '3', '99', '实验出勤');
INSERT INTO `zhibiao` VALUES ('12', '3', '87', '考试成绩');
INSERT INTO `zhibiao` VALUES ('13', '4', '67', '上课出勤');
INSERT INTO `zhibiao` VALUES ('14', '4', '87', '作业完成');
INSERT INTO `zhibiao` VALUES ('15', '4', '56', '实验出勤');
INSERT INTO `zhibiao` VALUES ('16', '4', '45', '考试成绩');
INSERT INTO `zhibiao` VALUES ('17', '5', '33', '上课出勤');
INSERT INTO `zhibiao` VALUES ('18', '5', '67', '作业完成');
INSERT INTO `zhibiao` VALUES ('19', '5', '87', '实验出勤');
INSERT INTO `zhibiao` VALUES ('20', '5', '23', '考试成绩');
INSERT INTO `zhibiao` VALUES ('21', '6', '64', '上课出勤');
INSERT INTO `zhibiao` VALUES ('22', '6', '86', '作业完成');
INSERT INTO `zhibiao` VALUES ('23', '6', '90', '实验出勤');
INSERT INTO `zhibiao` VALUES ('24', '6', '98', '考试成绩');
INSERT INTO `zhibiao` VALUES ('25', '7', '87', '上课出勤');
INSERT INTO `zhibiao` VALUES ('26', '7', '67', '作业完成');
INSERT INTO `zhibiao` VALUES ('27', '7', '89', '实验出勤');
INSERT INTO `zhibiao` VALUES ('28', '7', '88', '考试成绩');
INSERT INTO `zhibiao` VALUES ('29', '10', '61', '上课出勤');
INSERT INTO `zhibiao` VALUES ('30', '10', '90', '作业完成');
