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

 Date: 06/03/2020 12:01:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `classify` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '个人',
  `browse` int(255) NOT NULL DEFAULT 0,
  `ctitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `isStick` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES (31, '阿斯顿发射点', '1583324895045', '撒旦法 撒旦法 撒旦', 2, '贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上  ，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，', 5, '1');
INSERT INTO `blogs` VALUES (32, '啊手动阀撒旦法设法和给的说法伽的', '1583324923678', '故事 小故事', 8, '贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上  ，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，', 5, '0');
INSERT INTO `blogs` VALUES (33, '小故事', '1583324946861', '盟友', 7, '贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上  ，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，', 5, '1');

-- ----------------------------
-- Table structure for blogx
-- ----------------------------
DROP TABLE IF EXISTS `blogx`;
CREATE TABLE `blogx`  (
  `id` int(11) NOT NULL COMMENT '博客的id',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '博客内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blogx
-- ----------------------------
INSERT INTO `blogx` VALUES (31, '\'<h1 style=\"text-align: center;\">这是一个标题哟~</h1><p><br></p>\'');
INSERT INTO `blogx` VALUES (32, '\'<h1 style=\"text-align: center;\">这是</h1><p>贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，</p>\'');
INSERT INTO `blogx` VALUES (33, '\'<h1 style=\"text-align: center;\">这是一个标题哟~贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</h1><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，贝西的理想是当一名音乐家。他特别喜欢小提琴，从小学一年级起，就开始学琴。他梦想着有一天，能成为帕格尼尼那样世界著名的小提琴家。每天清晨，他迎着早霞练琴，直到上学;晚上</p><p>，他做完功课，又在月光下继续拉着，直到深夜。他的手指被琴弦磨破了，鲜血滴在泥地里;他的汗水不停地流着，像泉水般淌在脚下。他一天天地拉着，一年年地拉着，在提琴声的陪伴下，</p>\'');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户id 这条评论出现在谁的留言板下',
  `reply_id` int(11) NOT NULL COMMENT '是谁写下了这条评论',
  `time` char(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pcom_id` int(11) NULL DEFAULT NULL COMMENT '父级评论id 可能是某一条评论下的评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '123456', 5, 5, '4444', NULL);
INSERT INTO `comment` VALUES (2, '789654', 5, 13, '3333', NULL);
INSERT INTO `comment` VALUES (3, '147258', 5, 5, '2222', 1);
INSERT INTO `comment` VALUES (4, '746589456', 5, 13, '1111', 1);

