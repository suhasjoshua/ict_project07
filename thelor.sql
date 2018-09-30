-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2018 at 02:18 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thelor`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_mail` varchar(50) NOT NULL,
  `customer_ph` varchar(11) NOT NULL,
  `pickup_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `total_price`, `customer_name`, `customer_mail`, `customer_ph`, `pickup_time`) VALUES
(1, 100, 'tony', 'tony@mail.com', '0458658214', '08 : 40 PM'),
(4, 150, 'Abdul', 'abd@tom.com', '00000000', '08 : 55 PM'),
(5, 75, 'test5', 'test5@m.com', '55555555', '12 : 40 AM'),
(6, 75, 'test6', 'test6@6.com', '666666', '01 : 20 AM'),
(7, 75, 'test7', 'test7@7.com', '77777777', '01 : 45 AM'),
(8, 50, 'test8', 'test8@8.com', '88888888', '02 : 00 AM'),
(9, 75, 'test9', 'test9@9.com', '9999999', '02 : 30 AM'),
(10, 75, 'test10', 'test10@t.com', '1010101010', '12 : 40 PM'),
(11, 50, 'test11', 'test11@t.com', '11111111', '01 : 10 PM'),
(12, 50, 'test13', 'test13@test.com', '1313131313', '01 : 40 PM'),
(13, 25, 'test14', 'test14@mail.com', '2582589', '03 : 55 PM'),
(14, 25, 'final', 'final@f.com', '14141425', '04 : 20 PM'),
(15, 50, 'testf', 'testf@m.com', '3256452568', '04 : 25 PM'),
(16, 50, 'yts', 'sytr@tr.com', '3256815', '04 : 45 PM'),
(17, 50, 'yts', 'sytr@tr.com', '3256815', '04 : 45 PM'),
(18, 50, 'yts', 'sytr@tr.com', '3256815', '05 : 00 PM'),
(19, 50, 'dodod', 'dodo@mail.com', '32568', '04 : 30 PM'),
(20, 50, 'test15', 'test15@mail.com', '325689', '04 : 50 PM'),
(21, 50, 'hygty', 'loju@hynm.com', '12345678', '04 : 45 PM'),
(22, 50, 'testing', 'mail@lk.com', '36578589', '04 : 45 PM'),
(23, 50, 'Dion', 'anhduc77000@yahoo.coom', '0425625057', '07 : 30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`product_id`, `order_id`, `quantity`, `price`) VALUES
(1, 5, 1, 25),
(1, 9, 1, 25),
(1, 12, 1, 25),
(2, 1, 2, 50),
(2, 4, 2, 50),
(2, 5, 1, 25),
(2, 6, 1, 25),
(2, 7, 1, 25),
(2, 8, 1, 25),
(2, 10, 2, 50),
(2, 20, 1, 25),
(2, 21, 1, 25),
(2, 22, 1, 25),
(4, 6, 1, 25),
(4, 11, 1, 25),
(5, 4, 1, 25),
(5, 7, 1, 25),
(5, 8, 1, 25),
(5, 9, 1, 25),
(5, 10, 1, 25),
(5, 11, 1, 25),
(5, 14, 1, 25),
(5, 15, 1, 25),
(5, 16, 1, 25),
(5, 17, 1, 25),
(5, 18, 1, 25),
(5, 19, 1, 25),
(5, 20, 1, 25),
(5, 21, 1, 25),
(5, 23, 3, 75),
(6, 5, 1, 25),
(6, 6, 1, 25),
(6, 7, 1, 25),
(6, 9, 1, 25),
(6, 12, 1, 25),
(6, 15, 1, 25),
(6, 16, 1, 25),
(6, 17, 1, 25),
(6, 18, 1, 25),
(6, 19, 1, 25),
(6, 20, 1, 25),
(6, 21, 1, 25),
(6, 22, 1, 25),
(6, 23, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `product_price` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(140) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `pname`, `product_price`, `image`, `description`) VALUES
(1, 'Item 1', 25, 'image/1.jpg', 'descriptionaboutthisproduct'),
(2, 'Item 2', 25, 'image/2.jpg', 'descriptionaboutthisproduct'),
(3, 'Item 3', 25, 'image/3.jpg', 'descriptionaboutthisproduct'),
(4, 'Item 4', 25, 'image/4.jpg', 'descriptionaboutthisproduct'),
(5, 'Item 5', 25, 'image/5.jpg', 'descriptionaboutthisproduct'),
(6, 'Item 6', 25, 'image/6.jpg', 'descriptionaboutthisproduct');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `qid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `query` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`qid`, `name`, `email`, `query`) VALUES
(1, 'Dheeraj Narra', 'dheeraj.narra14@gmail.com', 'hiuuscbzzcjsbsjsdjbsbd '),
(2, 'suhas suhasg', 'dsad@gmail.com', 'hdcntdh'),
(3, 'Dheeraj Narra', 'vhg', 'jfhtf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`product_id`,`order_id`),
  ADD KEY `order_item_order_fk` (`order_id`,`product_id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`qid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_order_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_item_products_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
