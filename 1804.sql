/*
Navicat MySQL Data Transfer

Source Server         : myname
Source Server Version : 100014
Source Host           : localhost:3306
Source Database       : 1804

Target Server Type    : MYSQL
Target Server Version : 100014
File Encoding         : 65001

Date: 2018-08-27 19:59:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `off` decimal(10,2) DEFAULT NULL,
  `star` int(5) DEFAULT NULL,
  `commentCount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('G001', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g1.jpg', '#', '899.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G0010', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g10.jpg', '#', '2998.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G002', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g2.jpg', '#', '698.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G003', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g3.jpg', '#', '398.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G004', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g4.jpg', '#', '998.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G005', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g5.jpg', '#', '198.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G006', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g6.jpg', '#', '6998.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G007', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g7.jpg', '#', '3998.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G008', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g8.jpg', '#', '698.00', '0.20', '4', '10002');
INSERT INTO `goodlist` VALUES ('G009', 'Thermos 膳魔�?Funtainer系列水杯 12盎司�?40g�?粉红�?', 'shoes', 'images/g9.jpg', '#', '1998.00', '0.20', '4', '10002');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) NOT NULL,
  `pa` varchar(255) DEFAULT NULL,
  `pb` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `pc` varchar(255) DEFAULT NULL,
  `reg_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/896a78a7-aebb-4cc4-bfef-9a45ea2c5d62.jpg', 'KONKA康佳  2L电饭煲 KRC-20MN20E', '超省电安全、小巧2L容量、 陶晶内胆、防溢保湿、快速香淳、内盖可拆、方便耐用', '98.00', '立即购买', '2018-08-21 09:45:39');
INSERT INTO `goods` VALUES ('2', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/c2e36f4d-6de3-4e68-95fa-beec3a1d93a6.jpg', 'SUPO  苏泊尔 5升精控鲜呼吸电压力锅 CYSB50FC11-100', '鲜呼吸功能 无需味精 少放盐 收汁提味 操作便捷！', '599.00', '立即购买', '2018-08-21 11:42:14');
INSERT INTO `goods` VALUES ('3', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/5c0068f7-26cb-469e-8c8c-668599e89d9b.jpg', 'Aries艾尔瑞兹 2000W整版纯平触摸电磁炉', '整版触摸，大气典雅！一键爆炒，方便又省心！聚能防辐射更安全！', '169.00', '立即购买', '2018-08-21 14:05:42');
INSERT INTO `goods` VALUES ('4', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/2c3a4adb-8867-4c10-b2b4-e7e767395556.jpg', ' Midea/美的 PCS5021 5L 智能电压力锅', '新品超低热卖！焖、炖、蒸、煮更全面！', '399.00', '立即购买', '2018-08-21 14:07:26');
INSERT INTO `goods` VALUES ('5', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/44eeae06-3a19-45b0-bff3-753be7c969b5.jpg', 'Midea 美的 PCS5035 5L 电压力锅', '5L大容量+四大开盖特色烹饪功能+三重安全保障+8项升级', '399.00', '立即购买', '2018-08-21 14:09:05');
INSERT INTO `goods` VALUES ('6', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/50a36d9b-550c-4c7b-825c-eca2a0d5ad64.jpg', 'Midea 美的 PCS5031  5L 智能双胆电压力锅', '独有专利开合盖保护装置，用户误操作合盖不到位时，自动声光警报提醒，超大控制面板，操控更方便，12个菜。', '199.00', '立即购买', '2018-08-21 14:11:21');
INSERT INTO `goods` VALUES ('7', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/7401f32c-4d43-4ed8-8228-16a70855dcc7.jpg', 'KONKA康佳 KRC-40ZS17 微电脑智能预约4L电饭煲', '市场价399元！彰显典雅，四位数码显示功能，.拉丝不锈钢材质，流线型线条，贴心热饭模式，人性化设计，可拆卸蒸汽阀和防凝露内盖，清洗方便，24小时智能预约，掉电记忆功能，更加轻松便捷！', '269.00', '抢光了', '2018-08-21 14:49:38');
INSERT INTO `goods` VALUES ('8', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/54fc3fd6-f9a0-4e5f-9daf-cab5573a0e4a.jpg', 'Midea 美的 PCS6035 6L 电压力锅', '四大开盖特色烹饪功能+三重安全保障+8项升级', '419.00', '立即购买', '2018-08-21 15:22:05');
INSERT INTO `goods` VALUES ('9', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/b56ad367-9501-4407-b155-71bee193850d.jpg', 'Supor 苏泊尔 CYSB50YC10D-100 5L 全智能电压力锅', '不粘彩琅双内胆！精控火候系统，精准调压，人性化开盖提示，新增开盖收汁功能！', '399.00', '立即购买', '2018-08-21 15:22:51');
INSERT INTO `goods` VALUES ('10', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/cb85343f-0235-417a-85b6-5040c56cfa86.jpg', 'Supor 苏泊尔 CYSB60YC10D-110  6L 全智能电压力锅', '原价449元！晶彩琅双内胆！人性化开盖提示，新增开盖收汁功能！', '419.00', '立即购买', '2018-08-21 16:15:48');
INSERT INTO `goods` VALUES ('11', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/09c2f1f5-b888-4709-a570-72e6fa9b0c1d.jpg', 'SUPOR 苏泊尔 SJYZ13-200 原汁机', '立式低速挤压技术，果汁不氧化不分层！开放式出渣口、配备冰激凌筒，可做水果冰激凌！', '799.00', '立即购买', '2018-08-21 15:31:32');
INSERT INTO `goods` VALUES ('12', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/7b15607f-412d-4bb8-b53a-76d58ade29b0.jpg', 'Supor 苏泊尔 立式挤压原汁机高出汁率 SJYZ17-200', '高出汁效率 超静音 不锈钢机身', '699.00', '立即购买', '2018-08-21 16:18:29');
INSERT INTO `goods` VALUES ('13', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/7321ce6d-1c49-4c92-b9d1-32eb808e539c.jpg', 'Aries艾尔瑞兹 1.8L不锈钢电热水壶 QL-18', '大容量！1500W大功率！优质温控！100%烧开水，自动断电！', '49.00', '立即购买', '2018-08-21 15:33:35');
INSERT INTO `goods` VALUES ('14', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/15463154-54ca-4189-ae9c-81f46188b4fb.jpg', 'Midea 美的 WH415E2g 1.5L 电水壶', '全新超低热卖！原价199元！全钢无缝一体成型！拒绝污垢！双层防烫，GB9684国际标准食品级不锈钢材质！一体防尘盖设计，可视加热灯！外观时尚与实用主义的完美结合！', '99.00', '立即购买', '2018-08-21 15:34:22');
INSERT INTO `goods` VALUES ('15', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/3205c8a8-b64e-40e6-9f47-8f5cca717360.jpg', 'SEED 十度良品 小馋猫全能电锅 SD-238', '蒸煮炖煎炒烙！样样在行！全能小帮手！绝对值得拥有！', '129.00', '立即购买', '2018-08-21 16:17:05');
INSERT INTO `goods` VALUES ('16', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/73ea50d2-adcb-4424-b302-dfb04216604a.jpg', 'Supor 苏泊尔 Z06YA3C-S2 6L 双层电蒸锅', '这么吃，蒸营养！', '69.00', '立即购买', '2018-08-21 16:35:06');
INSERT INTO `goods` VALUES ('17', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/509cb3c4-e1ae-4e2a-a7cb-090285bd532e.jpg', 'KONKA 康佳 黑客食王 32cm 电饼铛 BC1334', '烙、煎、炒、烤多种功能，轻松制作各种面食点心!180度大角度翻转，上下盘可同时使用，省电省时!', '69.00', '立即购买', '2018-08-21 16:36:39');
INSERT INTO `goods` VALUES ('18', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/1a31c74f-18b1-410e-a271-0305fce6f78c.jpg', 'Midea美的 多功能煎烤机 JHN2828D', '创新侧开结构，舒适实用又防烫！2mm加厚压铸铝烤盘，均匀加热！', '169.00', '立即购买', '2018-08-21 16:37:33');
INSERT INTO `goods` VALUES ('19', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/583b2e92-be61-46e0-ab6c-b158e81b5aec.jpg', 'Midea/美的 PSS5032 5L 智能电压力锅', '多种功能！超大控制面板！超精准温控探头！食物营养又健康！', '399.00', '立即购买', '2018-08-21 16:38:27');
INSERT INTO `goods` VALUES ('20', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/f1ec729b-0349-4c70-87ff-7fc5cc624856.jpg', 'Midea 美的 FC4020 4L 涡轮动力全智能电饭煲', '涡轮动力！香甜好米饭！完美演绎现代科技煮饭！一样的米粒，不一样的香甜！', '499.00', '立即购买', '2018-08-21 16:39:33');
INSERT INTO `goods` VALUES ('21', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/97b6ade9-1653-42d9-958c-d8a08c8cd9d0.jpg', 'Panasonic 松下 SR-DY151 微电脑4L电饭煲', '热对流更充分的波纹内胆，确保始终如一的出众口感！冷饭加热，预约，保温功能兼备，上班族的首选！', '169.00', '立即购买', '2018-08-21 16:44:27');
INSERT INTO `goods` VALUES ('22', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/feed64ca-73f9-4c7c-85c7-7d6691cdc9be.jpg', 'Midea 美的 WFS4029 4L 智能预约立体加热电饭煲', '好滋味，好营养！', '399.00', '立即购买', '2018-08-21 16:45:15');
INSERT INTO `goods` VALUES ('23', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/4b7dd915-a4f3-4b38-ba84-d250f2ce9dca.jpg', '美的（Midea)  5升 智能电饭煲 WRD5031A', '5L大容量 拉丝不锈钢机身 一键柴火饭 黄晶内胆 均匀导热!', '299.00', '立即购买', '2018-08-21 16:46:06');
INSERT INTO `goods` VALUES ('24', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/ca7bd1ce-7f65-490c-b271-7f253e0ef0ae.jpg', 'Midea 美的 RT2148 电磁炉', '原价399元！超低价抢购！超薄大线圈，高效散热，匀火技术', '208.00', '立即购买', '2018-08-21 16:46:51');
INSERT INTO `goods` VALUES ('25', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/819cf190-78cc-442a-b7bb-65e075f66e44.jpg', '美的 Midea 13PSS505A 5L 韩式电压力锅', '原价699元！中途开盖，16大烹饪功能，顶置面板更便捷！冷食加热功能！聚能彩晶厚釜内胆，耐用，更美观！', '399.00', '立即购买', '2018-08-21 16:47:42');
INSERT INTO `goods` VALUES ('26', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/695995e4-4068-4193-95e8-fe2a2397510d.jpg', 'Rileosip 雅乐思 YMJ-01 研磨机 料理机', '超大容量一次70g！10秒研磨轻松完成！多种实物可磨：咖啡豆、谷物、豆类、坚果、药材等', '129.00', '立即购买', '2018-08-21 16:53:20');
INSERT INTO `goods` VALUES ('27', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/3648f96b-52ea-4e4f-8047-6a08e396e408.jpg', 'SUPOR 苏泊尔 SJYZ8C-150 原汁机', '低速螺旋！果汁不氧化，不分层。出汁率提高65%，新鲜健康不浪费！', '1199.00', '立即购买', '2018-08-21 16:53:26');
INSERT INTO `goods` VALUES ('28', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/f9add0a7-7856-4bc5-871c-f0453a585487.jpg', 'Midea/美的 M3-232C 智能变频微波炉23L 银色', 'AI人工智能芯片，900W可变频，低于60分呗超低静音，1级能效超节能！', '1198.00', '立即购买', '2018-08-21 16:54:07');
INSERT INTO `goods` VALUES ('29', '\r\nhttp://image.efeihu.com/images/wap/pdtimage/img_middle/39c0c939-9e3a-41de-984c-27d7416f48ed.jpg', 'Supor 苏泊尔DJ12B-Y97  密闭熬煮 智能豆浆机', '持续高温沸腾熬煮，浓滑香醇好豆浆！精打细磨技术，细腻口感，丝般幼滑！面板增设中途加料功能，烹饪更加随心！', '499.00', '立即购买', '2018-08-21 16:54:49');
INSERT INTO `goods` VALUES ('30', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/04044ea6-5c71-440d-8fad-2b803520b936.jpg', 'Supor 苏泊尔 智能密闭熬煮豆浆机 DJ12B-Y98', '密闭熬煮，精控火候，黄金温度研磨，出浆率更高；精打细磨技术，聚能立体加热；中途加料、自制豆腐脑功能；LED显示，全钢下盖圆弧底', '599.00', '立即购买', '2018-08-21 16:55:27');
INSERT INTO `goods` VALUES ('31', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/89a89110-b739-470e-acc2-19f9ddc53c4e.jpg', '苏泊尔陶晶火红点系列超薄煎烤机 JC32A22S-130', '超薄饼铛，易于收纳和使用，悬浮烤盘设计厚饼薄饼均可烙。导油槽设计，有效使用滴回流储存。', '339.00', '立即购买', '2018-08-21 16:58:58');
INSERT INTO `goods` VALUES ('32', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/253f5a51-a7bf-4fbe-be87-8466eb5640ab.jpg', 'Seed 十度良品 酸奶机SD-699', 'MINI酸奶机 精确感测酿造环境 智能匹配酿造时间 酿造完毕断电保鲜', '109.00', '立即购买', '2018-08-21 16:59:40');
INSERT INTO `goods` VALUES ('33', 'http://image.efeihu.com/images/wap/pdtimage/img_middle/fb6a6232-f7ad-4480-87c5-0bc263014dd0.jpg', 'KONKA康佳 KRC-40ZS37 微电脑智能预约4L电饭煲', '市场价399元！时尚不锈钢外观，咖啡色醇色设计，咖啡煲，紧跟市场潮流，四位数码显示，一目了然，外观大气，时尚简便操作面板，1.5MM双喷车边内锅，防溢蒸汽阀，可拆式蒸汽盖，锁住食物营养，11种炊煮选择，24小时时钟式智能预约与定时', '269.00', '立即购买', '2018-08-21 17:01:37');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'oldwu', '123456', '2018-08-18 14:58:31');
INSERT INTO `login` VALUES ('2', 'sky', '123456', '2018-08-22 21:45:51');
INSERT INTO `login` VALUES ('3', 'blue', '123456', '2018-08-22 21:49:29');
INSERT INTO `login` VALUES ('13', 'jiji', '123456', '2018-08-26 17:26:39');
INSERT INTO `login` VALUES ('14', 'a', 'a', '2018-08-26 17:52:45');
INSERT INTO `login` VALUES ('32', 'j', 'j', '2018-08-26 18:23:54');

-- ----------------------------
-- Table structure for lr
-- ----------------------------
DROP TABLE IF EXISTS `lr`;
CREATE TABLE `lr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lr
-- ----------------------------
INSERT INTO `lr` VALUES ('1', 'wuwu', '123', '2018-08-12 19:59:47');
INSERT INTO `lr` VALUES ('2', 'jingjing', '123456', '2018-08-12 20:54:51');
INSERT INTO `lr` VALUES ('3', 'a', 'a', '2018-08-22 21:55:33');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usname` varchar(255) NOT NULL,
  `age` varchar(10) DEFAULT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'wuwu', '18', '2018-08-11 16:32:12');
INSERT INTO `student` VALUES ('2', 'haohao', '15', '2018-08-11 17:57:55');
INSERT INTO `student` VALUES ('3', 'kk', '16', '2018-08-11 17:58:17');
SET FOREIGN_KEY_CHECKS=1;
