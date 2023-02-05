-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 05:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appointment_mannagment`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(20) NOT NULL,
  `group_id` int(20) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `room` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `group_id`, `start_time`, `end_time`, `description`, `room`) VALUES
(1, 5, '2022-06-21 17:14:56', '2022-06-21 19:14:56', 'Talking about FullStack development', 'Blue Room'),
(2, 4, '2022-06-21 12:00:00', '2022-06-21 14:00:00', 'Talking about development', 'Red Room'),
(3, 5, '2022-06-21 12:00:00', '2022-06-21 14:00:00', 'Talking about development', 'Yellow Room'),
(4, 1, '2022-06-21 10:00:00', '2022-06-21 13:00:00', 'Talking about development', 'Green Room'),
(5, 2, '2022-06-21 10:00:00', '2022-06-21 13:00:00', 'Talking about development', 'Black Room'),
(6, 3, '2022-06-21 10:00:00', '2022-06-21 13:00:00', 'Talking about development', 'Pink Room');

-- --------------------------------------------------------

--
-- Table structure for table `dev_groups`
--

CREATE TABLE `dev_groups` (
  `id` int(20) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `dev_groups`
--

INSERT INTO `dev_groups` (`id`, `group_name`) VALUES
(1, 'UI Team'),
(2, 'Mobile Team'),
(3, 'React Team'),
(4, 'Web Team'),
(5, 'FullStack Team');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from dev_groups to app` (`group_id`);

--
-- Indexes for table `dev_groups`
--
ALTER TABLE `dev_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dev_groups`
--
ALTER TABLE `dev_groups`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `from dev_groups to app` FOREIGN KEY (`group_id`) REFERENCES `dev_groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
