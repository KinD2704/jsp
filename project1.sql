-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 02:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `rollNo` varchar(10) NOT NULL,
  `s1` int(3) DEFAULT NULL,
  `s2` int(3) DEFAULT NULL,
  `s3` int(3) DEFAULT NULL,
  `s4` int(3) DEFAULT NULL,
  `s5` int(3) DEFAULT NULL,
  `s6` int(3) DEFAULT NULL,
  `s7` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`rollNo`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`) VALUES
('10001', 80, 90, 70, 50, 40, 10, 10),
('10002', 80, 50, 25, 25, 49, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `rollNo` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`course`, `branch`, `rollNo`, `name`, `fatherName`, `gender`) VALUES
('PHP2', 'Computer Science', '10001', 'Nguyen Quy Dat', 'QH', 'Male'),
('JAVA', 'Computer Science', '10002', 'Nguyen Thuy Dung', 'DQ', 'FEMALE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`rollNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
