-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 07:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register`
--

CREATE TABLE `tbl_register` (
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `otp_expiry` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_register`
--

INSERT INTO `tbl_register` (`email`, `password`, `otp`, `is_verified`, `otp_expiry`) VALUES
('kingsmart0551@gmail.com', '$2y$10$iP5ZNlxbjHA7DuJnYIDdOOVYZOPAupmmvRH86gszkjheAjzW1q4QK', '251572', 0, '2025-03-15 23:21:51'),
('kingsmart9190@gmail.com', '$2y$10$85t6mV4ClTOBHqHsrbau5eHuqzcpktBkHLwYbehlKZ12DUMXsUfXi', '217703', 0, '2025-03-16 02:10:38'),
('kingsmart919@gmail.com', '$2y$10$y6aKJdge8CLonxJfaoMQBOTQaQWgEKwhsWuOcg1tivtpfq7FDsGZ6', NULL, 1, '2025-03-16 01:11:10'),
('etteyabrahamduah@gmail.com', '$2y$10$upJvUAjF6.IBYKQE6EcXlu5OzT/YVRx0p8f2HT3uOdfKUAEALwFPi', '351941', 0, '2025-03-18 02:42:12'),
('etteybenjamin15@gmail.com', '$2y$10$uVSrlJMbcWH6s0ZbyVJCCuVFE7S9hIJ6L7.o/u2dSbFMH34yCz34G', NULL, 1, '2025-03-17 22:16:07'),
('etteybenjamin@gmail.com', '$2y$10$DpatV2hUScSeMTRZRNuofOTlvAbJgTGmw2Y8cV8RUjsvvRHW8UY8i', NULL, 1, '2025-03-18 04:40:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
