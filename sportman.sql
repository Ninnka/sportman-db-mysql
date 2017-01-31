/*
Navicat MySQL Data Transfer

Source Server         : wamp-ninnka
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : sportman

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-01-31 22:52:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `post` varchar(500) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `hostavatar` varchar(500) NOT NULL,
  `area` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `totalnumber` varchar(255) DEFAULT NULL,
  `currentnumber` varchar(255) DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `hostaddress` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '2016广州马拉松', 'http://ok7pzw2ak.bkt.clouddn.com/activitypost.png', 'http://ok7pzw2ak.bkt.clouddn.com/marason-thumbnail.png', 'http://ok7pzw2ak.bkt.clouddn.com/marason-icon.png', '海珠区', '花城广场（起点）', '100', '1485139399979', '30', '11', '广州体育局', '广州市天河区天河路299号天河体育中心', '12345678910', '待举行', 'www.gzmarathon.com');
INSERT INTO `activity` VALUES ('2', '白云山野战场畅玩', 'http://ok7pzw2ak.bkt.clouddn.com/activitypost.png', 'http://ok7pzw2ak.bkt.clouddn.com/shot-thumbnail.png', 'http://ok7pzw2ak.bkt.clouddn.com/marason-icon.png', '白云区', '白云山野战场', '100', '1485139399979', '20', '1', '广州体育局', '广州市天河区天河路299号天河体育中心', '12345678910', '待举行', 'www.gzmarathon.com');
INSERT INTO `activity` VALUES ('3', '轮滑逛街活动', 'http://ok7pzw2ak.bkt.clouddn.com/activitypost.png', 'http://ok7pzw2ak.bkt.clouddn.com/skip-thumbnail.png', 'http://ok7pzw2ak.bkt.clouddn.com/adidas.png', '海珠区', '海珠广场', '100', '1485139399979', '10', '2', '阿迪王专业体育用具', '广州市天河区天河路299号天河体育中心', '12345678910', '审核中', 'www.gzmarathon.com');
INSERT INTO `activity` VALUES ('4', '彩色跑', 'http://ok7pzw2ak.bkt.clouddn.com/activitypost.png', 'http://ok7pzw2ak.bkt.clouddn.com/colorrunning-thumbnail.png', 'http://ok7pzw2ak.bkt.clouddn.com/adidas.png', '白云山', '白云山', '100', '1485139399979', '10', '2', '阿迪王专业体育用具', '广州市天河区天河路299号天河体育中心', '12345678910', '审核中', 'www.gzmarathon.com');
INSERT INTO `activity` VALUES ('5', '轮荧光夜跑', 'http://ok7pzw2ak.bkt.clouddn.com/activitypost.png', 'http://ok7pzw2ak.bkt.clouddn.com/colorrunning-thumbnail.png', 'http://ok7pzw2ak.bkt.clouddn.com/adidas.png', '白云区', '白云山', '9.9', '1485139399979', '10', '2', '阿迪王专业体育用具', '广州市天河区天河路299号天河体育中心', '12345678910', '已结束', 'www.gzmarathon.com');

-- ----------------------------
-- Table structure for activity_banner
-- ----------------------------
DROP TABLE IF EXISTS `activity_banner`;
CREATE TABLE `activity_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(255) NOT NULL,
  `id_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`id_activity`) USING BTREE,
  CONSTRAINT `activity_banner_id_activity` FOREIGN KEY (`id_activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_banner
-- ----------------------------
INSERT INTO `activity_banner` VALUES ('1', 'http://ok7pzw2ak.bkt.clouddn.com/shot-star.png', '2');
INSERT INTO `activity_banner` VALUES ('2', 'http://ok7pzw2ak.bkt.clouddn.com/skip-star.png', '3');
INSERT INTO `activity_banner` VALUES ('3', 'http://ok7pzw2ak.bkt.clouddn.com/colorrunning-star.png', '5');

-- ----------------------------
-- Table structure for stadium
-- ----------------------------
DROP TABLE IF EXISTS `stadium`;
CREATE TABLE `stadium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `post` varchar(500) NOT NULL,
  `thumbnail` varchar(500) NOT NULL,
  `trade` varchar(255) NOT NULL,
  `opentime` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `price` varchar(45) NOT NULL,
  `hostavatar` varchar(500) NOT NULL,
  `totalscore` varchar(25) DEFAULT NULL,
  `position` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `tradedetail` longtext,
  `moreinfo` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stadium
-- ----------------------------
INSERT INTO `stadium` VALUES ('1', '胜利运动场（万寿路店）', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-post.png', 'http://ok7pzw2ak.bkt.clouddn.com/tabletenis-star.png', '乒乓球，羽毛球', '08:00 - 22:00', '海珠区', '9', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-hostavatar.png', '4', '广州市海珠区万寿素社街48号', '12345678910', null, '免费提供无线WIFI+-+免费提供30个停车位+-+可租购用具');
INSERT INTO `stadium` VALUES ('2', '广州市射击射箭运动管理中心', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-post.png', 'http://ok7pzw2ak.bkt.clouddn.com/shot-stadium.png', '台球、射箭、射击', '08:00 - 19:00', '天河区', '199', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-hostavatar.png', '2', '广州市海珠区万寿素社街48号', '12345678910', null, '免费提供无线WIFI+-+免费提供30个停车位+-+可租购用具');
INSERT INTO `stadium` VALUES ('3', '杰冠真人CS野战基地', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-post.png', 'http://ok7pzw2ak.bkt.clouddn.com/cs-stadium.png', '仿真枪机野战', '08:00 - 18:00', '海珠区', '299', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-hostavatar.png', '1', '广州市海珠区万寿素社街48号', '12345678910', null, '免费提供无线WIFI+-+免费提供30个停车位+-+可租购用具');
INSERT INTO `stadium` VALUES ('4', '大世界保龄球馆', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-post.png', 'http://ok7pzw2ak.bkt.clouddn.com/bowling-stadium.png', '保龄球', '08:00 - 22:00', '海珠区', '99', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-hostavatar.png', '3.5', '广州市海珠区万寿素社街48号', '12345678910', null, '免费提供无线WIFI+-+免费提供30个停车位+-+可租购用具');
INSERT INTO `stadium` VALUES ('5', '冰河湾真冰溜冰场', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-post.png', 'http://ok7pzw2ak.bkt.clouddn.com/skip-stadium.png', '溜冰', '08:00 - 22:00', '海珠区', '39', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-hostavatar.png', '5', '广州市海珠区万寿素社街48号', '12345678910', null, '免费提供无线WIFI+-+免费提供30个停车位+-+可租购用具');
INSERT INTO `stadium` VALUES ('6', '胜利运动场（万寿路店）', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-post.png', 'http://ok7pzw2ak.bkt.clouddn.com/tabletenis-star.png', '乒乓球，羽毛球', '08:00 - 22:00', '海珠区', '9', 'http://ok7pzw2ak.bkt.clouddn.com/stadium-hostavatar.png', '2.5', '广州市海珠区万寿素社街48号', '12345678910', null, '免费提供无线WIFI+-+免费提供30个停车位+-+可租购用具');

-- ----------------------------
-- Table structure for stadium_equipment
-- ----------------------------
DROP TABLE IF EXISTS `stadium_equipment`;
CREATE TABLE `stadium_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_stadium_tradedetail` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `device` varchar(500) DEFAULT NULL,
  `geology` varchar(500) DEFAULT NULL,
  `position` varchar(500) NOT NULL,
  `price` varchar(45) NOT NULL,
  `remain` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_stadium_tradedetail` (`id_stadium_tradedetail`) USING BTREE,
  CONSTRAINT `ref_stadium_equipment_col_id_stadium_tradedetail` FOREIGN KEY (`id_stadium_tradedetail`) REFERENCES `stadium_tradedetail` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stadium_equipment
-- ----------------------------
INSERT INTO `stadium_equipment` VALUES ('1', '1', '大厅乒乓球', '双鱼座化工板质球桌', '水泥地板', '运动场大厅', '19', '6');
INSERT INTO `stadium_equipment` VALUES ('2', '1', '露天乒乓球', '双喜化工板质球桌', '水泥地板', '露天运动广场', '9', '8');
INSERT INTO `stadium_equipment` VALUES ('3', '1', '混合乒乓球', '双鱼座化工板质球桌', '塑料地板', '运动场大厅', '5', '4');
INSERT INTO `stadium_equipment` VALUES ('4', '2', '大厅乒乓球', '双鱼座化工板质球桌', '水泥地板', '运动场大厅', '19', '6');
INSERT INTO `stadium_equipment` VALUES ('5', '2', '露天乒乓球', '双喜化工板质球桌', '水泥地板', '露天运动广场', '9', '8');
INSERT INTO `stadium_equipment` VALUES ('6', '2', '混合乒乓球', '双鱼座化工板质球桌', '塑料地板', '运动场大厅', '5', '4');
INSERT INTO `stadium_equipment` VALUES ('7', '3', '大厅乒乓球', '双鱼座化工板质球桌', '水泥地板', '运动场大厅', '19', '6');
INSERT INTO `stadium_equipment` VALUES ('8', '3', '露天乒乓球', '双喜化工板质球桌', '水泥地板', '露天运动广场', '9', '8');
INSERT INTO `stadium_equipment` VALUES ('9', '3', '混合乒乓球', '双鱼座化工板质球桌', '塑料地板', '运动场大厅', '5', '4');
INSERT INTO `stadium_equipment` VALUES ('10', '4', '大厅乒乓球', '双鱼座化工板质球桌', '水泥地板', '运动场大厅', '19', '6');
INSERT INTO `stadium_equipment` VALUES ('11', '4', '露天乒乓球', '双喜化工板质球桌', '水泥地板', '露天运动广场', '9', '8');
INSERT INTO `stadium_equipment` VALUES ('12', '4', '混合乒乓球', '双鱼座化工板质球桌', '塑料地板', '运动场大厅', '5', '4');
INSERT INTO `stadium_equipment` VALUES ('13', '5', '大厅乒乓球', '双鱼座化工板质球桌', '水泥地板', '运动场大厅', '19', '6');
INSERT INTO `stadium_equipment` VALUES ('14', '5', '露天乒乓球', '双喜化工板质球桌', '水泥地板', '露天运动广场', '9', '8');
INSERT INTO `stadium_equipment` VALUES ('15', '5', '混合乒乓球', '双鱼座化工板质球桌', '塑料地板', '运动场大厅', '5', '4');
INSERT INTO `stadium_equipment` VALUES ('16', '6', '大厅乒乓球', '双鱼座化工板质球桌', '水泥地板', '运动场大厅', '19', '6');
INSERT INTO `stadium_equipment` VALUES ('17', '6', '露天乒乓球', '双喜化工板质球桌', '水泥地板', '露天运动广场', '9', '8');
INSERT INTO `stadium_equipment` VALUES ('18', '6', '混合乒乓球', '双鱼座化工板质球桌', '塑料地板', '运动场大厅', '5', '4');
INSERT INTO `stadium_equipment` VALUES ('19', '7', '露天羽毛球', '尤尼吉斯网', '普通地板', '运动场大厅', '39', '1');
INSERT INTO `stadium_equipment` VALUES ('20', '8', '露天羽毛球', '尤尼吉斯网', '普通地板', '运动场大厅', '39', '2');
INSERT INTO `stadium_equipment` VALUES ('21', '9', '露天羽毛球', '尤尼吉斯网', '普通地板', '运动场大厅', '39', '3');
INSERT INTO `stadium_equipment` VALUES ('22', '10', '露天羽毛球', '尤尼吉斯网', '普通地板', '运动场大厅', '39', '4');
INSERT INTO `stadium_equipment` VALUES ('23', '11', '露天羽毛球', '尤尼吉斯网', '普通地板', '运动场大厅', '39', '5');
INSERT INTO `stadium_equipment` VALUES ('24', '12', '露天羽毛球', '尤尼吉斯网', '普通地板', '运动场大厅', '39', '6');

-- ----------------------------
-- Table structure for stadium_tradedetail
-- ----------------------------
DROP TABLE IF EXISTS `stadium_tradedetail`;
CREATE TABLE `stadium_tradedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_stadium` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `feature` varchar(255) DEFAULT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_stadium` (`id_stadium`) USING BTREE,
  CONSTRAINT `ref_stadium_tradedetail_col_id_stadium` FOREIGN KEY (`id_stadium`) REFERENCES `stadium` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stadium_tradedetail
-- ----------------------------
INSERT INTO `stadium_tradedetail` VALUES ('1', '1', '乒乓球', '3种球桌', '19');
INSERT INTO `stadium_tradedetail` VALUES ('2', '2', '乒乓球', '3种球桌', '19');
INSERT INTO `stadium_tradedetail` VALUES ('3', '3', '乒乓球', '3种球桌', '19');
INSERT INTO `stadium_tradedetail` VALUES ('4', '4', '乒乓球', '3种球桌', '19');
INSERT INTO `stadium_tradedetail` VALUES ('5', '5', '乒乓球', '3种球桌', '19');
INSERT INTO `stadium_tradedetail` VALUES ('6', '6', '乒乓球', '3种球桌', '19');
INSERT INTO `stadium_tradedetail` VALUES ('7', '1', '羽毛球', '朔胶地质，宽敞，干净', '29');
INSERT INTO `stadium_tradedetail` VALUES ('8', '2', '羽毛球', '朔胶地质，宽敞，干净', '29');
INSERT INTO `stadium_tradedetail` VALUES ('9', '3', '羽毛球', '朔胶地质，宽敞，干净', '29');
INSERT INTO `stadium_tradedetail` VALUES ('10', '4', '羽毛球', '朔胶地质，宽敞，干净', '29');
INSERT INTO `stadium_tradedetail` VALUES ('11', '5', '羽毛球', '朔胶地质，宽敞，干净', '29');
INSERT INTO `stadium_tradedetail` VALUES ('12', '6', '羽毛球', '朔胶地质，宽敞，干净', '29');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sportmanid` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `timestamp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `sportmanid_UNIQUE` (`sportmanid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a', 'pwd', 'spmid_a', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'm', 'hennzr@qq.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('7', 'b', 'pwd', 'spmid_b', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'fm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('8', 'c', 'pwd', 'spmid_c', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('9', 'd', 'pwd', 'spmid_d', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'fm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('10', 'e', 'pwd', 'spmid_e', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('11', 'f', 'pwd', 'spmid_f', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'fm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('12', 'g', 'pwd', 'spmid_g', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('13', 'h', 'pwd', 'spmid_h', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'fm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('14', 'i', 'pwd', 'spmid_i', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('15', 'j', 'pwd', 'spmid_j', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'fm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('16', 'k', 'pwd', 'spmid_k', 'http://i1.hdslb.com/bfs/face/96c4fbb4a280366cc4f431038be004abd7ca983b.jpg@75Q.webp', 'm', 'hennzr@gmail.com', '665396', '中国', '1485060433587');
INSERT INTO `user` VALUES ('17', 'l', 'pwd_2', 'spmid_l', null, null, null, null, null, '1485084733105');
INSERT INTO `user` VALUES ('18', 'm', 'pwd', null, null, null, null, null, null, '1485085059696');
INSERT INTO `user` VALUES ('19', 'n', 'pwd', null, null, null, null, null, null, '1485085101433');

-- ----------------------------
-- Table structure for user_activity
-- ----------------------------
DROP TABLE IF EXISTS `user_activity`;
CREATE TABLE `user_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  `registertime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_activity` (`id_activity`) USING BTREE,
  CONSTRAINT `ref_user_activity_col_id_activity` FOREIGN KEY (`id_activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_activity_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_activity
-- ----------------------------
INSERT INTO `user_activity` VALUES ('1', '1', '3', '1485302400000');
INSERT INTO `user_activity` VALUES ('2', '8', '4', '1485302400000');
INSERT INTO `user_activity` VALUES ('3', '7', '2', '1485302400000');
INSERT INTO `user_activity` VALUES ('4', '1', '4', '1485302400000');
INSERT INTO `user_activity` VALUES ('5', '11', '1', '1485302400000');
INSERT INTO `user_activity` VALUES ('6', '7', '4', '1485302400000');
INSERT INTO `user_activity` VALUES ('7', '1', '5', '1485302400000');
INSERT INTO `user_activity` VALUES ('8', '1', '1', '1485302400000');

-- ----------------------------
-- Table structure for user_activity_recommend
-- ----------------------------
DROP TABLE IF EXISTS `user_activity_recommend`;
CREATE TABLE `user_activity_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_activity` (`id_activity`) USING BTREE,
  CONSTRAINT `ref_user_activity_recommend_col_id_activity` FOREIGN KEY (`id_activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_activity_recommend_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_activity_recommend
-- ----------------------------
INSERT INTO `user_activity_recommend` VALUES ('1', '1', '1');
INSERT INTO `user_activity_recommend` VALUES ('2', '7', '3');

-- ----------------------------
-- Table structure for user_activity_star
-- ----------------------------
DROP TABLE IF EXISTS `user_activity_star`;
CREATE TABLE `user_activity_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_activity` (`id_activity`) USING BTREE,
  CONSTRAINT `ref_user_activity_star_col_id_activity` FOREIGN KEY (`id_activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_activity_star_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_activity_star
-- ----------------------------
INSERT INTO `user_activity_star` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for user_history
-- ----------------------------
DROP TABLE IF EXISTS `user_history`;
CREATE TABLE `user_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `action` varchar(45) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  CONSTRAINT `ref_user_history_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_history
-- ----------------------------
INSERT INTO `user_history` VALUES ('1', '1', '参加活动', '1485314400000');
INSERT INTO `user_history` VALUES ('2', '1', '预定场馆', '1485760291350');

-- ----------------------------
-- Table structure for user_payment
-- ----------------------------
DROP TABLE IF EXISTS `user_payment`;
CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_activity` int(11) DEFAULT NULL,
  `id_stadium` int(11) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_payment
-- ----------------------------
INSERT INTO `user_payment` VALUES ('1', '1', '1', null, '待付款');
INSERT INTO `user_payment` VALUES ('2', '1', '2', null, '已付款');
INSERT INTO `user_payment` VALUES ('3', '1', null, '1', '待付款');
INSERT INTO `user_payment` VALUES ('4', '1', null, '2', '已付款');

-- ----------------------------
-- Table structure for user_review
-- ----------------------------
DROP TABLE IF EXISTS `user_review`;
CREATE TABLE `user_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_activity` int(11) DEFAULT NULL,
  `id_stadium` int(11) DEFAULT NULL,
  `review` longtext,
  `status` varchar(45) NOT NULL,
  `score` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_activity` (`id_activity`) USING BTREE,
  KEY `id_stadium` (`id_stadium`) USING BTREE,
  CONSTRAINT `ref_user_review_col_id_activity` FOREIGN KEY (`id_activity`) REFERENCES `activity` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_review_col_id_stadium` FOREIGN KEY (`id_stadium`) REFERENCES `stadium` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_review_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_review
-- ----------------------------
INSERT INTO `user_review` VALUES ('1', '1', '1', null, 'asdqwesasd', '已评价', '4');
INSERT INTO `user_review` VALUES ('2', '1', '2', null, null, '未评价', '');
INSERT INTO `user_review` VALUES ('3', '1', null, '1', 'adsqwe', '已评价', '3');
INSERT INTO `user_review` VALUES ('4', '1', null, '2', null, '未评价', '');

-- ----------------------------
-- Table structure for user_stadium
-- ----------------------------
DROP TABLE IF EXISTS `user_stadium`;
CREATE TABLE `user_stadium` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_stadium` int(11) NOT NULL,
  `booktime` varchar(255) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_stadium` (`id_stadium`) USING BTREE,
  CONSTRAINT `ref_user_stadium_col_id_stadium` FOREIGN KEY (`id_stadium`) REFERENCES `stadium` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_stadium_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_stadium
-- ----------------------------
INSERT INTO `user_stadium` VALUES ('1', '1', '2', '1485302400000', '待使用');
INSERT INTO `user_stadium` VALUES ('2', '7', '3', '1485302400000', '已使用');
INSERT INTO `user_stadium` VALUES ('3', '8', '5', '1485302400000', '待使用');
INSERT INTO `user_stadium` VALUES ('4', '1', '6', '1485302400000', '已使用');
INSERT INTO `user_stadium` VALUES ('5', '12', '4', '1485302400000', '待使用');
INSERT INTO `user_stadium` VALUES ('6', '8', '2', '1485302400000', '已使用');
INSERT INTO `user_stadium` VALUES ('7', '11', '3', '1485302400000', '待使用');
INSERT INTO `user_stadium` VALUES ('8', '1', '4', '1485302400000', '已使用');

-- ----------------------------
-- Table structure for user_stadium_recommend
-- ----------------------------
DROP TABLE IF EXISTS `user_stadium_recommend`;
CREATE TABLE `user_stadium_recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_stadium` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_stadium` (`id_stadium`) USING BTREE,
  CONSTRAINT `ref_user_stadium_recommend_col_id_stadium` FOREIGN KEY (`id_stadium`) REFERENCES `stadium` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_stadium_recommend_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_stadium_recommend
-- ----------------------------
INSERT INTO `user_stadium_recommend` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for user_stadium_star
-- ----------------------------
DROP TABLE IF EXISTS `user_stadium_star`;
CREATE TABLE `user_stadium_star` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_stadium` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`) USING BTREE,
  KEY `id_stadium` (`id_stadium`) USING BTREE,
  CONSTRAINT `ref_user_stadium_star_col_id_stadium` FOREIGN KEY (`id_stadium`) REFERENCES `stadium` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ref_user_stadium_star_col_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_stadium_star
-- ----------------------------
INSERT INTO `user_stadium_star` VALUES ('1', '1', '1');
SET FOREIGN_KEY_CHECKS=1;
