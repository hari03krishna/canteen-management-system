-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 05:02 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amc_canteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(2, 1, 'abcd', 100, 4, 400),
(3, 8, 'abcd', 30, 1, 30),
(4, 2, 'abcd', 100, 3, 300),
(5, 6, 'abcd', 30, 3, 90),
(6, 11, 'admin', 30, 2, 60),
(7, 46, 'aarti', 120, 1, 120),
(8, 44, 'aarti', 120, 1, 120),
(9, 55, 'hari2001', 115, 1, 115),
(10, 61, 'hari2001', 70, 1, 70),
(11, 67, 'karthi27', 70, 2, 140),
(12, 59, 'karthi27', 70, 1, 70);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(24, 46, 'aarti', 'aarti', 9538047417, 'patilaarti2908@gmail.com', 'amc canteen'),
(25, 44, 'aarti', 'aarti', 9538047417, 'patilaarti2908@gmail.com', 'amc canteen'),
(26, 55, 'hari2001', 'hari', 7019866182, 'onetwohari@gmail.com', 'amc canteen'),
(27, 61, 'hari2001', 'hari', 7019866182, 'onetwohari@gmail.com', 'amc canteen'),
(28, 67, 'karthi27', 'karthik', 6362911135, 'karthisrivatsa27@gmail.com', 'amc canteen'),
(29, 59, 'karthi27', 'karthik', 6362911135, 'karthisrivatsa27@gmail.com', 'amc canteen');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'Breakfast', 'south indian'),
(2, 'Lunch', 'south indian'),
(3, 'Lunch', 'north indian'),
(4, 'Chinese', 'rice items'),
(5, 'Chinese', 'noodles'),
(6, 'Chinese', 'manchurian\r\n'),
(7, 'Juice', 'fresh fruit juice '),
(8, 'Juice', 'milkshakes'),
(9, 'Chats', 'masala chats '),
(10, 'chats ', 'snacks'),
(57, 'kathiyawadi', 'south indian'),
(58, 'rajsthani', 'south indian'),
(59, 'rajsthani', 'north indian'),
(60, 'rise', 'RICE ITEMS'),
(61, 'rise', 'NOODLES ITEMS'),
(62, 'rise', 'MANCHURIAN'),
(63, 'tava', 'fresh fruit juice'),
(64, 'tava', 'milkshake'),
(65, 'tava', 'MASALA CHATS'),
(66, 'tava', 'snacks ');

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/5c7515fc03eded3e20e78a6f_1551177212604.jpg'),
(4, 'img/5e39236bc4b7bc0c2bb659c7_1580802923546.jpg'),
(6, 'img/the-gujarati-thali-served.jpg'),
(7, 'img/images.jpg'),
(8, 'img/thali.jpg'),
(9, 'img/chines.jpg'),
(10, 'img/abc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL,
  `food_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`, `food_type`) VALUES
