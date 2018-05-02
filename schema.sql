-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2018 at 01:53 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ensys.local`
--

-- --------------------------------------------------------

--
-- Table structure for table `BATEnrollment`
--

CREATE TABLE `BATEnrollment` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BATExpedient`
--

CREATE TABLE `BATExpedient` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BATSubject`
--

CREATE TABLE `BATSubject` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `expedientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CASEnrollment`
--

CREATE TABLE `CASEnrollment` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CASExpedient`
--

CREATE TABLE `CASExpedient` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CASSubject`
--

CREATE TABLE `CASSubject` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `expedientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `lectiveYear` varchar(9) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Enrollment`
--

CREATE TABLE `Enrollment` (
  `id` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `courseId` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ESOEnrollment`
--

CREATE TABLE `ESOEnrollment` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ESOExpedient`
--

CREATE TABLE `ESOExpedient` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ESOSubject`
--

CREATE TABLE `ESOSubject` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `expedientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `example`
--

CREATE TABLE `example` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `example`
--

INSERT INTO `example` (`id`, `name`) VALUES
(1, 'Michael'),
(2, 'Joseph');

-- --------------------------------------------------------

--
-- Table structure for table `Expedient`
--

CREATE TABLE `Expedient` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FPEnrollment`
--

CREATE TABLE `FPEnrollment` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FPExpedient`
--

CREATE TABLE `FPExpedient` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LectiveYear`
--

