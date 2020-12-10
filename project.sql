-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 07:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject20`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'mahee13@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin'),
(3, 'suzon@gmail.com', 'suzonbd');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5fb2dc8b62e1d', '5fb2dc8b63512'),
('5fb2dc8b64fe5', '5fb2dc8b65371'),
('5fb2dc8b663e7', '5fb2dc8b66cb9'),
('5fb2dc8b67cfe', '5fb2dc8b6801a'),
('5fb2dc8b68fa0', '5fb2dc8b692bd');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('nur@gmail.com', '5fb2db14a46ec', 9, 5, 3, 2, '2020-11-16 20:11:22'),
('alom@gmail.com', '5fb2db14a46ec', 0, 5, 0, 5, '2020-11-18 03:59:39'),
('saiful@gmail.com', '5fb2db14a46ec', 0, 5, 0, 5, '2020-11-22 18:57:01'),
('nazmul@gmail.com', '5fb2db14a46ec', 3, 5, 1, 4, '2020-11-22 18:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5fb2dc8b62e1d', 'data', '5fb2dc8b63502'),
('5fb2dc8b62e1d', 'information', '5fb2dc8b63510'),
('5fb2dc8b62e1d', 'instruction', '5fb2dc8b63512'),
('5fb2dc8b62e1d', 'utility', '5fb2dc8b63514'),
('5fb2dc8b64fe5', 'Software', '5fb2dc8b65370'),
('5fb2dc8b64fe5', 'System Software', '5fb2dc8b65371'),
('5fb2dc8b64fe5', 'Application software', '5fb2dc8b65372'),
('5fb2dc8b64fe5', 'Utility program', '5fb2dc8b65373'),
('5fb2dc8b663e7', 'Software', '5fb2dc8b66cb5'),
('5fb2dc8b663e7', 'System Software', '5fb2dc8b66cb8'),
('5fb2dc8b663e7', 'Application software', '5fb2dc8b66cb9'),
('5fb2dc8b663e7', 'Utility program', '5fb2dc8b66cba'),
('5fb2dc8b67cfe', 'interface', '5fb2dc8b6801a'),
('5fb2dc8b67cfe', 'program', '5fb2dc8b6801b'),
('5fb2dc8b67cfe', 'application', '5fb2dc8b6801c'),
('5fb2dc8b67cfe', 'server', '5fb2dc8b6801d'),
('5fb2dc8b68fa0', 'Application software', '5fb2dc8b692ba'),
('5fb2dc8b68fa0', 'Utility program', '5fb2dc8b692bb'),
('5fb2dc8b68fa0', 'System Software', '5fb2dc8b692bc'),
('5fb2dc8b68fa0', 'Operating system', '5fb2dc8b692bd');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5fb2db14a46ec', '5fb2dc8b62e1d', 'Software is a series of ____________ that tells a computer what tasks to perform and how to perform them.', 4, 1),
('5fb2db14a46ec', '5fb2dc8b64fe5', ' ________________programs that control or maintain the operations of the computer and its devices.', 4, 2),
('5fb2db14a46ec', '5fb2dc8b663e7', ' _________________are programs that designed to help users to be more productive with their personal tasks.', 4, 3),
('5fb2db14a46ec', '5fb2dc8b67cfe', 'The function of system software is to serve as the _________ between the user, the application software, and the computer’s hardware', 4, 4),
('5fb2db14a46ec', '5fb2dc8b68fa0', ' ____________a set of programs containing instructions that work together to coordinate all the activities among computer hardware resources', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5fb2db14a46ec', 'Operating System', 3, 0, 5, 5, '', 'exam', '2020-11-16 20:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('alom@gmail.com',9,'20-12-2020');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Hasan Alom', 'M', 'Daffodil International University', 'alom@gmail.com', 123456789, '6d3cfa630aa6c7a7d141ccdbe7a6a358'),
('Suzon', 'M', 'Daffodil International University', 'nazmul@gmail.com', 12345678, '6bd851c1699da4b88c5e5b76957b792a'),
('Jahidun Nur Mahee', 'M', 'Daffodil International University', 'nur@gmail.com', 1969093424, 'd592f2aa1629c10e6165b6fcab259409'),
('Saiful Islam', 'M', 'Daffodil International University', 'saiful@gmail.com', 1456465416313, '88f66c98c36cfccf6ae75bd8196307fa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
