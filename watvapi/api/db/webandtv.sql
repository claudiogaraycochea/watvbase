-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2019 at 08:43 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webandtv`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `contact_address` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `contact_city` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `contact_state` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `contact_email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `contact_telephone` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lu`
--

CREATE TABLE `lu` (
  `lu_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `lu_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `lu`
--

INSERT INTO `lu` (`lu_id`, `website_id`, `lu_time`) VALUES
(15, 102, '23:34:11'),
(14, 101, '13:49:11'),
(13, 100, '14:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `module_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `module_link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `module_dashboard` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `website_id`, `module_name`, `module_link`, `module_dashboard`) VALUES
(53, 102, 'Vote 1', 'https://modules.weband.tv/vote/25', 'https://modules.weband.tv/admin'),
(52, 100, 'News Live', 'https://weband.tv/newslive', ''),
(51, 101, 'Vote Test', 'https://modules.weband.tv/vote/25', ''),
(50, 101, 'Vote Test', 'https://modules.weband.tv/vote/25', ''),
(49, 101, 'Vote Test 1', 'https://modules.weband.tv/vote/25', ''),
(47, 101, 'Demo Link', 'https://modules.weband.tv/link/26', ''),
(48, 101, 'Vote Test', 'https://modules.weband.tv/vote/25', ''),
(45, 101, 'Demo Vote', 'https://modules.weband.tv/vote/25', ''),
(44, 101, 'Demo Module Download App', 'https://modules.weband.tv/downloadapp/17', 'https://modules.weband.tv/admin'),
(43, 100, 'Demo TV Program', 'https://weband.tv/demotvprogram', '');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `player_src` text COLLATE latin1_general_ci NOT NULL,
  `player_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`player_id`, `website_id`, `player_src`, `player_update`) VALUES
