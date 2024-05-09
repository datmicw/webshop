-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 05:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30
-- UPDATE DATABASE NGÀY 09/06/2024 // NGUYEN TAN DAT

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
(7, 'For Men', 'WATCHES FOR MEN', 1, 1, '0000-00-00 00:00:00'),
(28, 'Couple', 'COUPLE', 1, 3, '0000-00-00 00:00:00');

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
(16, 13, 28, 2, 338000.00, 0),
(18, 15, 59, 1, 319000.00, 0),
(19, 15, 58, 1, 211000.00, 0),
(20, 16, 58, 1, 211000.00, 0);

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
(51, 8, 'Casio LTPV005GL', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-ltp-v005gl-9budf-nu-quartz-pin-day-da-mat-so-28-2mm\">LTP-V005GL-9BUDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;28.2 mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;7.5 mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong>&nbsp;D&acirc;y da ch&iacute;nh h&atilde;ng</p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;V&agrave;ng nhạt</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-mua-nho-3-atm\">3 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong></p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1029000.00, 200000, '7_LTP-V005GL-9BUDF.avif', '[]', 3, 0, 4, 1, 1714398222),
(50, 7, 'Casio MTP1303L', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-nam-quartz-pin-day-da-mtp-1303l-7bvdf\">MTP-1303L-7BVDF</a></p>\r\n\r\n<p><strong>Bộ sưu tập:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/bo-suu-tap/casio-mtp\">Casio MTP</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nam</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-thach-anh-la-gi-cach-hoat-dong-dong-ho-thach-anh-ra-sao.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;40mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;8mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong>&nbsp;D&acirc;y da ch&iacute;nh h&atilde;ng</p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;Trắng</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-tam-5-atm\">5 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong></p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1442000.00, 200000, 'MTP-1303L-7BVDF.avif', '[]', 2, 1, 4, 1, 1714398044),
(49, 7, 'Casio MTPV004L', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-mtp-v004l-1audf-nam-quartz-pin-day-da-mat-so-41-5mm\">MTP-V004L-1AUDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nam</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;41.5 mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;8.3 mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong>&nbsp;D&acirc;y da</p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;Đen</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-mua-nho-3-atm\">3 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong>&nbsp;Lịch ng&agrave;y</p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1800000.00, 900000, 'MTP-V004L-1AUDF-4.avif', '[]', 1, 0, 4, 1, 1714397678),
(52, 8, 'Casio LTP-V005D-4B2UDF', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-ltp-v005d-4b2udf-nu-quartz-pin-day-kim-loai\">LTP-V005D-4B2UDF</a></p>\r\n\r\n<p><strong>Bộ sưu tập:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/bo-suu-tap/casio-ltp\">Casio LTP</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>ƯĐường k&iacute;nh mặt số:</strong>&nbsp;28.2 mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;7.5 mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong></p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;Hồng</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-mua-nho-3-atm\">3 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong></p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1899000.00, 1000000, 'LTP-V005D-4B2UDF-NU.avif', '[]', 1, 0, 4, 1, 1714562308),
(53, 8, 'Casio LTP-1335D-7AVDF', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-ltp-1335d-7avdf-nu-quartz-pin-day-kim-loai\">LTP-1335D-7AVDF</a></p>\r\n\r\n<p><strong>Bộ sưu tập:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/bo-suu-tap/casio-ltp\">Casio LTP</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-thach-anh-la-gi-cach-hoat-dong-dong-ho-thach-anh-ra-sao.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;30mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;8.9 mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong></p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;Trắng</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-tam-5-atm\">5 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong>&nbsp;Lịch ng&agrave;y &ndash; Lịch thứ</p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1841000.00, 200000, 'LTP-1335D-7AVDF-NU2.avif', '[]', 0, 0, 4, 1, 1714562464),
(54, 8, 'Casio LTP-V006L-4BUDF', '<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-ltp-v006l-4budf-nu-quartz-pin-day-da-mat-so-25mm\">LTP-V006L-4BUDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\">Mineral Crystal</a>&nbsp;(K&iacute;nh cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>\r\n\r\n<p><strong>Đường k&iacute;nh mặt số:</strong>&nbsp;25 mm</p>\r\n\r\n<p><strong>Bề d&agrave;y mặt số:</strong>&nbsp;9.2 mm</p>\r\n\r\n<p><strong>Niềng:</strong></p>\r\n\r\n<p><strong>D&acirc;y đeo:</strong>&nbsp;D&acirc;y da</p>\r\n\r\n<p><strong>M&agrave;u mặt số:</strong>&nbsp;Hồng</p>\r\n\r\n<p><strong>Chống nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-mua-nho-3-atm\">3 ATM</a></p>\r\n\r\n<p><strong>Chức năng:</strong>&nbsp;Lịch ng&agrave;y &ndash; Lịch thứ</p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 1230000.00, 200000, '45_LTP-V006L-4BUDF.avif', '[]', 1, 0, 4, 1, 1714562627),
(55, 8, 'Daniel Wellington Quadro Studio DW00100522', '<p><strong>Thương Hiệu:</strong>&nbsp;Daniel Wellington</p>\r\n\r\n<p><strong>Số Hiệu Sản Phẩm:</strong>&nbsp;DW00100522</p>\r\n\r\n<p><strong>Bộ sưu tập:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/bo-suu-tap/daniel-wellington-quadro#pa_hinh-dang-mat-so=vuong\" target=\"_blank\">Daniel Wellington Quadro Studio</a></p>\r\n\r\n<p><strong>Xuất Xứ:</strong>&nbsp;Thụy Điển</p>\r\n\r\n<p><strong>Giới T&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;Mineral Crystal (K&iacute;nh Cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;Quartz (Pin)</p>\r\n\r\n<p><strong>Bảo H&agrave;nh Quốc Tế:</strong>&nbsp;2 Năm</p>\r\n\r\n<p><strong>Bảo H&agrave;nh Tại Hải Triều:</strong>&nbsp;5 Năm</p>\r\n\r\n<p><strong>Đường K&iacute;nh Mặt Số:</strong>&nbsp;22 x 22 mm</p>\r\n\r\n<p><strong>Bề D&agrave;y Mặt Số:</strong>&nbsp;6 mm</p>\r\n\r\n<p><strong>Niềng:</strong>&nbsp;Th&eacute;p Kh&ocirc;ng Gỉ</p>\r\n\r\n<p><strong>D&acirc;y Đeo:</strong>&nbsp;Th&eacute;p Kh&ocirc;ng Gỉ</p>\r\n\r\n<p><strong>M&agrave;u Mặt Số:</strong>&nbsp;Đen</p>\r\n\r\n<p><strong>Chống Nước:&nbsp;</strong>3 ATM</p>\r\n\r\n<p><strong>Chức Năng:&nbsp;</strong></p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\" target=\"_blank\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n', 5195000.00, 0, 'DW00100522.avif', '[]', 0, 0, 4, 1, 1714562719),
(58, 9, 'Rachel', '<p>Rachel &ndash; trẻ trung v&agrave; ph&aacute; c&aacute;ch với chiếc nhẫn c&oacute; chi tiết lượn s&oacute;ng. Vẻ bất đối xứng độc đ&aacute;o từ thiết kế khiến Rachel nổi bật v&agrave; kh&aacute;c biệt ở mọi g&oacute;c nh&igrave;n.</p>\r\n\r\n<p>Thời gian vận chuyển:</p>\r\n\r\n<ul>\r\n	<li>Nội th&agrave;nh H&agrave; Nội: 1-2 ng&agrave;y</li>\r\n	<li>Miền Trung: 3 &ndash; 5 ng&agrave;y</li>\r\n	<li>Miền Nam: 5 &ndash; 7 ng&agrave;y</li>\r\n</ul>\r\n', 211000.00, 0, 'j1.jpg', '[]', 1, 0, 4, 1, 1714625502),
(59, 9, 'Lina Bracelet', '<p>V&ograve;ng tay thời trang nữ Lina ch&iacute;nh h&atilde;ng mang biểu tượng h&igrave;nh tr&ograve;n đại diện cho sự to&agrave;n vẹn c&ugrave;ng thiết kế x&iacute;ch đ&ocirc;i tăng th&ecirc;m điểm nhấn, gi&uacute;p bạn g&aacute;i dễ d&agrave;ng kết hợp với nhiều bộ trang phục. Dễ d&agrave;ng th&aacute;o gỡ, thay đổi k&iacute;ch thước vừa với cổ tay.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>TH&Eacute;P KH&Ocirc;NG GỈ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u sắc</td>\r\n			<td>SILVER/ ROSEGOLD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước v&ograve;ng</td>\r\n			<td>155MM</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 319000.00, 0, 'j2.jpg', '[]', 2, 0, 4, 1, 1714625633),
(60, 7, ' IW Carnival 786G1 Automatic', '<h2>Th&ocirc;ng số kỹ thuật</h2>\r\n\r\n<table>\r\n</table>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thương hiệu</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>I&amp;W Carnival</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Quốc gia đăng k&yacute; thương hiệu</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Thụy Sỹ</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bảo h&agrave;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>L&ecirc;n đến 5 năm - Lau dầu miễn ph&iacute; trọn đời</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&atilde; sản phẩm</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>786G1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới t&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Nam</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Kiểu m&aacute;y</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Japan Seiko&nbsp;Automatic Mov&#39;t (M&aacute;y cơ tự động Seiko&nbsp;- Nhật Bản):</p>\r\n\r\n			<p>- 24&nbsp;ch&acirc;n k&iacute;nh (Jewels).</p>\r\n\r\n			<p>- Tần số dao động 21.600 vph.</p>\r\n\r\n			<p>- Khả năng trữ c&oacute;t l&ecirc;n đến hơn 40h.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đường k&iacute;nh mặt</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>42 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Độ d&agrave;y</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>12 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chất liệu vỏ</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Th&eacute;p kh&ocirc;ng gỉ 316L</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chất liệu d&acirc;y</strong></p>\r\n			</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Mặt k&iacute;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Sapphire Crystal nguy&ecirc;n khối chống xước</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Độ chịu nước</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>5 ATM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đặc điểm nổi bật</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>- Phong c&aacute;ch thiết kế Sport&nbsp;watch.</p>\r\n\r\n			<p>- Chức năng: Lịch ng&agrave;y (01-31) tại vị tr&iacute; 6&nbsp;giờ.</p>\r\n\r\n			<p>- Viền đ&iacute;nh đ&aacute;.</p>\r\n\r\n			<p>- Case back xuy&ecirc;n thấu.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Nơi sản xuất</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Trung Quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 4750000.00, 0, 'lw-canival.jpg', '[]', 1, 0, 4, 1, 1714635603);

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
(19, 'Slide_Bar3', 'anh3.jpg', 'http://localhost/webshop/iw-carnival-786g1-automatic-p60', 3, '2024-05-02 11:16:32'),
(17, 'Slide_Bar1', 'anh1.jpg', 'http://localhost/webshop/home', 1, '2024-05-01 12:46:47'),
(18, 'Slide_Bar2', 'slideanh2.jpg', 'http://localhost/webshop/home', 2, '2024-05-01 12:56:30');

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

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(15, 0, 0, 'Dat Nguyen', 'dat.micf@gmail.com', '13243', 'Thanh Khe', 'ưefg', 530000.00, '', 1714635930),
(16, 0, 14, 'Dat Nguyen', 'dat@g.com', '1', 'Thanh Khe', 's', 211000.00, '', 1715269209);

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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(14, 'Dat Nguyen', 'dat@g.com', '202cb962ac59075b964b07152d234b70', '1', 'Thanh Khe', 2024);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
