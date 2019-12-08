-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 08, 2019 lúc 02:33 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kachi_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_22_134129_vp_user', 1),
(4, '2019_10_23_151157_vp_user', 2),
(5, '2019_10_24_155802_vp_user', 3),
(6, '2019_10_25_015418_vp_user', 4),
(7, '2019_11_20_162226_vp_categories', 5),
(8, '2019_11_29_174815_vp_products', 6),
(9, '2019_12_01_164808_vp_comment', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_categories`
--

CREATE TABLE `vp_categories` (
  `cate_id` int(10) UNSIGNED NOT NULL,
  `cate_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_categories`
--

INSERT INTO `vp_categories` (`cate_id`, `cate_name`, `cate_slug`, `created_at`, `updated_at`) VALUES
(2, 'Macbook', 'macbook', NULL, NULL),
(3, 'HP', 'hp', '2019-11-20 11:39:47', '2019-11-20 11:39:47'),
(4, 'Asus', 'asus', '2019-11-20 11:40:25', '2019-11-20 11:40:25'),
(6, 'Dell', 'dell', '2019-12-02 10:42:20', '2019-12-02 10:42:20'),
(7, 'MSI', 'msi', '2019-12-08 04:29:30', '2019-12-08 04:29:30'),
(8, 'Accessories', 'accessories', '2019-12-08 05:00:08', '2019-12-08 05:00:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_comment`
--

CREATE TABLE `vp_comment` (
  `com_id` bigint(20) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_products`
--

CREATE TABLE `vp_products` (
  `prod_id` bigint(20) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cate` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_products`
--

INSERT INTO `vp_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cate`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air 2019 Rose Gold', 'macbook-air-2019-rose-gold', 30000000, 'product_1.jpg', '12 tháng', 'sạc, sách hướng dẫn', 'Máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>Macbook Air 2018&nbsp;sở hữu vẻ ngo&agrave;i sang trọng v&agrave; mỏng nhẹ. Cấu h&igrave;nh đ&aacute;p ứng đầy đủ nhu cầu sử dụng văn ph&ograve;ng, giải tr&iacute; c&ugrave;ng thời lượng pin đủ để bạn sử dụng suốt cả ng&agrave;y d&agrave;i.</p>', 1, 2, '2019-11-29 11:51:59', '2019-12-08 04:37:55'),
(5, 'HP ENVY 13', 'hp-envy-13', 20000000, 'envy1.png', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>CPU: Intel Core i5-8265U 1.6GHz up 3.9GHz 6MB</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 13.3&quot; FHD (1920 x 1080) IPS, BrightView Micro-Edge</p>\r\n\r\n<p>RAM: 8GB LPDDR3 2133MHz (Onboard)</p>\r\n\r\n<p>Đồ họa: Intel UHD Graphics 620</p>\r\n\r\n<p>Lưu trữ: 256GB PCIe NVMe M.2 SSD</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Windows 10 Home</p>\r\n\r\n<p>Pin: 4 Cell 53WHr</p>', 1, 3, '2019-12-08 04:49:01', '2019-12-08 04:49:01'),
(6, 'Dell XPS 15', 'dell-xps-15', 50000000, 'Dell.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>&nbsp;</p>\r\n\r\n<p>CPU:</p>\r\n\r\n<p>Intel Core i7 8750H 2.2GHz, 9MB SmartCache Cache, Upto 4.1GHz</p>\r\n\r\n<p>RAM:</p>\r\n\r\n<p>32GB DDR4 2666MHz</p>\r\n\r\n<p>Ổ cứng:</p>\r\n\r\n<p>1TB SSD PCIe</p>\r\n\r\n<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n<p>15.6 Inch 4K UHD (3840 X 2160), IPS Anti-Glare UltraSharp TouchScreen</p>\r\n\r\n<p>Card m&agrave;n h&igrave;nh:&nbsp;</p>\r\n\r\n<p>Nvidia GTX 1050Ti 4GB</p>\r\n\r\n<p>Cổng giao tiếp:&nbsp;</p>\r\n\r\n<p>USB 3.0 x 2 w/Powershare SD Card reader 1 x USB 3.1 Gen 2 Type-C w/Thunderbolt 3 (4 lanes PCIe) Headset Jack HDMI 2.0 Microphones</p>\r\n\r\n<p>K&iacute;ch thước:&nbsp;</p>\r\n\r\n<p>357mm x 235mm x (11-17)mm</p>\r\n\r\n<p>Trọng lượng:&nbsp;</p>\r\n\r\n<p>2kg</p>\r\n\r\n<p>Hệ điều h&agrave;nh:&nbsp;</p>\r\n\r\n<p>Windows 10</p>', 1, 6, '2019-12-08 04:53:14', '2019-12-08 04:53:14'),
(7, 'Laptop MSI GS65', 'laptop-msi-gs65', 33000000, 'MSI.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>CPU: Intel Core i5-9300H 2.4GHz up to 4.1GHz 8MB</p>\r\n\r\n<p>RAM: 8GB DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)</p>\r\n\r\n<p>&Ocirc;̉ cứng: 512GB SSD PCIE G3X4</p>\r\n\r\n<p>Card đồ họa: NVIDIA GeForce GTX 1660Ti 6GB GDDR6</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS with Anti-Glare, 144Hz, 3ms, Thin Bezel, 100% sRGB</p>\r\n\r\n<p>Cổng giao tiếp: 3x USB 3.1, 1x Type-C (USB3.1 Gen2 / DP / Thunderbolt3), HDMI, RJ-45</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Windows 10 Home</p>\r\n\r\n<p>Pin: 4 Cell 82WHr</p>', 0, 7, '2019-12-08 04:55:31', '2019-12-08 04:58:21'),
(8, 'ASUS Zenbook UX434', 'asus-zenbook-ux434', 28000000, 'zenbook.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>CPU: Intel Core i7-10510U 1.8GHz up to 4.9GHz 8MB</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 14&quot; FHD (1920 x 1080) IPS, NanoEdge, 72% NTSC, 100% sRGB, 300nits</p>\r\n\r\n<p>RAM: 16GB LPDDR3 2133MHz (Onboard)</p>\r\n\r\n<p>Đồ họa: NVIDIA GeForce MX250 2GB GDDR5 + Intel UHD Graphics</p>\r\n\r\n<p>Lưu trữ: 512GB SSD M.2 PCIE G3X2</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Windows 10 Home</p>\r\n\r\n<p>Pin: 3 Cell 50WHr Lithium-Polymer</p>', 0, 4, '2019-12-08 04:57:40', '2019-12-08 04:57:40'),
(10, 'Bàn phím cơ không dây RK61 Blue Switch', 'ban-phim-co-khong-day-rk61-blue-switch', 750000, 'phimco.jpg', '12 tháng', 'Keycap, cáp, sách hướng dẫn', 'máy mới 100%', 'giảm 10% khi mua các phụ kiện cùng bộ', 1, '<p>Blue Switch (độ bền 50 triệu lần nhấn)</p>\r\n\r\n<p>Ph&iacute;m: ABS Double Shot</p>\r\n\r\n<p>Chip Bluetooth: Broadcom (kết nối nhanh, độ trễ thấp, tiết kiệm điện)</p>\r\n\r\n<p>M&agrave;u sắc: Trắng đ&egrave;n nền xanh/ Đen đ&egrave;n nền v&agrave;ng</p>', 0, 8, '2019-12-08 05:09:23', '2019-12-08 05:09:23'),
(11, 'Chuột Gaming A4Tech', 'chuot-gaming-a4tech', 400000, 'chuot.jpg', '12 tháng', 'sách hướng dẫn sử dụng', 'chuột mới 100%', 'giảm 10% khi mua các phụ kiện cùng bộ', 1, '<p>Sensor: AVAGO A3050 Gaming Engine</p>\r\n\r\n<p>Resolution: 500/1000/1200/1600/2000/3200 CPI</p>\r\n\r\n<p>Image Processing: 2.41M Pixels/sec</p>\r\n\r\n<p>Color: Maze</p>\r\n\r\n<p>Frame Speed: 6,666 fps</p>\r\n\r\n<p>Acceleration: 20 g</p>\r\n\r\n<p>Tracking Speed: 60 ips</p>\r\n\r\n<p>Net Weight: 140 g</p>\r\n\r\n<p>Report Rate: 125 Hz</p>\r\n\r\n<p>Key Response: 1 ms</p>\r\n\r\n<p>Button Lifetime: 10 Million Clicks</p>\r\n\r\n<p>Metal X&#39; Glide Armor Boot: 300 Kms</p>\r\n\r\n<p>System Requirements:Windows XP/Vista7/ 8/8.1/10</p>', 0, 8, '2019-12-08 05:11:51', '2019-12-08 05:34:45'),
(12, 'Macbook Pro 2019', 'macbook-pro-2019', 32000000, 'macpro.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>Intel Core i5 4 nh&acirc;n, 1.4GHz upto 3.9GHz</p>\r\n\r\n<p>RAM 8GB DDR4 2133MHz</p>\r\n\r\n<p>SSD 128GB</p>\r\n\r\n<p>Intel Iris Plus Graphics 645</p>\r\n\r\n<p>2 cổng Thunderbolt 3</p>\r\n\r\n<p>M&agrave;n h&igrave;nh Retina 13.3&quot; 2560 x 1600 pixels, True Tone</p>', 1, 2, '2019-12-08 05:15:17', '2019-12-08 05:15:17'),
(13, 'Laptop DELL Inspiron 13', 'laptop-dell-inspiron-13', 20000000, 'dell2.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>Bộ vi xử l&yacute;: Intel Core i5-8250U 1.6Ghz</p>\r\n\r\n<p>RAM: 8GB DDR4 2400MHz</p>\r\n\r\n<p>Ổ cứng: 1TB SATA3 5400rpm</p>\r\n\r\n<p>Card đồ họa: Intel UHD Graphics 620</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: Cảm ứng 13.3 inch FHD (1920 x 1080)</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Windows 10</p>\r\n\r\n<p>Pin: 3 Cells 42WHrs</p>', 0, 6, '2019-12-08 05:17:22', '2019-12-08 05:17:22'),
(14, 'HP Pavilion 15', 'hp-pavilion-15', 20000000, 'hp.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>CPU: Intel Core i7 8565U 1.8 GHz up to 4.6 GHz, 8MB</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6&quot; (1920 x 1080), kh&ocirc;ng cảm ứng</p>\r\n\r\n<p>RAM: 8GB DDR4</p>\r\n\r\n<p>Đồ họa: NVIDIA GeForce MX250 2GB GDDR5</p>\r\n\r\n<p>Lưu trữ: 1TB 5400 rpm SATA</p>\r\n\r\n<p>Hệ điều h&agrave;nh: Windows 10 Home SL 64-bit</p>\r\n\r\n<p>Pin: 3 cell 41 Wh Pin liền</p>', 1, 3, '2019-12-08 05:21:49', '2019-12-08 05:21:49'),
(15, 'Laptop Asus ROG Zephyrus S', 'laptop-asus-rog-zephyrus-s', 60000000, 'asus.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>CPU: Intel Core i7-9750H 2.6GHz up to 4.5GHz 12MB</p>\r\n\r\n<p>RAM: 16GB DDR4 2666MHz Onboard (1x SO-DIMM socket, up to 32GB SDRAM)</p>\r\n\r\n<p>&Ocirc;̉ cứng: 1TB SSD PCIE G3X4</p>\r\n\r\n<p>Card đồ họa: NVIDIA GeForce RTX 2070 8GB GDDR6</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS, 100% sRGB, 240Hz G-Sync, 3ms, 300nits, Pantone Validated, NanoEdge</p>\r\n\r\n<p>Cổng giao tiếp: 3x USB 3.1, 1x USB 3.1 Type-C with DisplayPort, HDMI, RJ-45</p>', 1, 4, '2019-12-08 05:26:07', '2019-12-08 05:26:07'),
(16, 'Laptop MSI GL65 9SDK-254VN', 'laptop-msi-gl65-9sdk-254vn', 30000000, 'msi1.jpg', '12 tháng', 'cáp sạc, sách hướng dẫn sử dụng', 'máy mới 100%', 'Cài đặt các loại phần mền theo khách yêu cầu', 1, '<p>CPU: Intel Core i7-9750H 2.6GHz up to 4.5GHz 12MB</p>\r\n\r\n<p>RAM: 8GB DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)</p>\r\n\r\n<p>&Ocirc;̉ cứng: 512GB SSD M.2 PCIE</p>\r\n\r\n<p>Card đồ họa: NVIDIA GeForce GTX 1660Ti 6GB GDDR6</p>\r\n\r\n<p>M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS-Level, 120Hz, Thin Bezel</p>\r\n\r\n<p>Cổng giao tiếp: 3x USB 3.2, 1x USB 3.2 Type-C, HDMI, Mini-DisplayPort, RJ-45</p>', 1, 7, '2019-12-08 05:32:08', '2019-12-08 05:32:08'),
(17, 'Logitech Proteus Spectrum G502', 'logitech-proteus-spectrum-g502', 1300000, 'logitech.jpg', '12 tháng', 'sách hướng dẫn sử dụng', 'chuột mới 100%', 'giảm 10% khi mua các phụ kiện cùng bộ', 1, '<p>Độ ph&acirc;n giải cao từ 200DPI l&ecirc;n tới 12.000DPI</p>\r\n\r\n<p>11 n&uacute;t lập tr&igrave;nh sẵn v&agrave; n&uacute;t cuộn (Scroll Wheel) hai chế độ</p>\r\n\r\n<p>Kết nối USB, d&acirc;y dẫn bọc lưới chống cắt</p>\r\n\r\n<p>Đ&egrave;n LED RGB 16.8 triệu m&agrave;u</p>\r\n\r\n<p>Cảm biến quang học Pixart PMW3366</p>', 1, 8, '2019-12-08 05:34:14', '2019-12-08 05:35:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_users`
--

CREATE TABLE `vp_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_users`
--

INSERT INTO `vp_users` (`id`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$e6h54HPPa0hFdrd7pLAqd.iuLOE/4Tl2KMWR6URozw56s/3U0B5Gy', 1, 'Cjfdqk4hIAgmwZWaITUjiTr4vPeqZpGih4Z2pnlt2Xjc0kLvgM2epXIzkFWM', NULL, NULL),
(2, 'admin1@gmail.com', '$2y$10$xXWeqPy7qjoae/5sp5fYq.N3JN5g3jozc.SCSYM5lEGE1xcRHaMNq', 1, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vp_categories`
--
ALTER TABLE `vp_categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `vp_comment_com_product_foreign` (`com_product`);

--
-- Chỉ mục cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `vp_products_prod_cate_foreign` (`prod_cate`);

--
-- Chỉ mục cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vp_categories`
--
ALTER TABLE `vp_categories`
  MODIFY `cate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  MODIFY `com_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  MODIFY `prod_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `vp_comment`
--
ALTER TABLE `vp_comment`
  ADD CONSTRAINT `vp_comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `vp_products` (`prod_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `vp_products`
--
ALTER TABLE `vp_products`
  ADD CONSTRAINT `vp_products_prod_cate_foreign` FOREIGN KEY (`prod_cate`) REFERENCES `vp_categories` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
