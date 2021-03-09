-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: p3nlmysql69plsk.secureserver.net:3306
-- Generation Time: Mar 09, 2021 at 09:45 AM
-- Server version: 5.5.51-38.1-log
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Itnsystems_estn`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_candidate`
--

CREATE TABLE `tbl_admin_candidate` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `total_candidate` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_candidate_history`
--

CREATE TABLE `tbl_admin_candidate_history` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `candidate_mark` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_new_test`
--

CREATE TABLE `tbl_admin_new_test` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `exam_name` varchar(100) DEFAULT NULL,
  `exam_date` datetime DEFAULT NULL,
  `exam_duration` timestamp NULL DEFAULT NULL,
  `exam_mark` int(6) DEFAULT NULL,
  `exam_pass_mark` int(6) DEFAULT NULL,
  `re_exam` tinyint(1) DEFAULT NULL,
  `marking_type` enum('negative','non-negative') DEFAULT NULL,
  `admin_id` varchar(11) DEFAULT NULL,
  `examiner_id` varchar(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_payment`
--

CREATE TABLE `tbl_admin_payment` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `package_date` datetime DEFAULT NULL,
  `package_expiry_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `id` int(11) NOT NULL,
  `advertisement_id` varchar(11) DEFAULT NULL,
  `advertisement_type` enum('box','banner','other') NOT NULL,
  `advertisement_name` varchar(100) DEFAULT NULL,
  `advertisement_image` varchar(500) DEFAULT NULL,
  `advertisement_url` varchar(255) NOT NULL,
  `advertisement_valid_from` varchar(64) NOT NULL,
  `advertisement_valid_to` varchar(64) NOT NULL,
  `advertisement_description` text NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`id`, `advertisement_id`, `advertisement_type`, `advertisement_name`, `advertisement_image`, `advertisement_url`, `advertisement_valid_from`, `advertisement_valid_to`, `advertisement_description`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(2, '348641', '', 'fff', '348641_quert1.jpg', '', '2021-02-14', '2021-02-19', '                                                dcdfdfd', 'created_by', 'modified_by', '2021-02-14 21:07:44', '2021-02-14 21:07:44', 'y'),
(3, '185119', '', 'dfdsfdsf', '185119_d32.jpg', '', '2021-02-19', '2021-02-26', '                                                dfdsfs', 'created_by', 'modified_by', '2021-02-14 21:08:20', '2021-02-14 21:08:20', 'y'),
(5, '719729', '', 'cantin', '', '', '2021-03-01', '2021-03-31', '                                                ', 'created_by', 'modified_by', '2021-03-01 03:27:40', '2021-03-01 03:27:40', 'y'),
(6, '675204', '', '', '', '', '', '', '                                                ', 'created_by', 'modified_by', '2021-03-01 04:49:06', '2021-03-01 04:49:06', 'y'),
(7, '790590', '', '', '', '', '', '', '                                                ', 'created_by', 'modified_by', '2021-03-01 04:54:52', '2021-03-01 04:54:52', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_exam`
--

CREATE TABLE `tbl_candidate_exam` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_history`
--

CREATE TABLE `tbl_candidate_history` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `candidate_mark` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_package`
--

CREATE TABLE `tbl_candidate_package` (
  `id` int(11) NOT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `candidate_id` int(11) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date NOT NULL,
  `package_price` int(11) DEFAULT NULL,
  `total_exams` int(11) NOT NULL,
  `used_exams` int(11) NOT NULL,
  `remaining_exams` int(11) NOT NULL,
  `package_description` longtext,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_payment`
--

CREATE TABLE `tbl_candidate_payment` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_registration`
--

CREATE TABLE `tbl_candidate_registration` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `d_o_b` varchar(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `dept_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `package_type` varchar(100) DEFAULT NULL,
  `package_expiry` timestamp NULL DEFAULT NULL,
  `last_login_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_candidate_registration`
--

INSERT INTO `tbl_candidate_registration` (`id`, `candidate_id`, `first_name`, `last_name`, `gender`, `d_o_b`, `address`, `mobile`, `email`, `password`, `dept_id`, `category_id`, `avatar`, `country`, `state`, `city`, `package_type`, `package_expiry`, `last_login_date`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(3, 'AD-533120', 'Ashish', 'sadsd', 'male', '2021-02-13', 'Nagpur', '9579010026', 'devidas.patle@rediffmail.com', 'fcea920f7412b5da7be0cf42b8c93759', NULL, NULL, 'AD-533120_dwwww23.jpg', 'sdsada', 'sdsdsa', 'Bangalore', NULL, NULL, '2021-02-14 16:21:59', 'devidas.patle@rediffmail.com', 'devidas.patle@rediffmail.com', '2021-02-14 21:51:59', '2021-02-14 21:51:59', 'y'),
(4, 'CD-46701', '', '', 'male', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, '', '', '', '', NULL, NULL, '2021-03-01 11:56:12', '', '', '2021-03-01 04:56:12', '2021-03-01 04:56:12', 'y'),
(5, 'CD-303046', '', '', 'male', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, '', '', '', '', NULL, NULL, '2021-03-01 11:56:30', '', '', '2021-03-01 04:56:30', '2021-03-01 04:56:30', 'y'),
(6, 'CD-214058', 'Pranit', 'khangar', 'male', '2021-03-06', 'IT', '7', 'jk@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, 'CD-214058_pan.jpg', 'India', 'Maharashtra', ' NAgpur', NULL, NULL, '2021-03-06 13:53:32', 'jk@gmail.com', 'jk@gmail.com', '2021-03-06 06:53:32', '2021-03-06 06:53:32', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_id`, `department_id`, `category_name`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(2, '220549 ', 0, 'test', '', '', '2020-12-02 18:10:10', '2020-12-02 18:10:10', 'y'),
(3, '155709', 0, 'Software', 'kjsyfs', 'yusjv', '2020-12-26 03:28:52', '2020-12-26 03:28:52', 'y'),
(4, '60789', 0, 'test33', 'kjsyfs', 'yusjv', '2021-02-14 20:15:18', '2021-02-14 20:15:18', 'y'),
(5, '354986', 0, 'testing', 'kjsyfs', 'yusjv', '2021-02-19 23:26:12', '2021-02-19 23:26:12', 'y'),
(9, '248512', 0, 'Today06-03', 'kjsyfs', 'yusjv', '2021-03-06 06:45:22', '2021-03-06 06:45:22', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_logo`
--

CREATE TABLE `tbl_client_logo` (
  `id` int(11) NOT NULL,
  `client_id` varchar(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_logo` varchar(500) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_client_logo`
--

INSERT INTO `tbl_client_logo` (`id`, `client_id`, `client_name`, `client_logo`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(56, '197968', 'Gayatri Vaidya', '197968_signature9.2017.jpg', '', '', '2020-12-14 18:55:09', '2020-12-14 18:55:09', 'Y'),
(69, '289536', 'AD-898533', '289536_d32.jpg', '', '', '2021-02-14 21:31:30', '2021-02-14 21:31:30', 'Y'),
(70, '868125', 'AD-898533', '868125_d32.jpg', '', '', '2021-02-14 21:31:49', '2021-02-14 21:31:49', 'Y'),
(72, '445562', 'AD-393255', '', '', '', '2021-03-01 05:27:01', '2021-03-01 05:27:01', 'Y'),
(73, '672397', 'AD-283759', '', '', '', '2021-03-01 05:28:35', '2021-03-01 05:28:35', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_package`
--

CREATE TABLE `tbl_client_package` (
  `id` int(11) NOT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_duration` timestamp NULL DEFAULT NULL,
  `package_price` int(11) DEFAULT NULL,
  `package_description` text,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_registration`
--

CREATE TABLE `tbl_client_registration` (
  `id` int(11) NOT NULL,
  `client_id` varchar(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `d_o_b` varchar(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `dept_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `package_type` varchar(100) DEFAULT NULL,
  `package_expiry_date` timestamp NULL DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `director_name` varchar(255) DEFAULT NULL,
  `last_login_date` varchar(64) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_client_registration`
--

INSERT INTO `tbl_client_registration` (`id`, `client_id`, `first_name`, `last_name`, `gender`, `d_o_b`, `address`, `mobile`, `email`, `password`, `dept_id`, `category_id`, `logo`, `country`, `state`, `city`, `package_type`, `package_expiry_date`, `role`, `position`, `director_name`, `last_login_date`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(2, 'AD-898533', 'Devidas', 'Patle', 'male', 'dob', 'Nagpur', '9579010026', 'admin123@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'dept_id', 'category_id', 'logo', 'country', 'state', 'Nagpur', 'package_type', '0000-00-00 00:00:00', 'role', 'Admin', 'director_name', '2021-02-14 19:47:20', 'created_by', 'modified_by', '2021-02-14 19:47:20', '2021-02-14 19:47:20', 'y'),
(3, 'AD-393255', '', '', 'male', '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', 'dept_id', 'category_id', '', 'country', 'state', '', 'package_type', '0000-00-00 00:00:00', '', '', '', '2021-03-01 05:10:34', 'created_by', 'modified_by', '2021-03-01 05:10:34', '2021-03-01 05:10:34', 'y'),
(4, 'AD-137673', '', '', 'male', '', '', '', '', '7215ee9c7d9dc229d2921a40e899ec5f', 'dept_id', 'category_id', '', 'country', 'state', '', 'package_type', '0000-00-00 00:00:00', '', '', '', '2021-03-01 05:10:43', 'created_by', 'modified_by', '2021-03-01 05:10:43', '2021-03-01 05:10:43', 'y'),
(5, 'AD-283759', '', '', 'male', '', '', '', '', '7215ee9c7d9dc229d2921a40e899ec5f', 'dept_id', 'category_id', '', 'country', 'state', '', 'package_type', '0000-00-00 00:00:00', '', '', '', '2021-03-01 05:10:54', 'created_by', 'modified_by', '2021-03-01 05:10:54', '2021-03-01 05:10:54', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `con_id` int(11) NOT NULL,
  `phone_code` varchar(255) NOT NULL,
  `con_name` varchar(255) NOT NULL,
  `iso` varchar(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`con_id`, `phone_code`, `con_name`, `iso`, `status`) VALUES
(1, '93', 'Afghanistan', 'AF', 1),
(2, '355', 'Albania', 'AL', 1),
(3, '213', 'Algeria', 'DZ', 1),
(4, '1684', 'American Samoa', 'AS', 0),
(5, '376', 'Andorra', 'AD', 1),
(6, '244', 'Angola', 'AO', 1),
(7, '1264', 'Anguilla', 'AI', 0),
(8, '1268', 'Antigua and Barbuda', 'AG', 1),
(9, '54', 'Argentina', 'AR', 1),
(10, '374', 'Armenia', 'AM', 1),
(11, '61', 'Australia', 'AU', 1),
(12, '43', 'Austria', 'AT', 1),
(13, '994', 'Azerbaijan', 'AZ', 1),
(14, '1242', 'Bahamas', 'BS', 1),
(15, '973', 'Bahrain', 'BH', 1),
(16, '880', 'Bangladesh', 'BD', 1),
(17, '1246', 'Barbados', 'BB', 1),
(18, '375', 'Belarus', 'BY', 1),
(19, '32', 'Belgium', 'BE', 1),
(20, '501', 'Belize', 'BZ', 1),
(21, '1441', 'Bermuda', 'BM', 1),
(22, '975', 'Bhutan', 'BT', 1),
(23, '591', 'Bolivia', 'BO', 1),
(24, '387', 'Bosnia and Herzegovina', 'BA', 1),
(25, '267', 'Botswana', 'BW', 1),
(26, '55', 'Brazil', 'BR', 1),
(27, '673', 'Brunei Darussalam', 'BN', 1),
(28, '359', 'Bulgaria', 'BG', 1),
(29, '226', 'Burkina Faso', 'BF', 1),
(30, '257', 'Burundi', 'BI', 1),
(31, '855', 'Cambodia', 'KH', 1),
(32, '237', 'Cameroon', 'CM', 1),
(33, '1', 'Canada', 'CA', 1),
(34, '238', 'Cape Verde', 'CV', 1),
(35, '1345', 'Cayman Islands', 'KY', 0),
(36, '236', 'Central African Republic', 'CF', 1),
(37, '235', 'Chad', 'TD', 1),
(38, '56', 'Chile', 'CL', 1),
(39, '86', 'China', 'CN', 1),
(40, '57', 'Colombia', 'CO', 1),
(41, '269', 'Comoros', 'KM', 1),
(42, '242', 'Congo (DRC)', 'CD', 1),
(43, '242', 'Congo', 'CG', 1),
(44, '682', 'Cook Islands', 'CK', 0),
(45, '506', 'Costa Rica', 'CR', 1),
(46, '225', 'Cote D\'Ivoire', 'CI', 1),
(47, '385', 'Croatia', 'HR', 1),
(48, '53', 'Cuba', 'CU', 1),
(49, '357', 'Cyprus', 'CY', 1),
(50, '420', 'Czech Republic', 'CZ', 1),
(51, '45', 'Denmark', 'DK', 1),
(52, '253', 'Djibouti', 'DJ', 1),
(53, '1767', 'Dominica', 'DM', 1),
(54, '1809', 'Dominican Republic', 'DO', 1),
(55, '670', 'East Timor', 'TL', 1),
(56, '593', 'Ecuador', 'EC', 1),
(57, '20', 'Egypt', 'EG', 1),
(58, '503', 'El Salvador', 'SV', 1),
(59, '240', 'Equatorial Guinea', 'GQ', 1),
(60, '291', 'Eritrea', 'ER', 1),
(61, '372', 'Estonia', 'EE', 1),
(62, '251', 'Ethiopia', 'ET', 1),
(63, '500', 'Falkland Islands (Malvinas)', 'FK', 0),
(64, '298', 'Faroe Islands', 'FO', 0),
(65, '679', 'Fiji', 'FJ', 1),
(66, '358', 'Finland', 'FI', 1),
(67, '33', 'France', 'FR', 1),
(68, '241', 'Gabon', 'GA', 1),
(69, '220', 'Gambia', 'GM', 1),
(70, '995', 'Georgia', 'GE', 1),
(71, '49', 'Germany', 'DE', 1),
(72, '233', 'Ghana', 'GH', 1),
(73, '350', 'Gibraltar', 'GI', 0),
(74, '30', 'Greece', 'GR', 1),
(75, '299', 'Greenland', 'GL', 1),
(76, '1473', 'Grenada', 'GD', 1),
(77, '590', 'Guadeloupe', 'GP', 0),
(78, '1671', 'Guam', 'GU', 0),
(79, '502', 'Guatemala', 'GT', 1),
(80, '224', 'Guinea', 'GN', 1),
(81, '245', 'Guinea-Bissau', 'GW', 1),
(82, '592', 'Guyana', 'GY', 1),
(83, '509', 'Haiti', 'HT', 1),
(84, '39', 'Holy See (Vatican City State)', 'VA', 0),
(85, '504', 'Honduras', 'HN', 1),
(86, '852', 'Hong Kong', 'HK', 1),
(87, '36', 'Hungary', 'HU', 1),
(88, '354', 'Iceland', 'IS', 1),
(89, '91', 'India', 'IN', 1),
(90, '62', 'Indonesia', 'ID', 1),
(91, '98', 'Iran', 'IR', 1),
(92, '964', 'Iraq', 'IQ', 1),
(93, '353', 'Ireland', 'IE', 1),
(94, '972', 'Israel', 'IL', 1),
(95, '39', 'Italy', 'IT', 1),
(96, '1876', 'Jamaica', 'JM', 1),
(97, '81', 'Japan', 'JP', 1),
(98, '962', 'Jordan', 'JO', 1),
(99, '7', 'Kazakhstan', 'KZ', 1),
(100, '254', 'Kenya', 'KE', 1),
(101, '686', 'Kiribati', 'KI', 1),
(102, '850', 'North Korea', 'KP', 1),
(103, '82', 'South Korea', 'KR', 1),
(104, '965', 'Kuwait', 'KW', 1),
(105, '996', 'Kyrgyzstan', 'KG', 1),
(106, '856', 'Laos', 'LA', 1),
(107, '371', 'Latvia', 'LV', 1),
(108, '961', 'Lebanon', 'LB', 1),
(109, '266', 'Lesotho', 'LS', 1),
(110, '231', 'Liberia', 'LR', 1),
(111, '218', 'Libyan', 'LY', 1),
(112, '423', 'Liechtenstein', 'LI', 1),
(113, '370', 'Lithuania', 'LT', 1),
(114, '352', 'Luxembourg', 'LU', 1),
(115, '853', 'Macao', 'MO', 0),
(116, '389', 'Macedonia', 'MK', 1),
(117, '261', 'Madagascar', 'MG', 1),
(118, '265', 'Malawi', 'MW', 1),
(119, '60', 'Malaysia', 'MY', 1),
(120, '960', 'Maldives', 'MV', 1),
(121, '223', 'Mali', 'ML', 1),
(122, '356', 'Malta', 'MT', 0),
(123, '596', 'Martinique', 'MQ', 0),
(124, '222', 'Mauritania', 'MR', 1),
(125, '230', 'Mauritius', 'MU', 1),
(126, '269', 'Mayotte', 'YT', 0),
(127, '52', 'Mexico', 'MX', 1),
(128, '691', 'Micronesia', 'FM', 1),
(129, '373', 'Moldova', 'MD', 1),
(130, '377', 'Monaco', 'MC', 0),
(131, '976', 'Mongolia', 'MN', 1),
(132, '1664', 'Montserrat', 'MS', 0),
(133, '212', 'Morocco', 'MA', 1),
(134, '258', 'Mozambique', 'MZ', 1),
(135, '95', 'Myanmar', 'MM', 1),
(136, '264', 'Namibia', 'NA', 1),
(137, '674', 'Nauru', 'NR', 0),
(138, '977', 'Nepal', 'NP', 1),
(139, '31', 'Netherlands', 'NL', 1),
(140, '599', 'Netherlands Antilles', 'AN', 1),
(141, '687', 'New Caledonia', 'NC', 0),
(142, '64', 'New Zealand', 'NZ', 1),
(143, '505', 'Nicaragua', 'NI', 1),
(144, '227', 'Niger', 'NE', 1),
(145, '234', 'Nigeria', 'NG', 1),
(146, '683', 'Niue', 'NU', 0),
(147, '672', 'Norfolk Island', 'NF', 0),
(148, '47', 'Norway', 'NO', 1),
(149, '968', 'Oman', 'OM', 1),
(150, '92', 'Pakistan', 'PK', 1),
(151, '507', 'Panama', 'PA', 1),
(152, '675', 'Papua New Guinea', 'PG', 1),
(153, '595', 'Paraguay', 'PY', 1),
(154, '51', 'Peru', 'PE', 1),
(155, '63', 'Philippines', 'PH', 1),
(156, '0', 'Pitcairn Islands', 'PN', 0),
(157, '48', 'Poland', 'PL', 1),
(158, '351', 'Portugal', 'PT', 1),
(159, '1787', 'Puerto Rico', 'PR', 1),
(160, '974', 'Qatar', 'QA', 1),
(161, '262', 'Reunion', 'RE', 0),
(162, '40', 'Romania', 'RO', 1),
(163, '70', 'Russia', 'RU', 1),
(164, '250', 'Rwanda', 'RW', 1),
(165, '684', 'Samoa', 'WS', 1),
(166, '378', 'San Marino', 'SM', 1),
(167, '239', 'Sao Tome and Principe', 'ST', 1),
(168, '966', 'Saudi Arabia', 'SA', 1),
(169, '221', 'Senegal', 'SN', 1),
(170, '381', 'Serbia and Montenegro', 'CS', 1),
(171, '248', 'Seychelles', 'SC', 1),
(172, '232', 'Sierra Leone', 'SL', 1),
(173, '65', 'Singapore', 'SG', 1),
(174, '421', 'Slovakia', 'SK', 1),
(175, '386', 'Slovenia', 'SI', 1),
(176, '677', 'Solomon Islands', 'SB', 1),
(177, '252', 'Somalia', 'SO', 1),
(178, '27', 'South Africa', 'ZA', 1),
(179, '34', 'Spain', 'ES', 1),
(180, '94', 'Sri Lanka', 'LK', 1),
(181, '290', 'St. Helena', 'SH', 0),
(182, '1869', 'St. Kitts & Nevis', 'KN', 0),
(183, '1758', 'St. Lucia', 'LC', 0),
(184, '508', 'St. Pierre and Miquelon', 'PM', 0),
(185, '1784', 'St. Vincent & Grenadines', 'VC', 1),
(186, '249', 'Sudan', 'SD', 1),
(187, '597', 'Suriname', 'SR', 0),
(188, '268', 'Swaziland', 'SZ', 1),
(189, '46', 'Sweden', 'SE', 1),
(190, '41', 'Switzerland', 'CH', 1),
(191, '963', 'Syria', 'SY', 1),
(192, '886', 'Taiwan', 'TW', 1),
(193, '992', 'Tajikistan', 'TJ', 0),
(194, '255', 'Tanzania', 'TZ', 1),
(195, '66', 'Thailand', 'TH', 1),
(196, '228', 'Togo', 'TG', 1),
(197, '690', 'Tokelau', 'TK', 0),
(198, '676', 'Tonga', 'TO', 1),
(199, '1868', 'Trinidad and Tobago', 'TT', 1),
(200, '216', 'Tunisia', 'TN', 1),
(201, '90', 'Turkey', 'TR', 1),
(202, '7370', 'Turkmenistan', 'TM', 1),
(203, '1649', 'Turks and Caicos Islands', 'TC', 0),
(204, '688', 'Tuvalu', 'TV', 0),
(205, '256', 'Uganda', 'UG', 1),
(206, '380', 'Ukraine', 'UA', 1),
(207, '971', 'United Arab Emirates', 'AE', 1),
(208, '44', 'United Kingdom', 'GB', 1),
(209, '1', 'United States', 'US', 1),
(210, '598', 'Uruguay', 'UY', 1),
(211, '998', 'Uzbekistan', 'UZ', 1),
(212, '678', 'Vanuatu', 'VU', 1),
(213, '58', 'Venezuela', 'VE', 1),
(214, '84', 'Vietnam', 'VN', 1),
(215, '1284', 'Virgin Islands, British', 'VG', 1),
(216, '1340', 'Virgin Islands, U.s.', 'VI', 1),
(217, '681', 'Wallis and Futuna', 'WF', 0),
(218, '967', 'Yemen', 'YE', 1),
(219, '260', 'Zambia', 'ZM', 1),
(220, '263', 'Zimbabwe', 'ZW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_demo_result`
--

CREATE TABLE `tbl_demo_result` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `candidate_mark` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n',
  `certificate` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `department_id` varchar(11) DEFAULT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `department_id`, `department_name`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '343423', 'MCA ', 'ddsdfdfd`', 'ff', '2020-12-01 21:06:59', '2020-12-01 21:06:59', 'y'),
(2, '593406', 'Poly', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'y'),
(3, '344073', 'Polywww', '', '', '2020-12-02 17:47:35', '2020-12-02 17:47:35', 'y'),
(4, '778592', 'ddd', '', '', '2020-12-02 17:47:39', '2020-12-02 17:47:39', 'y'),
(5, '525535', 'Poly test', '', '', '2020-12-02 17:49:41', '2020-12-02 17:49:41', 'y'),
(6, '630945', 'Polywwwd', '', '', '2020-12-02 17:49:48', '2020-12-02 17:49:48', 'y'),
(7, '5716', 'Poly', '', '', '2020-12-02 17:50:10', '2020-12-02 17:50:10', 'y'),
(9, '496220', 'Arts', 'created_by', 'modified_by', '2020-12-26 02:11:00', '2020-12-26 02:11:00', 'y'),
(10, '252784', 'Commerce ', 'created_by', 'modified_by', '2020-12-26 02:11:18', '2020-12-26 02:11:18', 'y'),
(11, '424016', 'Science ', 'created_by', 'modified_by', '2020-12-26 02:11:28', '2020-12-26 02:11:28', 'y'),
(12, '760897', 'Business Administration ', 'created_by', 'modified_by', '2020-12-26 02:12:10', '2020-12-26 02:12:10', 'y'),
(13, '178413', 'Computer Science ', 'created_by', 'modified_by', '2020-12-26 02:12:35', '2020-12-26 02:12:35', 'y'),
(14, '201454', 'Information Technology ', 'created_by', 'modified_by', '2020-12-26 02:12:50', '2020-12-26 02:12:50', 'y'),
(15, '731112', 'Electrical Engineering ', 'created_by', 'modified_by', '2020-12-26 02:28:13', '2020-12-26 02:28:13', 'y'),
(17, '31320', 'Mechanical Engineering', 'created_by', 'modified_by', '2020-12-26 02:31:48', '2020-12-26 02:31:48', 'y'),
(18, '287024', 'Automobile Engineering ', 'created_by', 'modified_by', '2020-12-26 02:32:40', '2020-12-26 02:32:40', 'y'),
(19, '34250', 'Electronics Engineering', 'created_by', 'modified_by', '2020-12-26 02:33:18', '2020-12-26 02:33:18', 'y'),
(20, '895661', 'Electronics & Telecommunication Engineering', 'created_by', 'modified_by', '2020-12-26 02:34:39', '2020-12-26 02:34:39', 'y'),
(21, '564213', 'Electronics & Communication Engineering', 'created_by', 'modified_by', '2020-12-26 02:35:01', '2020-12-26 02:35:01', 'y'),
(22, '614048', 'Artificial Engineering ', 'created_by', 'modified_by', '2020-12-26 02:35:15', '2020-12-26 02:35:15', 'y'),
(23, '356146', 'Space Administration ', 'created_by', 'modified_by', '2020-12-26 02:38:03', '2020-12-26 02:38:03', 'y'),
(24, '780885', 'History ', 'created_by', 'modified_by', '2020-12-26 02:39:21', '2020-12-26 02:39:21', 'y'),
(25, '76547', 'Geography ', 'created_by', 'modified_by', '2020-12-26 02:39:44', '2020-12-26 02:39:44', 'y'),
(26, '410894', 'Sign & Languages ', 'created_by', 'modified_by', '2020-12-26 02:40:17', '2020-12-26 02:40:17', 'y'),
(27, '702853', 'Medical', 'created_by', 'modified_by', '2020-12-26 03:04:10', '2020-12-26 03:04:10', 'y'),
(28, '15482', 'test', 'created_by', 'modified_by', '2021-02-14 20:15:05', '2021-02-14 20:15:05', 'y'),
(29, '651370', 'PDKtesting', 'created_by', 'modified_by', '2021-02-19 23:25:38', '2021-02-19 23:25:38', 'y'),
(31, '321021', ' ', 'created_by', 'modified_by', '2021-03-01 05:36:51', '2021-03-01 05:36:51', 'y'),
(33, '176979', 'Today06-03', 'created_by', 'modified_by', '2021-03-06 06:44:25', '2021-03-06 06:44:25', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_examinations`
--

CREATE TABLE `tbl_examinations` (
  `id` int(11) NOT NULL,
  `examId` varchar(64) NOT NULL,
  `category` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `duration` int(4) NOT NULL,
  `passmark` int(4) NOT NULL,
  `re_exam` int(4) NOT NULL,
  `terms` text NOT NULL,
  `status` varchar(64) NOT NULL DEFAULT 'Active',
  `examinerId` varchar(64) NOT NULL,
  `universe` varchar(200) NOT NULL,
  `studentid` varchar(2000) NOT NULL,
  `venue` varchar(64) NOT NULL,
  `time` varchar(64) NOT NULL,
  `edate` varchar(64) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `modified_date` varchar(64) DEFAULT NULL,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_history`
--

CREATE TABLE `tbl_exam_history` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `package` varchar(64) NOT NULL,
  `totalcost` int(4) NOT NULL,
  `expirydate` varchar(64) NOT NULL,
  `totalexam` varchar(20) NOT NULL,
  `usedexam` varchar(64) NOT NULL,
  `exam` varchar(64) NOT NULL,
  `role` varchar(64) NOT NULL,
  `examinerId` varchar(64) NOT NULL,
  `purchasingdate` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `modified_by` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_live_result`
--

CREATE TABLE `tbl_live_result` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `candidate_mark` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n',
  `certificate` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_test`
--

CREATE TABLE `tbl_new_test` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `exam_name` varchar(100) DEFAULT NULL,
  `exam_date` datetime DEFAULT NULL,
  `exam_duration` timestamp NULL DEFAULT NULL,
  `exam_mark` int(6) DEFAULT NULL,
  `exam_pass_mark` int(6) DEFAULT NULL,
  `re_exam` tinyint(1) DEFAULT NULL,
  `marking_type` enum('negative','non-negative') DEFAULT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `examiner_id` varchar(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `id` int(11) NOT NULL,
  `notice_id` varchar(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `notice_title` varchar(100) NOT NULL,
  `notice_description` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`id`, `notice_id`, `admin_id`, `candidate_id`, `notice_title`, `notice_description`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(2, '253602', 0, 0, 'dzffdsfs', 'XsasS', 'created_by', 'modified_by', '2021-02-14 20:55:49', '2021-02-14 20:55:49', 'y'),
(3, '75265', 0, 0, 'Hi', 'Hi', 'created_by', 'modified_by', '2021-03-06 06:48:56', '2021-03-06 06:48:56', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_duration` int(11) DEFAULT NULL,
  `package_price` int(11) DEFAULT NULL,
  `package_description` longtext,
  `total_exam` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_practice_examinations`
--

CREATE TABLE `tbl_practice_examinations` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `duration` varchar(64) NOT NULL,
  `passmark` varchar(64) NOT NULL,
  `re_exam` varchar(64) NOT NULL,
  `terms` text NOT NULL,
  `status` varchar(64) NOT NULL DEFAULT 'Active',
  `examinerId` varchar(64) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` varchar(64) NOT NULL,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_practice_examinations`
--

INSERT INTO `tbl_practice_examinations` (`id`, `exam_id`, `category`, `subject`, `exam_name`, `date`, `duration`, `passmark`, `re_exam`, `terms`, `status`, `examinerId`, `created_by`, `created_date`, `currentStatus`) VALUES
(13, '299713', '', '', 'dsfdf', '2021-03-24', '58', '85', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:28:16', 'Y'),
(12, '638774', '', '', '', '', '', '', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:17:26', 'Y'),
(3, '139459', '', '22', '54', '2021-04-01', '45', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:08:43', 'Y'),
(4, '841179', '', '22', '54', '2021-04-01', '45', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:09:34', 'Y'),
(5, '779428', '', '22', '54', '2021-04-01', '45', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:12:16', 'Y'),
(6, '401651', '', '25', 'dfdfdf', '2021-03-17', '54', '45', '', 'Add negative marking', 'Active', '', '', '2021-03-04 00:12:45', 'Y'),
(7, '335162', '', '25', 'dfdfdf', '2021-03-17', '54', '45', '', 'Add negative marking', 'Active', '', '', '2021-03-04 00:17:24', 'Y'),
(8, '950005', '', '', 'dsfsdf', '2021-03-24', '54', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:19:02', 'Y'),
(9, '', '', '', 'sdfsdf', '2021-03-25', '54', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:55:20', 'Y'),
(11, '250161', '', '', 'sarthakdeshmukh', '2021-03-02', '78', '78', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:12:20', 'Y'),
(14, '183257', '', '', 'gsjkhdbfjhgfd', '2021-03-28', '56', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:34:10', 'Y'),
(15, 'EX-335608', '', '22', 'ddd', '2021-03-10', '33', '23', '', 'Add negative marking', 'Active', '', '', '2021-03-04 10:56:51', 'Y'),
(16, 'EX-53903', '', '25', 'test', '2021-03-16', '43', '65', '', 'No negative marking', 'Active', '', '', '2021-03-04 10:57:44', 'Y'),
(17, 'EX-65896', '', '26', 'njfg', '2021-03-06', '7', '1', '', 'No negative marking', 'Active', '', '', '2021-03-06 04:00:58', 'Y'),
(18, 'EX-632053', '', '26', 'q', '2021-03-06', '7', '', '', 'No negative marking', 'Active', '', '', '2021-03-06 04:01:39', 'Y'),
(19, 'EX-227668', '', '26', 'Pratice test', '2021-03-06', '7', '1', '', 'No negative marking', 'Active', '', '', '2021-03-06 06:06:43', 'Y'),
(20, 'EX-585819', '', '26', '', '2021-03-06', '', '', '', 'No negative marking', 'Active', '', '', '2021-03-06 06:09:04', 'Y'),
(21, 'EX-864137', '', '26', 'Quick 06', '2021-03-06', '7', '1', '', 'No negative marking', 'Active', '', '', '2021-03-06 06:09:51', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_practice_questions`
--

CREATE TABLE `tbl_practice_questions` (
  `id` int(11) NOT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  `subject_id` varchar(64) DEFAULT NULL,
  `question_id` varchar(11) DEFAULT NULL,
  `question_text` longtext,
  `question_image` varchar(255) DEFAULT NULL,
  `option1` longtext NOT NULL,
  `option2` longtext NOT NULL,
  `option3` longtext NOT NULL,
  `option4` longtext NOT NULL,
  `option5` longtext NOT NULL,
  `option6` longtext NOT NULL,
  `option7` longtext NOT NULL,
  `option1_image` varchar(255) DEFAULT NULL,
  `option2_image` varchar(255) DEFAULT NULL,
  `option3_image` varchar(255) DEFAULT NULL,
  `option4_image` varchar(255) DEFAULT NULL,
  `option5_image` varchar(255) DEFAULT NULL,
  `option6_image` varchar(255) DEFAULT NULL,
  `option7_image` varchar(255) DEFAULT NULL,
  `answer1` text,
  `answer2` text,
  `answer3` text,
  `answer4` text,
  `answer5` text,
  `answer6` text,
  `answer7` text,
  `folder_name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_practice_result`
--

CREATE TABLE `tbl_practice_result` (
  `candidate_id` varchar(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `candidate_mark` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n',
  `certificate` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_practice_result`
--

INSERT INTO `tbl_practice_result` (`candidate_id`, `id`, `exam_id`, `result`, `candidate_mark`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`, `certificate`) VALUES
(NULL, 1, NULL, NULL, 33, 'xzcxzc', NULL, NULL, NULL, 'n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `id` int(11) NOT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  `subject_id` varchar(64) DEFAULT NULL,
  `question_id` varchar(11) DEFAULT NULL,
  `question_text` longtext,
  `question_image` varchar(255) DEFAULT NULL,
  `option1` longtext NOT NULL,
  `option2` longtext NOT NULL,
  `option3` longtext NOT NULL,
  `option4` longtext NOT NULL,
  `option5` longtext NOT NULL,
  `option6` longtext NOT NULL,
  `option7` longtext NOT NULL,
  `option1_image` varchar(255) DEFAULT NULL,
  `option2_image` varchar(255) DEFAULT NULL,
  `option3_image` varchar(255) DEFAULT NULL,
  `option4_image` varchar(255) DEFAULT NULL,
  `option5_image` varchar(255) DEFAULT NULL,
  `option6_image` varchar(255) DEFAULT NULL,
  `option7_image` varchar(255) DEFAULT NULL,
  `answer1` text,
  `answer2` text,
  `answer3` text,
  `answer4` text,
  `answer5` text,
  `answer6` text,
  `answer7` text,
  `folder_name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `client_id`, `subject_id`, `question_id`, `question_text`, `question_image`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `option7`, `option1_image`, `option2_image`, `option3_image`, `option4_image`, `option5_image`, `option6_image`, `option7_image`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `answer6`, `answer7`, `folder_name`, `description`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '1', 'SB-589634', '1', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', NULL, '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', 'option1\r\n!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', 'option1\r\n!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', 'option1\r\n!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', 'Which of the following XHTML doctype declaration contains all HTML elements and attributes, including presentational and deprecated elements (like font) but not framesets?', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Transitional//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd”\r\n', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', '!DOCTYPE html PUBLIC “-//W3C//DTD XHTML 1.0 Strict//EN” “http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”\r\n', '', '', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'y'),
(2, '3', 'SB-589634', '2', 'Which of the following XHTML doctype declaration contains all HTML elements and attributes, including presentational and deprecated elements (like font) but not framesets?', NULL, '!DOCTYPE html PUBLIC ', '!DOCTYPE html PUBLIC ', '!DOCTYPE html PUBLIC ', '<!DOCTYPE html PUBLIC ', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '!DOCTYPE html PUBLIC ', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'n'),
(3, '4', '2', '3', 'Which of the following prints bold letters in traditional HTML? i. <B>Go boldly</B>\nii. <B>Go boldly</b>\niii. <b>Go boldly</B>\niv. <b>Go boldly</b>', NULL, 'iv', 'i', 'i, ii, iii, and iv', 'both iv and i', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'i, ii, iii, and iv', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(4, '5', '3', '4', 'What output do you expect if the following markup is rendered?<strong>T   e    s   t   o  f  s  p  a  c  e  s</strong><br>\n<strong>T e s t &nbsp;o f&nbsp; s p a c e s </strong><br>', NULL, 'T e s t o f s p a c e s T e s t o f s p a c e s', 'estofspaces\nTestofspaces', 'T e s t o f s p a c e s\nT e s t  o f  s p a c e s', 'T e s t o f s p a c e s T e s t o f s p a c e s', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'T e s t o f s p a c e s\nT e s t  o f  s p a c e s', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(5, '6', '4', '5', ' Which of the following options follows content model in HTML?\n\ni.<ul>\n     <p>Option one </p>\n  </ul>\nii.<ul>\n     <li>Option two </li>\n  </ul>', NULL, 'i', 'ii', 'i and ii', 'Neither i nor ii', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'ii', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(6, '7', '5', '6', 'What will be the output of the following Python code snippet?\n\nX=', NULL, '00000hi', '000hi', 'hi000', ' error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', ' error', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(7, '8', '6', '7', 'Which of the following formatting options can be used in order to add ', NULL, 'print(', ' print(', 'print(', 'print(', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'print(', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(8, '9', '7', '8', 'What will be the output of the following C code?\n\n    #include <stdio.h>\n    int main()\n    {\n        int x = 2, y = 0;\n        int z = (y++) ? y == 1 && x : 0;\n        printf(\"%d\\n\", z);\n        return 0;\n    }', NULL, '0', '1', 'Undefined behaviour', ' Compile time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(9, '10', '8', '9', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 2, y = 0;\n\n            int z = (y++) ? y == 1 && x : 0;\n\n            printf(\"%d\\n\", z);\n\n            return 0;\n\n        }', NULL, '0', '1', 'Undefined behaviour', 'compile time erroir', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(10, '11', '9', '10', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 1;\n\n            int y =  x == 1 ? getchar(): 2;\n\n            printf(\"%d\\n\", y);\n\n        }', NULL, 'compile time error', 'whatever character getchar function returns', 'ascii value of character getchar function returns', '2', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'ascii value of character getchar function returns', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(11, '12', '10', '11', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 1;\n\n            short int i = 2;\n\n            float f = 3;\n\n            if (sizeof((x == 2) ? f : i) == sizeof(float))\n\n                printf(\"float\\n\");\n\n            else if (sizeof((x == 2) ? f : i) == sizeof(short int))\n\n                printf(\"short int\\n\");\n\n        }', NULL, 'float', 'short int', 'undefined behaviour', 'compile time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'float', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(12, '13', '11', '12', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int a = 2;\n\n            int b = 0;\n\n            int y = (b == 0) ? a :(a > b) ? (b = 1): a;\n\n            printf(\"%d\\n\", y);\n\n        }', NULL, 'compile time error', '1', '2', 'undefined behaviour', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(13, '14', '12', '13', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int y = 1, x = 0;\n\n            int l = (y++, x++) ? y : x;\n\n            printf(\"%d\\n\", l);\n\n        }', NULL, '1', '2', 'compile time error', 'undefined behaviour', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(14, '15', '13', '14', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int k = 8;\n\n            int m = 7;\n\n            int z = k < m ? k++ : m++;\n\n            printf(\"%d\", z);\n\n        }', NULL, '7', '8', 'runtime error', '15', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(15, '16', '14', '15', ' What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int k = 8;\n\n            int m = 7;\n\n            int z = k < m ? k = m : m++;\n\n            printf(\"%d\", z);\n\n        }', NULL, 'runtime error', '7', '8', 'depends on compiler', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '7', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(16, '17', '15', '16', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            1 < 2 ? return 1 : return 2;\n\n        }', NULL, 'returns1', 'returns 2', 'varies', 'compile time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'compile time error', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(17, '18', '16', '17', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int k = 8;\n\n            int m = 7;\n\n            k < m ? k++ : m = k;\n\n            printf(\"%d\", k);\n\n        }', NULL, '7', '8', 'compile time error', 'run time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'compile time error', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(18, '19', '17', '18', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int k = 8;\n\n            int m = 7;\n\n            k < m ? k = k + 1 : m = m + 1;\n\n            printf(\"%d\", k);\n\n        }', NULL, 'compile time error', '9', '8', 'run time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'compile time error', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(19, '20', '18', '19', 'What will be the final values of a and c in the following C statement? (Initial values: a = 2, c = 1)\n\n c = (c) ? a = 0 : 2;', NULL, 'a=0  c=0', 'a=2  c=2', 'a=2  c=2', 'a=1 c=2', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a=0 c=0', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(20, '21', '19', '20', 'What will be the data type of the following expression? (Initial data type: a = int, var1 = double, var2 = float)\n\nexpression (a < 50)? var1 : var2;', NULL, 'int ', 'float', 'double', 'cannot be determined', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'double', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(21, '22', '20', '21', ' Which expression has to be present in the following?\n\nexp1 ? exp2 : exp3;', NULL, 'exp1', ' exp2', ' exp3', 'all of the mentioned', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'all of the mentioned', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(22, '23', '21', '22', 'What will be the final value of c in the following C code snippet? (Initial values: a = 1, b = 2, c = 1)\n\n       c += (-c) ? a : b;', NULL, 'Syntax Error\n', 'c = 1', 'c = 2', 'c = 3', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'c = 2', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(23, '24', '22', '23', 'The following C code can be rewritten as _______\n\nc = (n) ? a : b;\n\n', NULL, ' if (!n)c = b;\n    else c = a;', 'if (n <;= 0)c = b;\n    else c = a;', ' if (n > 0)c = a;\n    else c = b;', 'All of the mentioned', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' if (!n)c = b;\n    else c = a;', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(24, '25', '23', '24', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int x = 5;\n\n            if (x < 1)\n\n                printf(\"hello\");\n\n            if (x == 5)\n\n                printf(\"hi\");\n\n            else\n\n                printf(\"no\");\n\n        }', NULL, ' hi', 'hello', ' no', 'error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hi', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(25, '26', '24', '25', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int x;\n\n        void main()\n\n        {\n\n            if (x)\n\n                printf(\"hi\");\n\n            else\n\n                printf(\"how are u\");\n\n        }', NULL, ' hi', 'how are you', 'compile time error', 'error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'how are you', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(26, '27', '25', '26', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int x = 5;\n\n            if (true);\n\n                printf(\"hello\");\n\n        }', NULL, ' It will display hello', 'It will throw an error', 'Nothing will be displayed', 'Compiler dependent', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'It will throw an error', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(27, '28', '26', '27', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int x = 0;\n\n            if (x == 0)\n\n                printf(\"hi\");\n\n            else\n\n                printf(\"how are u\");\n\n                printf(\"hello\");\n\n        }', NULL, 'hi', 'how are you', 'hello', ' hihello', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'hihello', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(28, '29', '27', '28', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int x = 5;\n\n            if (x < 1);\n\n                printf(\"Hello\");\n\n     \n\n        }', NULL, 'Nothing', 'Run time error', ' Hello', 'Varies', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'Hello', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(29, '30', '28', '29', '        #include <stdio.h>\n\n        void main()\n\n        {\n\n            double ch;\n\n            printf(\"enter a value between 1 to 2:\");\n\n            scanf(\"%lf\", &ch);\n\n            switch (ch)\n\n            {\n\n               case 1:\n\n                 printf(\"1\");\n\n                 break;\n\n               case 2:\n\n                 printf(\"2\");\n\n              #include <stdio.h>\n\n        void main()\n\n        {\n\n            double ch;\n\n            printf(\"enter a value between 1 to 2:\");\n\n            scanf(\"%lf\", &ch);\n\n            switch (ch)\n\n            {\n\n               case 1:\n\n                 printf(\"1\");\n\n                 break;\n\n               case 2:\n\n                 printf(\"2\");\n\n                 break;\n\n            }\n\n        }           break;\n\n            }\n\n        }', NULL, 'Compile time error', '1', '2', 'Varies', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Compile time error', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(30, '31', '29', '30', 'What will be the output of the following C code? (Assuming that we have entered the value 1 in the standard input)\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            char *ch;\n\n            printf(\"enter a value between 1 to 3:\");\n\n            scanf(\"%s\", ch);\n\n            switch (ch)\n\n            {\n\n               case \"1\":\n\n                  printf(\"1\");\n\n                  break;\n\n               case \"2\":\n\n                  printf(\"2\");\n\n                  break;\n\n            }\n\n        }', NULL, '1', '2', 'Compile time error', 'No Compile time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'Compile time error', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(31, '32', '30', '31', 'What will be the output of the following C code? (Assuming that we have entered the value 1 in the standard input)\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int ch;\n\n            printf(\"enter a value between 1 to 2:\");\n\n            scanf(\"%d\", &ch);\n\n            switch (ch)\n\n            {\n\n               case 1:\n\n                  printf(\"1\\n\");\n\n               default:\n\n                  printf(\"2\\n\");\n\n            }\n\n        }', NULL, '1', '2', '1 2', 'Run time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '1 2', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(32, '33', '31', '32', ' What will be the output of the following C code? (Assuming that we have entered the value 2 in the standard input)\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int ch;\n\n            printf(\"enter a value between 1 to 2:\");\n\n            scanf(\"%d\", &ch);\n\n            switch (ch)\n\n            {\n\n               case 1:\n\n                  printf(\"1\\n\");\n\n                  break;\n\n                  printf(\"Hi\");\n\n               default:\n\n                  printf(\"2\\n\");\n\n            }\n\n        }', NULL, '1', 'Hi 2', 'Run time error', '2', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '2', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(33, '34', '32', '33', 'What will be the output of the following C code? (Assuming that we have entered the value 1 in the standard input)\n\n        #include <stdio.h>\n\n        void main()\n\n        {\n\n            int ch;\n\n            printf(\"enter a value between 1 to 2:\");\n\n            scanf(\"%d\", &ch);\n\n            switch (ch, ch + 1)\n\n            {\n\n               case 1:\n\n                  printf(\"1\\n\");\n\n                  break;\n\n               case 2:\n\n                  printf(\"2\");\n\n                  break;\n\n            }\n\n        }', NULL, '1', '2', '3', 'Run time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(34, '35', '33', '34', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 1;\n\n            if (x > 0)\n\n                printf(\"inside if\\n\");\n\n            else if (x > 0)\n\n                printf(\"inside elseif\\n\");\n\n        }', NULL, 'inside if', 'inside elseif', 'inside if\ninside elseif', 'compile time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inside if', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(35, '36', '34', '35', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 0;\n\n            if (x++)\n\n                printf(\"true\\n\");\n\n            else if (x == 1)\n\n                printf(\"false\\n\");\n\n        }', NULL, ' true', 'FALSE', 'compile time error', ' undefined behaviour', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FALSE', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(36, '37', '35', '36', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 0;\n\n            if (x == 1)\n\n                if (x == 0)\n\n                    printf(\"inside if\\n\");\n\n                else\n\n                    printf(\"inside else if\\n\");\n\n            else\n\n                printf(\"inside else\\n\");\n\n        }\n\n', NULL, 'inside if', 'inside else if', 'inside else', 'compile time error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'inside else', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(37, '38', '36', '37', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 0;\n\n            if (x == 0)\n\n                printf(\"true, \");\n\n            else if (x = 10)\n\n                printf(\"false, \");\n\n            printf(\"%d\\n\", x);\n\n        }', NULL, ' false, 0', ' true, 0', ' true, 10', 'compile time error\nView Answer', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ' true, 0', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(38, '39', '37', '38', 'What will be the output of the following C code?\n\n        #include <stdio.h>\n\n        int main()\n\n        {\n\n            int x = 0;\n\n            if (x == 1)\n\n                if (x >= 0)\n\n                    printf(\"true\\n\");\n\n                else\n\n                    printf(\"false\\n\");\n\n        }', NULL, 'TRUE', 'FALSE', ' Depends on the compiler', 'No print statement', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'No print statement', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(39, '40', '38', '39', 'Which of the following prints bold letters in traditional HTML?\n\ni. <B>Go boldly</B>\nii. <B>Go boldly</b>\niii. <b>Go boldly</B>\niv. <b>Go boldly</b>', NULL, 'iv', ' i', ' i, ii, iii, and iv', ' both iv and i', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', ' i, ii, iii, and iv', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(40, '41', '39', '40', 'XHTML is case insensitive and HTML is case sensitive.', NULL, 'TRUE', 'FALSE', '', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FALSE', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(41, '42', '40', '41', 'What output do you expect if the following markup is rendered?\n\n<strong>T   e    s   t   o  f  s  p  a  c  e  s</strong><br>\n<strong>T e s t &nbsp;o f&nbsp; s p a c e s </strong><br>', NULL, ' T e s t o f s p a c e s\nT e s t o f s p a c e s', 'Testofspaces\nTestofspaces', ' T e s t o f s p a c e s\nT e s t  o f  s p a c e s ', 'T e s t o f s p a c e s T e s t o f s p a c e s', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T e s t o f s p a c e s\nT e s t  o f  s p a c e s ', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(42, '43', '41', '42', 'Which of the following options follows content model in HTML?\n\ni.<ul>\n     <p>Option one </p>\n  </ul>\nii.<ul>\n     <li>Option two </li>\n  </ul>\n\n', NULL, 'i', ' ii', ' i and ii', ' Neither i nor ii', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'ii', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(43, '44', '42', '43', ' Which of the following is not an empty element?', NULL, '<hr/>', '<br/>', '<p/>', ' Both <hr/> and <br/>', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '<p/>', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(44, '45', '43', '44', 'State true or false.\n\n<p></p><p></p><p></p>produces numerous blank lines.', NULL, 'TRUE', 'FALSE', '', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FALSE', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(45, '46', '44', '45', 'Which of the following markup is correct?\n\ni. <b><i>is in error as tags cross</b></i>\nii. <b><i>is not since tags nest</i></b>', NULL, ' i', ' ii', ' i and ii', 'Neither i nor ii', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ' ii', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(46, '47', '45', '46', 'Which of the following is not a correct (X)HTML rule?', NULL, ' Attributes should be quoted', ' Tags should not nest tag', 'Attribute minimization is forbidden', 'Unknown attributes are not ignored by the browser', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'Unknown attributes are not ignored by the browser', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(47, '48', '46', '47', 'Choose the incorrect escape character entity.', NULL, '&gt;', ' &#62;', ' &lt;', '&st;', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '&st;', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(48, '49', '47', '48', 'Identify the count of mistakes in the following markup.\n\n<html>\n<head>\n</head>\n<body>\n<li>\n   <ul><p>Hello</p></ul>\n</li>\n<br>\n<hr>\n</body>\n</html>', NULL, '2', '3', '1', '0', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '3', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(49, '50', '48', '49', 'A Rendering engine is not responsible for ________', NULL, ' parsing the markup content (HTML)', 'parsing style information (CSS, XSL, and so on)', ' generating a visual presentation of the formatted content including media files referenced', 'parsing style information (CSS only)', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'parsing style information (CSS only)', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(50, '51', '49', '50', 'Firefox uses _________ rendering engine.', NULL, 'WebKit', 'Gecko', ' Trident', ' Presto', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Gecko', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(51, '52', '50', '51', 'State true or false. It is faster to render HTML and CSS than to interpret and execute JavaScript.', NULL, 'TRUE', 'FALSE', '', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' True', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(52, '53', '51', '52', 'What is the use of ', NULL, ' It defers rendering of html page', 'It defers script execution until the page has been rendered', ' It defers rendering of css attributes', 'It is only for internal scripts', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'It defers script execution until the page has been rendered', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(53, '54', '52', '53', 'Which of the following statements is false?', NULL, 'async and defer attributes of script tag execute before the DOMContentLoaded event', 'defer executes each script sequentially', 'async executes each script when it is ready', 'all older browsers supports async attribute', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'all older browsers supports async attribute', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(54, '55', '53', '54', 'Which of the following is used to read a HTML page and render it?', NULL, 'Web browser', 'Web server', ' Web matrix', 'Web network\n', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' Web browser', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(55, '56', '54', '55', 'Which of the following is the first web browser?', NULL, ' Nexus', ' Netscape Navigator', ' Internet Explorer', 'Mosaic', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nexus', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(56, '57', '55', '56', ' Who created the first web browser', NULL, 'Tim Berners Lee', ' Jacobs, Lan', 'Marc Andeersen', 'Mozilla foundation', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tim Berners Lee', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(57, '58', '56', '57', 'Nexus is first graphical web browser.', NULL, 'TRUE', 'FALSE', '', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FALSE', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(58, '59', '57', '58', 'The open source software version of netscape is ________', NULL, 'Chrome', 'Mozilla', 'Internet Explorer', 'Erwise', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Mozilla', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(59, '60', '58', '59', 'How many standard color names does HTML supports?', NULL, '120', '130', '140', '90', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '140', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(60, '61', '59', '60', 'Which of the following is not set with font-style property?', NULL, ' font-style: normal', ' font-style: italic', 'font-style: oblique', 'font-style: capitalize', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'font-style: capitalize', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(61, '62', '60', '61', ' What should be set with text-align property so that every line has equal width like in magazines and newspapers?', NULL, ' text-align: justify', 'text-align: none', 'text-align: bottom', ' text-align: top', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'text-align: justify', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(62, '63', '61', '62', 'Which of the following is not used with text-decoration property?', NULL, ' overline', 'underline', 'line-through', ' inline', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', ' inline', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(63, '64', '62', '63', ' Which works similar to <i> element?', NULL, '<strong>', ') <em>', '<b>', '<blockquote>', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<em>', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(64, '65', '63', '64', 'Which works similar to <b> element?', NULL, ' <strong>', '<em>', '<i>', '<blockquote>', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<strong>', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(65, '66', '64', '65', 'Which element is used for short quote?', NULL, '<q>', '<blockquote>', ' <em>', ' <abbr>', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<q>', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(66, '67', '65', '66', ' Which element is used for abbreviation or acronym?', NULL, ' <em>', '<q>', '<abbr>', '<blockquote>', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '<abbr>', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(67, '68', '66', '67', 'What is the work of <address> element?', NULL, 'contains contact details for author', ' contains IP address', ' contains home address', 'contains url', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' contains contact details for author', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(68, '69', '67', '68', 'To show deleted text, which element is used?', NULL, '<ins>', ' <del>', '<em>', '<strong>', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '<del>', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(69, '70', '68', '69', 'What will be the output of the following Python code snippet?\n\nX=', NULL, '00000hi', ' 000hi', 'hi000', 'error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'error', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(70, '71', '69', '70', 'What will be the output of the following Python code snippet?\n\nX=', NULL, '56 blank spaces before san-foundry', '56 blank spaces before san and foundry', '56 blank spaces after san-foundry', 'no change', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 56 blank spaces before san-foundry', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(71, '72', '70', '71', 'What will be the output of the following Python expression if x=456?\n\nprint(\"%-06d\"%x)', NULL, '456', '456000', '4561', 'error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '456', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(72, '73', '71', '72', 'What will be the output of the following Python expression if X=345?\n\nprint(', NULL, '345000', '345', '3455', '345000000', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '345', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(73, '74', '72', '73', 'Which of the following formatting options can be used in order to add ', NULL, 'print(', ' print(', 'print(', 'print(', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'print(', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(74, '75', '73', '74', 'What will be the output of the following Python expression if X = -122?\n\nprint(\"-%06d\"%x)', NULL, '-122', '122', '', '-122', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(75, '76', '74', '75', 'What will be the output of the following Python expression if the value of x is 34?\n\nprint(', NULL, '34', '34', '34', '34', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(76, '77', '75', '76', 'What will be the output of the following Python expression if x=56.236?\n\nprint(\"%.2f\"%x)', NULL, '56', '56.24', '56.23', '56.236', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '56.24', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(77, '78', '76', '77', 'What will be the output of the following Python expression if x=22.19?\n\nprint(\"%5.2f\"%x)', NULL, '22.19', '22', '22.199', '22.2', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22.19', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(78, '79', '77', '78', 'The expression shown below results in an error.\n\nprint(\"-%5d0\",989)', NULL, 'TRUE', 'FALSE', '', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'FALSE', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(79, '80', '78', '79', 'What will be the output of the following Python code snippet?\n\n\'%d %s %g you\' %(1, \'hello\', 4.0)', NULL, 'Error', ' 1 hello you 4.0', ' 1 hello 4 you', '1 4 hello you', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '1 hello 4 you', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(80, '81', '79', '80', 'The output of which of the codes shown below will be: ', NULL, '', 'There are %d %s birds.', ' ', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ' ', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(81, '82', '80', '81', 'What will be the output of the python code shown below for various styles of format specifiers?\n\nx=1234\nres=\'integers:...%d...%-6d...%06d\' %(x, x, x)\nres', NULL, '', ' ', '', ') ', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(82, '83', '81', '82', 'What will be the output of the following Python code snippet?\n\nx=3.3456789\n\'%f | %e | %g\' %(x, x, x)', NULL, 'Error', '', '', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(83, '84', '82', '83', 'What will be the output of the following Python code snippet?\n\nx=3.3456789\n\'%-6.2f | %05.2f | %+06.1f\' %(x, x, x)', NULL, '3.35 | 03.35 | +003.3', '', 'Error', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' ', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(84, '85', '83', '84', 'What will be the output of the following Python code snippet?\n\nx=3.3456789\n\'%s\' %x, str(x)', NULL, 'Error', '(', '(3.3456789, 3.3456789)', '(', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '(', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(85, '86', '84', '85', 'What will be the output of the following Python code snippet?\n\n\'%(qty)d more %(food)s\' %{\'qty\':1, \'food\': \'spam\'}', NULL, ' Error', 'No output', '', ' ', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' Error', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(86, '87', '85', '86', 'What will be the output of the following Python code snippet?\n\na=\'hello\'\nq=10\nvars()', NULL, '{', '{', ' {', 'Error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' {', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(87, '88', '86', '87', 'What will be the output of the following Python code?\n\ns=\'{0}, {1}, and {2}\'\ns.format(\'hello\', \'good\', \'morning\')', NULL, ' ', '', '', ' Error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hello, good, and morning', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(88, '89', '87', '88', 'What will be the output of the following Python code?\n\ns=\'%s, %s & %s\'\ns%(\'mumbai\', \'kolkata\', \'delhi\')', NULL, ' ', ' Error', 'No output', ' ', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' ', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(89, '90', '88', '89', 'What will be the output of the following Python code?\n\nt = \'%(a)s, %(b)s, %(c)s\'\nt % dict(a=\'hello\', b=\'world\', c=\'universe\')', NULL, '', ' ', 'Error', 'hellos, world, universe', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(90, '91', '89', '90', 'What will be the output of the following Python code?\n\n\'{a}, {0}, {abc}\'.format(10, a=2.5, abc=[1, 2])', NULL, ' Error', '', '2.5, 10, 1, 2', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(91, '92', '90', '91', 'What will be the output of the following Python code?\n\n\'{0:.2f}\'.format(1.234)', NULL, '', '', '1.23', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(92, '93', '91', '92', 'What will be the output of the following Python code?\n\n\'%x %d\' %(255, 255)', NULL, 'ff, 255', '', '', ' Error', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(93, '94', '92', '93', 'The output of the two codes shown below is the same.\n\ni. \'{0:.2f}\'.format(1/3.0)\nii. \'%.2f\'%(1/3.0)', NULL, 'TRUE', 'FALSE', '', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(94, '95', '93', '94', 'What will be the output of the following Python code?\n\nl=list(\'HELLO\')\n\'first={0[0]}, third={0[2]}\'.format(l)', NULL, '', ' ', ' Error', '', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(95, '96', '94', '95', 'What will be the output of the following Python code?\n\nl=list(\'HELLO\')\np=l[0], l[-1], l[1:3]\n\'a={0}, b={1}, c={2}\'.format(*p)', NULL, 'Error', '', '', 'Junk value', 'None', 'All of the above', 'None of the above', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', ' ', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(98, '', 'SB-589634', 'QS-957056', 'dsfdsfsf', NULL, 'dfdsf', 'sdfdsf', 'sdfdsf', 'sdfdsf', 'dsfdsf', 'dsfsfds', 'sdfdsfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', 'created_by', 'modified_by', '2021-02-14 23:05:52', '2021-02-14 23:05:52', 'y'),
(99, 'CL38320', 'SB-589634', 'QS-173226', 'What will be the output of the following Python code? t = \'%(a)s, %(b)s, %(c)s\' t % dict(a=\'hello\', b=\'world\', c=\'universe\')', '', 'What will be the output of the following Python code? t = \'%(a)s, %(b)s, %(c)s\' t % dict(a=\'hello\', b=\'world\', c=\'universe\')', 'What will be the output of the following Python code', 'What will be the output of the following Python code? t = \'%(a)s, %(b)s, %(c)s\' t % dict(a=\'hello\', b=\'world\', c=\'universe\')', 'What will be the output of the following Python code? t = \'%(a)s, %(b)s, %(c)s\' t % dict(a=\'hello\', b=\'world\', c=\'universe\')', 'What will be the output of the following Python code? t = \'%(a)s, %(b)s, %(c)s\' t % dict(a=\'hello\', b=\'world\', c=\'universe\')', 'What will be the output of the following Python code? t = \'%(a)s, %(b)s, %(c)s\' t % dict(a=\'hello\', b=\'world\', c=\'universe\')', 'What will be the output of the following Python code? t = \'%(a)s, %(b)s, %(c)s\' t % dict(a=\'hello\', b=\'world\', c=\'universe\')', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'python', '', 'created_by', 'modified_by', '2021-02-18 11:33:22', '2021-02-18 11:33:22', 'y'),
(101, 'CL62924', 'SB-134530', 'QS-360418', 'hi test', '', 'h', 'hh', 'hhh', 'hhhh', 'hhhhh', 'hhhhhh', 'hhhhhhh', '', '', '', '', '', '', '', '1', '', '', '', '5', '', '', 'python', '', 'created_by', 'admin', '2021-02-19 23:20:17', '2021-02-24 09:05:35', 'y'),
(102, 'CL96936', 'SB-672847', 'QS-367926', 'addqt53643#@$%#&@^%$', '', 'q2@#$g', '2@#$g', '2@#$g', '2@#$g', '2@#$g', '2@#$g', '2@#$g', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'python', '', 'created_by', 'admin', '2021-02-19 23:23:11', '2021-02-19 23:30:27', 'y'),
(104, 'CL62277', 'SB-326697', 'QS-418584', 'test', '', 'cxzczc', 'xczc', 'xzcz', 'zxcxz', 'zxcxzc', 'zxczxc', 'zxcxzc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'python', '', 'created_by', 'modified_by', '2021-02-24 07:50:25', '2021-02-24 07:50:25', 'y'),
(105, 'CL26698', 'SB-494420', 'QS-978058', 'cvxvxcv', '', 'xxvcxv', 'cvbvcb', 'cvbcvb', 'vbvc', 'vcb', 'cvbcvb', 'cvbvc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'python', '', 'created_by', 'modified_by', '2021-02-24 08:02:55', '2021-02-24 08:02:55', 'y'),
(106, 'CL79552', 'SB-494420', 'QS-525242', 'cvcxv', '', 'cvcv', 'bcbvcb', 'cvb', 'cvbcb', 'vcbvcb', 'cv', 'cvbcb', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'python', '', 'created_by', 'modified_by', '2021-02-24 08:05:27', '2021-02-24 08:05:27', 'y'),
(107, 'CL18602', 'SB-494420', 'QS-966156', 'dsadsa ggdd', '', 'ggf', 'zczxcz', 'xzcxzc', 'xcxzc', 'cxxzc', 'ggg', 'hhg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'python', '', 'created_by', 'admin', '2021-02-24 08:09:21', '2021-02-24 09:05:48', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions_csv`
--

CREATE TABLE `tbl_questions_csv` (
  `id` int(11) NOT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  `subject_id` varchar(64) DEFAULT NULL,
  `question_id` varchar(11) DEFAULT NULL,
  `question_text` varchar(500) DEFAULT NULL,
  `answer1` text,
  `answer2` text,
  `answer3` text,
  `answer4` text,
  `answer5` text,
  `answer6` text,
  `answer7` text,
  `option1` varchar(500) DEFAULT NULL,
  `option2` varchar(500) DEFAULT NULL,
  `option3` varchar(500) DEFAULT NULL,
  `option4` varchar(500) DEFAULT NULL,
  `option5` varchar(500) DEFAULT NULL,
  `option6` varchar(500) DEFAULT NULL,
  `option7` varchar(500) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quick_examinations`
--

CREATE TABLE `tbl_quick_examinations` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `subject` varchar(64) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `duration` varchar(64) NOT NULL,
  `passmark` varchar(64) NOT NULL,
  `re_exam` varchar(64) NOT NULL,
  `terms` text NOT NULL,
  `status` varchar(64) NOT NULL DEFAULT 'Active',
  `examinerId` varchar(64) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` varchar(64) NOT NULL,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_quick_examinations`
--

INSERT INTO `tbl_quick_examinations` (`id`, `exam_id`, `category`, `subject`, `exam_name`, `date`, `duration`, `passmark`, `re_exam`, `terms`, `status`, `examinerId`, `created_by`, `created_date`, `currentStatus`) VALUES
(13, '299713', '', '', 'dsfdf', '2021-03-24', '58', '85', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:28:16', 'Y'),
(12, '638774', '', '', '', '', '', '', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:17:26', 'Y'),
(3, '139459', '', '22', '54', '2021-04-01', '45', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:08:43', 'Y'),
(4, '841179', '', '22', '54', '2021-04-01', '45', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:09:34', 'Y'),
(5, '779428', '', '22', '54', '2021-04-01', '45', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:12:16', 'Y'),
(6, '401651', '', '25', 'dfdfdf', '2021-03-17', '54', '45', '', 'Add negative marking', 'Active', '', '', '2021-03-04 00:12:45', 'Y'),
(7, '335162', '', '25', 'dfdfdf', '2021-03-17', '54', '45', '', 'Add negative marking', 'Active', '', '', '2021-03-04 00:17:24', 'Y'),
(8, '950005', '', '', 'dsfsdf', '2021-03-24', '54', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:19:02', 'Y'),
(9, '', '', '', 'sdfsdf', '2021-03-25', '54', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 00:55:20', 'Y'),
(11, '250161', '', '', 'sarthakdeshmukh', '2021-03-02', '78', '78', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:12:20', 'Y'),
(14, '183257', '', '', 'gsjkhdbfjhgfd', '2021-03-28', '56', '45', '', 'No negative marking', 'Active', '', '', '2021-03-04 01:34:10', 'Y'),
(15, 'EX-335608', '', '22', 'ddd', '2021-03-10', '33', '23', '', 'Add negative marking', 'Active', '', '', '2021-03-04 10:56:51', 'Y'),
(16, 'EX-53903', '', '25', 'test', '2021-03-16', '43', '65', '', 'No negative marking', 'Active', '', '', '2021-03-04 10:57:44', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quick_tests`
--

CREATE TABLE `tbl_quick_tests` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(11) NOT NULL,
  `category` varchar(64) DEFAULT NULL,
  `subject` varchar(64) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `duration` varchar(64) NOT NULL,
  `passmark` varchar(64) NOT NULL,
  `re_exam` varchar(64) DEFAULT NULL,
  `terms` text NOT NULL,
  `status` varchar(64) DEFAULT NULL,
  `examinerId` varchar(64) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `con_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`id`, `state_name`, `con_id`) VALUES
(1, 'Badakhshan', 1),
(2, 'Badghis', 1),
(3, 'Baghlan', 1),
(4, 'Balkh', 1),
(5, 'Bamian', 1),
(6, 'Daykondi', 1),
(7, 'Farah', 1),
(8, 'Faryab', 1),
(9, 'Ghazni', 1),
(10, 'Ghowr', 1),
(11, 'Helmand', 1),
(12, 'Herat', 1),
(13, 'Jowzjan', 1),
(14, 'Kabul', 1),
(15, 'Kandahar', 1),
(16, 'Kapisa', 1),
(17, 'Khost', 1),
(18, 'Konar', 1),
(19, 'Kondoz', 1),
(20, 'Laghman', 1),
(21, 'Lowgar', 1),
(22, 'Nangarhar', 1),
(23, 'Nimruz', 1),
(24, 'Nurestan', 1),
(25, 'Oruzgan', 1),
(26, 'Paktia', 1),
(27, 'Paktika', 1),
(28, 'Panjshir', 1),
(29, 'Parvan', 1),
(30, 'Samangan', 1),
(31, 'Sar-e Pol', 1),
(32, 'Takhar', 1),
(33, 'Vardak', 1),
(34, 'Zabol', 1),
(35, 'Berat', 2),
(36, 'Dibres', 2),
(37, 'Durres', 2),
(38, 'Elbasan', 2),
(39, 'Fier', 2),
(40, 'Gjirokastre', 2),
(41, 'Korce', 2),
(42, 'Kukes', 2),
(43, 'Lezhe', 2),
(44, 'Shkoder', 2),
(45, 'Tirane', 2),
(46, 'Vlore', 2),
(47, 'Adrar', 3),
(48, 'Ain Defla', 3),
(49, 'Ain Temouchent', 3),
(50, 'Alger', 3),
(51, 'Annaba', 3),
(52, 'Batna', 3),
(53, 'Bechar', 3),
(54, 'Bejaia', 3),
(55, 'Biskra', 3),
(56, 'Blida', 3),
(57, 'Bordj Bou Arreridj', 3),
(58, 'Bouira', 3),
(59, 'Boumerdes', 3),
(60, 'Chlef', 3),
(61, 'Constantine', 3),
(62, 'Djelfa', 3),
(63, 'El Bayadh', 3),
(64, 'El Oued', 3),
(65, 'El Tarf', 3),
(66, 'Ghardaia', 3),
(67, 'Guelma', 3),
(68, 'Illizi', 3),
(69, 'Jijel', 3),
(70, 'Khenchela', 3),
(71, 'Laghouat', 3),
(72, 'Muaskar', 3),
(73, 'Medea', 3),
(74, 'Mila', 3),
(75, 'Mostaganem', 3),
(76, 'M\'Sila', 3),
(77, 'Naama', 3),
(78, 'Oran', 3),
(79, 'Ouargla', 3),
(80, 'Oum el Bouaghi', 3),
(81, 'Relizane', 3),
(82, 'Saida', 3),
(83, 'Setif', 3),
(84, 'Sidi Bel Abbes', 3),
(85, 'Skikda', 3),
(86, 'Souk Ahras', 3),
(87, 'Tamanghasset', 3),
(88, 'Tebessa', 3),
(89, 'Tiaret', 3),
(90, 'Tindouf', 3),
(91, 'Tipaza', 3),
(92, 'Tissemsilt', 3),
(93, 'Tizi Ouzou', 3),
(94, 'Tlemcen', 3),
(95, 'Tutuila', 4),
(96, 'Other', 4),
(97, 'Other', 5),
(98, 'Bengo', 6),
(99, 'Benguela', 6),
(100, 'Bie', 6),
(101, 'Cabinda', 6),
(102, 'Cuando Cubango', 6),
(103, 'Cuanza Norte', 6),
(104, 'Cuanza Sul', 6),
(105, 'Cunene', 6),
(106, 'Huambo', 6),
(107, 'Huila', 6),
(108, 'Luanda', 6),
(109, 'Lunda Norte', 6),
(110, 'Lunda Sul', 6),
(111, 'Malanje', 6),
(112, 'Moxico', 6),
(113, 'Namibe', 6),
(114, 'Uige', 6),
(115, 'Zaire', 6),
(116, 'Other', 6),
(117, 'Anguilla (General)', 7),
(118, 'Lesser Antilles', 7),
(119, 'Other', 7),
(120, 'Barbuda', 8),
(121, 'Redonda', 8),
(122, 'Saint George', 8),
(123, 'Saint John', 8),
(124, 'Saint Mary', 8),
(125, 'Saint Paul', 8),
(126, 'Saint Peter', 8),
(127, 'Saint Philip', 8),
(128, 'Other', 8),
(129, 'Buenos Aires', 9),
(130, 'Buenos Aires Capital', 9),
(131, 'Catamarca', 9),
(132, 'Chaco', 9),
(133, 'Chubut', 9),
(134, 'Cordoba', 9),
(135, 'Corrientes', 9),
(136, 'Entre Rios', 9),
(137, 'Formosa', 9),
(138, 'Jujuy', 9),
(139, 'La Pampa', 9),
(140, 'La Rioja', 9),
(141, 'Mendoza', 9),
(142, 'Misiones', 9),
(143, 'Neuquen', 9),
(144, 'Rio Negro', 9),
(145, 'Salta', 9),
(146, 'San Juan', 9),
(147, 'San Luis', 9),
(148, 'Santa Cruz', 9),
(149, 'Santa Fe', 9),
(150, 'Santiago del Estero', 9),
(151, 'Tierra del Fuego', 9),
(152, 'Tucuman', 9),
(153, 'Other', 9),
(154, 'Aragatsotn', 10),
(155, 'Ararat', 10),
(156, 'Armavir', 10),
(157, 'Geghark\'unik\'', 10),
(158, 'Kotayk\'', 10),
(159, 'Lorri', 10),
(160, 'Shirak', 10),
(161, 'Syunik\'', 10),
(162, 'Tavush', 10),
(163, 'Vayots\' Dzor', 10),
(164, 'Yerevan', 10),
(165, 'Other', 10),
(166, 'Australian Capital Territory', 11),
(167, 'Jervis Bay Territory', 11),
(168, 'New South Wales', 11),
(169, 'Northern Territory', 11),
(170, 'Queensland', 11),
(171, 'South Australia', 11),
(172, 'Tasmania', 11),
(173, 'Victoria', 11),
(174, 'Western Australia', 11),
(175, 'Other', 11),
(176, 'Burgenland', 12),
(177, 'Kaernten', 12),
(178, 'Niederoesterreich', 12),
(179, 'Oberoesterreich', 12),
(180, 'Salzburg', 12),
(181, 'Steiermark', 12),
(182, 'Tirol', 12),
(183, 'Vorarlberg', 12),
(184, 'Wien', 12),
(185, 'Other', 12),
(186, 'Abseron Rayonu', 13),
(187, 'Agcabadi Rayonu', 13),
(188, 'Agdam Rayonu', 13),
(189, 'Agdas Rayonu', 13),
(190, 'Agstafa Rayonu', 13),
(191, 'Agsu Rayonu', 13),
(192, 'Astara Rayonu', 13),
(193, 'Balakan Rayonu', 13),
(194, 'Barda Rayonu', 13),
(195, 'Beylaqan Rayonu', 13),
(196, 'Bilasuvar Rayonu', 13),
(197, 'Cabrayil Rayonu', 13),
(198, 'Calilabad Rayonu', 13),
(199, 'Daskasan Rayonu', 13),
(200, 'Davaci Rayonu', 13),
(201, 'Fuzuli Rayonu', 13),
(202, 'Gadabay Rayonu', 13),
(203, 'Goranboy Rayonu', 13),
(204, 'Goycay Rayonu', 13),
(205, 'Haciqabul Rayonu', 13),
(206, 'Imisli Rayonu', 13),
(207, 'Ismayilli Rayonu', 13),
(208, 'Kalbacar Rayonu', 13),
(209, 'Kurdamir Rayonu', 13),
(210, 'Lacin Rayonu', 13),
(211, 'Lankaran Rayonu', 13),
(212, 'Lerik Rayonu', 13),
(213, 'Masalli Rayonu', 13),
(214, 'Neftcala Rayonu', 13),
(215, 'Oguz Rayonu', 13),
(216, 'Qabala Rayonu', 13),
(217, 'Qax Rayonu', 13),
(218, 'Qazax Rayonu', 13),
(219, 'Qobustan Rayonu', 13),
(220, 'Quba Rayonu', 13),
(221, 'Qubadli Rayonu', 13),
(222, 'Qusar Rayonu', 13),
(223, 'Saatli Rayonu', 13),
(224, 'Sabirabad Rayonu', 13),
(225, 'Saki Rayonu', 13),
(226, 'Salyan Rayonu', 13),
(227, 'Samaxi Rayonu', 13),
(228, 'Samkir Rayonu', 13),
(229, 'Samux Rayonu', 13),
(230, 'Siyazan Rayonu', 13),
(231, 'Susa Rayonu', 13),
(232, 'Tartar Rayonu', 13),
(233, 'Tovuz Rayonu', 13),
(234, 'Ucar Rayonu', 13),
(235, 'Xacmaz Rayonu', 13),
(236, 'Xanlar Rayonu', 13),
(237, 'Xizi Rayonu', 13),
(238, 'Xocali Rayonu', 13),
(239, 'Xocavand Rayonu', 13),
(240, 'Yardimli Rayonu', 13),
(241, 'Yevlax Rayonu', 13),
(242, 'Zangilan Rayonu', 13),
(243, 'Zaqatala Rayonu', 13),
(244, 'Zardab Rayonu', 13),
(245, 'Ali Bayramli Sahari', 13),
(246, 'Baki Sahari', 13),
(247, 'Ganca Sahari', 13),
(248, 'Lankaran Sahari', 13),
(249, 'Mingacevir Sahari', 13),
(250, 'Naftalan Sahari', 13),
(251, 'Saki Sahari', 13),
(252, 'Sumqayit Sahari', 13),
(253, 'Susa Sahari', 13),
(254, 'Xankandi Sahari', 13),
(255, 'Yevlax Sahari', 13),
(256, 'Naxcivan Muxtar', 13),
(257, 'Other', 13),
(258, 'Acklins and Crooked Islands', 14),
(259, 'Bimini', 14),
(260, 'Cat Island', 14),
(261, 'Exuma', 14),
(262, 'Freeport', 14),
(263, 'Fresh Creek', 14),
(264, 'Governor\'s Harbour', 14),
(265, 'Green Turtle Cay', 14),
(266, 'Harbour Island', 14),
(267, 'High Rock', 14),
(268, 'Inagua', 14),
(269, 'Kemps Bay', 14),
(270, 'Long Island', 14),
(271, 'Marsh Harbour', 14),
(272, 'Mayaguana', 14),
(273, 'New Providence', 14),
(274, 'Nichollstown and Berry Islands', 14),
(275, 'Ragged Island', 14),
(276, 'Rock Sound', 14),
(277, 'Sandy Point', 14),
(278, 'San Salvador and Rum Cay', 14),
(279, 'Other', 14),
(280, 'Al Hadd', 15),
(281, 'Al Manamah', 15),
(282, 'Al Mintaqah al Gharbiyah', 15),
(283, 'Al Mintaqah al Wusta', 15),
(284, 'Al Mintaqah ash Shamaliyah', 15),
(285, 'Al Muharraq', 15),
(286, 'Ar Rifa\' wa al Mintaqah al Janubiyah', 15),
(287, 'Jidd Hafs', 15),
(288, 'Madinat Hamad', 15),
(289, 'Madinat \'Isa', 15),
(290, 'Juzur Hawar', 15),
(291, 'Sitrah', 15),
(292, 'Other', 15),
(293, 'Barisal', 16),
(294, 'Chittagong', 16),
(295, 'Dhaka', 16),
(296, 'Khulna', 16),
(297, 'Rajshahi', 16),
(298, 'Sylhet', 16),
(299, 'Other', 16),
(300, 'Christ Church', 17),
(301, 'Saint Andrew', 17),
(302, 'Saint George', 17),
(303, 'Saint James', 17),
(304, 'Saint John', 17),
(305, 'Saint Joseph', 17),
(306, 'Saint Lucy', 17),
(307, 'Saint Michael', 17),
(308, 'Saint Peter', 17),
(309, 'Saint Philip', 17),
(310, 'Saint Thomas', 17),
(311, 'Other', 17),
(312, 'Brest', 18),
(313, 'Homyel', 18),
(314, 'Horad Minsk', 18),
(315, 'Hrodna', 18),
(316, 'Mahilyow', 18),
(317, 'Minsk', 18),
(318, 'Vitsyebsk', 18),
(319, 'Other', 18),
(320, 'Antwerpen', 19),
(321, 'Brabant Wallon', 19),
(322, 'Brussels', 19),
(323, 'Flanders', 19),
(324, 'Hainaut', 19),
(325, 'Liege', 19),
(326, 'Limburg', 19),
(327, 'Luxembourg', 19),
(328, 'Namur', 19),
(329, 'Oost-Vlaanderen', 19),
(330, 'Vlaams-Brabant', 19),
(331, 'Wallonia', 19),
(332, 'West-Vlaanderen', 19),
(333, 'Other', 19),
(334, 'Belize', 20),
(335, 'Cayo', 20),
(336, 'Corozal', 20),
(337, 'Orange Walk', 20),
(338, 'Stann Creek', 20),
(339, 'Toledo', 20),
(340, 'Other', 20),
(341, 'Devonshire', 21),
(342, 'Hamilton', 21),
(343, 'Hamilton', 21),
(344, 'Paget', 21),
(345, 'Pembroke', 21),
(346, 'Saint George', 21),
(347, 'Saint George\'s', 21),
(348, 'Sandys', 21),
(349, 'Smith\'s', 21),
(350, 'Southampton', 21),
(351, 'Warwick', 21),
(352, 'Other', 21),
(353, 'Bumthang', 22),
(354, 'Chukha', 22),
(355, 'Dagana', 22),
(356, 'Gasa', 22),
(357, 'Haa', 22),
(358, 'Lhuntse', 22),
(359, 'Mongar', 22),
(360, 'Paro', 22),
(361, 'Pemagatshel', 22),
(362, 'Punakha', 22),
(363, 'Samdrup Jongkhar', 22),
(364, 'Samtse', 22),
(365, 'Sarpang', 22),
(366, 'Thimphu', 22),
(367, 'Trashigang', 22),
(368, 'Trashiyangste', 22),
(369, 'Trongsa', 22),
(370, 'Tsirang', 22),
(371, 'Wangdue Phodrang', 22),
(372, 'Zhemgang', 22),
(373, 'Other', 22),
(374, 'Chuquisaca', 23),
(375, 'Cochabamba', 23),
(376, 'Beni', 23),
(377, 'La Paz', 23),
(378, 'Oruro', 23),
(379, 'Pando', 23),
(380, 'Potosi', 23),
(381, 'Santa Cruz', 23),
(382, 'Tarija', 23),
(383, 'Other', 23),
(384, 'Canton Sarajevo', 24),
(385, 'Central Bosnia Canton', 24),
(386, 'Herzegovina-Neretva Canton', 24),
(387, 'Republika Srpska', 24),
(388, 'Tuzla Canton', 24),
(389, 'Una-Sana Canton', 24),
(390, 'West Bosnia', 24),
(391, 'West Bosnia Canton', 24),
(392, 'Zenica-Doboj Canton', 24),
(393, 'Other', 24),
(394, 'Central', 25),
(395, 'Ghanzi', 25),
(396, 'Kgalagadi', 25),
(397, 'Kgatleng', 25),
(398, 'Kweneng', 25),
(399, 'North East', 25),
(400, 'North West', 25),
(401, 'South East', 25),
(402, 'Southern', 25),
(403, 'Other', 25),
(404, 'Acre', 26),
(405, 'Alagoas', 26),
(406, 'Amapa', 26),
(407, 'Amazonas', 26),
(408, 'Bahia', 26),
(409, 'Ceara', 26),
(410, 'Distrito Federal', 26),
(411, 'Espirito Santo', 26),
(412, 'Goias', 26),
(413, 'Maranhao', 26),
(414, 'Mato Grosso', 26),
(415, 'Mato Grosso do Sul', 26),
(416, 'Minas Gerais', 26),
(417, 'Minas Gerais (MG)', 26),
(418, 'Para', 26),
(419, 'Paraiba', 26),
(420, 'Parana', 26),
(421, 'Pernambuco', 26),
(422, 'Piaui', 26),
(423, 'Rio de Janeiro', 26),
(424, 'Rio de Janeiro (RJ)', 26),
(425, 'Rio Grande do Norte', 26),
(426, 'Rio Grande do Sul', 26),
(427, 'Rio Grande do Sul (RS)', 26),
(428, 'Rondonia', 26),
(429, 'Roraima', 26),
(430, 'Santa Catarina', 26),
(431, 'Santa Catarina (SC)', 26),
(432, 'Sao Paulo', 26),
(433, 'Sao Paulo (SP)', 26),
(434, 'Sergipe', 26),
(435, 'Other', 26),
(436, 'Belait', 27),
(437, 'Brunei and Muara', 27),
(438, 'Temburong', 27),
(439, 'Tutong', 27),
(440, 'Other', 27),
(441, 'Burgas Province', 28),
(442, 'Grad Sofiya', 28),
(443, 'Khaskovo', 28),
(444, 'Oblast Pleven', 28),
(445, 'Oblast Sliven', 28),
(446, 'Plovdiv', 28),
(447, 'Ruse', 28),
(448, 'Varna', 28),
(449, 'Other', 28),
(450, 'Kadiogo', 29),
(451, 'Other', 29),
(452, 'Burundi', 30),
(453, 'Other', 30),
(454, 'Phnum Penh', 31),
(455, 'Other', 31),
(456, 'Centre', 32),
(457, 'Cote', 32),
(458, 'Nord Extreme', 32),
(459, 'Other', 32),
(460, 'Alberta', 33),
(461, 'British Columbia', 33),
(462, 'Manitoba', 33),
(463, 'Ontario', 33),
(464, 'Quebec', 33),
(465, 'Alberta', 33),
(466, 'British Columbia', 33),
(467, 'Manitoba', 33),
(468, 'New Brunswick', 33),
(469, 'Newfoundland and Labrador', 33),
(470, 'Northwest Territories', 33),
(471, 'Nova Scotia', 33),
(472, 'Nunavut', 33),
(473, 'Ontario', 33),
(474, 'Prince Edward Island', 33),
(475, 'Quebec', 33),
(476, 'Saskatchewan', 33),
(477, 'Yukon', 33),
(478, 'Other', 33),
(479, 'Praia', 34),
(480, 'Other', 34),
(481, 'Other', 35),
(482, 'Bangui', 36),
(483, 'Other', 36),
(484, 'Chari-Baguirmi', 37),
(485, 'Other', 37),
(486, 'Antofagasta', 38),
(487, 'Araucania', 38),
(488, 'Biobio', 38),
(489, 'Coquimbo', 38),
(490, 'General Bernardo O\'Higgins', 38),
(491, 'Los Lagos', 38),
(492, 'Magallanes y Antartica', 38),
(493, 'Maule', 38),
(494, 'Region Metropolitana', 38),
(495, 'Tarapaca', 38),
(496, 'Valparaiso', 38),
(497, 'Other', 38),
(498, 'Anhui', 39),
(499, 'Anhui (Anhwei)', 39),
(500, 'Beijing Shi (Peking)', 39),
(501, 'Fujian', 39),
(502, 'Fujian (Fukien)', 39),
(503, 'Gansu', 39),
(504, 'Gansu (Kansu)', 39),
(505, 'Guangdong', 39),
(506, 'Guangdong (Kwangtung)', 39),
(507, 'Guangdong Sheng', 39),
(508, 'Guangxi Zhuangzu Zizhiqu (Kwangsi Chu)', 39),
(509, 'Guizhou (Kweichow)', 39),
(510, 'Hebei', 39),
(511, 'Hebei (Hopeh)', 39),
(512, 'Heilongjiang', 39),
(513, 'Heilongjiang (Heilungkiang)', 39),
(514, 'Henan (Honan)', 39),
(515, 'Hubei', 39),
(516, 'Hubei (Hupei)', 39),
(517, 'Hunan', 39),
(518, 'Jiangsu', 39),
(519, 'Jiangsu (Kiangsu)', 39),
(520, 'Jiangxi', 39),
(521, 'Jiangxi (Kiangsi)', 39),
(522, 'Jilin (Kirin)', 39),
(523, 'Liaoning', 39),
(524, 'Nei Menggu Autonomous Region', 39),
(525, 'Nei Mongol Zizhiqu (Inner Mongolia)', 39),
(526, 'Ningxia Huizu Zizhiqu (Nigsia Hui)', 39),
(527, 'Qinghai (Tsinghai)', 39),
(528, 'Shaanxi', 39),
(529, 'Shaanxi (Shensi)', 39),
(530, 'Shandong', 39),
(531, 'Shandong (Shantung)', 39),
(532, 'Shanghai Shi (Shanghai)', 39),
(533, 'Shanxi', 39),
(534, 'Shanxi (Shansi)', 39),
(535, 'Sichuan', 39),
(536, 'Sichuan (Szechwan)', 39),
(537, 'Taiwan', 39),
(538, 'Tianjin Shi (Tientsin)', 39),
(539, 'Xinjiang', 39),
(540, 'Yunnan', 39),
(541, 'Zhejiang', 39),
(542, 'Zhejiang (Chekiang)', 39),
(543, 'Other', 39),
(544, 'Amazonas', 40),
(545, 'Antioquia', 40),
(546, 'Arauca', 40),
(547, 'Atlantico', 40),
(548, 'Bolivar', 40),
(549, 'Boyaca', 40),
(550, 'Caldas', 40),
(551, 'Caqueta', 40),
(552, 'Casanare', 40),
(553, 'Cauca', 40),
(554, 'Cesar', 40),
(555, 'Choco', 40),
(556, 'Cordoba', 40),
(557, 'Cundinamarca', 40),
(558, 'Distrito Especial', 40),
(559, 'Guainia', 40),
(560, 'Guajira', 40),
(561, 'Guaviare', 40),
(562, 'Huila', 40),
(563, 'La Guajira', 40),
(564, 'Magdalena', 40),
(565, 'Meta', 40),
(566, 'Narino', 40),
(567, 'Norte de Santander', 40),
(568, 'Putumayo', 40),
(569, 'Quindio', 40),
(570, 'Risaralda', 40),
(571, 'San Andres y Providencia', 40),
(572, 'Santander', 40),
(573, 'Sucre', 40),
(574, 'Tolima', 40),
(575, 'Valle del Cauca', 40),
(576, 'Vaupes', 40),
(577, 'Vichada', 40),
(578, 'Other', 40),
(579, 'Anjouan Island', 41),
(580, 'Comoros (general)', 41),
(581, 'Grande Comore Island', 41),
(582, 'Mahore', 41),
(583, 'Moheli Island', 41),
(584, 'Other', 41),
(585, 'Bandundu', 42),
(586, 'Bas-Congo', 42),
(587, 'Katanga', 42),
(588, 'Orientale', 42),
(589, 'Other', 42),
(590, 'Bouenza', 43),
(591, 'Brazzaville', 43),
(592, 'Cuvette', 43),
(593, 'Kouilou', 43),
(594, 'Lekoumou', 43),
(595, 'Likouala', 43),
(596, 'Niari', 43),
(597, 'Plateaux', 43),
(598, 'Pool', 43),
(599, 'Sangha', 43),
(600, 'Other', 43),
(601, 'Rarotonga', 44),
(602, 'Other', 44),
(603, 'Alajuela', 45),
(604, 'Cartago', 45),
(605, 'Other', 45),
(606, 'Abidjan', 46),
(607, 'Bouake', 46),
(608, 'Yamoussoukro', 46),
(609, 'Other', 46),
(610, 'Bjelovarsko-Bilogorska', 47),
(611, 'Brodsko-Posavska', 47),
(612, 'Dubrovacko-Neretvanska', 47),
(613, 'Istarska', 47),
(614, 'Karlovacka', 47),
(615, 'Koprivnicko-Krizevacka', 47),
(616, 'Krapinsko-Zagorska', 47),
(617, 'Licko-Senjska', 47),
(618, 'Medimurska', 47),
(619, 'Osjecko-Baranjska', 47),
(620, 'Pozesko-Slavonska', 47),
(621, 'Primorsko-Goranska', 47),
(622, 'Sibensko-Kninska', 47),
(623, 'Sisacko-Moslavacka', 47),
(624, 'Splitsko-Dalmatinska', 47),
(625, 'Varazdinska', 47),
(626, 'Viroviticko-Podravska', 47),
(627, 'Vukovarsko-Srijemska', 47),
(628, 'Zadarska', 47),
(629, 'Zagreb', 47),
(630, 'Zagrebacka', 47),
(631, 'Other', 47),
(632, 'Camaguey', 48),
(633, 'Ciego de Avila', 48),
(634, 'Cienfuegos', 48),
(635, 'Ciudad de La Habana', 48),
(636, 'Granma', 48),
(637, 'Guantanamo', 48),
(638, 'Holguin', 48),
(639, 'Isla de la Juventud', 48),
(640, 'La Habana', 48),
(641, 'Las Tunas', 48),
(642, 'Matanzas', 48),
(643, 'Pinar del Rio', 48),
(644, 'Sancti Spiritus', 48),
(645, 'Santiago de Cuba', 48),
(646, 'Villa Clara', 48),
(647, 'Other', 48),
(648, 'Famagusta', 49),
(649, 'Kyrenia', 49),
(650, 'Larnaca', 49),
(651, 'Limassol', 49),
(652, 'Nicosia', 49),
(653, 'Paphos', 49),
(654, 'Other', 49),
(655, 'Jihocesky Kraj', 50),
(656, 'Jihomoravsky Kraj', 50),
(657, 'Karlovarsky Kraj', 50),
(658, 'Kralovehradecky Kraj', 50),
(659, 'Liberecky Kraj', 50),
(660, 'Moravskoslezsky Kraj', 50),
(661, 'Olomoucky Kraj', 50),
(662, 'Pardubicky Kraj', 50),
(663, 'Plzensky Kraj', 50),
(664, 'Praha', 50),
(665, 'Stredocesky Kraj', 50),
(666, 'Ustecky Kraj', 50),
(667, 'Vysocina', 50),
(668, 'Zlinsky Kraj', 50),
(669, 'Other', 50),
(670, 'Arhus', 51),
(671, 'Bornholm', 51),
(672, 'Frederiksberg', 51),
(673, 'Frederiksborg', 51),
(674, 'Fyn', 51),
(675, 'Kobenhavn', 51),
(676, 'Kobenhavns', 51),
(677, 'Nordjylland', 51),
(678, 'Ribe', 51),
(679, 'Ringkobing', 51),
(680, 'Roskilde', 51),
(681, 'Sonderjylland', 51),
(682, 'Storstrom', 51),
(683, 'Vejle', 51),
(684, 'Vestsjalland', 51),
(685, 'Viborg', 51),
(686, 'Other', 51),
(687, 'Ali Sabih', 52),
(688, 'Dikhil', 52),
(689, 'Djibouti', 52),
(690, 'Obock', 52),
(691, 'Tadjoura', 52),
(692, 'Other', 52),
(693, 'Saint Andrew', 53),
(694, 'Saint David', 53),
(695, 'Saint George', 53),
(696, 'Saint John', 53),
(697, 'Saint Joseph', 53),
(698, 'Saint Luke', 53),
(699, 'Saint Mark', 53),
(700, 'Saint Patrick', 53),
(701, 'Saint Paul', 53),
(702, 'Saint Peter', 53),
(703, 'Other', 53),
(704, 'Azua', 54),
(705, 'Baoruco', 54),
(706, 'Barahona', 54),
(707, 'Dajabon', 54),
(708, 'Distrito Nacional', 54),
(709, 'Duarte', 54),
(710, 'Elias Pina', 54),
(711, 'El Seibo', 54),
(712, 'Espaillat', 54),
(713, 'Hato Mayor', 54),
(714, 'Independencia', 54),
(715, 'La Altagracia', 54),
(716, 'La Romana', 54),
(717, 'La Vega', 54),
(718, 'Maria Trinidad Sanchez', 54),
(719, 'Monsenor Nouel', 54),
(720, 'Monte Cristi', 54),
(721, 'Monte Plata', 54),
(722, 'Pedernales', 54),
(723, 'Peravia', 54),
(724, 'Puerto Plata', 54),
(725, 'Salcedo', 54),
(726, 'Samana', 54),
(727, 'Sanchez Ramirez', 54),
(728, 'San Cristobal', 54),
(729, 'San Jose de Ocoa', 54),
(730, 'San Juan', 54),
(731, 'San Pedro de Macoris', 54),
(732, 'Santiago', 54),
(733, 'Santiago Rodriguez', 54),
(734, 'Santo Domingo', 54),
(735, 'Valverde', 54),
(736, 'Other', 54),
(737, 'Aileu', 55),
(738, 'Ainaro', 55),
(739, 'Baucau', 55),
(740, 'Bobonaro', 55),
(741, 'Cova-Lima', 55),
(742, 'Dili', 55),
(743, 'Ermera', 55),
(744, 'Lautem', 55),
(745, 'Liquica', 55),
(746, 'Manatuto', 55),
(747, 'Manufahi', 55),
(748, 'Oecussi', 55),
(749, 'Viqueque', 55),
(750, 'Other', 55),
(751, 'Azuay', 56),
(752, 'Bolivar', 56),
(753, 'Canar', 56),
(754, 'Carchi', 56),
(755, 'Chimborazo', 56),
(756, 'Cotopaxi', 56),
(757, 'El Oro', 56),
(758, 'Esmeraldas', 56),
(759, 'Galapagos', 56),
(760, 'Guayas', 56),
(761, 'Imbabura', 56),
(762, 'Loja', 56),
(763, 'Los Rios', 56),
(764, 'Manabi', 56),
(765, 'Morona-Santiago', 56),
(766, 'Napo', 56),
(767, 'Orellana', 56),
(768, 'Pastaza', 56),
(769, 'Pichincha', 56),
(770, 'Sucumbios', 56),
(771, 'Tungurahua', 56),
(772, 'Zamora-Chinchipe', 56),
(773, 'Other', 56),
(774, 'Ad Daqahliyah', 57),
(775, 'Al Bahr al Ahmar', 57),
(776, 'Al Buhayrah', 57),
(777, 'Al Fayyum', 57),
(778, 'Al Gharbiyah', 57),
(779, 'Al Iskandariyah', 57),
(780, 'Al Isma\'iliyah', 57),
(781, 'Al Jizah', 57),
(782, 'Al Minufiyah', 57),
(783, 'Al Minya', 57),
(784, 'Al Qahirah', 57),
(785, 'Al Qalyubiyah', 57),
(786, 'Al Wadi al Jadid', 57),
(787, 'Ash Sharqiyah', 57),
(788, 'As Suways', 57),
(789, 'Aswan', 57),
(790, 'Asyut', 57),
(791, 'Bani Suwayf', 57),
(792, 'Bur Sa\'id', 57),
(793, 'Dumyat', 57),
(794, 'Janub Sina\'', 57),
(795, 'Kafr ash Shaykh', 57),
(796, 'Matruh', 57),
(797, 'Qina', 57),
(798, 'Shamal Sina\'', 57),
(799, 'Suhaj', 57),
(800, 'Other', 57),
(801, 'Ahuachapan', 58),
(802, 'Cabanas', 58),
(803, 'Chalatenango', 58),
(804, 'Cuscatlan', 58),
(805, 'La Libertad', 58),
(806, 'La Paz', 58),
(807, 'La Union', 58),
(808, 'Morazan', 58),
(809, 'San Miguel', 58),
(810, 'San Salvador', 58),
(811, 'Santa Ana', 58),
(812, 'San Vicente', 58),
(813, 'Sonsonate', 58),
(814, 'Usulutan', 58),
(815, 'Other', 58),
(816, 'Annobon', 59),
(817, 'Bioko Norte', 59),
(818, 'Bioko Sur', 59),
(819, 'Centro Sur', 59),
(820, 'Kie-Ntem', 59),
(821, 'Litoral', 59),
(822, 'Wele-Nzas', 59),
(823, 'Other', 59),
(824, 'Anseba', 60),
(825, 'Debub', 60),
(826, 'Debubawi K\'eyih Bahri', 60),
(827, 'Gash Barka', 60),
(828, 'Ma\'akel', 60),
(829, 'Semenawi Keyih Bahri', 60),
(830, 'Other', 60),
(831, 'Harjumaa (Tallinn)', 61),
(832, 'Hiiumaa (Kardla)', 61),
(833, 'Ida-Virumaa (Johvi)', 61),
(834, 'Jarvamaa (Paide)', 61),
(835, 'Jogevamaa (Jogeva)', 61),
(836, 'Laanemaa (Haapsalu)', 61),
(837, 'Laane-Virumaa (Rakvere)', 61),
(838, 'Parnumaa (Parnu)', 61),
(839, 'Polvamaa (Polva)', 61),
(840, 'Raplamaa (Rapla)', 61),
(841, 'Saaremaa (Kuressaare)', 61),
(842, 'Tartumaa (Tartu)', 61),
(843, 'Valgamaa (Valga)', 61),
(844, 'Viljandimaa (Viljandi)', 61),
(845, 'Vorumaa (Voru)', 61),
(846, 'Other', 61),
(847, 'Addis Ababa', 62),
(848, 'Afar', 62),
(849, 'Amhara', 62),
(850, 'Binshangul Gumuz', 62),
(851, 'Dire Dawa', 62),
(852, 'Gambela Hizboch', 62),
(853, 'Harari', 62),
(854, 'Oromia', 62),
(855, 'Somali', 62),
(856, 'Tigray', 62),
(857, 'Southern Nations, Nationalities, and Peoples Region', 62),
(858, 'Other', 63),
(859, 'Other', 64),
(860, 'Central (Suva)', 65),
(861, 'Eastern (Levuka)', 65),
(862, 'Northern (Labasa)', 65),
(863, 'Rotuma', 65),
(864, 'Western (Lautoka)', 65),
(865, 'Other', 65),
(866, 'Aland', 66),
(867, 'Etela-Suomen Laani', 66),
(868, 'Ita-Suomen Laani', 66),
(869, 'Lansi-Suomen Laani', 66),
(870, 'Lappi', 66),
(871, 'Oulun Laani', 66),
(872, 'Other', 66),
(873, 'Alsace', 67),
(874, 'Aquitaine', 67),
(875, 'Auvergne', 67),
(876, 'Basse-Normandie', 67),
(877, 'Bourgogne', 67),
(878, 'Bretagne', 67),
(879, 'Centre', 67),
(880, 'Champagne-Ardenne', 67),
(881, 'Corse', 67),
(882, 'Franche-Comte', 67),
(883, 'Haute-Normandie', 67),
(884, 'Ile-de-France', 67),
(885, 'Languedoc-Roussillon', 67),
(886, 'Limousin', 67),
(887, 'Lorraine', 67),
(888, 'Midi-Pyrenees', 67),
(889, 'Nord-Pas-de-Calais', 67),
(890, 'Pays de la Loire', 67),
(891, 'Picardie', 67),
(892, 'Poitou-Charentes', 67),
(893, 'Provence-Alpes-Cote d\'Azur', 67),
(894, 'Rhone-Alpes', 67),
(895, 'Other', 67),
(896, 'Estuaire', 68),
(897, 'Haut-Ogooue', 68),
(898, 'Moyen-Ogooue', 68),
(899, 'Ngounie', 68),
(900, 'Nyanga', 68),
(901, 'Ogooue-Ivindo', 68),
(902, 'Ogooue-Lolo', 68),
(903, 'Ogooue-Maritime', 68),
(904, 'Woleu-Ntem', 68),
(905, 'Other', 68),
(906, 'Banjul', 69),
(907, 'Central River', 69),
(908, 'Lower River', 69),
(909, 'North Bank', 69),
(910, 'Upper River', 69),
(911, 'Western', 69),
(912, 'Other', 69),
(913, 'Abkhazia', 70),
(914, 'Adjara', 70),
(915, 'Guria', 70),
(916, 'Imereti', 70),
(917, 'Kakheti', 70),
(918, 'Kvemo Kartli', 70),
(919, 'Mtskheta-Mtianeti', 70),
(920, 'Racha-Lechkhumi and Kvemo Svaneti', 70),
(921, 'Samegrelo-Zemo', 70),
(922, 'Svaneti', 70),
(923, 'Samtskhe', 70),
(924, 'Javakheti', 70),
(925, 'Shida Kartli', 70),
(926, 'Tbilisi', 70),
(927, 'Other', 70),
(928, 'Baden-Wuerttemberg', 71),
(929, 'Bayern', 71),
(930, 'Berlin', 71),
(931, 'Brandenburg', 71),
(932, 'Bremen', 71),
(933, 'Hamburg', 71),
(934, 'Hessen', 71),
(935, 'Mecklenburg-Vorpommern', 71),
(936, 'Niedersachsen', 71),
(937, 'Nordrhein-Westfalen', 71),
(938, 'Rheinland-Pfalz', 71),
(939, 'Saarland', 71),
(940, 'Sachsen', 71),
(941, 'Sachsen-Anhalt', 71),
(942, 'Schleswig-Holstein', 71),
(943, 'Thueringen', 71),
(944, 'Other', 71),
(945, 'Ashanti', 72),
(946, 'Brong-Ahafo', 72),
(947, 'Central', 72),
(948, 'Eastern', 72),
(949, 'Greater Accra', 72),
(950, 'Northern', 72),
(951, 'Upper East', 72),
(952, 'Upper West', 72),
(953, 'Volta', 72),
(954, 'Western', 72),
(955, 'Other', 72),
(956, 'Gibraltar', 73),
(957, 'Other', 73),
(958, 'Agion Oros', 74),
(959, 'Achaia', 74),
(960, 'Aitolia kai Akarmania', 74),
(961, 'Argolis', 74),
(962, 'Arkadia', 74),
(963, 'Arta', 74),
(964, 'Attiki', 74),
(965, 'Chalkidiki', 74),
(966, 'Chanion', 74),
(967, 'Chios', 74),
(968, 'Dodekanisos', 74),
(969, 'Drama', 74),
(970, 'Evros', 74),
(971, 'Evrytania', 74),
(972, 'Evvoia', 74),
(973, 'Florina', 74),
(974, 'Fokidos', 74),
(975, 'Fthiotis', 74),
(976, 'Grevena', 74),
(977, 'Ileia', 74),
(978, 'Imathia', 74),
(979, 'Ioannina', 74),
(980, 'Irakleion', 74),
(981, 'Karditsa', 74),
(982, 'Kastoria', 74),
(983, 'Kavala', 74),
(984, 'Kefallinia', 74),
(985, 'Kerkyra', 74),
(986, 'Kilkis', 74),
(987, 'Korinthia', 74),
(988, 'Kozani', 74),
(989, 'Kyklades', 74),
(990, 'Lakonia', 74),
(991, 'Larisa', 74),
(992, 'Lasithi', 74),
(993, 'Lefkas', 74),
(994, 'Lesvos', 74),
(995, 'Magnisia', 74),
(996, 'Messinia', 74),
(997, 'Pella', 74),
(998, 'Pieria', 74),
(999, 'Preveza', 74),
(1000, 'Rethynnis', 74),
(1001, 'Rodopi', 74),
(1002, 'Samos', 74),
(1003, 'Serrai', 74),
(1004, 'Thesprotia', 74),
(1005, 'Thessaloniki', 74),
(1006, 'Trikala', 74),
(1007, 'Voiotia', 74),
(1008, 'Xanthi', 74),
(1009, 'Zakynthos', 74),
(1010, 'Other', 74),
(1011, 'Avannaa (Nordgronland)', 75),
(1012, 'Tunu (Ostgronland)', 75),
(1013, 'Kitaa (Vestgronland)', 75),
(1014, 'Other', 75),
(1015, 'Carriacou and Petit Martinique', 76),
(1016, 'Saint Andrew', 76),
(1017, 'Saint David', 76),
(1018, 'Saint George', 76),
(1019, 'Saint John', 76),
(1020, 'Saint Mark', 76),
(1021, 'Saint Patrick', 76),
(1022, 'Other', 76),
(1023, 'Guadeloupe (General)', 77),
(1024, 'Other', 77),
(1025, 'Northern Mariana', 78),
(1026, 'Other', 78),
(1027, 'Alta Verapaz', 79),
(1028, 'Baja Verapaz', 79),
(1029, 'Chimaltenango', 79),
(1030, 'Chiquimula', 79),
(1031, 'El Progreso', 79),
(1032, 'Escuintla', 79),
(1033, 'Guatemala', 79),
(1034, 'Huehuetenango', 79),
(1035, 'Izabal', 79),
(1036, 'Jalapa', 79),
(1037, 'Jutiapa', 79),
(1038, 'Peten', 79),
(1039, 'Quetzaltenango', 79),
(1040, 'Quiche', 79),
(1041, 'Retalhuleu', 79),
(1042, 'Sacatepequez', 79),
(1043, 'San Marcos', 79),
(1044, 'Santa Rosa', 79),
(1045, 'Solola', 79),
(1046, 'Suchitepequez', 79),
(1047, 'Totonicapan', 79),
(1048, 'Zacapa', 79),
(1049, 'Other', 79),
(1050, 'Beyla', 80),
(1051, 'Boffa', 80),
(1052, 'Boke', 80),
(1053, 'Conakry', 80),
(1054, 'Coyah', 80),
(1055, 'Dabola', 80),
(1056, 'Dalaba', 80),
(1057, 'Dinguiraye', 80),
(1058, 'Dubreka', 80),
(1059, 'Faranah', 80),
(1060, 'Forecariah', 80),
(1061, 'Fria', 80),
(1062, 'Gaoual', 80),
(1063, 'Gueckedou', 80),
(1064, 'Kankan', 80),
(1065, 'Kerouane', 80),
(1066, 'Kindia', 80),
(1067, 'Kissidougou', 80),
(1068, 'Koubia', 80),
(1069, 'Koundara', 80),
(1070, 'Kouroussa', 80),
(1071, 'Labe', 80),
(1072, 'Lelouma', 80),
(1073, 'Lola', 80),
(1074, 'Macenta', 80),
(1075, 'Mali', 80),
(1076, 'Mamou', 80),
(1077, 'Mandiana', 80),
(1078, 'Nzerekore', 80),
(1079, 'Pita', 80),
(1080, 'Siguiri', 80),
(1081, 'Telimele', 80),
(1082, 'Tougue', 80),
(1083, 'Yomou', 80),
(1084, 'Other', 80),
(1085, 'Bafata', 81),
(1086, 'Biombo', 81),
(1087, 'Bissau', 81),
(1088, 'Bolama', 81),
(1089, 'Cacheu', 81),
(1090, 'Gabu', 81),
(1091, 'Oio', 81),
(1092, 'Quinara', 81),
(1093, 'Tombali', 81),
(1094, 'Other', 81),
(1095, 'Barima-Waini', 82),
(1096, 'Cuyuni-Mazaruni', 82),
(1097, 'Demerara-Mahaica', 82),
(1098, 'East Berbice-Corentyne', 82),
(1099, 'Essequibo Islands-West Demerara', 82),
(1100, 'Mahaica-Berbice', 82),
(1101, 'Pomeroon-Supenaam', 82),
(1102, 'Potaro-Siparuni', 82),
(1103, 'Upper Demerara-Berbice', 82),
(1104, 'Upper Takutu-Upper Essequibo', 82),
(1105, 'Other', 82),
(1106, 'Artibonite', 83),
(1107, 'Centre', 83),
(1108, 'Grand \'Anse', 83),
(1109, 'Nord', 83),
(1110, 'Nord-Est', 83),
(1111, 'Nord-Ouest', 83),
(1112, 'Ouest', 83),
(1113, 'Sud', 83),
(1114, 'Sud-Est', 83),
(1115, 'Other', 83),
(1116, 'Vatican City State', 84),
(1117, 'Other', 84),
(1118, 'Atlantida', 85),
(1119, 'Choluteca', 85),
(1120, 'Colon', 85),
(1121, 'Comayagua', 85),
(1122, 'Copan', 85),
(1123, 'Cortes', 85),
(1124, 'El Paraiso', 85),
(1125, 'Francisco Morazan', 85),
(1126, 'Gracias a Dios', 85),
(1127, 'Intibuca', 85),
(1128, 'Islas de la Bahia', 85),
(1129, 'La Paz', 85),
(1130, 'Lempira', 85),
(1131, 'Ocotepeque', 85),
(1132, 'Olancho', 85),
(1133, 'Santa Barbara', 85),
(1134, 'Valle', 85),
(1135, 'Yoro', 85),
(1136, 'Other', 85),
(1137, 'Hong Kong (general)', 86),
(1138, 'Kowloon', 86),
(1139, 'Lantau Island', 86),
(1140, 'Yuen Long', 86),
(1141, 'Other', 86),
(1142, 'Bacs-Kiskun', 87),
(1143, 'Baranya', 87),
(1144, 'Bekes', 87),
(1145, 'Borsod-Abauj-Zemplen', 87),
(1146, 'Csongrad', 87),
(1147, 'Fejer', 87),
(1148, 'Gyor-Moson-Sopron', 87),
(1149, 'Hajdu-Bihar', 87),
(1150, 'Heves', 87),
(1151, 'Jasz-Nagykun-Szolnok', 87),
(1152, 'Komarom-Esztergom', 87),
(1153, 'Nograd', 87),
(1154, 'Pest', 87),
(1155, 'Somogy', 87),
(1156, 'Szabolcs-Szatmar-Bereg', 87),
(1157, 'Tolna', 87),
(1158, 'Vas', 87),
(1159, 'Veszprem', 87),
(1160, 'Zala', 87),
(1161, 'Bekescsaba', 87),
(1162, 'Debrecen', 87),
(1163, 'Dunaujvaros', 87),
(1164, 'Eger', 87),
(1165, 'Gyor', 87),
(1166, 'Hodmezovasarhely', 87),
(1167, 'Kaposvar', 87),
(1168, 'Kecskemet', 87),
(1169, 'Miskolc', 87),
(1170, 'Nagykanizsa', 87),
(1171, 'Nyiregyhaza', 87),
(1172, 'Pecs', 87),
(1173, 'Sopron', 87),
(1174, 'Szeged', 87),
(1175, 'Szekesfehervar', 87),
(1176, 'Szolnok', 87),
(1177, 'Szombathely', 87),
(1178, 'Tatabanya', 87),
(1179, 'Veszprem', 87),
(1180, 'Zalaegerszeg', 87),
(1181, 'Other', 87),
(1182, 'Austurland', 88),
(1183, 'Hofudhborgarsvaedhi', 88),
(1184, 'Nordhurland Eystra', 88),
(1185, 'Nordhurland Vestra', 88),
(1186, 'Sudhurland', 88),
(1187, 'Sudhurnes', 88),
(1188, 'Vestfirdhir', 88),
(1189, 'Vesturland', 88),
(1190, 'Other', 88),
(1191, 'Andaman and Nicobar Islands', 89),
(1192, 'Andhra Pradesh', 89),
(1193, 'Arunachal Pradesh', 89),
(1194, 'Assam', 89),
(1195, 'Bihar', 89),
(1196, 'Chandigarh', 89),
(1197, 'Chhattisgarh', 89),
(1198, 'Dadra and Nagar Haveli', 89),
(1199, 'Daman and Diu', 89),
(1200, 'Delhi', 89),
(1201, 'Goa', 89),
(1202, 'Gujarat', 89),
(1203, 'Haryana', 89),
(1204, 'Himachal Pradesh', 89),
(1205, 'Jammu and Kashmir', 89),
(1206, 'Jharkhand', 89),
(1207, 'Karnataka', 89),
(1208, 'Kerala', 89),
(1209, 'Lakshadweep', 89),
(1210, 'Madhya Pradesh', 89),
(1211, 'Maharashtra', 89),
(1212, 'Manipur', 89),
(1213, 'Meghalaya', 89),
(1214, 'Mizoram', 89),
(1215, 'Nagaland', 89),
(1216, 'Orissa', 89),
(1217, 'Pondicherry', 89),
(1218, 'Punjab', 89),
(1219, 'Rajasthan', 89),
(1220, 'Sikkim', 89),
(1221, 'Tamil Nadu', 89),
(1222, 'Tripura', 89),
(1223, 'Uttaranchal', 89),
(1224, 'Uttar Pradesh', 89),
(1225, 'West Bengal', 89),
(1226, 'Other', 89),
(1227, 'Aceh', 90),
(1228, 'Bali', 90),
(1229, 'Banten', 90),
(1230, 'Bengkulu', 90),
(1231, 'Gorontalo', 90),
(1232, 'Irian Jaya Barat', 90),
(1233, 'Jakarta Raya', 90),
(1234, 'Jambi', 90),
(1235, 'Jawa Barat', 90),
(1236, 'Jawa Tengah', 90),
(1237, 'Jawa Timur', 90),
(1238, 'Kalimantan Barat', 90),
(1239, 'Kalimantan Selatan', 90),
(1240, 'Kalimantan Tengah', 90),
(1241, 'Kalimantan Timur', 90),
(1242, 'Kepulauan Bangka Belitung', 90),
(1243, 'Kepulauan Riau', 90),
(1244, 'Lampung', 90),
(1245, 'Maluku', 90),
(1246, 'Maluku Utara', 90),
(1247, 'Nusa Tenggara Barat', 90),
(1248, 'Nusa Tenggara Timur', 90),
(1249, 'Papua', 90),
(1250, 'Riau', 90),
(1251, 'Sulawesi Barat', 90),
(1252, 'Sulawesi Selatan', 90),
(1253, 'Sulawesi Tengah', 90),
(1254, 'Sulawesi Tenggara', 90),
(1255, 'Sulawesi Utara', 90),
(1256, 'Sumatera Barat', 90),
(1257, 'Sumatera Selatan', 90),
(1258, 'Sumatera Utara', 90),
(1259, 'Yogyakarta', 90),
(1260, 'Other', 90),
(1261, 'Ardabil', 91),
(1262, 'Azarbayjan-e Gharbi', 91),
(1263, 'Azarbayjan-e Sharqi', 91),
(1264, 'Bushehr', 91),
(1265, 'Chahar Mahall va Bakhtiari', 91),
(1266, 'Esfahan', 91),
(1267, 'Fars', 91),
(1268, 'Gilan', 91),
(1269, 'Golestan', 91),
(1270, 'Hamadan', 91),
(1271, 'Hormozgan', 91),
(1272, 'Ilam', 91),
(1273, 'Kerman', 91),
(1274, 'Kermanshah', 91),
(1275, 'Khorasan-e Janubi', 91),
(1276, 'Khorasan-e Razavi', 91),
(1277, 'Khorasan-e Shemali', 91),
(1278, 'Khuzestan', 91),
(1279, 'Kohgiluyeh va Buyer Ahmad', 91),
(1280, 'Kordestan', 91),
(1281, 'Lorestan', 91),
(1282, 'Markazi', 91),
(1283, 'Mazandaran', 91),
(1284, 'Qazvin', 91),
(1285, 'Qom', 91),
(1286, 'Semnan', 91),
(1287, 'Sistan va Baluchestan', 91),
(1288, 'Tehran', 91),
(1289, 'Yazd', 91),
(1290, 'Zanjan', 91),
(1291, 'Other', 91),
(1292, 'Al Anbar', 92),
(1293, 'Al Basrah', 92),
(1294, 'Al Muthanna', 92),
(1295, 'Al Qadisiyah', 92),
(1296, 'An Najaf', 92),
(1297, 'Arbil', 92),
(1298, 'As Sulaymaniyah', 92),
(1299, 'At Ta\'mim', 92),
(1300, 'Babil', 92),
(1301, 'Baghdad', 92),
(1302, 'Dahuk', 92),
(1303, 'Dhi Qar', 92),
(1304, 'Diyala', 92),
(1305, 'Karbala\'', 92),
(1306, 'Maysan', 92),
(1307, 'Ninawa', 92),
(1308, 'Salah ad Din', 92),
(1309, 'Wasit', 92),
(1310, 'Other', 92),
(1311, 'Carlow', 93),
(1312, 'Cavan', 93),
(1313, 'Clare', 93),
(1314, 'Cork', 93),
(1315, 'Donegal', 93),
(1316, 'Dublin', 93),
(1317, 'Galway', 93),
(1318, 'Kerry', 93),
(1319, 'Kildare', 93),
(1320, 'Kilkenny', 93),
(1321, 'Laois', 93),
(1322, 'Leitrim', 93),
(1323, 'Limerick', 93),
(1324, 'Longford', 93),
(1325, 'Louth', 93),
(1326, 'Mayo', 93),
(1327, 'Meath', 93),
(1328, 'Monaghan', 93),
(1329, 'Offaly', 93),
(1330, 'Roscommon', 93),
(1331, 'Sligo', 93),
(1332, 'Tipperary', 93),
(1333, 'Waterford', 93),
(1334, 'Westmeath', 93),
(1335, 'Wexford', 93),
(1336, 'Wicklow', 93),
(1337, 'Other', 93),
(1338, 'Central', 94),
(1339, 'Haifa', 94),
(1340, 'Jerusalem', 94),
(1341, 'Northern', 94),
(1342, 'Southern', 94),
(1343, 'Tel Aviv', 94),
(1344, 'Other', 94),
(1345, 'Abruzzo', 95),
(1346, 'Basilicata', 95),
(1347, 'Calabria', 95),
(1348, 'Campania', 95),
(1349, 'Emilia-Romagna', 95),
(1350, 'Friuli-Venezia Giulia', 95),
(1351, 'Lazio', 95),
(1352, 'Liguria', 95),
(1353, 'Lombardia', 95),
(1354, 'Marche', 95),
(1355, 'Molise', 95),
(1356, 'Piemonte', 95),
(1357, 'Puglia', 95),
(1358, 'Sardegna', 95),
(1359, 'Sicilia', 95),
(1360, 'Toscana', 95),
(1361, 'Trentino-Alto Adige', 95),
(1362, 'Umbria', 95),
(1363, 'Valle d\'Aosta', 95),
(1364, 'Veneto', 95),
(1365, 'Other', 95),
(1366, 'Clarendon', 96),
(1367, 'Hanover', 96),
(1368, 'Kingston', 96),
(1369, 'Manchester', 96),
(1370, 'Portland', 96),
(1371, 'Saint Andrew', 96),
(1372, 'Saint Ann', 96),
(1373, 'Saint Catherine', 96),
(1374, 'Saint Elizabeth', 96),
(1375, 'Saint James', 96),
(1376, 'Saint Mary', 96),
(1377, 'Saint Thomas', 96),
(1378, 'Trelawny', 96),
(1379, 'Westmoreland', 96),
(1380, 'Other', 96),
(1381, 'Aichi', 97),
(1382, 'Akita', 97),
(1383, 'Aomori', 97),
(1384, 'Chiba', 97),
(1385, 'Ehime', 97),
(1386, 'Fukui', 97),
(1387, 'Fukuoka', 97),
(1388, 'Fukushima', 97),
(1389, 'Gifu', 97),
(1390, 'Gumma', 97),
(1391, 'Hiroshima', 97),
(1392, 'Hokkaido', 97),
(1393, 'Hyogo', 97),
(1394, 'Ibaraki', 97),
(1395, 'Ishikawa', 97),
(1396, 'Iwate', 97),
(1397, 'Kagawa', 97),
(1398, 'Kagoshima', 97),
(1399, 'Kanagawa', 97),
(1400, 'Kochi', 97),
(1401, 'Kumamoto', 97),
(1402, 'Kyoto', 97),
(1403, 'Mie', 97),
(1404, 'Miyagi', 97),
(1405, 'Miyazaki', 97),
(1406, 'Nagano', 97),
(1407, 'Nagasaki', 97),
(1408, 'Nara', 97),
(1409, 'Niigata', 97),
(1410, 'Oita', 97),
(1411, 'Okayama', 97),
(1412, 'Okinawa', 97),
(1413, 'Osaka', 97),
(1414, 'Saga', 97),
(1415, 'Saitama', 97),
(1416, 'Shiga', 97),
(1417, 'Shimane', 97),
(1418, 'Shizuoka', 97),
(1419, 'Tochigi', 97),
(1420, 'Tokushima', 97),
(1421, 'Tokyo', 97),
(1422, 'Tottori', 97),
(1423, 'Toyama', 97),
(1424, 'Wakayama', 97),
(1425, 'Yamagata', 97),
(1426, 'Yamaguchi', 97),
(1427, 'Yamanashi', 97),
(1428, 'Other', 97),
(1429, 'Ajlun', 98),
(1430, 'Al \'Aqabah', 98),
(1431, 'Al Balqa\'', 98),
(1432, 'Al Karak', 98),
(1433, 'Al Mafraq', 98),
(1434, '\'Amman', 98),
(1435, 'At Tafilah', 98),
(1436, 'Az Zarqa\'', 98),
(1437, 'Irbid', 98),
(1438, 'Jarash', 98),
(1439, 'Ma\'an', 98),
(1440, 'Madaba', 98),
(1441, 'Other', 98),
(1442, 'Almaty Oblysy', 99),
(1443, 'Almaty Qalasy', 99),
(1444, 'Aqmola Oblysy', 99),
(1445, 'Aqtobe Oblysy', 99),
(1446, 'Astana Qalasy', 99),
(1447, 'Atyrau Oblysy', 99),
(1448, 'Batys Qazaqstan Oblysy', 99),
(1449, 'Bayqongyr Qalasy', 99),
(1450, 'Mangghystau Oblysy', 99),
(1451, 'Ongtustik Qazaqstan Oblysy', 99),
(1452, 'Pavlodar Oblysy', 99),
(1453, 'Qaraghandy Oblysy', 99),
(1454, 'Qostanay Oblysy', 99),
(1455, 'Qyzylorda Oblysy', 99),
(1456, 'Shyghys Qazaqstan Oblysy', 99),
(1457, 'Soltustik Qazaqstan Oblysy', 99),
(1458, 'Zhambyl Oblysy', 99),
(1459, 'Other', 99),
(1460, 'Central', 100),
(1461, 'Coast', 100),
(1462, 'Eastern', 100),
(1463, 'Nairobi Area', 100),
(1464, 'North Eastern', 100),
(1465, 'Nyanza', 100),
(1466, 'Rift Valley', 100),
(1467, 'Western', 100),
(1468, 'Other', 100),
(1469, 'Tarawa Island', 101),
(1470, 'Other', 101),
(1471, 'Chagang', 102),
(1472, 'North Hamgyong', 102),
(1473, 'South Hamgyong', 102),
(1474, 'North Hwanghae', 102),
(1475, 'South Hwanghae', 102),
(1476, 'Kangwon', 102),
(1477, 'North P\'yongan', 102),
(1478, 'South P\'yongan', 102),
(1479, 'Yanggang', 102),
(1480, 'Kaesong', 102),
(1481, 'Najin', 102),
(1482, 'Namp\'o', 102),
(1483, 'Pyongyang', 102),
(1484, 'Other', 102),
(1485, 'Seoul', 103),
(1486, 'Busan City', 103),
(1487, 'Daegu City', 103),
(1488, 'Incheon City', 103),
(1489, 'Gwangju City', 103),
(1490, 'Daejeon City', 103),
(1491, 'Ulsan', 103),
(1492, 'Gyeonggi Province', 103),
(1493, 'Gangwon Province', 103),
(1494, 'North Chungcheong Province', 103),
(1495, 'South Chungcheong Province', 103),
(1496, 'North Jeolla Province', 103),
(1497, 'South Jeolla Province', 103),
(1498, 'North Gyeongsang Province', 103),
(1499, 'South Gyeongsang Province', 103),
(1500, 'Jeju', 103),
(1501, 'Other', 103),
(1502, 'Al Ahmadi', 104),
(1503, 'Al Farwaniyah', 104),
(1504, 'Al Asimah', 104),
(1505, 'Al Jahra', 104),
(1506, 'Hawalli', 104),
(1507, 'Mubarak Al-Kabeer', 104),
(1508, 'Other', 104),
(1509, 'Batken Oblasty', 105),
(1510, 'Bishkek Shaary', 105),
(1511, 'Chuy Oblasty', 105),
(1512, 'Jalal-Abad Oblasty', 105),
(1513, 'Naryn Oblasty', 105),
(1514, 'Osh Oblasty', 105),
(1515, 'Talas Oblasty', 105),
(1516, 'Ysyk-Kol Oblasty', 105),
(1517, 'Other', 105),
(1518, 'Attapu', 106),
(1519, 'Bokeo', 106),
(1520, 'Bolikhamxai', 106),
(1521, 'Champasak', 106),
(1522, 'Houaphan', 106),
(1523, 'Khammouan', 106),
(1524, 'Louangnamtha', 106),
(1525, 'Louangphrabang', 106),
(1526, 'Oudomxai', 106),
(1527, 'Phongsali', 106),
(1528, 'Salavan', 106),
(1529, 'Savannakhet', 106),
(1530, 'Viangchan', 106),
(1531, 'Viangchan', 106),
(1532, 'Xaignabouli', 106),
(1533, 'Xaisomboun', 106),
(1534, 'Xekong', 106),
(1535, 'Xiangkhoang', 106),
(1536, 'Other', 106),
(1537, 'Aizkraukles Rajons', 107),
(1538, 'Aluksnes Rajons', 107),
(1539, 'Balvu Rajons', 107),
(1540, 'Bauskas Rajons', 107),
(1541, 'Cesu Rajons', 107),
(1542, 'Daugavpils', 107),
(1543, 'Daugavpils Rajons', 107),
(1544, 'Dobeles Rajons', 107),
(1545, 'Gulbenes Rajons', 107),
(1546, 'Jekabpils Rajons', 107),
(1547, 'Jelgava', 107),
(1548, 'Jelgavas Rajons', 107),
(1549, 'Jurmala', 107),
(1550, 'Kraslavas Rajons', 107),
(1551, 'Kuldigas Rajons', 107),
(1552, 'Liepaja', 107),
(1553, 'Liepajas Rajons', 107),
(1554, 'Limbazu Rajons', 107),
(1555, 'Ludzas Rajons', 107),
(1556, 'Madonas Rajons', 107),
(1557, 'Ogres Rajons', 107),
(1558, 'Preilu Rajons', 107),
(1559, 'Rezekne', 107),
(1560, 'Rezeknes Rajons', 107),
(1561, 'Riga', 107),
(1562, 'Rigas Rajons', 107),
(1563, 'Saldus Rajons', 107),
(1564, 'Talsu Rajons', 107),
(1565, 'Tukuma Rajons', 107),
(1566, 'Valkas Rajons', 107),
(1567, 'Valmieras Rajons', 107),
(1568, 'Ventspils', 107),
(1569, 'Ventspils Rajons', 107),
(1570, 'Other', 107),
(1571, 'Beyrouth', 108),
(1572, 'Beqaa', 108),
(1573, 'Liban-Nord', 108),
(1574, 'Liban-Sud', 108),
(1575, 'Mont-Liban', 108),
(1576, 'Nabatiye', 108),
(1577, 'Other', 108),
(1578, 'Berea', 109),
(1579, 'Butha-Buthe', 109),
(1580, 'Leribe', 109),
(1581, 'Mafeteng', 109),
(1582, 'Maseru', 109),
(1583, 'Mohale\'s Hoek', 109),
(1584, 'Mokhotlong', 109),
(1585, 'Qacha\'s Nek', 109),
(1586, 'Quthing', 109),
(1587, 'Thaba-Tseka', 109),
(1588, 'Other', 109),
(1589, 'Bomi', 110),
(1590, 'Bong', 110),
(1591, 'Gbarpolu', 110),
(1592, 'Grand Bassa', 110),
(1593, 'Grand Cape Mount', 110),
(1594, 'Grand Gedeh', 110),
(1595, 'Grand Kru', 110),
(1596, 'Lofa', 110),
(1597, 'Margibi', 110),
(1598, 'Maryland', 110),
(1599, 'Montserrado', 110),
(1600, 'Nimba', 110),
(1601, 'River Cess', 110),
(1602, 'River Gee', 110),
(1603, 'Sinoe', 110),
(1604, 'Other', 110),
(1605, 'Ajdabiya', 111),
(1606, 'Al \'Aziziyah', 111),
(1607, 'Al Fatih', 111),
(1608, 'Al Jabal al Akhdar', 111),
(1609, 'Al Jufrah', 111),
(1610, 'Al Khums', 111),
(1611, 'Al Kufrah', 111),
(1612, 'An Nuqat al Khams', 111),
(1613, 'Ash Shati\'', 111),
(1614, 'Awbari', 111),
(1615, 'Az Zawiyah', 111),
(1616, 'Banghazi', 111),
(1617, 'Darnah', 111),
(1618, 'Ghadamis', 111),
(1619, 'Gharyan', 111),
(1620, 'Misratah', 111),
(1621, 'Murzuq', 111),
(1622, 'Sabha', 111),
(1623, 'Sawfajjin', 111),
(1624, 'Surt', 111),
(1625, 'Tarabulus', 111),
(1626, 'Tarhunah', 111),
(1627, 'Tubruq', 111),
(1628, 'Yafran', 111),
(1629, 'Zlitan', 111),
(1630, 'Other', 111),
(1631, 'Balzers', 112),
(1632, 'Eschen', 112),
(1633, 'Gamprin', 112),
(1634, 'Mauren', 112),
(1635, 'Planken', 112),
(1636, 'Ruggell', 112),
(1637, 'Schaan', 112),
(1638, 'Schellenberg', 112),
(1639, 'Triesen', 112),
(1640, 'Triesenberg', 112),
(1641, 'Vaduz', 112),
(1642, 'Other', 112),
(1643, 'Alytaus', 113),
(1644, 'Kauno', 113),
(1645, 'Klaipedos', 113),
(1646, 'Marijampoles', 113),
(1647, 'Panevezio', 113),
(1648, 'Siauliu', 113),
(1649, 'Taurages', 113),
(1650, 'Telsiu', 113),
(1651, 'Utenos', 113),
(1652, 'Vilniaus', 113),
(1653, 'Other', 113),
(1654, 'Diekirch', 114),
(1655, 'Grevenmacher', 114),
(1656, 'Luxembourg', 114),
(1657, 'Other', 114),
(1658, 'Other', 115),
(1659, 'Aerodrom', 116),
(1660, 'Aracinovo', 116),
(1661, 'Berovo', 116),
(1662, 'Bitola', 116),
(1663, 'Bogdanci', 116),
(1664, 'Bogovinje', 116),
(1665, 'Bosilovo', 116),
(1666, 'Brvenica', 116),
(1667, 'Butel', 116),
(1668, 'Cair', 116),
(1669, 'Caska', 116),
(1670, 'Centar', 116),
(1671, 'Centar Zupa', 116),
(1672, 'Cesinovo', 116),
(1673, 'Cucer-Sandevo', 116),
(1674, 'Debar', 116),
(1675, 'Debartsa', 116),
(1676, 'Delcevo', 116),
(1677, 'Demir Hisar', 116),
(1678, 'Demir Kapija', 116),
(1679, 'Dojran', 116),
(1680, 'Dolneni', 116),
(1681, 'Drugovo', 116),
(1682, 'Gazi Baba', 116),
(1683, 'Gevgelija', 116),
(1684, 'Gjorce Petrov', 116),
(1685, 'Gostivar', 116),
(1686, 'Gradsko', 116),
(1687, 'Ilinden', 116),
(1688, 'Jegunovce', 116),
(1689, 'Karbinci', 116),
(1690, 'Karpos', 116),
(1691, 'Kavadarci', 116),
(1692, 'Kicevo', 116),
(1693, 'Kisela Voda', 116),
(1694, 'Kocani', 116),
(1695, 'Konce', 116),
(1696, 'Kratovo', 116),
(1697, 'Kriva Palanka', 116),
(1698, 'Krivogastani', 116),
(1699, 'Krusevo', 116),
(1700, 'Kumanovo', 116),
(1701, 'Lipkovo', 116),
(1702, 'Lozovo', 116),
(1703, 'Makedonska Kamenica', 116),
(1704, 'Makedonski Brod', 116),
(1705, 'Mavrovo i Rastusa', 116),
(1706, 'Mogila', 116),
(1707, 'Negotino', 116),
(1708, 'Novaci', 116),
(1709, 'Novo Selo', 116),
(1710, 'Ohrid', 116),
(1711, 'Oslomej', 116),
(1712, 'Pehcevo', 116),
(1713, 'Petrovec', 116),
(1714, 'Plasnica', 116),
(1715, 'Prilep', 116),
(1716, 'Probistip', 116),
(1717, 'Radovis', 116),
(1718, 'Rankovce', 116),
(1719, 'Resen', 116),
(1720, 'Rosoman', 116),
(1721, 'Saraj', 116),
(1722, 'Skopje', 116),
(1723, 'Sopiste', 116),
(1724, 'Staro Nagoricane', 116),
(1725, 'Stip', 116),
(1726, 'Struga', 116),
(1727, 'Strumica', 116),
(1728, 'Studenicani', 116),
(1729, 'Suto Orizari', 116),
(1730, 'Sveti Nikole', 116),
(1731, 'Tearce', 116),
(1732, 'Tetovo', 116),
(1733, 'Valandovo', 116),
(1734, 'Vasilevo', 116),
(1735, 'Veles', 116),
(1736, 'Vevcani', 116),
(1737, 'Vinica', 116),
(1738, 'Vranestica', 116),
(1739, 'Vrapciste', 116);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subimages_folder`
--

CREATE TABLE `tbl_subimages_folder` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(20) DEFAULT NULL,
  `folder_name` varchar(64) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `modified_date` date DEFAULT NULL,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subimages_folder`
--

INSERT INTO `tbl_subimages_folder` (`id`, `subject_id`, `folder_name`, `created_date`, `modified_date`, `currentStatus`) VALUES
(4, 'SB-589634', 'python', '2021-02-15', '2021-02-15', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `subject_id`, `department_id`, `category_id`, `subject_name`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(11, 'SB-339789', 201454, 155709, 'C Lang', '', '', '2020-12-26 03:29:57', '2020-12-26 03:29:57', 'y'),
(12, 'SB-274055', 201454, 155709, 'C++ Lang', '', '', '2020-12-26 03:33:49', '2020-12-26 03:33:49', 'y'),
(13, 'SB-954559', 201454, 155709, 'Core Java', '', '', '2020-12-26 03:35:40', '2020-12-26 03:35:40', 'y'),
(14, 'SB-134530', 201454, 155709, 'Advance Java', '', '', '2020-12-26 03:37:20', '2020-12-26 03:37:20', 'y'),
(15, 'SB-415990', 201454, 155709, 'J2EE', '', '', '2020-12-26 03:37:42', '2020-12-26 03:37:42', 'y'),
(16, 'SB-150002', 201454, 155709, 'Data Structure', '', '', '2020-12-26 03:38:25', '2020-12-26 03:38:25', 'y'),
(17, 'SB-546910', 201454, 155709, 'C#.Net', '', '', '2020-12-26 04:03:41', '2020-12-26 04:03:41', 'y'),
(18, 'SB-741183', 201454, 155709, 'ASP.Net', '', '', '2020-12-26 04:08:57', '2020-12-26 04:08:57', 'y'),
(19, 'SB-286597', 201454, 155709, 'MS SQL', '', '', '2020-12-26 04:50:27', '2020-12-26 04:50:27', 'y'),
(20, 'SB-71389', 201454, 155709, 'PHP', '', '', '2020-12-26 04:51:49', '2020-12-26 04:51:49', 'y'),
(21, 'SB-589634', 201454, 155709, 'Python', '', '', '2020-12-26 04:53:54', '2020-12-26 04:53:54', 'y'),
(22, 'SB-326697', 201454, 155709, 'Salesforce', '', '', '2020-12-26 05:01:11', '2020-12-26 05:01:11', 'y'),
(25, 'SB-672847', 614048, 60789, 'political science', '', '', '2021-02-14 20:16:43', '2021-02-14 20:16:43', 'y'),
(26, 'SB-494420', 651370, 354986, 'Pdktesting', '', '', '2021-02-19 23:26:48', '2021-02-19 23:26:48', 'y'),
(27, 'SB-639194', 564213, 155709, '5G Wireless Technology', '', '', '2021-03-03 10:14:51', '2021-03-03 10:14:51', 'y'),
(28, 'SB-526188', 614048, 220549, 'Todat0606', '', '', '2021-03-06 06:45:59', '2021-03-06 06:45:59', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject_info`
--

CREATE TABLE `tbl_subject_info` (
  `id` int(11) NOT NULL,
  `subject_info_id` varchar(11) DEFAULT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `subject_image` varchar(255) DEFAULT NULL,
  `subject_info` longtext NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subject_info`
--

INSERT INTO `tbl_subject_info` (`id`, `subject_info_id`, `subject_id`, `subject_image`, `subject_info`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '837594', 'SB-326697', '_d32.jpg', '', 'admin', 'admin', '2021-02-14 20:48:37', '2021-02-14 20:48:37', 'y'),
(2, '363930', 'SB-326697', '_d32.jpg', '', 'admin', 'admin', '2021-02-14 20:49:21', '2021-02-14 20:49:21', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term_condition`
--

CREATE TABLE `tbl_term_condition` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_permission`
--

CREATE TABLE `tbl_user_permission` (
  `id` int(11) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `menu_id` varchar(11) DEFAULT NULL,
  `menu_create` tinyint(1) DEFAULT NULL,
  `menu_edit` tinyint(1) DEFAULT NULL,
  `menu_delete` tinyint(1) DEFAULT NULL,
  `menu_view` tinyint(1) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `currentStatus` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_registration`
--

CREATE TABLE `tbl_user_registration` (
  `id` int(11) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_registration`
--

INSERT INTO `tbl_user_registration` (`id`, `user_id`, `user_type`, `first_name`, `last_name`, `gender`, `address`, `mobile`, `email`, `password`, `image`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '615170', NULL, 'Ashish', 'Sharma', 'male', 'xascascxasdsca', '8530941117', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1_logo.jpg', 'abcd', 'admin@gmail.com', '2020-12-17 20:50:43', '2020-12-21 19:44:39', 'y'),
(3, '72129', NULL, 'Gayatri', 'Vaidya', 'female', '16, JAIWANT NAGARNEAR SAHYANDRI LAWN', '8530941117', 'gv@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '72129_logo.jpg', 'abcd', 'gv@gmail.com', '2020-12-21 21:16:40', '2020-12-21 21:16:40', 'y'),
(1, '615170', NULL, 'Ashish', 'Sharma', 'male', 'xascascxasdsca', '8530941117', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1_logo.jpg', 'abcd', 'admin@gmail.com', '2020-12-17 20:50:43', '2020-12-21 19:44:39', 'y'),
(3, '72129', NULL, 'Gayatri', 'Vaidya', 'female', '16, JAIWANT NAGARNEAR SAHYANDRI LAWN', '8530941117', 'gv@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '72129_logo.jpg', 'abcd', 'gv@gmail.com', '2020-12-21 21:16:40', '2020-12-21 21:16:40', 'y'),
(0, '730614', NULL, 'Devidas', 'Patle', 'male', 'Nagpur', '9579010026', 'devidas.patle@rediffmail.com', 'e10adc3949ba59abbe56e057f20f883e', '730614_dwwww23.jpg', 'abcd', 'devidas.patle@rediffmail.com', '2021-02-14 20:53:26', '2021-02-14 20:53:26', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_candidate`
--
ALTER TABLE `tbl_admin_candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_candidate_history`
--
ALTER TABLE `tbl_admin_candidate_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_new_test`
--
ALTER TABLE `tbl_admin_new_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_payment`
--
ALTER TABLE `tbl_admin_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisement_id` (`advertisement_id`);

--
-- Indexes for table `tbl_candidate_exam`
--
ALTER TABLE `tbl_candidate_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_history`
--
ALTER TABLE `tbl_candidate_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_package`
--
ALTER TABLE `tbl_candidate_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_payment`
--
ALTER TABLE `tbl_candidate_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_registration`
--
ALTER TABLE `tbl_candidate_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_client_logo`
--
ALTER TABLE `tbl_client_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client_package`
--
ALTER TABLE `tbl_client_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client_registration`
--
ALTER TABLE `tbl_client_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_demo_result`
--
ALTER TABLE `tbl_demo_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`department_id`);

--
-- Indexes for table `tbl_examinations`
--
ALTER TABLE `tbl_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam_history`
--
ALTER TABLE `tbl_exam_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_live_result`
--
ALTER TABLE `tbl_live_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_new_test`
--
ALTER TABLE `tbl_new_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_practice_examinations`
--
ALTER TABLE `tbl_practice_examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_practice_questions`
--
ALTER TABLE `tbl_practice_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_practice_result`
--
ALTER TABLE `tbl_practice_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_questions_csv`
--
ALTER TABLE `tbl_questions_csv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quick_tests`
--
ALTER TABLE `tbl_quick_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subimages_folder`
--
ALTER TABLE `tbl_subimages_folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `tbl_subject_info`
--
ALTER TABLE `tbl_subject_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_info_id` (`subject_info_id`);

--
-- Indexes for table `tbl_term_condition`
--
ALTER TABLE `tbl_term_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_permission`
--
ALTER TABLE `tbl_user_permission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_candidate`
--
ALTER TABLE `tbl_admin_candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin_candidate_history`
--
ALTER TABLE `tbl_admin_candidate_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin_new_test`
--
ALTER TABLE `tbl_admin_new_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin_payment`
--
ALTER TABLE `tbl_admin_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_candidate_exam`
--
ALTER TABLE `tbl_candidate_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_history`
--
ALTER TABLE `tbl_candidate_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_package`
--
ALTER TABLE `tbl_candidate_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_payment`
--
ALTER TABLE `tbl_candidate_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_registration`
--
ALTER TABLE `tbl_candidate_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_client_logo`
--
ALTER TABLE `tbl_client_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_client_package`
--
ALTER TABLE `tbl_client_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client_registration`
--
ALTER TABLE `tbl_client_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `tbl_demo_result`
--
ALTER TABLE `tbl_demo_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_examinations`
--
ALTER TABLE `tbl_examinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_exam_history`
--
ALTER TABLE `tbl_exam_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_live_result`
--
ALTER TABLE `tbl_live_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_new_test`
--
ALTER TABLE `tbl_new_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_practice_examinations`
--
ALTER TABLE `tbl_practice_examinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_practice_questions`
--
ALTER TABLE `tbl_practice_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_practice_result`
--
ALTER TABLE `tbl_practice_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tbl_questions_csv`
--
ALTER TABLE `tbl_questions_csv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quick_tests`
--
ALTER TABLE `tbl_quick_tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1740;

--
-- AUTO_INCREMENT for table `tbl_subimages_folder`
--
ALTER TABLE `tbl_subimages_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_subject_info`
--
ALTER TABLE `tbl_subject_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_term_condition`
--
ALTER TABLE `tbl_term_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_permission`
--
ALTER TABLE `tbl_user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
