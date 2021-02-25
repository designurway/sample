-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 06:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carry_box`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `business_name` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `phone_no` double NOT NULL,
  `email` varchar(250) NOT NULL,
  `GST` varchar(250) NOT NULL,
  `alternative_no` double NOT NULL,
  `Image` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `business_name`, `address`, `phone_no`, `email`, `GST`, `alternative_no`, `Image`, `logo`, `password`, `created`, `modified`, `user_type`) VALUES
(1, 'prapulla', 'm n', 'Carry Box', ' #191 , Suswani Towers , 3rd floor, B Block, 1st stage, C-Block, JP Nagar, Mysuru, Karnataka 570008', 9108471793, 'info@designurway.com', '29AABCT5589K1ZL', 9632589632, '5fcb1f1ea81f6.jpg', '', '123', '2020-12-05 05:52:36', '2020-11-12 18:30:00', 'admin'),
(6, 'kavitha', 'bs', 'Design ur way', 'Mysore', 9874562314, 'kavitha@gmail.com', '67397638', 9632589632, '5fb8c7a3e83f5.jpg', '', 'kavitha', '2020-11-21 07:54:11', '2020-11-19 12:14:42', '	 admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `description`, `image`, `created`, `modified`) VALUES
(1, 'Fruits', 'Fruits.jpg', '2020-11-21 03:22:03', '2020-11-21 03:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `chatbox`
--

CREATE TABLE `chatbox` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `sender_name` varchar(250) NOT NULL,
  `receiver_name` varchar(250) NOT NULL,
  `message` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbox`
--

