-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2021 at 06:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `whiteboard`
--
CREATE DATABASE IF NOT EXISTS `whiteboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `whiteboard`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` int(11) NOT NULL,
  `contactName` varchar(1000) NOT NULL,
  `contactLocal` varchar(50) NOT NULL,
  `contactCell` varchar(50) NOT NULL,
  `updateDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactID`, `contactName`, `contactLocal`, `contactCell`, `updateDate`) VALUES
(1, 'CEIT Spare Phone', '', '604-418-4669', ''),
(2, 'CEIT Student Assistant (CO)', '', '604-306-4777', ''),
(3, 'CEIT Student Assistant (NW)', '', '604-396-4475', ''),
(4, 'Classroom Hotline', '5333', '', ''),
(5, 'Service Desk (Main Number)', '5330', '', ''),
(6, 'Service Desk Hotline (CEIT staff use only)', '5803', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `local` varchar(50) NOT NULL,
  `cell` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `updateDate` varchar(50) NOT NULL,
  `team` varchar(1000) NOT NULL,
  `isManager` varchar(10) NOT NULL,
  `isFieldTech` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `name`, `local`, `cell`, `status`, `comment`, `updateDate`, `team`, `isManager`, `isFieldTech`) VALUES
(1, 'Michael Lam', '5904', '604-396-1036', 'OUT', '', '2021-10-22 10:33:04', 'Administration', 'Yes', 'No'),
(2, 'Jason Dadswell', '5656', '604-441-2206', 'NW', '', '2021-11-18 13:18:41', 'Administration', 'Yes', 'No'),
(3, 'Dan Georgescu', '5894', '778-710-1777', 'NW', '', '2021-11-19 09:41:09', 'IS - Communications & Id Management, IS - Physical', 'Yes', 'No'),
(4, 'Alan Chou', '6287', '604-396-4481', 'COQ', '', '2021-10-20 14:08:10', 'Desktop - DL', 'No', 'Yes'),
(5, 'Aayushi Mehta', '4785', '778-384-0308', 'WFH', '', '2021-11-18 11:40:27', 'LMS', 'No', 'No'),
(6, 'Adriana Arroyave', '5359', '', 'OUT', '', '2021-11-18 14:26:09', 'App Services', 'No', 'No'),
(7, 'Alec Spencer', '5022', '778-384-9100', 'WFH', '', '2021-11-19 09:51:00', 'Security', 'No', 'No'),
(8, 'Alie Tangney', '5083', '604-307-1633', 'NW', '', '2021-11-09 10:32:30', 'Administration', 'No', 'No'),
(9, 'Asif Said', '5738', '604-374-3208', 'NW', '', '2021-11-09 10:32:50', 'Endpoint', 'No', 'No'),
(10, 'James Tong', '5529', '', 'NW', '', '2021-11-09 10:38:17', 'App Services', 'No', 'No'),
(11, 'Ken Graeme', '5733', '604-218-5395', 'COQ', '', '2021-11-09 10:42:56', 'Desktop - DL', 'No', 'Yes'),
(12, 'Khushbu Batra', '', '', 'NW', '', '2021-10-14 12:37:47', 'LMS', 'No', 'No'),
(13, 'Tim Paul', '', '', 'OUT', '', '2021-11-19 09:45:12', 'AV Integration, AV Production, Learning Designers,', 'Yes', 'No'),
(14, 'Jimmy Hsieh', '4735', '604-306-1795', 'NW', '', '2021-11-09 10:40:07', 'IS - Communications & Id Management', 'No', 'No'),
(15, 'Mike Slett', '', '', 'WFH', '', '2021-11-19 08:24:34', 'Service Desk', 'No', 'No'),
(16, 'Michelle Henderson', '4749', '604-306-2405', 'NW', '', '2021-11-19 08:45:31', 'Desktop - NW', 'No', 'Yes'),
(74, 'Elouie (Lou) Ildefonso', '4609', '604-306-5536', 'WFH', '', '2021-11-19 09:39:58', 'Service Desk', 'No', 'No'),
(102, 'Amy Tse', '5695', '', 'NW', '', '2021-11-09 10:18:40', 'App Services', 'No', 'No'),
(103, 'Chris Lin', '5655', '604-374-6158', 'NW', '', '2021-11-09 10:19:37', 'Desktop - NW', 'No', 'Yes'),
(104, 'Connie Brauer', '5653', '604-306-7648', 'COQ', '', '2021-11-09 10:20:26', 'Administration', 'No', 'No'),
(105, 'Dwayne Thornhill', '5253', '604-764-6034', 'NW', '', '2021-11-09 10:21:45', 'AV Production', 'No', 'No'),
(106, 'Simon Yee', '5619', '604-306-5514', 'WFH', '', '2021-11-19 09:36:19', 'Service Desk', 'No', 'No'),
(107, 'Ethan Hong', '6289', '604-363-2557', 'COQ', '', '2021-11-09 10:34:37', 'Desktop - DL', 'No', 'Yes'),
(108, 'Fernando de La Cruz', '4741', '', 'NW', '', '2021-11-09 10:34:56', 'App Services', 'No', 'No'),
(109, 'Harmanpreet Singh', '5736', '778-302-7220', 'NW', '', '2021-11-18 13:32:46', 'Desktop - NW', 'No', 'Yes'),
(110, 'Homeira Shirazi', '5636', '', 'NW', '', '2021-11-09 10:35:58', 'App Services', 'No', 'No'),
(111, 'Hope Miller', '5936', '604-218-0578', 'NW', '', '2021-11-09 10:36:30', 'Learning Designers', 'No', 'No'),
(112, 'Huy Nhat Nguyen', '5569', '604-218-5877', 'WFH', '', '2021-11-09 10:37:05', 'LMS', 'No', 'No'),
(113, 'Ianna Kim', '5220', '', 'NW', '', '2021-11-19 07:33:46', 'LMS', 'No', 'No'),
(114, 'Jack Sauter Forseck', '6288', '604-374-6301', 'NW', '', '2021-11-09 10:37:51', 'Desktop - NW', 'No', 'Yes'),
(115, 'Jo-Ann Sliziak', '5081', '604-218-2158', 'NW', '', '2021-11-09 10:41:57', 'Administration', 'No', 'No'),
(116, 'Kerry Wong', '5332', '604-551-0027', 'NW', '', '2021-11-19 09:44:04', 'Desktop - Anvil, Desktop - NW, Desktop - DL, Deskt', 'No', 'No'),
(117, 'Marena Karasevich', '6336', '604-375-5086', 'WFH', '', '2021-11-18 12:43:18', 'IS - Physical Network', 'No', 'No'),
(118, 'Meet Thind', '5224', '604-306-5529', 'WFH', '', '2021-11-18 11:43:41', 'Service Desk', 'No', 'No'),
(119, 'Zaheer Shafi', '4734', '', 'OUT', '', '2021-11-09 11:11:03', 'App Services', 'No', 'No'),
(120, 'Vladimir Rasulov', '5937', '', 'OUT', '', '2021-11-09 11:11:50', 'App Services', 'No', 'No'),
(121, 'Valentin Chopov', '5937', '', 'WFH', '', '2021-11-18 14:07:18', 'IS - Communications & Id Management', 'No', 'No'),
(122, 'Tom Guimaraes', '5654', '604-838-4748', 'OUT', 'Call cell for urgent Mitel issues', '2021-11-18 15:21:24', 'IS - Communications & Id Management', 'No', 'No'),
(123, 'Steven Bishop', '5660', '', 'OUT', '', '2021-11-09 11:13:24', 'LMS', 'No', 'No'),
(124, 'Simran Kaur', '5722', '604-818-2339', 'OUT', '', '2021-11-18 12:36:52', 'Endpoint', 'No', 'No'),
(125, 'Scott MacDonald', '5268', '604-374-3724', 'NW', '', '2021-11-18 13:10:34', 'AV Integration', 'Yes', 'No'),
(127, 'Salvador Valencia', '5395', '', 'NW', '', '2021-11-18 13:31:37', 'App Services', 'No', 'No'),
(128, 'Ryan Cousineau', '6149', '', 'OUT', '', '2021-11-18 10:10:17', 'Desktop - NW', 'No', 'No'),
(129, 'Rob Nemec', '5735', '604-375-5459', 'OUT', '', '2021-11-18 15:52:12', 'IS - Data Centre, IS - Physical Network', 'No', 'No'),
(130, 'Ricky Leung', '5672', '604-506-1680', 'NW', '', '2021-11-18 12:49:09', 'App Services', 'No', 'No'),
(131, 'Ricky Chew', '5659', '604-218-2531', 'WFH', '', '2021-11-18 13:06:45', 'IS - Data Centre', 'No', 'No'),
(132, 'Richard Chong', '6127', '', 'OUT', '', '2021-11-09 11:20:30', 'Endpoint', 'No', 'No'),
(133, 'Raj Pooni', '5698', '', 'OUT', '', '2021-11-09 11:20:53', 'IS - Data Centre', 'No', 'No'),
(134, 'Olga Routkovskaia', '5254', '', 'OUT', '', '2021-11-09 11:21:23', 'Learning Designers', 'No', 'No'),
(135, 'Noor Vasaya', '6334', '', 'OUT', '', '2021-11-09 11:21:47', 'AV Production', 'No', 'No'),
(136, 'Nina Spreeuw', '5662', '', 'OUT', '', '2021-11-09 11:22:09', 'Administration', 'No', 'No'),
(137, 'Mitz Kakazu', '', '604-306-0417', 'OUT', '', '2021-11-18 13:02:32', 'Desktop - TTG', 'No', 'Yes'),
(138, 'Michele Perry', '5453', '604-551-5816', 'WFH', '', '2021-11-19 08:01:00', 'Service Desk', 'No', 'No'),
(139, 'Melissa Sankey', '5885', '', 'OUT', '', '2021-11-09 11:24:03', 'Administration', 'No', 'No'),
(140, 'Anna Machaj', '6661', '604-218-6385', 'WFH', '', '2021-11-18 15:57:44', 'Security', 'Yes', 'No'),
(141, 'Harvy Dhillon', '', '', 'NW', '', '2021-11-09 11:27:00', 'Desktop - NW', 'No', 'Yes'),
(142, 'Jacob Goldowitz', '', '', 'NW', '', '2021-11-09 11:27:39', 'Learning Designers', 'No', 'No'),
(143, 'Amandip Sidhu', '5002', '', 'OUT', '', '2021-11-09 11:28:15', 'Administration', 'Yes', 'No'),
(144, 'Nomaan Beg', '', '', 'OUT', '', '2021-11-09 11:28:35', 'App Services', 'No', 'No'),
(145, 'Shalini Verghese', '5024', '', 'OUT', '', '2021-11-09 11:29:23', 'App Services', 'Yes', 'No'),
(146, 'David Moody', '', '', 'OUT', '', '2021-11-09 11:28:58', 'App Services', 'No', 'No'),
(147, 'Shahram Akhtary', '5716', '778-938-0829', 'OUT', '', '2021-11-18 11:59:08', 'App Services', 'No', 'No'),
(148, 'Raphael Yamada', '4737', '604-418-4669', 'NW', '', '2021-11-18 12:37:32', 'Desktop - DL', 'No', 'Yes'),
(149, 'Paris Pang', '', '', 'OUT', '', '2021-11-09 11:51:32', 'LMS', 'No', 'No'),
(150, 'Jake Hermiston', '', '', 'ANVIL', '', '2021-11-09 11:52:11', 'AV Production', 'No', 'No'),
(151, 'Jamie Michael', '5331', '', 'OUT', '', '2021-11-18 11:41:07', 'IS - Communications & Id Management, IS - Data Cen', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `shiftID` int(11) NOT NULL,
  `shiftName` varchar(1000) NOT NULL,
  `fieldTechName` varchar(1000) NOT NULL,
  `updateShiftDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shiftID`, `shiftName`, `fieldTechName`, `updateShiftDate`) VALUES
(1, 'NW Primary Field Tech', 'Raphael Yamada', '2021-11-19 07:54:28'),
(2, 'NW Backup Field Tech', 'Michelle Henderson', '2021-11-19 08:44:31'),
(3, 'NW Night Field Tech', '', '2021-11-09 11:24:45'),
(4, 'COQ Primary Field Tech', '', '2021-11-09 15:17:33'),
(5, 'COQ Backup Field Tech', '', '2021-11-09 15:17:43'),
(6, 'COQ Night Field Tech', '', '2021-11-09 11:24:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`shiftID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `shiftID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
