/*
 Navicat Premium Data Transfer

 Source Server         : 10.6.31.240_dw_user生产库
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : 10.6.31.240:3306
 Source Schema         : dw_metadata

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 27/06/2018 16:04:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for meta_role
-- ----------------------------
DROP TABLE IF EXISTS `meta_role`;
CREATE TABLE `meta_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色说明',
  `is_delete` tinyint(1) DEFAULT 0 COMMENT '是否删除，0: 不删除，1：删除，默认0',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `delete_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色基本信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of meta_role
-- ----------------------------
INSERT INTO `meta_role` VALUES (-10, '1', '1', 0, '2017-12-14 18:15:57', '2017-12-14 18:15:57', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (1, '系统管理员', '全部权限', 0, '2017-11-30 17:23:47', '2017-11-30 17:25:56', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (2, 'DDL', '进行DDL操作', 0, '2017-11-30 17:25:48', '2017-11-30 17:26:38', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (3, '创建数据库', '创建数据库', 0, '2017-11-30 17:29:10', '2018-01-12 17:52:52', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (4, 'hive导航', '左侧导航栏hive', 0, '2017-12-04 18:28:54', '2018-06-20 18:28:12', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (5, 'presto导航', '左侧导航栏presto', 0, '2017-12-14 10:23:47', '2018-06-20 18:28:48', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (6, '只读', '只读', 0, '2017-12-14 14:53:35', '2017-12-14 14:53:35', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (8, '2', '2', 0, '2017-12-14 18:16:08', '2017-12-14 18:16:08', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (9, '机器学习', '可读写', 0, '2017-12-18 10:14:00', '2017-12-18 10:14:00', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (10, '广告部门', '可写', 0, '2017-12-19 15:08:52', '2017-12-19 15:08:52', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (11, '捕鱼达人', 'all', 0, '2017-12-20 15:57:35', '2017-12-20 15:57:35', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (12, '数据分析', 'raw_ngmobile_log.db_a_s_u', 0, '2017-12-21 10:27:02', '2017-12-21 10:27:02', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (13, 'pri_ops', 'all', 0, '2017-12-21 14:29:44', '2017-12-21 14:29:44', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (14, 'pls+mp_pay_log', 'all', 0, '2018-01-08 14:27:44', '2018-01-08 14:27:44', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (15, '36ji', 'kexie', 0, '2018-01-10 15:23:08', '2018-01-10 15:23:08', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (16, '广告发行增改', '二级主题', 0, '2018-01-26 15:07:21', '2018-01-26 15:07:21', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (17, '库pri_mfa', '可读写', 0, '2018-03-06 18:45:23', '2018-03-06 18:45:23', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (18, '库pri_mfa', '可读写', 0, '2018-03-06 18:45:23', '2018-03-06 18:45:23', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (19, '库pri_36jim', '可增删查改', 0, '2018-03-24 15:15:20', '2018-03-24 15:15:20', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (20, '库data_hub', '可增删查改', 0, '2018-04-10 11:10:33', '2018-04-10 11:10:33', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (21, '库data_analyze_tag', '可增删查改', 0, '2018-04-12 14:31:11', '2018-04-12 14:31:11', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (22, '库data_analyze', '可增删查改', 0, '2018-04-16 14:28:59', '2018-04-16 14:28:59', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (23, '库data_analyze_wooduan', '可增删查改', 0, '2018-04-26 09:38:32', '2018-04-26 09:38:32', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (24, '库gameeco_raw_txt', '可增删查改', 0, '2018-05-08 09:59:11', '2018-05-08 09:59:11', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (26, '技术资源平台', '可增删查改', 0, '2018-05-31 16:29:22', '2018-05-31 16:29:22', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (27, '数据技术', '可增删查改', 0, '2018-06-07 16:13:15', '2018-06-07 16:13:20', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (28, '库data_analyze_topresto', '可增删查改', 0, '2018-06-12 15:48:19', '2018-06-12 15:48:19', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (29, '库gamelog_raw', '可增删查改', 0, '2018-06-14 13:53:48', '2018-06-14 13:53:48', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (30, '海外发行中心', '只读', 0, '2018-06-20 18:57:00', '2018-06-20 18:57:00', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (32, '库pri_supersdk', '只读', 0, '2018-06-22 10:56:39', '2018-06-22 10:56:39', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (33, '库pri_tsjy_eoa', '只读', 0, '2018-06-22 10:57:27', '2018-06-22 10:57:27', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (34, '库gamelog_raw', '只读', 0, '2018-06-22 11:09:09', '2018-06-22 11:09:09', '0000-00-00 00:00:00');
INSERT INTO `meta_role` VALUES (35, '库gameeco_raw', '修改', 0, '2018-06-26 09:57:31', '2018-06-26 09:57:31', '0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
