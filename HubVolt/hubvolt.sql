-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2025 at 03:18 PM
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
-- Database: `hubvolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `device_name` varchar(100) NOT NULL,
  `device_mac_address` varchar(20) NOT NULL,
  `device_ip_address` varchar(20) NOT NULL,
  `device_status` enum('online','offline') DEFAULT 'offline',
  `device_last_connected` datetime DEFAULT NULL,
  `device_port_status` enum('ON','OFF') DEFAULT 'OFF',
  `device_installation_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`device_name`, `device_mac_address`, `device_ip_address`, `device_status`, `device_last_connected`, `device_port_status`, `device_installation_time`) VALUES
('HubVolt_Device_001', 'F4:65:0B:49:78:44', '10.1.158.153', 'offline', '2025-07-04 16:35:19', 'OFF', '2025-06-29 15:44:08'),
('HubVolt_Device_002', 'F4:65:0B:4A:B3:C4', '10.1.149.185', 'offline', '2025-07-04 13:51:18', 'OFF', '2025-07-04 13:28:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`device_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
