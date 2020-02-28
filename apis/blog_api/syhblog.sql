/*
 Navicat Premium Data Transfer

 Source Server         : shuyuheng
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : syhblog

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 29/02/2020 00:05:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `img_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `user_com_id` int(11) NOT NULL DEFAULT 0 COMMENT '谁的主页下的评论',
  `create_time` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `reply_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '嘿嘿嘿', NULL, NULL, 5, 5, '1580386865745', NULL);
INSERT INTO `comment` VALUES (2, '笑个屁', 1, NULL, 5, 0, '1580386865745', 5);
INSERT INTO `comment` VALUES (3, '就笑了 咋滴', 1, NULL, 5, 0, '1580386865745', 5);
INSERT INTO `comment` VALUES (4, '45645', NULL, NULL, 6, 5, '1580386865745', NULL);
INSERT INTO `comment` VALUES (5, '撒打发时光', NULL, NULL, 8, 5, '1580386865745', NULL);
INSERT INTO `comment` VALUES (6, '啊手动阀', NULL, NULL, 6, 5, '1580386865745', NULL);
INSERT INTO `comment` VALUES (7, '发生的改为如果', NULL, NULL, 6, 5, '1580386865745', NULL);
INSERT INTO `comment` VALUES (8, 's\'d嘎斯大噶山豆根', NULL, NULL, 6, 5, '1580386865745', NULL);
INSERT INTO `comment` VALUES (9, '回复id4', 4, NULL, 5, 0, '89746579456', 6);
INSERT INTO `comment` VALUES (10, '我在回复***嘿嘿挺好玩', NULL, NULL, 5, 112, '1581902909204', NULL);
INSERT INTO `comment` VALUES (11, '我在回复***嘿嘿挺好玩', 15, '/upload_files/2020-2-17/1581900827415.jpg', 5, 112, '1581903184819', 11);

-- ----------------------------
-- Table structure for imgs
-- ----------------------------
DROP TABLE IF EXISTS `imgs`;
CREATE TABLE `imgs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_mini` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for navs
-- ----------------------------
DROP TABLE IF EXISTS `navs`;
CREATE TABLE `navs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `navs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1,1,1,1,1,1',
  `n1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '000,000,000',
  `n2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '000,000,000',
  `n3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '000,000,000',
  `n4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '000,000,000',
  `n5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '000,000,000',
  `n6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '000,000,000',
  `n1_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `n2_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `n3_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `n4_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `n5_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `n6_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of navs
-- ----------------------------
INSERT INTO `navs` VALUES (2, 13, '0,1,0,0,1,1', '000,000,000', '0,0,0', '000,000,000', '000,000,000', '0,0,0', '0,0,0', 'http://192.168.0.104:7788/upload_files/2020-2-17/syh.jpg', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `navs` VALUES (3, 5, '1,1,1,1,1,1', '可爱至极,傻六六在此,标配顶配天仙配', '12345,54321,杀杀杀', '生活点滴,记录美好,拍出火气', '爱情～,一日三餐四季,你我足以', '旅行的意义,生命~,川流不息', '000,000,000', '/upload_files/2020-2-27/1582800976759.jpeg', '/upload_files/2020-2-28/1582865340493.jpg', '', '/upload_files/2020-2-27/1582800254625.jpg', '/upload_files/2020-2-27/1582799517765.jpg', '/upload_files/2020-2-27/1582800228597.jpg');
INSERT INTO `navs` VALUES (9, 23, '1,1,1,1,1,1', '000,000,000', '000,000,000', '000,000,000', '000,000,000', '000,000,000', '000,000,000', '/upload_files/2020-2-28/1582867624793.gif', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '文章',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('<p style=\"text-align: center;\">舒榆衡</p><p style=\"text-align: center;\">男：18岁<img src=\"http://192.168.0.104:8888/upload_files/2020-2-28/1582905233293.jpg\" style=\"max-width: 100%;\"></p><p style=\"text-align: center;\"><img src=\"http://192.168.0.104:8888/upload_files/2020-2-28/1582905311825.gif\" style=\"max-width:100%;\">&nbsp; 奔跑的张冰雪&nbsp; ，老子爱你哟<br></p>', 5);
INSERT INTO `resume` VALUES ('465498641329687', 13);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `head_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, '17768938296', 'syh654321', '舒榆衡1', '/upload_files/2020-2-28/1582865362689.gif');
INSERT INTO `users` VALUES (13, '17768938295', '123456', '舒榆衡', '/upload_files/2020-2-26/1582647646932.gif');
INSERT INTO `users` VALUES (23, '17851800387', '123456', '张六六', '/upload_files/2020-2-28/1582867614626.gif');

SET FOREIGN_KEY_CHECKS = 1;
