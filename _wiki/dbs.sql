/*
 Navicat Premium Data Transfer

 Source Server         : 10.21.32.198mob_meta
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : 10.21.32.198:3306
 Source Schema         : dw_metadata

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 17/07/2018 18:19:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dbs
-- ----------------------------
DROP TABLE IF EXISTS `dbs`;
CREATE TABLE `dbs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL COMMENT '游戏id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据库名称',
  `db_location_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据库HDFS路径',
  `engine_type` tinyint(1) DEFAULT 1 COMMENT '数据来源类型,1：hive，2：kafka，3:elasticsearch，4:other',
  `owner` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建者用户名',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '数据库注释',
  `db_create_time` varchar(255) COMMENT '数据库创建时间',
  `db_modify_time` varchar(255) COMMENT '数据库修改时间',
  `is_delete` tinyint(1) DEFAULT 0 COMMENT '是否删除，0: 不删除，1：删除，默认0',
  `create_time` varchar(255) COMMENT '创建时间',
  `update_time` varchar(255) COMMENT '更新时间',
  `delete_time` varchar(255) COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79333 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dbs
-- ----------------------------
INSERT INTO `dbs` VALUES (1, NULL, 'default', 'hdfs://ShareSdkHadoop/user/hive/warehouse', 1, 'public', 'Default Hive database', '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (2, NULL, 'rp_sdk_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (3, NULL, 'dm_sdk_mapping', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_sdk_mapping.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (4, NULL, 'dm_sdk_master', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_sdk_master.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (5, NULL, 'dm_sdk_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_sdk_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (6, NULL, 'dw_ext_crawl', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_ext_crawl.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (7, NULL, 'dw_sdk_log', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_sdk_log.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (8, NULL, 'rp_ext_team', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_ext_team.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (9, NULL, 'rp_sdk_dmc', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_dmc.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (10, NULL, 'rp_sdk_dmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_dmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (11, NULL, 'tp_sdk_analy', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_sdk_analy.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (12, NULL, 'tp_sdk_model', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_sdk_model.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (13, NULL, 'tp_sdk_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_sdk_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (14, NULL, 'dw_appgo_crawl', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_appgo_crawl.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (15, NULL, 'test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/test.db', 1, 'chuanbing.zhu', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (16, NULL, 'dm_appgo_mapping', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_appgo_mapping.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (17, NULL, 'rp_appgo_common', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_appgo_common.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (18, NULL, 'rp_appgo_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_appgo_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (19, NULL, 'dw_ext_system', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_ext_system.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (20, NULL, 'dm_appgo_master', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_appgo_master.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (21, NULL, 'rp_dmp_tag', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dmp_tag.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (22, NULL, 'rp_dmp_app', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dmp_app.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (23, NULL, 'rp_dmp_device', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dmp_device.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (24, NULL, 'rp_dmp_mapping', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dmp_mapping.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (25, NULL, 'dw_ext_res', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_ext_res.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (26, NULL, 'dw_smssdk_phonecontacts', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_smssdk_phonecontacts.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (27, NULL, 'dm_smssdk_master', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_smssdk_master.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (28, NULL, 'dm_appgo_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_appgo_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (29, NULL, 'tp_appgo_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_appgo_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (30, NULL, 'dm_sdk_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_sdk_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (31, NULL, 'tp_sdk_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_sdk_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (32, NULL, 'rp_sdk_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (33, NULL, 'rp_ext_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_ext_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (34, NULL, 'rp_ext_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_ext_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (35, NULL, 'tp_ext_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_ext_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (36, NULL, 'tp_ext_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_ext_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (37, NULL, 'dm_ext_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_ext_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (38, NULL, 'dm_ext_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_ext_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (39, NULL, 'rp_appgo_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_appgo_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (40, NULL, 'tp_appgo_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_appgo_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (41, NULL, 'dm_appgo_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_appgo_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (42, NULL, 'dm_dmp_score', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_dmp_score.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (43, NULL, 'dm_dmp_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_dmp_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (44, NULL, 'dm_dmp_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_dmp_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (45, NULL, 'dw_smssdk_master', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_smssdk_master.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (46, NULL, 'rp_sdk_ext', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_ext.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (47, NULL, 'rp_sdk_mobeye', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_mobeye.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (48, NULL, 'dm_share_master', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_share_master.db', 1, 'shi_w', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (49, NULL, 'ext_ad_dmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/ext_ad_dmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (50, NULL, 'rp_sdk_mobeye_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_mobeye_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (51, NULL, 'carbondb_mobeye', 'hdfs://ShareSdkHadoop/user/hive/warehouse/carbondb_mobeye.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (52, NULL, 'rp_mobeye_carbondb', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_carbondb.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (53, NULL, 'rp_dmp_ext', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dmp_ext.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (54, NULL, 'rp_dmp_plat', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dmp_plat.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (55, NULL, 'sixm_dmp_test', 'hdfs://ShareSdkHadoop/dmgroup/sixm', 1, 'sixm', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (56, NULL, 'rp_sdk_poi', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_poi.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (57, NULL, 'rp_mobeye_o2o', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_o2o.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (58, NULL, 'rp_mobeye_o2o_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_o2o_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (59, NULL, 'rp_mobeye_carbondb_o2o', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_carbondb_o2o.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (60, NULL, 'rp_mobeye_test', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_test.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (61, NULL, 'rp_mobeye_mktgo', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_mktgo.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (62, NULL, 'rp_mobeye_app360', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_app360.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (63, NULL, 'rp_mobeye_app360_mapping', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_app360_mapping.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (64, NULL, 'rp_mobeye_app360_tmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_app360_tmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (65, NULL, 'rp_common_hbase', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_common_hbase.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (66, NULL, 'dw_ext_exchange', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_ext_exchange.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (67, NULL, 'rp_finance_anticheat', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_finance_anticheat.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (68, NULL, 'rp_smssdk_dmp', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_smssdk_dmp.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (69, NULL, 'rp_mobeye_o2o_afterdailyrun', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobeye_o2o_afterdailyrun.db', 1, 'dmpots', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (70, NULL, 'rp_sdk_gapoi', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdk_gapoi.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (71, NULL, 'dw_game_log', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_game_log.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (72, NULL, 'dw_mobdi_md', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_mobdi_md.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (73, NULL, 'rp_dataengine_middleware', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dataengine_middleware.db', 1, 'dmpots', NULL, '2018-06-26 17:51:30', '2018-06-29 11:00:30', 0, '2018-06-26 17:51:30', '2018-06-29 11:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (74, NULL, 'rp_sdkplus_uninstall', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_sdkplus_uninstall.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (75, NULL, 'dw_mobeye_o2o', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_mobeye_o2o.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (76, NULL, 'rp_dataengine_carbondb', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dataengine_carbondb.db', 1, 'dmpots', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (77, NULL, 'rp_dataengine', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_dataengine.db', 1, 'dmpots', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (78, NULL, 'carbon_ga', 'hdfs://ShareSdkHadoop/user/hive/warehouse/carbon_ga.db', 1, 'dataexport', NULL, '2018-06-26 17:51:30', '2018-07-04 11:00:30', 0, '2018-06-26 17:51:30', '2018-07-04 11:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (79, NULL, 'dw_mobdi_source', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_mobdi_source.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (80, NULL, 'dm_mobdi_mapping', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_mobdi_mapping.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (81, NULL, 'dm_mobdi_master', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dm_mobdi_master.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (82, NULL, 'tp_mobdi_model', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_mobdi_model.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (83, NULL, 'tp_mobdi_statistic', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_mobdi_statistic.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (84, NULL, 'tp_mobdi_rule', 'hdfs://ShareSdkHadoop/user/hive/warehouse/tp_mobdi_rule.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (85, NULL, 'rp_mobdi_app', 'hdfs://ShareSdkHadoop/user/hive/warehouse/rp_mobdi_app.db', 1, 'dba', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (86, NULL, 'dw_ext_exchange_carbon', 'hdfs://ShareSdkHadoop/user/hive/warehouse/dw_ext_exchange_carbon.db', 1, 'dataexport', NULL, '2018-06-26 17:51:30', '2018-07-17 18:00:30', 0, '2018-06-26 17:51:30', '2018-07-17 18:00:30', '0000-00-00 00:00:00');
INSERT INTO `dbs` VALUES (5333, NULL, 'cloudera_manager_metastore_canary_test_db_hive_hivemetastore_bd02f58601b7b3e85115ef2f47abf975', 'hdfs://ShareSdkHadoop/user/hue/.cloudera_manager_hive_metastore_canary/hive_HIVEMETASTORE_bd02f58601b7b3e85115ef2f47abf975', 1, NULL, 'Cloudera Manager Metastore Canary Test Database', '2018-06-29 08:00:30', '2018-07-08 11:00:30', 1, '2018-06-29 08:00:30', '2018-07-08 11:00:30', '0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
