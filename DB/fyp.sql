-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2018 at 03:57 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(60) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_location` varchar(100) NOT NULL,
  `event_date` date NOT NULL,
  `event_contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `event_location`, `event_date`, `event_contact`) VALUES
(1, 'wedding1', 'hk', '2018-02-07', '25523363'),
(2, '213123', '213213', '2018-02-09', '12321321321');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `userid`, `filename`, `datetime`) VALUES
(3, 25, '5aa3a735b659f.png', '2018-03-10 17:36:53'),
(4, 25, '5aa3a735c58ae.png', '2018-03-10 17:36:53'),
(5, 25, '5aa3a735cdacd.png', '2018-03-10 17:36:53'),
(6, 26, '5aa4fb64108b6.jpg', '2018-03-11 17:48:20'),
(7, 26, '5aa4fb641f31b.jpg', '2018-03-11 17:48:20'),
(8, 26, '5aa4fb6426f95.jpg', '2018-03-11 17:48:20'),
(9, 26, '5aa4fb6451b49.jpg', '2018-03-11 17:48:20'),
(10, 26, '5aa4fb645f63c.jpg', '2018-03-11 17:48:20'),
(11, 26, '5aa4fb646fd34.jpg', '2018-03-11 17:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(60) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1',
  `contact` int(11) DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `specialist` int(11) DEFAULT NULL,
  `workingexp` int(11) DEFAULT NULL,
  `profilepic` varchar(100) DEFAULT NULL,
  `createdatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `contact`, `description`, `budget`, `specialist`, `workingexp`, `profilepic`, `createdatetime`) VALUES
(1, 'admin', 'chun7024@gmail.com', '123456', 3, NULL, '', NULL, NULL, NULL, '5aa39e790102b.png', '2018-03-06 13:26:15'),
(2, 'CLL9', '', '123456', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(8, '123', '123@123.com', '$2y$10$wc3glcS7wRKDnB5HsvGsYegZZRl8WaLxh4pFwWYSTCnVdogS8aQMy', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(9, '123', '123@D.COM', '123123', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(10, '123', '123@abcd.com', '123456', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(11, 'issac', 'sadsa@faf.com', '123456', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(12, '123', 'sadas@asf.com', '1234', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(13, 'test', 'test@gmail.com', '123456', 2, NULL, '', NULL, NULL, NULL, '5a9a6673c01f9.jpg', '2018-03-06 13:26:15'),
(14, 'test123', 'test123@gmail.com', '213', 2, NULL, '', NULL, 3, NULL, '', '2018-03-06 13:26:15'),
(15, 'test1234', 'test1234@gmail.com', '213', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(16, '213123', '12312', '123123', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(17, '123123123123', '12312312', '123213123123', 1, NULL, '', NULL, NULL, NULL, '', '2018-03-06 13:26:15'),
(18, 'issac123', 'asd@fdasf.com', '21sad', 2, NULL, '', NULL, 2, NULL, '', '2018-03-06 13:32:55'),
(21, 'sadas', 'asdfQ@sac.com', '123213', 0, 0, '', 0, 0, 0, NULL, '2018-03-06 14:02:53'),
(22, 'asdasd', 'asdsadasd@dasd.com', '12342345', 1, 314314, '', 1, 1, 1, NULL, '2018-03-06 14:03:28'),
(23, 'normaluser', 'asd@asfda.com', '123145', 0, 0, '', 0, 0, 0, NULL, '2018-03-06 14:04:10'),
(24, 'test123213', 'asfdsafd@asdas.xcom', '123123', 2, 124214, 'This is for description', 1, 1, 1, '5aa3f78dc0876.jpg', '2018-03-06 14:47:11'),
(25, 'issacbiz', 'sacdsa@asdfsa.com', '123456', 2, 1431431, 'I am model', 1, 2, 1, '5aa3f76d85350.jpg', '2018-03-08 13:29:12'),
(26, 'issacbiz2', 'wcas@casfasc.com', '123456', 2, 14124, 'I am good at taking photo', 1, 4, 1, '5aa3f73f09f46.jpg', '2018-03-10 18:43:34'),
(28, 'freeuser', 'asdsa@Qasc.com', '123456', 5, 1232134, 'This is free user', 2, 3, 3, NULL, '2018-02-05 18:50:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
