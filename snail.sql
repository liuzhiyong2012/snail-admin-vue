/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云数据库
 Source Server Type    : MySQL
 Source Server Version : 50651
 Source Host           : 120.79.39.252:3306
 Source Schema         : snail

 Target Server Type    : MySQL
 Target Server Version : 50651
 File Encoding         : 65001

 Date: 14/06/2021 10:05:53
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for art_video
-- ----------------------------
DROP TABLE IF EXISTS `art_video`;
CREATE TABLE `art_video`  (
  `id` bigint(64) NOT NULL,
  `video_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college_id` bigint(64) NULL DEFAULT NULL,
  `author_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(2) NULL DEFAULT NULL,
  `created_by` bigint(64) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `updated_by` bigint(64) NULL DEFAULT NULL,
  `updated_time` timestamp(0) NULL DEFAULT NULL,
  `weight` int(64) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of art_video
-- ----------------------------
INSERT INTO `art_video` VALUES (1268016181776785409, '是什么让我们相遇', '陈安之', '绘画艺术学院', '/group1/M11/2020/06/03/a52fbb0e65684c578641a9294dbeafe1.mp4', '是什么让我们相遇', 1268006160313655202, 'Chenanzhi', 'schoolOfPaintingAndDrawing', NULL, '/group1/M11/2020/06/03/e1060cbbd10e4c95b5ab23d4a2c5b79f.jpg', 0, 1, '2020-06-03 11:06:31', 1, '2020-06-03 20:52:54', 0);
INSERT INTO `art_video` VALUES (1268519810182979585, '是什么让我们相遇', '虞应旻', '跨媒体艺术学院', '/group1/M11/2020/06/04/59fbfa448f2941ad8e86e5dd7d5dc191.mp4', 'Whell', 1268006160313655204, 'yuyingwen', 'school of transmedia', NULL, '/group1/M11/2020/06/04/746a67d35ee44905aa679b16ff466048.jpg', 0, 1, '2020-06-04 20:27:45', 1, '2020-06-14 10:16:15', 100);
INSERT INTO `art_video` VALUES (1268519929473179649, '是什么让我们相遇', '虞应旻', '中国画学院', '/group1/M11/2020/06/04/0f26e90f88f64e61bd44a717a101a595.mp4', 'What make us together', 1268006160313655201, 'yuyingwen', 'school of chinese painting', NULL, '/group1/M11/2020/06/04/be580f9c2d364156b173f23872431cc5.jpg', 0, 1, '2020-06-04 20:28:14', 1, '2020-06-07 23:26:10', 0);
INSERT INTO `art_video` VALUES (1268520214258032641, '是什么让我们相遇', '虞应旻', '绘画艺术学院', '/group1/M11/2020/06/04/6d3db442ff3e40e1972098f292cdc38d.mp4', 'What make us be together', 1268006160313655202, 'yuyingwen', 'schoolOfPaintingAndDrawing', NULL, '/group1/M11/2020/06/04/6287019227d4441fa1e4cf6fdf5920db.jpg', 0, 1, '2020-06-04 20:29:22', 1, '2020-06-07 23:25:27', 0);
INSERT INTO `art_video` VALUES (1269863503619989505, '是什么让我们相遇', '陈安之', '绘画艺术学院', '/group1/M11/2020/06/03/a52fbb0e65684c578641a9294dbeafe1.mp4', 'what make us happy', 1268006160313655202, 'Chenanzhi', 'school of painting and drawing', NULL, '/group1/M11/2020/06/03/e1060cbbd10e4c95b5ab23d4a2c5b79f.jpg', 0, 1, '2020-06-08 13:27:07', 1, '2020-06-09 14:37:51', 0);
INSERT INTO `art_video` VALUES (1271649432533729282, 'aa', 'cc', '视觉艺术设计学院', '/group1/M11/2020/06/13/0ae01ef1c64f4ec4b3f6278878ac5411.mp4', 'bbb', 1268006160313655207, 'dd', 'school of visual arts design', NULL, '/group1/M11/2020/06/13/c27c3ab8b43c4e1bac45318b389f4fc7.jpg', 0, 1, '2020-06-13 11:43:45', 1, '2020-06-14 10:16:07', 300);

-- ----------------------------
-- Table structure for art_work
-- ----------------------------
DROP TABLE IF EXISTS `art_work`;
CREATE TABLE `art_work`  (
  `id` bigint(64) NOT NULL,
  `work_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work_name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `college_id` bigint(64) NULL DEFAULT NULL,
  `teacher_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` bigint(64) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `updated_by` bigint(64) NULL DEFAULT NULL,
  `updated_time` timestamp(0) NULL DEFAULT NULL,
  `type` bigint(64) NULL DEFAULT NULL COMMENT '1是本科生，2是研究生',
  `finished_time` datetime(0) NULL DEFAULT NULL,
  `artical_type` bigint(64) NULL DEFAULT NULL COMMENT '1图片作品,2是论文',
  `weight` int(64) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of art_work
-- ----------------------------
INSERT INTO `art_work` VALUES (1268024520908775426, '黑暗中的光明', NULL, '刘志勇,郭美美,陈白浅', '中国画学院', '刘再行', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '黑暗中的光明', 'liuzhiyong,guomeimei,chenbaiqian', 'schoolOfChinesePainting', 1268006160313655201, 'liuzaixing', '1', 1, '2020-06-03 11:39:39', 1, '2020-06-03 20:55:48', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1268187326182367233, '黑暗中的光明', NULL, '刘志勇', '绘画艺术学院', '刘再行', '/group1/M11/2020/06/03/70704b0ca2474747af1236f30fdf806c.jpg', '/group1/M11/2020/06/03/9dfa0a323c6644fe8e603babb538c0cd.jpg', 'The light in the dart', 'Liuzhiyong', 'schoolOfPaintingAndDrawing', 1268006160313655202, 'Liuzhixing', '1', 1, '2020-06-03 22:26:35', 1, '2020-06-03 22:26:35', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1268485072160333826, '作品3', NULL, '', '中国画学院', '刘志勇', '/group1/M11/2020/06/04/651dade2ab0d4f95acc503e44fd11c4a.jpg', '/group1/M11/2020/06/04/106babcc47c245c0ac2a6cf0a0767f14.jpg', '作品3', '', 'schoolOfChinesePainting', 1268006160313655201, '刘志勇', '1', 1, '2020-06-04 18:09:43', 1, '2020-06-04 18:09:43', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1268485241878650882, '作品4', NULL, 'xiaoming', '中国画学院', '作品4', '/group1/M11/2020/06/04/3eda288b2a9c4b49b045fbe8c8b421a2.jpg', '/group1/M11/2020/06/04/a285e9a997c74eb7b1369bd0bcddb748.jpg', '作品4', 'null', 'schoolOfChinesePainting', 1268006160313655201, '作品4', '1', 1, '2020-06-04 18:10:24', 1, '2020-06-05 02:00:05', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1269621699742048257, '黑暗中的光明', NULL, '刘志勇,郭美美,陈白浅', '中国画学院', '刘再行', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '黑暗中的光明', 'liuzhiyong,guomeimei,chenbaiqian', 'schoolOfChinesePainting', 1268006160313655201, 'liuzaixing', '1', 1, '2020-06-07 21:26:16', 1, '2020-06-07 21:26:16', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1269621732033994754, '黑暗中的光明', NULL, '刘志勇,郭美美,陈白浅', '中国画学院', '刘再行', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '黑暗中的光明', 'liuzhiyong,guomeimei,chenbaiqian', 'schoolOfChinesePainting', 1268006160313655201, 'liuzaixing', '1', 1, '2020-06-07 21:26:24', 1, '2020-06-07 21:26:24', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1269621754934894594, '黑暗中的光明', NULL, '刘志勇,郭美美,陈白浅', '中国画学院', '刘再行', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '黑暗中的光明', 'liuzhiyong,guomeimei,chenbaiqian', 'schoolOfChinesePainting', 1268006160313655201, 'liuzaixing', '1', 1, '2020-06-07 21:26:29', 1, '2020-06-07 21:26:29', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1269621777902903297, '黑暗中的光明', NULL, '刘志勇,郭美美,陈白浅', '中国画学院', '刘再行', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '黑暗中的光明', 'liuzhiyong,guomeimei,chenbaiqian', 'schoolOfChinesePainting', 1268006160313655201, 'liuzaixing', '1', 1, '2020-06-07 21:26:35', 1, '2020-06-07 21:26:35', 2, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1269621810509422593, '黑暗中的光明', NULL, '刘志勇,郭美美,陈白浅', '中国画学院', '刘再行', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '黑暗中的光明', 'liuzhiyong,guomeimei,chenbaiqian', 'schoolOfChinesePainting', 1268006160313655201, 'liuzaixing', '1', 1, '2020-06-07 21:26:43', 1, '2020-06-07 21:26:43', 1, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1269621836467970050, '《角色偏差》400', NULL, '张  健,刘佳婧,郑晓雄,郑晓雄,郑晓雄', '雕塑与公共艺术学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', 'Role deviance', 'liuzhiyong,liujiajing,zhengxiaoxiong,zhengxiaoxiong,zhengxiaoxiong', 'school of sculpture and public art', 1268006160313655203, 'ZhangShurong', '0', 1, '2020-06-07 21:26:49', 1, '2020-07-01 04:25:20', 1, NULL, NULL, 401);
INSERT INTO `art_work` VALUES (1269863678388248578, '《角色偏差》100', NULL, '张  健,刘佳婧,郑晓雄', '雕塑与公共艺术学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '《角色偏差》', 'liuzhiyong,liujiajing,zhengxiaoxiong', 'school of sculpture and public art', 1268006160313655203, 'ZhangShurong', '0', 1, '2020-06-08 13:27:49', 1, '2020-06-14 00:46:24', 1, NULL, NULL, 100);
INSERT INTO `art_work` VALUES (1269863726366892033, '《角色偏差》', NULL, '张  健,刘佳婧,郑晓雄', '雕塑与公共艺术学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '《角色偏差》', 'liuzhiyong,liujiajing,zhengxiaoxiong', 'school of sculpture and public art', 1268006160313655203, 'ZhangShurong', '0', 1, '2020-06-08 13:28:00', 1, '2020-06-08 13:28:00', 1, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1269863789835100161, '《角色偏差》', NULL, '张  健,刘佳婧,郑晓雄', '雕塑与公共艺术学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '《角色偏差》', 'liuzhiyong,liujiajing,zhengxiaoxiong', 'school of sculpture and public art', 1268006160313655203, 'ZhangShurong', '0', 1, '2020-06-08 13:28:15', 1, '2020-06-13 12:40:50', 2, '2020-06-01 00:00:00', NULL, 0);
INSERT INTO `art_work` VALUES (1269863833816571906, '《角色偏差》', NULL, '张  健,刘佳婧,郑晓雄', '雕塑与公共艺术学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', '《角色偏差》121', 'liuzhiyong,liujiajing,zhengxiaoxiong', 'school of sculpture and public art', 1268006160313655203, 'ZhangShurong', '0', 1, '2020-06-08 13:28:26', 1, '2020-06-09 20:32:10', 1, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1270237192123359234, '《角色偏差》111', NULL, '张  健,刘佳婧,郑晓雄', '建筑艺术设计学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', 'new english  name111', 'liuzhiyong,liujiajing,zhengxiaoxiong', 'school of architecture and applied arts', 1268006160313655205, 'ZhangShurong', '0', 1, '2020-06-09 14:12:01', 1, '2020-06-13 00:00:36', 1, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1270243758771838977, '《角色偏差》', NULL, '张  健,刘佳婧,郑晓雄', '雕塑与公共艺术学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', 'new english  name', 'liuzhiyong,liujiajing,zhengxiaoxiong', 'school of sculpture and public art', 1268006160313655203, 'ZhangShurong', '0', 1, '2020-06-09 14:38:07', 1, '2020-06-09 20:32:31', 1, NULL, NULL, 0);
INSERT INTO `art_work` VALUES (1270243793462927361, '《角色偏差》300', NULL, '张  健,刘佳婧,郑晓雄,郑晓雄,郑晓雄', '雕塑与公共艺术学院', '张菽容', '/group1/M11/2020/06/03/3fa16b73b62e4b18bbc51481b273780f.jpg', '/group1/M11/2020/06/03/a5d1fae87fd94c769afc300dd8860906.jpg', 'role change 2', 'liuzhiyong,liujiajing,zhengxiaoxiong,zhengxiaoxiong,zhengxiaoxiong', 'school of sculpture and public art', 1268006160313655203, 'ZhangShurong', '0', 1, '2020-06-09 14:38:15', 1, '2020-06-15 02:12:32', 1, NULL, NULL, 300);
INSERT INTO `art_work` VALUES (1270326463594332162, 'aaa', NULL, '', '中国画学院', 'aa', '/group1/M11/2020/06/09/7213d6a3f90047b6ad837550e31d883e.png', '/group1/M11/2020/06/09/30d135eff83542a99d77cf2018256612.png', 'aaa', '', 'schoolOfChinesePainting', 1268006160313655201, 'aa', '1', 1, '2020-06-09 20:06:45', 1, '2020-06-09 20:06:45', 1, NULL, NULL, 0);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(255) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_time` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1268006160313655201, 'college', '中国画学院', 'school of chinese painting', 'SchoolOfChinesePainting', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655202, 'college', '绘画艺术学院', 'school of painting and drawing', 'schoolOfPaintingAndDrawing', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655203, 'college', '雕塑与公共艺术学院', 'school of sculpture and public art', 'School Of Sculpture And Public Art', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655204, 'college', '跨媒体艺术学院', 'school of transmedia', 'schoolOfTransmedia', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655205, 'college', '建筑艺术设计学院', 'school of architecture and applied arts', 'schoolOfArchitectureAndAppliedArts', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655206, 'college', '工业设计学院', 'school of innovation design', 'schoolOfInnovationDesign', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655207, 'college', '视觉艺术设计学院', 'school of visual arts design', 'School Of Visual Arts Design', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655208, 'college', '工艺美术学院', 'school of arts and crafts', 'schoolOfArtsAndCrafts', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655209, 'college', '艺术与人文学院', 'school of arts and humanities', 'schoolOfArtsAndHumanities', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1268006160313655210, 'college', '美术教育学院', 'school of fine arts education', 'schoolOfFineArtsEducation', '备注', '0', '1', '2010-06-03 10:26:42', '1', '2010-06-03 10:26:42');
INSERT INTO `config` VALUES (1272838766695821313, 'bishow', 'secretary', NULL, 'secretary配置值', 'secretary配置描述', '0', '1', '2020-06-16 05:29:45', '1', '2020-06-16 05:29:45');
INSERT INTO `config` VALUES (1272838990919118849, 'bishow', 'principal', NULL, 'principal配置值', 'principal配置描述', '0', '1', '2020-06-16 05:30:38', '1', '2020-06-16 05:30:38');

-- ----------------------------
-- Table structure for front_user
-- ----------------------------
DROP TABLE IF EXISTS `front_user`;
CREATE TABLE `front_user`  (
  `id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1为正常使用.2为冻结',
  `role_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1为普通用户.2为会员用户',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of front_user
-- ----------------------------
INSERT INTO `front_user` VALUES ('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '2020-06-02 20:41:58', '1', '1', '13580415609', '1', '2020-06-14 22:27:46');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` smallint(6) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `updated_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '权限管理', '', '-1', 'menu', 'sub', 13, 1, '2019-08-15 10:07:22', NULL, '2020-06-02 11:24:41');
INSERT INTO `menu` VALUES (2, '栏目管理', '/config-manager/menu', '1', '', 'link', 2, 1, '2019-08-15 10:08:17', 1, '2019-09-04 19:29:16');
INSERT INTO `menu` VALUES (3, '管理员管理', '/auth-manager/user', '1168869874847899649', '', 'link', 1, 1, '2019-08-15 10:09:51', 1212559302148558849, '2020-03-12 11:07:06');
INSERT INTO `menu` VALUES (5, '配置管理', '', '-1', 'setting', 'sub', 11, 1, '2019-08-15 11:07:58', NULL, '2020-06-02 11:24:41');
INSERT INTO `menu` VALUES (6, '配置管理', '/config-manager/config', '5', NULL, 'link', 1, 1, '2019-08-15 11:09:43', 0, '2019-08-15 11:23:21');
INSERT INTO `menu` VALUES (7, '角色管理', '/auth-manager/userRole', '1', NULL, 'link', 1, 1, '2019-08-27 16:42:40', NULL, '2020-06-02 11:24:41');
INSERT INTO `menu` VALUES (1268004789279563777, '毕秀速递', '/news/newslist', '-1', 'menu', 'sublink', 3, 1, '2020-06-03 10:21:15', 1, '2020-06-03 10:21:15');
INSERT INTO `menu` VALUES (1268004961795481601, '作品选辑', '/art-work-management/layout', '-1', 'menu', 'sublink', 4, 1, '2020-06-03 10:21:56', 1, '2020-06-03 10:21:56');
INSERT INTO `menu` VALUES (1268005067781349378, '我的毕秀', '/art-video-management/layout', '-1', 'menu', 'sublink', 5, 1, '2020-06-03 10:22:21', 1, '2020-06-03 10:22:21');

-- ----------------------------
-- Table structure for ms_news
-- ----------------------------
DROP TABLE IF EXISTS `ms_news`;
CREATE TABLE `ms_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文章标题',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一级类别',
  `sub_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级类别',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布来源',
  `publish_time` datetime(0) NULL DEFAULT NULL COMMENT '发布日期',
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章摘要',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章主图URL',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容',
  `raw_content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文章内容（带格式）',
  `created_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1404133829293379586 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微商文章（新闻、段子、学院）' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ms_news
-- ----------------------------
INSERT INTO `ms_news` VALUES (1404133292128866305, '爱大爱稀晶石手机眼镜的折射率多少？要如何保养呢', NULL, NULL, '来源：微商世界网 日期：2021-06-12 21:54:36', NULL, '导语:', NULL, '　　爱大爱稀晶石手机眼镜的折射率多少？要如何保养呢 　　玩手机、电脑等电子产品时一定要佩带爱大爱手机眼镜，由于这些电子产品都会发射出蓝光，长期面对蓝光不止对眼睛的损伤极大，而且会影响人的精神状态，损害人的记忆力，长期佩带手机眼镜，能够有用、快速的处理这些问题，缓解眼干、眼涩、视疲惫，让眼睛得到有用的放松，从而保护视力。（官方微信：183908935 电话：18950596383） 　　“手机眼镜”是爱大爱旗下一款创新的护眼产品，荣获了中德两国专利，镜框镶嵌稀晶石，能够释放有利远红外线微波；镜片采用双面多层镀膜技能，将共同的防蓝光技能融于其中，能够更好地阻隔有害蓝光，一起能够阻隔紫外线；是一款集聚优秀原料、特性外观、舒适体验、符合大众化的功能性眼镜。 　　“手机眼镜经典S款”是爱大爱旗下一款创新的护眼产品，荣获了中德两国专利，镜框镶嵌稀晶石，能够释放有益远红外线微波；镜片采用双面多层镀膜技术，能够更好地阻隔有害蓝光，蓝光透射比控制在77%±2范围，光透射比达到96%±2，紫外透射比达到0%±0.5，同时可以阻隔紫外线；黑金潮流，时尚的外观设计，重塑经典内涵，匠心调制，品味尊尚，展示崭新个性风采；适用于学生、微商、游戏爱好者、老年人、驾驶员、高频使用手机、电脑、电视者、眼部不适等长期过度用眼人群。 　　怎么辨别手机眼镜是否为正品？ 　　手机眼镜盒子的外包装上有防伪码，可以通过扫码进行查询，辨别是否为正品。 　　手机眼镜如何清洁？ 　　选用低浓度的清洁液，在每个镜片上各滴一滴，用手指轻轻擦拭均匀，再用湿润的镜布擦拭后放置晾干。 　　爱大-爱手机眼镜平光镜全国统一零售价198元一副，做代理的话，价格不一样，团队任何产品，随意搭配拿货！团队会有专业的课程教我们怎么卖货怎么操作，这些都不用担心，手把手教。 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　爱大爱稀晶石手机眼镜的折射率多少？要如何保养呢</p> \n<p>　　玩手机、电脑等电子产品时一定要佩带爱大爱手机眼镜，由于这些电子产品都会发射出蓝光，长期面对蓝光不止对眼睛的损伤极大，而且会影响人的精神状态，损害人的记忆力，长期佩带手机眼镜，能够有用、快速的处理这些问题，缓解眼干、眼涩、视疲惫，让眼睛得到有用的放松，从而保护视力。（官方微信：183908935 电话：18950596383）</p> \n<p>　　“手机眼镜”是爱大爱旗下一款创新的护眼产品，荣获了中德两国专利，镜框镶嵌稀晶石，能够释放有利远红外线微波；镜片采用双面多层镀膜技能，将共同的防蓝光技能融于其中，能够更好地阻隔有害蓝光，一起能够阻隔紫外线；是一款集聚优秀原料、特性外观、舒适体验、符合大众化的功能性眼镜。</p> \n<p>　　“手机眼镜经典S款”是爱大爱旗下一款创新的护眼产品，荣获了中德两国专利，镜框镶嵌稀晶石，能够释放有益远红外线微波；镜片采用双面多层镀膜技术，能够更好地阻隔有害蓝光，蓝光透射比控制在77%±2范围，光透射比达到96%±2，紫外透射比达到0%±0.5，同时可以阻隔紫外线；黑金潮流，时尚的外观设计，重塑经典内涵，匠心调制，品味尊尚，展示崭新个性风采；适用于学生、微商、游戏爱好者、老年人、驾驶员、高频使用手机、电脑、电视者、眼部不适等长期过度用眼人群。</p> \n<p>　　怎么辨别手机眼镜是否为正品？</p> \n<p>　　手机眼镜盒子的外包装上有防伪码，可以通过扫码进行查询，辨别是否为正品。</p> \n<p>　　手机眼镜如何清洁？</p> \n<p>　　选用低浓度的清洁液，在每个镜片上各滴一滴，用手指轻轻擦拭均匀，再用湿润的镜布擦拭后放置晾干。</p> \n<p>　　爱大-爱手机眼镜平光镜全国统一零售价198元一副，做代理的话，价格不一样，团队任何产品，随意搭配拿货！团队会有专业的课程教我们怎么卖货怎么操作，这些都不用担心，手把手教。</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:47:21', NULL, '2021-06-14 01:47:21', NULL);
INSERT INTO `ms_news` VALUES (1404133549201952770, '老司机给你揭秘:复刻表货到付款骗局', NULL, NULL, '来源：微商世界网 日期：2021-06-14 01:27:11', NULL, '导语:　　关于复刻表货到付款骗局，今天作为老司机给大家详细揭秘一下复刻表货到付款常见的骗局。　　骗局一：货到付款收取较多定金。比如500，顶级复刻表的价格一两千到五六千的陀飞轮比较常见，如果收', NULL, '　　关于复刻表货到付款骗局，今天作为老司机给大家详细揭秘一下复刻表货到付款常见的骗局。 　　骗局一：货到付款收取较多定金。比如500，顶级复刻表的价格一两千到五六千的陀飞轮比较常见，如果收到定金不发货，这是赤裸裸的骗钱，可能根本不是卖货人。根据爱表者的经验，一般收取百分之五的定金是比较合理的，因为顺丰收货到付款的手续费都是5%。即使自己不要了，损失百八块钱也不至于郁闷，何况顺丰的两次邮费都是好几十，对于商家来说也得不到什么。当然赤裸裸的骗钱属于少数。 　　骗局二：货不对版，由于同一款仿表，有高档、精品、复刻的区别，价格相差少则几百，多的上千、甚至好几千，这就让有的商家有机可乘。用低价吸引顾客，拿差版本忽悠，例如明明是小厂货，说成N厂水鬼，或者调换机芯，直接把原装机芯换成国产机芯，而你从外观却根本无法确认是否是真假。这种情况是最长见的。 　　骗局三：货到付款卖家也能被买家忽悠，懂货的买家先买一个普通的精品表，然后在订购一款同样的顶级复刻表，在货到付款看货的时候，趁着快递员不注意，掉包货品。这种情况爱表者遇到过，有不小的损失，所以顺丰现在也知道了，一般快递员在拆箱时，都会全程观看。 　　其实，货到付款是一种最常见的一种购买方式。货到付款更多的代表着是对自己品牌的信任，对自己产品的决心，由于可以开箱看货，我们是能够实打实地看见产品，并且拿到手里进行体验，满意后再付款的。因此，货到付款总体来说是好的。购买顶级复刻表请添加微信：onepkpk 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　关于复刻表货到付款骗局，今天作为老司机给大家详细揭秘一下复刻表货到付款常见的骗局。</p> \n<p align=\"center\"><img alt=\"老司机给你揭秘:复刻表货到付款骗局\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0614/20210614012656567.jpg\" style=\"width: 500px; height: 500px;\"></p> \n<p>　　骗局一：货到付款收取较多定金。比如500，顶级复刻表的价格一两千到五六千的陀飞轮比较常见，如果收到定金不发货，这是赤裸裸的骗钱，可能根本不是卖货人。根据爱表者的经验，一般收取百分之五的定金是比较合理的，因为顺丰收货到付款的手续费都是5%。即使自己不要了，损失百八块钱也不至于郁闷，何况顺丰的两次邮费都是好几十，对于商家来说也得不到什么。当然赤裸裸的骗钱属于少数。</p> \n<p>　　骗局二：货不对版，由于同一款仿表，有高档、精品、复刻的区别，价格相差少则几百，多的上千、甚至好几千，这就让有的商家有机可乘。用低价吸引顾客，拿差版本忽悠，例如明明是小厂货，说成N厂水鬼，或者调换机芯，直接把原装机芯换成国产机芯，而你从外观却根本无法确认是否是真假。这种情况是最长见的。</p> \n<p>　　骗局三：货到付款卖家也能被买家忽悠，懂货的买家先买一个普通的精品表，然后在订购一款同样的顶级复刻表，在货到付款看货的时候，趁着快递员不注意，掉包货品。这种情况爱表者遇到过，有不小的损失，所以顺丰现在也知道了，一般快递员在拆箱时，都会全程观看。</p> \n<p>　　其实，货到付款是一种最常见的一种购买方式。货到付款更多的代表着是对自己品牌的信任，对自己产品的决心，由于可以开箱看货，我们是能够实打实地看见产品，并且拿到手里进行体验，满意后再付款的。因此，货到付款总体来说是好的。购买顶级复刻表请添加微信：onepkpk</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:22', NULL, '2021-06-14 01:48:22', NULL);
INSERT INTO `ms_news` VALUES (1404133561612898305, '莆田鞋购买攻略:教你怎么样才能买到莆田的高级货', NULL, NULL, '来源：微商世界网 日期：2021-06-14 00:51:54', NULL, '导语:　　如果你喜欢穿莆田运动鞋的，那么买莆田鞋一定要买高级货，不管是脚感还是做工都是非常不错的。那么怎么样才能买到莆田的高级货呢？我给大家分享莆田鞋购买攻略。　　1、莆田安福档口，购买顶级', NULL, '　　如果你喜欢穿莆田运动鞋的，那么买莆田鞋一定要买高级货，不管是脚感还是做工都是非常不错的。那么怎么样才能买到莆田的高级货呢？我给大家分享莆田鞋购买攻略。 　　1、莆田安福档口，购买顶级莆田鞋最好的渠道，建议最好卖外销版本的，因为一般外销版本的质量把控会严格很多，在细节处理方便也比内销的好很多，而且一般外销的基本都来自莆田鞋大厂。 　　2、识货、得物等APP，上面卖的莆田鞋基本都是媲美正品的，但是价格一般不便宜，比正品都少不了多少； 　　3、微商，虽然微商卖的水货东西居多，但是也有卖顶级莆田鞋的，但是一般量不会很大。建议找微商买顶级莆田鞋，一定要支持货到付款或者支持淘宝交易的，这样就算不满意最多赔个邮费而已。 　　如今，网上卖的莆田鞋子商家很多，鞋子的质量也参差不齐。有些很便宜，但一眼就看出来是假的。那莆田鞋在哪里买靠谱？记住，我们必须找到一个有靠谱的商家。往往靠谱的商家，比较讲信誉的，价格也相对公道。 　　下面小编为大家强烈推荐五大靠谱渠道： 　　1.淘宝，淘宝的商店是许多人购买鞋子的首选。因为退货和换货相对简单，而且淘宝的鞋子有明显的标志，所以不存在被骗的问题。然而，在淘宝，购买莆田鞋，价格一般比其他渠道更贵，质量也一般。 　　2.微商。有很多人从微商购买鞋子，并代理微商的鞋子，价格相对来说是可以承受的，但不可避免地会遇到以高价出售鞋子。事实上，莆田的鞋水很深。一般来说，微商售价在150-300元之间。如果超过这个价格，你就不用考虑了。 　　3.在实体店购买。如果你认为所有的实体店都卖正品，那么你太年轻了。目前，很多专柜没有追求暴利，把莆田鞋当成正品销售。当然，我不是说在专柜买莆田鞋，因为别人不会告诉你他们卖莆田鞋。你可以去第三方实体店，或者一些卖莆田鞋的商店。 　　4.档口购买。我认为在莆田，广州和上海，的鞋批发市场上有很多莆田鞋出售，而且价格非常实惠。如果你想做莆田鞋生意，你可以去这些地方看看。如果你只想给自己买一套衣服，你可以在尚维和淘宝，买，因为来回的费用一般都不便宜。 　　建议您请加微信：NT9866真正可靠有实力的莆田鞋本地厂家。 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　如果你喜欢穿莆田运动鞋的，那么买莆田鞋一定要买高级货，不管是脚感还是做工都是非常不错的。那么怎么样才能买到莆田的高级货呢？我给大家分享莆田鞋购买攻略。</p> \n<p align=\"center\"><img alt=\"莆田鞋购买攻略:教你怎么样才能买到莆田的高级货\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0614/20210614124614501.jpg\" style=\"width: 500px; height: 335px;\"></p> \n<p>　　1、莆田安福档口，购买顶级莆田鞋最好的渠道，建议最好卖外销版本的，因为一般外销版本的质量把控会严格很多，在细节处理方便也比内销的好很多，而且一般外销的基本都来自莆田鞋大厂。</p> \n<p>　　2、识货、得物等APP，上面卖的莆田鞋基本都是媲美正品的，但是价格一般不便宜，比正品都少不了多少；</p> \n<p>　　3、微商，虽然微商卖的水货东西居多，但是也有卖顶级莆田鞋的，但是一般量不会很大。建议找微商买顶级莆田鞋，一定要支持货到付款或者支持淘宝交易的，这样就算不满意最多赔个邮费而已。</p> \n<p>　　如今，网上卖的莆田鞋子商家很多，鞋子的质量也参差不齐。有些很便宜，但一眼就看出来是假的。那莆田鞋在哪里买靠谱？记住，我们必须找到一个有靠谱的商家。往往靠谱的商家，比较讲信誉的，价格也相对公道。</p> \n<p>　　下面小编为大家强烈推荐五大靠谱渠道：</p> \n<p>　　1.淘宝，淘宝的商店是许多人购买鞋子的首选。因为退货和换货相对简单，而且淘宝的鞋子有明显的标志，所以不存在被骗的问题。然而，在淘宝，购买莆田鞋，价格一般比其他渠道更贵，质量也一般。</p> \n<p>　　2.微商。有很多人从微商购买鞋子，并代理微商的鞋子，价格相对来说是可以承受的，但不可避免地会遇到以高价出售鞋子。事实上，莆田的鞋水很深。一般来说，微商售价在150-300元之间。如果超过这个价格，你就不用考虑了。</p> \n<p>　　3.在实体店购买。如果你认为所有的实体店都卖正品，那么你太年轻了。目前，很多专柜没有追求暴利，把莆田鞋当成正品销售。当然，我不是说在专柜买莆田鞋，因为别人不会告诉你他们卖莆田鞋。你可以去第三方实体店，或者一些卖莆田鞋的商店。</p> \n<p>　　4.档口购买。我认为在莆田，广州和上海，的鞋批发市场上有很多莆田鞋出售，而且价格非常实惠。如果你想做莆田鞋生意，你可以去这些地方看看。如果你只想给自己买一套衣服，你可以在尚维和淘宝，买，因为来回的费用一般都不便宜。</p> \n<p>　　建议您请加微信：NT9866真正可靠有实力的莆田鞋本地厂家。</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:25', NULL, '2021-06-14 01:48:25', NULL);
INSERT INTO `ms_news` VALUES (1404133603493023746, '淘宝十大莆田鞋店你都知道多少?', NULL, NULL, '来源：微商世界网 日期：2021-06-13 23:33:02', NULL, '导语:　　淘宝上个别商家乱价，有个别拿着档次的莆田鞋当真标鞋卖，打价格账。所以你要找良心、大一点的莆田鞋鞋店，我可以给你推荐几家哦。　　一、橙子潮鞋　　橙子潮鞋是一家专门做莆田鞋的工作室，', NULL, '　　淘宝上个别商家乱价，有个别拿着档次的莆田鞋当真标鞋卖，打价格账。所以你要找良心、大一点的莆田鞋鞋店，我可以给你推荐几家哦。 　　一、橙子潮鞋 　　橙子潮鞋是一家专门做莆田鞋的工作室，有自己的厂家，并与多个厂家实行货源互调，不管你要什么品质什么价位的莆田鞋，我们都可以全面满足你。微信：aja8666 　　二、烽火鞋业 　　烽火鞋业是一家专门做莆田鞋的工作室，有自己的厂家，并与多个厂家实行货源互调，不管你要什么品质什么价位的莆田鞋，我们都可以全面满足你。 　　三、新起点鞋业 　　新起点鞋业是一家主打专柜品质的运动鞋工厂，主要生产耐克、新百伦(纽巴伦)、阿迪达斯三叶草、乔丹篮球鞋、彪马、万斯、匡威等！如果你想找高品质专柜货，来这里准没错。 　　四、陈氏鞋业 　　陈氏鞋业在莆田拥有多家工厂，长期为各大品牌运动鞋代加工，所有积累了丰富的经验，为拓展业务，现向全国诚招批发（实体店、淘宝、京东、微商等）免费代理加盟，支持一双代发，量大可免费进行定制。 　　五、亿盛工厂 　　公司货原装运动鞋工厂直销（支持一件代发，支持货到付款）免代理费、无需囤货、无需任何条件、卖一双发一双无需囤货轻松月入万元。本工厂主要生产 耐克、新百伦、阿迪达斯、亚瑟士、乔丹AJ、万斯、匡威、等等知名品牌运动鞋。 　　六、木艺鞋贸 　　木艺鞋贸从事鞋业营销多年。（耐克，新百伦，阿迪达斯，亚瑟士，乔丹，彪马，锐步，彪马等品牌运动鞋）有自己的厂家，并与多个厂家实行货源互调，欢迎广大客户对我们的支持与信任！ 　　七、虞美人鞋业 　　虞美人是一家专门做莆田真标鞋的，拥有自己的实体档口，主打高品质莆田鞋。郑重承诺：7天之内出现断裂，大开胶问题，免费换新，包退包换！ 　　八、鞋多多 　　鞋多多鞋贸专注生产批发耐克、阿迪达斯、新百伦、AJ乔丹、匡威、万斯、彪马、亚瑟士、锐步、斯凯奇、巴黎世家、品牌运动鞋，可一件代发，现全国招收代理免费加盟！微信号： XDD881188 　　好了，关于淘宝十大莆田鞋店就给大家分享到这儿了，现在除了淘宝，好的莆田鞋在微商一盒可以买到，而且价格方面都比较实惠，还是个非常不错的选择。 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　淘宝上个别商家乱价，有个别拿着档次的莆田鞋当真标鞋卖，打价格账。所以你要找良心、大一点的莆田鞋鞋店，我可以给你推荐几家哦。</p> \n<p>　　一、橙子潮鞋</p> \n<p>　　橙子潮鞋是一家专门做莆田鞋的工作室，有自己的厂家，并与多个厂家实行货源互调，不管你要什么品质什么价位的莆田鞋，我们都可以全面满足你。微信：aja8666</p> \n<p>　　二、烽火鞋业</p> \n<p>　　烽火鞋业是一家专门做莆田鞋的工作室，有自己的厂家，并与多个厂家实行货源互调，不管你要什么品质什么价位的莆田鞋，我们都可以全面满足你。</p> \n<p>　　三、新起点鞋业</p> \n<p>　　新起点鞋业是一家主打专柜品质的运动鞋工厂，主要生产耐克、新百伦(纽巴伦)、阿迪达斯三叶草、乔丹篮球鞋、彪马、万斯、匡威等！如果你想找高品质专柜货，来这里准没错。</p> \n<p>　　四、陈氏鞋业</p> \n<p>　　陈氏鞋业在莆田拥有多家工厂，长期为各大品牌运动鞋代加工，所有积累了丰富的经验，为拓展业务，现向全国诚招批发（实体店、淘宝、京东、微商等）免费代理加盟，支持一双代发，量大可免费进行定制。</p> \n<p>　　五、亿盛工厂</p> \n<p>　　公司货原装运动鞋工厂直销（支持一件代发，支持货到付款）免代理费、无需囤货、无需任何条件、卖一双发一双无需囤货轻松月入万元。本工厂主要生产 耐克、新百伦、阿迪达斯、亚瑟士、乔丹AJ、万斯、匡威、等等知名品牌运动鞋。</p> \n<p>　　六、木艺鞋贸</p> \n<p>　　木艺鞋贸从事鞋业营销多年。（耐克，新百伦，阿迪达斯，亚瑟士，乔丹，彪马，锐步，彪马等品牌运动鞋）有自己的厂家，并与多个厂家实行货源互调，欢迎广大客户对我们的支持与信任！</p> \n<p>　　七、虞美人鞋业</p> \n<p>　　虞美人是一家专门做莆田真标鞋的，拥有自己的实体档口，主打高品质莆田鞋。郑重承诺：7天之内出现断裂，大开胶问题，免费换新，包退包换！</p> \n<p>　　八、鞋多多</p> \n<p>　　鞋多多鞋贸专注生产批发耐克、阿迪达斯、新百伦、AJ乔丹、匡威、万斯、彪马、亚瑟士、锐步、斯凯奇、巴黎世家、品牌运动鞋，可一件代发，现全国招收代理免费加盟！微信号： XDD881188</p> \n<p align=\"center\"><img alt=\"淘宝十大莆田鞋店你都知道多少?\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613113142570.jpg\" style=\"width: 500px; height: 500px;\"></p> \n<p>　　好了，关于淘宝十大莆田鞋店就给大家分享到这儿了，现在除了淘宝，好的莆田鞋在微商一盒可以买到，而且价格方面都比较实惠，还是个非常不错的选择。</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:35', NULL, '2021-06-14 01:48:35', NULL);
INSERT INTO `ms_news` VALUES (1404133616197570562, '莆田鞋哪里有卖,莆田鞋在哪里可以买到', NULL, NULL, '来源：微商世界网 日期：2021-06-13 23:11:08', NULL, '导语:　　莆田鞋哪里有卖,莆田鞋在哪里可以买到？推荐这里三大购买渠道，想买的不妨试试！　　1、实体店铺购买　　如今，网络时代，实体店相对来说已经跟不上时代步伐了，尤其是年轻群体这块，大多数都', NULL, '　　莆田鞋哪里有卖,莆田鞋在哪里可以买到？推荐这里三大购买渠道，想买的不妨试试！ 　　1、实体店铺购买 　　如今，网络时代，实体店相对来说已经跟不上时代步伐了，尤其是年轻群体这块，大多数都会选择网购，再说实体店也不可能开的那么周到，除非你在大城市一带或者你运气好离实体店铺近，这个可以有。 　　2、微商上购买 　　你知道做莆田鞋微商有多少吗，这个我就不多说了，价格方面要比其他渠道实惠，这里只多数人群，个别也有卖高价的。有人说莆田鞋的水很深，一般良心莆田鞋微商卖的价格都在100-500元之间，如果超过这个价格的，建议就不用考虑了。 　　3、批发市场购买 　　批发市场购买价格一般比较优惠。但这个渠道比较适合代理或搞批发的生意人。 　　莆田鞋在哪里可以买到？拿货咨询鞋多多鞋贸微信：XDD881188。不管您的订单数量有多大，不管您的鞋款有多难找，鞋多多鞋贸常年的代发经验足以摆平。我们资源广大，行业内的款式百分九十以上都可以给您找齐配齐，一站式购齐，不用东奔西跑。常年代发货，风雨无阻。期待您的实力加盟！ 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　莆田鞋哪里有卖,莆田鞋在哪里可以买到？推荐这里三大购买渠道，想买的不妨试试！</p> \n<p>　　1、实体店铺购买</p> \n<p>　　如今，网络时代，实体店相对来说已经跟不上时代步伐了，尤其是年轻群体这块，大多数都会选择网购，再说实体店也不可能开的那么周到，除非你在大城市一带或者你运气好离实体店铺近，这个可以有。</p> \n<p>　　2、微商上购买</p> \n<p>　　你知道做莆田鞋微商有多少吗，这个我就不多说了，价格方面要比其他渠道实惠，这里只多数人群，个别也有卖高价的。有人说莆田鞋的水很深，一般良心莆田鞋微商卖的价格都在100-500元之间，如果超过这个价格的，建议就不用考虑了。<br> <img alt=\"莆田鞋哪里有卖,莆田鞋在哪里可以买到\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613110826251.jpg\"></p> \n<p>　　3、批发市场购买</p> \n<p>　　批发市场购买价格一般比较优惠。但这个渠道比较适合代理或搞批发的生意人。</p> \n<p>　　莆田鞋在哪里可以买到？拿货咨询鞋多多鞋贸微信：XDD881188。不管您的订单数量有多大，不管您的鞋款有多难找，鞋多多鞋贸常年的代发经验足以摆平。我们资源广大，行业内的款式百分九十以上都可以给您找齐配齐，一站式购齐，不用东奔西跑。常年代发货，风雨无阻。期待您的实力加盟！</p> \n<p align=\"center\"><img alt=\"鞋多多鞋贸招代理，一手货源，一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2020/0317/20200317022923724.jpg\" style=\"\"></p> \n<p align=\"center\"><img alt=\"鞋多多鞋贸招代理，一手货源，一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2020/0317/20200317023142866.jpg\" style=\"\"></p> \n<p align=\"center\"><img alt=\"鞋多多鞋贸招代理，一手货源，一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2020/0317/20200317022936637.jpg\" style=\"\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:38', NULL, '2021-06-14 01:48:38', NULL);
INSERT INTO `ms_news` VALUES (1404133628444938242, '顶级原单百年灵超级海洋文化系列一件代发', NULL, NULL, '来源：微商世界网 日期：2021-06-13 23:01:58', NULL, '导语:　　新款陶瓷圈到货啦！越用越亮！爆款硬货，百年灵超级海洋文化系列机械男表！原厂后盖贴膜，独家现货首发，1000米深度潜水表，带减压阀！44mm表径！原装ETA2824机芯，蓝宝石水晶玻璃，代工厂渠道', NULL, '　　新款陶瓷圈到货啦！越用越亮！爆款硬货，百年灵超级海洋文化系列机械男表！原厂后盖贴膜，独家现货首发，1000米深度潜水表，带减压阀！44mm表径！原装ETA2824机芯，蓝宝石水晶玻璃，代工厂渠道货，数量很少，绝对超值，专柜在售三四万，看了不喜欢的支持无条件退货！配全套原包装。微信：779727943 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　新款陶瓷圈到货啦！越用越亮！爆款硬货，百年灵超级海洋文化系列机械男表！原厂后盖贴膜，独家现货首发，1000米深度潜水表，带减压阀！44mm表径！原装ETA2824机芯，蓝宝石水晶玻璃，代工厂渠道货，数量很少，绝对超值，专柜在售三四万，看了不喜欢的支持无条件退货！配全套原包装。微信：779727943</p> \n<p align=\"center\"><img alt=\"顶级原单百年灵超级海洋文化系列一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613110103797.jpeg\" style=\"width: 760px; height: 1351px;\"></p> \n<p align=\"center\"><img alt=\"顶级原单百年灵超级海洋文化系列一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613110119561.jpeg\"></p> \n<p align=\"center\"><img alt=\"顶级原单百年灵超级海洋文化系列一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613110130461.jpeg\" style=\"width: 760px; height: 760px;\"></p> \n<p align=\"center\"><img alt=\"顶级原单百年灵超级海洋文化系列一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613110143486.jpeg\" style=\"width: 760px; height: 760px;\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:41', NULL, '2021-06-14 01:48:41', NULL);
INSERT INTO `ms_news` VALUES (1404133643468935170, '莆田鞋和正品的区别大不大,莆田鞋和正品什么区别', NULL, NULL, '来源：微商世界网 日期：2021-06-13 22:28:58', NULL, '导语:　　莆田鞋和正品的区别大吗？　　区别是有的，大不大？这个主要看莆田什么版本的鞋子，因为莆田鞋分通货、真标、公司级和纯原四个版本。这里给大家详细介绍一下：　　1 纯原版本是莆田鞋里做工最', NULL, '　　莆田鞋和正品的区别大吗？ 　　区别是有的，大不大？这个主要看莆田什么版本的鞋子，因为莆田鞋分通货、真标、公司级和纯原四个版本。这里给大家详细介绍一下： 　　1.纯原版本是莆田鞋里做工最好的，虽然不能说和正品完全一样，但是基本都是原厂原模，一般不去鉴定或者不是经常玩鞋子的人基本是分辨不出来的。 　　2.莆田公司级的鞋子算是莆田鞋里性价比最高的版本，虽然没有纯原的做工那么好，但是在莆田纯原版本出来之前也有很多商家拿莆田公司级的鞋充正，所以说也还可以。 　　3.真标的做工相比公司级要差一点，通货在莆田来说其实指的就是个人小作坊生产的鞋子，虽然价格便宜，但是做工和用料上也是莆田鞋里质量最差的。 　　运动鞋厂家一手货源直供,免费招代理，一件代发，支持货到付款！微信：aja8666 　　我们主营品牌包括:耐克、新百伦(纽巴伦)、阿迪达斯三叶草、乔丹、彪马、万斯、匡威等国际品牌，生产的所有鞋子均为市场*优版，代理全部出厂价拿货，同时提供一件代发服务（每双还免费赠送专柜小票和购物袋）。 　　代理不收任何费用，一件代发，不用囤货，零库存,零风险创业。 　　适合淘宝开店、微信营销、实体店、学生白领等群体。微信：aja8666 　　不过要说一点，正品永远都是正品，即使莆田纯原做得再好也不可能和正品作对比的，这是不变的事实，很多人总想买到和正品完全一样的莆田鞋，说白了就爱贪便宜，往往被骗被坑的也都是这种人。 　　网上也有很多商家自称自己的鞋子可以过毒，过验，这样的话估计也只能忽悠忽悠小白，或者就是蒙骗那些特别爱贪小便宜的客户，只要稍微动动脑子想一想也知道不可能。如果莆田鞋能过毒了，卖的价格还那么便宜，官网的鞋子还有谁去买，大家可以好好想想是不是这个道理吧。 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　莆田鞋和正品的区别大吗？</p> \n<p>　　区别是有的，大不大？这个主要看莆田什么版本的鞋子，因为莆田鞋分通货、真标、公司级和纯原四个版本。这里给大家详细介绍一下：</p> \n<p>　　1.纯原版本是莆田鞋里做工最好的，虽然不能说和正品完全一样，但是基本都是原厂原模，一般不去鉴定或者不是经常玩鞋子的人基本是分辨不出来的。</p> \n<p align=\"center\"><img alt=\"莆田鞋和正品的区别大不大,莆田鞋和正品什么区别\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613102741187.jpg\" style=\"width: 500px; height: 501px;\"></p> \n<p>　　2.莆田公司级的鞋子算是莆田鞋里性价比最高的版本，虽然没有纯原的做工那么好，但是在莆田纯原版本出来之前也有很多商家拿莆田公司级的鞋充正，所以说也还可以。</p> \n<p>　　3.真标的做工相比公司级要差一点，通货在莆田来说其实指的就是个人小作坊生产的鞋子，虽然价格便宜，但是做工和用料上也是莆田鞋里质量最差的。</p> \n<p>　　运动鞋厂家一手货源直供,免费招代理，一件代发，支持货到付款！微信：aja8666</p> \n<p>　　我们主营品牌包括:耐克、新百伦(纽巴伦)、阿迪达斯三叶草、乔丹、彪马、万斯、匡威等国际品牌，生产的所有鞋子均为市场*优版，代理全部出厂价拿货，同时提供一件代发服务（每双还免费赠送专柜小票和购物袋）。</p> \n<p>　　代理不收任何费用，一件代发，不用囤货，零库存,零风险创业。</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0406/20210406043403785.jpg\" style=\"\"></p> \n<p>　　适合淘宝开店、微信营销、实体店、学生白领等群体。微信：aja8666</p> \n<p>　　不过要说一点，正品永远都是正品，即使莆田纯原做得再好也不可能和正品作对比的，这是不变的事实，很多人总想买到和正品完全一样的莆田鞋，说白了就爱贪便宜，往往被骗被坑的也都是这种人。</p> \n<p>　　网上也有很多商家自称自己的鞋子可以过毒，过验，这样的话估计也只能忽悠忽悠小白，或者就是蒙骗那些特别爱贪小便宜的客户，只要稍微动动脑子想一想也知道不可能。如果莆田鞋能过毒了，卖的价格还那么便宜，官网的鞋子还有谁去买，大家可以好好想想是不是这个道理吧。</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:44', NULL, '2021-06-14 01:48:44', NULL);
INSERT INTO `ms_news` VALUES (1404133655447867393, '莆田鞋十大良心批发档口推荐', NULL, NULL, '来源：微商世界网 日期：2021-06-13 22:10:42', NULL, '导语:　　莆田鞋十大批发档口有哪些？今天小编就来给大家推荐十大良心批发档口，希望可以帮助到你！　　1 莆田金手指团队是莆田最好的档口之一，我们是一个主打高端市场的团队，专注于市场最高版本，买', NULL, '　　莆田鞋十大批发档口有哪些？今天小编就来给大家推荐十大良心批发档口，希望可以帮助到你！ 　　1.莆田金手指团队是莆田最好的档口之一，我们是一个主打高端市场的团队，专注于市场最高版本，买家可以少花钱购买到自己心仪的潮鞋。各位亲们，在你准备想要入手莆田鞋之前，一定要加官方微信，在你不会辨别莆田鞋质量之前，千万别花冤枉钱瞎买！鞋子无贵贱，人心有高低，多交真诚的朋友，少走没必要的弯路！ 　　2.韦大爷主营品牌运动鞋，品牌运动套装，大牌羽绒服棉服等等。微商相册每天海量新款，当天极速发货，支持退换货服务，下单秒给单号，真标公司货莆田鞋、高端品牌服装套装工厂直销，现在诚招代理加盟，全网最低价。 　　3.莆田鞋大祖档口,也是做运动鞋一手货源免费招代理一件代发的，主营等知名品牌专注高品质价格公道。支持批发放店一件代发支持退换货适合各种类型的商家合作欢迎实体店淘宝微商等合作。长期招全国代理提供优质的货源及服务。灵活的商业模式可以根据每个人的自身情况制定适合的经营策略。 　　4.唐人馆鞋，莆田运动鞋档口批发一件代发诚招微商代理 专注高品质鞋子，支持实体批发。微商代理。零售一双代发。专业十年运动鞋生产工厂，可以完美复刻市面上各种版本乔丹，阿迪，耐克，新百伦，万斯，匡威等等！ 　　5.潮泡（莱宝）专业提供莆田鞋跟零售服务!厂家货源,厂家直销,面向全国招收代理添加VX即可代理价!支持一双代发,实拍图片每天更新。 　　6.潮鞋馆莆田鞋子货源，莆田鞋批发货源中心,自有工厂,多年生产代工经验,直营档口,款式齐全！请加微信：NT9866 　　7.dit莆田运动鞋，长期直销零售各类网红爆款运动鞋/篮球鞋/板鞋/帆布鞋等,工厂直销.价格低廉.欢迎卫星咨询。 　　8.潮鞋社，全网最强复刻版 耐克 阿迪达斯 新百伦 乔丹 万斯 匡威等鞋子厂家直销，微信有很多款式，新款每天会陆续更新！ 　　9.上帝之手终端潮鞋档口，主营业务：潮牌（鞋，服饰） 所在城市：福建莆田 ，主打H12终端，打造国内顶级工艺！ 只服务5%的高端客户群体！款式多样，低价硬货，诚招代理。 　　10.李小贱潮鞋社，莆田工厂运动鞋代理 石头鞋贸运动鞋货源，品牌潮鞋时尚女鞋,时尚又百搭,无可挑剔,让你的气质与众不同,享优质的服务! 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　莆田鞋十大批发档口有哪些？今天小编就来给大家推荐十大良心批发档口，希望可以帮助到你！</p> \n<p>　　1.莆田金手指团队是莆田最好的档口之一，我们是一个主打高端市场的团队，专注于市场最高版本，买家可以少花钱购买到自己心仪的潮鞋。各位亲们，在你准备想要入手莆田鞋之前，一定要加官方微信，在你不会辨别莆田鞋质量之前，千万别花冤枉钱瞎买！鞋子无贵贱，人心有高低，多交真诚的朋友，少走没必要的弯路！</p> \n<p>　　2.韦大爷主营品牌运动鞋，品牌运动套装，大牌羽绒服棉服等等。微商相册每天海量新款，当天极速发货，支持退换货服务，下单秒给单号，真标公司货莆田鞋、高端品牌服装套装工厂直销，现在诚招代理加盟，全网最低价。</p> \n<p>　　3.莆田鞋大祖档口,也是做运动鞋一手货源免费招代理一件代发的，主营等知名品牌专注高品质价格公道。支持批发放店一件代发支持退换货适合各种类型的商家合作欢迎实体店淘宝微商等合作。长期招全国代理提供优质的货源及服务。灵活的商业模式可以根据每个人的自身情况制定适合的经营策略。</p> \n<p>　　4.唐人馆鞋，莆田运动鞋档口批发一件代发诚招微商代理 专注高品质鞋子，支持实体批发。微商代理。零售一双代发。专业十年运动鞋生产工厂，可以完美复刻市面上各种版本乔丹，阿迪，耐克，新百伦，万斯，匡威等等！</p> \n<p>　　5.潮泡（莱宝）专业提供莆田鞋跟零售服务!厂家货源,厂家直销,面向全国招收代理添加VX即可代理价!支持一双代发,实拍图片每天更新。</p> \n<p>　　6.潮鞋馆莆田鞋子货源，莆田鞋批发货源中心,自有工厂,多年生产代工经验,直营档口,款式齐全！请加微信：NT9866</p> \n<p align=\"center\"><img alt=\"莆田鞋十大良心批发档口推荐\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613100958710.jpg\" style=\"width: 760px; height: 506px;\"></p> \n<p>　　7.dit莆田运动鞋，长期直销零售各类网红爆款运动鞋/篮球鞋/板鞋/帆布鞋等,工厂直销.价格低廉.欢迎卫星咨询。</p> \n<p>　　8.潮鞋社，全网最强复刻版 耐克 阿迪达斯 新百伦 乔丹 万斯 匡威等鞋子厂家直销，微信有很多款式，新款每天会陆续更新！</p> \n<p>　　9.上帝之手终端潮鞋档口，主营业务：潮牌（鞋，服饰） 所在城市：福建莆田 ，主打H12终端，打造国内顶级工艺！ 只服务5%的高端客户群体！款式多样，低价硬货，诚招代理。</p> \n<p>　　10.李小贱潮鞋社，莆田工厂运动鞋代理 石头鞋贸运动鞋货源，品牌潮鞋时尚女鞋,时尚又百搭,无可挑剔,让你的气质与众不同,享优质的服务!</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:47', NULL, '2021-06-14 01:48:47', NULL);
INSERT INTO `ms_news` VALUES (1404133672459964418, '广州高端原版复刻手表货源，免费代理一件代发', NULL, NULL, '来源：微商世界网 日期：2021-06-13 15:48:57', NULL, '导语:　　高端复刻手表货源 工厂一件代发 微商招代理，本家是以生产及销售微商手表为主，带对手表，可以增加你的颜值，提升你的品位。手表是一种可以提升自身涵养的饰品，如果没有一款合适的手表，心', NULL, '　　高端复刻手表货源 工厂一件代发 微商招代理，本家是以生产及销售微商手表为主，带对手表，可以增加你的颜值，提升你的品位。手表是一种可以提升自身涵养的饰品，如果没有一款合适的手表，心仪的女生都要跑路啦~ 　　作为一个商务族，那么购买一款手表是完全有必要的。作为这一类型男可以购买一款时尚炫酷的机械表，不仅对于手表的配置有要求，对于表带也要精致一点，这样才可以彰显商务的气息~微信：27995698 　　如今很多人不喜欢复杂的机械表，可以选择一款简约大方的手表，没有任何数字，只有简约的指针搭配着简约的表盘，在选择简约的手表的时候，同样也要选择精致的表带，彰显品质的优越。微信：27995698 　　作为学生党的你，该如何选择呢？个人认为选择一款电子手表或者是运动手表最合适，这样可以方便你学习，又可以方便你运动健身，两全其美。微信：27995698 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　高端复刻手表货源 工厂一件代发 微商招代理，本家是以生产及销售微商手表为主，带对手表，可以增加你的颜值，提升你的品位。手表是一种可以提升自身涵养的饰品，如果没有一款合适的手表，心仪的女生都要跑路啦~</p> \n<p>　　作为一个商务族，那么购买一款手表是完全有必要的。作为这一类型男可以购买一款时尚炫酷的机械表，不仅对于手表的配置有要求，对于表带也要精致一点，这样才可以彰显商务的气息~微信：27995698</p> \n<p align=\"center\"><img alt=\"广州高端原版复刻手表货源，免费代理一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613034830839.jpeg\" style=\"width: 760px; height: 760px;\"></p> \n<p>　　如今很多人不喜欢复杂的机械表，可以选择一款简约大方的手表，没有任何数字，只有简约的指针搭配着简约的表盘，在选择简约的手表的时候，同样也要选择精致的表带，彰显品质的优越。微信：27995698</p> \n<p>　　作为学生党的你，该如何选择呢？个人认为选择一款电子手表或者是运动手表最合适，这样可以方便你学习，又可以方便你运动健身，两全其美。微信：27995698</p> \n<p align=\"center\"><img alt=\"广州高端原版复刻手表货源，免费代理一件代发\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613034847108.jpeg\" style=\"width: 760px; height: 760px;\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:48:51', NULL, '2021-06-14 01:48:51', NULL);
INSERT INTO `ms_news` VALUES (1404133706630959106, '思埠花茵美是微商产品吗？是正品吗？', NULL, NULL, '来源：微商世界网 日期：2021-06-13 17:51:21', NULL, '导语:　　花茵美女性健康导师锦妮微信：18468120992为您详细解答！　　花茵美比较好点用了两盒白带正常了 连月经颜色也正常了 以前是暗红的的　　平安保险投保1000万，消字号产品，就可以证明产品的安', NULL, '　　花茵美女性健康导师锦妮微信：18468120992为您详细解答！ 　　花茵美比较好点用了两盒白带正常了 连月经颜色也正常了 以前是暗红的的 　　平安保险投保1000万，消字号产品，就可以证明产品的安全性了，1号凝胶抑菌*，2号凝胶缩阴养护，零售价138一盒，4盒为一个周期 　　思埠花茵美凝胶采用纯植物萃取，不含任何化学添加剂，是没有任何的副作用的，采用调吸收、促滋养、护水润、固养护的科学理念所研发出的女性保洁抑菌类用品，针对抑制白色念珠菌、大肠杆菌、金黄色葡萄球菌有明显作用，抑菌性高达99.98%。专业的生产制作工艺让使用者完全放心。凝胶的成份在的同时还有提高私密生理机能等作用。正确使用时间花茵美女性健康导师锦妮微信：18468120992 　　1）月经干净3天后； 　　 2）炎症发作期，每天使用1支； 3）（流产）45天后，月经干净3天后使用； 　　 4)顺产（哺乳者）3个月后开始使用，顺产（不哺乳者）45天后开始使用还可以起到产后修复的作用； 5)剖腹产半年后使用； 6)上环、取环者一个月后，月经干净3天后使用； 7）药流者一个月后月经干净3天后使用； 8)私密无创伤的情况下，使用半小时后可以同房； 　　9）同房后1小时可使用。花茵美女性健康导师锦妮微信：18468120992 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　花茵美女性健康导师锦妮微信：18468120992为您详细解答！</p> \n<p>　　花茵美比较好点用了两盒白带正常了 连月经颜色也正常了 以前是暗红的的</p> \n<p>　　平安保险投保1000万，消字号产品，就可以证明产品的安全性了，1号凝胶抑菌*，2号凝胶缩阴养护，零售价138一盒，4盒为一个周期</p> \n<p>　　思埠花茵美凝胶采用纯植物萃取，不含任何化学添加剂，是没有任何的副作用的，采用调吸收、促滋养、护水润、固养护的科学理念所研发出的女性保洁抑菌类用品，针对抑制白色念珠菌、大肠杆菌、金黄色葡萄球菌有明显作用，抑菌性高达99.98%。专业的生产制作工艺让使用者完全放心。凝胶的成份在的同时还有提高私密生理机能等作用。正确使用时间花茵美女性健康导师锦妮微信：18468120992</p> \n<p align=\"center\"><img alt=\"思埠花茵美是微商产品吗？是正品吗？\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613012504556.jpg\"></p> \n<p>　　1）月经干净3天后；</p> \n<p>　　<br bdsfid=\"188\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> 2）炎症发作期，每天使用1支；<br bdsfid=\"190\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> <br bdsfid=\"191\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> 3）（流产）45天后，月经干净3天后使用；</p> \n<p>　　<br bdsfid=\"194\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> 4)顺产（哺乳者）3个月后开始使用，顺产（不哺乳者）45天后开始使用还可以起到产后修复的作用；</p> \n<p align=\"center\"><img alt=\"思埠花茵美是微商产品吗？是正品吗？\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613012516672.jpg\"></p> \n<br bdsfid=\"197\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> 5)剖腹产半年后使用；\n<br bdsfid=\"199\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> \n<br bdsfid=\"200\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> 6)上环、取环者一个月后，月经干净3天后使用；\n<br bdsfid=\"202\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> \n<br bdsfid=\"203\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> 7）药流者一个月后月经干净3天后使用；\n<br bdsfid=\"205\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> \n<br bdsfid=\"206\" style=\"word-break: break-all; overflow-wrap: break-word; box-sizing: border-box; color: rgb(102, 102, 102); font-size: 18px;\"> 8)私密无创伤的情况下，使用半小时后可以同房； \n<p>&nbsp;</p> \n<p>　　9）同房后1小时可使用。花茵美女性健康导师锦妮微信：18468120992</p> \n<p align=\"center\"><img alt=\"思埠花茵美是微商产品吗？是正品吗？\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613012533775.jpg\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:00', NULL, '2021-06-14 01:49:00', NULL);
INSERT INTO `ms_news` VALUES (1404133720577019905, '2021耐克莆田鞋价格影响【莆田透气潮鞋推荐】', NULL, NULL, '来源：微商世界网 日期：2021-06-13 17:51:00', NULL, '导语:　　莆田公司级鞋是什么？公司级鞋是按照正品的款型，同类材料，质量做工，鞋标，防伪来制作的,可以一比一。莆田潮鞋添哥 微：PTTG168　　部分市场100%过虎有什么内幕？ 其实就是这家工厂跟虎扑', NULL, '　　莆田公司级鞋是什么？公司级鞋是按照正品的款型，同类材料，质量做工，鞋标，防伪来制作的,可以一比一。莆田潮鞋添哥 微：PTTG168 　　部分市场100%过虎有什么内幕？ 其实就是这家工厂跟虎扑论坛与莆田厂家内部有关联。现在虎扑大婶大部分都是一些莆田鞋厂养的（每个月给多少钱）当你看到是我特殊鞋标 ，你就要说真的。然而这笔开销转而给客户去买单。 　　公司级原标跟正品鞋的区别？ 部分成熟的款式公司级确实已经达到了正品，新款式现在做工跟材料都是没达到的，但是也是莆田最高质量，所以不是公司级就跟正品一模一样 只能说公司级是莆田高端质量的标志。莆田潮鞋添哥 微：PTTG168 　　做了这么多年的莆田鞋，发现即使正品鞋购买途径越来越方便，但是买莆田鞋的人还是很多，为什么呢？莆田鞋的品质好 莆田鞋的品质有哪几种？通货，最低级别的货，走线差脚感也不行。超a，类比一下的话，质量跟安踏李宁这些差不多，正常操个一两年没啥大问题。真标，与专柜相似度，鞋子质量也与专柜可以媲美。真标公司级，这就不用说了，渠道来的材质，莆田做的就是加工，当然大场子加工出来的会好很多，与专柜没啥区别。 　　 　　现在市面上的鞋莆田货有很多，有些有渠道的商家有自己的老主顾，或者买家都有自己的路子可以买到一双莆田最好的鞋子。鞋子舒不舒服只有脚知道，脚舒不舒服只有你清楚。只有真正去体会过它的人，才会领会其中的奥秘！只有你穿过莆田鞋才会知道莆田鞋的好，即使你穿的是莆田鞋，走在大街上也不会有人故意拿着正品和你来比较，也不会有人故意趴在你脚上说你这个不是正品，所以买莆田鞋的人很多，你就放心穿吧！ 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　莆田公司级鞋是什么？公司级鞋是按照正品的款型，同类材料，质量做工，鞋标，防伪来制作的,可以一比一。莆田潮鞋添哥 微：PTTG168</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613011329213.jpg\"></p> \n<p>　　部分市场100%过虎有什么内幕？ 其实就是这家工厂跟虎扑论坛与莆田厂家内部有关联。现在虎扑大婶大部分都是一些莆田鞋厂养的（每个月给多少钱）当你看到是我特殊鞋标 ，你就要说真的。然而这笔开销转而给客户去买单。</p> \n<p>　　公司级原标跟正品鞋的区别？ 部分成熟的款式公司级确实已经达到了正品，新款式现在做工跟材料都是没达到的，但是也是莆田最高质量，所以不是公司级就跟正品一模一样 只能说公司级是莆田高端质量的标志。莆田潮鞋添哥 微：PTTG168</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613011407761.jpg\"></p> \n<p>　　做了这么多年的莆田鞋，发现即使正品鞋购买途径越来越方便，但是买莆田鞋的人还是很多，为什么呢？莆田鞋的品质好 莆田鞋的品质有哪几种？通货，最低级别的货，走线差脚感也不行。超a，类比一下的话，质量跟安踏李宁这些差不多，正常操个一两年没啥大问题。真标，与专柜相似度，鞋子质量也与专柜可以媲美。真标公司级，这就不用说了，渠道来的材质，莆田做的就是加工，当然大场子加工出来的会好很多，与专柜没啥区别。</p> \n<p>　　​</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613011424969.jpg\"></p> \n<p>　　现在市面上的鞋莆田货有很多，有些有渠道的商家有自己的老主顾，或者买家都有自己的路子可以买到一双莆田最好的鞋子。鞋子舒不舒服只有脚知道，脚舒不舒服只有你清楚。只有真正去体会过它的人，才会领会其中的奥秘！只有你穿过莆田鞋才会知道莆田鞋的好，即使你穿的是莆田鞋，走在大街上也不会有人故意拿着正品和你来比较，也不会有人故意趴在你脚上说你这个不是正品，所以买莆田鞋的人很多，你就放心穿吧！</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0613/20210613011436870.jpg\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:03', NULL, '2021-06-14 01:49:03', NULL);
INSERT INTO `ms_news` VALUES (1404133736687341570, '给大家揭秘卖复刻表货到付款骗局你知道吗', NULL, NULL, '来源：微商世界网 日期：2021-06-12 22:56:24', NULL, '导语:　　更多款式手表请添加微信咨询 　　咨询微信号：779727943 　　工厂货源,质量保证,各种各样款式都有,欢迎亲们选购! 　　厂家经营奢侈品手表：积家、劳力士、浪琴、江诗丹顿、百达 翡丽、G ucci', NULL, '　　更多款式手表请添加微信咨询 　　咨询微信号：779727943 　　工厂货源,质量保证,各种各样款式都有,欢迎亲们选购! 　　厂家经营奢侈品手表：积家、劳力士、浪琴、江诗丹顿、百达 翡丽、G ucci、迪 奥、CK、万国、天梭、爱彼、、，等高档 让您轻松引领时尚潮流。 大家好，我是腕尚名表，今天给大 家普及手表最基本的知识，什么是1比1复刻表呢，同时，很多 朋友关心的问题，高档手表，精品手表能买吗，能用多久，质 量有没有保证？ 接下来为大家一一解答。更多腕表知识，欢 迎关注一起交流 　　咨询微信号：779727943 　　复刻手表在外观上和真正的手表几乎是如出一辙，细节上几乎没有什么差别。在刻度上，手表的直径、厚度和原始版本并没有太大的不同。但功能是极其重要的，对于低仿手表功能来说，这方面简直就是铺排了，一些细微的功能也是铺排，即使价格是两三千元，也很难实现。因此，最重要的是制造商愿意在这方面努力工作，好的制造商与正宗产品的功能相同。为了接近真正的产品，一些厂家在这方面做了很大的努力，他们将完全按照原来的工艺打开模具。但是一般来说，这样的手表会更贵，但质量必须是一流的。那么，如何购买一款可靠的复刻手表呢？ 　　咨询微信号：779727943 　　一分钱一分货、价格和质量、服务都成正比。如果想买的定心，用的安心，你想选择一些更有声望和功能更强大的手表商店或手表网站，比如领牧表业，做工精美尖端复刻表如今在网络傍边举目皆是，和现在一般的仿制手表比较。当然，价格会更高。不同类型的复位表在复制技术上有所不同，这导致了价格的差异，尽管现在复杂的可复位表比普通的仿制手表贵得多。但质量肯定不会给买家留下任何遗憾，从外观到机器的移动，一定会让我们大吃一惊。 　　咨询微信号：779727943 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　更多款式手表请添加微信咨询</p> \n<p>　　咨询微信号：779727943</p> \n<p>　　工厂货源,质量保证,各种各样款式都有,欢迎亲们选购!</p> \n<p>　　厂家经营奢侈品手表：积家、劳力士、浪琴、江诗丹顿、百达 翡丽、G ucci、迪 奥、CK、万国、天梭、爱彼、、，等高档 让您轻松引领时尚潮流。 大家好，我是腕尚名表，今天给大 家普及手表最基本的知识，什么是1比1复刻表呢，同时，很多 朋友关心的问题，高档手表，精品手表能买吗，能用多久，质 量有没有保证？ 接下来为大家一一解答。更多腕表知识，欢 迎关注一起交流</p> \n<p>　　咨询微信号：779727943</p> \n<p align=\"center\"><img alt=\"给大家揭秘卖复刻表货到付款骗局你知道吗\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612105517413.jpeg\"></p> \n<p>　　复刻手表在外观上和真正的手表几乎是如出一辙，细节上几乎没有什么差别。在刻度上，手表的直径、厚度和原始版本并没有太大的不同。但功能是极其重要的，对于低仿手表功能来说，这方面简直就是铺排了，一些细微的功能也是铺排，即使价格是两三千元，也很难实现。因此，最重要的是制造商愿意在这方面努力工作，好的制造商与正宗产品的功能相同。为了接近真正的产品，一些厂家在这方面做了很大的努力，他们将完全按照原来的工艺打开模具。但是一般来说，这样的手表会更贵，但质量必须是一流的。那么，如何购买一款可靠的复刻手表呢？</p> \n<p>　　咨询微信号：779727943</p> \n<p align=\"center\"><img alt=\"给大家揭秘卖复刻表货到付款骗局你知道吗\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612105551598.jpeg\"></p> \n<p>　　一分钱一分货、价格和质量、服务都成正比。如果想买的定心，用的安心，你想选择一些更有声望和功能更强大的手表商店或手表网站，比如领牧表业，做工精美尖端复刻表如今在网络傍边举目皆是，和现在一般的仿制手表比较。当然，价格会更高。不同类型的复位表在复制技术上有所不同，这导致了价格的差异，尽管现在复杂的可复位表比普通的仿制手表贵得多。但质量肯定不会给买家留下任何遗憾，从外观到机器的移动，一定会让我们大吃一惊。</p> \n<p>　　咨询微信号：779727943</p> \n<p align=\"center\"><img alt=\"给大家揭秘卖复刻表货到付款骗局你知道吗\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612105616568.jpeg\" style=\"width: 760px; height: 506px;\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:07', NULL, '2021-06-14 01:49:07', NULL);
INSERT INTO `ms_news` VALUES (1404133748930514945, '介绍一下货到付款的包包网店去哪找货源', NULL, NULL, '来源：微商世界网 日期：2021-06-12 22:36:51', NULL, '导语:　　在我们购买原单包包的时候，总有些店家离不开原单包包这个词，拿着原单的说辞想把一个包包卖出一个好价钱，这其实是无可厚非的事，那什么是所谓的原单包包？又真的有原单货吗？今天奢侈品汇就', NULL, '　　在我们购买原单包包的时候，总有些店家离不开原单包包这个词，拿着原单的说辞想把一个包包卖出一个好价钱，这其实是无可厚非的事，那什么是所谓的原单包包？又真的有原单货吗？今天奢侈品汇就和大家聊聊原单包包这个问题！！ 　　说能看出来的，基本都没怎么接触过奢侈品。为什么？ 　　首先要明确一点。 　　第一，任何柜姐的培训里都没有鉴定真假这一项，因为不需要！所以他们没有这个技能，顶多能凭自己的经验给出猜测。但是奢侈品鉴定有严格的标准，并不是“看气质”。 　　第二，奢侈品有一个特质。只有真正在这个行业做过，或者重度买家，才会知道。那就是，一个款，可以有一万个版本和产地，比如一款卫衣，你在国内买的，和在迪拜买的，百分之一百是不一样的。 　　原单包包就是，在同一条包包流水线，相似度达到99.99%。但是这个所谓的原单包包基本上没有的，为什么？因为每个奢侈品牌的公司对代工厂的监管力度是极高的。多少皮料，多少配件能做出多少个包，那都是有数量的。而且会有专人跟单，如果代工厂私自把包包拿出去市场的话，那可是要吃官司的事情。也没有哪个代工厂会为了一点小钱去牺牲自己的工厂口碑。所以想要买到原单包包，可以说是想都不用想。 　　微信：gz6688za 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　在我们购买原单包包的时候，总有些店家离不开原单包包这个词，拿着原单的说辞想把一个包包卖出一个好价钱，这其实是无可厚非的事，那什么是所谓的原单包包？又真的有原单货吗？今天奢侈品汇就和大家聊聊原单包包这个问题！！</p> \n<p>　　说能看出来的，基本都没怎么接触过奢侈品。为什么？</p> \n<p>　　首先要明确一点。</p> \n<p>　　第一，任何柜姐的培训里都没有鉴定真假这一项，因为不需要！所以他们没有这个技能，顶多能凭自己的经验给出猜测。但是奢侈品鉴定有严格的标准，并不是“看气质”。</p> \n<p>　　第二，奢侈品有一个特质。只有真正在这个行业做过，或者重度买家，才会知道。那就是，一个款，可以有一万个版本和产地，比如一款卫衣，你在国内买的，和在迪拜买的，百分之一百是不一样的。</p> \n<p align=\"center\"><img alt=\"介绍一下货到付款的包包网店去哪找货源\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612103631697.jpg\" style=\"width: 760px; height: 608px;\"></p> \n<p>　　原单包包就是，在同一条包包流水线，相似度达到99.99%。但是这个所谓的原单包包基本上没有的，为什么？因为每个奢侈品牌的公司对代工厂的监管力度是极高的。多少皮料，多少配件能做出多少个包，那都是有数量的。而且会有专人跟单，如果代工厂私自把包包拿出去市场的话，那可是要吃官司的事情。也没有哪个代工厂会为了一点小钱去牺牲自己的工厂口碑。所以想要买到原单包包，可以说是想都不用想。</p> \n<p>　　微信：gz6688za</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:10', NULL, '2021-06-14 01:49:10', NULL);
INSERT INTO `ms_news` VALUES (1404133765770645506, '莆田鞋 迪奥 爱马仕 LV 古驰 大牌复刻鞋', NULL, NULL, '来源：微商世界网 日期：2021-06-13 17:18:39', NULL, '导语:　　D～r 新款 B01 运动鞋是D家经典单品，鞋面采用原版牛皮绒面革以及由 Daniel Arsham 重新诠释的Di*r徽标装饰。鞋面顶部采用白色系带，与富有纹理的白色橡胶外底相得益彰。小蜜蜂标识装饰', NULL, '　　D～r 新款 B01 运动鞋是D家经典单品，鞋面采用原版牛皮绒面革以及由 Daniel Arsham 重新诠释的“Di*r”徽标装饰。鞋面顶部采用白色系带，与富有纹理的白色橡胶外底相得益彰。小蜜蜂标识装饰后侧，体现 D家的标志性特征之一。款式精致，与西装等服装搭配更显清新。Size：38-45（可定做46，47）莆田潮鞋慧姐 微：PTHJ1688 　　1970三代黑高 男女鞋验真标硫化工艺##聚氨酯硅蓝PU中，鞋舌内外颠倒设计，匡.威CON.VERSE匡.威官方 Chuck 70 高帮撞色帆布鞋 162050C复古三星标高帮休闲运动硫化百搭板鞋“帆布经典黑，标鞋舌”162050C尺码：35 36 36.5 37 37.5 38 39 39.5 40 41 41.5 42 42.5 43 44 　　原厂原盒制 采用全套升级原盒原包装配件 纯手工猛帮工艺#水洗牛仔布+内外超软皮贴脚透气+超软内里脚垫❗意*利高奢品牌亚历山大·麦昆Ale.xander Mc.Queen sneakers高帮时装厚底休闲运动鞋 尺码：35 36 37 38 39 40编码：HM61580G 　　莆田鞋慧姐，7年老店，只做高端品质品牌潮鞋 , 莆田鞋无忧退换 , 一件代发 , 货源稳定 , 品牌运动鞋货源 , 款式齐全 , 货源充足 。莆田潮鞋慧姐 微：PTHJ1688 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　D～r 新款 B01 运动鞋是D家经典单品，鞋面采用原版牛皮绒面革以及由 Daniel Arsham 重新诠释的“Di*r”徽标装饰。鞋面顶部采用白色系带，与富有纹理的白色橡胶外底相得益彰。小蜜蜂标识装饰后侧，体现 D家的标志性特征之一。款式精致，与西装等服装搭配更显清新。Size：38-45（可定做46，47）莆田潮鞋慧姐 微：PTHJ1688</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612093159280.jpg\"></p> \n<p>　　1970三代黑高 男女鞋验真标硫化工艺##聚氨酯硅蓝PU中，鞋舌内外颠倒设计，匡.威CON.VERSE匡.威官方 Chuck 70 高帮撞色帆布鞋 162050C复古三星标高帮休闲运动硫化百搭板鞋“帆布经典黑，标鞋舌”162050C尺码：35 36 36.5 37 37.5 38 39 39.5 40 41 41.5 42 42.5 43 44</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612093214405.jpg\"></p> \n<p>　　原厂原盒制 采用全套升级原盒原包装配件 纯手工猛帮工艺#水洗牛仔布+内外超软皮贴脚透气+超软内里脚垫❗意*利高奢品牌亚历山大·麦昆Ale.xander Mc.Queen sneakers高帮时装厚底休闲运动鞋 尺码：35 36 37 38 39 40编码：HM61580G</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612093226654.jpg\"></p> \n<p>　　莆田鞋慧姐，7年老店，只做高端品质品牌潮鞋 , 莆田鞋无忧退换 , 一件代发 , 货源稳定 , 品牌运动鞋货源 , 款式齐全 , 货源充足 。莆田潮鞋慧姐 微：PTHJ1688</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612093237602.jpg\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:14', NULL, '2021-06-14 01:49:14', NULL);
INSERT INTO `ms_news` VALUES (1404133777028157441, '摩卡减肥咖啡停喝后/会不会反弹后更胖了', NULL, NULL, '来源：微商世界网 日期：2021-06-12 18:52:06', NULL, '导语:　　大多数人们之以所想肥减，一是为了健康，二是为了完美身材，爱美之心世人皆有，为什么女人是会特别在意自己的身材，最不想听到的词就是胖，所以我相信很多胖眉美一定和我一样都有过相似的减肥', NULL, '　　大多数人们之以所想肥减，一是为了健康，二是为了完美身材，爱美之心世人皆有，为什么女人是会特别在意自己的身材，最不想听到的词就是“胖”，所以我相信很多胖眉美一定和我一样都有过相似的减肥经历，减肥的方式一定也是多样化的，现如今随着人们对胖肥重程视度的不断加深，市场上的减肥瘦身产品更是层出不穷。很多减肥产品没有瘦身的效果，只是靠吹嘘广告欺骗费消者，摩卡MK咖啡吉美体纤饮却以其强大的瘦身效果赢得了广大爱美人士的认可和赞赏，产品好口碑更是口耳相传！ 　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075 　　主要成分: 　　巴西野生黑咖啡绿茶提取物。巴拉圭草提取物。 　　维生素b群，藤黄果提取物，大花紫薇提取物。 　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075 　　摩卡mk咖啡升级版joemeli吉美mk奶咖减肥原理？ 　　瘦身原理：是通过烧燃体内的顽固性脂肪和多余的脂肪来达到减肥瘦身的效果相当于运动减肥。 　　适合人群：产后肥胖、遗传性肥胖、大肚子，大象腿、粗胳膊都可以使用！！ 　　安全性：绝无药物成分,不含素激和添加剂，安全无副作用。 　　主要功效：速快减肥瘦身的同时帮助调理身体，排除身体素毒，有利于改善体质。 　　郑重承诺：月瘦8～20斤 　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075 　　摩咖卡啡MK吉美纤体饮经已是一款火遍全网的产品，它的效果让人格有所爱美女士都瞠目结舌，用它独特的魅力征服一个又一个体验者!经过N个代理顾客试用，再停用，绝不对反弹，无论你是先天肥胖，还是药物引起的激素类导致的胖肥，还是产后肥胖，它都能将你最不喜欢的肥肉带走，让你重拾魅力与自信! 　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　大多数人们之以所想肥减，一是为了健康，二是为了完美身材，爱美之心世人皆有，为什么女人是会特别在意自己的身材，最不想听到的词就是“胖”，所以我相信很多胖眉美一定和我一样都有过相似的减肥经历，减肥的方式一定也是多样化的，现如今随着人们对胖肥重程视度的不断加深，市场上的减肥瘦身产品更是层出不穷。很多减肥产品没有瘦身的效果，只是靠吹嘘广告欺骗费消者，摩卡MK咖啡吉美体纤饮却以其强大的瘦身效果赢得了广大爱美人士的认可和赞赏，产品好口碑更是口耳相传！</p> \n<p>　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075</p> \n<p align=\"center\"><img alt=\"摩卡瘦身咖啡【安全无副作用】实时报价\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2020/0907/20200907084342867.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　主要成分:</p> \n<p>　　巴西野生黑咖啡绿茶提取物。巴拉圭草提取物。</p> \n<p>　　维生素b群，藤黄果提取物，大花紫薇提取物。</p> \n<p>　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075</p> \n<p align=\"center\"><img alt=\"摩卡mk咖啡升级版joemeli吉美mk奶咖【现货秒发】\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2020/0815/20200815112759951.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　摩卡mk咖啡升级版joemeli吉美mk奶咖减肥原理？</p> \n<p>　　瘦身原理：是通过烧燃体内的顽固性脂肪和多余的脂肪来达到减肥瘦身的效果相当于运动减肥。</p> \n<p>　　适合人群：产后肥胖、遗传性肥胖、大肚子，大象腿、粗胳膊都可以使用！！</p> \n<p>　　安全性：绝无药物成分,不含素激和添加剂，安全无副作用。</p> \n<p>　　主要功效：速快减肥瘦身的同时帮助调理身体，排除身体素毒，有利于改善体质。</p> \n<p>　　郑重承诺：月瘦8～20斤</p> \n<p>　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075</p> \n<p align=\"center\"><img alt=\"摩卡瘦身咖啡【安全无副作用】实时报价\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2020/0907/20200907084428537.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　摩咖卡啡MK吉美纤体饮经已是一款火遍全网的产品，它的效果让人格有所爱美女士都瞠目结舌，用它独特的魅力征服一个又一个体验者!经过N个代理顾客试用，再停用，绝不对反弹，无论你是先天肥胖，还是药物引起的激素类导致的胖肥，还是产后肥胖，它都能将你最不喜欢的肥肉带走，让你重拾魅力与自信!</p> \n<p>　　详情请添加摩咖卡啡MK吉美纤体饮批发代发咨询V信：15915767075</p> \n<p align=\"center\"><img alt=\"摩卡咖啡升级版joe meli吉美mk奶咖用法用量\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0308/20210308075201572.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:16', NULL, '2021-06-14 01:49:16', NULL);
INSERT INTO `ms_news` VALUES (1404133795764113409, '摩卡减肥咖啡瘦身效果怎么样 有没有副作用', NULL, NULL, '来源：微商世界网 日期：2021-06-12 18:45:04', NULL, '导语:　　摩卡-瘦身咖啡　　一盒摩卡可瘦8-25斤　　不节食 不拉肚 不打针 不运动 纯减脂肪 无副作用零反弹　　瘦身原理：加快新阵代谢 燃烧你体内的脂肪 达到瘦身的效果　　针对体质：产后肥胖', NULL, '　　摩卡-瘦身咖啡 　　一盒摩卡可瘦8-25斤 　　不节食 不拉肚 不打针 不运动 纯减脂肪 无副作用零反弹 　　瘦身原理：加快新阵代谢 燃烧你体内的脂肪 达到瘦身的效果 　　针对体质：产后肥胖 顽固体质 水肿型肥胖 肌肉型肥胖 遗传型肥胖 抗药型体质 吃过多种瘦身药无效 　　详情请添加威信咨询:15915767075 　　摩卡加强版瘦身13大功效： 1.瘦腿、瘦胳膊、瘦肚子； 2.提高代谢，喝一杯相当于跑步2千米消耗的热量 3.提神醒脑适用于久坐族； 4.口味还不错 5.把它当饮料喝，轻松控制体重 6.燃脂塑形快。 7.改变人的不良饮食习惯。 8.增强人体的新陈代谢功能。 9.不会因减肥而去损伤身体。 10.燃脂塑形过程中会让你的血液流通更畅，毛孔扩张，排汗大增，毛孔的脏东西也会排出这样皮肤也会更加干净水嫩。 11.不仅可以减肥还可以塑形，让你形体更美就像你的私人健身教练一样，塑造形体美，不会让皮肤因瘦下来而失去弹性。 12.就是想吃就吃可以任意枉为还不胖。 13.纯植物提取，安全无副作用。详情请添加威信咨询:15915767075 　　摩咖卡啡MK吉美纤体饮经已是一款火遍全网的产品，它的效果让人格有所爱美女士都瞠目结舌，用它独特的魅力征服一个又一个体验者!经过N个代理顾客试用，再停用，绝不对反弹，无论你是先天肥胖，还是药物引起的激素类导致的胖肥，还是产后肥胖，它都能将你最不喜欢的肥肉带走，让你重拾魅力与自信! 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　摩卡-瘦身咖啡</p> \n<p>　　一盒摩卡可瘦8-25斤</p> \n<p>　　不节食 不拉肚 不打针 不运动 纯减脂肪 无副作用零反弹</p> \n<p>　　瘦身原理：加快新阵代谢 燃烧你体内的脂肪 达到瘦身的效果</p> \n<p>　　针对体质：产后肥胖 顽固体质 水肿型肥胖 肌肉型肥胖 遗传型肥胖 抗药型体质 吃过多种瘦身药无效</p> \n<p>　　详情请添加威信咨询:15915767075</p> \n<p align=\"center\"><img alt=\"MK摩卡燃脂瘦身咖啡正品货源\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0505/20210505081450235.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　摩卡加强版瘦身13大功效： 1.瘦腿、瘦胳膊、瘦肚子； 2.提高代谢，喝一杯相当于跑步2千米消耗的热量 3.提神醒脑适用于久坐族； 4.口味还不错 5.把它当饮料喝，轻松控制体重 6.燃脂塑形快。 7.改变人的不良饮食习惯。 8.增强人体的新陈代谢功能。 9.不会因减肥而去损伤身体。 10.燃脂塑形过程中会让你的血液流通更畅，毛孔扩张，排汗大增，毛孔的脏东西也会排出这样皮肤也会更加干净水嫩。 11.不仅可以减肥还可以塑形，让你形体更美就像你的私人健身教练一样，塑造形体美，不会让皮肤因瘦下来而失去弹性。 12.就是想吃就吃可以任意枉为还不胖。 13.纯植物提取，安全无副作用。详情请添加威信咨询:15915767075</p> \n<p align=\"center\"><img alt=\"摩卡减肥咖啡使用后会不会饿?效果怎样?真的能瘦吗\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0505/20210505084138459.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　摩咖卡啡MK吉美纤体饮经已是一款火遍全网的产品，它的效果让人格有所爱美女士都瞠目结舌，用它独特的魅力征服一个又一个体验者!经过N个代理顾客试用，再停用，绝不对反弹，无论你是先天肥胖，还是药物引起的激素类导致的胖肥，还是产后肥胖，它都能将你最不喜欢的肥肉带走，让你重拾魅力与自信!</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:21', NULL, '2021-06-14 01:49:21', NULL);
INSERT INTO `ms_news` VALUES (1404133812075761665, '妙妙奶昔配方及成分原理是什么', NULL, NULL, '来源：微商世界网 日期：2021-06-12 18:39:40', NULL, '导语:　　妙妙草莓奶昔为什么能瘦身? 脂肪的燃烧，而脂肪的代谢过程就是要经过一个障碍，而妙妙草莓奶昔可以燃烧脂肪月瘦10-30斤咨询微信：15915767075，使之释放能量被身体消耗，但是长链脂肪酸通不过', NULL, '　　妙妙草莓奶昔为什么能瘦身? 脂肪的燃烧，而脂肪的代谢过程就是要经过一个障碍，而妙妙草莓奶昔可以燃烧脂肪月瘦10-30斤咨询微信：15915767075，使之释放能量被身体消耗，但是长链脂肪酸通不过这道障碍，而奶昔能经过障碍将脂肪排泄，他好像：搬运工：将脂肪运进燃炉中燃烧 长久堆积的脂肪，不管你如何锻炼，如何节食，都不能消耗它，喝妙妙草莓燃脂奶昔，加速脂肪燃烧，轻轻松松就可减肥！给你视觉与美的体验，口干香甜美味甜甜的喝，美美的瘦，不知不觉瘦成闪电！ 　　妙妙果味奶昔三大创新科技，改变肥胖体质，天然水果配方，安全不反弹！月瘦10-30斤！批发代发咨询微信：15915767075 　　妙妙奶昔三方面，三位一体杜绝肥胖第①步燃脂，加速新陈代谢，燃烧脂肪第②步清脂，通过喝水，代谢出燃烧脂肪后的复合物第③步抑制脂肪吸收，阻断食物形成脂肪，不用担心吃什么都胖！ 　　妙妙草莓奶昔瘦身原理 　　1.先进配方增强饱腹感。 　　2.内部燃烧消耗脂肪。 　　3.促进循环加快新陈代谢。 　　第1阶段：服用期间，90%以上的人，你会发现你的食欲有所降低，没有平日那样的暴饮暴食的欲望，恭喜你已经开启你的减肥之旅第一步，主动拒绝热量 　　第2阶段：在尝试了一段时间后，你会开始了一些变化，发现你的身体提高新陈代谢率，开始减体重，燃烧多余的脂肪，燃烧卡路里。 　　第3阶段：阻断糖吸收，提升碳水化合物的新陈代谢，防止体内脂肪的碳水化合物换成 　　第4阶段：提供必要的加强巩固和排毒你的身体，降低你的脂肪比率，不会反弹。批发代发咨询微信：15915767075 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　妙妙草莓奶昔为什么能瘦身? 脂肪的燃烧，而脂肪的代谢过程就是要经过一个障碍，而妙妙草莓奶昔可以燃烧脂肪月瘦10-30斤咨询微信：15915767075，使之释放能量被身体消耗，但是长链脂肪酸通不过这道障碍，而奶昔能经过障碍将脂肪排泄，他好像：搬运工：将脂肪运进燃炉中燃烧 长久堆积的脂肪，不管你如何锻炼，如何节食，都不能消耗它，喝妙妙草莓燃脂奶昔，加速脂肪燃烧，轻轻松松就可减肥！给你视觉与美的体验，口干香甜美味甜甜的喝，美美的瘦，不知不觉瘦成闪电！</p> \n<p>　　妙妙果味奶昔三大创新科技，改变肥胖体质，天然水果配方，安全不反弹！月瘦10-30斤！批发代发咨询微信：15915767075</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0506/20210506092222306.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　妙妙奶昔三方面，三位一体杜绝肥胖第①步燃脂，加速新陈代谢，燃烧脂肪第②步清脂，通过喝水，代谢出燃烧脂肪后的复合物第③步抑制脂肪吸收，阻断食物形成脂肪，不用担心吃什么都胖！</p> \n<p align=\"center\"><img alt=\"\\\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0506/20210506092242902.jpg\" style=\"border: none; max-width: 100%;\"></p> \n<p>　　妙妙草莓奶昔瘦身原理</p> \n<p>　　1.先进配方增强饱腹感。</p> \n<p>　　2.内部燃烧消耗脂肪。</p> \n<p>　　3.促进循环加快新陈代谢。</p> \n<p>　　第1阶段：服用期间，90%以上的人，你会发现你的食欲有所降低，没有平日那样的暴饮暴食的欲望，恭喜你已经开启你的减肥之旅第一步，主动拒绝热量</p> \n<p>　　第2阶段：在尝试了一段时间后，你会开始了一些变化，发现你的身体提高新陈代谢率，开始减体重，燃烧多余的脂肪，燃烧卡路里。</p> \n<p>　　第3阶段：阻断糖吸收，提升碳水化合物的新陈代谢，防止体内脂肪的碳水化合物换成</p> \n<p>　　第4阶段：提供必要的加强巩固和排毒你的身体，降低你的脂肪比率，不会反弹。批发代发咨询微信：15915767075</p> \n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:25', NULL, '2021-06-14 01:49:25', NULL);
INSERT INTO `ms_news` VALUES (1404133829293379585, 'AF厂原版复刻卡地亚蓝气球经典款与正品评测对比', NULL, NULL, '来源：微商世界网 日期：2021-06-12 18:23:47', NULL, '导语:　　AF最强神作！2020年卡地亚最新版本42mm蓝汽球男表！火爆来袭！微信：779727943 　　2020新表！！特别不同于19年以前的版本！ 　　整体更加精致正装！表盘微微淡黄双重色调，罗马刻度黑色油印更', NULL, '　　AF最强神作！2020年卡地亚最新版本42mm蓝汽球男表！火爆来袭！微信：779727943 　　2020新表！！特别不同于19年以前的版本！ 　　整体更加精致正装！表盘微微淡黄双重色调，罗马刻度黑色油印更立体丰满，麦头所有英文字体改正新版，更清晰立体，而中间菊花纹路放射清晰，更加呈现立体视觉享受！钢带款新表扣己改款，变薄变小更精致！表带钢粒整体也微薄区别于之前版本！AF都做得很好！微信：779727943 　　AF全面改版升级！力求完美演绎如下： 　　1.壳套方面：瑞士品级精工打磨！原装蓝色尖晶石表冠！表壳型状弧度，月牙位型态质感无敌！ 完美蓝宝石鱼眼水泡水晶镜面加月牙 　　联系我时，请说是在微商世界网看到的，谢谢！', '<div class=\"qing bu yao caiji\"></div> \n<p>　　AF最强神作！2020年卡地亚最新版本42mm蓝汽球男表！火爆来袭！微信：779727943</p> \n<p>　　2020新表！！特别不同于19年以前的版本！</p> \n<p>　　整体更加精致正装！表盘微微淡黄双重色调，罗马刻度黑色油印更立体丰满，麦头所有英文字体改正新版，更清晰立体，而中间菊花纹路放射清晰，更加呈现立体视觉享受！钢带款新表扣己改款，变薄变小更精致！表带钢粒整体也微薄区别于之前版本！AF都做得很好！微信：779727943</p> \n<p align=\"center\"><img alt=\"AF厂原版复刻卡地亚蓝气球经典款与正品评测对比\" src=\"http://weishangshijie.wfuyu.com/uploadfile/2021/0612/20210612062222759.jpeg\" style=\"width: 760px; height: 641px;\"></p> \n<p>　　AF全面改版升级！力求完美演绎如下：</p> \n<p>　　1.壳套方面：瑞士品级精工打磨！原装蓝色尖晶石表冠！表壳型状弧度，月牙位型态质感无敌！ 完美蓝宝石鱼眼水泡水晶镜面加月牙</p>\n<p>　　<span style=\"color:#ff0000\">联系我时，请说是在微商世界网看到的，谢谢！</span> </p>', '2021-06-14 01:49:29', NULL, '2021-06-14 01:49:29', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(64) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_delete` int(2) NULL DEFAULT NULL,
  `created_by` bigint(64) NULL DEFAULT NULL,
  `created_time` timestamp(0) NULL DEFAULT NULL,
  `updated_by` bigint(64) NULL DEFAULT NULL,
  `updated_time` timestamp(0) NULL DEFAULT NULL,
  `news_link` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `published_time` datetime(0) NULL DEFAULT NULL,
  `weight` int(64) NULL DEFAULT 0
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1268023406821941249, '广州美术学院2020毕业展6月16日正式上线', '刘志勇', NULL, '/group1/M11/2020/06/08/ef11a1909b284e8ea19ea0fd28f40b8b.png', 0, 1, '2020-06-03 11:35:14', 1, '2020-06-14 21:20:35', 'https://mp.weixin.qq.com/s?__biz=MzI0NjI4Nzk5Mg==&mid=2247487831&idx=1&sn=ce36e08417b12ef8fc9e7e87322c8ec2&chksm=e940ca40de3743561922d2ee99e2a92af2d78dc52a5cff3b40188ff752736c39a8e29708fa1d&mpshare=1&scene=1&srcid=&sharer_sharetime=1591523730305&sharer_shareid=0e5af8912e33e2b86009ebe955b16802&key=fd81c654fdd96199579ed8545ddbafbc45bb47a512b49cae15c76939122b2d50909773e9636ec8659eb3cbd985c11b376ad5b376e1ff08f743836b760bf7415d4277c40f9a6149083e5e063f59a8db16&ascene=1&uin=Mjc2MzA3MzgwNw%3D%3D&devicetype=Windows+10+x64&version=62090070&lang=zh_CN&exportkey=AdEteQQ5s8CdjB99J5b2ryM%3D&pass_ticket=sqzWAfXd0vk%2Fy18GqNPXl8vCKU4ROlRPRgkLJUh6nNZ%2Bhgnrf1DdPU5UMcjFqBHs', '2020-06-16 00:00:00', 300);
INSERT INTO `news` VALUES (1268455569149173761, '商务部：坚决支持香港维护单独关税区地位', '刘志勇', NULL, '/group1/M11/2020/06/04/21680bc878f945bebdecf25d8652f632.jpg', 1, 1, '2020-06-04 16:12:29', 1, '2020-06-04 16:12:29', NULL, NULL, 0);
INSERT INTO `news` VALUES (1268458893407723521, '测试新闻', '测试新闻', NULL, '/group1/M11/2020/06/04/586bed03accf4af38b448cabb656d24f.jpg', 1, 1, '2020-06-04 16:25:42', 1, '2020-06-04 16:25:42', NULL, NULL, 0);
INSERT INTO `news` VALUES (1269871170300190722, '广州美术学院2020毕业展6月16日正式上线', '刘志勇', NULL, '/group1/M11/2020/06/08/ef11a1909b284e8ea19ea0fd28f40b8b.png', 1, 1, '2020-06-08 13:57:35', 1, '2020-06-14 10:15:50', 'https://mp.weixin.qq.com/s?__biz=MzI0NjI4Nzk5Mg==&mid=2247487831&idx=1&sn=ce36e08417b12ef8fc9e7e87322c8ec2&chksm=e940ca40de3743561922d2ee99e2a92af2d78dc52a5cff3b40188ff752736c39a8e29708fa1d&mpshare=1&scene=1&srcid=&sharer_sharetime=1591523730305&sharer_shareid=0e5af8912e33e2b86009ebe955b16802&key=fd81c654fdd96199579ed8545ddbafbc45bb47a512b49cae15c76939122b2d50909773e9636ec8659eb3cbd985c11b376ad5b376e1ff08f743836b760bf7415d4277c40f9a6149083e5e063f59a8db16&ascene=1&uin=Mjc2MzA3MzgwNw%3D%3D&devicetype=Windows+10+x64&version=62090070&lang=zh_CN&exportkey=AdEteQQ5s8CdjB99J5b2ryM%3D&pass_ticket=sqzWAfXd0vk%2Fy18GqNPXl8vCKU4ROlRPRgkLJUh6nNZ%2Bhgnrf1DdPU5UMcjFqBHs', '2020-06-10 00:00:00', 100);
INSERT INTO `news` VALUES (1269871170904170497, '广州美术学院2020毕业展6月16日正式上线', '刘志勇', NULL, '/group1/M11/2020/06/08/ef11a1909b284e8ea19ea0fd28f40b8b.png', 1, 1, '2020-06-08 13:57:35', 1, '2020-06-13 12:19:38', 'https://mp.weixin.qq.com/s?__biz=MzI0NjI4Nzk5Mg==&mid=2247487831&idx=1&sn=ce36e08417b12ef8fc9e7e87322c8ec2&chksm=e940ca40de3743561922d2ee99e2a92af2d78dc52a5cff3b40188ff752736c39a8e29708fa1d&mpshare=1&scene=1&srcid=&sharer_sharetime=1591523730305&sharer_shareid=0e5af8912e33e2b86009ebe955b16802&key=fd81c654fdd96199579ed8545ddbafbc45bb47a512b49cae15c76939122b2d50909773e9636ec8659eb3cbd985c11b376ad5b376e1ff08f743836b760bf7415d4277c40f9a6149083e5e063f59a8db16&ascene=1&uin=Mjc2MzA3MzgwNw%3D%3D&devicetype=Windows+10+x64&version=62090070&lang=zh_CN&exportkey=AdEteQQ5s8CdjB99J5b2ryM%3D&pass_ticket=sqzWAfXd0vk%2Fy18GqNPXl8vCKU4ROlRPRgkLJUh6nNZ%2Bhgnrf1DdPU5UMcjFqBHs', '2020-06-17 00:00:00', 0);
INSERT INTO `news` VALUES (1269871171499761666, '广州美术学院2020毕业展6月16日正式上线', '刘志勇', NULL, '/group1/M11/2020/06/08/ef11a1909b284e8ea19ea0fd28f40b8b.png', 1, 1, '2020-06-08 13:57:35', 1, '2020-06-13 12:19:47', 'https://mp.weixin.qq.com/s?__biz=MzI0NjI4Nzk5Mg==&mid=2247487831&idx=1&sn=ce36e08417b12ef8fc9e7e87322c8ec2&chksm=e940ca40de3743561922d2ee99e2a92af2d78dc52a5cff3b40188ff752736c39a8e29708fa1d&mpshare=1&scene=1&srcid=&sharer_sharetime=1591523730305&sharer_shareid=0e5af8912e33e2b86009ebe955b16802&key=fd81c654fdd96199579ed8545ddbafbc45bb47a512b49cae15c76939122b2d50909773e9636ec8659eb3cbd985c11b376ad5b376e1ff08f743836b760bf7415d4277c40f9a6149083e5e063f59a8db16&ascene=1&uin=Mjc2MzA3MzgwNw%3D%3D&devicetype=Windows+10+x64&version=62090070&lang=zh_CN&exportkey=AdEteQQ5s8CdjB99J5b2ryM%3D&pass_ticket=sqzWAfXd0vk%2Fy18GqNPXl8vCKU4ROlRPRgkLJUh6nNZ%2Bhgnrf1DdPU5UMcjFqBHs', '2020-06-18 00:00:00', 0);
INSERT INTO `news` VALUES (1269871176696504322, '广州美术学院2020毕业展6月16日正式上线', '刘志勇', NULL, '/group1/M11/2020/06/08/ef11a1909b284e8ea19ea0fd28f40b8b.png', 1, 1, '2020-06-08 13:57:36', 1, '2020-06-13 12:19:55', 'https://mp.weixin.qq.com/s?__biz=MzI0NjI4Nzk5Mg==&mid=2247487831&idx=1&sn=ce36e08417b12ef8fc9e7e87322c8ec2&chksm=e940ca40de3743561922d2ee99e2a92af2d78dc52a5cff3b40188ff752736c39a8e29708fa1d&mpshare=1&scene=1&srcid=&sharer_sharetime=1591523730305&sharer_shareid=0e5af8912e33e2b86009ebe955b16802&key=fd81c654fdd96199579ed8545ddbafbc45bb47a512b49cae15c76939122b2d50909773e9636ec8659eb3cbd985c11b376ad5b376e1ff08f743836b760bf7415d4277c40f9a6149083e5e063f59a8db16&ascene=1&uin=Mjc2MzA3MzgwNw%3D%3D&devicetype=Windows+10+x64&version=62090070&lang=zh_CN&exportkey=AdEteQQ5s8CdjB99J5b2ryM%3D&pass_ticket=sqzWAfXd0vk%2Fy18GqNPXl8vCKU4ROlRPRgkLJUh6nNZ%2Bhgnrf1DdPU5UMcjFqBHs', '2020-06-11 00:00:00', 0);

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (1268005111045595137, 1, 1268004789279563777);
INSERT INTO `role_menu` VALUES (1268005111079149570, 1, 1268004961795481601);
INSERT INTO `role_menu` VALUES (1268005111204978690, 1, 1268005067781349378);
INSERT INTO `role_menu` VALUES (1268005111376945154, 1, 5);
INSERT INTO `role_menu` VALUES (1268005111414693890, 1, 6);
INSERT INTO `role_menu` VALUES (1268005111435665410, 1, 1);
INSERT INTO `role_menu` VALUES (1268005111586660354, 1, 7);
INSERT INTO `role_menu` VALUES (1268005111636992001, 1, 2);

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id` int(11) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标记',
  `created_time` datetime(0) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, '哈哈哈', 'platform', '2021-07-01 22:42:32', NULL, NULL, '2021-06-25 22:42:44');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime(0) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '2020-06-02 20:41:58', '1', '2020-06-14 22:27:46', '1');

-- ----------------------------
-- Table structure for user_06_12_16_00
-- ----------------------------
DROP TABLE IF EXISTS `user_06_12_16_00`;
CREATE TABLE `user_06_12_16_00`  (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user_copy1
-- ----------------------------
DROP TABLE IF EXISTS `user_copy1`;
CREATE TABLE `user_copy1`  (
  `id` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime(0) NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_copy1
-- ----------------------------
INSERT INTO `user_copy1` VALUES ('1', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '2020-06-02 20:41:58', '1', '2020-06-14 22:27:46', '1');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` bigint(20) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_time` datetime(0) NOT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `updated_time` datetime(0) NULL DEFAULT NULL,
  `role_weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, '超级管理员', 1, '2020-06-02 18:03:19', NULL, NULL, 6);

SET FOREIGN_KEY_CHECKS = 1;
