-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 04:44 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodesn`
--
DROP DATABASE IF EXISTS nodesn;

CREATE DATABASE nodesn;

USE nodesn;
-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(100) NOT NULL,
  `posted_to` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'hi there', 'bala_surya', 'mani_krishna', '2018-10-07 02:13:47', 'no', 17),
(15, 'hello', 'bala_surya', 'bala_surya', '2018-11-13 05:43:13', 'no', 5),
(16, 'hey', 'bala_surya', 'mani_krishna', '2018-11-13 05:43:21', 'no', 4),
(17, 'hey', 'bala_surya', 'mani_krishna', '2018-11-13 05:43:32', 'no', 17),
(18, 'gud mrng', 'bala_surya', 'bala_surya', '2018-11-13 05:46:52', 'no', 2),
(19, 'hello', 'mani_krishna', 'mani_krishna', '2018-12-04 22:04:22', 'no', 17),
(20, 'yeah will do it', 'mansi_mistry', 'bala_surya', '2018-12-06 01:36:02', 'no', 5),
(21, '1', 'bala_surya', 'bala_surya', '2018-12-06 21:42:11', 'no', 2),
(22, '3', 'bala_surya', 'bala_surya', '2018-12-06 21:42:14', 'no', 2),
(23, '4', 'bala_surya', 'bala_surya', '2018-12-06 21:42:17', 'no', 2),
(24, '5', 'bala_surya', 'bala_surya', '2018-12-06 21:42:20', 'no', 2),
(25, '6', 'bala_surya', 'bala_surya', '2018-12-06 22:48:06', 'no', 2),
(26, '6', 'bala_surya', 'bala_surya', '2018-12-06 22:53:55', 'no', 2),
(27, 'era abbai', 'bala_surya', 'mani_krishna', '2018-12-08 15:06:41', 'no', 17),
(28, 'cheppara abbai', 'bala_surya', 'mani_krishna', '2018-12-12 00:33:53', 'no', 17),
(29, 'hey', 'bala_surya', 'mani_krishna', '2018-12-12 02:01:49', 'no', 17),
(30, 'hey', 'mani_krishna', 'bala_surya', '2018-12-14 02:10:00', 'no', 5),
(31, 'hey', 'bala_surya', 'mani_krishna', '2018-12-14 02:13:45', 'no', 4),
(32, 'dadada', 'mani_krishna', 'mani_krishna', '2018-12-14 02:20:08', 'no', 24),
(33, 'addfa', 'mani_krishna', 'bala_surya', '2018-12-14 02:21:16', 'no', 5),
(34, 'hi', 'bala_surya', 'bala_surya', '2019-01-11 00:43:06', 'no', 26),
(35, 'hi', 'bala_surya', 'bala_surya', '2019-01-11 00:43:06', 'no', 26);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(1, 'mansi_mistry', 5),
(2, 'mansi_mistry', 3),
(3, 'mansi_mistry', 2),
(4, 'mani_krishna', 5),
(5, 'mani_krishna', 2),
(14, 'bala_surya', 4),
(21, 'mani_krishna', 17),
(22, 'mani_krishna', 4),
(27, 'bala_surya', 17),
(28, 'bala_surya', 25);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'hello', 'bala_surya', '2018-10-07 02:13:47', 'no', 'yes', 0),
(2, 'gud mrng', 'bala_surya', '2018-10-09 00:33:15', 'no', 'yes', 2),
(3, 'time to go to college', 'bala_surya', '2018-10-09 00:34:34', 'no', 'no', 1),
(4, 'hello surya ', 'mani_krishna', '2018-10-09 00:35:38', 'no', 'no', 2),
(5, 'next sprint will be in 3weeks, need to work on the tasks for every person individually', 'bala_surya', '2018-10-09 00:37:56', 'no', 'no', 2),
(17, 'hello', 'mani_krishna', '2018-11-09 01:08:24', 'no', 'no', 3),
(18, '1', 'bala_surya', '2018-12-12 01:18:19', 'no', 'yes', 0),
(19, '2', 'bala_surya', '2018-12-12 01:18:22', 'no', 'yes', 0),
(20, '3', 'bala_surya', '2018-12-12 01:18:26', 'no', 'yes', 0),
(21, '4', 'bala_surya', '2018-12-12 01:18:28', 'no', 'yes', 0),
(22, '5', 'bala_surya', '2018-12-12 01:28:17', 'no', 'yes', 0),
(23, '6', 'bala_surya', '2018-12-12 01:46:11', 'no', 'yes', 0),
(24, 'adadad', 'mani_krishna', '2018-12-14 02:19:58', 'no', 'no', 0),
(25, 'aafaf', 'bala_surya', '2018-12-19 02:57:23', 'no', 'no', 1),
(26, 'hello', 'bala_surya', '2019-01-11 00:42:51', 'no', 'yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `num_posts`, `num_likes`) VALUES
(4, 'Bala', 'Surya', 'bala_surya', 'Bpasagadi1579@conestogac.on.ca', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 6),
(5, 'Mani', 'Krishna', 'mani_krishna', 'Mani12344@conestogac.on.ca', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
