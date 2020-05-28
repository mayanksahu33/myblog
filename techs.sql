-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 01:24 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_number`, `mes`, `date`) VALUES
(1, 'First post', 'firstpost@gmail.com', '123456789', 'fisrt post', '2019-09-22 23:28:47'),
(2, 'Ritika Sharma', 'ritika@gmail.com', '7219583200', 'Hello', '2019-09-23 00:22:44'),
(3, 'Mayank Sahu', 'sahumayank.18@gmail.com', '9179250433', 'Hey!!', '2019-09-23 22:16:24'),
(4, '', '', '', '', '2019-09-24 21:28:41'),
(5, 'Ritik Sharma', 'ritik@gmail.com', '123465789', 'Hello', '2019-09-24 21:29:38'),
(6, 'Ritik Sharma', 'ritik@gmail.com', '123465789', 'Hello', '2019-09-24 21:31:17'),
(7, 'Ritik Sharma', 'ritik@gmail.com', '123465789', 'Hello', '2019-09-24 21:32:29'),
(8, 'Ritik Sharma', 'ritik@gmail.com', '123465789', 'Hello', '2019-09-24 21:33:49'),
(9, 'Ritika Sharma', 'ritika@gmail.com', '7219583200', 'Hey!', '2019-09-24 21:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is my first post\'s title ', 'FIRST POST', 'first-post', 'This is my first post and i m very excited about this blog and flask micro framework\"\r\nEditing a new stuff', 'post-bg.jpg', '2019-09-28 11:52:03'),
(2, 'This is my second post ', 'SECOND POST', 'second-post', 'One of the most basic functions in a web application is the ability to send emails to your users.\r\n\r\nThe Flask-Mail extension provides a simple interface to set up SMTP with your Flask application and to send messages from your views and scripts.', 'post-bg.jpg', '2019-09-25 22:41:19'),
(3, 'Newposts', 'This is new post', 'newpost', 'New post', 'img.png', '2019-09-28 11:05:52'),
(4, 'Newposts', 'This is new post', 'newpost', 'New post', 'img.png', '2019-09-28 11:39:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
