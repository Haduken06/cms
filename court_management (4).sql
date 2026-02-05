-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2026 at 08:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `court_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_bookings`
--

CREATE TABLE `accepted_bookings` (
  `accepted_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `court_type` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_slot` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `accepted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accepted_bookings`
--

INSERT INTO `accepted_bookings` (`accepted_id`, `reservation_id`, `username`, `fullname`, `email`, `phonenumber`, `court_type`, `date`, `time_slot`, `status`, `users_id`, `accepted_at`) VALUES
(3, 70, 'rics', 'rico ivan', 'rics@yahoo.com', '09123456789', 'Volleyball', '2026-01-28', '7PM - 8PM', 'Accepted', 12, '2026-01-25 15:43:14'),
(4, 72, 'rics', 'rico ivan', 'rics@yahoo.com', '09123456789', 'Basketball', '2026-01-30', '8PM - 9PM', 'Accepted', 12, '2026-01-26 02:02:30'),
(5, 73, 'rics', 'rico ivan', 'rics@yahoo.com', '09123456789', 'Basketball', '2026-01-31', '8PM - 9PM', 'Accepted', 12, '2026-01-26 02:03:53'),
(6, 74, 'ricows', 'rico ivan abadies', 'basae65@gmail.com', '09191234567', 'Basketball', '2026-02-04', '5PM - 6PM', 'Accepted', 18, '2026-01-26 02:11:51'),
(7, 77, 'ricows', 'rico ivan abadies', 'basae65@gmail.com', '09191234567', 'Basketball', '2026-02-07', '7PM - 8PM', 'Accepted', 18, '2026-01-26 07:03:13'),
(8, 78, 'ricows', 'rico ivan abadies', 'basae65@gmail.com', '09191234567', 'Basketball', '2026-01-28', '5PM - 6PM', 'Accepted', 18, '2026-02-03 05:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_bookings`
--

CREATE TABLE `cancelled_bookings` (
  `cancelled_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `court_type` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_slot` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `cancelled_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `denied_bookings`
--

CREATE TABLE `denied_bookings` (
  `denied_id` int(11) NOT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `court_type` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_slot` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `denied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `denied_bookings`
--

INSERT INTO `denied_bookings` (`denied_id`, `reservation_id`, `username`, `fullname`, `email`, `phonenumber`, `court_type`, `date`, `time_slot`, `status`, `users_id`, `denied_at`) VALUES
(1, 69, 'rics', 'rico ivan', 'rics@yahoo.com', '09123456789', 'Volleyball', '2026-01-27', '9PM - 10PM', 'Denied', 12, '2026-01-25 15:46:16'),
(2, 75, 'ricows', 'rico ivan abadies', 'basae65@gmail.com', '09191234567', 'Volleyball', '2026-02-05', '7PM - 8PM', 'Denied', 18, '2026-01-26 02:49:39'),
(3, 79, 'ricows', 'rico ivan abadies', 'basae65@gmail.com', '09191234567', 'Basketball', '2026-02-06', '6PM - 7PM', 'Denied', 18, '2026-02-03 05:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `users_id`, `username`, `role`, `ip_address`, `user_agent`, `login_time`) VALUES
(1, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', '2026-01-25 14:55:40'),
(2, 12, 'rics', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2026-01-25 16:04:40'),
(3, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 00:48:27'),
(4, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 00:50:55'),
(5, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:11:35'),
(6, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:17:45'),
(7, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 01:24:25'),
(8, 12, 'rics', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 02:02:17'),
(9, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 02:11:06'),
(10, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 02:11:22'),
(11, 12, 'rics', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 05:48:17'),
(12, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 05:48:45'),
(13, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 05:51:18'),
(14, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-26 07:00:13'),
(15, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-27 03:30:55'),
(16, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-01-27 03:35:58'),
(17, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-02 05:25:12'),
(18, 18, 'ricows', 'user', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-02 05:34:34'),
(19, 15, 'admin123', 'admin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', '2026-02-03 05:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time_slot` varchar(10) NOT NULL,
  `booking_code` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `fullname`, `email`, `phonenumber`, `purpose`, `date`, `time_slot`, `booking_code`, `created_at`, `status`) VALUES
(80, 'rico ivan abadies', 'r.abadies@yahoo.com', '', 'basketball', '2026-02-05', '7PM - 8PM', '', '2026-02-03 06:37:17.411658', 'pending'),
(81, 'rico ivan abadies', 'r.abadies@yahoo.com', '', 'basketball', '2026-02-05', '7PM - 8PM', '', '2026-02-03 06:41:09.055781', 'pending'),
(82, 'rico ivan abadies', 'r.abadies@yahoo.com', '', 'basketball', '2026-02-05', '7PM - 8PM', '', '2026-02-03 06:43:09.377023', 'pending'),
(83, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-06', '7PM - 8PM', '148251', '2026-02-03 07:03:40.768489', 'PENDING'),
(84, 'rico ivan abadies', 'r.abadies@yahoo.com', '09123456789', 'basketball', '2026-02-06', '7PM - 8PM', '958937', '2026-02-03 07:07:19.140025', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` enum('admin','user') NOT NULL,
  `profile_pic` varchar(255) DEFAULT 'assets/imgs/pfp.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `username`, `fullname`, `email`, `phonenumber`, `password`, `created_at`, `role`, `profile_pic`) VALUES
(7, 'admin', '', NULL, NULL, '$2y$10$c2GZQKeFQ5HOa/mqoqtCLu5.YrW4duHGKONX1ZuM3PK', '2025-06-12 05:11:05', 'admin', 'assets/imgs/pfp.jpg'),
(8, 'admin2', '', NULL, NULL, '$2y$10$FxWzo/DV42UzLIiHDP3RquexW7uR/4DpAem4YLOZ7M0', '2025-06-12 05:11:05', 'admin', 'assets/imgs/pfp.jpg'),
(10, 'qwe', '', 'qwe@gmail.com', '09123456789', '$2y$10$UGFB722hsRSlXAgByRGr9e5Knw1xPafvNcGqf3y4EnNfVYUvDM62u', '2025-07-11 11:39:11', 'user', 'assets/imgs/pfp.jpg'),
(11, 'admintest', '', 'admin@yahoo.com', '09123456778', '$2y$10$qoJDzP2BnG7Rqc2HdZmX7esuPXvi5Qw6pAl4hV5t78GKOjHUOWFxi', '2025-07-11 13:26:29', 'admin', 'assets/imgs/pfp.jpg'),
(12, 'rics', 'rico ivan', 'rics@yahoo.com', '09123456789', '$2y$10$TbWRk22JSXhPFhwulURcIua6JjYhAQs7/HZ3.BeXf6h1KKv1FRNYS', '2025-08-21 15:48:39', 'user', 'assets/imgs/pfp.jpg'),
(13, 'papi', '', 'ninyo@gmail.com', '09123456789', '$2y$10$CTzwGiYIwC/0zZJU4JuPG.UqvYvJWd5EUf.EsBXgKNfoUko.fgbzq', '2025-07-19 05:51:05', 'user', 'assets/imgs/pfp.jpg'),
(14, 'kalbis', 'kristian dave kalbis', 'kalbis@gmail.com', '09123456789', '$2y$10$nDUbwiHPLGJcfnN54eT3SerRBhyziZ1Fkl8ULNn8hUk6kJ0UekVGO', '2025-07-19 06:30:29', 'user', 'assets/imgs/pfp.jpg'),
(15, 'admin123', 'rico', 'rico@gmail.com', '09112456789', '$2y$10$.gtX/wdCwv8luUH/WmlQVeserQVR/hA53XZ/ToW9SsEywhEHAn8m.', '2026-01-26 01:19:57', 'admin', '/courtmss/uploads/profile_pic/profile_admin123_1769390397.jpg'),
(16, 'ricss', 'ricooo', 'rio@gmail.com', '09123456789', '$2y$10$FF9O/pIfcoDhuCco9g7KVeT8AY5cuyqtrQRrxD0DihqNy8ugMBuIi', '2025-09-05 16:32:59', 'user', 'assets/imgs/pfp.jpg'),
(17, 'kwazawa', 'ala wa balo', 'r.abadies@yahoo.com', '09123456789', '$2y$10$5vflfBBrXcZc/9fiBDrQXuE9tVJaslDtKl6v/EnyYBT65fRqsJd8G', '2026-01-07 13:00:42', 'user', 'assets/imgs/pfp.jpg'),
(18, 'ricows', 'rico ivan abadies', 'basae65@gmail.com', '09191234567', '$2y$10$fKn9a7lvFsFzj0sob2HkL.QU0YxSMxwQWJ15kSa5RdMrYht.2/X2K', '2026-01-23 12:31:26', 'user', 'assets/imgs/pfp.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_bookings`
--
ALTER TABLE `accepted_bookings`
  ADD PRIMARY KEY (`accepted_id`),
  ADD KEY `fk_accepted_res` (`reservation_id`);

--
-- Indexes for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  ADD PRIMARY KEY (`cancelled_id`),
  ADD KEY `fk_cancelled_res` (`reservation_id`);

--
-- Indexes for table `denied_bookings`
--
ALTER TABLE `denied_bookings`
  ADD PRIMARY KEY (`denied_id`),
  ADD KEY `fk_denied_res` (`reservation_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted_bookings`
--
ALTER TABLE `accepted_bookings`
  MODIFY `accepted_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cancelled_bookings`
--
ALTER TABLE `cancelled_bookings`
  MODIFY `cancelled_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `denied_bookings`
--
ALTER TABLE `denied_bookings`
  MODIFY `denied_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
