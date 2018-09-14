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

 Date: 09/07/2018 17:07:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '列名（如：format）',
  `code` int(11) NOT NULL COMMENT '类型数字（如：0）',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称（如：ORC）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`, `code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'engine_type', 1, 'hive');
INSERT INTO `dictionary` VALUES (2, 'engine_type', 2, 'kafka');
INSERT INTO `dictionary` VALUES (3, 'engine_type', 3, 'elasticsearch');
INSERT INTO `dictionary` VALUES (4, 'engine_type', 9, 'other');
INSERT INTO `dictionary` VALUES (5, 'tbl_type', 0, '无');
INSERT INTO `dictionary` VALUES (6, 'tbl_type', 1, '外部表');
INSERT INTO `dictionary` VALUES (7, 'tbl_type', 2, '内部表');
INSERT INTO `dictionary` VALUES (8, 'tbl_type', 3, 'EX_TABLE(索引表)');
INSERT INTO `dictionary` VALUES (9, 'tbl_type', 4, 'VIRTUAL_VIEW(视图表)');
INSERT INTO `dictionary` VALUES (10, 'error_type', 0, '正常');
INSERT INTO `dictionary` VALUES (11, 'error_type', 1, '不影响');
INSERT INTO `dictionary` VALUES (12, 'error_type', 2, '影响');
INSERT INTO `dictionary` VALUES (13, 'format_type', 0, '无');
INSERT INTO `dictionary` VALUES (14, 'format_type', 1, 'TEXT');
INSERT INTO `dictionary` VALUES (15, 'format_type', 2, 'ORC');
INSERT INTO `dictionary` VALUES (16, 'format_type', -9, '其他');
INSERT INTO `dictionary` VALUES (17, 'data_type', 1, 'bigint');
INSERT INTO `dictionary` VALUES (18, 'data_type', 2, 'boolean');
INSERT INTO `dictionary` VALUES (19, 'data_type', 3, 'date');
INSERT INTO `dictionary` VALUES (20, 'data_type', 4, 'double');
INSERT INTO `dictionary` VALUES (21, 'data_type', 5, 'float');
INSERT INTO `dictionary` VALUES (22, 'data_type', 6, 'int');
INSERT INTO `dictionary` VALUES (23, 'data_type', 7, 'string');
INSERT INTO `dictionary` VALUES (24, 'data_type', 8, 'timestamp');
INSERT INTO `dictionary` VALUES (25, 'data_type', 0, 'null');
INSERT INTO `dictionary` VALUES (26, 'data_type', -1, 'array');
INSERT INTO `dictionary` VALUES (27, 'data_type', -2, 'binary');
INSERT INTO `dictionary` VALUES (28, 'data_type', -3, 'char');
INSERT INTO `dictionary` VALUES (29, 'data_type', -4, 'decima');
INSERT INTO `dictionary` VALUES (30, 'data_type', -5, 'map');
INSERT INTO `dictionary` VALUES (31, 'data_type', -6, 'smallint');
INSERT INTO `dictionary` VALUES (32, 'data_type', -7, 'struct');
INSERT INTO `dictionary` VALUES (33, 'data_type', -8, 'tinyint');
INSERT INTO `dictionary` VALUES (34, 'data_type', -9, 'varchar');
INSERT INTO `dictionary` VALUES (35, 'data_type', -10, '其他');
INSERT INTO `dictionary` VALUES (36, 'is_partition', 0, '否');
INSERT INTO `dictionary` VALUES (37, 'is_partition', 1, '是');
INSERT INTO `dictionary` VALUES (38, 'is_sensitive', 0, '否');
INSERT INTO `dictionary` VALUES (39, 'is_sensitive', 1, '是');
INSERT INTO `dictionary` VALUES (40, 'query_type', 1, 'hive');
INSERT INTO `dictionary` VALUES (41, 'query_type', 2, 'presto');
INSERT INTO `dictionary` VALUES (42, 'column_split', 1, '\\t');
INSERT INTO `dictionary` VALUES (43, 'column_split', 2, '|');
INSERT INTO `dictionary` VALUES (44, 'column_split', 3, '^A');
INSERT INTO `dictionary` VALUES (45, 'column_split', 0, '默认');
INSERT INTO `dictionary` VALUES (46, 'column_split', -1, '');
INSERT INTO `dictionary` VALUES (47, 'column_split', 4, ',');
INSERT INTO `dictionary` VALUES (48, 'column_split', -9, '其他');
INSERT INTO `dictionary` VALUES (49, 'life_cycle', 30, '1个月');
INSERT INTO `dictionary` VALUES (50, 'life_cycle', 90, '3个月');
INSERT INTO `dictionary` VALUES (51, 'life_cycle', 180, '6个月');
INSERT INTO `dictionary` VALUES (52, 'life_cycle', 270, '9个月');
INSERT INTO `dictionary` VALUES (53, 'life_cycle', 360, '1年');
INSERT INTO `dictionary` VALUES (54, 'life_cycle', 999999, '永远');
INSERT INTO `dictionary` VALUES (55, 'partition', 1, 'ds');
INSERT INTO `dictionary` VALUES (56, 'partition', 2, 'game_id');
INSERT INTO `dictionary` VALUES (57, 'life_cycle', 7, '一周');
INSERT INTO `dictionary` VALUES (58, 'life_cycle', 14, '两周');
INSERT INTO `dictionary` VALUES (59, 'source_type', 1, 'flume写入');
INSERT INTO `dictionary` VALUES (60, 'source_type', 2, 'DTS导入');
INSERT INTO `dictionary` VALUES (61, 'source_type', 3, 'mysql同步');
INSERT INTO `dictionary` VALUES (62, 'source_type', 4, '默认');
INSERT INTO `dictionary` VALUES (63, 'format_type', -1, 'SequenceFile');

SET FOREIGN_KEY_CHECKS = 1;