CREATE TABLE `LectiveYear` (
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Module`
--

CREATE TABLE `Module` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `expedientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prestudent`
--

CREATE TABLE `prestudent` (
  `id` int(11) NOT NULL,
  `dni_nie` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `surnames` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `studies` text COLLATE utf8_unicode_ci NOT NULL,
  `born` date NOT NULL,
  `nim` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prestudent`
--

INSERT INTO `prestudent` (`id`, `dni_nie`, `email`, `name`, `surnames`, `address`, `studies`, `born`, `nim`) VALUES
(7, '145151234', 'email@example.com', 'John', 'Doe', 'Mountain View 17', 'ESO', '1999-11-01', '14515123420171114231124');

-- --------------------------------------------------------

--
-- Table structure for table `Relative`
--

CREATE TABLE `Relative` (
  `id` int(11) NOT NULL,
  `dni_nie` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `surnames` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `id` int(11) NOT NULL,
  `dni_nie` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `first_surname` text COLLATE utf8_unicode_ci NOT NULL,
  `second_surname` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `town` text COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `nationality` text COLLATE utf8_unicode_ci NOT NULL,
  `email` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `mobile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StudentRelative`
--

CREATE TABLE `StudentRelative` (
  `studentId` int(11) NOT NULL,
  `relativeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `uid` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UF`
--

CREATE TABLE `UF` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `moduleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BATEnrollment`
--
ALTER TABLE `BATEnrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BATExpedient`
--
ALTER TABLE `BATExpedient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `BATSubject`
--
ALTER TABLE `BATSubject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expedientId` (`expedientId`);

--
-- Indexes for table `CASEnrollment`
--
ALTER TABLE `CASEnrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CASExpedient`
--
ALTER TABLE `CASExpedient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CASSubject`
--
ALTER TABLE `CASSubject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expedientId` (`expedientId`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lectiveYear` (`lectiveYear`);

--
-- Indexes for table `Enrollment`
--
ALTER TABLE `Enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ESOEnrollment`
--
ALTER TABLE `ESOEnrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ESOExpedient`
--
ALTER TABLE `ESOExpedient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ESOSubject`
--
ALTER TABLE `ESOSubject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expedientId` (`expedientId`);

--
-- Indexes for table `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Expedient`
--
ALTER TABLE `Expedient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FPEnrollment`
--
ALTER TABLE `FPEnrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `FPExpedient`
--
ALTER TABLE `FPExpedient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `LectiveYear`
--
ALTER TABLE `LectiveYear`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `Module`
--
ALTER TABLE `Module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expedientId` (`expedientId`);

--
-- Indexes for table `prestudent`
--
ALTER TABLE `prestudent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prestudent_email` (`email`);

--
-- Indexes for table `Relative`
--
ALTER TABLE `Relative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni_nie` (`dni_nie`);

--
-- Indexes for table `StudentRelative`
--
ALTER TABLE `StudentRelative`
  ADD KEY `studentId` (`studentId`,`relativeId`),
  ADD KEY `relativeId` (`relativeId`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `todos_uid` (`uid`);

--
-- Indexes for table `UF`
--
ALTER TABLE `UF`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BATSubject`
--
ALTER TABLE `BATSubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CASSubject`
--
ALTER TABLE `CASSubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Course`
--
ALTER TABLE `Course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ESOSubject`
--
ALTER TABLE `ESOSubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `example`
--
ALTER TABLE `example`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Expedient`
--
ALTER TABLE `Expedient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prestudent`
--
ALTER TABLE `prestudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Relative`
--
ALTER TABLE `Relative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Student`
--
ALTER TABLE `Student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UF`
--
ALTER TABLE `UF`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `BATEnrollment`
--
ALTER TABLE `BATEnrollment`
  ADD CONSTRAINT `BATEnrollment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Enrollment` (`id`);

--
-- Constraints for table `BATExpedient`
--
ALTER TABLE `BATExpedient`
  ADD CONSTRAINT `BATExpedient_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Expedient` (`id`);

--
-- Constraints for table `BATSubject`
--
ALTER TABLE `BATSubject`
  ADD CONSTRAINT `BATSubject_ibfk_1` FOREIGN KEY (`id`) REFERENCES `BATExpedient` (`id`);

--
-- Constraints for table `CASEnrollment`
--
ALTER TABLE `CASEnrollment`
  ADD CONSTRAINT `CASEnrollment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Enrollment` (`id`);

--
-- Constraints for table `CASExpedient`
--
ALTER TABLE `CASExpedient`
  ADD CONSTRAINT `CASExpedient_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Expedient` (`id`);

--
-- Constraints for table `CASSubject`
--
ALTER TABLE `CASSubject`
  ADD CONSTRAINT `CASSubject_ibfk_1` FOREIGN KEY (`expedientId`) REFERENCES `CASExpedient` (`id`);

--
-- Constraints for table `Course`
--
ALTER TABLE `Course`
  ADD CONSTRAINT `Course_ibfk_1` FOREIGN KEY (`lectiveYear`) REFERENCES `LectiveYear` (`year`);

--
-- Constraints for table `ESOEnrollment`
--
ALTER TABLE `ESOEnrollment`
  ADD CONSTRAINT `ESOEnrollment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Enrollment` (`id`);

--
-- Constraints for table `ESOExpedient`
--
ALTER TABLE `ESOExpedient`
  ADD CONSTRAINT `ESOExpedient_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Expedient` (`id`);

--
-- Constraints for table `ESOSubject`
--
ALTER TABLE `ESOSubject`
  ADD CONSTRAINT `ESOSubject_ibfk_1` FOREIGN KEY (`expedientId`) REFERENCES `ESOExpedient` (`id`);

--
-- Constraints for table `FPEnrollment`
--
ALTER TABLE `FPEnrollment`
  ADD CONSTRAINT `FPEnrollment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Enrollment` (`id`);

--
-- Constraints for table `FPExpedient`
--
ALTER TABLE `FPExpedient`
  ADD CONSTRAINT `FPExpedient_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Expedient` (`id`);

--
-- Constraints for table `Module`
--
ALTER TABLE `Module`
  ADD CONSTRAINT `Module_ibfk_1` FOREIGN KEY (`expedientId`) REFERENCES `FPExpedient` (`id`);

--
-- Constraints for table `StudentRelative`
--
ALTER TABLE `StudentRelative`
  ADD CONSTRAINT `StudentRelative_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `Student` (`id`),
  ADD CONSTRAINT `StudentRelative_ibfk_2` FOREIGN KEY (`relativeId`) REFERENCES `Relative` (`id`);

--
-- Constraints for table `UF`
--
ALTER TABLE `UF`
  ADD CONSTRAINT `UF_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Module` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
