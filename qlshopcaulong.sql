-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 05:12 PM
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
  `gr_id` int(11) NOT NULL,
  `email_verify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`, `phone`, `address`, `description`, `created_at`, `updated_at`, `gr_id`, `email_verify`) VALUES
(1, 'Admin', '1670251851.jpg', 'zvhshop@gmail.com', '$2y$10$lZyHngBd8iijcWdI.IElE.lhfRYCo9DH1N66Yjacy6WbTk6vxM2OC', '0938744376', '139, đường Nguyễn Đệ, Phường An Hoà, NK, CT', 'Amin', '2022-10-27 14:57:07', '2022-12-05 21:57:38', 1, '2022-10-27 14:57:07'),
(20, 'tran cong minh', '1672675250.png', 'congminh@gmail.com', '$2y$10$ioJoQg5U3NnrsOx36az3y.tnhFWII0DjxS1uyH9LcTdPX6AVaNOU6', '0189898989', '139, Nguyễn Đệ', '', '2022-12-31 12:05:32', '2023-01-09 09:43:25', 2, '2022-12-31 12:05:32'),
(22, 'tran cong minh1', '1672575877.png', 'congminh1@gmail.com', '$2y$10$zB2s/GI1XtGGO178RKmasuxA6T4EzhBBLd0QLtBzzApg6got3iI4a', '0189898989', '139, Nguyễn Đệ, An Hoà, Ninh Kiều, Cần Thơ', '', '2022-12-31 12:45:00', '2023-01-01 19:24:37', 2, '2022-12-31 12:45:00'),
(23, 'Nguyễn Văn Hào', '1672492690.jpg', 'haob1910217@student.ctu.edu.vn', '$2y$10$3vjsJAwZw6I7vYSG5IrLnuFvyBMamSQdP17P7Ud8OQw42CwarnAXC', '0938744376', '139, Nguyễn Đệ, An Hoà, Ninh Kiều, Cần Thơ', '', '2022-12-31 20:02:20', '2022-12-31 23:49:57', 2, '2022-12-31 20:02:20'),
(24, 'Huỳnh Thanh Thương', '1672628292.png', 'thuong0810@gmail.com', '$2y$10$Bze430t.eggwzF8LaM6DueGx8.KkQEPYuWP/eUBHn3ImOItWWY6Ba', '0869353760', '139 duong Nguyen De, khu vuc 5, phuong An Hoa, quan Ninh Kieu, thanh pho Can Tho', '', '2023-01-02 09:50:23', '2023-01-02 09:58:12', 2, '2023-01-02 09:50:23'),
(28, 'Nhan Chí Danh', '1673712532.png', 'danhb1910196@student.ctu.edu.vn', '$2y$10$.FzapfZQXes37.tBc/uEXuHpV5TteIYQyo21kBgeEwob7IOzwZQOW', '0945115260', '', '', '2023-01-14 22:56:38', '2023-01-14 23:09:13', 2, '2023-01-14 22:56:38');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`gr_id`) REFERENCES `groups_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
