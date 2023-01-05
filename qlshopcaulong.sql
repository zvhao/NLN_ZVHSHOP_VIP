-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 07:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlshopcaulong`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `note` text DEFAULT NULL,
  `total` float NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0' COMMENT '0: Chờ xác nhận, 1: đang vận chuyển, 2: đã giao hàng',
  `method` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `fullname`, `tel`, `email`, `address`, `note`, `total`, `status`, `method`, `user_id`, `created_at`, `updated_at`) VALUES
(106, 'tran cong minh', '0189898989', 'congminh@gmail.com', '139, Nguyễn Đệ', '', 29498000, '2', 'payment-cod', 20, '2022-12-31 18:11:17', '0000-00-00 00:00:00'),
(107, 'Nguyễn Văn Hào', '0989898989', 'hao@gmail.com', '1 test', '', 6392000, '0', 'payment-cod', 0, '2022-12-31 18:13:21', NULL),
(108, 'nguyenvanhao', '0989898989', 'hao@gmail.com', '1', 'vn', 4450000, '0', 'Vn_pay', 0, '2022-12-31 18:14:50', NULL),
(134, 'tran cong minh', '0189898989', 'congminh@gmail.com', '139, Nguyễn Đệ', '', 29498000, '0', 'Vn_pay', 20, '2022-12-31 18:25:46', NULL),
(135, 'nguyenvanhao', '0989898989', 'danh@gmail.com', '12, 3/2', '', 3899000, '0', 'Vn_pay', 0, '2022-12-31 20:23:08', NULL),
(136, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', '', 2787000, '0', 'payment-bank', 23, '2022-12-31 20:31:10', NULL),
(137, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '12, 3/2', '', 5887000, '0', 'payment-cod', 23, '2022-12-31 20:56:21', NULL),
(138, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '12, 3/2', '', 5887000, '0', 'payment-cod', 23, '2022-12-31 20:57:53', NULL),
(139, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', '', 70807000, '0', 'payment-bank', 23, '2022-12-31 22:35:06', NULL),
(140, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', '', 70807000, '0', 'payment-cod', 23, '2022-12-31 22:37:34', NULL),
(141, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', '', 70807000, '0', 'payment-cod', 23, '2022-12-31 22:46:24', NULL),
(142, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', '', 16910000, '0', 'payment-cod', 23, '2022-12-31 22:50:23', NULL),
(143, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', '', 799000, '0', 'payment-cod', 23, '2022-12-31 22:51:40', NULL),
(144, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', '', 3490000, '0', 'payment-cod', 23, '2022-12-31 23:03:24', NULL),
(145, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ', 'Toi se chuyen khoan', 13000000, '0', 'payment-bank', 23, '2022-12-31 23:46:07', NULL),
(146, 'tran cong minh1', '0189898989', 'congminh1@gmail.com', '12, 3/2', '', 3899000, '0', 'payment-bank', 22, '2023-01-01 19:14:10', NULL),
(147, 'tran cong minh', '0189898989', 'congminh@gmail.com', '139 nguyen de', '', 620000, '0', 'payment-cod', 20, '2023-01-01 22:40:35', NULL),
(148, 'tran cong minh1', '0189898989', 'congminh1@gmail.com', '139 nguyen de', '', 6780000, '0', 'Vn_pay', 22, '2023-01-01 23:04:53', NULL),
(149, 'Nguyễn Văn Hào', '0938744376', 'haob1910217@student.ctu.edu.vn', '139, Nguyễn Đệ, An Hoà, Ninh Kiều, Cần Thơ', '', 540000, '0', 'Vn_pay', 23, '2023-01-02 09:42:01', NULL),
(150, 'Huỳnh Thanh Thương', '0939410692', 'thuong0810@gmail.com', '139 duong Nguyen De, khu vuc 5, phuong An Hoa, quan Ninh Kieu, thanh pho Can Tho', '', 9290000, '0', 'Vn_pay', 24, '2023-01-02 09:52:44', NULL),
(151, 'Huỳnh Thanh Thương', '0869353760', 'thuong0810@gmail.com', '139 duong Nguyen De, khu vuc 5, phuong An Hoa, quan Ninh Kieu, thanh pho Can Tho', '', 3869000, '0', 'Vn_pay', 24, '2023-01-02 09:58:59', NULL),
(153, 'tran cong minh', '0189898989', 'congminh@gmail.com', '139 nguyen de', '', 799000, '0', 'payment-cod', 20, '2023-01-03 10:44:54', NULL),
(154, 'tran cong minh', '0189898989', 'congminh@gmail.com', '139 nguyen de', '', 4340000, '0', 'payment-cod', 20, '2023-01-03 10:55:19', NULL),
(155, 'tran cong minh', '0189898989', 'congminh@gmail.com', '139, Nguyễn Đệ', '', 14330000, '0', 'payment-bank', 20, '2023-01-04 12:20:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `num_order` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `num_order`, `total`, `created_at`) VALUES
(2, 20, 12, 37200000, '2022-12-31 12:05:32'),
(4, 22, 0, 0, '2022-12-31 12:45:00'),
(5, 23, 0, 0, '2022-12-31 20:02:20'),
(6, 24, 1, 0, '2023-01-02 09:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vợt Cầu Lông', '2022-10-22 14:41:26', '2022-10-22 14:43:05'),
(2, 'Giày Cầu Lông', '2022-10-22 14:43:33', NULL),
(3, 'Phụ Kiện Cầu Lông', '2022-10-22 14:49:39', '2022-10-22 14:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `id_user`, `id_pro`, `comment`, `rating`, `created_at`) VALUES
(1, 23, 37, 'Sản phẩm đúng với mô tả, đáng mua', 5, '2023-01-01 17:01:40'),
(14, 23, 36, 'hơi mắc', 4, '2023-01-01 22:53:44'),
(16, 22, 36, 'giao hang lau', 4, '2023-01-01 23:01:38'),
(17, 22, 25, 'giao hang qua lau', 4, '2023-01-01 23:07:24'),
(26, 23, 35, 'ok', 4, '2023-01-02 09:00:22'),
(77, 24, 36, '4 sao thôi nha', 4, '2023-01-02 16:58:02'),
(84, 24, 37, 'sản phẩm 4sao', 5, '2023-01-02 22:40:39'),
(113, 20, 37, 'asd', 5, '2023-01-05 00:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `responded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `content`, `responded`, `created_at`) VALUES
(1, 'Admin', '0938744376', 'zvhshop@gmail.com', 'Tôi ở Hà Nội thì khoảng bao nhiêu ngày có hàng vậy SHOP?', 0, '2022-12-29 23:12:38'),
(2, 'Admin', '0938744376', 'zvhshop@gmail.com', 'Bạn OK không?', 0, '2022-12-29 23:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `detail_bill`
--

CREATE TABLE `detail_bill` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `sub_total` float NOT NULL,
  `image` text NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_bill`
--

INSERT INTO `detail_bill` (`id`, `id_bill`, `id_pro`, `qty`, `price`, `sub_total`, `image`, `name_pro`, `created_at`, `updated_at`) VALUES
(87, 106, 35, 2, 799000, 1598000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 18:11:17', NULL),
(88, 106, 36, 9, 3100000, 27900000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 18:11:17', NULL),
(89, 107, 35, 4, 799000, 3196000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 18:13:21', NULL),
(90, 107, 34, 4, 799000, 3196000, '1667528870298238714.png', 'Vợt Cầu Lông Yonex Nanoray Light 11i', '2022-12-31 18:13:21', NULL),
(91, 108, 37, 1, 4450000, 4450000, '16675303581424640371.jpg', 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '2022-12-31 18:14:50', NULL),
(92, 134, 35, 2, 799000, 1598000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 18:25:46', NULL),
(93, 134, 36, 9, 3100000, 27900000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 18:25:46', NULL),
(94, 135, 36, 1, 3100000, 3100000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 20:23:08', NULL),
(95, 135, 34, 1, 799000, 799000, '1667528870298238714.png', 'Vợt Cầu Lông Yonex Nanoray Light 11i', '2022-12-31 20:23:08', NULL),
(96, 136, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2022-12-31 20:31:10', NULL),
(97, 136, 35, 3, 799000, 2397000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 20:31:10', NULL),
(98, 137, 36, 1, 3100000, 3100000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 20:56:21', NULL),
(99, 137, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2022-12-31 20:56:21', NULL),
(100, 137, 35, 3, 799000, 2397000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 20:56:21', NULL),
(101, 138, 36, 1, 3100000, 3100000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 20:57:53', NULL),
(102, 138, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2022-12-31 20:57:53', NULL),
(103, 138, 35, 3, 799000, 2397000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 20:57:53', NULL),
(104, 139, 31, 11, 3720000, 40920000, '16666333261910135561.jpg', 'Vợt Cầu Lông Yonex Astrox 77 Pro', '2022-12-31 22:35:06', NULL),
(105, 139, 37, 4, 4450000, 17800000, '16675303581424640371.jpg', 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '2022-12-31 22:35:06', NULL),
(106, 139, 36, 3, 3100000, 9300000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 22:35:06', NULL),
(107, 139, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2022-12-31 22:35:06', NULL),
(108, 139, 35, 3, 799000, 2397000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 22:35:06', NULL),
(109, 140, 31, 11, 3720000, 40920000, '16666333261910135561.jpg', 'Vợt Cầu Lông Yonex Astrox 77 Pro', '2022-12-31 22:37:34', NULL),
(110, 140, 37, 4, 4450000, 17800000, '16675303581424640371.jpg', 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '2022-12-31 22:37:34', NULL),
(111, 140, 36, 3, 3100000, 9300000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 22:37:34', NULL),
(112, 140, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2022-12-31 22:37:34', NULL),
(113, 140, 35, 3, 799000, 2397000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 22:37:34', NULL),
(114, 141, 31, 11, 3720000, 40920000, '16666333261910135561.jpg', 'Vợt Cầu Lông Yonex Astrox 77 Pro', '2022-12-31 22:46:24', NULL),
(115, 141, 37, 4, 4450000, 17800000, '16675303581424640371.jpg', 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '2022-12-31 22:46:24', NULL),
(116, 141, 36, 3, 3100000, 9300000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 22:46:24', NULL),
(117, 141, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2022-12-31 22:46:24', NULL),
(118, 141, 35, 3, 799000, 2397000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 22:46:24', NULL),
(119, 142, 29, 1, 3560000, 3560000, '16666039961788879204.jpg', 'Vợt Cầu Lông Yonex Nanoflare 700 (Cyan)', '2022-12-31 22:50:23', NULL),
(120, 142, 37, 3, 4450000, 13350000, '16675303581424640371.jpg', 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '2022-12-31 22:50:23', NULL),
(121, 143, 35, 1, 799000, 799000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2022-12-31 22:51:40', NULL),
(122, 144, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2022-12-31 23:03:24', NULL),
(123, 144, 36, 1, 3100000, 3100000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 23:03:24', NULL),
(124, 145, 36, 2, 3100000, 6200000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2022-12-31 23:46:07', NULL),
(125, 145, 16, 2, 3400000, 6800000, '1666502820762601655.jpg', 'Giày Cầu Lông Lining AYAR 025-2', '2022-12-31 23:46:07', NULL),
(126, 146, 35, 1, 799000, 799000, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', '2023-01-01 19:14:10', NULL),
(127, 146, 36, 1, 3100000, 3100000, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '2023-01-01 19:14:10', NULL),
(128, 147, 25, 3, 195000, 585000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2023-01-01 22:40:35', NULL),
(129, 147, 23, 1, 35000, 35000, '16665049571246149072.jpg', 'Vớ Cầu Lông Yonex Trơn Ngắn - Cam Nhạt', '2023-01-01 22:40:35', NULL),
(130, 148, 25, 4, 195000, 780000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2023-01-01 23:04:53', NULL),
(131, 148, 17, 2, 3000000, 6000000, '16665029051732404404.jpg', 'Giày Cầu Lông Yonex Comfort Z3 Wide - Trắng (Mã JP)', '2023-01-01 23:04:53', NULL),
(132, 149, 21, 1, 330000, 330000, '16665047301640308286.jpg', 'Bình Nước Lining ASPS003 (600ml)', '2023-01-02 09:42:01', NULL),
(133, 149, 24, 3, 70000, 210000, '1666505083156109799.jpg', 'Băng Chặn Mồ Hồi Kumpoo K11 - Xanh', '2023-01-02 09:42:01', NULL),
(134, 150, 25, 2, 195000, 390000, '16665051391632808073.jpg', 'Ống Cầu Lông Iwin', '2023-01-02 09:52:44', NULL),
(135, 150, 37, 2, 4450000, 8900000, '16675303581424640371.jpg', 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '2023-01-02 09:52:44', NULL),
(136, 151, 23, 2, 35000, 70000, '16665049571246149072.jpg', 'Vớ Cầu Lông Yonex Trơn Ngắn - Cam Nhạt', '2023-01-02 09:58:59', NULL),
(137, 151, 17, 1, 3000000, 3000000, '16665029051732404404.jpg', 'Giày Cầu Lông Yonex Comfort Z3 Wide - Trắng (Mã JP)', '2023-01-02 09:58:59', NULL),
(138, 151, 34, 1, 799000, 799000, '1667528870298238714.png', 'Vợt Cầu Lông Yonex Nanoray Light 11i', '2023-01-02 09:58:59', NULL),
(142, 153, 34, 1, 799000, 799000, '1667528870298238714.png', 'Vợt Cầu Lông Yonex Nanoray Light 11i', '2023-01-03 10:44:54', NULL),
(143, 154, 22, 1, 1090000, 1090000, '16665048561759322412.jpg', 'Ống Cầu Lông Yonex AS50', '2023-01-03 10:55:19', NULL),
(144, 154, 10, 1, 3250000, 3250000, '1666502027187660951.jpeg', 'Vợt Cầu Lông Victor HX AIR', '2023-01-03 10:55:19', NULL),
(145, 155, 29, 1, 3560000, 3560000, '16666039961788879204.jpg', 'Vợt Cầu Lông Yonex Nanoflare 700 (Cyan)', '2023-01-04 12:20:16', NULL),
(146, 155, 31, 1, 3720000, 3720000, '16666333261910135561.jpg', 'Vợt Cầu Lông Yonex Astrox 77 Pro', '2023-01-04 12:20:16', NULL),
(147, 155, 33, 1, 2600000, 2600000, '16668780091504408310.jpg', 'Vợt Cầu Lông Lining Axforce 50', '2023-01-04 12:20:16', NULL),
(148, 155, 37, 1, 4450000, 4450000, '16675303581424640371.jpg', 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '2023-01-04 12:20:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_cart`
--

CREATE TABLE `detail_cart` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` float NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_cart`
--

INSERT INTO `detail_cart` (`id`, `id_cart`, `id_pro`, `image`, `name`, `price`, `qty`, `sub_total`, `created_at`) VALUES
(79, 6, 35, '1667529713921198222.jpg', 'Vợt Cầu Lông Yonex NanoFlare Drive', 799000, 1, 0, '2023-01-02 22:45:47'),
(194, 2, 36, '1667530071376616849.jpeg', 'Vợt Cầu Lông Yonex Arcsaber 11 2017', 3100000, 12, 37200000, '2023-01-05 00:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `groups_user`
--

CREATE TABLE `groups_user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups_user`
--

INSERT INTO `groups_user` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-10-21 14:30:30', NULL),
(2, 'Client', '2022-10-21 14:39:30', '2022-11-02 14:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `img_product`
--

INSERT INTO `img_product` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(8, 3, '1666442356380312890.jpg', '2022-10-22 19:39:16', NULL),
(9, 3, '1666442356976865291.jpg', '2022-10-22 19:39:16', NULL),
(22, 13, '1666502462111173645.jpg', '2022-10-23 12:21:02', NULL),
(23, 13, '166650246222836234.jpg', '2022-10-23 12:21:02', NULL),
(24, 14, '16665025791477965564.jpg', '2022-10-23 12:22:59', NULL),
(25, 14, '166650257945509886.jpg', '2022-10-23 12:22:59', NULL),
(26, 14, '16665025791389109735.jpg', '2022-10-23 12:22:59', NULL),
(27, 14, '1666502579323012782.jpg', '2022-10-23 12:22:59', NULL),
(28, 15, '1666502665949559804.jpg', '2022-10-23 12:24:25', NULL),
(91, 17, '16685679571410579772.jpg', '2022-11-16 10:05:57', NULL),
(92, 2, '166860708788742588.png', '2022-11-16 20:58:07', NULL),
(93, 9, '16686099761149568195.jpg', '2022-11-16 21:46:16', NULL),
(94, 9, '16686099761265362557.jpg', '2022-11-16 21:46:16', NULL),
(95, 9, '16686099761333223047.jpg', '2022-11-16 21:46:16', NULL),
(96, 9, '1668609976109886499.jpg', '2022-11-16 21:46:16', NULL),
(97, 10, '16686525141670521884.jpg', '2022-11-17 09:35:14', NULL),
(98, 10, '16686525141699942854.jpg', '2022-11-17 09:35:14', NULL),
(99, 11, '16686526771750332460.png', '2022-11-17 09:37:57', NULL),
(100, 11, '1668652677566388597.jpg', '2022-11-17 09:37:57', NULL),
(101, 12, '16686527321825918015.jpg', '2022-11-17 09:38:52', NULL),
(102, 16, '166865287384379331.jpg', '2022-11-17 09:41:13', NULL),
(103, 16, '1668652873756768080.jpg', '2022-11-17 09:41:13', NULL),
(104, 16, '16686528731638521463.jpg', '2022-11-17 09:41:13', NULL),
(105, 29, '1668652945925397682.jpg', '2022-11-17 09:42:25', NULL),
(106, 31, '166865313463920304.jpg', '2022-11-17 09:45:34', NULL),
(107, 33, '16686531652026975812.jpg', '2022-11-17 09:46:05', NULL),
(108, 33, '16686531651845857261.jpg', '2022-11-17 09:46:05', NULL),
(109, 33, '1668653165364641534.jpg', '2022-11-17 09:46:05', NULL),
(110, 33, '1668653165391792985.jpg', '2022-11-17 09:46:05', NULL),
(111, 33, '1668653165192847769.jpg', '2022-11-17 09:46:05', NULL),
(112, 34, '1668653522514068342.png', '2022-11-17 09:52:02', NULL),
(115, 36, '16686536341349633819.jpg', '2022-11-17 09:53:54', NULL),
(116, 36, '16686536341307779331.jpg', '2022-11-17 09:53:54', NULL),
(137, 37, '1670337129665927.jpg', '2022-12-06 21:32:09', NULL),
(138, 37, '16703371291015894905.jpg', '2022-12-06 21:32:09', NULL),
(139, 37, '16703371292091758887.jpg', '2022-12-06 21:32:09', NULL),
(140, 35, '16703405071068106466.jpg', '2022-12-06 22:28:27', NULL),
(141, 35, '16703405071268917935.jpg', '2022-12-06 22:28:27', NULL),
(142, 35, '16703405071669739521.jpg', '2022-12-06 22:28:27', NULL),
(143, 35, '16703405071518719578.jpg', '2022-12-06 22:28:27', NULL),
(144, 35, '16703405071750718324.jpg', '2022-12-06 22:28:27', NULL),
(145, 35, '16703405072145465151.jpg', '2022-12-06 22:28:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `description` text DEFAULT NULL,
  `total_rating` float NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `cate_id`, `price`, `description`, `total_rating`, `created_at`, `updated_at`) VALUES
(2, 'Vợt Cầu Lông Lining Axforce 90 Xanh Dragon Max', '16664418481908365864.jpg', 1, 5200000, 'Vợt cầu lông Lining Axforce 90 Xanh Dragon Max | Chiến Binh Rồng Xanh Dũng Mãnh', 0, '2022-10-22 19:30:48', '2022-11-16 20:58:07'),
(3, 'Giày Cầu Lông Yonex Power Cushion Infinity 2 - Xanh Dương (Mã JP)', '1666442356926048014.jpg', 2, 4190000, 'Giày Cầu Lông Yonex Power Cushion Infinity 2 Xanh Dương JP - Nhất Về Mọi Mặt', 0, '2022-10-22 19:39:16', NULL),
(9, 'Vợt Cầu Lông Victor Ryuga II', '1666501052366647947.jpg', 1, 3600000, 'Vợt Victor Ryuga ll dành cho những bạn thích đập cầu mạnh, uy lực không cho đối thủ kháng cự.', 0, '2022-10-23 11:57:32', '2022-11-16 21:46:16'),
(10, 'Vợt Cầu Lông Victor HX AIR', '1666502027187660951.jpeg', 1, 3250000, 'Vợt cầu lông Victor HX AIR - Bào mòn sức bền đối thủ. ', 0, '2022-10-23 12:13:47', '2022-11-17 09:35:14'),
(11, 'Vợt Cầu Lông Lining Bladex 700', '1666502218413445256.jpg', 1, 4400000, 'Vợt cầu lông Lining Bladex 700 | Siêu Phẩm Phản Tạt, Dứt Điểm Trên Lưới Gọn Gàng ', 0, '2022-10-23 12:16:58', '2022-11-17 09:37:57'),
(12, 'Vợt Cầu Lông Yonex Astrox 99 Pro Đỏ', '16665023511889610933.jpg', 1, 4140000, 'Vợt cầu lông Yonex Astrox 99 Pro đỏ chính hãng - Mạnh Mẽ, Quyết Liệt, Tự Tin Dứt Điểm Đối Thủ', 0, '2022-10-23 12:19:11', '2022-11-17 09:38:52'),
(13, 'Giày Cầu Lông Yonex Comfort Z3 - Đen (Mã JP)', '1666502462653199476.jpg', 2, 3000000, 'Giày cầu lông Yonex Comfort Z3 -  Đen  với thiết kế hoàn toàn mới, đem tới phiên bản nâng cấp của dong Comfort Z2 . Kết hợp với nhiều công nghệ cải tiến từ nhà Yonex tạo nên nhịp nhàng cho mỗi bước chân. Đôi giày được thiết kế đầy phong cách mạnh mẽ.', 0, '2022-10-23 12:21:02', NULL),
(14, 'Giày Cầu Lông Lining Chen Long AYAS034-1', '166650257923678109.jpg', 2, 3000000, 'Thương hiệu: Lining', 0, '2022-10-23 12:22:59', NULL),
(15, 'Giày Cầu Lông Victor P9200II TTY Trắng Nội Địa', '16665026651676912011.jpg', 2, 3550000, 'P9200II thế hệ mới từ dòng Stability có thể cho phép di chuyển nhanh chóng và tấn công chính xác, cũng như mang lại sự thoải mái, ổn định và bảo vệ khi hạ cánh — một cải tiến mạnh mẽ cho phong cách chơi đa dạng và khó đoán của Tai Tzu Ying số 1 thế giới.', 0, '2022-10-23 12:24:25', NULL),
(16, 'Giày Cầu Lông Lining AYAR 025-2', '1666502820762601655.jpg', 2, 3400000, 'Giày Cầu Lông Lining AYAR025-2 Chính Hãng - Hiện Đại, Đẳng Cấp Nhất 2022', 0, '2022-10-23 12:27:00', '2022-11-17 09:41:13'),
(17, 'Giày Cầu Lông Yonex Comfort Z3 Wide - Trắng (Mã JP)', '16665029051732404404.jpg', 2, 3000000, 'Giày cầu lông Yonex Comfort Z3 - Trắng với thiết kế hoàn toàn mới, đem lại cảm giác vô cùng thoải mái. Dòng Comfort Z là sản phẩm yêu thích của VĐV Linda.', 0, '2022-10-23 12:28:25', '2022-11-16 10:05:57'),
(18, 'Quấn Lót Cán Apavi 01', '1666502992702987308.jpg', 3, 90000, 'Thương hiệu: APAVI', 0, '2022-10-23 12:29:52', NULL),
(21, 'Bình Nước Lining ASPS003 (600ml)', '16665047301640308286.jpg', 3, 330000, 'Thương hiệu: Lining', 0, '2022-10-23 12:58:50', NULL),
(22, 'Ống Cầu Lông Yonex AS50', '16665048561759322412.jpg', 3, 1090000, '', 0, '2022-10-23 13:00:56', NULL),
(23, 'Vớ Cầu Lông Yonex Trơn Ngắn - Cam Nhạt', '16665049571246149072.jpg', 3, 35000, '', 0, '2022-10-23 13:02:37', NULL),
(24, 'Băng Chặn Mồ Hồi Kumpoo K11 - Xanh', '1666505083156109799.jpg', 3, 70000, '', 0, '2022-10-23 13:04:43', NULL),
(25, 'Ống Cầu Lông Iwin', '16665051391632808073.jpg', 3, 195000, '', 4.5, '2022-10-23 13:05:39', NULL),
(29, 'Vợt Cầu Lông Yonex Nanoflare 700 (Cyan)', '16666039961788879204.jpg', 1, 3560000, '<div class=\"col-md-12\">\r\n								<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong><span style=\"font-family:arial,helvetica,sans-serif\">Vợt Cầu Lông Yonex Nanoflare 700 Xanh New - Điều Cầu Nhanh Với Độ Chính Xác Rất Cao</span></strong></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>1. Giới thiệu vợt cầu lông Yonex Nanoflare 700 Xanh 2022</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Vợt cầu lông Yonex Nanoflare 700 - Xanh New chính hãng hỗ trợ cực tốt cho lối chơi công thủ toàn diện thiên hướng nhanh, nổi trội với những pha điều cầu chính xác có tốc độ cao và được ra mắt vào cuối tháng 1 năm 2022.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Cây vợt Yonex Nanoflare 700 - Xanh New chính hãng với sự cải tiến vượt bậc ở cấu trúc vành khung vợt giúp tăng cường khả năng hồi phục và giảm áp lực ở tay cho người chơi có thể vung vợt nhanh liên tục.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Kể từ khi ra mắt vào năm 2019 cho đến hiện tại, Nanoflare 700 là một trong những cây vợt được các vận động viên sử dụng nhiều và thành công nhất của Yonex . Ưu điểm của Yonex Nanoflare 700 là thiên về lối đánh nhanh, mạnh và có độ chính xác cao nên đến với phiên bản mới năm 2022, đội ngũ kĩ thuật của Yonex đã nghiên cứu và tích hợp thêm khả năng hồi phục lực sau mỗi cú đánh giúp người chơi duy trì liên tục và phát huy hết khả năng của mình trong suốt quá trình thi đấu.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Đến với siêu phẩm <em>vợt cầu lông Yonex Nanoflare 700 Xanh New 2022</em>, vẫn với nước sơn nhám trên tổng thể nhưng đã thay vào đó bằng tông màu xanh lam và được phối thêm các chi tiết sọc xanh lục tạo điểm nhấn siêu nổi bật. Hứa hẹn với phiên bản màu Xanh mới này sẽ tăng cường thêm sự điềm tĩnh và cho các lông thủ thi đấu ổn định hơn trên sân.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Bên cạnh đó các công nghệ đặc trưng của dòng Nanoflare như: Carbon Torayca M40X, Sonic Flare System vẫn sẽ được trang bị trên vợt với cấu trúc giống như bản cũ và siêu phẩm tiếp tục được phát hành với trọng lượng 4U và 5U.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Hiện cây vợt Yonex Nanoflare 700 Xanh 2022 đang được khá nhiều các vận động viên top đầu thế giới sử dụng đấy nhé!</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"Vợt cầu lông Yonex Nanoflare 700 - Xanh Mới chính hãng\" src=\"https://shopvnb.com/uploads/gallery/vot-cau-long-yonex-nanoflare-700-xanh-new-chinh-hang.jpg\" style=\"height:900px; width:900px\"></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"507\" src=\"//www.youtube.com/embed/4Q-K1VhY5ac\" width=\"900\"></iframe></span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>2. Thông số vợt cầu lông Yonex Nanoflare 700 - Xanh New chính hãng</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Điểm cân bằng: Khoảng 290mm (Cân bằng)</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Độ cứng: Trung bình cứng</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Màu sắc: Cyan/ Xanh Lam phối Đen và Xanh Lục</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Vật liệu khung: HM Graphite + M40X + SUPER HMG</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Vật liệu trục: HM Graphite</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Khớp chữ T: New Built-in T-Joint</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Trọng lượng/ Chu vi cán vợt: 4U (Ave.83g)/G5</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">                                                5U (Ave.78g)/G5.6</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Chiều dài tổng thể: 675mm.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Chiều dài cán vợt: 200mm.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Mức căng dây 4U: 19 - 27 lbs (Tối đa 12kg)</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">                          5U: 20 - 28 lbs (Tối đa 12.5kg)</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- <u>Vợt cầu lông Yonex Nanoflare 700 - Xanh New chính hãng 2022</u> được sản xuất tại Nhật Bản.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"></span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>3. Công nghệ tích hợp trên vợt cầu lông Yonex Nanoflare 700 Xanh Mới 2022</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- NEW AERO FRAME: Cấu trúc vành khung vợt mới tăng diện tích rãnh của mặt cắt lên 11,2% so với khung Aero thường cho khả năng phục hồi lực khi chạm cầu giúp giảm áp lực cho đôi tay, duy trì liên tục lối chơi nhanh, mạnh và chính xác.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"NEW AERO FRAME\" src=\"https://shopvnb.com/uploads/images/new-aero-frame.jpg\" style=\"height:846px; width:900px\"></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- SONIC FLARE SYSTEM: Carbon đàn hồi cao HM Graphite được tích hợp ở đầu khung giúp tăng cường lực đẩy và cải thiện tốc độ vung nhanh của đầu vợt. Trong khi phía nửa dưới khung được trang bị Carbon thế hệ mới Torayca M40X có độ đàn hồi cao giúp cải thiện độ ổn định đồng thời giảm trọng lượng của bề mặt khung cây vợt cầu lông Yonex Nanoflare 700 - Xanh New chính hãng.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"SONIC FLARE SYSTEM\" src=\"https://shopvnb.com/uploads/images/sonic-flare-system.jpg\" style=\"height:423px; width:900px\"></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- TORAYCA M40X: Một loại sợi carbon có độ đàn hồi cao, bền nhẹ và chắc được phát triển bởi Toray Industries, Inc.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"TORAYCA M40X\" src=\"https://shopvnb.com/uploads/images/torayca-m40x.jpg\" style=\"height:722px; width:900px\"></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Bên cạnh đó các công nghệ tiêu chuẩn của thương hiệu Yonex như: ISOMETRIC - NEW GROMMET PATTERN - SOLID FEEL CORE - NEW BUILT-IN T-JOINT - SUPER SLIM SHAFT - CONTROL SUPPORT CAP đều được trang bị trên siêu phẩm vợt cầu lông Yonex Nanoflare 700 New Xanh đảm bảo mang đến những trải nghiệm tốt nhất trên sân đấu cho các lông thủ đấy nhé!</span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:20px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>4. Đối tượng phù hợp</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Vợt cầu lông Yonex Nanoflare 700 - Xanh New chính hãng phù hợp với những bạn yêu thích lối chơi Nhanh thiên về Công Thủ Toàn Diện nổi trội với những đường cầu có độ chính xác rất cao.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Phù hợp sử dụng trong cả Đánh Đơn và Đánh Đôi</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Với phiên bản 5U sẽ khá nhẹ và hơi nặng đầu thiên về cho Phái Nữ có trình độ trung bình trở lên với vị trí trên lưới trong Đánh Đôi đảm bảo sẽ cho những pha chụp cầu rất nhanh. Riêng phiên bản 4U sẽ nặng hơn và có thiên hướng cân bằng nên sẽ phù hợp hơn khi dùng trong Đánh Đơn nổi trội với những pha điều cầu bền bỉ chính xác.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Tổng kết lại trong dịp đầu năm mới 2022, nếu lông thủ nào đang muốn trải nghiệm và tìm mua cho mình một sản phẩm vợt cao cấp thiên về lối chơi Tấn Công Nhanh, Điều Cầu Bền Bỉ, Chính Xác và đặc biệt là phải vừa được ra mắt thì đảm bảo siêu phẩm vợt cầu lông Yonex Nanoflare 700 New Xanh 2022 chính hãng chắc chắn là sự lựa chọn tốt nhất.</span></span></p>\r\n								</div>', 0, '2022-10-24 16:33:16', '2022-11-17 09:42:25'),
(31, 'Vợt Cầu Lông Yonex Astrox 77 Pro', '16666333261910135561.jpg', 1, 3720000, '', 0, '2022-10-25 00:42:06', '2022-11-17 09:45:34'),
(33, 'Vợt Cầu Lông Lining Axforce 50', '16668780091504408310.jpg', 1, 2600000, '<div class=\"col-md-12\">\r\n								<p style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Vợt Cầu Lông Lining Axforce 50 | Phục Vụ Đắc Lực Lối Chơi Toàn Diện</strong></span></span></p>\r\n\r\n<h2><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>1. Giới Thiệu Vợt Cầu Lông Lining Axforce 50</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">  -   \"Vợt cầu lông Lining Axforce 50 | Phục Vụ Đắc Lực Lối Chơi Toàn Diện\" vừa được hãng cho ra mắt vào tháng 8 năm 2022 tại Việt Nam với 2 phiên bản trọng lượng là 4U và 5U hướng tới người chơi cầu lông phong trào tại Việt Nam. Cây vợt thuộc phân khúc giá cận cao cấp của dòng vợt Axforce, với mức giá phải chăng nhưng lại được cảm giác trải nghiệm không khác gì một mẫu vợt cao cấp. Với phiên bản trọng lượng 5U vợt sẽ phù hợp với người chơi trung bình, trung bình khá lối chơi thiên về khả năng tấn công, bản 4U sẽ dành cho người chơi khá trở lên và cũng là lối chơi tấn công. </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Vợt được thiết kế sang trọng, thanh lịch với màu xanh làm chủ đạo đan xen cùng màu tím sẽ mang đến sự trẻ trung, bắt mắt, hiện đại. Tạo cho người dùng trải nghiệm tuyệt vời từ thẩm mĩ, chất lượng đến công năng hiệu quả vượt trội của nó.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Vợt có trọng lượng 4u vừa tay cùng điểm swing 83.5 kg không quá khó để thuần vợt, đây là cây vợt đầm đầu với điểm cân bằng 293 mm hơi đầm đầu hỗ trợ lực cho các pha cầu tấn công. Thân vợt được xây dựng với kiểu khung hộp độc đáo, giúp giảm bớt lực cản gió làm tăng tốc độ vung vợt nhanh hơn và tăng sức mạnh cho những pha đập cầu của bạn. Thêm vào đó, kết cấu vợt không quá cứng giúp bạn linh hoạt và điều cầu một các dễ dàng, chính xác.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Cây vợt cầu lông cận cao cấp này mới được ra mắt trong năm 2022 nên được hãng trang bị nhiều công nghệ tiên tiến nhất, có thể kể đến như: AXFORCE TECLONOGY, BOX WING FRAME, TB-NANO, SOFT FLEXIBLE SHAFT…</span></span></p>\r\n\r\n<h2> <span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>2. Thông Số Vợt Cầu Lông Lining Axforce 50</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Thương hiệu: Lining.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -  Chiều dài cán vợt: 200mm.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Chiều dài tổng thể: 675 mm.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Điểm cân bằng: 298mm.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Độ cứng: Hơi dẻo.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Trọng lượng/ Chu vi cán vợt: 4U-G5, 5U – G6.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Vật liệu khung: Carbon thế hệ mới</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Vật liệu trục: Carbon thế hệ mới.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Sức căng: 4U – 28LBS (12.6kg), 5U-27LBS (12.2kg).</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Sản xuất: Trung Quốc.</span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/vot-cau-long-lining-axforce-50-chinh-hang.png\" style=\"height:800px; width:800px\"></h2>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/vot-cau-long-lining-axforce-50-chinh-hang-1.png\" style=\"height:800px; width:800px\"></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/vot-cau-long-lining-axforce-50-chinh-hang-2(1).png\" style=\"height:473px; width:1000px\"></p>\r\n\r\n<h2><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>3. Công Nghệ Nổi Bật Tích Hợp Trên Vợt Cầu Lông Lining Axforce 50</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   AXFORCE TECLONOGY:</strong> Đây là công nghệ giảm chấn mật độ cao độc quyền chỉ có trên dòng vợt Axforce của hãng Lining, tăng sự đầm chắc và chống rung và triệt tiêu hết phản lực tác động ngược lại cổ tay cũng như bả vai của người sử dụng, giúp tránh khỏi những chấn thương không mong muốn.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/vot-cau-long-lining-axforce-50-chinh-hang-5.png\" style=\"height:762px; width:734px\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   UHB SHAFT: </strong>Li-Ning đã nghiên cứu cách các vận động viên tầm cỡ vô địch luyện tập và thu thập dữ liệu thực nghiệm. Kết quả là đã tạo ra một công nghệ tiên tiến giúp tối ưu hóa hiệu suất của trục. Với một điểm uốn phía trên nhiều hơn, hiệu suất smash của bạn được cải thiện.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/UHB-Shaft-2.png\" style=\"height:535px; width:757px\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> <strong>-   BOX WING FRAME: </strong>Khung vợt được thiết kế với dạng hộp giúp cấu trúc khung ổn định và và sẽ cải thiện tối đa độ chính xác khi đánh cầu.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/box-wing-frame(1).jpg\" style=\"height:314px; width:800px\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   SWING WEIGHT HEAD HEAVY: </strong>Axforce 50 được thiết kế với công nghệ Lining Swing Weight được phát mình đặc biệt cho phép vợt chuyển trực tiếp trọng lượng vợt vào các cú đánh của bạn, làm cho chúng trở nên khó chịu và khó đoán hơn</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   WING STABILIZER: </strong>Lining sử dụng công nghệ hàng không để kiểm soát việc đàn hồi khung một cách chính xác và hạn chế rung lắc. Hệ thống chống xoắn ổn định khung được cải thiện rỏ ràng để mang lại những cú đánh tiếp theo một cánh nhanh chóng, chính xác và ổn định.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/vot-cau-long-lining-axforce-50-chinh-hang-4.png\" style=\"height:775px; width:723px\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   HDF Shock Absorption: </strong>Phần khung của vợt cầu lông Lining Axforce 50 chính hãng được trang bị công nghệ mới “HDF Shock Absorption System – Hệ thống hấp thụ chấn mật độ cao” giúp cải thiện tối đa hiệu suất hấp thụ xung kích của vợt trong suốt quá trình thi đấu của người chơi nhằm tạo ra những pha tấn công liên tục. </span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/HDF-Shock.png\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   ULTRA CARBON: </strong>Công nghệ này giúp gia tăng độ cứng và độ ổn định cho khung vợt bên cạnh đó còn giúp chống xoắn trục, giúp vợt đạt được độ bền cao nhất, đem lại sự chính xác hơn cho từng cú đánh.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/TB-nano-2.png\" style=\"height:770px; width:670px\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   TB-NANO: </strong>Công nghệ này cũng sử dụng vật liệu sợi Nano siêu dẫn, giúp tăng lực cho những cú đập cầu và cải thiện sự linh hoạt cũng như độ bền của vợt Lining Axforce 50.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   HDF SHOCK ABSORPTION SYSTEM:</strong> Đây là công nghệ hấp thụ chấn mật độ cao giúp cải thiện tối đa hiệu suất hấp thụ xung kích của vợt trong quá trình đánh cầu, giúp bạn có những pha tấn cầu liên lục.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   SOFT FLEXIBLE SHAFT:</strong> Với công nghệ này Axforce 50 có thể linh hoạt trong những cú đập và phòng thủ hiệu quả. Chất liệu carbon siêu mềm giúp trục được tối ưu hóa giúp tăng thời gian uốn cong và quay trở lại sẵn sàng cho những cú đánh tiếp sau. </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong> -   HOT MET: </strong>Công nghệ sử dụng vật liệu keo nóng chảy ở nhiệt độ cao, cải thiện sức mạnh cho cây vợt bên cạnh đó cũng đảm bảo sự chính xác trong từng cú đánh.</span></span></p>\r\n\r\n<h2><span style=\"font-size:18px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>4. Đối Tượng Phù Hợp</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Đây là cây vợt nhẹ dễ thuần với trọng lượng khá nhẹ, phù hợp với người chơi theo lối đánh toàn diện thiên về tấn công</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -   Vợt phù hợp với người chơi có lực cổ tay trung bình, người chơi phong trào, bán chuyên, chuyên nghiệp, phù hợp cho cả đánh đơn và đánh đôi</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Tổng kết lại, vợt cầu lông Lining Axforce 50 cực kì phù hợp cho những bạn đang tìm kiếm một cây vợt công thủ toàn diện có giá thành không quá cao nhưng lại được có được cảm giác trải nghiệm cao cấp và sang trọng.</span></span></p>\r\n								\r\n								</div>', 0, '2022-10-27 20:40:09', '2022-11-17 09:46:05'),
(34, 'Vợt Cầu Lông Yonex Nanoray Light 11i', '1667528870298238714.png', 1, 799000, '<div class=\"col-md-12\">\r\n								<h2 style=\"text-align:center\"><strong><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Vợt cầu lông Yonex Nanoray Light 11i - Dòng vợt siêu nhẹ, chịu mức căng khủng.</span></span></strong></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>1. Giới thiệu về vợt cầu lông Yonex Nanoray Light 11i.</strong></span></span><br>\r\n<span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">Vợt cầu lông Yonex Nanoray 11i dòng vợt 5U siêu nhẹ của Yonex. Với những công nghệ tiên tiến hàng đầu giúp Yonex Nanoray Light 11i  siêu nhẹ này có tốc độ vung vợt cực nhanh và kiểm soát đường cầu rất tốt. </span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">Ấn tượng đầu tiên mà Yonex Nanoray Light 11i đập vào mắt người chơi là màu vàng trắng bắt mắt với nữa khung trên được sơn một màu vàng sáng sặc sỡ. Điều này làm tăng tính thẩm mĩ cho vợt.</span></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font-size:16px\">Đây là dòng vợt được phát triển tại Nhật Bản và sản xuất tại Trung Quốc. </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Với mức chịu căng dây cao lên đến 30 LBS-tương đương 14 kg càng giúp Yonex Nanoray Light 11i kiểm soát đường cầu đi đúng mong muốn hơn, gây bất ngờ cho đối thủ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Với tất cả những gì mà Yonex đã áp dụng lên Yonex Nanoray Light 11i thì đây là một lựa chọn không thể bàn cãi cho bất kì ai yêu thích lối đánh tấn công áp đảo nhưng vẫn mong muốn vợt có khả năng phản tạt tốt. </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>2. Thông số về vợt cầu lông Yonex Nanoray  Light 11i.</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Độ dẻo: Trung bình.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Khung vợt: H.M. Full Graphite</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Thân vợt: H.M.Full Graphite</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Trọng lượng:  5U (Ave 78gr)</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Chu vi cán vợt: 5U G5</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Sức căng tối đa:  30lbs ~ 14kg</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Màu sắc: Vàng/Trắng</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Điểm cân bằng: 300mm +/-5 (Nặng đầu)</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Sản xuất: Trung Quốc</span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/pp_0007594_vot-cau-long-yonex-nanoray-light-11i_1000.jpeg\" style=\"height:1201px; width:800px\"></span></span></h2>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>3</strong>. <strong>Công nghệ áp dụng lên vợt cầu lông Yonex Nanoray 11i.</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- <strong>ISOMETRIC: </strong>Công nghệ thiết kế hình vuông giúp đảm bảo tính tương đồng về độ dài và góc của các dây dọc cũng như dây ngang, tăng tối đa điểm ngọt theo mọi hướng, khung vợt lớn hơn nên khi cầu chạm mặt vợt ở những điểm khác nhau trên mặt vợt vẫn mang lại cảm giác đánh tốt nhất.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/ISOMETRIC(2).jpg\" style=\"height:356px; width:350px\"></span></span></p>\r\n\r\n<p><br>\r\n </p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>- AERO-BOX FRAME</strong>. Mục đích của việc thiết kế mặt khung hình oval là để khi đánh vợt sẽ lướt gió cho không khí qua, <strong>BOX FRAME</strong> vát 2 bên giúp vợt cứng cáp hơn. Thiết kế giúp tăng khí động lực học, giúp chúng ta vung vợt nhanh hơn, đập cầu mạnh hơn.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/AERO-BOX-Frame(2).jpg\" style=\"height:186px; width:350px\"></span></span></p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- <strong>NEW BIULT-IN T-JOINT</strong>: Được sản xuất từ một loại nhựa nhẹ đặc biệt kết hợp với nhựa Epoxy và chất tạo bọt giúp tăng cường chất lượng và hiệu suất bằng cách tăng độ ổn định của quả cầu trên mặt vợt. Công nghệ được áp dụng ở phần chữ T của vợt giúp hỗ trợ vợt tránh xoắn vợt sau khi thực hiện cú đánh trước đó giúp vợt nhanh chóng lấy lại ổn định cho những cú đánh tiếp theo và giúp tăng kiểm soát cầu.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/NEW-Built-in-T-Joint(2).jpg\" style=\"height:228px; width:350px\"></span></span></p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>- CONTROL SUPER CAP: </strong>Nắp hỗ trợ điều khiển cung cấp bề mặt phẳng rộng hơn 88% so với một cây vợt thông thường để dễ cầm hơn, theo dõi nhanh và khả năng cơ động sắc nét nhất.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/Control-Support-Cap(3).jpg\" style=\"height:294px; width:330px\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>-Neo CS CARBON NANOTUBE</strong>: Cung cấp tính linh hoạt cao hơn, độ bền lớn và sức đẩy, <strong>Neo CS CARBON NANOTUBE</strong> mang lại hiệu suất vượt trội khi bạn cần phải bắn những cú đánh mạnh mẽ, có kiểm soát. <strong>Neo CS CARBON NANOTUBE</strong>  kết hợp cải thiện hiệu ứng giữ và cố định  được tạo ra bởi cấu trúc xếp chồng nhiều lần. <strong>Neo CS CARBON NANOTUBE</strong> được đặt ở cả hai bên của đầu vợt, cho phép khung nhanh chóng trở lại hình dạng bình thường của nó làm tăng lực đẩy.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/Neo%201.jpg\" style=\"height:330px; width:380px\"></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>- SONIC METAL:</strong> Là một hợp kim titan mới đặc biệt mạnh mẽ, nhẹ và linh hoạt mà Yonex đặt ở đầu khung. Điều này có hai lợi thế. Thứ nhất, nó mang lại cho bạn sức đẩy cao hơn, đặc biệt là trong tấn công. Thứ hai, nó tạo ra một âm thanh mạnh mẽ rõ ràng khi đánh trúng quả cầu.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Âm thanh này, kết hợp với sự gia tăng đáng kể lực đẩy, sẽ khiến đối thủ của bạn chịu áp lực ngay lập tức.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/sonic%20metal(1).jpg\" style=\"height:268px; width:360px\"></span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>4</strong>. <strong>Đối tượng phù hợp với vợt cầu lông Yonex Nanoray 11i</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Phù hợp với người chơi có lực cổ tay yếu, mói bắt đầu chơi, hoặc cho các bạn nữ.<br>\r\n- Phù hợp với người thích lối chơi tấn công thích đập cầu nhưng vẫn muốn đảm bảo khả năng phản tạt phòng thủ tốt.</span></span></p>\r\n								</div>', 0, '2022-11-04 09:27:50', '2022-11-17 09:52:02'),
(35, 'Vợt Cầu Lông Yonex NanoFlare Drive', '1667529713921198222.jpg', 1, 799000, '<div class=\"col-md-12\">\r\n								<h2 style=\"text-align:center\"><strong><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Vợt cầu lông Yonex NanoFlare Drive - Dòng vợt rẻ với chất lượng cao.</span></span></strong></h2>\r\n\r\n<h2 style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">1. Giới thiệu về vợt cầu lông Yonex NanoFlare Driv</span></span></strong><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>e.</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Nhằm đáp ứng nhu cầu ngày càng đa dạng của người chơi, Yonex vừa cho ra đời dòng vợt Yonex NanoFlare Drive thuộc phân khúc giá rẻ cùng những tính năng cơ bản của một vợt nhẹ đầu hỗ trợ tốt nhất cho người chơi</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Với nhiều sắc bắt mắt và ấn tượng, Yonex NanoFlare Drive tạo thêm nhiều lựa chọn cho  những người yêu thích những mẫu vợt có màu sắc nổi bật, \"sáng sân\"</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Vợt cầu lông Yonex NanoFlare Drive  thuộc dòng vợt nhẹ đầu, thân vợt dẻo thích hợp cho người chơi thiên về lối đánh thủ. Độ dẻo của thân vợt giúp hỗ trở tốt trong phản tạt và điều cầu, giúp lối đánh trở nên linh hoạt. </span></p>\r\n\r\n<h2 style=\"text-align:justify\"><strong><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">2. Thông số vợt cầu lông Yonex NanoFlare Drive.</span></span></strong></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-</span> Độ dẻo : Dẻo.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">- Trọng lượng :4U  </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">- Kích thước cán :  4U G5 </span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">- Mức độ căng dây tối đa : 20-28LBS  (9-12.5kg)</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">- Màu sắc: Tím, Xanh Dương, Đỏ, Vàng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">- Sản xuất: Trung Quốc.</span></p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/11.jpg\" style=\"height:1000px; width:1000px\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/12.jpg\" style=\"height:1000px; width:1000px\"></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>3. Công nghệ ấp dụng lên vợt cầu lông Yonex NanoFlare Drive.</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>ISOMETRIC: </strong>Công nghệ thiết kế hình vuông giúp đảm bảo tính tương đồng về độ dài và góc của các dây dọc cũng như dây ngang, tăng tối đa điểm ngọt theo mọi hướng, khung vợt lớn hơn nên khi cầu chạm mặt vợt ở những điểm khác nhau trên mặt vợt vẫn mang lại cảm giác đánh tốt nhất.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/ISOMETRIC(5).jpg\" style=\"height:356px; width:350px\"></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>NEW GROMMET PATTERN</strong>: Công nghệ đan dây kiểu mới. Cấu trúc lỗ grommet một lượt cung cấp nhiều lỗ hơn cho kiểu xâu chuỗi giúp tăng hiệu suất hơn so với cấu trúc lỗ thông thường, độc lập về cấu trúc xỏ dây ngang và dọc. Giúp giảm áp lực lên các ron nhựa, tránh xoắn dây và giảm ma sát cho dây, giúp bảo vệ dây vợt hơn. </span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/grommet(8).jpg\" style=\"height:420px; width:360px\"></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>-CONTROL SUPER CAP: </strong>Nắp hỗ trợ điều khiển cung cấp bề mặt phẳng rộng hơn 88% so với một cây vợt thông thường để dễ cầm hơn, theo dõi nhanh và khả năng cơ động sắc nét nhất.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/Built-in-T-Joint(3).jpg\" style=\"height:234px; width:360px\"></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>4. Đối tượng phù hợp với vợt cầu lông Yonex NanoFlare Drive.</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Phù hợp với người có lối đánh thủ, thích điều cầu, phản tạt.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Phù hợp với mọi trình độ, người mới bắt đầu chơi.</span></span></p>\r\n\r\n								\r\n								</div>', 4, '2022-11-04 09:41:53', '2022-12-06 22:28:27');
INSERT INTO `products` (`id`, `name`, `image`, `cate_id`, `price`, `description`, `total_rating`, `created_at`, `updated_at`) VALUES
(36, 'Vợt Cầu Lông Yonex Arcsaber 11 2017', '1667530071376616849.jpeg', 1, 3100000, '<div class=\"col-md-12\">\r\n								<h2 style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Vợt cầu lông Yonex ArcSaber 11.</strong></span></span></h2>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>1. Giới thiệu về vợt cầu lông Yonex ArcSaber 11.</strong><br>\r\nVợt cầu lông Yonex ArcSaber 11 được thiết kế với khung vợt Graphite làm cho vợt cân bằng, đánh linh hoạt, trên lưới hay ve cầu trái tay điều rất tốt, tốc độ đi cầu nhanh, kiểm soát tốt trong lối chơi tấn công, phòng thủ. Năm 2017 thì Yonex cho ra phiên bản mới của vợt cầu lông Yonex Arcsaber 11 với màu sắc mới và công nghệ mới. Với màu sắc nổi bật cùng nhiều công nghệ mới giúp ArcSaber 11 nhận được sự chú ý lớn từ người chơi.</span></span></h2>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>2. Thông tin chi tiết vợt cầu lông Yonex arcsaber 11.</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Độ cứng:  Cứng.<br>\r\n- Khung vợt: H.M. Graphite, Neo CS CARBON NANOTUBE, SONIC METAL.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> - Thân vợt: H.M. Graphite, Ultra PEF.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Trọng lượng:  3U (Ave.88g)<br>\r\n                         2U (Ave.93g)</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Chu vi cán vợt: 3U   G4,5<br>\r\n                           2U   G4,5</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Mức căng tối đa: 3U 19-24 lbs</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">                             2U 20-25 lbs</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Màu sắc: Đỏ phối trắng.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Sản xuất: Nhật Bản.</span></span></p>\r\n\r\n<p> </p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/pp_0008429_vot-cau-long-yonex-arcsaber-11-new-2017-sp-chinh-hang_1000.jpeg\" style=\"height:799px; width:800px\"></span></span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/ARC11_MER_1.jpg\" style=\"height:500px; width:500px\"></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/ARC11_MER_2.jpg\" style=\"height:500px; width:500px\"></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/ARC11_MER_3.jpg\" style=\"height:500px; width:500px\"></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Với phiên bản mới vợt cầu lông Yonex Arcsaber 11 sẽ có màu đỏ chủ đạo của nó đậm hơn bản cũ cho một cảm giác tràn đầy năng lượng, mạnh mẽ hơn. Những đường nhấn điểm xuyết trên bản cũ màu vàng thì trên phiên bản mới này được thay thế bằng màu xanh lục quân.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Vợt cầu lông Yonex arcsaber 11 phiên bản mới 2017 cho cảm giác dẻo hơn bản đời trước 1 chút, nhẹ đầu hơn nhưng không đáng kể (293mm mới so với 295mm của bản cũ). Vợt hơi đầm đầu (điểm cân bằng 293mm). Vợt rất nẩy, nếu như một cây vợt dẻo sẽ làm bạn tốn sức khi phông cầu nhưng thật ngạc nhiên khi Arcsaber 11 cho khả năng xử lí cầu cao sâu rất tốt. Người chơi hoàn toàn làm chủ được đường cầu của mình, điều cầu theo đúng ý.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Tốc độ ra vợt rất nhanh, cảm giác làm chủ được đường cầu, tốc độ, nhịp độ của pha đôi công là cực kì tốt.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Là một cây vợt có điểm cân bằng 293mm nhưng bù lại nó có mặt vợt cực kì rộng nên cho cảm giác khá là nặng đầu. Arcsaber 11 cho khả năng tấn công chính xác, cầu đi theo ý. Thêm vào đó là khả năng phòng thủ cũng cực rất cao đến từ vợt cầu lông Yonex Arcsaber 11 do vợt có điểm ngọt rất lớn cộng thêm thân vợt khá ngắn và độ cứng trung bình.</span></span></p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>3. Công nghệ áp dụng trên vợt cầu long Yonex Arcsaber 11.</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Đối với Arcsaber Series, Yonex đã áp dụng những công nghệ riêng cho dòng vợt này. Điểm qua những công nghệ đã được dùng trên vợt Yonex Arcsaber 11 này.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Mang đến độ mềm dẻo lớn hơn, độ bền cao, lực đánh tốt hơn với công nghệ <strong>Neo CS CARBON NANOTUBE</strong><strong>  </strong> thế hệ mới. Với công nghệ này giúp mang lại những công năng nổi trội khi người chơi cần tung ra những cú đánh uy lực và có kiểm soát. Công nghệ <strong>Neo CS CARBON NANOTUBE</strong> cũng cho phép khung vợt nhanh chóng lấy lại hình dạng ban đầu sau mỗi cú đánh đồng thời làm tăng lực đẩy cho cây vợt.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-Neo CS CARBON NANOTUBE: Cung cấp tính linh hoạt cao hơn, độ bền lớn và sức đẩy, Neo CS CARBON NANOTUBE mang lại hiệu suất vượt trội khi bạn cần phải bắn những cú đánh mạnh mẽ, có kiểm soát. Neo CS CARBON NANOTUBE  kết hợp cải thiện hiệu ứng giữ và cố định  được tạo ra bởi cấu trúc xếp chồng nhiều lần. Neo CS CARBON NANOTUBE được đặt ở cả hai bên của đầu vợt, cho phép khung nhanh chóng trở lại hình dạng bình thường của nó làm tăng lực đẩy.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>SONIC METAL</strong> là một hợp kim titan mới đặc biệt mạnh mẽ, nhẹ và linh hoạt mà Yonex đặt ở đầu khung. Điều này có hai lợi thế. Thứ nhất, nó mang lại cho bạn sức đẩy cao hơn, đặc biệt là trong tấn công. Thứ hai, nó tạo ra một âm thanh mạnh mẽ rõ ràng khi đánh trúng quả cầu.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Âm thanh này, kết hợp với sự gia tăng đáng kể lực đẩy, sẽ khiến đối thủ của bạn chịu áp lực ngay lập tức.</span></span></p>\r\n\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-Thiết kế khung vợt <strong>ISOMETRIC</strong> hình vuông giúp đảm bảo tính tương đồng về độ dài và góc của các dây dọc cũng như dây ngang, tăng tối đa điểm ngọt theo mọi hướng, khung vợt lớn hơn nên khi cầu chạm mặt vợt ở những điểm khác nhau trên mặt vợt vẫn mang lại cảm giác đánh tốt nhất.</span></span></p>\r\n\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>NEW GROMMET PATTERN</strong>: Công nghệ đan dây kiểu mới. Cấu trúc lỗ grommet một lượt cung cấp nhiều lỗ hơn cho kiểu xâu chuỗi giúp tăng hiệu suất hơn so với cấu trúc lỗ thông thường, độc lập về cấu trúc xỏ dây ngang và dọc. Giúp giảm áp lực lên các ron nhựa, tránh xoắn dây và giảm ma sát cho dây, giúp bảo vệ dây vợt hơn. </span></span></p>\r\n\r\n\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>SOLID FEEL CORE</strong>: Công nghệ được áp dụng bên trong lõi của khung, bên trong lõi có lớp xốp. Lớp xốp này có vai trò cắt giảm  những rung động có hại, mục địch chính là  giúp hấp thụ chấn, chống sốc lên tay khi tay phải chịu áp lực từ thân vợt cứng. <strong>SOLIC FEEL CORE</strong> được áp dụng trong tất cả các cây vợt được sản xuất tại Nhật Bản.</span></span></p>\r\n\r\n\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Khung vợt được thiết kể theo công nghệ <strong>AERO-BOX FRAME</strong>. Mục đích của việc thiết kế mặt khung hình oval là để khi đánh vợt sẽ lướt gió cho không khí qua, <strong>BOX FRAME</strong> vát 2 bên giúp vợt cứng cáp hơn. Thiết kế giúp tăng khí động lực học, giúp chúng ta vung vợt nhanh hơn, đập cầu mạnh hơn.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>NEW BIULT-IN T-JOINT</strong>: Được sản xuất từ một loại nhựa nhẹ đặc biệt kết hợp với nhựa Epoxy và chất tạo bọt giúp tăng cường chất lượng và hiệu suất bằng cách tăng độ ổn định của quả cầu trên mặt vợt. Công nghệ được áp dụng ở phần chữ T của vợt giúp hỗ trợ vợt tránh xoắn vợt sau khi thực hiện cú đánh trước đó giúp vợt nhanh chóng lấy lại ổn định cho những cú đánh tiếp theo và giúp tăng kiểm soát cầu.</span></span></p>\r\n\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>T-ANCHOR: </strong>Một vật liệu tổng hợp T-ANCHOR mới được sử dụng trong khớp T giúp giảm mô-men xoắn dư thừa khi cầu đánh vào trung tâm vợt.</span></span></p>\r\n\r\n\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>ULTRA PEF</strong>: Trục được chế tạo bằng cách sử dụng Ultra PEF, sợi siêu poly ethylene - đủ nhẹ để nổi trên mặt nước nhưng vẫn có thể chịu được lực rất lớn. Những đặc điểm này cho phép hấp thụ sốc tối đa. Tăng lực phát ra mỗi khi thực hiện một quả cầu. </span></span></p>\r\n\r\n\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>CONTROL SUPER CAP</strong>: Chụp mũ vợt cung cấp bề mặt phẳng rộng hơn 88% so với vợt thông thường để dễ cầm hơn, giúp người chơi cảm giác cầm linh hoạt, năng động hơn. Đặc biệt là trong những tình huống cầu nhanh.</span></span></p>\r\n\r\n\r\n<p style=\"text-align:center\"> </p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>4. Đối tượng thích hợp vợt cầu lông Yonex Arcsaber 11</strong>.</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Vợt cầu lông Yonex ArcSaber 11 phiên bản mới năm 2017 là dòng vợt  phù hợp với người chơi mong muốn có khả năng kiểm soát cầu với độ chính xác cao.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Yonex Arcsaber 11 thích hợp cả với đánh đôi và đánh đơn, nó không quá kén trong việc đánh đôi hay đơn.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Yonex Arcsaber 11 hợp với người có lối đánh công thủ toàn diện, thích điều cầu. </span></span></p>\r\n								\r\n								</div>', 4.3, '2022-11-04 09:47:51', '2022-12-06 22:35:06'),
(37, 'Vợt Cầu Lông Yonex NanoFlare 700 - Xanh', '16675303581424640371.jpg', 1, 4450000, '<div class=\"col-md-12\">\r\n								<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>Vợt cầu lông Yonex NanoFlare 700</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:16px\">1. Giới thiệu về vợt cầu lông vợt cầu lông Yonex NanoFlare 700</span></strong><br>\r\n  <span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Vợt Yonex Nanoflare 700 là một bước đột phá mới trong việc giảm trọng lượng của thân vợt và hỗ trợ người chơi đạt được những cú đánh có tốc độ nhanh hơn khi phản xạ.<br>\r\n  - Những người chơi đã có thể nhận ra một cây vợt siêu nhẹ (5U ave. 78g) cho những người chơi cần sự nhanh nhẹn, cũng có thể tạo ra tốc độ cầu rất lý tưởng. Điều này cũng dẫn đến cảm giác đánh mạnh hơn và ít tác động hơn lên cánh tay của người chơi, tạo sự thoải mái, linh hoạt hơn trog lối chơi.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>2. Thông số về vợt cầu lông vợt cầu lông Yonex NanoFlare 700</strong></span><br>\r\n <span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">- Mã SP : NF-700<br>\r\n - Độ dẻo : Trung bình<br>\r\n - Khung vợt : H.M. Graphite / M40X / SUPER HMG<br>\r\n - Thân vợt : H.M. Graphite, NANOMETRIC<br>\r\n - Trọng lượng  /Chu vi cán vợt: 4U (Ave.83g)/ G4,5,6<br>\r\n                                                   5U (Ave.78g)/G5, 6</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> -Sức căng tối đa: 5U 19-27lbs</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">                             4U 20-28lbs</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> - Màu sắc : Xanh </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"> - Sản xuất: Nhật Bản.</span></span><br>\r\n </p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/nf700blg.jpg\" style=\"height:800px; width:800px\"></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/nf700blg_2.jpg\" style=\"height:600px; width:600px\"></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://shopvnb.com/uploads/images/nf700blg_3.jpg\" style=\"height:600px; width:600px\"></p>\r\n\r\n<p style=\"text-align:center\"> </p>\r\n\r\n<h2 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>3. Công nghẹ trên vợt Yonex NanoFlare 700.</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>-TORAYCA(r) M40X</strong>: Một thế hệ nối tiếp đầy mạnh mẽ của Yonex, sợi carbon vừa giữ được sự chắc chắn vốn có nhưng vẫn đảm bảo về tính đàn hồi, được phát triển bởi Toray Industries.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>SONIC FLARE SYSTEM</strong>: Với vật liệu than chì mang tính cách mạng mới của TORAYCA(r) M40X và SUPER HMG cung cấp sức mạnh và sự ổn định tối đa cho mỗi cú đánh của người chơi.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>SUPER HMG</strong>: Vật liệu siêu đàn hồi này tạo ra sức mạnh sắc nét hơn cho tất cả các pha cầu.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-Với thiết kế khung vợt <strong>ISOMETRIC </strong>hình vuông giúp đảm bảo tính tương đồng về độ dài và góc của các dây dọc cũng như dây ngang, tăng tối đa điểm ngọt theo mọi hướng, khung vợt lớn hơn nên khi cầu chạm mặt vợt ở những điểm khác nhau trên mặt vợt vẫn mang lại cảm giác đánh tốt nhất.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>-SUPER SLIM FRAME</strong>: Khung mỏng này cung cấp tốc độ đầu lớn hơn và cảm giác chắc chắn.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>NEW GROMMET PATTERN</strong>: Cấu trúc lỗ grommet một lượt cung cấp nhiều lỗ hơn cho kiểu xâu chuỗi giúp tăng hiệu suất hơn so với cấu trúc lỗ thông thường, độc lập về cấu trúc xỏ dây ngang và dọc. Giúp giảm áp lực lên các ron nhựa, tránh xoắn dây và giảm ma sát cho dây, giúp bảo vệ dây vợt hơn. </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>SOLIC FEEL CORE</strong>: Công nghệ được áp dụng bên trong lõi của khung, bên trong lõi có lớp xốp. Lớp xốp này có vai trò cắt giảm  những rung động có hại, mục địch chính là  giúp hấp thụ chấn, chống sốc lên tay khi tay phải chịu áp lực từ thân vợt cứng. <strong>SOLIC FEEL CORE</strong> được áp dụng trong tất cả các cây vợt được sản xuất tại Nhật Bản. </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">Khung vợt được thiết kể theo công nghệ <strong>AERO-BOX FRAME</strong>. Mục đích của việc thiết kế mặt khung hình oval là để khi đánh vợt sẽ lướt gió cho không khí qua, <strong>BOX FRAME</strong> vát 2 bên giúp vợt cứng cáp hơn. Thiết kế giúp tăng khí động lực học, giúp chúng ta vung vợt nhanh hơn, đập cầu mạnh hơn.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">-<strong>NEW BIULT-IN T-JOINT</strong>: Được sản xuất từ một loại nhựa nhẹ đặc biệt kết hợp với nhựa Epoxy và chất tạo bọt giúp tăng cường chất lượng và hiệu suất bằng cách tăng độ ổn định của quả cầu trên mặt vợt. Công nghệ được áp dụng ở phần chữ T của vợt giúp hỗ trợ vợt tránh xoắn vợt sau khi thực hiện cú đánh trước đó giúp vợt nhanh chóng lấy lại ổn định cho những cú đánh tiếp theo và giúp tăng kiểm soát cầu.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>-CONTROL SUPER CAP: </strong>Nắp hỗ trợ điều khiển cung cấp bề mặt phẳng rộng hơn 88% so với một cây vợt thông thường để dễ cầm hơn, theo dõi nhanh và khả năng linh động nhất. Hỗ trợ tốt nhất cho người chơi trong những trường hợp cầu nhanh hay cầu trên lưới.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hầu hết những công nghệ tân tiến nhất của Yonex đều được áp fungj vào cây vợt Yonex NanoFlare 700, điều này giúp vợt sở hữ một sức mạnh tấn công mạnh mẽ nhưng vẫ giữ được sự linh hoạt từ trợ lực và ổn định giảm xoắn. Đây sẽ là một siêu phẩm đáng để lưu tâm tới của người chơi.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>4. Đối tượng sử dụng vợt cầu lông Yonex NanoFlare 700.</strong></span></span></p>\r\n\r\n<p> </p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:arial,helvetica,sans-serif\">  - Phù hợp với mọi trình độ.<br>\r\n  - Tốt cho những người thích đánh đơn và đôi.<br>\r\n  - NanoFlare 700 là cây vợt thân nhẹ, thân dẽo rất dễ để người chơi làm quen và phát huy hết được năng lực của mình. Vợt thích hợp với người chơi điều cầu, phản tạt.</span></span></p>\r\n								\r\n								</div>', 5, '2022-11-04 09:52:38', '2022-12-06 21:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avatar` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `gr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `phone`, `address`, `description`, `created_at`, `updated_at`, `gr_id`) VALUES
(1, 'Admin', '1670251851.jpg', 'zvhshop@gmail.com', '$2y$10$lZyHngBd8iijcWdI.IElE.lhfRYCo9DH1N66Yjacy6WbTk6vxM2OC', '0938744376', '139, đường Nguyễn Đệ, Phường An Hoà, NK, CT', 'Amin', '2022-10-27 14:57:07', '2022-12-05 21:57:38', 1),
(20, 'tran cong minh', '1672675250.png', 'congminh@gmail.com', '$2y$10$ioJoQg5U3NnrsOx36az3y.tnhFWII0DjxS1uyH9LcTdPX6AVaNOU6', '0189898989', '', '', '2022-12-31 12:05:32', '2023-01-02 23:00:50', 2),
(22, 'tran cong minh1', '1672575877.png', 'congminh1@gmail.com', '$2y$10$zB2s/GI1XtGGO178RKmasuxA6T4EzhBBLd0QLtBzzApg6got3iI4a', '0189898989', '', '', '2022-12-31 12:45:00', '2023-01-01 19:24:37', 2),
(23, 'Nguyễn Văn Hào', '1672492690.jpg', 'haob1910217@student.ctu.edu.vn', '$2y$10$0z79Hsnwa.Qp/FQNeeCt/uvs6rZNSFfS1FxSAXLzoFMrZPMQqbvh6', '0938744376', '139, Nguyễn Đệ, An Hoà, Ninh Kiều, Cần Thơ', '', '2022-12-31 20:02:20', '2022-12-31 23:49:57', 2),
(24, 'Huỳnh Thanh Thương', '1672628292.png', 'thuong0810@gmail.com', '$2y$10$Bze430t.eggwzF8LaM6DueGx8.KkQEPYuWP/eUBHn3ImOItWWY6Ba', '0869353760', '139 duong Nguyen De, khu vuc 5, phuong An Hoa, quan Ninh Kieu, thanh pho Can Tho', '', '2023-01-02 09:50:23', '2023-01-02 09:58:12', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_bill`
--
ALTER TABLE `detail_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_pro` (`id_pro`);

--
-- Indexes for table `detail_cart`
--
ALTER TABLE `detail_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_user`
--
ALTER TABLE `groups_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cate_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gr_id` (`gr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detail_bill`
--
ALTER TABLE `detail_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `detail_cart`
--
ALTER TABLE `detail_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `groups_user`
--
ALTER TABLE `groups_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_bill`
--
ALTER TABLE `detail_bill`
  ADD CONSTRAINT `detail_bill_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `detail_bill_ibfk_2` FOREIGN KEY (`id_pro`) REFERENCES `products` (`id`);

--
-- Constraints for table `img_product`
--
ALTER TABLE `img_product`
  ADD CONSTRAINT `img_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`gr_id`) REFERENCES `groups_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
