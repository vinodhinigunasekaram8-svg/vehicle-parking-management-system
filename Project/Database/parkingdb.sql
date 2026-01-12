-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2026 at 11:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`) VALUES
(1, '2001');

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE `customerdetails` (
  `Id` int(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactNo` int(10) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`Id`, `name`, `email`, `contactNo`, `address`) VALUES
(105, 'Aadhi', 'vinosabaragamuwa@gmail.com', 759862358, 'Rakwana'),
(106, 'Anu', NULL, 775698555, 'Rakwana'),
(107, 'Ajai', 'vinosabaragamuwa@gmail.com', 759862358, 'Rakwana'),
(108, 'Sadhu', 'vinosabaragamuwa@gmail.com', 778569214, 'Rakwana'),
(109, 'chandhru', 'vinosabaragamuwa@gmail.com', 769853698, 'Rakwana'),
(111, 'Sharmila', 'vinosabaragamuwa@gmail.com', 769851236, 'Rakwana'),
(112, 'Pradheep', 'vinosabaragamuwa@gmail.com', 768259865, 'Rakwana'),
(113, 'Nandhini', NULL, 772358952, 'Rakwana'),
(114, 'Janani', NULL, 779658236, 'Kahawatha');

-- --------------------------------------------------------

--
-- Table structure for table `parking_records`
--

CREATE TABLE `parking_records` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `owner_name` varchar(100) DEFAULT NULL,
  `vehicle_type` enum('twowheeler','threewheeler','fourwheeler') NOT NULL,
  `slot_number` int(11) NOT NULL,
  `entry_date` date NOT NULL,
  `entry_time` time NOT NULL,
  `exit_date` date DEFAULT NULL,
  `exit_time` time DEFAULT NULL,
  `total_minutes` int(11) DEFAULT NULL,
  `status` enum('IN','OUT') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parking_slot`
--

CREATE TABLE `parking_slot` (
  `id` int(11) NOT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `vehicle_number` varchar(100) DEFAULT NULL,
  `owner_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `slot_number` int(11) DEFAULT NULL,
  `slot_type` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `entry_time` time DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `exit_time` time DEFAULT NULL,
  `otp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking_slot`
--

INSERT INTO `parking_slot` (`id`, `vehicle_type`, `vehicle_number`, `owner_name`, `email`, `slot_number`, `slot_type`, `status`, `entry_date`, `entry_time`, `exit_date`, `exit_time`, `otp`) VALUES
(59, 'ThreeWheeler', 'AW23454', 'Ajai', 'vinosabaragamuwa@gmail.com', 8, 'ThreeWheeler', 'Confirmed', '2026-01-07', '17:06:05', '2026-01-07', '16:13:01', '9140'),
(60, 'FourWheeler', 'TN0023', 'Anu', '', 8, 'FourWheeler', 'Confirmed', '2026-01-07', '17:03:38', NULL, NULL, '1019'),
(61, 'ThreeWheeler', 'TN908', 'Sadhu', 'vinosabaragamuwa@gmail.com', 3, 'ThreeWheeler', 'Confirmed', '2026-01-07', '17:09:45', NULL, NULL, '7031'),
(62, 'FourWheeler', 'TN987', 'chandhru', 'vinosabaragamuwa@gmail.com', 2, 'FourWheeler', 'Exited', '2026-01-07', '17:12:33', '2026-01-07', '17:15:19', '5814'),
(64, 'ThreeWheeler', 'TN003', 'Sharmila', 'vinosabaragamuwa@gmail.com', 1, 'ThreeWheeler', 'Confirmed', '2026-01-07', '22:09:59', NULL, NULL, '2469'),
(65, 'TwoWheeler', 'ET986', 'Pradheep', 'vinosabaragamuwa@gmail.com', 2, 'TwoWheeler', 'Exited', '2026-01-08', '13:17:43', '2026-01-08', '13:22:11', '7430'),
(66, 'FourWheeler', 'WX0987', 'Nandhini', '', 3, 'FourWheeler', 'Confirmed', '2026-01-08', '15:01:18', NULL, NULL, '7541'),
(67, 'TwoWheeler', 'WX076', 'Janani', '', 1, 'TwoWheeler', 'Confirmed', '2026-01-08', '15:09:15', NULL, NULL, '1968');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `confirmPassword` varchar(10) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `address` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `name`, `username`, `password`, `confirmPassword`, `email`, `phonenumber`, `address`, `status`) VALUES
(62, 'Aadhithya', 'aadhi', 'aadhi222', NULL, 'sekarcolombo564@gmail.cm', '0778523698', 'Rakwana', 'Inactive'),
(64, 'Kumaran', 'kumar', 'kumar123', NULL, 'sekarcolombo564@gmail.com', '0778569855', 'Rakwana', 'Active'),
(65, 'Thilukshan', 'thilu', 'thilu246', NULL, 'sekarcolombo564@gmail.com', '0768595215', 'Rakwana', 'Active'),
(66, 'Saman', 'saman', 'saman222', NULL, 'sekarcolombo564@gmail.com', '0756985252', 'Rakwana', 'Active'),
(69, 'Gunasekaram', 'sekar', 'sekar123', NULL, 'sekarcolombo564@gmail.com', '0778502689', 'Rakwana', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `vehicledetails`
--

CREATE TABLE `vehicledetails` (
  `vehiclenumber` varchar(10) NOT NULL,
  `vehicletype` varchar(15) NOT NULL,
  `vehiclebrand` varchar(15) NOT NULL,
  `vehiclecolor` varchar(15) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `ID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicledetails`
--

INSERT INTO `vehicledetails` (`vehiclenumber`, `vehicletype`, `vehiclebrand`, `vehiclecolor`, `ownername`, `ID`) VALUES
('AY9767', 'Wheel', 'Bajaj', 'Red', 'Aadhi', 115),
('TN0023', 'Car', 'Toyota', 'Red', 'Anu', 116),
('AW23454', 'Wheel', 'Bajaj', 'Green', 'Ajai', 117),
('TN908', 'Wheel', 'Bajaj', 'Red', 'Sadhu', 118),
('TN987', 'Car', 'Toyota', 'White', 'chandhru', 119),
('TN003', 'Wheel', 'Bajaj', 'Red', 'Sharmila', 121),
('ET986', 'Bike', 'Honda', 'White', 'Pradheep', 122),
('WX0987', 'Van', 'Mercedes', 'Blue', 'Nandhini', 123),
('WX076', 'Bike', 'Yamaha', 'Red', 'Janani', 124);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerdetails`
--
ALTER TABLE `customerdetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `parking_records`
--
ALTER TABLE `parking_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_slot`
--
ALTER TABLE `parking_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `vehicledetails`
--
ALTER TABLE `vehicledetails`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customerdetails`
--
ALTER TABLE `customerdetails`
  MODIFY `Id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `parking_records`
--
ALTER TABLE `parking_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_slot`
--
ALTER TABLE `parking_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `vehicledetails`
--
ALTER TABLE `vehicledetails`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