INSERT INTO `chatbox` (`id`, `sender_id`, `receive_id`, `sender_name`, `receiver_name`, `message`, `image`, `date`) VALUES
(1, 6, 1, 'kavitha', 'pradee', 'hi', 'invoice/Wood.jpg', '2020-11-21 07:53:21'),
(2, 0, 1, '', 'pradee', 'hi', 'invoice/', '2020-11-23 10:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email_id`, `address`, `password`, `status`, `date`, `created`, `modified`, `phone`) VALUES
(1, 'kavitha', 'kavitha@gmail.com', 'mysore', 'kavitha', '', '2020-11-21', '2020-11-24 06:41:32', '2020-11-21 12:17:09', 9856231487),
(2, 'varsha', 'varsha@gmail.com', 'kerala', 'varsha', '', '2020-11-21', '2020-11-21 12:17:37', '2020-11-21 12:17:37', 9856231487),
(3, 'rakshi', 'rakshi@gmail.com', 'banglore', 'rakshi', '', '2020-11-21', '2020-11-21 12:18:05', '2020-11-21 12:18:05', 9856231487),
(4, 'sandhya', 's@gmail.com', 'mysore', '2345', '', '2020-11-24', '2020-11-24 10:46:23', '2020-11-24 10:46:23', 9901969891);

-- --------------------------------------------------------

--
-- Table structure for table `customer_log`
--

CREATE TABLE `customer_log` (
  `id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryb_details`
--

CREATE TABLE `deliveryb_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `rejected_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deliveryb_details`
--

INSERT INTO `deliveryb_details` (`id`, `order_id`, `delivery_boy_id`, `customer_id`, `admin_id`, `count`, `reason`, `status`, `rejected_date`) VALUES
(1, 1, 1, 1, 1, 0, 'Due to some reason', '3', '2020-11-24 07:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryb_log`
--

CREATE TABLE `deliveryb_log` (
  `id` int(11) NOT NULL,
  `deliveryb_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `emp_id` varchar(250) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_no` double NOT NULL,
  `alternative_no` double NOT NULL,
  `address` text NOT NULL,
  `alternative_address` text NOT NULL,
  `emp_img` varchar(250) NOT NULL,
  `blood_group` varchar(250) NOT NULL,
  `aadhar_no` varchar(250) NOT NULL,
  `aadhar_img` varchar(250) NOT NULL,
  `pan_no` varchar(250) NOT NULL,
  `pan_img` varchar(250) NOT NULL,
  `driving_liscence_no` varchar(250) NOT NULL,
  `driving_img` varchar(250) NOT NULL,
  `vehicle_number` varchar(250) NOT NULL,
  `rc_number` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `admin_id`, `emp_id`, `first_name`, `last_name`, `email`, `phone_no`, `alternative_no`, `address`, `alternative_address`, `emp_img`, `blood_group`, `aadhar_no`, `aadhar_img`, `pan_no`, `pan_img`, `driving_liscence_no`, `driving_img`, `vehicle_number`, `rc_number`, `password`, `status`, `date`, `created`, `modified`) VALUES
(2, 1, 'pradee', '', '', 'pradee@gmail.com', 9874562314, 0, 'rdys', 'rye', 'user2-160x160.jpg', 'B+', '678545457568', 'adhar.jpg', 'PAVIT1234A', 'pan.jpg', 'PA-1234567891234', 'dl.jpg', 'KA-09-AF-4216', 'DAX4235671', '', '', '0000-00-00', '2020-12-05 01:19:50', '2020-12-05 01:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `shipping_address` varchar(250) NOT NULL,
  `store_address` varchar(250) NOT NULL,
  `sub_amount` int(11) NOT NULL,
  `extra_charges` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `total_amount` double NOT NULL,
  `date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `customer_id`, `delivery_boy_id`, `shipping_address`, `store_address`, `sub_amount`, `extra_charges`, `status`, `total_amount`, `date`, `created`, `modified`) VALUES
(1, 1, 1, 1, 'belavadi', 'relience market', 300, 50, '1', 350, '2020-11-21', '2020-11-21 12:18:56', '2020-11-21 12:18:56'),
(2, 2, 2, 0, 'hinakal', 'krishna bekari', 350, 50, '2', 400, '2020-11-21', '2020-11-21 12:22:17', '2020-11-21 12:22:17'),
(4, 4, 4, 0, 'ds', 'ss', 100, 50, '', 150, '2020-11-24', '2020-11-24 10:47:07', '2020-11-24 10:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_type` varchar(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `payment_image` varchar(250) NOT NULL,
  `total_amount` double NOT NULL,
  `trancation_id` varchar(11) NOT NULL,
  `status` varchar(250) NOT NULL,
  `trancation_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `customer_id`, `delivery_boy_id`, `payment_type`, `order_id`, `payment_image`, `total_amount`, `trancation_id`, `status`, `trancation_date`) VALUES
(1, 1, 1, 'phone pe', '1', 'phone pe.png', 350, '', '', '2020-11-21 07:55:39'),
(2, 0, 0, 'phone pe', '', 'phone pe.png', 0, '', '', '2020-12-05 05:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `amount` double NOT NULL,
  `tax` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `customer_id`, `category_id`, `product_name`, `description`, `quantity`, `product_image`, `amount`, `tax`, `status`, `date`, `created`, `modified`) VALUES
(1, 1, 0, 'fruits', 'mixed fruits', '2 kg', '', 350, 5, '0', '2020-11-21', '2020-11-24 11:24:09', '2020-11-21 12:20:28'),
(2, 1, 0, 'vegetables', 'want all vegetables', '2kg', '', 200, 5, '', '2020-11-21', '2020-11-21 12:20:28', '2020-11-21 12:20:28'),
(3, 1, 0, 'maggie', 'maggie', '10', '', 100, 4, '', '2020-11-21', '2020-11-21 12:20:57', '2020-11-21 12:20:57'),
(4, 2, 0, 'burger', 'chicken burger', '2', '', 120, 4, '', '2020-11-21', '2020-11-21 12:24:12', '2020-11-21 12:24:12'),
(5, 4, 4, 'cakes', 'xtyuhyhju', '', '', 300, 2, '', '2020-11-24', '2020-11-24 11:44:03', '2020-11-24 11:44:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbox`
--
ALTER TABLE `chatbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_log`
--
ALTER TABLE `customer_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryb_details`
--
ALTER TABLE `deliveryb_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryb_log`
--
ALTER TABLE `deliveryb_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chatbox`
--
ALTER TABLE `chatbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_log`
--
ALTER TABLE `customer_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryb_details`
--
ALTER TABLE `deliveryb_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deliveryb_log`
--
ALTER TABLE `deliveryb_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
