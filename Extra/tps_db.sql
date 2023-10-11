-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 08:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tps_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `CompanyID` int(11) NOT NULL,
  `CompanyName` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Website` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `CompanyName`, `Address`, `ContactNo`, `Website`) VALUES
(1, 'TigerIT Bangladesh LTD.', 'Dhaka', '01800000000', 'https://www.tigerit.com/'),
(2, 'Datasoft Systems BD LTD.', 'Gazipur', '01700000000', 'http://datasoft-bd.com/'),
(3, 'Magnito Digital LTD.', 'Chattagram', '01586455856', 'https://magnitodigital.com/'),
(4, ' Newscred', 'Barisal', '01956482425', 'http//:Newscred.com'),
(5, 'Southtech Group', 'Khulna', '01856512567', 'https://www.southtechgroup.com/'),
(6, 'SoftTech It Ltd.', 'dhaka', '01700000000', 'softtech.it'),
(7, 'Deboniar LTD.', 'Gazipur', '0198456258', 'www.deboniar.org'),
(8, 'hkjhd', 'gds', '02155', 'www.jfjf.com'),
(9, 'gjhgj', 'bjg', '', 'guhkg');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `Coursename` text NOT NULL,
  `Branch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `Coursename`, `Branch`) VALUES
(1, 'Job Ready Beginner', 'BDU'),
(2, 'Job Ready Intermediate', 'BDU'),
(3, 'Job Ready Advanced', 'BDU'),
(4, 'Java Programming', 'BDU'),
(5, 'Spoken English', 'Dhaka'),
(8, 'Japanese Language', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_name` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `NameOfUser` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_name`, `password`, `NameOfUser`, `ContactNo`, `Email`) VALUES
('imran', '123456', 'Imran Hossen', '01987564281', 'imran@gmail.com'),
('mojed', '123456', 'Mojahedur Rahman', '01845698125', 'mojed@gmail.com'),
('rahim', '123456', 'MD Rahim Ullah', '0199985645', 'rahimullah@gmail.com'),
('raian', 'raian420', 'Abdullah Raian', '01856475812', 'raian@gmail.com'),
('sajib', '123456', 'Abid Hasan Sajib', '01854213567', 'sajib@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ScholarNo` varchar(50) NOT NULL,
  `EnrollmentNo` text NOT NULL,
  `Studentname` text NOT NULL,
  `DOB` text NOT NULL,
  `Session` text NOT NULL,
  `Fathername` text NOT NULL,
  `Mothername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ScholarNo`, `EnrollmentNo`, `Studentname`, `DOB`, `Session`, `Fathername`, `Mothername`, `Address`, `ContactNo`, `Email`, `CourseID`) VALUES
('10111', '08', 'hhh', '10/02/1999', '2018-2019', 'ghg', 'nbji', 'gvg', '06216', 'hhh@gmail.com', 5),
('15', '40', 'Mojahed', '10/11/2000', '2018-2019', 'hhhhh', 'jjjjjjjj', 'Dinajpur', '012222', 'mojahed@gmail.com', 4),
('1520', '0005', 'hgj', '10/12/2000', '2018-2019', 'jvk', 'vhgv', 'jkblj', '0254', 'hgj@gmail.com', 5),
('1802007', '02', 'Abid Hasan Sajib', '07/02/2005', '2018-2019', 'MD HHH', 'MS JJJ', 'Mirpur, Dhaka', '01958648521', 'sajib@gmail.com', 2),
('1802040', '03', 'Mojahedur Rahman', '16/11/1999', '2018-2019', 'MD LLL', 'MS GGG', 'Birgonj, Dinajpur', '01987456321', 'mojed@gmail.com', 3),
('1802043', '04', 'Imran Hossen', '10/11/1999', '2018-2019', 'MD NNN', 'MS RRR', 'Paghachong, B.Baria', '01987456125', 'imran@gmail.com', 2),
('1802047', '01', 'Abdullah Raian', '19/11/1999', '2018-2019', 'MR ABC', 'MS DKR', 'Pangsha, Rajbari', '01865412587', 'raian@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `studentplacement`
--

CREATE TABLE `studentplacement` (
  `ID` int(11) NOT NULL,
  `ScholarNo` varchar(50) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `Package` double NOT NULL,
  `PlacementDate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `studentplacement`
--

INSERT INTO `studentplacement` (`ID`, `ScholarNo`, `CompanyID`, `Package`, `PlacementDate`) VALUES
(1, '1802007', 1, 2, '05/06/2023'),
(2, '1802043', 5, 5, '08/06/2023'),
(3, '1802047', 3, 4, '05/06/2024'),
(4, '1802040', 4, 25, '08/12/2026'),
(5, '10111', 6, 10, '20/11/2026');

-- --------------------------------------------------------

--
-- Table structure for table `studenttraining`
--

CREATE TABLE `studenttraining` (
  `ID` int(11) NOT NULL,
  `ScholarNo` varchar(50) NOT NULL,
  `Companyname` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `TrainingDuration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `studenttraining`
--

INSERT INTO `studenttraining` (`ID`, `ScholarNo`, `Companyname`, `Address`, `ContactNo`, `Email`, `TrainingDuration`) VALUES
(1, '1802047', 'Magnito Digital LTD.', 'Chattagram', '01586455856', 'magnito.org', 6),
(2, '1802043', 'TigerIT Bangladesh LTD.', 'Dhaka', '01800000000', 'tiger.com', 12),
(3, '1802040', 'TigerIT Bangladesh LTD.', 'Dhaka', '01800000000', 'tiger.com', 6),
(4, '1802007', 'Magnito Digital LTD.', 'Chattagram', '01586455856', 'magnito.com', 6);

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(50) NOT NULL,
  `User_Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `User_Password`) VALUES
('adf', '111'),
('admin', '12345'),
('imran', '123456'),
('masnoor', '123456'),
('mojed', '123456'),
('rahim', '123456'),
('raian', 'raian420'),
('rakibul', '111111'),
('sabbir@gmail.com', 'sabbir'),
('sajib', '123456'),
('Swapnil', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`CompanyID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ScholarNo`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `studentplacement`
--
ALTER TABLE `studentplacement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CompanyID` (`CompanyID`),
  ADD KEY `ScholarNo` (`ScholarNo`);

--
-- Indexes for table `studenttraining`
--
ALTER TABLE `studenttraining`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ScholarNo` (`ScholarNo`),
  ADD KEY `ScholarNo_2` (`ScholarNo`),
  ADD KEY `ScholarNo_3` (`ScholarNo`),
  ADD KEY `ScholarNo_4` (`ScholarNo`),
  ADD KEY `ScholarNo_5` (`ScholarNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `CompanyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `studentplacement`
--
ALTER TABLE `studentplacement`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `studenttraining`
--
ALTER TABLE `studenttraining`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON UPDATE CASCADE;

--
-- Constraints for table `studentplacement`
--
ALTER TABLE `studentplacement`
  ADD CONSTRAINT `studentplacement_ibfk_2` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`CompanyID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `studentplacement_ibfk_3` FOREIGN KEY (`ScholarNo`) REFERENCES `student` (`ScholarNo`) ON UPDATE CASCADE;

--
-- Constraints for table `studenttraining`
--
ALTER TABLE `studenttraining`
  ADD CONSTRAINT `studenttraining_ibfk_1` FOREIGN KEY (`ScholarNo`) REFERENCES `student` (`ScholarNo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
