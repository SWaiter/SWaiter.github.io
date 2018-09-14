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

 Date: 27/06/2018 16:06:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for meta_user
-- ----------------------------
DROP TABLE IF EXISTS `meta_user`;
CREATE TABLE `meta_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户拼音(如：zhousheng)',
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名（如：周晟）',
  `nick_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称（如：老鱼）',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `is_delete` tinyint(1) DEFAULT 0 COMMENT '是否删除，0: 不删除，1：删除，默认0',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `delete_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `accout`(`account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基本信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of meta_user
-- ----------------------------
INSERT INTO `meta_user` VALUES (1, 'wangshan', '王闪', '', NULL, 0, '2017-09-28 18:17:43', '2018-04-12 18:43:27', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (2, 'sunzj', '哈维', NULL, NULL, 0, '2017-09-28 19:28:05', '2017-12-18 13:18:43', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (4, 'yuanx', '袁旭', '', NULL, 0, '2017-09-29 10:47:49', '2018-01-15 18:09:45', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (5, 'yuany', '亿元', '', NULL, 0, '2017-09-29 11:54:30', '2017-12-18 13:19:36', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (6, 'zengrj', '曾荣军', '', NULL, 0, '2017-09-29 13:20:23', '2017-12-14 15:32:25', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (7, 'zhousheng', '老鱼', '', NULL, 0, '2017-09-29 13:26:13', '2017-12-14 17:04:56', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (8, 'jiayl', '贾彦龙', '', NULL, 0, '2017-10-17 10:56:06', '2017-12-14 14:51:34', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (9, 'chenww', '文文', '', NULL, 0, '2017-10-17 10:57:33', '2017-12-14 14:51:39', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (11, 'hefg', '乌龟', '', NULL, 0, '2017-10-18 14:22:50', '2018-03-29 10:57:50', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (12, 'luwj', '西林', '', NULL, 1, '2017-10-26 23:46:21', '2018-01-15 18:10:37', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (13, 'lizhan', '老李', NULL, NULL, 0, '2017-11-10 10:30:22', '2017-12-14 14:51:22', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (14, 'wanghuaxin', '华鑫', NULL, NULL, 0, '2017-11-10 10:32:37', '2017-12-18 10:46:05', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (15, 'taozheng', '陶正', '', NULL, 0, '2017-12-04 18:44:48', '2017-12-18 13:19:48', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (16, 'louym', '袆铭', NULL, NULL, 0, '2017-12-14 14:48:21', '2017-12-14 14:48:21', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (18, 'jyli', '娇阳', NULL, NULL, 0, '2017-12-14 14:50:28', '2017-12-14 14:50:28', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (19, 'jiashsh', '贾声声', '', NULL, 0, '2017-12-18 09:31:10', '2018-03-29 10:59:04', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (20, 'shaoch', '游虫', '', NULL, 0, '2017-12-18 10:14:07', '2018-03-29 10:59:10', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (21, 'sunzh', '', '', NULL, 0, '2017-12-18 13:20:32', '2017-12-18 18:49:22', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (22, 'tuol', '爱吃肉', '', NULL, 0, '2017-12-18 18:21:53', '2017-12-18 18:56:47', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (23, 'yangdd', '小影', '', NULL, 0, '2017-12-18 18:24:43', '2017-12-18 18:57:07', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (24, 'yanmq', '蜜蜜', '', NULL, 0, '2017-12-18 18:29:58', '2017-12-18 18:57:28', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (25, 'zhaoyun', '潘达', NULL, NULL, 0, '2017-12-18 18:53:09', '2017-12-18 18:53:15', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (26, 'wangli', '加加', NULL, NULL, 0, '2017-12-18 18:54:32', '2017-12-18 18:54:32', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (28, 'mazm', '银桑', NULL, NULL, 0, '2017-12-18 18:55:01', '2017-12-18 18:55:01', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (32, 'jiangr', '颠木', NULL, NULL, 0, '2017-12-19 15:05:00', '2017-12-19 15:05:00', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (34, 'hjin', '基王', NULL, NULL, 0, '2017-12-19 15:06:50', '2017-12-19 15:06:50', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (35, 'huzhw', '里奇', NULL, NULL, 0, '2017-12-19 16:10:55', '2017-12-19 16:10:55', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (36, 'bhu', '老铁', NULL, NULL, 0, '2017-12-20 15:56:59', '2017-12-20 15:56:59', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (37, 'lvsj', '吕思嘉(吕思嘉)', '', NULL, 0, '2017-12-20 16:18:34', '2018-01-15 09:59:26', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (38, 'cuiqx', '小崔', NULL, NULL, 0, '2017-12-21 10:24:39', '2017-12-21 10:24:39', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (39, 'liyong', '李勇(小飞龙)', '', NULL, 0, '2017-12-21 14:18:31', '2017-12-21 14:34:34', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (40, 'lust', '卢松涛(小凡)', '', NULL, 0, '2017-12-21 14:23:13', '2017-12-21 14:34:06', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (41, 'panyj', '大师兄', NULL, NULL, 0, '2017-12-21 14:34:58', '2017-12-21 14:34:58', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (42, 'heyf', '何玉福(凌云)', '', NULL, 0, '2017-12-28 15:26:04', '2018-01-08 14:26:26', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (43, 'yinyy', '尹莹莹(海贝)', '', NULL, 1, '2018-01-03 17:45:27', '2018-01-03 17:45:27', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (44, 'zhangxinyu', '张歆雨(张歆雨)', '', NULL, 0, '2018-01-08 18:23:59', '2018-01-08 18:25:36', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (45, 'qdchen', '陈麒旦', NULL, NULL, 0, '2018-01-08 18:29:27', '2018-01-08 18:29:27', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (46, 'guoty', '托尼郭', NULL, NULL, 0, '2018-01-09 09:36:30', '2018-01-09 09:36:30', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (47, 'tangsh', '唐竟逮', NULL, NULL, 0, '2018-01-09 09:37:02', '2018-01-09 09:37:02', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (49, 'yuanxj', '袁夕钧(花夕)', '', NULL, 0, '2018-01-10 15:17:29', '2018-01-10 15:30:08', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (50, 'jinly', '金柳义(铭毅)', '', NULL, 0, '2018-01-10 15:17:52', '2018-01-10 15:30:10', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (51, 'luoxj', '罗细娟(娟哥)', '', NULL, 0, '2018-01-10 15:50:56', '2018-01-15 10:01:52', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (52, 'thuang', '黄婷(黄婷婷)', '', NULL, 0, '2018-01-12 16:53:39', '2018-01-15 10:01:53', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (53, 'wangbw', '博文(汪博文)', NULL, NULL, 0, '2018-01-15 10:00:36', '2018-01-15 10:00:36', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (54, 'xiel', '谢磊(阿卷)', '', NULL, 0, '2018-01-18 11:55:36', '2018-01-26 14:55:30', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (55, 'lindj', '林冬杰(明离)', '', NULL, 0, '2018-01-18 12:20:07', '2018-01-26 14:55:31', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (56, 'yqgu', '顾宇青(小青)', '', NULL, 0, '2018-01-18 12:20:12', '2018-01-26 14:55:33', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (57, 'liuff', '刘芳放(小黄喵)', '', NULL, 0, '2018-01-18 12:22:56', '2018-01-26 14:55:34', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (58, 'tangyan', '唐炎(流风)', '', NULL, 0, '2018-01-18 14:51:08', '2018-01-26 14:55:36', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (59, 'licj', '李存敬(佚名)', '', NULL, 0, '2018-01-26 14:51:39', '2018-01-26 14:55:38', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (60, 'huanghuang', '黄璜(娅娅)', '', NULL, 0, '2018-01-30 10:21:50', '2018-01-30 10:23:51', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (62, 'fanyl', '范毅磊(三十君)', '', NULL, 0, '2018-03-14 14:53:44', '2018-03-22 10:10:35', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (63, 'xiawang', '王霞(云霞)', '', NULL, 0, '2018-03-15 11:35:57', '2018-03-22 10:10:42', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (64, 'jianghao', '姜浩(姜浩)', '', NULL, 0, '2018-03-28 16:26:15', '2018-04-02 16:11:06', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (66, 'zhuwd', '朱维东(东子)', '', NULL, 0, '2018-04-10 16:45:35', '2018-04-10 16:58:45', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (67, 'yup', '于鹏(招财猫)', '', NULL, 0, '2018-04-10 16:45:37', '2018-04-10 16:58:42', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (69, 'yangjunhua', '杨君华(朱夏)', '', NULL, 0, '2018-04-10 16:45:37', '2018-04-10 16:58:26', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (70, 'guoheng', '郭恒(嘿壮)', '', NULL, 0, '2018-04-10 16:47:59', '2018-04-10 16:58:41', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (71, 'panyy', '潘盈颖(小傀)', '', NULL, 0, '2018-04-12 10:23:04', '2018-04-12 10:55:30', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (72, 'wujl', '吴晶龙(慕如星)', '', NULL, 0, '2018-04-12 18:45:54', '2018-04-12 18:45:54', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (73, 'wuyunlong', '吴云龙(黑漠河)', '', NULL, 0, '2018-04-20 16:38:57', '2018-04-20 16:38:57', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (74, 'jiangmy', '江民云(麦哲伦)', '', NULL, 0, '2018-04-20 17:16:23', '2018-04-20 17:16:23', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (75, 'wang_wei', '汪炜(丹青)', '', NULL, 0, '2018-05-08 10:30:19', '2018-05-08 10:30:19', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (76, 'jcui', '崔健(夜枫寒)', '', NULL, 0, '2018-05-14 15:03:03', '2018-05-14 15:03:03', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (77, 'jieli', '李杰(胖子)', '', NULL, 0, '2018-05-14 15:04:16', '2018-05-14 15:04:16', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (78, 'liuqiyao', '刘启尧(启尧)', NULL, NULL, 0, '2018-06-20 19:04:36', '2018-06-20 19:04:36', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (79, 'zhangpe', '张平恩(香榭水岸)', NULL, NULL, 0, '2018-06-25 18:15:47', '2018-06-25 18:15:56', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (80, 'fangz', '方桢(小桢桢)', NULL, NULL, 0, '2018-06-26 15:01:27', '2018-06-26 15:01:27', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (81, 'qianyq', '钱逸群(羌笛)', NULL, NULL, 0, '2018-06-26 15:20:09', '2018-06-26 15:20:09', '0000-00-00 00:00:00');
INSERT INTO `meta_user` VALUES (82, 'shizhy', '施洲轶(贰贰贰)', '', NULL, 0, '2018-06-27 15:18:15', '2018-06-27 15:18:15', '0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
