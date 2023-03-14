-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 10:28 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Romman Siddique', 'romman1594@gmail.com', '01790-187189', 'Awesome'),
(2, 'Rakibul Haque', 'rakibulhaq56@gmail.com', '01786-786387', 'Osthir...'),
(3, 'Azmain Yakin Srizon', 'azmainsrizon@gmail.com', '01790-187189', 'Smart!!!'),
(4, 'Mohiuddin Ahmed', 'mohiahmed@gmail.com', '01936-876438', 'Carry on!');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) NOT NULL,
  `title1` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(7) NOT NULL,
  `adults` varchar(5) NOT NULL,
  `rooms` varchar(5) NOT NULL,
  `message` varchar(3000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `title1`, `name`, `email`, `phone`, `day`, `month`, `year`, `adults`, `rooms`, `message`) VALUES
(1, '', 'Nguyễn Văn Khánh', 'khanhduong140900@gmail.com', '+84774546979', '16', '04', '2019', '4', '3', 'không'),
(2, '', 'Nguyễn Văn Khánh', 'khanhduong140900@gmail.com', '+84774546979', '19', '04', '2018', '3', '3', 'sadasda'),
(3, '', 'Nguyễn Văn Khánh', 'khanhduong140900@gmail.com', '+84774546979', '02', '02', '2018', '3', '4', 'á'),
(4, 'AC Super Room', 'Nguyễn Văn Khánh', 'khanhduong140900@gmail.com', '0774555555', '16', '06', '2017', '3', '3', 'jaja'),
(5, 'baitap', 'Nguyễn Văn Khánh', 'khanhduong140900@gmail.com', '+84774546979', '02', '02', '2019', '3', '3', 'alaal');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `nb` int(50) NOT NULL,
  `size` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image1` varchar(20) NOT NULL,
  `image2` varchar(20) NOT NULL,
  `image3` varchar(20) NOT NULL,
  `image4` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `title`, `description`, `nb`, `size`, `price`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'Deluxe Room', 'Guests enjoy our exclusive complimentary offerings that include Tea & Sherry Social Hour daily at 4pm in the lobby, the Mountain Sunrise hot breakfast buffet, wi-fi, outdoor year round heated swimming pool and FREE on-site parking.\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', 10, '44', '10000', '6.jpg', '9.jpg', '10.jpg', '5.jpg'),
(2, 'Festive Room', 'Guests enjoy our exclusive complimentary offerings that include Tea & Sherry Social Hour daily at 4pm in the lobby, the Mountain Sunrise hot breakfast buffet, wi-fi, outdoor year round heated swimming pool and FREE on-site parking.\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', 0, '43', '9000', 'H5.jpg', 'H6.jpg', 'H7.jpg', 'H8.jpg'),
(3, 'AC Super Room', 'Guests enjoy our exclusive complimentary offerings that include Tea & Sherry Social Hour daily at 4pm in the lobby, the Mountain Sunrise hot breakfast buffet, wi-fi, outdoor year round heated swimming pool and FREE on-site parking.\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', 0, '46', '9000', 'H9.jpg', 'H10.jpg', 'H11.jpg', 'H12.jpg'),
(4, 'AC Normal Room', 'Guests enjoy our exclusive complimentary offerings that include Tea & Sherry Social Hour daily at 4pm in the lobby, the Mountain Sunrise hot breakfast buffet, wi-fi, outdoor year round heated swimming pool and FREE on-site parking.\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', 0, '42', '8000', 'H13.jpg', 'H14.jpg', 'H15.jpg', 'H16.jpg'),
(5, 'Celebrety Room', 'Guests enjoy our exclusive complimentary offerings that include Tea & Sherry Social Hour daily at 4pm in the lobby, the Mountain Sunrise hot breakfast buffet, wi-fi, outdoor year round heated swimming pool and FREE on-site parking.\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', 0, '55', '15000', 'H17.jpg', 'H18.jpg', 'H19.jpg', 'H20.jpg'),
(6, 'Normal Room', 'Guests enjoy our exclusive complimentary offerings that include Tea & Sherry Social Hour daily at 4pm in the lobby, the Mountain Sunrise hot breakfast buffet, wi-fi, outdoor year round heated swimming pool and FREE on-site parking.\r\n<br><br>\r\nTo insure a comfortable stay, guest amenities include:<br>\r\n1. Fireplaces (select Superior, Deluxe and Mini-Suite rooms only)<br>\r\n2. Mini Bar (Deluxe and Mini-suites only)<br>\r\n3. In-room Safes<br>\r\n4. High speed wireless Internet access<br>\r\n5. Robes<br>\r\n6. Mini Refrigerator<br>\r\n7. Room Service<br>\r\n8. Coffee Maker<br>\r\n9. Hairdryer<br>\r\n10. Ironing Accessories<br>\r\n11. Turn Down (upon request)', 0, '32', '4500', 'H21.jpg', 'H22.jpg', 'H23.jpg', 'H24.jpg'),
(7, 'baitap', 'sdsfds', 0, '50', '7000000', 'H21.jpg', 'H7.jpg', 'H3.jpg', 'H4.jpg'),
(8, 'baitap', 'dgdfgdf', 7, '50', '1500000', 'H17.jpg', '10.jpg', '8.jpg', '5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
