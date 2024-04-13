-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 08:56 AM
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
-- Database: `payrolldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `username`, `email`, `password`, `gender`) VALUES
(1, 'admin', 'admintest', 'admintest@gmail.com', '$2y$10$atvoAPlQGAleWzxv6gkcUOZw/CczB4H7owdT60od7F46YvgJi62US', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `morning_time_in` time DEFAULT NULL,
  `morning_time_out` time DEFAULT NULL,
  `afternoon_time_in` time DEFAULT NULL,
  `afternoon_time_out` time DEFAULT NULL,
  `morning_total_hours` decimal(5,2) DEFAULT NULL,
  `afternoon_total_hours` decimal(5,2) DEFAULT NULL,
  `overall_total_hours` decimal(5,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `overtime_time_in` time DEFAULT NULL,
  `overtime_time_out` time DEFAULT NULL,
  `overtime_total_hours` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `morning_time_in`, `morning_time_out`, `afternoon_time_in`, `afternoon_time_out`, `morning_total_hours`, `afternoon_total_hours`, `overall_total_hours`, `status`, `overtime_time_in`, `overtime_time_out`, `overtime_total_hours`) VALUES
(33, 'Abrajano, John Paulo  O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Overtime In', '20:34:06', NULL, NULL),
(34, 'Acabo, Paul John Z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Overtime In', '20:34:28', NULL, NULL),
(35, 'Acabo, Paul John Z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Overtime In', '20:35:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dtr`
--

CREATE TABLE `dtr` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `morning` datetime DEFAULT NULL,
  `afternoon` datetime DEFAULT NULL,
  `total_hours` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `middle_initial` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `employee_id` varchar(10) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `lname`, `fname`, `middle_initial`, `name`, `address`, `employee_id`, `mobile_number`, `barangay`, `street`, `city`, `postal_code`, `gender`, `department`, `salary`, `start_date`) VALUES
(12, 'Abrajano', 'John Paulo ', 'O', 'Abrajano, John Paulo  O', NULL, '2021', 9682079765, NULL, NULL, NULL, NULL, 'male', 'Cashier', 350.00, '2024-03-23'),
(13, 'Acabo', 'Paul John', 'Z', 'Acabo, Paul John Z', NULL, '22123', 1231231231231321, NULL, NULL, NULL, NULL, 'male', 'Barista', 555.00, '2024-03-23'),
(14, 'Aquino', 'Leonard', 'A.', 'Aquino, Leonard A.', NULL, '2021-20202', 9218844712, 'Barangay Masagana', 'Purok Mabuhay', 'Zamboanga City', '7000', 'male', 'Barista', 400.00, '2024-04-11'),
(15, 'Abukar', 'Malik', 'O.', 'Abukar, Malik O.', ', , , ', '2021-0023', 92281234112, 'Barangay Maasin', 'Purok Manila', 'Zamboanga City', '7000', 'male', 'Barista', 400.00, '2024-04-11');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_name`, `image_path`, `created_at`) VALUES
(667, '6610ccc638d06.png', 'employee_Photo/6610ccc638d06.png', '2024-04-06 04:17:10'),
(668, '6610cfbc1453a.png', 'employee_Photo/6610cfbc1453a.png', '2024-04-06 04:29:48'),
(669, '6610d7efc15f1.png', 'employee_Photo/6610d7efc15f1.png', '2024-04-06 05:04:47'),
(670, '6610d9b32c31e.png', 'employee_Photo/6610d9b32c31e.png', '2024-04-06 05:12:19'),
(671, '6610dadf7ece2.png', 'employee_Photo/6610dadf7ece2.png', '2024-04-06 05:17:19'),
(672, '6610db4969257.png', 'employee_Photo/6610db4969257.png', '2024-04-06 05:19:05'),
(673, '6610db5c0e63b.png', 'employee_Photo/6610db5c0e63b.png', '2024-04-06 05:19:24'),
(674, '6610dbdd5aa56.png', 'employee_Photo/6610dbdd5aa56.png', '2024-04-06 05:21:33'),
(675, '6610dd15ec820.png', 'employee_Photo/6610dd15ec820.png', '2024-04-06 05:26:45'),
(676, '6610df601d479.png', 'employee_Photo/6610df601d479.png', '2024-04-06 05:36:32'),
(677, '6610e0337f210.png', 'employee_Photo/6610e0337f210.png', '2024-04-06 05:40:03'),
(678, '6610e0eb54216.png', 'employee_Photo/6610e0eb54216.png', '2024-04-06 05:43:07'),
(679, '6610e0fda2039.png', 'employee_Photo/6610e0fda2039.png', '2024-04-06 05:43:25'),
(680, '6610e1190ee1c.png', 'employee_Photo/6610e1190ee1c.png', '2024-04-06 05:43:53'),
(681, '6610e128011fa.png', 'employee_Photo/6610e128011fa.png', '2024-04-06 05:44:08'),
(682, '6610e12c4ed76.png', 'employee_Photo/6610e12c4ed76.png', '2024-04-06 05:44:12'),
(683, '6617cbd14b49d.png', 'employee_Photo/6617cbd14b49d.png', '2024-04-11 11:38:57'),
(684, '6617d8b944a9e.png', 'employee_Photo/6617d8b944a9e.png', '2024-04-11 12:34:01'),
(685, '6617d8be8a21d.png', 'employee_Photo/6617d8be8a21d.png', '2024-04-11 12:34:06'),
(686, '6617d8d4d3519.png', 'employee_Photo/6617d8d4d3519.png', '2024-04-11 12:34:28'),
(687, '6617d915ae5f3.png', 'employee_Photo/6617d915ae5f3.png', '2024-04-11 12:35:33'),
(688, '6617d91e82be2.png', 'employee_Photo/6617d91e82be2.png', '2024-04-11 12:35:42'),
(689, '6617edda106fe.png', 'employee_Photo/6617edda106fe.png', '2024-04-11 14:04:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtr`
--
ALTER TABLE `dtr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `dtr`
--
ALTER TABLE `dtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dtr`
--
ALTER TABLE `dtr`
  ADD CONSTRAINT `dtr_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