(25, 100, '[{"module_id":"52","module_name":"News%20Live","module_link":"https://weband.tv/newslive","program_begin":"22:22:22","program_end":"00:00:00","program_day":"sun,mon,tue,wed,thu,fri,sat"},{"module_id":"52","module_name":"News%20Live","module_link":"https://weband.tv/newslive","program_begin":"20:00:00","program_end":"00:00:00","program_day":"fri,sat"},{"module_id":"43","module_name":"Demo%20TV%20Program","module_link":"https://weband.tv/demotvprogram","program_begin":"20:00:00","program_end":"00:00:00","program_day":"thu"},{"module_id":"52","module_name":"News%20Live","module_link":"https://weband.tv/newslive","program_begin":"10:51:25","program_end":"00:00:00","program_day":"thu,sat"}]', '2019-02-07 14:04:50'),
(26, 101, '[{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"23:57:41","program_end":"00:00:00","program_day":"mon"},{"module_id":"50","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:24:00","program_end":"00:00:00","program_day":"thu,fri,sat"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:23:00","program_end":"00:00:00","program_day":"thu,fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"22:22:00","program_end":"00:00:00","program_day":"thu,fri"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:00:45","program_end":"00:00:00","program_day":"mon"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:00:00","program_end":"00:00:00","program_day":"sun"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:00:00","program_end":"00:00:00","program_day":"thu,fri,sat"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"21:00:00","program_end":"00:00:00","program_day":"thu,fri"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"20:00:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"20:00:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"18:14:38","program_end":"00:00:00","program_day":"fri"},{"module_id":"51","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:14:05","program_end":"00:00:00","program_day":"fri"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:36","program_end":"00:00:00","program_day":"fri"},{"module_id":"48","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:20","program_end":"00:00:00","program_day":"fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"18:13:16","program_end":"00:00:00","program_day":"fri"},{"module_id":"49","module_name":"Vote%20Test%201","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:11","program_end":"00:00:00","program_day":"fri,sun"},{"module_id":"51","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:03","program_end":"00:00:00","program_day":"fri"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"16:10:42","program_end":"00:00:00","program_day":"fri"},{"module_id":"48","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"14:30:55","program_end":"00:00:00","program_day":"wed"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"14:27:40","program_end":"00:00:00","program_day":"wed"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"11:11:11","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:55:00","program_end":"00:00:00","program_day":"fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"10:50:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"10:47:36","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:47:08","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:30:42","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"10:30:00","program_end":"00:00:00","program_day":"mon"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"10:25:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:22:16","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:00:00","program_end":"00:00:00","program_day":"mon"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"09:55:22","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"09:41:24","program_end":"00:00:00","program_day":"thu"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"09:30:13","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"09:21:08","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:49:07","program_end":"00:00:00","program_day":"thu"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:32:34","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:15:05","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:09:51","program_end":"00:00:00","program_day":"sat"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:03:25","program_end":"00:00:00","program_day":"wed"},{"module_id":"50","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:02:42","program_end":"00:00:00","program_day":"wed"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:00:40","program_end":"00:00:00","program_day":"fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"00:00:10","program_end":"00:00:00","program_day":"thu"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:00:00","program_end":"00:00:00","program_day":"fri"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:00:00","program_end":"00:00:00","program_day":"mon"}]', '2019-02-11 13:49:11'),
(27, 102, '[{"module_id":"53","module_name":"Vote%201","module_link":"https://modules.weband.tv/vote/25","program_begin":"09:00:00","program_end":"00:00:00","program_day":"sun,mon,tue,wed,thu,fri,sat"}]', '2018-11-30 23:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `playlist_id` int(11) NOT NULL,
  `website_linkname` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `website_id` int(11) NOT NULL,
  `playlist_src` text COLLATE latin1_general_ci NOT NULL,
  `website_linkname_parent` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `website_type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`playlist_id`, `website_linkname`, `website_id`, `playlist_src`, `website_linkname_parent`, `website_type`) VALUES
(11, 'demo', 100, '[{"module_id":"52","module_name":"News%20Live","module_link":"https://weband.tv/newslive","program_begin":"22:22:22","program_end":"00:00:00","program_day":"sun,mon,tue,wed,thu,fri,sat"},{"module_id":"52","module_name":"News%20Live","module_link":"https://weband.tv/newslive","program_begin":"20:00:00","program_end":"00:00:00","program_day":"fri,sat"},{"module_id":"43","module_name":"Demo%20TV%20Program","module_link":"https://weband.tv/demotvprogram","program_begin":"20:00:00","program_end":"00:00:00","program_day":"thu"},{"module_id":"52","module_name":"News%20Live","module_link":"https://weband.tv/newslive","program_begin":"10:51:25","program_end":"00:00:00","program_day":"thu,sat"}]', '', 2),
(12, 'demotvprogram', 101, '[{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"23:57:41","program_end":"00:00:00","program_day":"mon"},{"module_id":"50","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:24:00","program_end":"00:00:00","program_day":"thu,fri,sat"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:23:00","program_end":"00:00:00","program_day":"thu,fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"22:22:00","program_end":"00:00:00","program_day":"thu,fri"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:00:45","program_end":"00:00:00","program_day":"mon"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:00:00","program_end":"00:00:00","program_day":"sun"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"22:00:00","program_end":"00:00:00","program_day":"thu,fri,sat"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"21:00:00","program_end":"00:00:00","program_day":"thu,fri"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"20:00:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"20:00:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"18:14:38","program_end":"00:00:00","program_day":"fri"},{"module_id":"51","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:14:05","program_end":"00:00:00","program_day":"fri"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:36","program_end":"00:00:00","program_day":"fri"},{"module_id":"48","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:20","program_end":"00:00:00","program_day":"fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"18:13:16","program_end":"00:00:00","program_day":"fri"},{"module_id":"49","module_name":"Vote%20Test%201","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:11","program_end":"00:00:00","program_day":"fri,sun"},{"module_id":"51","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"18:13:03","program_end":"00:00:00","program_day":"fri"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"16:10:42","program_end":"00:00:00","program_day":"fri"},{"module_id":"48","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"14:30:55","program_end":"00:00:00","program_day":"wed"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"14:27:40","program_end":"00:00:00","program_day":"wed"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"11:11:11","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:55:00","program_end":"00:00:00","program_day":"fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"10:50:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"10:47:36","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:47:08","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:30:42","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"10:30:00","program_end":"00:00:00","program_day":"mon"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"10:25:00","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:22:16","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"10:00:00","program_end":"00:00:00","program_day":"mon"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"09:55:22","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"09:41:24","program_end":"00:00:00","program_day":"thu"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"09:30:13","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"09:21:08","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:49:07","program_end":"00:00:00","program_day":"thu"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:32:34","program_end":"00:00:00","program_day":"tue"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:15:05","program_end":"00:00:00","program_day":"tue"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:09:51","program_end":"00:00:00","program_day":"sat"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:03:25","program_end":"00:00:00","program_day":"wed"},{"module_id":"50","module_name":"Vote%20Test","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:02:42","program_end":"00:00:00","program_day":"wed"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:00:40","program_end":"00:00:00","program_day":"fri"},{"module_id":"47","module_name":"Demo%20Link","module_link":"https://modules.weband.tv/link/26","program_begin":"00:00:10","program_end":"00:00:00","program_day":"thu"},{"module_id":"45","module_name":"Demo%20Vote","module_link":"https://modules.weband.tv/vote/25","program_begin":"00:00:00","program_end":"00:00:00","program_day":"fri"},{"module_id":"44","module_name":"Demo%20Module%20Download%20App","module_link":"https://modules.weband.tv/downloadapp/17","program_begin":"00:00:00","program_end":"00:00:00","program_day":"mon"}]', 'demo', 1),
(13, 'newslive', 102, '[{"module_id":"53","module_name":"Vote%201","module_link":"https://modules.weband.tv/vote/25","program_begin":"09:00:00","program_end":"00:00:00","program_day":"sun,mon,tue,wed,thu,fri,sat"}]', 'demo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `program_begin` time NOT NULL,
  `program_end` time NOT NULL,
  `program_day` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_id`, `website_id`, `module_id`, `program_begin`, `program_end`, `program_day`) VALUES
