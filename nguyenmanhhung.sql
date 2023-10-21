-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 10:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nguyenmanhhung`
--

-- --------------------------------------------------------

--
-- Table structure for table `0438_banner`
--

CREATE TABLE `0438_banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `position` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0438_brand`
--

CREATE TABLE `0438_brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0438_brand`
--

INSERT INTO `0438_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'chanel', 'lạ', 'lạ.png', 1, 'nổi tiếng', '2023-10-15 02:44:26', 1, '2023-10-15 02:44:26', NULL, 1),
(3, 'Xxđf', 'ytuyk', NULL, 1, 'jytjm', '2023-10-15 03:58:28', 1, '2023-10-16 09:16:45', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `0438_category`
--

CREATE TABLE `0438_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `image` varchar(1000) DEFAULT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0438_category`
--

INSERT INTO `0438_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `level`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'quần tây', 'đẹp', 0, 1, 'đẹp.png', 1, 'chất liệu vải cotton', '2023-10-15 02:37:41', 1, '2023-10-15 02:37:42', NULL, 1),
(2, 'àewfF', 'FASFgfj', 0, 1, NULL, 1, 'djdj', '2023-10-15 03:58:05', 1, '2023-10-15 03:58:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0438_contact`
--

CREATE TABLE `0438_contact` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` int(11) NOT NULL,
  `replay_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0438_menu`
--

CREATE TABLE `0438_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(100) NOT NULL,
  `table_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0438_order`
--

CREATE TABLE `0438_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deliveryname` varchar(255) DEFAULT NULL,
  `deliveryphone` varchar(255) DEFAULT NULL,
  `deliveryemail` varchar(255) DEFAULT NULL,
  `deliveryaddress` varchar(255) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0438_orderdetail`
--

CREATE TABLE `0438_orderdetail` (
  `id` int(11) NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0438_post`
--

CREATE TABLE `0438_post` (
  `id` int(11) NOT NULL,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'post',
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `0438_product`
--

CREATE TABLE `0438_product` (
  `id` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `price_sale` float NOT NULL,
  `image` varchar(1000) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `detail` mediumtext NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0438_product`
--

INSERT INTO `0438_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `price_sale`, `image`, `qty`, `detail`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, 1, 'adds', 'sff', 10000, 0, 'sff.png', 0, 'ffefw', '', '2023-10-15 03:55:45', 1, '2023-10-15 03:55:45', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0438_topic`
--

CREATE TABLE `0438_topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0438_topic`
--

INSERT INTO `0438_topic` (`id`, `name`, `slug`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'sgadga', 'agfdsgd', 'agdsg', '2023-10-15 03:56:26', 1, '2023-10-15 03:56:26', NULL, 1),
(2, 'âsfda', 'ádfvad', 'sadvds', '2023-10-15 03:56:40', 1, '2023-10-15 03:56:40', NULL, 1),
(3, 'csđ', 'jytk', 'krk', '2023-10-15 03:58:50', 1, '2023-10-15 03:58:51', NULL, 1),
(4, '', '', '', '2023-10-15 03:58:52', 1, '2023-10-15 03:58:52', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0438_user`
--

CREATE TABLE `0438_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `roles` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0438_user`
--

INSERT INTO `0438_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `address`, `image`, `roles`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Nguyễn Mạnh Hùng', 'nguyenmanhhung176472@gmail.com', '0961804507', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'biên hoà', 'hinh anh.jpg', 1, '2023-10-15 10:55:39', 1, NULL, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0438_banner`
--
ALTER TABLE `0438_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_brand`
--
ALTER TABLE `0438_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_category`
--
ALTER TABLE `0438_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_contact`
--
ALTER TABLE `0438_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_menu`
--
ALTER TABLE `0438_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_order`
--
ALTER TABLE `0438_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_orderdetail`
--
ALTER TABLE `0438_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_post`
--
ALTER TABLE `0438_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_product`
--
ALTER TABLE `0438_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_topic`
--
ALTER TABLE `0438_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `0438_user`
--
ALTER TABLE `0438_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `0438_banner`
--
ALTER TABLE `0438_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0438_brand`
--
ALTER TABLE `0438_brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `0438_category`
--
ALTER TABLE `0438_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `0438_contact`
--
ALTER TABLE `0438_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0438_menu`
--
ALTER TABLE `0438_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0438_order`
--
ALTER TABLE `0438_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0438_orderdetail`
--
ALTER TABLE `0438_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0438_post`
--
ALTER TABLE `0438_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `0438_product`
--
ALTER TABLE `0438_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `0438_topic`
--
ALTER TABLE `0438_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `0438_user`
--
ALTER TABLE `0438_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