(35, 'kathiyawadi', 'south indian', 'kali dosa', 'dosa with butter', 70, 'mimg/old-sagar-benne-dosa.jpg', 'Breakfast'),
(36, 'kathiyawadi', 'south indian', 'idly vada', 'idly served with vada', 60, 'mimg/idly vada.jpeg.jpg', 'Breakfast'),
(37, 'kathiyawadi', 'south indian', 'chow chow bath', 'upma served with kesaribath', 40, 'mimg/chow chow bath.jpeg.jpg', 'Breakfast'),
(38, 'kathiyawadi', 'south indian', 'bisi bele bath', 'bisibele bath served with boondi', 60, 'mimg/bisibelebathjpg.jpg', 'Breakfast'),
(39, 'kathiyawadi', 'south indian', 'poori sagu', 'poori served with sagu', 70, 'mimg/download.jpeg', 'Breakfast'),
(40, 'kathiyawadi', 'south indian', 'rice bath', 'rice bath served withindian masala', 60, 'mimg/ricebath.jpeg.jpg', 'Breakfast'),
(43, 'rajsthani', 'south indian', 'south indian meals', 'meals served with papad', 100, 'mimg/south indian meals.jpeg.jpg', 'Lunch'),
(44, 'rajsthani', 'north indian', 'north indian meals', 'north indian meals', 120, 'mimg/north indian.jpeg.jpg', 'Lunch'),
(45, 'rise', 'RICE ITEMS', 'fried rice', 'fried rice with indian flavours', 100, 'mimg/fried rice(10).jpeg.jpg', 'Chinese'),
(46, 'rise', 'RICE ITEMS', 'schzewan friedn rice', 'rice served with schzewansauce', 120, 'mimg/schzewan fried rice.jpeg.jpg', 'Chinese'),
(47, 'rise', 'NOODLES ITEMS', 'schzewan noodles', 'noodles served with schzewansauce', 120, 'mimg/schezwan noodle (12).jpeg.jpg', 'Chinese'),
(48, 'rise', 'NOODLES ITEMS', 'hakka noodles', 'hakka noodles ', 105, 'mimg/hakka juice.jpeg.jpg', 'Chinese'),
(49, 'rise', 'MANCHURIAN', 'mushroom machurian', ' fried mushroom in manchurian style ', 110, 'mimg/mushroom manchurian.jpeg.jpg', 'Chinese'),
(50, 'rise', 'MANCHURIAN', 'veg manchurian ', 'veg balls serevd in manchurianstyle', 95, 'mimg/veg manchurian.jpeg.jpg', 'Chinese'),
(51, 'tava', 'fresh fruit juice', 'pineapple juice', 'freshly prepared with pineapple', 70, 'mimg/Pineapple-juice.jpg', 'Juice and chats'),
(52, 'tava', 'fresh fruit juice', 'watermelon juice', 'freshly prepared with watermelon', 60, 'mimg/Watermelon-Juice-blog-4.jpg', 'Juice and chats'),
(53, 'tava', 'fresh fruit juice', 'lime juice', 'freshly prepared with lime ', 45, 'mimg/lime-juice-pic.jpeg.jpg', 'Juice and chats'),
(54, 'tava', 'milkshake', 'oreo milkshake', 'served with oreo cookies', 90, 'mimg/oreo.jpeg.jpg', 'Juice and chats'),
(55, 'tava', 'milkshake', 'choclate milkshake', 'served with cadbury choclates', 115, 'mimg/.jpegchocolate milkshake.jpg', 'Juice and chats'),
(56, 'tava', 'milkshake', 'butterscoth milkshake', 'served with butterscoth icecream', 100, 'mimg/butterscotch.jpeg.jpg', 'Juice and chats'),
(57, 'tava', 'milkshake', 'butter fruit milkshake', 'freshly prepared with butterfruit', 60, 'mimg/butterfruit milkshake.jpeg.jpg', 'Juice and chats'),
(58, 'tava', 'fresh fruit juice', 'orange juice', 'freshly prepared with orange', 45, 'mimg/glass-of-orange-juice-and-fresh-oranges.jpg', 'Juice and chats'),
(59, 'tava', 'MASALA CHATS', 'bhel puri', '', 70, 'mimg/bhelpuri-12-1.jpg', 'Juice and chats'),
(60, 'tava', 'MASALA CHATS', 'masala puri', '', 60, 'mimg/Masala-Puri-Chaat-7-500x375.jpg', 'Juice and chats'),
(61, 'tava', 'MASALA CHATS', 'sev puri', '', 70, 'mimg/sev-puri.jpg', 'Juice and chats'),
(62, 'tava', 'MASALA CHATS', 'panipuri', '', 70, 'mimg/Pani-Puri.jpg', 'Juice and chats'),
(64, 'tava', 'MASALA CHATS', 'dahi puri', '', 70, 'mimg/Dahi-Puri-3.jpg', 'Juice and chats'),
(65, 'tava', 'snacks ', 'filter coffee', '', 20, 'mimg/coffee.jpg', 'Juice and chats'),
(66, 'tava', 'snacks ', 'masala tea', '', 20, 'mimg/Tea-.jpg', 'Juice and chats'),
(67, 'tava', 'snacks ', 'french fries', '', 70, 'mimg/homemade-french-fries-5-500x500.jpg', 'Juice and chats'),
(68, 'tava', 'snacks ', 'samosa', '', 40, 'mimg/samosa-recipe.jpg', 'Juice and chats'),
(69, 'tava', 'snacks ', 'kachori', '', 45, 'mimg/Kachori-Blog.jpg', 'Juice and chats');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(5, 'abcd', 'asdf', 'abc@yahoo.com'),
(6, 'aarti', 'aarti', 'patilaarti@gmail.com'),
(7, 'hari2001', 'hari07', 'onetwohari@gmail.com'),
(8, 'karthi27', 'karthi27', 'karthik27@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(7, 'nandini', 'Good', 'service is good'),
(8, 'sanchali', 'Exellent', 'tasty food and ambience');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
