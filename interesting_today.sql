-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 08:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interesting_today`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `u_id`, `description`, `created_date`) VALUES
(1, 1, '<p>Every day, people turn to Search to find the best of what the web has to offer. We&rsquo;ve long had policies and automated systems to fight against spammers, and we work to address emerging tactics that look to game our results with low-quality content. We regularly update those policies and systems to effectively tackle these trends so we can continue delivering useful content and connecting people with high-quality websites.<a href=\"https://www.google.com\">google</a></p>\n', '2024-07-01 02:53:30'),
(2, 1, '<p>Every day, people turn to Search to find the best of what the web has to offer. We&rsquo;ve long had policies and automated systems to fight against spammers, and we work to address emerging tactics that look to game our results with low-quality content. We regularly update those policies and systems to effectively tackle these trends so we can continue delivering useful content and connecting people with high-quality websites.<a href=\"https://www.google.com\">google</a></p>\r\n', '2024-07-03 22:53:38'),
(3, 1, '<p>The very first Doodle launched as an &ldquo;out of office&rdquo; message of sorts when company founders Larry and Sergey went on vacation.<br />\r\n<a href=\"https://doodles.google/\">google</a></p>\r\n', '2024-07-12 22:53:41'),
(4, 1, '<p>Doodle for Google student contest winners have gone on to become professional artists&nbsp;<a href=\"https://doodles.google/\">Doodle&nbsp;</a></p>\r\n', '2024-07-25 22:53:44'),
(5, 1, '<p>A paragraph is defined as &ldquo;<strong>a group of sentences or a single sentence that forms a unit</strong>&rdquo; (Lunsford and Connors 116). Length and appearance do not determine whether a section in a paper is a paragraph. For instance, in some styles of writing, particularly journalistic styles, a paragraph can be just one sentence long.<a href=\"http://www.google.com\">#google</a></p>\r\n', '2024-07-27 22:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `activity_like_cmt`
--

CREATE TABLE `activity_like_cmt` (
  `origin` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `like_count` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_like_cmt`
--

INSERT INTO `activity_like_cmt` (`origin`, `a_id`, `u_id`, `like_count`, `comment`, `created_date`) VALUES
(4, 2, 1, 1, '', '2024-08-01 22:16:21'),
(5, 1, 2, 1, '', '2024-08-01 22:18:47'),
(6, 5, 1, 1, '', '2024-08-01 23:56:45'),
(7, 4, 1, 1, '', '2024-08-01 23:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `cmd` text NOT NULL,
  `u_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `creat_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `cmd`, `u_id`, `a_id`, `creat_at`) VALUES
(1, 'welcome', 1, 1, '2024-08-01 22:59:10'),
(2, 'welcome', 1, 1, '2024-08-01 23:07:38'),
(3, 'welcome', 1, 1, '2024-08-01 23:08:07'),
(4, 'hello world', 1, 3, '2024-08-01 23:08:47'),
(5, 'hello world', 1, 1, '2024-08-01 23:18:44'),
(6, 'teat', 1, 3, '2024-08-01 23:18:53'),
(7, 'comments on now', 1, 1, '2024-08-01 23:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Akash', 'akash@gmail.com', '123456789'),
(2, 'sathish', 'sathish@gmail.com', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_like_cmt`
--
ALTER TABLE `activity_like_cmt`
  ADD PRIMARY KEY (`origin`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
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
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `activity_like_cmt`
--
ALTER TABLE `activity_like_cmt`
  MODIFY `origin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
