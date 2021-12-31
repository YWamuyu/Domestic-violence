-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 07:33 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(11) NOT NULL,
  `user_type` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_uid` varchar(256) NOT NULL,
  `user_pwd` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_type`, `user_email`, `user_uid`, `user_pwd`) VALUES
(1, 'incident report manager', 'gloria@usiu.ac.ke', 'Gloria', '$2y$10$Sq7Hv8uEgQnNpFVR7J7UPOzZXED0vaXnBgLLizFgRgav6id6kZ/SO');

-- --------------------------------------------------------

--
-- Table structure for table `dusers`
--

CREATE TABLE `dusers` (
  `user_id` int(11) NOT NULL,
  `user_first` varchar(256) NOT NULL,
  `user_last` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_uid` varchar(256) NOT NULL,
  `user_pwd` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dusers`
--

INSERT INTO `dusers` (`user_id`, `user_first`, `user_last`, `user_email`, `user_uid`, `user_pwd`) VALUES
(1, 'Umubyeyi', 'Gloria', 'gloria@usiu.ac.ke', 'Gloria', '$2y$10$kT.v1XzUHV8hebRZpUr7iOBvZ9ojv9HcZMhGpWfbdh8bWDb1RectO');

-- --------------------------------------------------------

--
-- Table structure for table `increport`
--

CREATE TABLE `increport` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `latitude` varchar(256) NOT NULL,
  `longitude` varchar(256) NOT NULL,
  `incident` varchar(256) NOT NULL,
  `explanation` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `convo_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unread , 1= read',
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `convo_id`, `user_id`, `message`, `status`, `date_created`) VALUES
(1, 1, 3, 'how are you doing', 1, '2020-12-09 11:14:51'),
(2, 1, 2, 'I am doing good', 1, '2020-12-09 11:15:22'),
(3, 2, 2, 'hi sir', 1, '2021-03-31 08:12:55'),
(4, 3, 3, 'hi sir', 0, '2020-12-09 11:15:42'),
(5, 1, 3, 'when should we have a zoom meeting', 1, '2020-12-09 11:18:27'),
(6, 1, 3, 'probably kesho', 1, '2020-12-09 11:18:27'),
(7, 1, 2, 'that sounds good to me', 1, '2020-12-09 11:18:45'),
(8, 1, 2, 'can i ask', 1, '2020-12-09 11:22:30'),
(9, 1, 3, 'yes please', 1, '2020-12-09 11:23:27'),
(10, 2, 2, 'how did the test examination go?', 1, '2021-03-31 08:12:55'),
(52, 4, 5, 'Hi sir. I needed your support in handling my family issues.', 0, '2021-03-31 08:10:18'),
(53, 2, 1, 'you will receive an email confirmation on the same.', 1, '2021-03-31 08:14:06'),
(54, 2, 2, 'thank you sir. Can I send my coordinates for my location?', 1, '2021-03-31 08:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `id` int(30) NOT NULL,
  `user_ids` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`id`, `user_ids`) VALUES
(1, '2,3'),
(2, '1,2'),
(3, '3,3'),
(4, '3,5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `avatar`) VALUES
(1, 'Dr Kanyi', 'dkanyi', 'e10adc3949ba59abbe56e057f20f883e', '1602554940_avatar.jpg'),
(2, 'Gloria', 'gloria', 'e10adc3949ba59abbe56e057f20f883e', '1602555000_avatar2.png'),
(3, 'Dr Wilson', 'dwilson', 'e10adc3949ba59abbe56e057f20f883e', '1602575640_blank.jpg'),
(4, 'Dr Collins', 'dcollins', 'e10adc3949ba59abbe56e057f20f883e', '1607443740_1602554940_avatar.jpg'),
(5, '189k', 'fikshun', 'e10adc3949ba59abbe56e057f20f883e', '1617167280_1606476060_1604779980_1602554940_avatar.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `dusers`
--
ALTER TABLE `dusers`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `increport`
--
ALTER TABLE `increport`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dusers`
--
ALTER TABLE `dusers`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `increport`
--
ALTER TABLE `increport`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
