-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2018 at 04:09 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(1, 'dividthelogan@gmail.com', '1230'),
(2, 'logan123@gmail.com', '0321');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Almonds'),
(2, 'Raisins'),
(3, 'Badam'),
(4, 'Apple'),
(5, 'Honey'),
(6, 'GreenTea'),
(7, 'Dates'),
(8, 'Cashew');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `ip_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `qty`, `ip_add`) VALUES
(17, 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'DryFruits'),
(2, 'DryNuts'),
(3, 'Fruits'),
(4, 'Honey'),
(5, 'GreenTea');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(1, '::1', 'ASHUTOSH RAJ', 'ashutoshraj908@gmail.com', '1230', 'India', 'DALTONGANJ', '8797958296', 'PRITY NIWAS,NEAR S.P KOTHI ROAD,ABADGANJ', 'qaz.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--


INSERT INTO `products` (`product_cat`, `product_brand`, `product_name`, `product_price`, `product_desc`, `product_image`, `product_keywords`, `product_id`) VALUES  
(2, 1, 'Ghasitaram Gifts Dryfruits- Golden Small Almonds  (100 g)', 105.00, 'A Reusable Gift Box Containing best of Almonds. Net Weight: 100 gms. All these dryfruits are vaccum packed and nitrogen flushed to retain their freshness.', 'almonds.jpg', 'drynuts,Almonds', 17), 
(2, 8, 'NutriaLeaf Cashews Cashews  (250 g)',325, 'The cashew tree is native to the Brazil’s Amazon rain forest. It spread all over the planet by Portuguese explorers and today; it is cultivated on a commercial scale in Brazil, Vietnam, India, and many African countries.','cashew1.jpg','drynuts,Cashews,cashew',10),
(1,7, 'Lion Qyno Deseeded Dates  (500 g)', 128, 'Brand Is Lion. Variant Is Plain. Type Is Dates. Model Name Is Deseeded. Maximum Shelf Life Is 6 Months. Gift Pack Is No. Organic Is No. Container Type Is Box. Quantity Is 500 G. Combo Is No. Added Preservatives Is No. Nutrient Content Is Na', 'dates.jpg', 'dates,dryfruits',5),
(1, 2, 'Tulsi Black Raisins Seedless/Kali Drakh Mazari 250g Raisins', 110, 'Brand Is Tulsi. Variant Is Dried. Type Is Raisins. Model Name Is Black Raisins Seedless/kali Drakh Mazari 250g. Maximum Shelf Life Is 6 Months. Gift Pack Is No. Container Type Is Pouch. Quantity Is 250 G. Combo Is No. Added Preservatives Is No. Nutrient Content Is Calories : 654 Kcal.', 'raisin.jpg', 'raisin,dryfruits', 20),
(4, 5, 'Dabur 100% Pure Honey 250 g', 98.00, '100 percent pure honey.Contains natural vitamins and minerals.Provides energy and strengthens immunity.Helps in weight management.Aids digestion.', 'honey.jpg','Honey,Dabur', 21),
(5, 6, 'Lipton Honey, Lemon Green Tea Bags Box  (25 Bags)', 127.00, 'Brand Is Lipton. Type Is Green Tea. Pack Of Is 1. Additives Is Na. Maximum Shelf Life Is 12 Months. Tea Form Is Tea Bag. Organic Is No. Container Type Is Box. Quantity Is 25 Bags. Flavor Is Honey, Lemon.', 'tea.jpg', 'tea,GreenTea,Lipton', 26);

--
-- Indexes for dumped tables
--


--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
