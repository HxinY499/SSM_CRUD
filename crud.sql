/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : crud

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 20/09/2020 11:32:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '开发部');
INSERT INTO `dept` VALUES (2, '测试部');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE,
  INDEX `fk_d_id`(`d_id`) USING BTREE,
  CONSTRAINT `fk_d_id` FOREIGN KEY (`d_id`) REFERENCES `dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 240 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (39, '3f93717', 'man', '3f93717@qq.com', 2);
INSERT INTO `emp` VALUES (40, '2ee1c18', 'man', '2ee1c18@qq.com', 2);
INSERT INTO `emp` VALUES (41, '1ae5019', 'man', '1ae5019@qq.com', 2);
INSERT INTO `emp` VALUES (46, 'c753924', 'man', 'c753924@qq.com', 1);
INSERT INTO `emp` VALUES (47, '318c825', 'man', '318c825@qq.com', 1);
INSERT INTO `emp` VALUES (48, '33c8b26', 'man', '33c8b26@qq.com', 1);
INSERT INTO `emp` VALUES (49, 'e938027', 'man', 'e938027@qq.com', 1);
INSERT INTO `emp` VALUES (50, '803b128', 'man', '803b128@qq.com', 1);
INSERT INTO `emp` VALUES (51, 'a88c729', 'man', 'a88c729@qq.com', 1);
INSERT INTO `emp` VALUES (52, '58a5130', 'man', '58a5130@qq.com', 1);
INSERT INTO `emp` VALUES (53, 'a02a531', 'man', 'a02a531@qq.com', 1);
INSERT INTO `emp` VALUES (54, '85c3332', 'man', '85c3332@qq.com', 1);
INSERT INTO `emp` VALUES (55, '5ff2133', 'man', '5ff2133@qq.com', 1);
INSERT INTO `emp` VALUES (56, '0e34834', 'man', '0e34834@qq.com', 1);
INSERT INTO `emp` VALUES (57, 'f230335', 'man', 'f230335@qq.com', 1);
INSERT INTO `emp` VALUES (58, 'f76e036', 'man', 'f76e036@qq.com', 1);
INSERT INTO `emp` VALUES (59, '9feb337', 'man', '9feb337@qq.com', 1);
INSERT INTO `emp` VALUES (60, '4fdd938', 'man', '4fdd938@qq.com', 1);
INSERT INTO `emp` VALUES (61, '09fe139', 'man', '09fe139@qq.com', 1);
INSERT INTO `emp` VALUES (62, 'db25740', 'man', 'db25740@qq.com', 1);
INSERT INTO `emp` VALUES (63, '9118341', 'man', '9118341@qq.com', 1);
INSERT INTO `emp` VALUES (64, '42ee842', 'man', '42ee842@qq.com', 1);
INSERT INTO `emp` VALUES (65, 'a9f1443', 'man', 'a9f1443@qq.com', 1);
INSERT INTO `emp` VALUES (66, '3b25044', 'man', '3b25044@qq.com', 1);
INSERT INTO `emp` VALUES (67, '34f6845', 'man', '34f6845@qq.com', 1);
INSERT INTO `emp` VALUES (68, 'a9f3046', 'man', 'a9f3046@qq.com', 1);
INSERT INTO `emp` VALUES (69, '76fb647', 'man', '76fb647@qq.com', 1);
INSERT INTO `emp` VALUES (70, 'a7f2948', 'man', 'a7f2948@qq.com', 1);
INSERT INTO `emp` VALUES (71, 'b2db649', 'man', 'b2db649@qq.com', 1);
INSERT INTO `emp` VALUES (72, '01a2e50', 'man', '01a2e50@qq.com', 1);
INSERT INTO `emp` VALUES (73, 'f28cf51', 'man', 'f28cf51@qq.com', 1);
INSERT INTO `emp` VALUES (74, '1c42d52', 'man', '1c42d52@qq.com', 1);
INSERT INTO `emp` VALUES (75, '0a0df53', 'man', '0a0df53@qq.com', 1);
INSERT INTO `emp` VALUES (76, '7b9df54', 'man', '7b9df54@qq.com', 1);
INSERT INTO `emp` VALUES (77, '25c1655', 'man', '25c1655@qq.com', 1);
INSERT INTO `emp` VALUES (78, '1c11c56', 'man', '1c11c56@qq.com', 1);
INSERT INTO `emp` VALUES (80, 'cd39158', 'man', 'cd39158@qq.com', 1);
INSERT INTO `emp` VALUES (81, '5d51459', 'man', '5d51459@qq.com', 1);
INSERT INTO `emp` VALUES (82, 'f1dc560', 'man', 'f1dc560@qq.com', 1);
INSERT INTO `emp` VALUES (83, '9c0a061', 'man', '9c0a061@qq.com', 1);
INSERT INTO `emp` VALUES (84, '1938b62', 'man', '1938b62@qq.com', 1);
INSERT INTO `emp` VALUES (85, '9201563', 'man', '9201563@qq.com', 1);
INSERT INTO `emp` VALUES (86, '3215f64', 'man', '3215f64@qq.com', 1);
INSERT INTO `emp` VALUES (87, 'c65a465', 'man', 'c65a465@qq.com', 1);
INSERT INTO `emp` VALUES (88, 'e841466', 'man', 'e841466@qq.com', 1);
INSERT INTO `emp` VALUES (89, '7978067', 'man', '7978067@qq.com', 1);
INSERT INTO `emp` VALUES (90, 'bbb8f68', 'man', 'bbb8f68@qq.com', 1);
INSERT INTO `emp` VALUES (91, 'e1fb469', 'man', 'e1fb469@qq.com', 1);
INSERT INTO `emp` VALUES (92, '6602170', 'man', '6602170@qq.com', 1);
INSERT INTO `emp` VALUES (93, '2db4571', 'man', '2db4571@qq.com', 1);
INSERT INTO `emp` VALUES (94, '5c2f572', 'man', '5c2f572@qq.com', 1);
INSERT INTO `emp` VALUES (95, '24f0673', 'man', '24f0673@qq.com', 1);
INSERT INTO `emp` VALUES (96, '020c674', 'man', '020c674@qq.com', 1);
INSERT INTO `emp` VALUES (97, '5884a75', 'man', '5884a75@qq.com', 1);
INSERT INTO `emp` VALUES (98, 'e592576', 'man', 'e592576@qq.com', 1);
INSERT INTO `emp` VALUES (99, '5600a77', 'man', '5600a77@qq.com', 1);
INSERT INTO `emp` VALUES (100, 'b213b78', 'man', 'b213b78@qq.com', 1);
INSERT INTO `emp` VALUES (101, '4495f79', 'man', '4495f79@qq.com', 1);
INSERT INTO `emp` VALUES (102, 'c96bf80', 'man', 'c96bf80@qq.com', 1);
INSERT INTO `emp` VALUES (103, '8ed2481', 'man', '8ed2481@qq.com', 1);
INSERT INTO `emp` VALUES (104, 'c523b82', 'man', 'c523b82@qq.com', 1);
INSERT INTO `emp` VALUES (105, '2c7d683', 'man', '2c7d683@qq.com', 1);
INSERT INTO `emp` VALUES (106, 'e9ba384', 'man', 'e9ba384@qq.com', 1);
INSERT INTO `emp` VALUES (107, 'd397385', 'man', 'd397385@qq.com', 1);
INSERT INTO `emp` VALUES (108, 'eddd086', 'man', 'eddd086@qq.com', 1);
INSERT INTO `emp` VALUES (109, 'e06b787', 'man', 'e06b787@qq.com', 1);
INSERT INTO `emp` VALUES (110, '1af6788', 'man', '1af6788@qq.com', 1);
INSERT INTO `emp` VALUES (111, '5f4aa89', 'man', '5f4aa89@qq.com', 1);
INSERT INTO `emp` VALUES (112, 'd072990', 'man', 'd072990@qq.com', 1);
INSERT INTO `emp` VALUES (113, '9f54991', 'man', '9f54991@qq.com', 1);
INSERT INTO `emp` VALUES (114, '3a14592', 'man', '3a14592@qq.com', 1);
INSERT INTO `emp` VALUES (115, '65e4893', 'man', '65e4893@qq.com', 1);
INSERT INTO `emp` VALUES (116, '39f4e94', 'man', '39f4e94@qq.com', 1);
INSERT INTO `emp` VALUES (117, 'fbef695', 'man', 'fbef695@qq.com', 1);
INSERT INTO `emp` VALUES (118, '62d1096', 'man', '62d1096@qq.com', 1);
INSERT INTO `emp` VALUES (119, 'f35e697', 'man', 'f35e697@qq.com', 1);
INSERT INTO `emp` VALUES (120, '4e5a898', 'man', '4e5a898@qq.com', 1);
INSERT INTO `emp` VALUES (121, 'c804a99', 'man', 'c804a99@qq.com', 1);
INSERT INTO `emp` VALUES (122, '18daa0', 'man', '18daa0@qq.com', 1);
INSERT INTO `emp` VALUES (123, '192d01', 'man', '192d01@qq.com', 1);
INSERT INTO `emp` VALUES (124, '2834b2', 'man', '2834b2@qq.com', 1);
INSERT INTO `emp` VALUES (125, 'edd013', 'man', 'edd013@qq.com', 1);
INSERT INTO `emp` VALUES (126, 'a66a34', 'man', 'a66a34@qq.com', 1);
INSERT INTO `emp` VALUES (127, 'd596c5', 'man', 'd596c5@qq.com', 1);
INSERT INTO `emp` VALUES (128, 'f2a5b6', 'man', 'f2a5b6@qq.com', 1);
INSERT INTO `emp` VALUES (129, '31e557', 'man', '31e557@qq.com', 1);
INSERT INTO `emp` VALUES (130, 'd106b8', 'man', 'd106b8@qq.com', 1);
INSERT INTO `emp` VALUES (131, 'cf0fd9', 'man', 'cf0fd9@qq.com', 1);
INSERT INTO `emp` VALUES (132, '868e410', 'man', '868e410@qq.com', 1);
INSERT INTO `emp` VALUES (133, '3968f11', 'man', '3968f11@qq.com', 1);
INSERT INTO `emp` VALUES (134, '45f0012', 'man', '45f0012@qq.com', 1);
INSERT INTO `emp` VALUES (135, 'f70fb13', 'man', 'f70fb13@qq.com', 1);
INSERT INTO `emp` VALUES (136, 'ff81014', 'man', 'ff81014@qq.com', 1);
INSERT INTO `emp` VALUES (137, 'a658615', 'man', 'a658615@qq.com', 1);
INSERT INTO `emp` VALUES (138, '8d0f916', 'man', '8d0f916@qq.com', 1);
INSERT INTO `emp` VALUES (139, '10d5d17', 'man', '10d5d17@qq.com', 1);
INSERT INTO `emp` VALUES (140, '3e24018', 'man', '3e24018@qq.com', 1);
INSERT INTO `emp` VALUES (141, '360fe19', 'man', '360fe19@qq.com', 1);
INSERT INTO `emp` VALUES (142, '8d98020', 'man', '8d98020@qq.com', 1);
INSERT INTO `emp` VALUES (143, '0071a21', 'man', '0071a21@qq.com', 1);
INSERT INTO `emp` VALUES (144, '4f22f22', 'man', '4f22f22@qq.com', 1);
INSERT INTO `emp` VALUES (145, 'dbb5723', 'man', 'dbb5723@qq.com', 1);
INSERT INTO `emp` VALUES (146, 'e113b24', 'man', 'e113b24@qq.com', 1);
INSERT INTO `emp` VALUES (147, '04feb25', 'man', '04feb25@qq.com', 1);
INSERT INTO `emp` VALUES (148, 'aa1bb26', 'man', 'aa1bb26@qq.com', 1);
INSERT INTO `emp` VALUES (149, '3e1c727', 'man', '3e1c727@qq.com', 1);
INSERT INTO `emp` VALUES (150, '5b09628', 'man', '5b09628@qq.com', 1);
INSERT INTO `emp` VALUES (151, 'a340629', 'man', 'a340629@qq.com', 1);
INSERT INTO `emp` VALUES (152, 'be3b730', 'man', 'be3b730@qq.com', 1);
INSERT INTO `emp` VALUES (153, '570e931', 'man', '570e931@qq.com', 1);
INSERT INTO `emp` VALUES (154, '9b26b32', 'man', '9b26b32@qq.com', 1);
INSERT INTO `emp` VALUES (155, '540e933', 'man', '540e933@qq.com', 1);
INSERT INTO `emp` VALUES (156, '2ba0134', 'man', '2ba0134@qq.com', 1);
INSERT INTO `emp` VALUES (157, 'a2cae35', 'man', 'a2cae35@qq.com', 1);
INSERT INTO `emp` VALUES (158, '8d88136', 'man', '8d88136@qq.com', 1);
INSERT INTO `emp` VALUES (159, '000c437', 'man', '000c437@qq.com', 1);
INSERT INTO `emp` VALUES (160, '3719838', 'man', '3719838@qq.com', 1);
INSERT INTO `emp` VALUES (161, '0972e39', 'man', '0972e39@qq.com', 1);
INSERT INTO `emp` VALUES (162, '0af7640', 'man', '0af7640@qq.com', 1);
INSERT INTO `emp` VALUES (163, 'f529341', 'man', 'f529341@qq.com', 1);
INSERT INTO `emp` VALUES (164, '16cb342', 'man', '16cb342@qq.com', 1);
INSERT INTO `emp` VALUES (165, '5aafe43', 'man', '5aafe43@qq.com', 1);
INSERT INTO `emp` VALUES (166, '9578d44', 'man', '9578d44@qq.com', 1);
INSERT INTO `emp` VALUES (167, '4ef5345', 'man', '4ef5345@qq.com', 1);
INSERT INTO `emp` VALUES (168, '8e1ec46', 'man', '8e1ec46@qq.com', 1);
INSERT INTO `emp` VALUES (169, 'cc8c447', 'man', 'cc8c447@qq.com', 1);
INSERT INTO `emp` VALUES (170, '6bd6f48', 'man', '6bd6f48@qq.com', 1);
INSERT INTO `emp` VALUES (171, '3ce4a49', 'man', '3ce4a49@qq.com', 1);
INSERT INTO `emp` VALUES (172, '0f9e450', 'man', '0f9e450@qq.com', 1);
INSERT INTO `emp` VALUES (173, '6582351', 'man', '6582351@qq.com', 1);
INSERT INTO `emp` VALUES (174, 'db6c252', 'man', 'db6c252@qq.com', 1);
INSERT INTO `emp` VALUES (175, 'f62b853', 'man', 'f62b853@qq.com', 1);
INSERT INTO `emp` VALUES (176, '650af54', 'man', '650af54@qq.com', 1);
INSERT INTO `emp` VALUES (177, 'b118c55', 'man', 'b118c55@qq.com', 1);
INSERT INTO `emp` VALUES (178, 'f199356', 'man', 'f199356@qq.com', 1);
INSERT INTO `emp` VALUES (179, '5168e57', 'man', '5168e57@qq.com', 1);
INSERT INTO `emp` VALUES (180, '33d6458', 'man', '33d6458@qq.com', 1);
INSERT INTO `emp` VALUES (181, 'cdd2d59', 'man', 'cdd2d59@qq.com', 1);
INSERT INTO `emp` VALUES (182, 'aa4b360', 'man', 'aa4b360@qq.com', 1);
INSERT INTO `emp` VALUES (183, '78b1861', 'man', '78b1861@qq.com', 1);
INSERT INTO `emp` VALUES (184, '22fe462', 'man', '22fe462@qq.com', 1);
INSERT INTO `emp` VALUES (185, 'b652f63', 'man', 'b652f63@qq.com', 1);
INSERT INTO `emp` VALUES (186, '1acca64', 'man', '1acca64@qq.com', 1);
INSERT INTO `emp` VALUES (187, '1358e65', 'man', '1358e65@qq.com', 1);
INSERT INTO `emp` VALUES (188, '545ea66', 'man', '545ea66@qq.com', 1);
INSERT INTO `emp` VALUES (189, '3e6b667', 'man', '3e6b667@qq.com', 1);
INSERT INTO `emp` VALUES (190, 'bc2c468', 'man', 'bc2c468@qq.com', 1);
INSERT INTO `emp` VALUES (191, 'ab9ee69', 'man', 'ab9ee69@qq.com', 1);
INSERT INTO `emp` VALUES (192, '083a870', 'man', '083a870@qq.com', 1);
INSERT INTO `emp` VALUES (193, '6c89c71', 'man', '6c89c71@qq.com', 1);
INSERT INTO `emp` VALUES (194, 'e734a72', 'man', 'e734a72@qq.com', 1);
INSERT INTO `emp` VALUES (195, '284ef73', 'man', '284ef73@qq.com', 1);
INSERT INTO `emp` VALUES (196, '792fc74', 'man', '792fc74@qq.com', 1);
INSERT INTO `emp` VALUES (197, '3406975', 'man', '3406975@qq.com', 1);
INSERT INTO `emp` VALUES (198, 'db5d976', 'man', 'db5d976@qq.com', 1);
INSERT INTO `emp` VALUES (199, 'c131d77', 'man', 'c131d77@qq.com', 1);
INSERT INTO `emp` VALUES (200, '33bf078', 'man', '33bf078@qq.com', 1);
INSERT INTO `emp` VALUES (201, 'b67ba79', 'man', 'b67ba79@qq.com', 1);
INSERT INTO `emp` VALUES (202, '8173c80', 'man', '8173c80@qq.com', 1);
INSERT INTO `emp` VALUES (203, '6012f81', 'man', '6012f81@qq.com', 1);
INSERT INTO `emp` VALUES (204, '6d10d82', 'man', '6d10d82@qq.com', 1);
INSERT INTO `emp` VALUES (205, 'fb1af83', 'man', 'fb1af83@qq.com', 1);
INSERT INTO `emp` VALUES (206, 'b874684', 'man', 'b874684@qq.com', 1);
INSERT INTO `emp` VALUES (207, 'ff12b85', 'man', 'ff12b85@qq.com', 1);
INSERT INTO `emp` VALUES (208, '3aca286', 'man', '3aca286@qq.com', 1);
INSERT INTO `emp` VALUES (209, '473d087', 'man', '473d087@qq.com', 1);
INSERT INTO `emp` VALUES (210, '3690b88', 'man', '3690b88@qq.com', 1);
INSERT INTO `emp` VALUES (211, '414e589', 'man', '414e589@qq.com', 1);
INSERT INTO `emp` VALUES (212, '10b2790', 'man', '10b2790@qq.com', 1);
INSERT INTO `emp` VALUES (213, 'f055991', 'woman', 'f0@qq.com', 2);
INSERT INTO `emp` VALUES (214, '8296d92', 'man', '8296d92@qq.com', 2);
INSERT INTO `emp` VALUES (215, '2e58893', 'man', '2e58893@qq.com', 1);
INSERT INTO `emp` VALUES (216, '0a27994', 'man', '0a27994@qq.com', 1);
INSERT INTO `emp` VALUES (217, 'de5fe95', 'man', 'de5fe95@qq.com', 1);
INSERT INTO `emp` VALUES (218, 'bd23a96', 'man', 'bd23a96@qq.com', 1);
INSERT INTO `emp` VALUES (219, 'c9c8b97', 'man', 'c9c8b97@qq.com', 1);
INSERT INTO `emp` VALUES (220, 'bd34b98', 'man', 'bd34b98@qq.com', 1);
INSERT INTO `emp` VALUES (221, '1f62b99', 'man', '1f62b99@qq.com', 1);
INSERT INTO `emp` VALUES (222, 'xiaohpng', 'woman', '123@qq.com', 2);
INSERT INTO `emp` VALUES (223, 'xiaohong', 'man', '123@qq.com', 1);
INSERT INTO `emp` VALUES (224, 'xiaohong', 'woman', '123@qq.com', 2);
INSERT INTO `emp` VALUES (225, 'xiaohjihnijk', 'woman', '838195242@qq.com', 1);
INSERT INTO `emp` VALUES (226, 'xinhnjnijbn', 'woman', '1@qq.com', 1);
INSERT INTO `emp` VALUES (227, 'kjjjjj', 'man', '83512@qq.com', 1);
INSERT INTO `emp` VALUES (228, 'asfqawefasfds', 'man', 'safcqasc@qq.com', 1);
INSERT INTO `emp` VALUES (229, 'qqqqqq', 'man', 'qq@qq.com', 1);
INSERT INTO `emp` VALUES (230, 'aaaaa', 'man', 'aa@qq.com', 1);
INSERT INTO `emp` VALUES (231, '马克', 'woman', 'mae@qq.com', 1);
INSERT INTO `emp` VALUES (232, 'aaaaa', 'man', '123122@qq.com', 1);
INSERT INTO `emp` VALUES (233, 'qqqqq', 'man', '123@qq.com', 1);
INSERT INTO `emp` VALUES (234, '去玩儿', 'man', '121233@qq.com', 1);
INSERT INTO `emp` VALUES (235, '师傅', 'woman', '123123123@qq.com', 1);
INSERT INTO `emp` VALUES (236, 'kloqq', 'man', '123122@qq.com', 1);
INSERT INTO `emp` VALUES (237, '马总', 'woman', '12369@qq.com', 1);
INSERT INTO `emp` VALUES (238, '阿达达', 'woman', '12312356@qq.com', 2);
INSERT INTO `emp` VALUES (239, 'sfwevf', 'man', 'asdqefv@qq.com', 1);
INSERT INTO `emp` VALUES (240, 'sfwevf', 'man', 'asdqefv@qq.com', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '123456', '123@qq.com');
INSERT INTO `user` VALUES ('qqq', '111', '123@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
