/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.4.18-MariaDB : Database - db_banhang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_banhang` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_banhang`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin` */

insert  into `admin`(`id`) values 
(1);

/*Table structure for table `bill_detail` */

DROP TABLE IF EXISTS `bill_detail`;

CREATE TABLE `bill_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_bill` int(10) NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(11) DEFAULT NULL COMMENT 'số lượng',
  `unit_price` decimal(10,0) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bill_detail_ibfk_2` (`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `bill_detail` */

insert  into `bill_detail`(`id`,`id_bill`,`id_product`,`quantity`,`unit_price`,`size`,`created_at`,`updated_at`) values 
(42,36,135,3,120000,NULL,'2019-04-20 15:14:13','2019-04-20 15:14:13'),
(41,35,151,1,290000,NULL,'2019-04-20 15:06:22','2019-04-20 15:06:22'),
(40,35,135,1,120000,NULL,'2019-04-20 15:06:22','2019-04-20 15:06:22'),
(39,34,148,1,345000,NULL,'2019-04-20 15:04:03','2019-04-20 15:04:03'),
(38,34,147,3,345000,NULL,'2019-04-20 15:04:03','2019-04-20 15:04:03'),
(37,33,147,1,345000,NULL,'2019-04-20 14:37:28','2019-04-20 14:37:28'),
(36,32,135,1,120000,NULL,'2019-04-20 14:25:19','2019-04-20 14:25:19'),
(35,31,135,1,120000,NULL,'2019-04-20 14:24:11','2019-04-20 14:24:11'),
(34,30,135,1,120000,NULL,'2019-04-20 14:23:26','2019-04-20 14:23:26'),
(43,36,134,1,120000,NULL,'2019-04-20 15:14:13','2019-04-20 15:14:13'),
(44,37,135,1,120000,NULL,'2019-04-20 15:38:48','2019-04-20 15:38:48'),
(45,38,133,1,120000,NULL,'2020-07-14 23:55:15','2020-07-14 23:55:15'),
(46,38,134,1,120000,NULL,'2020-07-14 23:55:15','2020-07-14 23:55:15'),
(47,39,133,1,120000,NULL,'2020-09-20 18:48:25','2020-09-20 18:48:25'),
(48,39,135,1,120000,NULL,'2020-09-20 18:48:25','2020-09-20 18:48:25'),
(49,40,135,1,120000,NULL,'2021-07-03 16:19:07','2021-07-03 16:19:07'),
(50,41,136,3,120000,NULL,'2021-07-03 16:46:29','2021-07-03 16:46:29'),
(51,41,133,1,120000,NULL,'2021-07-03 16:46:29','2021-07-03 16:46:29'),
(52,41,134,1,120000,NULL,'2021-07-03 16:46:29','2021-07-03 16:46:29'),
(53,42,135,1,120000,NULL,'2021-07-10 21:42:29','2021-07-10 21:42:29'),
(54,43,135,1,120000,NULL,'2021-07-10 22:39:56','2021-07-10 22:39:56'),
(55,44,134,1,120000,NULL,'2021-07-12 20:14:25','2021-07-12 20:14:25'),
(56,44,136,1,120000,NULL,'2021-07-12 20:14:25','2021-07-12 20:14:25'),
(57,45,156,1,345000,NULL,'2021-07-14 21:22:23','2021-07-14 21:22:23'),
(58,45,135,1,120000,NULL,'2021-07-14 21:22:23','2021-07-14 21:22:23'),
(59,45,133,1,120000,NULL,'2021-07-14 21:22:23','2021-07-14 21:22:23');

/*Table structure for table `bills` */

DROP TABLE IF EXISTS `bills`;

CREATE TABLE `bills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `bills_ibfk_1` (`id_customer`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `bills` */

insert  into `bills`(`id`,`id_customer`,`date_order`,`total`,`payment`,`note`,`created_at`,`updated_at`,`is_deleted`) values 
(35,40,'2019-04-20',410000,'COD','dsdsads','2021-07-11 18:14:29','2020-09-27 18:24:27',0),
(34,39,'2019-04-20',1380000,'COD','iyiyi','2021-07-12 20:50:12','2021-07-12 20:50:12',1),
(33,38,'2019-04-20',345000,'COD','sdsdsada','2021-07-12 20:50:10','2021-07-12 20:50:10',1),
(32,37,'2019-04-20',120000,'COD','sada','2021-07-12 18:31:08','2021-07-12 18:31:08',1),
(31,36,'2019-04-20',120000,'COD','Tốc độ','2021-07-12 18:31:05','2021-07-12 18:31:05',1),
(30,35,'2019-04-20',120000,'COD','Tốc độ nha','2021-07-12 18:30:53','2021-07-12 18:30:53',1),
(36,41,'2019-04-20',480000,'COD','fsdffds','2019-04-20 15:14:13','2019-04-20 15:14:13',0),
(37,42,'2019-04-20',120000,'COD','Nhanh nhất có thể','2019-04-20 15:38:48','2019-04-20 15:38:48',0),
(38,43,'2020-07-14',240000,'COD',NULL,'2020-07-14 23:55:15','2020-07-14 23:55:15',0),
(39,44,'2020-09-20',240000,'COD','as','2020-09-20 18:48:25','2020-09-20 18:48:25',0),
(40,45,'2021-07-03',120000,'COD',NULL,'2021-07-03 16:19:07','2021-07-03 16:19:07',0),
(41,46,'2021-07-03',600000,'COD',NULL,'2021-07-03 16:46:29','2021-07-03 16:46:29',0),
(42,47,'2021-07-10',120000,'COD',NULL,'2021-07-10 21:42:29','2021-07-10 21:42:29',0),
(43,48,'2021-07-10',120000,'COD',NULL,'2021-07-10 22:39:56','2021-07-10 22:39:56',0),
(44,49,'2021-07-12',240000,'COD',NULL,'2021-07-12 20:14:25','2021-07-12 20:14:25',0),
(45,50,'2021-07-14',585000,'ATM','test content abc xyz','2021-07-14 21:22:23','2021-07-14 21:22:23',0);

/*Table structure for table `contact_form` */

DROP TABLE IF EXISTS `contact_form`;

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `contact_form` */

insert  into `contact_form`(`id`,`contact_name`,`email`,`subject`,`note`,`created_at`,`updated_at`) values 
(1,'Nguyễn Thành Hậu',NULL,'123','123','2021-07-03 15:37:59','2021-07-03 15:37:59'),
(2,'Nguyễn Thành Hậu',NULL,'123','123','2021-07-03 15:38:42','2021-07-03 15:38:42'),
(3,'Nguyễn Thành Hậu',NULL,'123','123','2021-07-03 15:39:21','2021-07-03 15:39:21'),
(4,'Nguyễn Thành Hậu',NULL,'345','345','2021-07-03 15:39:38','2021-07-03 15:39:38'),
(5,'Nguyễn Thành Hậu','haunguyen0603@gmail.com','345','2345','2021-07-03 15:51:28','2021-07-03 15:51:28'),
(6,'Nguyễn Thành Hậu','haunguyen0603@gmail.com','345','123','2021-07-03 15:57:23','2021-07-03 15:57:23');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`gender`,`email`,`address`,`phone_number`,`note`,`created_at`,`updated_at`) values 
(42,'Phan Nhật Duy','nam','duyphan2398@gmail.com','2/12A Tan Thuan Tay street, District 7,Ho Chi Minh City, Viet Nam','936221326','Nhanh nhất có thể','2019-04-20 15:38:47','2019-04-20 15:38:47'),
(41,'fdsffdsff','nam','duyphan@gmail.com','fdsfdfd','dsfdsf','fsdffds','2019-04-20 15:14:13','2019-04-20 15:14:13'),
(40,'Phan','nam','duyphan2398@gmail.com','2/12A Tan Thuan Tay street, District 7,Ho Chi Minh City, Viet Nam','936221326','dsdsads','2019-04-20 15:06:22','2019-04-20 15:06:22'),
(39,'hh','nam','duyduy@gmail.com','2/12A Tan Thuan Tay street, District 7,Ho Chi Minh City, Viet Nam','936221326','iyiyi','2019-04-20 15:04:02','2019-04-20 15:04:02'),
(38,'Super Shirt','nam','sdasd2@gdfgfdgf','dsadsa','dsads','sdsdsada','2019-04-20 14:37:28','2019-04-20 14:37:28'),
(37,'Phan','nam','duyphan@gmail.com','2/12A Tan Thuan Tay street, District 7,Ho Chi Minh City, Viet Nam','936221326','sada','2019-04-20 14:25:19','2019-04-20 14:25:19'),
(36,'Phan','nam','duyphan@gmail.com','2/12A Tan Thuan Tay street, District 7,Ho Chi Minh City, Viet Nam','936221326','Tốc độ','2019-04-20 14:24:11','2019-04-20 14:24:11'),
(35,'Nhat Duy','nam','duyphan@gmail.com','2.158','0936221326','Tốc độ nha','2019-04-20 14:23:26','2019-04-20 14:23:26'),
(43,'Hau Nguyen','nam','hau.nt@cads.vn','236A/1 Le Van Sy','+84392009814',NULL,'2020-07-14 23:55:15','2020-07-14 23:55:15'),
(44,'Nguyễn Thành Hậu','nam','haunguyen0603@gmail.com','1/28 Nguyen Van Yen','0392009814','as','2020-09-20 18:48:25','2020-09-20 18:48:25'),
(45,'Thanh Hau Nguyen','nam','haunguyen0603@gmail.com','507b Huỳnh Tấn Phát, Tân Thuận Đông, Quận 7, Thành phố Hồ Chí Minh, Việt Nam','0392009814',NULL,'2021-07-03 16:19:07','2021-07-03 16:19:07'),
(46,'Thanh Hau Nguyen','nam','haunguyen0603@gmail.com','507b Huỳnh Tấn Phát, Tân Thuận Đông, Quận 7, Thành phố Hồ Chí Minh, Việt Nam','0392009814',NULL,'2021-07-03 16:46:29','2021-07-03 16:46:29'),
(47,'Nguyễn Thành Hậu','nam','haunguyen0603@gmail.com','1/28 Nguyễn Văn Yến, P. Tân Thới Hòa, Q. Tân Phú, Tp.HCM','0392009814',NULL,'2021-07-10 21:42:29','2021-07-10 21:42:29'),
(48,'Nguyễn Thành Hậu','nam','haunguyen0603@gmail.com','1/28 Nguyễn Văn Yến, P. Tân Thới Hòa, Q. Tân Phú, Tp.HCM','0392009814',NULL,'2021-07-10 22:39:56','2021-07-10 22:39:56'),
(49,'Thanh Hau Nguyen','nam','haunguyen0603@gmail.com','507b Huỳnh Tấn Phát, Tân Thuận Đông, Quận 7, Thành phố Hồ Chí Minh, Việt Nam','0392009814',NULL,'2021-07-12 20:14:25','2021-07-12 20:14:25'),
(50,'Thanh Hau Nguyen','nam','haunguyen0603@gmail.com','507b Huỳnh Tấn Phát, Tân Thuận Đông, Quận 7, Thành phố Hồ Chí Minh, Việt Nam','0392009814','test content abc xyz','2021-07-14 21:22:23','2021-07-14 21:22:23');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `is_deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `products_id_type_foreign` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`id_type`,`description`,`unit_price`,`promotion_price`,`image`,`unit`,`new`,`created_at`,`updated_at`,`active`,`is_deleted`) values 
(133,'Beauty Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555697736.jpg','cái',1,'2019-04-20 01:15:36','2020-09-27 17:42:52',1,0),
(134,'Pug Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555697765.jpg','cái',1,'2019-04-20 01:16:05','2020-09-27 18:04:41',0,0),
(135,'Anti Club Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555697785.jpg','cái',1,'2019-04-20 01:16:25','2020-09-27 18:07:47',0,0),
(136,'Dog Gangster Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555697816.jpg','cái',1,'2019-04-20 01:16:56','2019-04-20 01:16:56',1,0),
(137,'Aladin Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555697863.jpg','cái',1,'2019-04-20 01:17:43','2019-04-20 01:17:43',1,0),
(138,'Chihuahua Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555697878.jpg','cái',1,'2019-04-20 01:17:59','2019-04-20 01:17:59',1,0),
(139,'Friendly Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555697909.jpg','cái',1,'2019-04-20 01:18:29','2019-04-20 01:18:29',1,0),
(140,'MewMew Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555697933.jpg','cái',1,'2019-04-20 01:18:53','2019-04-20 01:18:53',1,0),
(141,'BingBong Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555697953.jpg','cái',1,'2019-04-20 01:19:13','2019-04-20 01:19:13',1,0),
(142,'Super Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555697972.jpg','cái',1,'2019-04-20 01:19:32','2019-04-20 01:19:32',1,0),
(143,'Mafia Dog Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555698061.jpg','cái',1,'2019-04-20 01:21:01','2019-04-20 01:21:01',1,0),
(144,'Red Girl Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555698080.jpg','cái',1,'2019-04-20 01:21:20','2019-04-20 01:21:20',1,0),
(145,'Rosé Dog Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun  là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,90000,'1555698103.jpg','cái',1,'2019-04-20 01:21:43','2019-04-20 01:21:43',1,0),
(146,'White Line Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',290000,0,'1555698364.jpg','cái',1,'2019-04-20 01:26:04','2019-04-20 01:26:04',1,0),
(147,'Gangster Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698441.jpg','cái',1,'2019-04-20 01:27:21','2019-04-20 01:27:21',1,0),
(148,'OH Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698464.jpg','cái',1,'2019-04-20 01:27:44','2019-04-20 01:27:44',1,0),
(149,'Dacula Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698479.jpg','cái',1,'2019-04-20 01:28:00','2019-04-20 01:28:00',1,0),
(150,'Girl Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698513.jpg','cái',1,'2019-04-20 01:28:33','2019-04-20 01:28:33',1,0),
(151,'Lines Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698532.jpg','cái',1,'2019-04-20 01:28:52','2019-04-20 01:28:52',1,0),
(152,'Army Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698543.jpg','cái',1,'2019-04-20 01:29:03','2019-04-20 01:29:03',1,0),
(153,'Tica Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698554.jpg','cái',1,'2019-04-20 01:29:14','2019-04-20 01:29:14',1,0),
(154,'Acama Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698585.jpg','cái',1,'2019-04-20 01:29:45','2019-04-20 01:29:45',1,0),
(155,'Man Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698607.jpg','cái',1,'2019-04-20 01:30:07','2019-04-20 01:30:07',1,0),
(156,'HiHi Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698618.jpg','cái',1,'2019-04-20 01:30:18','2019-04-20 01:30:18',1,0),
(157,'Modern Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698642.jpg','cái',1,'2019-04-20 01:30:42','2019-04-20 01:30:42',1,0),
(158,'Bat Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698659.jpg','cái',1,'2019-04-20 01:30:59','2019-04-20 01:30:59',1,0),
(159,'Last Jean',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698686.jpg','cái',1,'2019-04-20 01:31:26','2019-04-20 01:31:26',1,0),
(160,'Hlicup Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,290000,'1555698716.jpg','cái',1,'2019-04-20 01:31:56','2019-04-20 01:31:56',1,0),
(161,'Pop Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698755.jpg','cái',1,'2019-04-20 01:32:35','2019-04-20 01:32:35',1,0),
(162,'Banana Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698771.jpg','cái',1,'2019-04-20 01:32:51','2019-04-20 01:32:51',1,0),
(163,'Rách Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698784.jpg','cái',1,'2019-04-20 01:33:04','2019-04-20 01:33:04',1,0),
(164,'Brown Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698794.jpg','cái',1,'2019-04-20 01:33:14','2019-04-20 01:33:14',1,0),
(165,'Last Trousers',2,'Nhu cầu làm đẹp và mua sắm của phái mạnh ngày càng phát triển mạnh mẽ không thua gì phái nữ. Chính vì thế, các thiết kế quần nam càng lúc càng độc đáo và phong phú hơn. Mỗi một chiếc quần cho nam sẽ đem lại một phong cách khác nhau, phù hợp cho từng cá tính mỗi chàng trai hay mỗi sự kiện mà chàng tham gia. Chẳng hạn như những loại quần nam cao cấp, quần kaki dùng để phối với áo sơ mi nam, áo polo nam thanh lịch khi đến những sự kiện trang trọng hay đơn giản là đi làm. Hoặc áo phông nam để mặc cùng quần jeans nam làm nổi bật lên sự khỏe khoắn, trẻ trung và năng động của các chàng trai thành thị sành điệu và cá tính.',345000,0,'1555698814.jpg','cái',1,'2019-04-20 01:33:34','2019-04-20 01:33:34',1,0),
(166,'GoGo Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555698940.jpg','cái',1,'2019-04-20 01:35:40','2019-04-20 01:35:40',1,0),
(167,'Adidos Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555698962.jpg','cái',1,'2019-04-20 01:36:02','2019-04-20 01:36:02',1,0),
(168,'Hoodie Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555698972.jpg','cái',1,'2019-04-20 01:36:12','2019-04-20 01:36:12',1,0),
(169,'Last Shirt',1,'Áo thun là một loại trang phục kết hợp hài hòa nhiều phong cách thời trang và phối được với rất nhiều phụ kiện khác. Không giống như các loại quần áo khác, áo thun mang đến sự công bằng, bình đẳng, không phân biệt giàu nghèo, giới tính, độ tuổi….bên cạnh đó áo thun còn tạo nên sự tiện lợi, thoải mái vận động cho người mặc. Áo thun là một “item” hoàn hảo để bạn diện trong nhiều dịp khác nhau. Thông tin sản phẩm: Với thiết kế tinh tế, thời trang và phong cách, từng đường may chắc chắn tạo nên vẻ ngoài cứng cáp cho sản phẩm.',120000,0,'1555698986.jpg','cái',1,'2019-04-20 01:36:27','2019-04-20 01:36:27',1,0),
(171,'Casio',3,'123',1200000,1100000,'1601202456.jpg','cái',1,'2020-09-27 17:27:36','2020-09-27 17:27:36',1,0);

/*Table structure for table `slide` */

DROP TABLE IF EXISTS `slide`;

CREATE TABLE `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `slide` */

insert  into `slide`(`id`,`image`) values 
(1,'1.jpg'),
(2,'2.jpg'),
(3,'3.jpg'),
(4,'4.jpg');

/*Table structure for table `type_products` */

DROP TABLE IF EXISTS `type_products`;

CREATE TABLE `type_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` binary(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `type_products` */

insert  into `type_products`(`id`,`name`,`description`,`image`,`created_at`,`updated_at`,`active`) values 
(1,'Áo Unisex','Free size là gì? Free size là free: tự do, size: cỡ, free size: cỡ nào cũng được. trong thời trang ý nói quần áo có thể phù hợp với người từ béo đến gầy. Hoặc free size là những chiếc áo, chiếc quần được thiết kế có một kích cỡ hoặc co giãn dành cho tất cả mọi người.\r\n                                                              Để giúp cho những bạn có thân hình mũm mĩm thoát khỏi tình trạng đau đầu mỗi khi đứng trước tủ quần áo hoặc những khi có tiệc tùng, thời trang Free size đã ra đời nhằm mang đến cho mọi người cái nhìn mới về thời trang. Xu hướng này cũng mang đến cho những khách hàng thừa cân sự tự ti và tìm được phong cách riêng cho bản thân mình bằng những bộ trang phục lạ mắt, cá tính nhưng cũng không kém phần thời trang, bắt mắt.',NULL,'2020-09-27 17:34:26',NULL,'1'),
(2,'Quần Unisex','Free size có thể hiểu là kích thước phổ biến nhất, với freesize, mọi người đều có thể dễ dàng mặc trừ không trừ bất kì ai. Thế nên, mặc dù bạn là người có thân hình nhỏ nhắn, vừa vặn hay mũm mĩm thì thời trang  Free size  vẫn luôn là lựa chọn sáng suốt của nhiều người., Thông thường thì trang phục Free size thường có thiết kế rộng và không tuân thủ các quy chuẩn may thường thấy. Ví dụ như áo thun, bạn sẽ thấy các đường may trên cầu vai bị hạ thấp xuống phần cách tay, góp phần làm cho form áo thêm rộng ra; hay quần cũng thường có nhấn nhá thụng cá tính.',NULL,'2020-09-27 17:34:28',NULL,'1'),
(3,'Đồng hồ','Đồng hồ đeo tay thời trang',NULL,'2020-09-27 17:34:23',NULL,'1'),
(4,'Giày thể thao','giày thể thao dành cho bóng rổ, hoạt động ngoài trời',NULL,'2021-07-13 21:41:11','2021-07-13 23:04:21','1');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `admin` binary(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`full_name`,`email`,`password`,`phone`,`address`,`remember_token`,`created_at`,`updated_at`,`active`,`admin`) values 
(4,'admin','admin@gmail.com','123456',NULL,'236A/1 Le Van Sy',NULL,'2020-07-14 23:56:39','2020-09-10 23:56:39',1,'0'),
(5,'Nguyễn Thành Hậu','admin123@gmail.com','123456789','0392009814','1/28 Nguyen Van Yen',NULL,'2020-09-27 16:50:07','2020-09-27 16:50:07',1,'0'),
(7,'Nguyễn Thành Hậu','haunguyen0603@gmail.com','$2y$10$2GafNPvY.f70Mf/y7RN9EeLP6WlMUPJK4XXGJSDe0NB6JV0b14.MC','0392009814','1/28 Nguyễn Văn Yến, P. Tân Thới Hòa, Q. Tân Phú, Tp.HCM','RR7xuVW2kOSpjA0jhuFOjYMnbWYjRqUHWKR4g3XwNfzjdBZO3CgWF1VpJUnk','2021-07-10 21:03:06','2021-07-10 21:03:06',1,'1'),
(8,'Thanh Hau Nguyen','webdesign@bin.com.vn','$2y$10$8QBuERKSicrN52O.6F7JZuYbn22yXVImEbtNfX9hbYMYa6yeMmJHi','0392009814','507b Huỳnh Tấn Phát, Tân Thuận Đông, Quận 7, Thành phố Hồ Chí Minh, Việt Nam',NULL,'2021-07-11 10:06:49','2021-07-11 10:06:49',1,'0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
