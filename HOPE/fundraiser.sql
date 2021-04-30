-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 12:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fundraiser`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `campaign_type` varchar(255) NOT NULL,
  `campaign_days` bigint(20) NOT NULL,
  `campaign_amount` bigint(20) NOT NULL,
  `campaign_description` varchar(255) NOT NULL,
  `campaignPhone` bigint(20) NOT NULL,
  `campaignImage` varchar(255) DEFAULT NULL,
  `campaignApproval` tinyint(1) DEFAULT 0,
  `campaignExpiry` tinyint(1) DEFAULT 1,
  `campaignCreator` varchar(255) NOT NULL,
  `campaign_reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`campaign_id`, `campaign_name`, `campaign_type`, `campaign_days`, `campaign_amount`, `campaign_description`, `campaignPhone`, `campaignImage`, `campaignApproval`, `campaignExpiry`, `campaignCreator`, `campaign_reg_date`) VALUES
(25, 'XYZ', 'social', 5, 4000, 'XYZ want to donate', 9800000000, 'assets/images/campaignImages/fb10e5c9858d188cadbde1b32d614d4a', 1, 1, 'Admin', '2021-04-16 16:25:06'),
(26, 'ABC', 'others', 5, 2000, 'ABC company wants to donate', 195463490, 'assets/images/campaignImages/5b3f73493d9273cac5b92673e6588271', 1, 1, 'Admin', '2021-04-16 16:30:23'),
(27, 'X Company', 'others', 3, 60000, 'That company wants to donate', 1954634905, 'assets/images/campaignImages/3c250c5b2751e597e8929043834e66ca', 1, 1, 'Admin', '2021-04-16 16:33:56'),
(28, 'Ritu', 'social', 2, 100000, 'wants to donate', 1890567432, 'assets/images/campaignImages/a7996a5113d9dbeaf2b2822c91e9daa8', 1, 1, 'Admin', '2021-04-16 16:50:42'),
(29, 'Bithi', 'natural disaster', 4, 50000, 'she is a very kind woman and she wants to donate that amount of money', 1789234234, 'assets/images/campaignImages/61247cf728a0008572b29b66ac72d14b', 1, 1, 'Admin', '2021-04-16 16:52:54'),
(30, 'Y Man', 'natural disaster', 5, 4000, 'He wants to donate\r\n', 1967894530, 'assets/images/campaignImages/d023ccd3450d2aba89e48d6087b580f2', 1, 1, 'Admin', '2021-04-25 05:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `donationproof`
--

CREATE TABLE `donationproof` (
  `donation_proof_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `donate_amount` bigint(20) NOT NULL,
  `donor_address` varchar(200) NOT NULL,
  `proof_image` varchar(255) DEFAULT NULL,
  `admin_approval` tinyint(1) DEFAULT 0,
  `proof_submit_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donationproof`
--

INSERT INTO `donationproof` (`donation_proof_id`, `donor_id`, `campaign_id`, `donate_amount`, `donor_address`, `proof_image`, `admin_approval`, `proof_submit_date`) VALUES
(10, 41, 21, 40000, 'Butwal', '../assets/images/proofImages/6f8ff9405d6201fbc60afcb7a78166c2', 1, '2019-09-25 03:45:43'),
(11, 42, 16, 50000, 'NawalParasi', '../assets/images/proofImages/66055d19370f79e091f9d954e2b7a411', 1, '2019-09-25 03:47:14'),
(12, 41, 21, 70000, 'Chitwan', '../assets/images/proofImages/7ef383985a87ac0c24f97f4cc64a94b9', 1, '2019-09-25 03:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `donor_id` int(11) NOT NULL,
  `donor_name` varchar(50) NOT NULL,
  `donor_email` varchar(50) NOT NULL,
  `campaign_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`donor_id`, `donor_name`, `donor_email`, `campaign_id`) VALUES
(32, 'sandesh shrestha', 'sandeshstha2018@gmail.com', 1),
(43, 'Abiral Bhattarai', 'sandeshshrestha2018@gmail.com', 22),
(44, 'Sandip Dai', 'sandeshshrestha2018@gmail.com', 22),
(45, 'Ashisish Poudel', 'sandeshshrestha2018@gmail.com', 18),
(46, 'Demo shrestha', 'sandeshshrestha2018@gmail.com', 22);

-- --------------------------------------------------------

--
-- Table structure for table `organizers`
--

CREATE TABLE `organizers` (
  `organizer_id` int(11) NOT NULL,
  `organizer_fullname` varchar(256) NOT NULL,
  `organizer_username` varchar(256) NOT NULL,
  `organizer_email` varchar(256) NOT NULL,
  `organizer_password` varchar(256) NOT NULL,
  `organizer_phone` varchar(22) NOT NULL,
  `vkey` varchar(45) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `organizer_reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizers`
--

INSERT INTO `organizers` (`organizer_id`, `organizer_fullname`, `organizer_username`, `organizer_email`, `organizer_password`, `organizer_phone`, `vkey`, `verified`, `organizer_reg_date`) VALUES
(5, 'Tithi G', 'tithi', 'world.tithi@gmail.com', '$2y$10$GcZ0CvAXMH3wysAyaOrYJ./196VxAiFTZzJPNb8i3wP44AZ3zQGR2', '01954634905', '6732441520dd27544b89d400a6410611', 0, '2021-04-16 07:41:16'),
(6, 'Ridu R', 'ridu', 'ridu@gmail.com', '$2y$10$JX8LzR4q7egimQY2YepoOOjFH5R0OkNu7zh6bjCpdDDeO8Xhzx5hq', '01967894530', 'df7613649cc53ea6606d200ff35b6600', 0, '2021-04-16 07:42:09'),
(7, 'Bithi G', 'bithi', 'world.tithi@gmail.com', '$2y$10$mfdHA8bB5Xyp0NjYX9A9R.ybEUWKC3jdbZCPorny1wv7EALIYW9Zm', '01954634905', '349b1d1ff68d82106a132509944bb06c', 0, '2021-04-16 08:04:34'),
(8, 'Mim M', 'min', 'world.tithi@gmail.com', '$2y$10$Z0kwQgw2XNGnE7Q.5a0Us.mnvnfwEnrbN5/0s6piycvF1M6U.I.UK', '01954634905', '9af438ed466ea9dc0620a22a10314083', 0, '2021-04-18 20:18:19'),
(9, 'Rasmi Rishi', 'rasmi', 'tithi11ghosh@gmail.com', '$2y$10$hd3B/nla48pBRDGiXGl0gOxeZKwkdnhdmwoBhFE5stUxGOOslCuHW', '01954634905', 'ea56864434da619b57983f930ad62258', 0, '2021-04-19 12:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register_list`
--

CREATE TABLE `register_list` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dateofbirth` date NOT NULL,
  `telephoneno` int(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_list`
--

INSERT INTO `register_list` (`id`, `name`, `username`, `email`, `password`, `type`, `gender`, `dateofbirth`, `telephoneno`, `address`) VALUES
(3, 'Jitu G', 'jitu', 'jitu@gmail.com', 'jitu!@#$%', 'Admin', '', '0000-00-00', 0, ''),
(4, 'Ridu R', 'ridu', 'Ridu@gmail.com', 'ridu@#$%', 'Admin', '', '0000-00-00', 0, ''),
(5, 'Rita Vori', 'rita', 'rita@gmail.com', 'rita!@#$%', 'Moderator', '', '0000-00-00', 0, ''),
(7, 'Banani Mondol', 'banani', 'banani@gmail.com', 'babani!@#$%', 'Initiator', '', '0000-00-00', 0, ''),
(8, 'Tithi G', 'tithi', 'world.tithi@gmail.com', 'tithi!@#$%', 'Admin', 'Female', '1997-12-08', 2147483647, 'dhaka'),
(16, 'Lili L', 'lili', 'lili@gmail.com', 'lili!@#$', 'Donor', '', '0000-00-00', 0, ''),
(24, 'Spider Man', 'Spider', 'email@gmail.com', 'spider@', 'Moderator', '', '0000-00-00', 0, ''),
(26, 'ABc D', 'abc', 'world.tithi@gmail.com', 'abc!@#$%', 'Initiator', '', '0000-00-00', 0, ''),
(27, 'Bat Man', 'batman', 'batman@gmail.com', 'batman!@#$', 'Initiator', '', '0000-00-00', 0, ''),
(30, 'Tara rai', 'rai', 'world.tithi@gmail.com', 'rai!@#$%', 'Donor', '', '0000-00-00', 0, ''),
(31, 'Rehana Rumi', 'rumi', 'world.tithi@gmail.com', 'rumi!@#$%', 'Donor', '', '0000-00-00', 0, ''),
(34, 'Latika lata', 'lata', 'world.tithi@gmail.com', 'lata!@#$%', 'Donor', '', '0000-00-00', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `donationproof`
--
ALTER TABLE `donationproof`
  ADD PRIMARY KEY (`donation_proof_id`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `organizers`
--
ALTER TABLE `organizers`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Indexes for table `register_list`
--
ALTER TABLE `register_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `campaign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `donationproof`
--
ALTER TABLE `donationproof`
  MODIFY `donation_proof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `organizers`
--
ALTER TABLE `organizers`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register_list`
--
ALTER TABLE `register_list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