-- ----------------------------
-- Table structure for imgs
-- ----------------------------
DROP TABLE IF EXISTS `imgs`;
CREATE TABLE `imgs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_mini` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '点个赞吧~' COMMENT '图片标题',
  `zan` int(11) NOT NULL DEFAULT 0,
  `isdel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'false',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imgs
-- ----------------------------
INSERT INTO `imgs` VALUES (8, '/upload_files/2020-3-2/1583155535632.jpg', NULL, 13, '点个赞吧~', 0, 'false');
INSERT INTO `imgs` VALUES (33, '/upload_files/2020-3-2/1583159417893.gif', NULL, 5, '点个赞吧~', 1, 'false');
INSERT INTO `imgs` VALUES (34, '/upload_files/2020-3-2/1583159424449.jpg', NULL, 5, '点个赞吧~', 1, 'false');
INSERT INTO `imgs` VALUES (35, '/upload_files/2020-3-2/1583159427933.jpg', NULL, 5, '点个赞吧~', 0, 'false');
INSERT INTO `imgs` VALUES (37, '/upload_files/2020-3-2/1583159436929.jpg', NULL, 5, '点个赞吧~', 1, 'false');
INSERT INTO `imgs` VALUES (38, '/upload_files/2020-3-2/1583159441322.jpg', NULL, 5, '点个赞吧~', 0, 'false');
INSERT INTO `imgs` VALUES (39, '/upload_files/2020-3-2/1583159446491.jpg', NULL, 5, '点个赞吧~', 0, 'false');
INSERT INTO `imgs` VALUES (40, '/upload_files/2020-3-2/1583159451702.png', NULL, 5, '点个赞吧~', 0, 'false');
INSERT INTO `imgs` VALUES (41, '/upload_files/2020-3-2/1583159456337.jpg', NULL, 5, '点个赞吧~', 0, 'false');
INSERT INTO `imgs` VALUES (42, '/upload_files/2020-3-2/1583159462297.jpg', NULL, 5, '点个赞吧~', 0, 'false');

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
INSERT INTO `navs` VALUES (3, 5, '1,1,1,1,1,1', '可爱至极,傻六六在此,标配顶配天仙配', '12345,54321,杀杀杀', '生活点滴,撒旦发个,撒旦法', '爱情～,一日三餐四季,你我足以', '旅行的意义,生命~,川流不息', '000,000,000', '/upload_files/2020-2-27/1582800976759.jpeg', '/upload_files/2020-2-28/1582865340493.jpg', '/upload_files/2020-3-1/1583028896720.jpeg', '/upload_files/2020-2-27/1582800254625.jpg', '/upload_files/2020-2-27/1582799517765.jpg', '/upload_files/2020-2-27/1582800228597.jpg');
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
INSERT INTO `resume` VALUES ('\'<p style=\"text-align: center;\">舒榆衡</p><p style=\"text-align: center;\">男：18岁<img src=\"http://192.168.0.104:8888/upload_files/2020-2-28/1582905233293.jpg\" style=\"max-width: 100%;\"></p><p style=\"text-align: center;\"><img src=\"http://192.168.0.104:8888/upload_files/2020-2-28/1582905311825.gif\" style=\"max-width:100%;\">&nbsp; 奔跑的张冰雪&nbsp; ，老子爱你哟<br></p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟 奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: left;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 阿三发射点发射点发生&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">奔跑的张冰雪&nbsp; ，老子爱你哟</p><p style=\"text-align: center;\">&nbsp;</p><div id=\"content_left\"><div id=\"1\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'FDF8A73E\'\n												}\" href=\"https://www.baidu.com/link?url=r2fnLdmT8fNxHxiv4a3aPRGGPFMLH384gfOj9bFO8BUleR05iAd4iGEQPUCoprOYMfH4GYh3DhfarTf55A12r_&amp;wd=&amp;eqid=cc09840c0011b1ec000000065e5f888c\" target=\"_blank\"><em>vue路由传参</em>的三种基本方式 - 流年的樱花逝 - SegmentFault 思否</a></h3><div>2019年6月13日&nbsp;-&nbsp;父组件中:通过<em>路由</em>属性中的name来确定匹配的<em>路由</em>,通过params来传递<em>参数</em>。 this....[更多详情](https://github.com/<em>vue</em>js/<em>vue</em>-...) tips可能上面少了th...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=r2fnLdmT8fNxHxiv4a3aPRGGPFMLH384gfOj9bFO8BUleR05iAd4iGEQPUCoprOYMfH4GYh3DhfarTf55A12r_\">https://segmentfault.com/a/119...&nbsp;</a><div id=\"tools_6229677201532775738_1\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b96314c0bd73f7a83835221928448e435061e5a35feb824291206d1c77e6401ae425dedfa3366725e60e1948ccf1dcabae23f5e883044750bf04005a212b8ca3632b126872999b81897ad803284dfa5&amp;p=882a9645d7d052f40be2963c1e519e&amp;newp=8f57d11f949e12a05abd9b7d0d1790231610db2151d6d101298ffe0cc4241a1a1a3aecbf22291b07d9c3776407ab4d5ae9f03c743d0034f1f689df08d2ecce7e&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=1\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"2\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DD6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'FFBFFEE7\'\n												}\" href=\"https://www.baidu.com/link?url=7as16mmZWalfoufO87Looj2LJOl_Q89vYEF_cVpOojVLwRjpSUeh0t8erJPU8dXI&amp;wd=&amp;eqid=cc09840c0011b1ec000000065e5f888c\" target=\"_blank\"><em>vue路由传参</em>的三种基本方式 - 简书</a></h3><div>项目中很多情况下都需要进行<em>路由</em>之间的传值,想过很多种方式 sessionstorage/localstorage/cookie 进行离线缓存存储也可以,用<em>vue</em>x也可以,不过...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=7as16mmZWalfoufO87Looj2LJOl_Q89vYEF_cVpOojVLwRjpSUeh0t8erJPU8dXI\"><img src=\"https://cambrian-images.cdn.bcebos.com/33a4057673374d6ad1bbc9811310770d_1559717439091.jpeg\">简书社区</a><div id=\"tools_16587377254626212118_2\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b92235c438014648c83493e8ed45f93130a1c187ba1a67122150085942a3005ab4e58feb56b32610c64f0ccdf893acaca923f5f8d3042710bf74a05d269b8bb4032b250875b99b869e7ad8145&amp;p=882a9540c5d01afc57efd66d4a5f&amp;newp=8f57d11f949e12a05abd9b7e085192695d0fc20e3bd3d701298ffe0cc4241a1a1a3aecbf22291b07d9c3776407ab4d5ae9f03c743d0034f1f689df08d2ecce7e&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=2\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div><div><div><i></i>为您推荐：<a href=\"https://www.baidu.com/s?tn=baidu&amp;rsv_idx=1&amp;wd=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82%E6%96%B9%E5%BC%8F&amp;rsv_crq=6&amp;bs=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82\" title=\"vue路由传参方式\" target=\"_blank\">vue路由传参方式</a><a href=\"https://www.baidu.com/s?tn=baidu&amp;rsv_idx=1&amp;wd=vue%E4%B8%89%E7%A7%8D%E4%BC%A0%E5%80%BC%E6%96%B9%E5%BC%8F&amp;rsv_crq=6&amp;bs=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82\" title=\"vue三种传值方式\" target=\"_blank\">vue三种传值方式</a><a href=\"https://www.baidu.com/s?tn=baidu&amp;rsv_idx=1&amp;wd=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%80%BC%E7%9A%84%E5%87%A0%E7%A7%8D%E6%96%B9%E5%BC%8F&amp;rsv_crq=6&amp;bs=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82\" title=\"vue路由传值的几种方式\" target=\"_blank\">vue路由传值的几种方式</a></div><div><a href=\"https://www.baidu.com/s?tn=baidu&amp;rsv_idx=1&amp;wd=vue%E8%8E%B7%E5%8F%96%E5%8A%A8%E6%80%81%E8%B7%AF%E7%94%B1%E5%8F%82%E6%95%B0&amp;rsv_crq=6&amp;bs=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82\" title=\"vue获取动态路由参数\" target=\"_blank\">vue获取动态路由参数</a><a href=\"https://www.baidu.com/s?tn=baidu&amp;rsv_idx=1&amp;wd=vue%E8%B7%AF%E7%94%B1&amp;rsv_crq=6&amp;bs=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82\" title=\"vue路由\" target=\"_blank\">vue路由</a><a href=\"https://www.baidu.com/s?tn=baidu&amp;rsv_idx=1&amp;wd=vue%E5%8A%A8%E6%80%81%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82&amp;rsv_crq=6&amp;bs=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82\" title=\"vue动态路由传参\" target=\"_blank\">vue动态路由传参</a><a href=\"https://www.baidu.com/s?tn=baidu&amp;rsv_idx=1&amp;wd=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82%E5%92%8C%E8%8E%B7%E5%8F%96&amp;rsv_crq=6&amp;bs=vue%E8%B7%AF%E7%94%B1%E4%BC%A0%E5%8F%82\" title=\"vue路由传参和获取\" target=\"_blank\">vue路由传参和获取</a></div></div></div><div id=\"3\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'A77586F6\'\n												}\" href=\"http://www.baidu.com/link?url=lNicOEd3HPpCGtod-iVwjl_Mq2NU4BXH61CA4qr3LVoRF4bd809_pcDhaJJaAfzD\" target=\"_blank\"><em>vue</em>中<em>路由传参</em>&nbsp;- 简书</a></h3><div>2019年5月21日&nbsp;-&nbsp;=&gt; 父组件中:使用&lt;router-link to=\"/需要跳转的<em>路由</em>路径/需要传递的<em>参数</em>\"&gt;&lt;/router-link&gt;标签进行导航 child是子页面<em>路由</em>路径,123是需要传递的<em>参数</em>&nbsp;=&gt;...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=lNicOEd3HPpCGtod-iVwjl_Mq2NU4BXH61CA4qr3LVoRF4bd809_pcDhaJJaAfzD\"><img src=\"https://cambrian-images.cdn.bcebos.com/33a4057673374d6ad1bbc9811310770d_1559717439091.jpeg\">简书社区</a><div id=\"tools_5482291869045613775_3\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b92235c438014648c83493e8ed45f93130a1c187ba1a620744450d2c7783357ff4b08feb56b32610c64f0ccdf893acaca923f5f8d3042710bf74a05d269b8bb4032b250875b99b869e7ad8145&amp;p=87759a46d4c219fc57efdd3a44428f&amp;newp=8b2a970cc7b111a05bef953d585985231610db2151d7d1176b82c825d7331b001c3bbfb423271b0fd0cf7a6c02a94d58ecf33678310923a3dda5c91d9fb4c57479c13646&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=3\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"4\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'EFE7FB7E\'\n												}\" href=\"http://www.baidu.com/link?url=h0M_sgEkFNkYhorfdwZAaIr1D7vYqS5-LyvDwWE0k7dHfjVaWrAZQ7QC7fmC2erNL8UH3Yp7Ggr1dXlQ6zIxm_\" target=\"_blank\"><em>vue路由传参</em>的三种方式 - 猫头唔食鱼 - 博客园</a></h3><div>2019年5月10日&nbsp;-&nbsp;<em>vue路由传参</em>的三种方式 方式一:参数显示在地址栏上的(1).在路由中配置path, 形式:path:\"/xxx/:param\" , 斜线+冒号+参数{ name:\"Blog\", component:Blog...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=h0M_sgEkFNkYhorfdwZAaIr1D7vYqS5-LyvDwWE0k7dHfjVaWrAZQ7QC7fmC2erNL8UH3Yp7Ggr1dXlQ6zIxm_\">https://www.cnblogs.com/luguan...&nbsp;</a><div id=\"tools_15719478761191441455_4\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9d78d513d98706f84fece4697c16c0161c43f6622ba6db027ea4843895732831506793ac57220775a4d13b275fa0131aacb2776536703daade8dcd5dddccc3747fd67a61310b8636438e46b29501708673cc03aef304a5a7f33099a8d3d6d55544ca245f3cdfae&amp;p=c479c41192904ead08e2977f0a4882&amp;newp=9879c64ad4dd09e708e2977f0a4acd231610db2151d6d61f6b82c825d7331b001c3bbfb423271b0fd0cf7a6c02a94d58ecf33678310923a3dda5c91d9fb4c57479966f7c&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=4\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"5\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'BCBE7DFE\'\n												}\" href=\"http://www.baidu.com/link?url=N2kGIjDaNqclIttvCW5rJVJdcsMh0qMjWMfMjC8X2lt9kpRdg3VoMBkNHJOIRKKEu-FwfEwWiGBQf5C82H2ira\" target=\"_blank\"><em>vue路由传参</em>的几种基本方式 - gitByLegend - 博客园</a></h3><div>2019年5月9日&nbsp;-&nbsp;父组件中:通过路由属性中的name来确定匹配的路由,通过params来传递参数。 this....子路由组件页面获取父<em>路由传参</em>方式不变,reg.<em>vue</em>&nbsp;文件如下: 1 2 3 4 ...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=N2kGIjDaNqclIttvCW5rJVJdcsMh0qMjWMfMjC8X2lt9kpRdg3VoMBkNHJOIRKKEu-FwfEwWiGBQf5C82H2ira\">https://www.cnblogs.com/gitByL...&nbsp;</a><div id=\"tools_3983835405554979273_5\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9d78d513d98706f84fece4697c16c0161c43f6622ba6db027ea4843895732831506793ac57220775a4d13b275fa0131aacb2776536703daade8dcd5dddccc3747fd67a61310b8636438e46b29e1d63b16bee0dbcf845b1a7b22f90acd8d2db5050c844050ddab6d404&amp;p=9c78d315d9c041a41ebac7710f57c1&amp;newp=87769a47c58a1ce41fbd9b7d0d1d93231610db2151d4d11e6b82c825d7331b001c3bbfb423271b0fd0cf7a6c02a94d58ecf33678310923a3dda5c91d9fb4c574799b6e693b5b&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=5\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"6\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'7BFFD7DF\'\n												}\" href=\"http://www.baidu.com/link?url=IY6Ktd-7X5sJ_xZMVIcKE-CijEVIhp8XWhTii30jX51KInpErHYLuP4WcOd6bxeYyr5ZnbftziRwwWOCcUWILa\" target=\"_blank\"><em>Vue路由传参</em>的三种基本方式 - 个人文章 - SegmentFault 思否</a></h3><div>2019年3月30日&nbsp;-&nbsp;User.<em>vue</em>组件: this.$route.query.userName;//User.<em>vue</em>组件中就可以通过$route的query获取到 方案三:通过<em>路由</em>配置,配置动态<em>路由参数</em>&nbsp;上面的<em>路由</em>配置都...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=IY6Ktd-7X5sJ_xZMVIcKE-CijEVIhp8XWhTii30jX51KInpErHYLuP4WcOd6bxeYyr5ZnbftziRwwWOCcUWILa\">https://segmentfault.com/a/119...&nbsp;</a><div id=\"tools_6519951886735994858_6\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9d78d513d98706f84fece4697c16c0161c43f6622ba6db027ea4843895732831506793ac57220775a4d13b275fa0131aacb2776536703daada9fdd158ae7d47c7ccf7972671cf1104f8c04fcd64526ca229258ebad1aedbff33195aed2&amp;p=882a95409ddb16f41dbe9b7c5600&amp;newp=8f67d516d9c111a058e8d426544c92695d0fc20e38d1d701298ffe0cc4241a1a1a3aecbf22291b07d9c3776407ab4d5ae9f03c743d0034f1f689df08d2ecce7e&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=6\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"7\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'BF77EFF7\'\n												}\" href=\"http://www.baidu.com/link?url=acvGkqYV3R_W2hSOvLjl18DhDaAp_deJbkt0wQBOlTXJ2yqXjSNfpsD7fsZGhhhPJHBqAYwQ02AHE-EldbZmmp7E28MgjHUZAj30oe2XMzm\" target=\"_blank\"><em>vue路由传参</em>的三种基本方式_良之才的专栏-CSDN博客</a></h3><div>2019年7月7日&nbsp;-&nbsp;Vue 2.0 路由传递<em>参数Vue 路由</em>传递<em>参数</em>&nbsp;有两种方式:一、用name传递<em>参数</em>&nbsp;两步完成用name传值并显示在模板里:在路由文件src/router/index.js里配置name...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=acvGkqYV3R_W2hSOvLjl18DhDaAp_deJbkt0wQBOlTXJ2yqXjSNfpsD7fsZGhhhPJHBqAYwQ02AHE-EldbZmmp7E28MgjHUZAj30oe2XMzm\"><img src=\"https://cambrian-images.cdn.bcebos.com/ea7e0c7af4673ed4cd13dc1c2b27c1eb_1562913917952.jpeg\">CSDN技术社区</a><div id=\"tools_7754819116494359911_7\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9d78d513d98706f84fece4697c16c0161c43f6622ba6db027ea4843895732831506793ac57220775a4d13b275fa0131aacb2776536703daacb96d51fcabbe5796ede7b23706bda1654ce47f49d1b79947ecb09b5fa51bde1a161c8b38193990f029404182cd7b6d8015e55d764f61f35e3ad9d4a&amp;p=986ec54ad5d913f40be296374d&amp;newp=8b2a9715d9c016f01afec3211553d8224216ed653bdcc44324b9d71fd325001c1b69e7be2c29130ed5ce7f6105ab4f5feafa3078341766dada9fca458ae7c4&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=7\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"8\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'CDEF8F7B\'\n												}\" href=\"http://www.baidu.com/link?url=IE10XCRrM36kNA5ngLgNiu_VCnE6PkzBRrJvO0n9N3a325VvmKGNfH9d1gLx6hMQJorxThjkCOqoCNv3w2mz9i9cRYxlRV3vsGpYkw2gy0q\" target=\"_blank\"><em>vue路由传参</em>主要的3种方式_CaseyWei-CSDN博客</a></h3><div>2019年4月24日&nbsp;-&nbsp;Vue 2.0 路由传递<em>参数Vue 路由</em>传递<em>参数</em>&nbsp;有两种方式:一、用name传递<em>参数</em>两步完成用name传值并显示在模板里:在路由文件src/router/index.js里配置name...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=IE10XCRrM36kNA5ngLgNiu_VCnE6PkzBRrJvO0n9N3a325VvmKGNfH9d1gLx6hMQJorxThjkCOqoCNv3w2mz9i9cRYxlRV3vsGpYkw2gy0q\"><img src=\"https://cambrian-images.cdn.bcebos.com/ea7e0c7af4673ed4cd13dc1c2b27c1eb_1562913917952.jpeg\">CSDN技术社区</a><div id=\"tools_13938304520374325707_8\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b8738440197634b86914323c3933fcf331d5c1635a2ec6c67475fce963c215afe170bf7a6613464587ef686c2834ddfbc942c2d9c6269304a890555840eaebb5154c137e05ffed918f0cbfb2592dec5a3d94320ba44040a97808b4d7163&amp;p=937fc64ad4934eab5eb08a2c5052&amp;newp=83678619ce904ead43bd9b7a0b5592695d0fc20e38ddd001298ffe0cc4241a1a1a3aecbf22291b07d9c3776407ab4d5ae9f03c743d0034f1f689df08d2ecce7e34&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=8\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"9\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DE6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'FDFFEFDF\'\n												}\" href=\"http://www.baidu.com/link?url=dMG3bsSOPQRaNyV0ya4_rB7dOZ7rDfePFaCmW1qtrqJACBF_iNuDmyT9et0b3cJm\" target=\"_blank\"><em>Vue路由</em>传递<em>参数</em>详细说明-爱咖啡-51CTO博客</a></h3><div>2018年9月28日&nbsp;-&nbsp;<em>Vue路由传参</em>&nbsp;我们可以先看下官方的文档:路由组件传参,这里面讲述了路由组件传参的所有方式,分别为:布尔模式、对象模式、函数模式。光看名字还是不能明...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=dMG3bsSOPQRaNyV0ya4_rB7dOZ7rDfePFaCmW1qtrqJACBF_iNuDmyT9et0b3cJm\"><img src=\"https://pic.rmb.bdstatic.com/a9440eb633752a47bdeba1a089875033.jpeg\">51CTO</a><div id=\"tools_8332572808741189450_9\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b8738440197634bd0d34439898448e435061e5a60e9ba22241507cec57c6d04ad4d58feb56b32610c64f0ccdf893acaca923f5f8d3042710bf74a05d269b8bb4032b250875b99b869e7ad8145&amp;p=9a769a4794934eac58ecd13b5b438e&amp;newp=9b78c20ecd934eac58ecca2d02149c231610db2151d1d101298ffe0cc4241a1a1a3aecbf22291b07d9c3776407ab4d5ae9f03c743d0034f1f689df08d2ecce7e71&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=9\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div><div id=\"10\" srcid=\"1599\" tpl=\"se_com_default\"><h3><a data-click=\"{\n			\'F\':\'778317EA\',\n			\'F1\':\'9D73F1E4\',\n			\'F2\':\'4CA6DD6B\',\n			\'F3\':\'54E5243F\',\n			\'T\':\'1583319180\',\n						\'y\':\'7F55F99D\'\n												}\" href=\"http://www.baidu.com/link?url=Wiqeg1Sp_E7UolsxTvjcOpEaVqhxhDTGEKkPGlUmJ5WhIyDnHoY-P0HOmE274sjSMV41IGCLPuEb3DhNo1Kag_\" target=\"_blank\"><em>vue路由</em>跳转<em>传参数</em>的方法_vue.js_脚本之家</a></h3><div>2019年5月6日&nbsp;-&nbsp;这篇文章主要介绍了<em>vue路由</em>跳转<em>传参数</em>的方法,文中通过示例代码介绍的非常详细,对大家的学习或者工作具有一定的参考学习价值,需要的朋友们下面随着小编...</div><div><a target=\"_blank\" href=\"http://www.baidu.com/link?url=Wiqeg1Sp_E7UolsxTvjcOpEaVqhxhDTGEKkPGlUmJ5WhIyDnHoY-P0HOmE274sjSMV41IGCLPuEb3DhNo1Kag_\"><img src=\"https://timg01.bdimg.com/timg?pacompress&amp;imgtype=0&amp;sec=1439619614&amp;di=22381dca34c76fa54451ccaa476ee9b4&amp;quality=90&amp;size=b870_10000&amp;src=http%3A%2F%2Fbos.nj.bpc.baidu.com%2Fv1%2Fmediaspot%2F518b3712ae43027b89d9ca332fb032f3.jpeg\">脚本之家</a><div id=\"tools_5198017578893636294_10\"><a><i></i></a></div>&nbsp;-&nbsp;<arsv_snapshot\':\'1\'}\" href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b92235c4380146487d71668d4e414c42246120720b8ea79750d07d7c7796d04b8492bb0b66966725e60e1948ccf1dcabae23f5e883044750bf04005a212b8ca3632b126872999b81897ad803284dfa5&amp;p=937fc64ad4934eac59eac9605f4b93&amp;newp=83678619ce904ead43bd9b7d0c1194231610db2151d6d6156b82c825d7331b001c3bbfb423271b0fd0cf7a6c02a94d58ecf33678310923a3dda5c91d9fb4c5747993&amp;user=baidu&amp;fm=sc&amp;query=vue%C2%B7%D3%C9%B4%AB%B2%CE&amp;qid=cc09840c0011b1ec&amp;p1=10\" target=\"_blank\">百度快照</arsv_snapshot\':\'1\'}\"></div></div></div><div></div><div id=\"rs\"><div>相关搜索</div></div>\'', 5);
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
