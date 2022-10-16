-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2022 at 02:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'saiful', 'saiful@gmail.com', '$2y$10$2QYh2K6tslCDEOglPpCpweaWK4srgLA5VmMYbMcF9bO8V2NLXiAUi'),
(5, 'samsu', 'samsu@gmail.com', '$2y$10$TsPhrw4CXsPekh/GWS1q0OpAD8kH5Vadn.svWnNoYcvwGKNs/tt8y'),
(6, 'abm abul kalam', 'kalam@gmail.com', '$2y$10$f/HZhA2cmvdSj2QzMJqicOh5/0z36k4rT6XByXHG/5YJiusl7/Lle'),
(7, 'husain', 'husain@gmail.com', '$2y$10$HebgiOxYcx2iXn/MjXqn2.RiGyeLTGH5aZuIFinZ5885w/FbJpoBu'),
(8, 'husaine', 'husaine@gmail.com', '$2y$10$MPTvAbJ5lPeWiKWald26yeRzyoUPn0fWlJZeytggSLODBkSkewtTO'),
(9, 'jamal hossain', 'jamalhossain@gmail.com', '$2y$10$ofbByUu1OYWkOuAZi7UZ9O48isIQv1.uu5BLTCcT3MnAnVUZd/l5C'),
(10, 'tttt', 't@gmail.com', '$2y$10$pJ3b8xurpksfHEQLHCzws.PII7ajdnXgR5wCWm2GOuyDl4X6LBKTm'),
(11, 'tttt', 't@gmail.com', '$2y$10$p/cm5DUqzf5cVStH93ULyOJ3kGu6qGbaXEd7An30YVZDbIXw7AJNa'),
(12, 'sdfasdfsad', 'fadfasd@gmail.com', '$2y$10$fbXgwgkty0/DV3ijiLEW4uS9xSyLqvFK16PnCxDc57qxnnmIGLixO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
