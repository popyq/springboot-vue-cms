/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : bishe

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 07/06/2023 10:10:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `score` int(0) NULL DEFAULT NULL COMMENT '学分',
  `times` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上课时间',
  `state` tinyint(1) NULL DEFAULT NULL COMMENT '是否开课',
  `teacher_id` int(0) NULL DEFAULT NULL COMMENT '授课老师id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '高等数学', 5, '20', 0, 9);
INSERT INTO `course` VALUES (2, '大学物理', 2, '9', NULL, 8);
INSERT INTO `course` VALUES (3, '大学语文', 3, '12', NULL, 9);
INSERT INTO `course` VALUES (4, '大学Java', 10, '40', NULL, 8);

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course`  (
  `student_id` int(0) NOT NULL COMMENT '学生id',
  `course_id` int(0) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`student_id`, `course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES (11, 1);
INSERT INTO `student_course` VALUES (11, 2);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('user', 'el-icon-user', 'icon');
INSERT INTO `sys_dict` VALUES ('house', 'el-icon-house', 'icon');
INSERT INTO `sys_dict` VALUES ('menu', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` VALUES ('s-custom', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` VALUES ('s-grid', 'el-icon-s-grid', 'icon');
INSERT INTO `sys_dict` VALUES ('document', 'el-icon-document', 'icon');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint(0) NULL DEFAULT NULL COMMENT '文件大小',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下载链接',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用链接',
  `md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件md5',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (4, '阿狗.jpg', 'jpg', 22, 'http://localhost:9090/file/6738f77acdbf40e8b6e9f149bf9b00a4.jpg', 0, 1, '70f2dda0c7bb4b876a1df8464f2cdf07');
INSERT INTO `sys_file` VALUES (5, '01.jpg', 'jpg', 22, 'http://localhost:9090/file/6738f77acdbf40e8b6e9f149bf9b00a4.jpg', 1, 1, '70f2dda0c7bb4b876a1df8464f2cdf07');
INSERT INTO `sys_file` VALUES (6, '01.jpg', 'jpg', 22, 'http://localhost:9090/file/6738f77acdbf40e8b6e9f149bf9b00a4.jpg', 1, 1, '70f2dda0c7bb4b876a1df8464f2cdf07');
INSERT INTO `sys_file` VALUES (7, '01.jpg', 'jpg', 22, 'http://localhost:9090/file/6738f77acdbf40e8b6e9f149bf9b00a4.jpg', 0, 1, '70f2dda0c7bb4b876a1df8464f2cdf07');
INSERT INTO `sys_file` VALUES (8, '73133a3175ce84f134db65ba24223f28.gif', 'gif', 224, 'http://localhost:9090/file/7b54f6a014d84a1bb2f1c6a69efa4ad0.gif', 1, 1, '7a34b33270e29d36294baf6898d16691');
INSERT INTO `sys_file` VALUES (9, '阿狗.jpg', 'jpg', 22, 'http://localhost:9090/file/6738f77acdbf40e8b6e9f149bf9b00a4.jpg', 0, 1, '70f2dda0c7bb4b876a1df8464f2cdf07');
INSERT INTO `sys_file` VALUES (10, '73133a3175ce84f134db65ba24223f28.gif', 'gif', 224, 'http://localhost:9090/file/7b54f6a014d84a1bb2f1c6a69efa4ad0.gif', 1, 0, '7a34b33270e29d36294baf6898d16691');
INSERT INTO `sys_file` VALUES (11, '阿狗.jpg', 'jpg', 22, 'http://localhost:9090/file/6738f77acdbf40e8b6e9f149bf9b00a4.jpg', 1, 1, '70f2dda0c7bb4b876a1df8464f2cdf07');
INSERT INTO `sys_file` VALUES (12, '头像_1.jpg', 'jpg', 31, 'http://localhost:9090/file/1cf747d890d6461d9dcdcd81a75b830e.jpg', 0, 1, '3075982284610b501ac45d26bac99c5d');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `pid` int(0) NULL DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2077675521 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '主页', '/home', 'el-icon-house', NULL, NULL, 'Home');
INSERT INTO `sys_menu` VALUES (2, '系统管理', NULL, 'el-icon-s-grid', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, '菜单管理', '/menu', 'el-icon-menu', NULL, 2, 'Role');
INSERT INTO `sys_menu` VALUES (4, '用户管理', '/user', 'el-icon-user', NULL, 2, 'User');
INSERT INTO `sys_menu` VALUES (5, '角色管理', '/role', 'el-icon-s-custom', NULL, 2, 'Menu');
INSERT INTO `sys_menu` VALUES (6, '文件管理', '/file', 'el-icon-document', NULL, 2, 'File');
INSERT INTO `sys_menu` VALUES (756502530, '课程管理', '/course', 'el-icon-menu', '课程管理', NULL, 'Course');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` VALUES (2, '普通用户', '普通用户', 'ROLE_USER');
INSERT INTO `sys_role` VALUES (8, '学生', '学生', 'ROLE_STUDENT');
INSERT INTO `sys_role` VALUES (9, '老师', '老师', 'ROLE_TEACHER');
INSERT INTO `sys_role` VALUES (10, '数学', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int(0) NOT NULL COMMENT '角色id',
  `menu_id` int(0) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 756502530);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (8, 1);
INSERT INTO `sys_role_menu` VALUES (8, 756502530);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'di',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '123', '管理员', 'tansan@163.com', '15280809090', '安徽', '2023-04-01 00:42:22', 'http://localhost:9090/file/6738f77acdbf40e8b6e9f149bf9b00a4.jpg', 'ROLE_ADMIN');
INSERT INTO `sys_user` VALUES (2, 'zhu', '123', '猪八戒', 'zhu@163.com', '13323232323', '高老庄', '2023-05-14 01:13:23', 'https://img2.baidu.com/it/u=3217093043,2045983727&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1684602000&t=b6c14bc28e0a8f06da2918b3f08bdea9', NULL);
INSERT INTO `sys_user` VALUES (3, 'shi', '123', '唐生', 'zhu@163.com', '15280809090', '安徽合肥', '2023-09-01 00:33:54', 'https://img1.baidu.com/it/u=2989328744,3060360476&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1684602000&t=39c60d5aea7fa5d5e12b793d07502ff4', NULL);
INSERT INTO `sys_user` VALUES (4, 'lo', '123', '唐三藏', 'zhu@163.com', '15280809090', '安徽合肥', '2023-05-19 00:34:24', 'https://img2.baidu.com/it/u=3303117953,251541666&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1684602000&t=7faf8322fc805c5c850c7b126cef130c', NULL);
INSERT INTO `sys_user` VALUES (5, 'ka', '123', '白龙马', 'zhu@163.com', '13323232323', '高老庄', '2023-05-19 09:43:20', 'https://img2.baidu.com/it/u=3052398030,2149231252&fm=253&app=138&size=w931&n=0&f=JPEG&fmt=auto?sec=1684602000&t=b67b117b0953ae0a0b05b85f54048750', NULL);
INSERT INTO `sys_user` VALUES (6, 'fu', '123', '白骨精', 'zhu@163.com', '15280809090', '安徽合肥', '2023-12-01 09:43:20', NULL, NULL);
INSERT INTO `sys_user` VALUES (7, 'hen', '123', '托塔天王', 'zhu@163.com', '15280809090', '安徽合肥', '2023-05-19 09:43:20', NULL, 'ROLE_USER');
INSERT INTO `sys_user` VALUES (8, 'ji', '123', '刘彪文老师', 'zhu@163.com', '13323232323', '高老庄', '2023-05-19 09:49:36', NULL, 'ROLE_TEACHER');
INSERT INTO `sys_user` VALUES (9, 'liu', '123', '王自健老师', 'zhu@163.com', '15280809090', '安徽合肥', '2023-05-19 09:49:36', NULL, 'ROLE_TEACHER');
INSERT INTO `sys_user` VALUES (10, 'pan', '123', '黄蕾蕾', 'tansan@163.com', '15280809090', '安徽合肥', '2023-11-01 09:54:13', NULL, 'ROLE_STUDENT');
INSERT INTO `sys_user` VALUES (11, 'ren', '123', '李明', 'zhu@163.com', '13323232323', '高老庄', '2023-01-01 09:54:13', 'http://localhost:9090/file/1cf747d890d6461d9dcdcd81a75b830e.jpg', 'ROLE_STUDENT');

SET FOREIGN_KEY_CHECKS = 1;
