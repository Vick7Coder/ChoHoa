/*
 Navicat Premium Data Transfer

 Source Server         : Database MySQL
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : thuongmaidientu

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 21/12/2022 16:46:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1.Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `category_id` int(255) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 1.Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'hoa tết');
INSERT INTO `categories` VALUES (2, 'hoa cưới');
INSERT INTO `categories` VALUES (3, 'hoa bó');
INSERT INTO `categories` VALUES (4, 'giỏ hoa');
INSERT INTO `categories` VALUES (5, 'hoa tulip');

-- ----------------------------
-- 2.Table structure for deliveries
-- ----------------------------
DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries`  (
  `delivery_id` int(255) NOT NULL AUTO_INCREMENT,
  `delivery_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shipping_charge` float(255, 0) NOT NULL,
  PRIMARY KEY (`delivery_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 2.Records of deliveries
-- ----------------------------
INSERT INTO `deliveries` VALUES (1, 'Quận 1', 15500);
INSERT INTO `deliveries` VALUES (2, 'Quận 2', 15500);
INSERT INTO `deliveries` VALUES (3, 'Quận 3', 15500);
INSERT INTO `deliveries` VALUES (4, 'Quận 4', 15500);
INSERT INTO `deliveries` VALUES (5, 'Quận 5', 15500);
INSERT INTO `deliveries` VALUES (6, 'Quận 6', 15500);
INSERT INTO `deliveries` VALUES (7, 'Quận 7', 15500);
INSERT INTO `deliveries` VALUES (8, 'Quận 8', 15500);
INSERT INTO `deliveries` VALUES (9, 'Quận 10', 15500);
INSERT INTO `deliveries` VALUES (10, 'Quận 11', 15500);
INSERT INTO `deliveries` VALUES (11, 'Tân Bình', 15500);
INSERT INTO `deliveries` VALUES (12, 'Tân Phú', 15500);
INSERT INTO `deliveries` VALUES (13, 'Phú Nhuận', 15500);
INSERT INTO `deliveries` VALUES (14, 'Bình Thạnh', 15500);
INSERT INTO `deliveries` VALUES (15, 'Gò Vấp', 15500);
INSERT INTO `deliveries` VALUES (16, 'Quận 9', 17000);
INSERT INTO `deliveries` VALUES (17, 'Quận 12', 17000);
INSERT INTO `deliveries` VALUES (18, 'Thủ Đức', 17000);
INSERT INTO `deliveries` VALUES (19, 'Bình Tân ', 17000);
INSERT INTO `deliveries` VALUES (20, 'Hóc Môn', 18500);
INSERT INTO `deliveries` VALUES (21, 'Bình Chánh', 18500);
INSERT INTO `deliveries` VALUES (22, 'Nhà Bè', 18500);
INSERT INTO `deliveries` VALUES (23, 'Củ Chi', 18500);

-- ----------------------------
-- 3.Table structure for momo_links
-- ----------------------------
DROP TABLE IF EXISTS `momo_links`;
CREATE TABLE `momo_links`  (
  `wallet_id` int(255) NOT NULL,
  `momo_acc_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`wallet_id`) USING BTREE,
  CONSTRAINT `momo_links_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`wallet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 3.Records of momo_links
-- ----------------------------

-- ----------------------------
-- 4.Table structure for recharge_histories
-- ----------------------------
DROP TABLE IF EXISTS `recharge_histories`;
CREATE TABLE `recharge_histories`  (
  `history_id` int(255) NOT NULL,
  `wallet_id` int(255) NOT NULL,
  `value` float(255, 0) NOT NULL,
  `create_Date` timestamp(0) NOT NULL,
  PRIMARY KEY (`history_id`) USING BTREE,
  INDEX `wallet_id`(`wallet_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 4.Records of recharge_histories
-- ----------------------------

-- ----------------------------
-- 5.Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `role_id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 5.Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (0, 'admin');
INSERT INTO `roles` VALUES (1, 'user');
-- ----------------------------
-- 6.Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_id` int(255) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `category_id` int(255) NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 6.Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Xuân An Khang', '/imgs/products/1.jpg', 'Mỗi mùa xuân về chắc hẳn mỗi người đều chọn cho ngôi nhà của mình những bình hoa rực rỡ để trưng bày, điều đó khiến ngôi nhà trở nên tươi mới và giàu màu sắc', 1);
INSERT INTO `products` VALUES (2, 'Xuân Yêu Thương', '/imgs/products/2.jpg', 'Xuân yêu thương là bó hoa hồng kem dâu tượng trưng cho tình yêu mới chớm nở, trong sáng, đơn thuần của thiếu nữ', 1);
INSERT INTO `products` VALUES (3, 'Yêu Là Cưới ', '/imgs/products/3.jpg', 'Yêu là cưới là bó hoa cưới cầm tay cô dâu giản dị mà sang trọng với những đóa hồng trắng.', 2);
INSERT INTO `products` VALUES (4, 'Chung Nhịp Đập', '/imgs/products/4.jpg', 'Chung nhịp đập là bó hoa cưới màu đỏ cam thể hiện tình yêu cháy bỏng, mê say của các cặp uyên ương.', 2);
INSERT INTO `products` VALUES (5, 'Lovely Pink', '/imgs/products/5.jpg', NULL, 3);
INSERT INTO `products` VALUES (6, 'First Love', '/imgs/products/6.jpg', NULL, 3);
INSERT INTO `products` VALUES (7, 'Petal Parade', '/imgs/products/7.jpg', NULL, 4);
INSERT INTO `products` VALUES (8, 'You And Me', '/imgs/products/8.jpg', NULL, 4);
INSERT INTO `products` VALUES (9, 'Until You', '/imgs/products/9.jpg', NULL, 5);
INSERT INTO `products` VALUES (10, 'Purple Loves', '/imgs/products/10.jpg', NULL, 5);

-- ----------------------------
-- 7.Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int(255) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CMND` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` int(255) NOT NULL,
  `phone_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(255) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `address`(`address`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`address`) REFERENCES `deliveries` (`delivery_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 7.Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Nguyễn Trường', 'Phúc', 'phuc@gmail.com', '123456987258', 18, '0125698536', 'truongphuc', '123', 0);
INSERT INTO `users` VALUES (2, 'Hoàng Bá ', 'Hiếu', 'bahieu@gmail.com', '121354458889', 18, '0256325952', 'bahieu', '123', 1);
INSERT INTO `users` VALUES (3, 'Phạm Hồng ', 'Hiệu', 'honghieu@gmail.com', '563299555587', 1, '0365218992', 'honghieu', '123', 1);
INSERT INTO `users` VALUES (4, 'Phan Đại Đăng', 'Khoa', 'dangkhoa@gmail.com', '126525888887', 5, '0236215897', 'dangkhoa', '123', 1);
INSERT INTO `users` VALUES (5, 'Nguyễn Việt', 'Hoàng', 'viethoang@gmail.com', '563256889521', 14, '0256215894', 'viethoang', '123', 1);
INSERT INTO `users` VALUES (6, 'Phan Hồng ', 'Lĩnh', 'honglinh@gmail.com', '263218587995', 12, '0125489325', 'honglinh', '123', 1);
INSERT INTO `users` VALUES (7, 'Trương Lan', 'Anh', 'lananh@gmail.com', '432568125621', 2, '0256321556', 'lananh', '123', 1);
INSERT INTO `users` VALUES (8, 'Ngô Quang', 'Khoa', 'quangkhoa@gmail.com', '325652155245', 3, '0235698521', 'quangkhoa', '123', 1);
INSERT INTO `users` VALUES (9, 'Trương Công', 'Minh', 'congminh@gmail.con', '245632152256', 15, '0251332445', 'congminh', '123', 1);
INSERT INTO `users` VALUES (10, 'Cao Trần Khánh', 'Ngân', 'khanhngan@gmail.com', '365215236589', 9, '0423252156', 'khanhngan', '123', 1);
INSERT INTO `users` VALUES (11, 'Trương Ngọc', 'Khánh', 'ngockhanh@gmail.com', '325698515222', 17, '0125632566', 'ngockhanh', '123', 1);

-- ----------------------------
-- 8.Table structure for wallets
-- ----------------------------
DROP TABLE IF EXISTS `wallets`;
CREATE TABLE `wallets`  (
  `wallet_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `balance` float(255, 0) NOT NULL,
  PRIMARY KEY (`wallet_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `wallets_ibfk_2` FOREIGN KEY (`wallet_id`) REFERENCES `recharge_histories` (`wallet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `wallets_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 8.Records of wallets
-- ----------------------------

-- ----------------------------
-- 9.Table structure for auction_sessions
-- ----------------------------
DROP TABLE IF EXISTS `auction_sessions`;
CREATE TABLE `auction_sessions`  (
  `session_id` int(255) NOT NULL AUTO_INCREMENT,
  `auction_organizer_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `reserve_price` float(255, 0) NOT NULL,
  `closing_price` float(255, 0) NOT NULL,
  `price_step` float(255, 0) NOT NULL,
  `create_Date` timestamp(0) NOT NULL,
  `start_Day` timestamp(0) NOT NULL,
  `end_Day` timestamp(0) NOT NULL,
  `is_Completed` bit(1) NOT NULL,
  PRIMARY KEY (`session_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  INDEX `auction_organizer_id`(`auction_organizer_id`) USING BTREE,
  CONSTRAINT `auction_sessions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auction_sessions_ibfk_3` FOREIGN KEY (`auction_organizer_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 9.Records of auction_sessions
-- ----------------------------
INSERT INTO `auction_sessions` VALUES (1, 7, 1, 10000000, 7000000, 200000, '2020-10-27 23:10:17', '2020-10-28 23:10:40', '2020-10-31 23:11:21', b'1');
INSERT INTO `auction_sessions` VALUES (2, 2, 2, 7000000, 4000000, 200000, '2020-10-01 21:53:55', '2020-10-02 21:54:08', '2020-10-05 21:54:21', b'1');
INSERT INTO `auction_sessions` VALUES (3, 6, 4, 8000000, 4000000, 200000, '2022-12-05 14:05:04', '2022-12-05 14:05:17', '2022-12-31 14:05:22', b'0');
INSERT INTO `auction_sessions` VALUES (4, 3, 5, 10000000, 4000000, 200000, '2022-12-05 19:07:32', '2022-12-05 19:07:32', '2022-12-31 19:07:32', b'0');
INSERT INTO `auction_sessions` VALUES (17, 5, 3, 10000000, 4000000, 200000, '2022-12-05 19:07:52', '2022-12-05 19:07:52', '2022-12-31 19:07:52', b'0');
INSERT INTO `auction_sessions` VALUES (18, 8, 8, 10000000, 4000000, 200000, '2022-12-05 19:07:52', '2022-12-05 19:07:52', '2022-12-31 19:07:52', b'0');
INSERT INTO `auction_sessions` VALUES (20, 3, 6, 10000000, 4000000, 200000, '2022-12-10 19:18:52', '2022-12-10 19:18:52', '2022-12-31 19:18:52', b'0');
INSERT INTO `auction_sessions` VALUES (21, 3, 7, 10000000, 4000000, 200000, '2022-12-10 19:18:54', '2022-12-10 19:18:54', '2022-12-31 19:18:54', b'0');
-- ----------------------------
-- 10.Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(255) NOT NULL AUTO_INCREMENT,
  `session_id` int(255) NOT NULL,
  `total_price` float(255, 0) NOT NULL,
  `create_Date` timestamp(0) NOT NULL,
  `delivery_id` int(255) NOT NULL,
  `is_Completed` bit(1) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `session_id`(`session_id`) USING BTREE,
  INDEX `delivery_id`(`delivery_id`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `auction_sessions` (`session_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`delivery_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 10.Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 1, 7715500, '2020-10-31 23:31:11', 2, b'1');
INSERT INTO `orders` VALUES (2, 2, 5717000, '2020-10-05 22:07:23', 18, b'1');
-- ----------------------------
-- 11.Table structure for commissions
-- ----------------------------
DROP TABLE IF EXISTS `commissions`;
CREATE TABLE `commissions`  (
  `order_id` int(255) NOT NULL AUTO_INCREMENT,
  `profit` float(255, 0) NOT NULL,
  `commission_value` float(255, 0) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  CONSTRAINT `commissions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 11.Records of commissions
-- ----------------------------
INSERT INTO `commissions` VALUES (1, 215500, 43100);
INSERT INTO `commissions` VALUES (2, 1017000, 203400);
-- ----------------------------
-- 12.Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `supplier_id` int(255) NOT NULL AUTO_INCREMENT,
  `owner_id` int(255) NOT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`supplier_id`) USING BTREE,
  INDEX `owner_id`(`owner_id`) USING BTREE,
  CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 12.Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (1, 2, 'Shop Hoa Bá Hiếu');
INSERT INTO `suppliers` VALUES (2, 3, 'Shop Hoa Hồng Hiệu');
INSERT INTO `suppliers` VALUES (3, 4, 'Shop Hoa Khoa Đăng');
INSERT INTO `suppliers` VALUES (4, 5, 'Shop Hoa Việt Hoàng');
INSERT INTO `suppliers` VALUES (5, 6, 'Shop Hoa Hồng Lĩnh');
-- ----------------------------
-- 13.Table structure for supplier_detail
-- ----------------------------
DROP TABLE IF EXISTS `supplier_detail`;
CREATE TABLE `supplier_detail`  (
  `supplier_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `default_price` float(255, 0) NOT NULL,
  PRIMARY KEY (`supplier_id`, `product_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  CONSTRAINT `supplier_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `supplier_detail_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 13.Records of supplier_detail
-- ----------------------------
INSERT INTO `supplier_detail` VALUES (1, 1, 7500000);
INSERT INTO `supplier_detail` VALUES (1, 2, 4500000);
INSERT INTO `supplier_detail` VALUES (1, 3, 7400000);
INSERT INTO `supplier_detail` VALUES (1, 4, 4600000);
INSERT INTO `supplier_detail` VALUES (1, 5, 350000);
INSERT INTO `supplier_detail` VALUES (2, 1, 7400000);
INSERT INTO `supplier_detail` VALUES (2, 2, 4500000);
INSERT INTO `supplier_detail` VALUES (2, 3, 7200000);
INSERT INTO `supplier_detail` VALUES (2, 4, 4500000);
INSERT INTO `supplier_detail` VALUES (2, 5, 350000);
INSERT INTO `supplier_detail` VALUES (3, 1, 7600000);
INSERT INTO `supplier_detail` VALUES (3, 2, 4600000);
INSERT INTO `supplier_detail` VALUES (3, 3, 7300000);
INSERT INTO `supplier_detail` VALUES (3, 4, 4700000);
INSERT INTO `supplier_detail` VALUES (3, 5, 360000);
INSERT INTO `supplier_detail` VALUES (4, 1, 7500000);
INSERT INTO `supplier_detail` VALUES (4, 2, 4400000);
INSERT INTO `supplier_detail` VALUES (4, 3, 7500000);
INSERT INTO `supplier_detail` VALUES (4, 4, 4600000);
INSERT INTO `supplier_detail` VALUES (4, 5, 370000);
INSERT INTO `supplier_detail` VALUES (5, 1, 7500000);
INSERT INTO `supplier_detail` VALUES (5, 2, 4600000);
INSERT INTO `supplier_detail` VALUES (5, 3, 7200000);
INSERT INTO `supplier_detail` VALUES (5, 4, 4600000);
INSERT INTO `supplier_detail` VALUES (5, 5, 370000);


-- ----------------------------
-- 14.Table structure for auction_session_participants
-- ----------------------------
DROP TABLE IF EXISTS `auction_session_participants`;
CREATE TABLE `auction_session_participants`  (
  `session_id` int(255) NOT NULL,
  `supplier_id` int(255) NOT NULL,
  `auction_session_price` float(255, 0) NOT NULL,
  `auction_winner` bit(1) NOT NULL,
  PRIMARY KEY (`session_id`, `supplier_id`) USING BTREE,
  INDEX `supplier_id`(`supplier_id`) USING BTREE,
  CONSTRAINT `auction_session_participants_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auction_session_participants_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `auction_sessions` (`session_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- 14.Records of auction_session_participants
-- ----------------------------
INSERT INTO `auction_session_participants` VALUES (1, 1, 7700000, b'1');
INSERT INTO `auction_session_participants` VALUES (1, 2, 8500000, b'0');
INSERT INTO `auction_session_participants` VALUES (1, 3, 8800000, b'0');
INSERT INTO `auction_session_participants` VALUES (1, 4, 9000000, b'0');
INSERT INTO `auction_session_participants` VALUES (1, 5, 8000000, b'0');
INSERT INTO `auction_session_participants` VALUES (2, 1, 6000000, b'0');
INSERT INTO `auction_session_participants` VALUES (2, 2, 6700000, b'0');
INSERT INTO `auction_session_participants` VALUES (2, 3, 5700000, b'1');
INSERT INTO `auction_session_participants` VALUES (2, 4, 6500000, b'0');
INSERT INTO `auction_session_participants` VALUES (2, 5, 6300000, b'0');
INSERT INTO `auction_session_participants` VALUES (3, 1, 7100000, b'0');
INSERT INTO `auction_session_participants` VALUES (3, 3, 7800000, b'0');
INSERT INTO `auction_session_participants` VALUES (3, 4, 7600000, b'0');
INSERT INTO `auction_session_participants` VALUES (3, 5, 7300000, b'0');
INSERT INTO `auction_session_participants` VALUES (4, 1, 8400000, b'0');
INSERT INTO `auction_session_participants` VALUES (4, 2, 800000, b'0');
INSERT INTO `auction_session_participants` VALUES (17, 1, 7000000, b'0');
INSERT INTO `auction_session_participants` VALUES (17, 2, 6800000, b'0');
INSERT INTO `auction_session_participants` VALUES (17, 3, 6400000, b'0');
INSERT INTO `auction_session_participants` VALUES (18, 4, 7500000, b'0');
INSERT INTO `auction_session_participants` VALUES (18, 5, 7000000, b'0');
INSERT INTO `auction_session_participants` VALUES (20, 1, 7000000, b'0');
INSERT INTO `auction_session_participants` VALUES (20, 3, 7500000, b'0');
INSERT INTO `auction_session_participants` VALUES (21, 1, 7000000, b'0');
INSERT INTO `auction_session_participants` VALUES (21, 2, 6800000, b'0');
INSERT INTO `auction_session_participants` VALUES (21, 3, 6600000, b'0');
INSERT INTO `auction_session_participants` VALUES (21, 4, 6400000, b'0');
INSERT INTO `auction_session_participants` VALUES (21, 5, 6100000, b'0');


-- ----------------------------
-- Procedure structure for Auction_End
-- ----------------------------
DROP PROCEDURE IF EXISTS `Auction_End`;
delimiter ;;
CREATE PROCEDURE `Auction_End`(Aid INT(255))
BEGIN
	
	DECLARE ngay INT(255) DEFAULT 0;
	DECLARE gio INT(255) DEFAULT 0;
	DECLARE phut INT(255) DEFAULT 0;
	DECLARE giay INT(255) DEFAULT 0;
	DECLARE remain INT(255) DEFAULT 0;
	
	DECLARE end_price INT(255) DEFAULT 0;
	
	SELECT TIMESTAMPDIFF(SECOND,CURRENT_DATE,end_Day) INTO remain FROM auction_sessions WHERE session_id=Aid;
	SET ngay=FLOOR(remain/60/60/24);
	SET giay=MOD(remain,60);
	SET phut=MOD(MOD(remain,60),60);
	SET gio=MOD(MOD(MOD(remain,60),60),24);
	
	SELECT MIN(auction_session_price) INTO end_price from auction_session_participants WHERE session_id=Aid;
	
	IF(ngay<=0 AND gio<=0 AND phut<=0 AND giay<=0) THEN 
		UPDATE auction_session_participants SET auction_winner=1 WHERE session_id=Aid AND auction_session_price=end_price;
	END IF;
	
	IF(ngay<=0 AND gio<=0 AND phut<=0 AND giay<=0) THEN 
		UPDATE auction_sessions SET is_Completed=1 WHERE session_id=Aid ;
	END IF;
		
	IF(ngay<=0 AND gio<=0 AND phut<=0 AND giay<=0) THEN 
		SELECT users.user_id winner_id
			FROM auction_session_participants 
			INNER JOIN suppliers ON auction_session_participants.supplier_id=suppliers.supplier_id
			INNER JOIN users ON suppliers.owner_id=users.user_id
			WHERE auction_session_participants.session_id=Aid AND auction_session_participants.auction_winner=1;
	END IF;	
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Auction_Going_On
-- ----------------------------
DROP PROCEDURE IF EXISTS `Auction_Going_On`;
delimiter ;;
CREATE PROCEDURE `Auction_Going_On`()
BEGIN
	SELECT products.product_name Ten_SanPham,users.first_name Nguoi_To_Chuc,auction_sessions.reserve_price Gia_Khoi_Diem, auction_sessions.closing_price 		Gia_Mua_Ngay,DATEDIFF(auction_sessions.end_Day,CURRENT_TIMESTAMP()) Thoi_Gian_Con_Lai 
		FROM auction_sessions 
													INNER JOIN users on auction_sessions.auction_organizer_id=users.user_id
													INNER JOIN products on auction_sessions.product_id=products.product_id
		where auction_sessions.is_Completed=0;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Auction_Place_Bid
-- ----------------------------
DROP PROCEDURE IF EXISTS `Auction_Place_Bid`;
delimiter ;;
CREATE PROCEDURE `Auction_Place_Bid`(Asession_id INT(255),
	Asupplier_id INT(255),
	Aprice INT(255))
BEGIN
	DECLARE flag INT DEFAULT -1;
	
	SELECT auction_session_price INTO flag FROM auction_session_participants WHERE session_id=Asession_id AND supplier_id=Asupplier_id;
	
	IF (flag <= 0) THEN
		INSERT INTO auction_session_participants(session_id,supplier_id,auction_session_price,auction_winner) VALUES(Asession_id,Asupplier_id,Aprice,0);
	ELSE
		UPDATE auction_session_participants SET auction_session_price=Aprice WHERE session_id=Asession_id AND supplier_id=Asupplier_id;
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Auction_Time_Remaining
-- ----------------------------
DROP PROCEDURE IF EXISTS `Auction_Time_Remaining`;
delimiter ;;
CREATE PROCEDURE `Auction_Time_Remaining`(Aid INT(255))
BEGIN

	DECLARE ngay INT(255) DEFAULT 0;
	DECLARE gio INT(255) DEFAULT 0;
	DECLARE phut INT(255) DEFAULT 0;
	DECLARE giay INT(255) DEFAULT 0;
	DECLARE remain INT(255) DEFAULT 0;
	
	SELECT TIMESTAMPDIFF(SECOND,CURRENT_DATE,end_Day) INTO remain FROM auction_sessions WHERE session_id=Aid;
	SET ngay=FLOOR(remain/60/60/24);
	SET giay=MOD(remain,60);
	SET phut=MOD(MOD(remain,60),60);
	SET gio=MOD(MOD(MOD(remain,60),60),24);
	
	SELECT CONCAT(ngay," : ",gio," : ",phut," : ",giay) AS Time_Remaining;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Count_Product_By_Cat
-- ----------------------------
DROP PROCEDURE IF EXISTS `Count_Product_By_Cat`;
delimiter ;;
CREATE PROCEDURE `Count_Product_By_Cat`()
BEGIN
	SELECT categories.category_id,categories.category_name,COUNT(*) SoLuong FROM products 
		INNER JOIN categories on products.category_id=categories.category_id 
		GROUP BY category_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Delete_Auction
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete_Auction`;
delimiter ;;
CREATE PROCEDURE `Delete_Auction`(IN aid INT(255))
BEGIN
	DELETE FROM auction_sessions WHERE session_id=aid;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Delete_Product
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete_Product`;
delimiter ;;
CREATE PROCEDURE `Delete_Product`(IN pid INT(255))
BEGIN
		DELETE FROM products WHERE product_id=pid;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Delete_User
-- ----------------------------
DROP PROCEDURE IF EXISTS `Delete_User`;
delimiter ;;
CREATE PROCEDURE `Delete_User`(IN uid INT(255))
BEGIN
	DELETE FROM users WHERE user_id=uid;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Auction
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Auction`;
delimiter ;;
CREATE PROCEDURE `Insert_Auction`(IN Auser_id INT(255),
	IN Aproduct_id INT(255),
	IN A1 INT(255),
	IN A2 INT(255),
	IN Astep INT(255))
BEGIN
	INSERT into auction_sessions(auction_organizer_id,product_id,reserve_price,closing_price,price_step,create_Date,start_Day,end_Day,is_Completed) 
	VALUES(Auser_id,Aproduct_id,A1,A2,Astep,CURRENT_TIMESTAMP(),CURRENT_TIMESTAMP(),DATE_ADD(CURRENT_TIMESTAMP(),INTERVAL '10' DAY),0);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_Product
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_Product`;
delimiter ;;
CREATE PROCEDURE `Insert_Product`(IN pname VARCHAR(255),
	IN pimage VARCHAR(255),
	IN pdetail VARCHAR(255), 
	IN pcategory INT(255))
BEGIN
	INSERT INTO products(product_name,product_image,detail,category_id) VALUES(pname,pimage,pdetail,pcategory);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Insert_User
-- ----------------------------
DROP PROCEDURE IF EXISTS `Insert_User`;
delimiter ;;
CREATE PROCEDURE `Insert_User`(IN Ulastname VARCHAR(255),
	IN Ufirstname VARCHAR(255),
	IN Uemail VARCHAR(255),
	IN Ucmnd VARCHAR(255),
	IN Uaddress INT(255),
	IN Uphone VARCHAR(10),
	IN Uusername VARCHAR(255),
	IN Upass VARCHAR(255))
BEGIN
	INSERT INTO users(last_name,first_name,email,CMND,address,phone_number,username,`password`,role_id) 
		VALUES(Ulastname,Ufirstname,Uemail,Ucmnd,Uaddress,Uphone,Uusername,Upass,1);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for List_All_Product
-- ----------------------------
DROP PROCEDURE IF EXISTS `List_All_Product`;
delimiter ;;
CREATE PROCEDURE `List_All_Product`()
BEGIN
	SELECT products.product_name Ten_SanPham, products.product_image
		FROM products INNER JOIN categories on products.category_id=categories.category_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for List_Product_By_Cat
-- ----------------------------
DROP PROCEDURE IF EXISTS `List_Product_By_Cat`;
delimiter ;;
CREATE PROCEDURE `List_Product_By_Cat`(IN CatId INT(255))
BEGIN
	SELECT products.product_name Ten_SanPham, products.product_image
		FROM products INNER JOIN categories on products.category_id=categories.category_id
		WHERE products.category_id=CatID;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for List_Product_By_Price
-- ----------------------------
DROP PROCEDURE IF EXISTS `List_Product_By_Price`;
delimiter ;;
CREATE PROCEDURE `List_Product_By_Price`(A1 INT(255),
	A2 INT(255))
BEGIN
	SELECT products.product_name Ten_SanPham, products.product_image
		FROM products INNER JOIN supplier_detail on products.product_id=supplier_detail.product_id
		WHERE supplier_detail.default_price BETWEEN A1 AND A2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_Auction
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_Auction`;
delimiter ;;
CREATE PROCEDURE `Update_Auction`(IN Aproduct_id INT(255),
	IN A1 INT(255),
	IN A2 INT(255),
	IN Astep INT(255))
BEGIN
	UPDATE auction_sessions 
	SET auction_sessions.product_id=Aproduct_id, auction_sessions.reserve_price=A1, auction_sessions.closing_price=A2, auction_sessions.price_step=Astep;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for Update_User
-- ----------------------------
DROP PROCEDURE IF EXISTS `Update_User`;
delimiter ;;
CREATE PROCEDURE `Update_User`(IN Uemail VARCHAR(255),
	IN Ucmnd VARCHAR(255),
	IN Uaddress INT(255),
	IN Uphone VARCHAR(10),
	IN Uusername VARCHAR(255),
	IN Upass VARCHAR(255))
BEGIN
	UPDATE users
	SET users.email=Uemail, users.CMND=cmnd, users.address=Uaddress, users.username=Uusername, users.`password`=Upass;

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
