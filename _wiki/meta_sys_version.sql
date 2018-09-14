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

 Date: 27/06/2018 16:08:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for meta_sys_version
-- ----------------------------
DROP TABLE IF EXISTS `meta_sys_version`;
CREATE TABLE `meta_sys_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题，如果是公告模板（**通知），如果是产品更新（Meta2.1.1版本），如果是故障（**异常说明）',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题内容',
  `content_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '产品升级' COMMENT '消息类型，包括产品公告，产品更新，故障通知',
  `date_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '版本时间',
  `is_delete` tinyint(1) DEFAULT 0 COMMENT '是否删除，0: 不删除，1：删除，默认0',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `delete_time` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2407 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '记录系统版本信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of meta_sys_version
-- ----------------------------
INSERT INTO `meta_sys_version` VALUES (1, 'Meta2.1.0版本', '1.增加表展示功能', '产品升级', '2018-04-09 16:52:12', 0, '2018-04-09 16:52:12', '2018-04-09 16:52:12', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2, 'Meta2.1.1版本', '1.修复Excel建表无法显示菜单\r\n2.修复保存当表描述为空时无法显示提示信息;', '产品升级', '2018-04-11 19:01:17', 0, '2018-04-11 19:01:17', '2018-04-11 19:01:17', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2397, 'Meta2.1.2版本', '1.增加表大小分布展示功能，包含历史数据和实时数据；\r\n\r\n2.优化所有加载过慢问题；\r\n3.增加集群任务量分布展示功能；\r\n4.增加版本显示功能；', '产品升级', '2018-04-11 19:29:01', 0, '2018-04-11 19:29:01', '2018-04-11 19:29:01', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2398, 'Meta2.2.0版本', '1、增加任务详情界面；\r\n2、添加概览界面跳转任务详情界面；\r\n3、今日新增表容量排行；', '产品升级', '2018-04-20 16:34:34', 0, '2018-04-20 16:34:34', '2018-04-20 16:34:34', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2399, 'Meta2.2.0版本', '1、优化集群概览中任务执行时间、Map数、Reduce数样式；\r\n2、调整左侧导航栏；\r\n3、增加请求过程中显示加载动画；', '产品优化', '2018-04-20 16:35:15', 0, '2018-04-20 16:35:15', '2018-04-20 16:35:15', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2400, '修复', '1、修复表详情中在增加字段时，点击阴影部分dialog消失的问题；', '修复', '2018-04-20 16:35:43', 0, '2018-04-20 16:35:43', '2018-04-20 16:35:43', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2401, 'Meta2.2.1版本', '1、增加通过Excel复制字段注释，批量更新字段注释；\r\n2、创建新表增加表数据来源类型，并支持修改来源类型。类型包含Flume准实时写入、DTS批量导入、mysql同步方式以及默认；', '产品升级', '2018-05-03 16:45:00', 0, '2018-05-03 16:43:55', '2018-05-03 16:43:55', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2402, 'Meta2.2.1版本', '1、打开表增长曲线，默认展示历史大小；\r\n2、集群概览界面中任务Top10排行增加浮动显示；\r\n3、增加请求过程中显示加载动画；', '产品优化', '2018-05-03 16:45:00', 0, '2018-05-03 16:43:59', '2018-05-03 16:43:59', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2404, 'Meta2.2.2版本', '1、新增Presto任务模块展示，包含presto集群概览、presto任务详情；\r\n2、 新增区分presto任务来自jdbc和dquery来源；\r\n3、 新增内存、Vcore实时展示功能；\r\n4、 新增使用逗号分隔符创建表功能；', '产品升级', '2018-06-21 14:06:38', 0, '2018-06-21 14:06:38', '2018-06-21 14:06:38', '0000-00-00 00:00:00');
INSERT INTO `meta_sys_version` VALUES (2406, 'Meta2.2.3版本', '1、增加左侧导航菜单模块权限控制，普通用户仅显示元数据管理模块，hive任务、presto任务、kafka集群相关模块需开通。', '产品升级', '2018-06-21 14:11:07', 0, '2018-06-21 14:11:07', '2018-06-21 14:11:07', '0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
