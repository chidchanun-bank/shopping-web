-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 11:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ete_express_full_stack`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_28_070218_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(11, 'App\\Models\\User', 1, 'main', 'f69e71871d17418725e4088d727ca09f7c60f78b635e31ae3175cd522e37fe27', '[\"*\"]', '2023-04-28 09:48:50', NULL, '2023-04-28 09:48:47', '2023-04-28 09:48:50'),
(17, 'App\\Models\\User', 1, 'main', '654ed3f143e41ea6609c14690da3e0a9aa73480b49d3cc3556f5f29cb5c9ad65', '[\"*\"]', '2023-04-29 20:40:24', NULL, '2023-04-29 20:33:54', '2023-04-29 20:40:24'),
(20, 'App\\Models\\User', 4, 'main', '646e61bd9810d2d3565432411c584b89b59f874f8af610fdba957b8a13914116', '[\"*\"]', '2023-05-02 02:20:37', NULL, '2023-05-02 02:20:34', '2023-05-02 02:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `cost`) VALUES
(1, 'Notebook ASUS ROG Strix Scar 18 (2023) G834', '- NVIDIA® GeForce RTX™ 4080 Laptop GPU\n- Windows 11 Home\n- 13th Gen Intel® Core™ i9-13980HX\n- ROG Nebula Display\n- 18 inch, QHD+ 16:10 (2560 x 1600, WQXGA), Refresh Rate:240Hz\n- 1TB PCIe® 4.0 NVMe™ M.2 Performance SSD', 'OzNMt9SmyrGlIceP.png', '2023-03-15 12:23:19', '2023-03-15 12:23:19', 3118),
(2, 'raspberry pi 4 model b 4gb', '🌟Raspberry Pi 4 Model B RAM 4GB Products are ready to be shipped from Thailand.🌟\nRaspberry Pi vision 1.2\n1 year product warranty\nFree Getting Started Guide in English attached in the box with every order.\nLifetime expert help center\n\nเมื่อเริ่มต้นการใช้งาน ท่านต้องมี Power Supply 5V 3.0A, MicroSD card ที่ติดตั้ง Raspberry Pi OS (Raspbian) พร้อมสำหรับการใช้งาน และสายแปลง MicroHDMI to HDMI\n\nℹ️ Raspberry Pi 4 Model B  It\'s a cheap board Gen 4th of Raspberry Pi. with processing speeds up to 64-Bit quad core. Along with other developments. Ex. MicroHDMI 2 slots USB 4 slots which is USB 3.0 is 2 slots and power connector The latest standard that is USB Type C. In providing energy Ethernet speed up. Support Wireless 2.4/5GHz and Bluetooth 5.0/BLE \n🌟Feature🌟\n    1.5GHz 64-bit quad-core ARM Cortex-A72 CPU ( ARM v8, BCM2711B0)\n    On-board wireless LAN - dual-band802.11 b/g/n/ac\n    On-board Bluetooth 5.0,low-energy (BLE)\n    2x USB 3.0 ports, 2x USB 2.0 ports\n    Gigabit ethernet\n    Power-over-Ethernet (requires additional Raspberry Pi PoE HAT)\n    40-pin GPIO header\n    2× micro-HDMI ports (up to 4Kp60 supported)\n    H.265 (4Kp60 decode)\n    H.264 (1080p60 decode, 1080p30 encode)\n    OpenGL ES, 3.0 graphics\n    DSI display port, CSI camera port\n    Combined 3.5mm analog audio and composite video jack\n    Micro-SD card slot\n    2GB and 4GB models\n    USB-C power\n\n⚠️⚠️⚠️Usage of power supplies that are not purchased from our shop will void the warranty.⚠️⚠️⚠️', 'GlB4pXeNf4a9U2Yy.png', '2023-03-15 12:48:32', '2023-03-15 12:48:32', 344),
(3, 'Powerbank Blue Box Power Bank 10000 mAh / PD20 Black', 'Blue Box PD20 backup battery comes with a capacity of 10,000 mAh, beautiful design, compact size, easy to carry. can see Capacity percentage with LED display screen to meet every lifestyle to be easier to use. Strong and durable to use. Fast charging allows you to use your mobile devices without interruption.\n\n✔️ LED display screen\n✔️ Tpye-c Input / Output PD+QC 3.0\n✔️ Compact size, easy to carry', 'fOnACTLDvnDk2SH2.jpg', '2023-03-15 23:51:33', '2023-03-15 23:51:33', 30),
(4, 'Munz X3 Dietary Supplement Product Male Enhancement', 'อาหารเสริม Munz X3 ผลิตภัณฑ์เสริมอาหารเพศชาย 2 แคปซูล\n\nMUNZX3 ผลิตภัณฑ์อาหารเสริม มันซ์ สำหรับบำรุงสมรรถภาพทางเพศคุณผู้ชาย เป็นแบรนด์น้องใหม่ที่เข้าสู่ตลาดเมื่อปี 2019 แต่ด้วยคุณภาพที่ใช้แล้วเห็นผล ดีจริง และปลอดภัย ไร้ผลข้างเคียง จึงทำให้ Munz X3 กลายเป็นไอเทมใหม่ของคุณผู้ชายที่ไม่ควรพลาดที่จะลอง หรือพกไว้ติดตัวติดเตียง\n \nคุณยังจำได้ไหม? ตอนคุณอายุ 18 น้องชายปลุกเราให้ตื่นทุกเช้า แต่ในปัจจุบัน หากคุณมีความเครียด พักผ่อนน้อย นอนดึก ปาร์ตี้หนัก รักแอลกอฮอล์์ ออกกำลังกายไม่เพียงพอ พฤติกรรมเหล่านี้ล้วนก่อให้เกิดการอุดตัน และการอักเสบของหลอดเลือด เมื่อเลือดไปหล่อเลี้ยงไม่พอน้องชายของคุณก็เลยห่อเหี่ยว ไม่ฟิตปึ๋งปั๋งเหมือนตอนอายุ 18 \"Munz X3\" เป็นตัวช่วยที่จะสร้างความมั่นใจให้คุณรู้สึกราวกับอายุ 18 อีกครั้ง ออกฤทธิ์ไว ช่วยให้อึดทน อย่างปลอดภัย ไร้ผลข้างเคียง\n \nMunz X3 แตกต่างจากอาหารเสริมท่านชายทั่วไป เพราะไม่ใช่เพียงแค่ขยายหลอดเลือดเพียงชั่วคราวขณะทำกิจกรรมเท่านั้น แต่ Munz ยังเป็นยามันส์รายแรกและรายเดียวที่มีนวัตกรรม Nano Zinc (นาโนซิงค์) หรือ ซิงค์อนุภาคนาโน ที่ได้จากสารสกัดสาหร่ายทะเลน้ำลึกจากประเทศนิวซีแลนด์ Munz X3 ไร้สารสังเคราะห์เจือปน  จึงเข้าสลายการอุดตันและลดการอักเสบของผนังหลอดเลือด ช่วยเพิ่มการไหลเวียนของหลอดเลือดบริเวณอวัยะเพศ ยิ่งเลือดไปหล่อเลี้ยงมากขึ้น จึงทำให้น้องชายของคุณกลับมาเคารพธงชาติได้ทุกเช้าดังเดิม\n \nMunz อาหารเสริมมันซ์ มีทั้งหมด 2 รุ่นได้แก่ Munz และ MunzX3\n \nสูตร Munz (Munz กล่องเงิน)\nMunz อาหารเสริมมันซ์ (Munz กล่องเงิน) เป็นอาหารเสริมสูตรเพิ่มพลังชาย ที่เหนือกว่าด้วยสมุนไพร 3 ทหารเสือปลุกพลัง (ถั่งเช่าทิเบต, โสมเกาหลี, หอยนางรมฮิโรชิม่า) เกรดพรีเมี่ยม นำเข้าจากต่างประเทศด้วยปริมาณที่เข้มข้นที่สุดในท้องตลาด ปราศจากสารเคมี และตัวยาอันตราย ปลอดภัย สำหรับผู้ที่เป็นโรคหัวใจความดันและเบาหวาน ก็สามารถรับประทานได้ \nเหมาะสำหรับ: ผู้ที่มีสุขภาพที่ค่อนข้างดีอยู่แล้ว ออกกำลังกายบ้าง ไม่เครียด ไม่ดื่ม พักผ่อนเพียงพอ หรือแค่อยากเพิ่มความสุขกับคู่รัก\n \nสูตร MunzX3 (Munz กล่องทอง)\nMunz อาหารเสริมมันซ์ เอ็กซ์3 (Munz กล่องทอง) เป็นอาหารเสริมสูตรเพิ่มพลังชาย ที่เหนือกว่าด้วยสมุนไพร 4 ทหารเสือปลุกพลังเข้มข้น! (ถั่งเช่าทิเบต, โสมเกาหลี, หอยนางรมฮิโรชิม่า และกระชายดำ) เกรดพรีเมี่ยม นำเข้าจากต่างประเทศด้วยปริมาณที่เข้มข้นที่สุดในท้องตลาด ปราศจากสารเคมี และตัวยาอันตราย ปลอดภัย สำหรับผู้ที่เป็นโรคหัวใจความดันและเบาหวาน ก็สามารถรับประทานได้  \nเหมาะสำหรับ: ผู้ที่มีสุขภาพทรุดโทรม ไม่ออกกำลังกายบ้าง เครียด ดื่มหนัก และพักผ่อนน้อย หรือผู้ที่มีอายุ 35 ปีขึ้นไป\n \n\"Munz X3 เห็นผลทันที ยาวนาน ต่อรอบไว ไม่มีผลข้างเคียง\"\n \nMunz X3 ส่วนประกอบหลักที่สำคัญของ \n \nถั่งเช่าทิเบต หรือที่รู้จักกันว่า \"ไวอากร้าแห่งเทอกเขาหิมาลัย\"\nถั่งเช่า ถือได้ว่าเป็นยาสมุนไพรที่มีการใช้อย่างแพร่หลายในประเทศจีน มีสรรพคุณทางยาแผนโบราณ ในเรื่องของการกระตุ้นสมรรถภาพทางเพศ และใช้เป็นยาบำรุงร่างกาย บำรุงอวัยวะภายใน เช่น ปอด ตับ และไต เป็นต้น\n \nโสมเกาหลี (Korean Ginseng) สมุนไพรชื่อดังจากแดนกิมจิ\nโสมเกาหลี ที่เลื่องลือ เป็นสมุนไพรบำรุงร่างกาย และช่วยเพิ่มสมรรถภาพทางเพศ รักษาและป้องกันโรคผนังเส้นเลือดแดงใหญ่หนาและแข็ง โสมช่วยทำให้คอเลสเตอรอลที่เกาะอยู่ตามผนังหลอดเลือดน้อยลง โสมมีฤทธิ์ต้านการจับตัวกันของเกล็ดเลือด อันเป็นสาเหตุสำคัญของการอุดตันของหลอดเลือด\n \nหอยนางรมฮิโรชิม่า อาหารทะเลขึ้นชื่อ\nหอยนางรมอุดมไปด้วยแร่ธาตุสังกะสีสูง ซึ่งช่วยทำให้สเปิร์มเคลื่อนไหวได้เร็วขึ้น ตามทฤษฎีจะช่วยเพิ่มโอกาสการมีลูก นอกจากนี้สังกะสียยังช่วยลดความเสี่ยงการเกิดต่อมลูกหมากบวม อักเสบ ได้อีกด้วย อีกทั้งในหอยนางรมยังมีโอเมก้า 3 ซึ่งเป็นสารอีกชนิดหนึ่งชื่อ พลอสตาแกลนดิน คล้ายฮอร์โมน มีความสำคัญต่อระบบประสาทในด้านการตอบสนองทางเพศ และเคยถูกใช้เพื่อฉีดในการรักษาผู้ที่มีปัญหาเสื่อมสมรรถภาพทางเพศ เพื่อช่วยให้ผนังเส้นเลือดคลายตัว ทำให้เลือดไปเลี้ยงอวัยวะเพศได้ดีขึ้น\n \nกระชายดำ\nกระชายดำ มีผลช่วยเพิ่มสมรรถภาพทางเพศได้ โดยช่วยเพิ่มการไหลเวียนเลือดไปยังอวัยวะเพศ ทำให้กล้ามเนื้อของอวัยวะเพศคลายตัว ส่งผลให้เกิดการแข็งตัวของอวัยวะเพศ ทั้งนี้กระชายดำไม่ได้เป็นยาปลุกอารมณ์ทางเพศ แต่มีส่วนช่วยทำให้อวัยวะเพศแข็งตัวได้ง่ายขึ้น บ่อยขึ้น และนานขึ้นเท่านั้น\n \nMunz X3 อาหารเสริมมันซ์ เอ็กซ์3 รุ่น กล่อง 20 แคปซูล (Munz กล่องทอง)  เหมาะสำหรับผู้ที่มีสุขภาพทรุดโทรม ไม่ออกกำลังกายบ้าง เครียด ดื่มหนัก และพักผ่อนน้อย หรือผู้ที่มีอายุ 35 ปีขึ้นไป  และต้องการทดลองอาหารเสริมมัซ์เป็นครั้งแรก  (ใช้ได้ครั้งเดียว)', 'f3pLsNOwPfsCaMWP.jfif', '2023-03-17 00:19:34', '2023-03-17 00:19:34', 3),
(5, 'TISHRIC ATX 24Pins Power Supply ', 'Brand Name：TISHRIC\nOrigin：Mainland China\nType：Cable Adapter\nCertification：CE\nPackage：Yes\nProducts Status：STOCK\nModel Number：TSR056\nFunction 1：Distribution Board\nFunction 2：ATX 24Pin Power Breakout Board', 'cLScmVer6FkAZJRg.jpg', '2023-03-30 10:13:15', '2023-03-30 10:13:15', 30),
(6, 'เสื้อฮาวาย สินค้ามาใหม่ hawaii สำหรับผู้ชาย', 'โปรดดูแผนภูมิขนาดเพื่อเลือกขนาด\n\nประกาศจาก ร้าน：\nสินค้าทั้งหมดมีพร้อมส่ง\nลยสินค้าส่งจากกรุงเทพค่ะ\nการจัดส่งภายใน 24 ชั่วโมงหลังจากชำระเงินในวันทำการและถึงภายใน 2 ~ 5 วัน\nเราไม่อนุญาตให้ยกเลิกหลังจากที่ส่งพัสดุออกไปแล้ว โปรดทราบ ขอบคุณ', 'uqxTAjfH3CilBASA.jpg', '2023-03-30 10:16:50', '2023-03-30 10:16:50', 3),
(7, 'เสื้อครอป ผูกโบว์หน้า แขนจับจีบ มีฟองน้ำ', '🔻รูปภาพถ่ายจากงานจริงของทางร้าน\n\nเสื้อครอป ผูกโบว์หน้า แขนจับจีบ น่ารักมาก \nด้านหลังเป็นสม็อก มีฟองน้ำ\n\n- อก 30-35”\n- ความยาวรวมสาย เริ่ม 14-16” (สายยืดหยุ่นได้)', 'bupQPfdPZJxtN55W.jpg', '2023-03-30 10:19:46', '2023-03-30 10:19:46', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'chidchanun', 'chidchanun.bank@gmail.com', NULL, '$2y$10$q1QVMUNaeJLpvAuSFvssWeUtOczLDtBU3b/bwitrJpk5b2l/LPVLe', NULL, '2023-04-29 20:44:25', '2023-04-29 20:44:25'),
(3, 'Tanakit', 'Tanakit.keng@gmail.com', NULL, '$2y$10$Xjku8L6C4gi3WQll1C.aFuv/9LTf6N8RNo6HVhoJup6jkDAkDp936', NULL, '2023-05-02 02:12:28', '2023-05-02 02:12:28'),
(4, 'Pattharapron', 'Pattharapron.Oh@gmail.com', NULL, '$2y$10$QE1TtYkFloqnrpTVSqGGzuiyZxJWMKkL2vmTQiSUq2r2qhYymzQye', NULL, '2023-05-02 02:20:34', '2023-05-02 02:20:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
