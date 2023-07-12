-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2023 at 09:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `message` varchar(256) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp(),
  `room_no` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `message`, `dt`, `room_no`) VALUES
(99, '12', 'hey', '2023-07-11 18:14:24', 1),
(100, 'adminXYZ', '12 left the chat!', '2023-07-11 18:19:36', 0),
(101, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:19:39', 0),
(102, 'adminXYZ', '12 left the chat!', '2023-07-11 18:19:46', 0),
(103, 'adminXYZ', 'Kartik joined the chat!', '2023-07-11 18:19:53', 1),
(104, 'adminXYZ', 'Kartik left the chat!', '2023-07-11 18:20:28', 0),
(105, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:22:27', 12),
(106, 'adminXYZ', '12 left the chat!', '2023-07-11 18:31:44', 0),
(107, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:31:48', 12),
(108, 'adminXYZ', '12 left the chat!', '2023-07-11 18:31:55', 0),
(109, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:32:07', 1),
(110, 'adminXYZ', '12 left the chat!', '2023-07-11 18:32:26', 0),
(111, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:32:29', 12),
(112, 'adminXYZ', '12 left the chat!', '2023-07-11 18:32:56', 0),
(113, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:32:58', 1),
(114, '12', '12', '2023-07-11 18:33:12', 1),
(115, 'adminXYZ', '12 left the chat!', '2023-07-11 18:34:05', 0),
(116, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:34:12', 1),
(117, '12', '123', '2023-07-11 18:34:27', 1),
(118, '12', '1212', '2023-07-11 18:34:44', 1),
(119, '12', '1212', '2023-07-11 18:34:45', 1),
(120, '12', '12122', '2023-07-11 18:34:48', 1),
(121, 'adminXYZ', '12 left the chat!', '2023-07-11 18:34:59', 0),
(122, 'adminXYZ', '1212 joined the chat!', '2023-07-11 18:35:03', 2),
(123, 'adminXYZ', '1212 left the chat!', '2023-07-11 18:35:31', 0),
(124, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:35:35', 2),
(125, 'adminXYZ', '12 left the chat!', '2023-07-11 18:35:38', 0),
(126, 'adminXYZ', 'Kartik joined the chat!', '2023-07-11 18:35:42', 2),
(127, 'adminXYZ', 'Kartik left the chat!', '2023-07-11 18:35:54', 0),
(128, 'adminXYZ', '212 joined the chat!', '2023-07-11 18:35:59', 6),
(129, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:37:41', 1),
(130, 'adminXYZ', '12 left the chat!', '2023-07-11 18:37:45', 1),
(131, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:37:47', 1),
(132, 'adminXYZ', '12 left the chat!', '2023-07-11 18:37:49', 1),
(133, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:37:51', 1),
(134, 'adminXYZ', '12 left the chat!', '2023-07-11 18:37:53', 1),
(135, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:37:55', 2),
(136, 'adminXYZ', '12 left the chat!', '2023-07-11 18:37:58', 2),
(137, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:38:00', 2),
(138, 'adminXYZ', '12 left the chat!', '2023-07-11 18:38:32', 2),
(139, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:39:09', 1),
(140, 'adminXYZ', '12 left the chat!', '2023-07-11 18:39:16', 1),
(141, 'adminXYZ', '3 joined the chat!', '2023-07-11 18:40:36', 1),
(142, 'adminXYZ', 'jk joined the chat!', '2023-07-11 18:41:52', 1),
(143, 'adminXYZ', 'jk left the chat!', '2023-07-11 18:41:58', 1),
(144, 'adminXYZ', '212 joined the chat!', '2023-07-11 18:42:02', 1),
(145, 'adminXYZ', '212 left the chat!', '2023-07-11 18:46:53', 1),
(146, 'adminXYZ', 'Kartikeya Saini joined the chat!', '2023-07-11 18:48:22', 12),
(147, 'adminXYZ', 'Kartikeya Saini left the chat!', '2023-07-11 18:49:03', 12),
(148, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:56:25', 1),
(149, 'adminXYZ', '12 left the chat!', '2023-07-11 18:59:06', 1),
(150, 'adminXYZ', '12 joined the chat!', '2023-07-11 18:59:08', 1),
(151, 'adminXYZ', '12 left the chat!', '2023-07-11 19:02:11', 1),
(152, 'adminXYZ', 'Kartik joined the chat!', '2023-07-11 19:03:08', 3),
(153, 'adminXYZ', 'Rani joined the chat!', '2023-07-11 19:03:20', 3),
(154, 'Kartik', 'Hi Rani!', '2023-07-11 19:03:25', 3),
(155, 'Rani', 'Hey Kartik how life 🤣', '2023-07-11 19:03:39', 3),
(156, 'Kartik', 'Yup going on how about you lmao 😂😂', '2023-07-11 19:03:58', 3),
(157, 'Rani', 'Bye', '2023-07-11 19:04:29', 3),
(158, 'Kartik', 'Alright good night!', '2023-07-11 19:04:36', 3),
(159, 'adminXYZ', 'Rani left the chat!', '2023-07-11 19:04:50', 3),
(160, 'adminXYZ', 'Kartik left the chat!', '2023-07-11 19:05:08', 3),
(161, 'adminXYZ', 'Stalker joined the chat!', '2023-07-11 19:05:32', 3),
(162, 'adminXYZ', 'Stalker left the chat!', '2023-07-11 19:06:08', 3),
(163, 'adminXYZ', '12 joined the chat!', '2023-07-11 19:08:32', 1),
(164, 'adminXYZ', '12 left the chat!', '2023-07-11 19:10:06', 1),
(165, 'adminXYZ', 'Kartikeya Saini joined the chat!', '2023-07-11 19:10:11', 1),
(166, 'Kartikeya Saini', 'Hey!', '2023-07-11 19:20:51', 1),
(167, 'adminXYZ', 'Kartikeya Saini left the chat!', '2023-07-11 19:21:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_no`, `dt`) VALUES
(1, 12, '2023-07-11 18:23:58'),
(2, 1, '2023-07-11 18:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `inside` int(11) NOT NULL,
  `reported_count` int(11) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  `room_no` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `inside`, `reported_count`, `dt`, `room_no`) VALUES
(47, '12', 0, 0, '2023-07-11 22:26:32', 0),
(48, '123', 0, 0, '2023-07-11 23:00:56', 0),
(49, 'test', 1, 0, '2023-07-11 23:01:33', 0),
(50, 'etst', 0, 0, '2023-07-11 23:20:44', 0),
(51, 'Kartik', 0, 0, '2023-07-11 23:49:53', 1),
(52, '1212', 0, 0, '2023-07-12 00:05:03', 2),
(53, '212', 0, 0, '2023-07-12 00:05:59', 6),
(54, '3', 0, 0, '2023-07-12 00:10:36', 1),
(55, 'jk', 0, 0, '2023-07-12 00:11:52', 1),
(56, 'Kartikeya Saini', 0, 0, '2023-07-12 00:18:22', 12),
(57, 'Rani', 0, 0, '2023-07-12 00:33:20', 3),
(58, 'Stalker', 0, 0, '2023-07-12 00:35:32', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
