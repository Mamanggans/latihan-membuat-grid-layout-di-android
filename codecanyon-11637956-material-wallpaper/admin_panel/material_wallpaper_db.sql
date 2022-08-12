-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 05:50 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallpaper_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `user_role` enum('100','101','102') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `full_name`, `user_role`) VALUES
(1, 'admin', 'd82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892', 'help.solodroid@gmail.com', 'Administrator', '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cid`, `category_name`, `category_image`) VALUES
(5, 'Sunset', '7042-2018-07-05.jpg'),
(6, 'Satellite', '0135-2018-07-05.jpg'),
(7, 'Road', '4148-2018-07-05.jpg'),
(8, 'Nature', '6086-2018-07-05.jpg'),
(9, 'Flower', '7467-2018-07-05.jpg'),
(10, 'Mountain', '5703-2018-07-05.jpg'),
(11, 'House', '6839-2018-07-05.jpg'),
(12, 'Forest', '0590-2018-07-05.jpg'),
(13, 'City', '2686-2018-07-05.jpg'),
(14, 'Beach', '4413-2018-07-05.jpg'),
(16, 'Animal', '8613-2018-07-05.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `image_url` text NOT NULL,
  `type` varchar(45) NOT NULL DEFAULT 'upload',
  `featured` varchar(10) NOT NULL DEFAULT 'no',
  `tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `cat_id`, `image`, `view_count`, `download_count`, `image_url`, `type`, `featured`, `tags`) VALUES
(25, 5, '0321-2018-07-06.jpg', 10427, 5535, '', 'upload', 'no', 'sunset,beach,wonderful'),
(26, 5, '0041-2018-07-06.jpg', 9124, 4487, '', 'upload', 'yes', 'sunset,paris,eiffel'),
(27, 5, '64509_sunset3.jpg', 8138, 2365, '', 'upload', 'yes', 'sunset,road'),
(28, 5, '43958_sunset4.jpg', 7107, 2876, '', 'upload', 'no', 'sunset,horse'),
(29, 5, '50079_sunset5.jpg', 8150, 3209, '', 'upload', 'no', 'sunset,dolphin'),
(30, 6, '58278_satellite1.jpg', 12277, 7630, '', 'upload', 'no', 'satellite,orbit,earth'),
(31, 6, '80908_satellite2.jpg', 9312, 4012, '', 'upload', 'no', 'satellite,space'),
(32, 6, '32026_satellite3.jpg', 8760, 3398, '', 'upload', 'no', 'satellite,land,sea'),
(33, 6, '11958_satellite4.jpg', 7699, 2470, '', 'upload', 'yes', 'satellite,earth,space,dark'),
(34, 6, '94132_satellite5.jpg', 7800, 2572, '', 'upload', 'no', 'satellite,earth,space,dark'),
(35, 7, '96791_road1.jpg', 6455, 1903, '', 'upload', 'no', 'road,quiet,forest'),
(36, 7, '57511_road2.jpg', 15875, 9802, '', 'upload', 'no', 'road,straight'),
(37, 7, '22038_road3.jpg', 9981, 5045, '', 'upload', 'no', 'road,straight,arid'),
(38, 7, '90240_road4.jpg', 8965, 4509, '', 'upload', 'no', 'road,light'),
(39, 7, '68753_road5.jpg', 7720, 3210, '', 'upload', 'no', 'road,straight,afternoon'),
(40, 8, '33965_nature1.jpg', 7097, 2709, '', 'upload', 'yes', 'nature,mountain,lake'),
(41, 8, '87303_nature2.jpg', 6025, 1509, '', 'upload', 'no', 'nature,mountain,lake,sky'),
(42, 8, '33255_nature3.jpg', 6167, 1125, '', 'upload', 'no', 'nature,ocean,reef,waves'),
(43, 8, '21825_nature4.jpg', 5967, 1003, '', 'upload', 'no', 'nature,sunset,flower,hill,wonderful'),
(44, 8, '54455_nature5.jpg', 5678, 980, '', 'upload', 'yes', 'nature,ocean,sky'),
(45, 9, '14558_flower1.jpg', 4237, 820, '', 'upload', 'no', 'flower,macro'),
(46, 9, '89412_flower2.jpg', 4345, 1098, '', 'upload', 'no', 'flower,beautiful,bright,blue sky'),
(47, 9, '39230_flower3.jpg', 4347, 948, '', 'upload', 'no', 'flower,blue,macro'),
(48, 9, '43854_flower4.jpg', 4723, 902, '', 'upload', 'no', 'flower,lotus,green'),
(49, 9, '50634_flower5.jpg', 4967, 801, '', 'upload', 'yes', 'flower,lotus,macro'),
(50, 9, '68951_flower6.jpg', 3987, 790, '', 'upload', 'no', 'flower,macro'),
(51, 10, '75084_mountain1.jpg', 3369, 720, '', 'upload', 'no', 'mountain,hill,green'),
(52, 10, '96809_mountain2.jpg', 3850, 690, '', 'upload', 'no', 'mountain,aurora,night,stars,dark'),
(53, 10, '25418_mountain3.jpg', 2265, 575, '', 'upload', 'no', 'mountain,night,camp'),
(54, 10, '47184_mountain4.jpg', 2564, 511, '', 'upload', 'no', 'mountain,winter,snow,cold'),
(55, 10, '44317_mountain5.jpg', 2913, 592, '', 'upload', 'yes', 'mountain,sunset,sky high'),
(56, 11, '22268_house1.jpg', 1654, 462, '', 'upload', 'no', 'house,river,wooden house'),
(57, 11, '81556_house2.jpg', 2290, 248, '', 'upload', 'no', 'house,sunset,peace'),
(58, 12, '81833_forest1.jpg', 2110, 549, '', 'upload', 'no', 'forest,sunlight,morning'),
(59, 12, '54752_forest2.jpg', 2627, 820, '', 'upload', 'no', 'forest,green,pine trees'),
(60, 12, '6190_forest3.jpg', 1908, 320, '', 'upload', 'no', 'forest,dark'),
(61, 12, '41611_forest4.jpg', 1751, 563, '', 'upload', 'yes', 'forest,flower,tree,sunlight'),
(62, 12, '61060_forest5.jpg', 2048, 675, '', 'upload', 'no', 'forest,green,house'),
(63, 13, '29821_city1.jpg', 1879, 471, '', 'upload', 'no', 'city,tower,sunset'),
(64, 13, '68489_city2.jpg', 1016, 228, '', 'upload', 'no', 'city,tower,sky high'),
(65, 13, '24102_city3.jpg', 2126, 326, '', 'upload', 'no', 'city,dark,night,rainbow'),
(66, 13, '11608_city4.jpg', 2609, 418, '', 'upload', 'no', 'city,night,town'),
(67, 13, '80610_city5.jpg', 1750, 387, '', 'upload', 'no', 'city,bridge,night'),
(68, 14, '96380_beach1.jpg', 1880, 973, '', 'upload', 'yes', 'beach,blue sky,sea,cloud,island'),
(69, 14, '12426_beach2.jpg', 1210, 402, '', 'upload', 'no', 'beach,island,white sand,coral,waves'),
(70, 14, '49366_beach3.jpg', 1081, 280, '', 'upload', 'yes', 'beach,blue,coral'),
(71, 14, '53518_beach4.jpg', 959, 119, '', 'upload', 'no', 'beach,sunset'),
(72, 14, '20697_beach5.jpg', 966, 181, '', 'upload', 'no', 'beach,blue'),
(73, 16, '21814_animal1.jpg', 849, 173, '', 'upload', 'no', 'animal,owl'),
(74, 16, '47418_animal2.jpg', 767, 120, '', 'upload', 'no', 'animal,deer'),
(75, 16, '71786_animal3.jpg', 661, 134, '', 'upload', 'no', 'animal,cat'),
(76, 16, '9345_animal4.jpg', 619, 197, '', 'upload', 'yes', 'animal,green,macro,insect');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_code`
--

CREATE TABLE `tbl_purchase_code` (
  `id` int(11) NOT NULL,
  `item_purchase_code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `limit_recent_wallpaper` int(11) NOT NULL DEFAULT '0',
  `category_sort` varchar(45) NOT NULL,
  `category_order` varchar(45) NOT NULL,
  `onesignal_app_id` varchar(500) NOT NULL DEFAULT '0',
  `onesignal_rest_api_key` varchar(500) NOT NULL DEFAULT '0',
  `providers` varchar(45) NOT NULL DEFAULT 'onesignal',
  `protocol_type` varchar(10) NOT NULL DEFAULT 'http://',
  `privacy_policy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `limit_recent_wallpaper`, `category_sort`, `category_order`, `onesignal_app_id`, `onesignal_rest_api_key`, `providers`, `protocol_type`, `privacy_policy`) VALUES
(1, 30, 'cid', 'DESC', '0', '0', 'onesignal', '', '<p>This privacy policy includes all the details about the data collected in Material Wallpaper and how it&rsquo;s used.</p>\r\n\r\n<p>As a user we also do not like to give personal informations and we don&rsquo;t want to see our informations collected without knowing what will going to happen to those datas. Material Wallpaper has been alive with the support and trust of it&rsquo;s users. We want to keep the trust; you can find all the details about the data usage below.</p>\r\n\r\n<p>Material Wallpaper does collect anonymous usage data. This data does not include your original device identification numbers, your real personality or your personal data if it&rsquo;s not directly given by you in an open form.</p>\r\n\r\n<p>Material Wallpaper can not access to your real information and your purchases or any other action may not be restored without associating purchases with some information. This is why it is recommended to fill the registration form in the application. That form contains personal information which helps us contact the user easily, help quickly and solve possible licensing problems.</p>\r\n\r\n<p>Usage / interactions in the application are used to determine what stations is being listed at most and which functions attracts the most attention so we can improve those sections. This information also allows us to be able to serve better features like listing most popular stations according to a specific region.</p>\r\n\r\n<p>These datas may be used to serve additional services to 3rd parties like station statistics. NONE of these services will include sensitive information/personally identifying data if not permitted by you.</p>\r\n\r\n<p>In some cases Material Wallpaper may communicate directly with a 3rd party server to obtain latest data for display within the app (such as rss feeds, artist/song images and informations) . When this happens &ndash; we don&rsquo;t transmit any data about you or your usage to these 3rd parties except where explicitly stated. Please check these 3rd parties (where applicable) for their additional privacy policies.</p>\r\n\r\n<p>Advertising Banner Privacy Policy</p>\r\n\r\n<p>Material Wallpaper may display advertisements on various places in the application. This system may use and transmit basic regional/language information about you to the advertising banner system in order to provide you with relevant ads. In some cases, we may have agreements with sponsors and we may hide advertisements in that situation. Eventhough the advertisement may get hidden in that situation, we may provide similar informations to sponsors or 3rd parties.</p>\r\n\r\n<p>3rd Party Content Privacy Policy</p>\r\n\r\n<p>Material Wallpaper may display live web pages or images from 3rd party sources and in these cases you should read the privacy policies displayed by these websites. We use Google Image Search for some of the images related to now playing info.</p>\r\n\r\n<p>Contact us</p>\r\n\r\n<p>If you have any questions regarding privacy while using the Application, or have questions about our practices, please contact us via email at help.solodroid@gmail.com</p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_code`
--
ALTER TABLE `tbl_purchase_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `tbl_purchase_code`
--
ALTER TABLE `tbl_purchase_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
