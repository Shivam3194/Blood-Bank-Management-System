-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 21, 2022 at 10:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blooddonate`
--

CREATE TABLE `blooddonate` (
  `donoid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddonate`
--

INSERT INTO `blooddonate` (`donoid`, `rid`, `hid`, `bg`, `status`) VALUES
(15, 4, 1, 'B+', 'Pending'),
(16, 1, 1, 'A+', 'Pending'),
(17, 10, 6, 'AB-', 'Accepted'),
(19, 9, 6, 'B+', 'Pending'),
(20, 8, 6, 'AB+', 'Pending'),
(21, 6, 6, 'B+', 'Pending'),
(22, 5, 6, 'B+', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `bloodinfo`
--

CREATE TABLE `bloodinfo` (
  `bid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodinfo`
--

INSERT INTO `bloodinfo` (`bid`, `hid`, `bg`) VALUES
(20, 5, 'B+'),
(23, 6, 'O-'),
(27, 7, 'B+'),
(34, 4, 'O-'),
(37, 1, 'A+'),
(39, 6, 'AB-'),
(40, 6, 'AB+');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `reqid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`reqid`, `hid`, `rid`, `bg`, `status`) VALUES
(17, 4, 8, 'A-', 'Pending'),
(18, 5, 10, 'B+', 'Pending'),
(19, 6, 10, 'O-', 'Pending'),
(20, 1, 10, 'A+', 'Accepted'),
(21, 5, 10, 'B+', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpassword` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `hcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hname`, `hemail`, `hpassword`, `hphone`, `hcity`) VALUES
(1, 'Gandhi hospital', 'gandhi@gmail.com', 'gandhi', '7865376358', 'Delhi'),
(4, 'Arunodhaya', 'arunodhaya@gmail.com', 'arunodhaya', '9898988909', 'Ballari'),
(5, 'Columbia Asia', 'columbia@gmail.com', 'asia47', '080616156262', 'Bengaluru'),
(6, 'Apollo Hospital', 'apollo@gmail.com', 'apollo247', '04428293333', 'Chennai'),
(7, 'Sree Amaravathi Multispeciality Hospital', 'sreeamaravathihospitals@gmail.com', 'amaravathi', '09441432567', 'Amaravathi'),
(8, 'best Hosital', 'nik@gmail.com', '123456', '9988776655', 'gorakhpur');

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE `receivers` (
  `id` int(11) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rpassword` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `rphone` varchar(100) NOT NULL,
  `rbg` varchar(10) NOT NULL,
  `rcity` varchar(100) NOT NULL,
  `flag` bit(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `rname`, `remail`, `rpassword`, `gender`, `rphone`, `rbg`, `rcity`, `flag`) VALUES
(1, 'test', 'test@gmail.com', 'test', 'male', '8875643456', 'A+', 'lucknow', b'00'),
(4, 'Chandana', 'xyz@gmail.com', 'xyz@47', 'male', '9902477355', 'B+', 'Ballari', b'00'),
(5, 'Rithish', 'abcd@gmail.com', 'rithish', 'male', '9380073433', 'B+', 'Tirupathi', b'00'),
(6, 'Akshay', 'klmn@gmail.com', 'akshay74', 'male', '8106298053', 'B+', 'Hyderabad', b'00'),
(7, 'Nandhini', 'nandhu@gmail.com', 'nandhu989', 'male', '9849492206', 'AB-', 'Bengaluru', b'00'),
(8, 'Nikhil', 'nik@gmail.com', '123456', 'male', '9988776655', 'AB+', 'gorakhpur', b'00'),
(9, 'aman', 'aman@gmail.com', '123456', 'male', '9223456783', 'B+', 'kanpur', b'00'),
(10, 'Dhananjay Chaudhary', 'dk69425@gmail.com', '123456', 'male', '7897958595', 'AB-', 'gorakhpur', b'01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blooddonate`
--
ALTER TABLE `blooddonate`
  ADD PRIMARY KEY (`donoid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  ADD PRIMARY KEY (`reqid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivers`
--
ALTER TABLE `receivers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blooddonate`
--
ALTER TABLE `blooddonate`
  MODIFY `donoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  MODIFY `reqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `receivers`
--
ALTER TABLE `receivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD CONSTRAINT `bloodinfo_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
