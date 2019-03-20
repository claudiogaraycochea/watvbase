-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2019 at 08:46 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visitorswebandtv`
--

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitor_id` int(11) NOT NULL,
  `visitor_email` varchar(50) NOT NULL,
  `visitor_password` varchar(20) NOT NULL,
  `visitor_firstname` varchar(20) NOT NULL,
  `visitor_lastname` varchar(20) NOT NULL,
  `visitor_token` varchar(100) NOT NULL,
  `visitor_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`visitor_id`, `visitor_email`, `visitor_password`, `visitor_firstname`, `visitor_lastname`, `visitor_token`, `visitor_date`) VALUES
(4, 'computadoraweb@gmail.com', 'Yxu456', 'Claudio', 'Garaycochea', 'ac3d2d681d67437cea6851f7b56f90896b0a0ec9', '2018-09-06 01:40:56'),
(9, 'claudio@sharesmartphone.com', '321456', 'Claudio', 'Garay', 'd2e2e8751207be3c494efd8a8b2d0549a0033d3a', '2018-09-12 02:13:34');

-- --------------------------------------------------------

--
-- Table structure for table `vote_item`
--

CREATE TABLE `vote_item` (
  `vote_item_index` int(11) NOT NULL,
  `module_website_id` int(11) NOT NULL,
  `vote_item_id` int(11) NOT NULL,
  `vote_item_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote_item`
--

INSERT INTO `vote_item` (`vote_item_index`, `module_website_id`, `vote_item_id`, `vote_item_date`) VALUES
(1, 16, 2, '2018-08-31 12:23:53'),
(6, 16, 3, '2018-08-31 12:26:02'),
(7, 16, 1, '2018-08-31 12:26:43'),
(8, 16, 1, '2018-08-31 12:35:45'),
(9, 16, 2, '2018-08-31 12:35:53'),
(10, 16, 2, '2018-08-31 13:09:03'),
(11, 16, 3, '2018-08-31 13:22:27'),
(12, 16, 2, '2018-08-31 13:30:47'),
(13, 16, 2, '2018-08-31 14:00:04'),
(14, 16, 2, '2018-09-06 17:28:13'),
(15, 16, 1, '2018-09-06 17:28:26'),
(16, 16, 2, '2018-09-06 17:28:49'),
(17, 13, 0, '2018-09-12 01:53:36'),
(18, 13, 0, '2018-09-12 02:10:52'),
(19, 13, 0, '2018-09-12 02:11:02'),
(20, 13, 0, '2018-09-12 02:11:29'),
(21, 13, 0, '2018-09-12 02:13:38'),
(22, 16, 0, '2018-09-12 23:30:48'),
(23, 16, 0, '2018-09-12 23:32:06'),
(24, 16, 0, '2018-09-12 23:37:33'),
(25, 16, 1, '2018-09-12 23:37:46'),
(26, 16, 0, '2018-09-25 01:50:19'),
(27, 16, 1, '2018-09-25 01:50:23'),
(28, 25, 0, '2018-10-24 17:23:21'),
(29, 25, 0, '2018-10-24 17:23:25'),
(30, 25, 0, '2018-10-24 18:14:32'),
(31, 25, 0, '2018-10-24 18:53:08'),
(32, 25, 0, '2018-10-24 19:31:42'),
(33, 25, 0, '2018-10-24 19:48:54'),
(34, 25, 0, '2018-10-24 19:57:55'),
(35, 25, 0, '2018-10-24 19:59:00'),
(36, 25, 0, '2018-10-24 19:59:00'),
(37, 25, 0, '2018-10-24 20:02:18'),
(38, 25, 0, '2018-10-24 20:05:26'),
(39, 25, 0, '2018-10-24 21:32:56'),
(40, 25, 0, '2018-10-24 21:33:41'),
(41, 25, 0, '2018-10-24 21:34:30'),
(42, 25, 0, '2018-10-24 21:35:57'),
(43, 25, 1, '2018-10-24 21:36:00'),
(44, 25, 1, '2018-10-25 01:26:39'),
(45, 25, 0, '2018-10-25 01:27:56'),
(46, 25, 2, '2018-10-25 02:05:11'),
(47, 25, 0, '2018-10-25 02:05:32'),
(48, 25, 0, '2018-10-25 02:20:02'),
(49, 25, 2, '2018-10-25 12:27:56'),
(50, 25, 1, '2018-10-25 12:28:06'),
(51, 25, 1, '2018-10-25 12:28:07'),
(52, 25, 1, '2018-10-25 12:28:07'),
(53, 25, 1, '2018-10-25 12:28:12'),
(54, 25, 2, '2018-10-25 12:28:56'),
(55, 25, 2, '2018-10-25 14:03:59'),
(56, 25, 2, '2018-10-25 14:04:14'),
(57, 25, 2, '2018-10-25 14:04:28'),
(58, 25, 3, '2018-10-25 14:12:05'),
(59, 25, 1, '2018-11-30 13:56:08'),
(60, 25, 1, '2018-11-30 13:56:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indexes for table `vote_item`
--
ALTER TABLE `vote_item`
  ADD PRIMARY KEY (`vote_item_index`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `vote_item`
--
ALTER TABLE `vote_item`
  MODIFY `vote_item_index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
