-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 11:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Nguyen Tan Dat', 'dat.micf@gmail.com', 'dfcdab57c746097e520030ab9d3c574e', 0, 1714278936);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(9, 'Accessory', 'ACCESSORY', 1, 1, '0000-00-00 00:00:00'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(8, 'For Women', 'WATCHES FOR WOMEN', 1, 1, '0000-00-00 00:00:00'),
(7, 'For Men', 'WATCHES FOR MEN', 1, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT 0,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(17, 14, 50, 1, 1242000.00, 0),
(16, 13, 28, 2, 338000.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` int(11) DEFAULT 0,
  `image_link` varchar(100) NOT NULL,
  `image_list` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0,
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT 4,
  `rate_count` int(255) NOT NULL DEFAULT 1,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(51, 8, 'Casio LTPV005GL', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-ltp-v005gl-9budf-nu-quartz-pin-day-da-mat-so-28-2mm\">LTP-V005GL-9BUDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;28.2 mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;7.5 mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong>&nbsp;D&acirc;y da ch&iacute;nh h&atilde;ng</p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;V&agrave;ng nhạt</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-mua-nho-3-atm\">3 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong></p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1029000.00, 200000, '7_LTP-V005GL-9BUDF.avif', '[]', 2, 0, 4, 1, 1714398222),
(50, 7, 'Casio MTP1303L', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-nam-quartz-pin-day-da-mtp-1303l-7bvdf\">MTP-1303L-7BVDF</a></p>\r\n\r\n<p><strong>Bộ sưu tập:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/bo-suu-tap/casio-mtp\">Casio MTP</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nam</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-thach-anh-la-gi-cach-hoat-dong-dong-ho-thach-anh-ra-sao.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;40mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;8mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong>&nbsp;D&acirc;y da ch&iacute;nh h&atilde;ng</p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;Trắng</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-tam-5-atm\">5 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong></p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1442000.00, 200000, 'MTP-1303L-7BVDF.avif', '[]', 1, 1, 4, 1, 1714398044),
(49, 7, 'Casio MTPV004L', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-mtp-v004l-1audf-nam-quartz-pin-day-da-mat-so-41-5mm\">MTP-V004L-1AUDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nam</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;41.5 mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;8.3 mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong>&nbsp;D&acirc;y da</p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;Đen</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-mua-nho-3-atm\">3 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong>&nbsp;Lịch ng&agrave;y</p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1800000.00, 900000, 'MTP-V004L-1AUDF-4.avif', '[]', 1, 0, 4, 1, 1714397678);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_link` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(8, 'watches_slide3', 'anh41.jpg', 'http://localhost/webshop/slide_bar3', 3, '2024-04-29 13:07:20'),
(7, 'watches_slide2', 'anh2.jpg', 'http://localhost/webshop/slide_bar2', 2, '2024-04-29 13:05:46'),
(6, 'watches_slide1', 'anh31.jpg', 'http://localhost/webshop/slide_bar1', 1, '2024-04-29 13:04:59');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(32) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