(680, 100, 52, '22:22:22', '00:00:00', 'sun,mon,tue,wed,thu,fri,sat'),
(665, 101, 45, '10:47:08', '00:00:00', 'tue'),
(666, 101, 44, '10:47:36', '00:00:00', 'tue'),
(657, 101, 44, '09:21:08', '00:00:00', 'tue'),
(658, 101, 45, '10:22:16', '00:00:00', 'tue'),
(650, 101, 44, '23:57:41', '00:00:00', 'mon'),
(651, 101, 44, '00:15:05', '00:00:00', 'tue'),
(659, 101, 44, '11:11:11', '00:00:00', 'tue'),
(618, 101, 45, '22:00:00', '00:00:00', 'sun'),
(621, 101, 45, '10:55:00', '00:00:00', 'fri'),
(622, 101, 51, '18:13:03', '00:00:00', 'fri'),
(623, 101, 49, '18:13:11', '00:00:00', 'fri,sun'),
(624, 101, 47, '18:13:16', '00:00:00', 'fri'),
(625, 101, 48, '18:13:20', '00:00:00', 'fri'),
(626, 101, 45, '18:13:36', '00:00:00', 'fri'),
(627, 101, 51, '18:14:05', '00:00:00', 'fri'),
(628, 101, 44, '18:14:38', '00:00:00', 'fri'),
(629, 100, 52, '20:00:00', '00:00:00', 'fri,sat'),
(630, 102, 53, '09:00:00', '00:00:00', 'sun,mon,tue,wed,thu,fri,sat'),
(631, 101, 45, '00:09:51', '00:00:00', 'sat'),
(656, 101, 45, '00:32:34', '00:00:00', 'tue'),
(660, 101, 45, '09:30:13', '00:00:00', 'tue'),
(661, 101, 44, '09:55:22', '00:00:00', 'tue'),
(662, 101, 45, '10:30:42', '00:00:00', 'tue'),
(663, 101, 44, '10:25:00', '00:00:00', 'tue'),
(664, 101, 47, '10:50:00', '00:00:00', 'tue'),
(667, 101, 44, '20:00:00', '00:00:00', 'tue'),
(668, 101, 44, '20:00:00', '00:00:00', 'tue'),
(669, 101, 45, '22:00:45', '00:00:00', 'mon'),
(670, 101, 50, '00:02:42', '00:00:00', 'wed'),
(671, 101, 44, '00:03:25', '00:00:00', 'wed'),
(672, 101, 45, '14:27:40', '00:00:00', 'wed'),
(673, 101, 48, '14:30:55', '00:00:00', 'wed'),
(674, 101, 45, '00:49:07', '00:00:00', 'thu'),
(675, 101, 47, '00:00:10', '00:00:00', 'thu'),
(679, 100, 52, '10:51:25', '00:00:00', 'thu,sat'),
(677, 101, 44, '09:41:24', '00:00:00', 'thu'),
(691, 101, 45, '10:00:00', '00:00:00', 'mon'),
(681, 100, 43, '20:00:00', '00:00:00', 'thu'),
(682, 101, 45, '22:00:00', '00:00:00', 'thu,fri,sat'),
(683, 101, 44, '21:00:00', '00:00:00', 'thu,fri'),
(684, 101, 47, '22:22:00', '00:00:00', 'thu,fri'),
(685, 101, 45, '22:23:00', '00:00:00', 'thu,fri'),
(686, 101, 50, '22:24:00', '00:00:00', 'thu,fri,sat'),
(687, 101, 44, '00:00:40', '00:00:00', 'fri'),
(688, 101, 45, '00:00:00', '00:00:00', 'fri'),
(689, 101, 44, '16:10:42', '00:00:00', 'fri'),
(690, 101, 44, '00:00:00', '00:00:00', 'mon'),
(692, 101, 44, '10:30:00', '00:00:00', 'mon'),
(693, 101, 50, '18:23:35', '00:00:00', 'mon,wed');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `user_password` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `user_token` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `user_status` int(1) NOT NULL,
  `user_firstname` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `user_lastname` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`, `user_token`, `user_status`, `user_firstname`, `user_lastname`) VALUES
(2, 'claudio@sharesmarttv.com', '321456', '26376f856be30936d69f6261b0e74fd3d1597ea6', 1, 'Tom', 'Gary'),
(25, 'computadoraweb@gmail.com', '321Garay', '15c64234d98870384dff8f8634c580a934283338', 1, 'Andre', 'Cou');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `website_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `website_type` int(1) NOT NULL,
  `website_linkname` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `website_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `website_description` text COLLATE latin1_general_ci NOT NULL,
  `website_keywords` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `website_icon` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `website_date` date NOT NULL,
  `website_update` date NOT NULL,
  `website_status` int(1) NOT NULL,
  `website_linkname_parent` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`website_id`, `user_id`, `website_type`, `website_linkname`, `website_name`, `website_description`, `website_keywords`, `website_icon`, `website_date`, `website_update`, `website_status`, `website_linkname_parent`) VALUES
(102, 2, 1, 'newslive', 'News Live', '', '', '', '2018-11-30', '2018-11-30', 1, 'demo'),
(101, 2, 1, 'demotvprogram', 'Demo TV Program', '', '', '', '2018-10-30', '2018-10-30', 1, 'demo'),
(100, 2, 2, 'demo', 'Demo', '', '', '', '2018-10-30', '2018-10-30', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `lu`
--
ALTER TABLE `lu`
  ADD PRIMARY KEY (`lu_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`playlist_id`),
  ADD UNIQUE KEY `website_linkname` (`website_linkname`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`website_id`),
  ADD UNIQUE KEY `website_linkname` (`website_linkname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lu`
--
ALTER TABLE `lu`
  MODIFY `lu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `playlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=694;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `website_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
