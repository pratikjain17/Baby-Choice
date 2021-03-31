-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 06:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `timestamp`) VALUES
(9, 'admin@admin.in', '$2y$10$Auma1IJ2g48f6038d3V5yOd5xlV./wUDswRInZ8MCcU9sYOImp9cG', '2021-03-15 09:27:16'),
(10, 'admin1@admin.com', 'admin', '2021-03-16 10:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(7) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_description` text NOT NULL,
  `blog_author` varchar(255) NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_time` datetime NOT NULL DEFAULT current_timestamp(),
  `blog_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_description`, `blog_author`, `blog_image`, `blog_time`, `blog_date`) VALUES
(2, 'ww', 'ddd', 'Bipin Yadav', '3.jpg', '2021-03-31 20:22:41', '2021-03-31 20:22:41'),
(3, 'Product', 'Product', 'ab', '4.jpg', '2021-03-31 21:07:17', '2021-03-31 21:07:17'),
(7, 'Baby Hulk', 'Hulk is a 2003 American superhero film based on the Marvel Comics character of the same name, directed by Ang Lee and written by James Schamus, Michael France, and John Turman from a story by Schamus.', 'Karen', 'hulk vs hulkbuster.jpg', '2021-03-31 21:32:12', '2021-03-31 21:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_p_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `p_quantity` int(2) NOT NULL DEFAULT 1,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_p_id`, `p_id`, `user_id`, `p_quantity`, `timestamp`) VALUES
(51, 4, 21, 7, '2021-03-31 18:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `c_id` int(100) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`c_id`, `c_name`, `timestamp`) VALUES
(1, 'Clothing', '2021-03-16 16:39:06'),
(2, 'Electrocnics', '2021-03-16 16:39:56'),
(3, 'Shoes', '2021-03-17 20:57:47'),
(4, 'Watches', '2021-03-17 20:58:18'),
(5, 'Health & Beauty', '2021-03-17 20:58:39'),
(6, 'Toys', '2021-03-17 20:58:53'),
(7, 'Foods', '2021-03-17 20:59:02'),
(8, 'Blankets', '2021-03-17 20:59:22'),
(9, 'Baby Trollies', '2021-03-17 20:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_description` text NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_image` varchar(100) NOT NULL,
  `p_category` int(100) NOT NULL,
  `timstamp` datetime NOT NULL DEFAULT current_timestamp(),
  `p_discountprice` varchar(100) NOT NULL,
  `p_subcategory` int(100) NOT NULL,
  `p_tittle` varchar(100) NOT NULL,
  `p_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_description`, `p_price`, `p_image`, `p_category`, `timstamp`, `p_discountprice`, `p_subcategory`, `p_tittle`, `p_quantity`) VALUES
(1, 'Baybee Pop N Up Strong Durable Baby Chair - Blue', 'this is a baby cloth lena hai toh lele 50% discount hai', '899.00', '12.jpg', 1, '2021-03-16 16:43:35', '569.00', 1, '', 0),
(2, 'Johnson\'s Baby Care Collection Baby Gift Set', 'jsfhisahfiuasfuias', '350.00', '13.jpg', 2, '2021-03-16 16:44:33', '310.00', 1, '', 0),
(3, 'Baby Soap', 'This is baby soap', '1200', '23.jpg', 5, '2021-03-16 17:44:09', '600', 1, '', 0),
(4, 'Johnson\'s Baby Powder 400g with Free Soap 100g', 'This is johnson baby powder', '287.50', '15.jpg', 4, '2021-03-16 17:47:16', '255.50', 1, 'Johnson Baby powder', 0),
(5, 'Philips Avent Anti Colic Bottle 260ml (Twin Pack)', '', '615.00', '16.jpg', 5, '2021-03-16 20:59:22', '548.00', 2, '', 0),
(6, 'Soft Winter Quilted Hooded Romper', 'foshfsahfishuifsdh', '1,699.00', '17.jpg', 6, '2021-03-17 20:06:27', '1499.00', 2, '', 0),
(7, 'Hudson Baby Cotton Hooded Towel', ' dv vdvd fv', '1,599.00', '18.jpg', 7, '2021-03-17 20:11:53', '1,249.00', 2, '', 0),
(8, 'Rainforest Musical Lullaby Baby', '', '1,999.00', '19.jpg', 8, '2021-03-17 20:12:39', '1,599.00', 2, '', 0),
(9, 'Intex Sunset Glow Baby Pool', '', '1,999.00', '20.jpg', 9, '2021-03-17 20:12:44', '1,599.00', 3, '', 0),
(10, 'Stuffed Cuddly Pikachu Plush Toy', 'v vsdv sdfvds v', '500.00', '21.jpg', 2, '2021-03-17 20:13:06', '249.00', 3, '', 0),
(11, 'Super Durable 6 Pack Sensory Balls', '', '500.00', '22.jpg', 1, '2021-03-17 23:04:38', '390.00', 6, '', 0),
(12, 'Soft Choo Choo Bath Toys', '', '300.00', '23.jpg', 2, '2021-03-17 23:05:58', '279.00', 6, '', 0),
(14, 'Play Craft Nib Painting Kit', '', '500.00', '25.jpg', 2, '2021-03-17 23:08:40', '375.00', 3, '', 0),
(15, 'Little Chime Baby Scooter Battery Operated Ride on Bike with Music and Light (Pink)', '', '6,999.00', '5.jpg', 2, '2021-03-17 23:26:20', '5,699.00', 4, 'Electrical Vehicles', 0),
(16, 'Toyshine Ducky Baby Tricycle Ride-on Bicycle (Red)- BES for 2-3 Years Kids', '', '1,999.00', '6.jpg', 2, '2021-03-17 23:30:00', '1,391.00', 4, 'Trikes', 0),
(17, 'Himalaya Herbals', '', '500.00', '7.jpg', 2, '2021-03-18 08:47:10', '359.00', 5, '', 0),
(25, 'Johnsons baby soap opera cream mosituriser', 'This is a nice product\r\n', '999', 'hulk vs hulkbuster.jpg', 5, '2021-03-31 12:38:06', '899', 2, 'Cream', 4);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `s_id` int(100) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`s_id`, `s_name`, `timestamp`) VALUES
(1, 'FEATURED PRODUCTS', '2021-03-17 20:37:08'),
(2, 'NEW PRODUCTS', '2021-03-17 20:37:08'),
(3, 'BEST SELLER', '2021-03-17 22:41:17'),
(4, 'HOT DEALS', '2021-03-17 23:19:06'),
(5, 'SPECIAL OFFER', '2021-03-17 23:58:23'),
(6, 'UNIQUE PRODUCTS', '2021-03-30 15:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `email`, `mobile`, `password`, `address`, `timestamp`) VALUES
(1, 'Bipin', 'yadav', 'android@android.com', '1234567891', '25569695656566', 'r', '2021-03-06 11:55:04'),
(2, 'ajay', 'aky', 'bipinyadav919@gmail.com', '1234567891', '$2y$10$qiLeEmjY/przdokKO7U9KOa8wIhi2gYzBBxFa.erNi3vskS8F9Jom', 't', '2021-03-07 12:33:25'),
(5, 'vinay', 'verma', 'vinayvermav.100@gmail.com', '8689800551', '$2y$10$6sAgM2C3r14EYzxrkj1qJuPa8Njl1lG/ERZmhVKHulo4Ux1Bd2T9i', 'g', '2021-03-08 11:32:13'),
(7, 'Ajay', 'Kumavat', 'ajay@gmail.com', '5566778899', '$2y$10$V2/tLsvG.qTkwVMsfgm4dOo5hwvsj0hZGaFSTbDmWHdtqwnPHerD.', 'g', '2021-03-09 11:39:29'),
(8, 'vddrg', 'dfbdg', 'gegshsfhs', '52525227', '$2y$10$WFUTXlduXagjzxixhEmaTud4lKcISBv6DGNTzOWMBxYadZ4av3yym', 'vf', '2021-03-09 11:41:15'),
(9, 'bipinn', 'yadav', 'bky@gmail.com', '9999999999', '$2y$10$HVhx0dZI.EuTlLoyIQEmJ.FsT3rzxCsSymdyFmZrp8hQ.nvu27X.q', 'dd', '2021-03-09 11:44:02'),
(10, 'akash', 'yadav', 'ak@gmail.com', '999999993', '$2y$10$J8BLRVpH72mpS9ofLlvmquBCh6it4NYccuAZwwIXJrsPpMAmqQ7uW', 'sd', '2021-03-09 11:46:14'),
(11, 'avb', 'adsd', 'ajay1@gmail.com', '5766855656', '$2y$10$2xUgHMXGlmTJmsEPwErvBeQ/suqAwv3HS3nBWDR0lYIDOu0fZjy4q', 'as', '2021-03-09 13:30:36'),
(12, 'bky', 'bky', 'bky@mail.com', '546123789', '$2y$10$UWHZ2MhrZ5eCcsWtG/UgsuMObfWG09VGXJDKViAJb119cAPD//uC.', 'cv', '2021-03-11 19:37:01'),
(13, 'Bipin', 'yadav', 'bipinyadav844@gmail.com', '9999999999', '$2y$10$TDbvsOElJWIbZOuo/c4S8OSbVET1bJb7qt852hH1Y.DBXZyO3NGay', 'bb', '2021-03-15 13:59:37'),
(14, 'Admin', 'aky', 'admin@admin.in', '1234567891', '$2y$10$MeKwG3ghqzsee7ahFB3/j.N3Lqn6AaZieNFHBvk//IcV4TrLVoAxm', 'a', '2021-03-15 14:54:40'),
(19, 'ajay', 'gsagsafsa', 'safsagasgafa', '1234567891', '$2y$10$Tpfy.Y/neOY7UvAT3Da/h.9BanzQ4R3F8POqkv8N7yBghvDxA/XUG', 'mn', '2021-03-16 16:00:17'),
(20, 'b2', 'b2', 'b2@gmail.com', '1234567890', '$2y$10$TFumbEZsugxamM/Zn6hQGeoo5X2UzVcR479hY4XTc9zR/pCOKozRa', 'zz', '2021-03-21 13:38:49'),
(21, 'Pratik ', 'Jain', 'pdir@gmail.com', '9901910910', '$2y$10$5PDf1JpPei9io6H/Sf316OmZKmlP/3Hzu76rVlSec5r2WHA6OWos2', 'za', '2021-03-23 12:45:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `p_name` (`p_name`,`p_description`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `s_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
