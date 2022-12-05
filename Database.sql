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

 Date: 27/11/2022 20:17:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auction_session_participants
-- ----------------------------
DROP TABLE IF EXISTS `auction_session_participants`;
CREATE TABLE `auction_session_participants`  (
  `session_id` int(255) NOT NULL,
  `supplier_id` int(255) NOT NULL,
  `auction_session_price` float(255, 0) NOT NULL,
  `auction_winner` bit(1) NOT NULL,
  PRIMARY KEY (`session_id`, `supplier_id`) USING BTREE,
  INDEX `supplier_id`(`supplier_id`) USING BTREE,
  CONSTRAINT `auction_session_participants_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_session_participants
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

-- ----------------------------
-- Table structure for auction_sessions
-- ----------------------------
DROP TABLE IF EXISTS `auction_sessions`;
CREATE TABLE `auction_sessions`  (
  `session_id` int(255) NOT NULL AUTO_INCREMENT,
  `auction_organizer_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `reserve_price` float(255, 0) NOT NULL,
  `closing_price` float(255, 0) NOT NULL,
  `price_step` float(255, 0) NOT NULL,
  `create_Date` datetime(0) NOT NULL,
  `start_Day` datetime(0) NOT NULL,
  `end_Day` datetime(0) NOT NULL,
  `is_Completed` bit(1) NOT NULL,
  PRIMARY KEY (`session_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  INDEX `auction_organizer_id`(`auction_organizer_id`) USING BTREE,
  CONSTRAINT `auction_sessions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auction_sessions_ibfk_3` FOREIGN KEY (`auction_organizer_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auction_sessions
-- ----------------------------
INSERT INTO `auction_sessions` VALUES (1, 7, 1, 10000000, 7000000, 200000, '2020-10-27 23:10:17', '2020-10-28 23:10:40', '2020-10-31 23:11:21', b'1');
INSERT INTO `auction_sessions` VALUES (2, 2, 2, 7000000, 4000000, 200000, '2020-10-01 21:53:55', '2020-10-02 21:54:08', '2020-10-05 21:54:21', b'1');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `category_id` int(255) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'hoa tết');
INSERT INTO `categories` VALUES (2, 'hoa cưới');
INSERT INTO `categories` VALUES (3, 'hoa bó');
INSERT INTO `categories` VALUES (4, 'giỏ hoa');
INSERT INTO `categories` VALUES (5, 'hoa tulip');

-- ----------------------------
-- Table structure for commissions
-- ----------------------------
DROP TABLE IF EXISTS `commissions`;
CREATE TABLE `commissions`  (
  `order_id` int(255) NOT NULL AUTO_INCREMENT,
  `profit` float(255, 0) NOT NULL,
  `commission_value` float(255, 0) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  CONSTRAINT `commissions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commissions
-- ----------------------------
INSERT INTO `commissions` VALUES (1, 215500, 43100);
INSERT INTO `commissions` VALUES (2, 1017000, 203400);

-- ----------------------------
-- Table structure for deliveries
-- ----------------------------
DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries`  (
  `delivery_id` int(255) NOT NULL AUTO_INCREMENT,
  `delivery_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shipping_charge` float(255, 0) NOT NULL,
  PRIMARY KEY (`delivery_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deliveries
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
-- Table structure for momo_links
-- ----------------------------
DROP TABLE IF EXISTS `momo_links`;
CREATE TABLE `momo_links`  (
  `wallet_id` int(255) NOT NULL,
  `momo_acc_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`wallet_id`) USING BTREE,
  CONSTRAINT `momo_links_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`wallet_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of momo_links
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(255) NOT NULL AUTO_INCREMENT,
  `session_id` int(255) NOT NULL,
  `total_price` float(255, 0) NOT NULL,
  `create_Date` datetime(0) NOT NULL,
  `delivery_id` int(255) NOT NULL,
  `is_Completed` bit(1) NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `session_id`(`session_id`) USING BTREE,
  INDEX `delivery_id`(`delivery_id`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `auction_sessions` (`session_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`delivery_id`) REFERENCES `deliveries` (`delivery_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 1, 7715500, '2020-10-31 23:31:11', 2, b'1');
INSERT INTO `orders` VALUES (2, 2, 5717000, '2020-10-05 22:07:23', 18, b'1');

-- ----------------------------
-- Table structure for products
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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'Xuân An Khang', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\1.jpg', 'Mỗi mùa xuân về chắc hẳn mỗi người đều chọn cho ngôi nhà của mình những bình hoa rực rỡ để trưng bày, điều đó khiến ngôi nhà trở nên tươi mới và giàu màu sắc', 1);
INSERT INTO `products` VALUES (2, 'Xuân Yêu Thương', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\2.jpg', 'Xuân yêu thương là bó hoa hồng kem dâu tượng trưng cho tình yêu mới chớm nở, trong sáng, đơn thuần của thiếu nữ', 1);
INSERT INTO `products` VALUES (3, 'Yêu Là Cưới ', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\3.jpg', 'Yêu là cưới là bó hoa cưới cầm tay cô dâu giản dị mà sang trọng với những đóa hồng trắng.', 2);
INSERT INTO `products` VALUES (4, 'Chung Nhịp Đập', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\4.jpg', 'Chung nhịp đập là bó hoa cưới màu đỏ cam thể hiện tình yêu cháy bỏng, mê say của các cặp uyên ương.', 2);
INSERT INTO `products` VALUES (5, 'Lovely Pink', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\5.jpg', NULL, 3);
INSERT INTO `products` VALUES (6, 'First Love', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\6.jpg', NULL, 3);
INSERT INTO `products` VALUES (7, 'Petal Parade', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\7.jpg', NULL, 4);
INSERT INTO `products` VALUES (8, 'You And Me', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\8.jpg', NULL, 4);
INSERT INTO `products` VALUES (9, 'Until You', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\9.jpg', NULL, 5);
INSERT INTO `products` VALUES (10, 'Purple Loves', 'D:\\Nam3_HK1\\ThuongMaiDienTu\\Đồ Án CK\\Ảnh\\products\\10.jpg', NULL, 5);

-- ----------------------------
-- Table structure for recharge_histories
-- ----------------------------
DROP TABLE IF EXISTS `recharge_histories`;
CREATE TABLE `recharge_histories`  (
  `history_id` int(255) NOT NULL,
  `wallet_id` int(255) NOT NULL,
  `value` float(255, 0) NOT NULL,
  `create_Date` datetime(0) NOT NULL,
  PRIMARY KEY (`history_id`) USING BTREE,
  INDEX `wallet_id`(`wallet_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recharge_histories
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `role_id` int(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (0, 'admin');
INSERT INTO `roles` VALUES (1, 'user');

-- ----------------------------
-- Table structure for supplier_detail
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
-- Records of supplier_detail
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
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `supplier_id` int(255) NOT NULL AUTO_INCREMENT,
  `owner_id` int(255) NOT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`supplier_id`) USING BTREE,
  INDEX `owner_id`(`owner_id`) USING BTREE,
  CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (1, 2, 'Shop Hoa Bá Hiếu');
INSERT INTO `suppliers` VALUES (2, 3, 'Shop Hoa Hồng Hiệu');
INSERT INTO `suppliers` VALUES (3, 4, 'Shop Hoa Khoa Đăng');
INSERT INTO `suppliers` VALUES (4, 5, 'Shop Hoa Việt Hoàng');
INSERT INTO `suppliers` VALUES (5, 6, 'Shop Hoa Hồng Lĩnh');

-- ----------------------------
-- Table structure for users
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
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
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
-- Table structure for wallets
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
-- Records of wallets
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
