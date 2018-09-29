-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2018 at 09:07 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `android`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `locname` varchar(60) NOT NULL,
  `locaddress` varchar(80) NOT NULL,
  `loclatitude` float(10,6) NOT NULL,
  `loclongitude` float(10,6) NOT NULL,
  `rewardpoints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `locname`, `locaddress`, `loclatitude`, `loclongitude`, `rewardpoints`) VALUES
(1, 'North South Universiy', 'Plot 15, Block B, Bashundhara, Dhaka 1229', 23.815092, 90.425484, 25),
(2, 'Independent University Bangladesh', 'Plot 16, Block B, Aftabuddin Ahmed Road, Bashundhara R/A, Dhaka 1229', 23.815609, 90.427956, 25),
(3, 'Jamuna Future Park', 'Ka 244, Pragati Avenue, Baridhara, Dhaka 1229', 23.813705, 90.424309, 25),
(4, '300 Feet', '300 Feet, Bashundhara, Dhaka 1229', 23.826593, 90.428955, 25),
(5, 'Mehedi Mart', 'Mufti Abdur Rahman Rd, Dhaka', 23.816771, 90.435959, 25),
(6, 'Apollo Hospital', 'Apollo Hospital Rd, Dhaka 1212', 23.810205, 90.431114, 25),
(7, 'Lalbagh Fort', 'Lalbagh Rd, Dhaka 1211', 23.719830, 90.388412, 100),
(8, 'Ahsan Manjil', '2/3,Islampur Rd,Dhaka', 23.708822, 90.405991, 100),
(9, 'National Museum', 'Shahbagh, Dhaka 1000', 23.737617, 90.394424, 100),
(10, 'TSC', 'Suhrawardi Udyan Rd, Dhaka', 23.732162, 90.395905, 100),
(11, 'Dhanmondi Lake', 'Dhaka 1205', 23.746592, 90.377663, 100),
(12, 'National Parliament House', 'Sher-E-Bangla Nagar, Dhaka 1207', 23.762527, 90.378792, 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `points`) VALUES
(10, 'Syed', 'Rakin', 'rakin.ahmed2000@gmail.com', 'syedrakin707', '1234', 0),
(11, 'Ashiful', 'Islam', 'asifhasan@gmail.com', 'asifafs', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
