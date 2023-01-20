-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 10:26 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `canc`
--

CREATE TABLE IF NOT EXISTS `canc` (
  `pnr` int(11) NOT NULL,
  `rfare` int(11) DEFAULT '0',
  PRIMARY KEY (`pnr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canc`
--

INSERT INTO `canc` (`pnr`, `rfare`) VALUES
(57, 1100),
(58, 5600),
(60, 175),
(63, 1900);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `cname` varchar(10) NOT NULL,
  PRIMARY KEY (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cname`) VALUES
('AC1'),
('AC2'),
('AC3'),
('CC'),
('EC'),
('SL');

-- --------------------------------------------------------

--
-- Table structure for table `classseats`
--

CREATE TABLE IF NOT EXISTS `classseats` (
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `doj` date NOT NULL,
  `class` varchar(10) NOT NULL,
  `fare` int(11) NOT NULL,
  `seatsleft` int(11) NOT NULL,
  PRIMARY KEY (`trainno`,`sp`,`dp`,`doj`,`class`),
  KEY `class` (`class`),
  KEY `sp` (`sp`,`dp`),
  KEY `dp` (`dp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classseats`
--

INSERT INTO `classseats` (`trainno`, `sp`, `dp`, `doj`, `class`, `fare`, `seatsleft`) VALUES
(6, 'Allahbad', 'Lucknow', '2022-04-01', 'AC1', 2500, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-01', 'AC2', 2300, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-01', 'AC3', 2100, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-01', 'CC', 1900, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-01', 'EC', 1700, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-01', 'SL', 1500, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-02', 'AC1', 2500, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-02', 'AC2', 2300, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-02', 'AC3', 2100, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-02', 'CC', 1900, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-02', 'EC', 1700, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-02', 'SL', 1500, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-03', 'AC1', 2500, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-03', 'AC2', 2300, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-03', 'AC3', 2100, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-03', 'CC', 1900, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-03', 'EC', 1700, 50),
(6, 'Allahbad', 'Lucknow', '2022-04-03', 'SL', 1500, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-01', 'AC1', 2500, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-01', 'AC2', 2300, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-01', 'AC3', 2100, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-01', 'CC', 1900, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-01', 'EC', 1700, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-01', 'SL', 1500, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-02', 'AC1', 2500, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-02', 'AC2', 2300, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-02', 'AC3', 2100, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-02', 'CC', 1900, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-02', 'EC', 1700, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-02', 'SL', 1500, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-03', 'AC1', 2500, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-03', 'AC2', 2300, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-03', 'AC3', 2100, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-03', 'CC', 1900, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-03', 'EC', 1700, 50),
(6, 'Jaipur', 'Allahbad', '2022-04-03', 'SL', 1500, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-01', 'AC1', 2200, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-01', 'AC2', 1500, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-01', 'AC3', 1000, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-01', 'CC', 800, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-01', 'EC', 500, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-01', 'SL', 350, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-02', 'AC1', 2200, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-02', 'AC2', 1500, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-02', 'AC3', 1000, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-02', 'CC', 800, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-02', 'EC', 500, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-02', 'SL', 350, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-03', 'AC1', 2200, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-03', 'AC2', 1500, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-03', 'AC3', 1000, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-03', 'CC', 800, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-03', 'EC', 500, 50),
(12, 'Chandigarh', 'Jaipur', '2022-04-03', 'SL', 350, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-01', 'AC1', 2200, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-01', 'AC2', 1500, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-01', 'AC3', 1000, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-01', 'CC', 800, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-01', 'EC', 500, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-01', 'SL', 350, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-02', 'AC1', 2200, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-02', 'AC2', 1500, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-02', 'AC3', 1000, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-02', 'CC', 800, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-02', 'EC', 500, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-02', 'SL', 350, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-03', 'AC1', 2200, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-03', 'AC2', 1500, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-03', 'AC3', 1000, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-03', 'CC', 800, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-03', 'EC', 500, 50),
(12, 'Jaipur', 'Kolkata', '2022-04-03', 'SL', 350, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-01', 'AC1', 2200, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-01', 'AC2', 1500, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-01', 'AC3', 1000, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-01', 'CC', 800, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-01', 'EC', 500, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-01', 'SL', 350, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-02', 'AC1', 2200, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-02', 'AC2', 1500, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-02', 'AC3', 1000, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-02', 'CC', 800, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-02', 'EC', 500, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-02', 'SL', 350, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-03', 'AC1', 2200, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-03', 'AC2', 1500, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-03', 'AC3', 1000, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-03', 'CC', 800, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-03', 'EC', 500, 50),
(12, 'Kolkata', 'Lucknow', '2022-04-03', 'SL', 350, 50),
(12, 'Lucknow', 'Delhi', '2022-04-01', 'AC1', 2200, 50),
(12, 'Lucknow', 'Delhi', '2022-04-01', 'AC2', 1500, 50),
(12, 'Lucknow', 'Delhi', '2022-04-01', 'AC3', 1000, 50),
(12, 'Lucknow', 'Delhi', '2022-04-01', 'CC', 800, 50),
(12, 'Lucknow', 'Delhi', '2022-04-01', 'EC', 500, 50),
(12, 'Lucknow', 'Delhi', '2022-04-01', 'SL', 350, 50),
(12, 'Lucknow', 'Delhi', '2022-04-02', 'AC1', 2200, 50),
(12, 'Lucknow', 'Delhi', '2022-04-02', 'AC2', 1500, 50),
(12, 'Lucknow', 'Delhi', '2022-04-02', 'AC3', 1000, 50),
(12, 'Lucknow', 'Delhi', '2022-04-02', 'CC', 8000, 50),
(12, 'Lucknow', 'Delhi', '2022-04-02', 'EC', 500, 50),
(12, 'Lucknow', 'Delhi', '2022-04-02', 'SL', 350, 50),
(12, 'Lucknow', 'Delhi', '2022-04-03', 'AC1', 2200, 50),
(12, 'Lucknow', 'Delhi', '2022-04-03', 'AC2', 1500, 50),
(12, 'Lucknow', 'Delhi', '2022-04-03', 'AC3', 1000, 50),
(12, 'Lucknow', 'Delhi', '2022-04-03', 'CC', 800, 50),
(12, 'Lucknow', 'Delhi', '2022-04-03', 'EC', 500, 50),
(12, 'Lucknow', 'Delhi', '2022-04-03', 'SL', 350, 50),
(13, 'Allahbad', 'Patna', '2022-04-01', 'AC1', 2000, 50),
(13, 'Allahbad', 'Patna', '2022-04-01', 'AC2', 1800, 50),
(13, 'Allahbad', 'Patna', '2022-04-01', 'AC3', 1600, 50),
(13, 'Allahbad', 'Patna', '2022-04-01', 'CC', 1400, 50),
(13, 'Allahbad', 'Patna', '2022-04-01', 'EC', 1200, 50),
(13, 'Allahbad', 'Patna', '2022-04-01', 'SL', 1000, 50),
(13, 'Allahbad', 'Patna', '2022-04-02', 'AC1', 2000, 50),
(13, 'Allahbad', 'Patna', '2022-04-02', 'AC2', 1800, 50),
(13, 'Allahbad', 'Patna', '2022-04-02', 'AC3', 1600, 50),
(13, 'Allahbad', 'Patna', '2022-04-02', 'CC', 1400, 50),
(13, 'Allahbad', 'Patna', '2022-04-02', 'EC', 1200, 50),
(13, 'Allahbad', 'Patna', '2022-04-02', 'SL', 1000, 50),
(13, 'Allahbad', 'Patna', '2022-04-03', 'AC1', 2000, 50),
(13, 'Allahbad', 'Patna', '2022-04-03', 'AC2', 1800, 50),
(13, 'Allahbad', 'Patna', '2022-04-03', 'AC3', 1600, 50),
(13, 'Allahbad', 'Patna', '2022-04-03', 'CC', 1400, 50),
(13, 'Allahbad', 'Patna', '2022-04-03', 'EC', 1200, 50),
(13, 'Allahbad', 'Patna', '2022-04-03', 'SL', 1000, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-01', 'AC1', 2000, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-01', 'AC2', 1800, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-01', 'AC3', 1600, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-01', 'CC', 1400, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-01', 'EC', 1200, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-01', 'SL', 1000, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-02', 'AC1', 2000, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-02', 'AC2', 1800, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-02', 'AC3', 1600, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-02', 'CC', 1400, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-02', 'EC', 1200, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-02', 'SL', 1000, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-03', 'AC1', 2000, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-03', 'AC2', 1800, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-03', 'AC3', 1600, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-03', 'CC', 1400, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-03', 'EC', 1200, 50),
(13, 'Delhi', 'Rajasthan', '2022-04-03', 'SL', 1000, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-01', 'AC1', 2000, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-01', 'AC2', 1800, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-01', 'AC3', 1600, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-01', 'CC', 1400, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-01', 'EC', 1200, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-01', 'SL', 1000, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-02', 'AC1', 2000, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-02', 'AC2', 1800, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-02', 'AC3', 1600, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-02', 'CC', 1400, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-02', 'EC', 1200, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-02', 'SL', 1000, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-03', 'AC1', 2000, 40),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-03', 'AC2', 1800, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-03', 'AC3', 1600, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-03', 'CC', 1400, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-03', 'EC', 1200, 50),
(13, 'Jammu Kashmir', 'Delhi', '2022-04-03', 'SL', 1000, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-01', 'AC1', 2000, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-01', 'AC2', 1800, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-01', 'AC3', 1600, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-01', 'CC', 1400, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-01', 'EC', 1200, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-01', 'SL', 1000, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-02', 'AC1', 2000, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-02', 'AC2', 1800, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-02', 'AC3', 1600, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-02', 'CC', 1400, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-02', 'EC', 1200, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-02', 'SL', 1000, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-03', 'AC1', 2000, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-03', 'AC2', 1800, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-03', 'AC3', 1600, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-03', 'CC', 1400, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-03', 'EC', 1200, 50),
(13, 'Patna', 'Madhya Pradesh', '2022-04-03', 'SL', 1000, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-01', 'AC1', 2000, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-01', 'AC2', 1800, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-01', 'AC3', 1600, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-01', 'CC', 1400, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-01', 'EC', 1200, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-01', 'SL', 1000, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-02', 'AC1', 2000, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-02', 'AC2', 1800, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-02', 'AC3', 1600, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-02', 'CC', 1400, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-02', 'EC', 1200, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-02', 'SL', 1000, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-03', 'AC1', 2000, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-03', 'AC2', 1800, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-03', 'AC3', 1600, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-03', 'CC', 1400, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-03', 'EC', 1200, 50),
(13, 'Rajasthan', 'Allahbad', '2022-04-03', 'SL', 1000, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-01', 'AC1', 2300, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-01', 'AC2', 2100, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-01', 'AC3', 1900, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-01', 'CC', 1700, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-01', 'EC', 1500, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-01', 'SL', 1300, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-02', 'AC1', 2300, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-02', 'AC2', 2100, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-02', 'AC3', 1900, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-02', 'CC', 1700, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-02', 'EC', 1500, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-02', 'SL', 1300, 48),
(14, 'Jammu Kashmir', 'Madras', '2022-04-03', 'AC1', 2300, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-03', 'AC2', 2100, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-03', 'AC3', 1900, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-03', 'CC', 1700, 50),
(14, 'Jammu Kashmir', 'Madras', '2022-04-03', 'EC', 1500, 48),
(14, 'Jammu Kashmir', 'Madras', '2022-04-03', 'SL', 1300, 50),
(15, 'Delhi', 'Jaipur', '2022-04-01', 'AC1', 2600, 50),
(15, 'Delhi', 'Jaipur', '2022-04-01', 'AC2', 2400, 50),
(15, 'Delhi', 'Jaipur', '2022-04-01', 'AC3', 2200, 50),
(15, 'Delhi', 'Jaipur', '2022-04-01', 'CC', 2000, 50),
(15, 'Delhi', 'Jaipur', '2022-04-01', 'EC', 1800, 50),
(15, 'Delhi', 'Jaipur', '2022-04-01', 'SL', 1600, 50),
(15, 'Delhi', 'Jaipur', '2022-04-02', 'AC1', 2500, 50),
(15, 'Delhi', 'Jaipur', '2022-04-02', 'AC2', 2300, 50),
(15, 'Delhi', 'Jaipur', '2022-04-02', 'AC3', 2100, 50),
(15, 'Delhi', 'Jaipur', '2022-04-02', 'CC', 1900, 50),
(15, 'Delhi', 'Jaipur', '2022-04-02', 'EC', 1700, 50),
(15, 'Delhi', 'Jaipur', '2022-04-02', 'SL', 1500, 50),
(15, 'Delhi', 'Jaipur', '2022-04-03', 'AC1', 2500, 50),
(15, 'Delhi', 'Jaipur', '2022-04-03', 'AC2', 2300, 50),
(15, 'Delhi', 'Jaipur', '2022-04-03', 'AC3', 2100, 50),
(15, 'Delhi', 'Jaipur', '2022-04-03', 'CC', 1900, 50),
(15, 'Delhi', 'Jaipur', '2022-04-03', 'EC', 1700, 50),
(15, 'Delhi', 'Jaipur', '2022-04-03', 'SL', 1500, 50),
(16, 'Jaipur', 'Delhi', '2022-04-01', 'AC1', 2600, 50),
(16, 'Jaipur', 'Delhi', '2022-04-01', 'AC2', 2400, 50),
(16, 'Jaipur', 'Delhi', '2022-04-01', 'AC3', 2200, 50),
(16, 'Jaipur', 'Delhi', '2022-04-01', 'CC', 2000, 50),
(16, 'Jaipur', 'Delhi', '2022-04-01', 'EC', 1800, 50),
(16, 'Jaipur', 'Delhi', '2022-04-01', 'SL', 1600, 50),
(16, 'Jaipur', 'Delhi', '2022-04-02', 'AC1', 2600, 50),
(16, 'Jaipur', 'Delhi', '2022-04-02', 'AC2', 2400, 50),
(16, 'Jaipur', 'Delhi', '2022-04-02', 'AC3', 2200, 50),
(16, 'Jaipur', 'Delhi', '2022-04-02', 'CC', 2000, 50),
(16, 'Jaipur', 'Delhi', '2022-04-02', 'EC', 1800, 50),
(16, 'Jaipur', 'Delhi', '2022-04-02', 'SL', 1600, 50),
(16, 'Jaipur', 'Delhi', '2022-04-03', 'AC1', 2600, 50),
(16, 'Jaipur', 'Delhi', '2022-04-03', 'AC2', 2400, 50),
(16, 'Jaipur', 'Delhi', '2022-04-03', 'AC3', 2200, 50),
(16, 'Jaipur', 'Delhi', '2022-04-03', 'CC', 2000, 50),
(16, 'Jaipur', 'Delhi', '2022-04-03', 'EC', 1800, 50),
(16, 'Jaipur', 'Delhi', '2022-04-03', 'SL', 1600, 50),
(17, 'Delhi', 'Jaipur', '2022-04-01', 'AC1', 2700, 50),
(17, 'Delhi', 'Jaipur', '2022-04-01', 'AC2', 2500, 50),
(17, 'Delhi', 'Jaipur', '2022-04-01', 'AC3', 2300, 50),
(17, 'Delhi', 'Jaipur', '2022-04-01', 'CC', 2100, 50),
(17, 'Delhi', 'Jaipur', '2022-04-01', 'EC', 1900, 50),
(17, 'Delhi', 'Jaipur', '2022-04-01', 'SL', 1700, 50),
(17, 'Delhi', 'Jaipur', '2022-04-02', 'AC1', 2700, 50),
(17, 'Delhi', 'Jaipur', '2022-04-02', 'AC2', 2500, 50),
(17, 'Delhi', 'Jaipur', '2022-04-02', 'AC3', 2300, 50),
(17, 'Delhi', 'Jaipur', '2022-04-02', 'CC', 2100, 50),
(17, 'Delhi', 'Jaipur', '2022-04-02', 'EC', 1900, 50),
(17, 'Delhi', 'Jaipur', '2022-04-02', 'SL', 1700, 50),
(17, 'Delhi', 'Jaipur', '2022-04-03', 'AC1', 2700, 50),
(17, 'Delhi', 'Jaipur', '2022-04-03', 'AC2', 2500, 50),
(17, 'Delhi', 'Jaipur', '2022-04-03', 'AC3', 2300, 50),
(17, 'Delhi', 'Jaipur', '2022-04-03', 'CC', 2100, 50),
(17, 'Delhi', 'Jaipur', '2022-04-03', 'EC', 1900, 50),
(17, 'Delhi', 'Jaipur', '2022-04-03', 'SL', 1700, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-01', 'AC1', 2700, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-01', 'AC2', 2500, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-01', 'AC3', 2300, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-01', 'CC', 2100, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-01', 'EC', 1900, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-01', 'SL', 1700, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-02', 'AC1', 2700, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-02', 'AC2', 2500, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-02', 'AC3', 2300, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-02', 'CC', 2100, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-02', 'EC', 1900, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-02', 'SL', 1700, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-03', 'AC1', 2700, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-03', 'AC2', 2500, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-03', 'AC3', 2300, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-03', 'CC', 2100, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-03', 'EC', 1900, 50),
(17, 'Jaipur', 'Chandigarh', '2022-04-03', 'SL', 1700, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-01', 'AC1', 2800, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-01', 'AC2', 2600, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-01', 'AC3', 2400, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-01', 'CC', 2200, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-01', 'EC', 2000, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-01', 'SL', 1800, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-02', 'AC1', 2800, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-02', 'AC2', 2600, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-02', 'AC3', 2400, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-02', 'CC', 2200, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-02', 'EC', 2000, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-02', 'SL', 1800, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-03', 'AC1', 2800, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-03', 'AC2', 2600, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-03', 'AC3', 2400, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-03', 'CC', 2200, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-03', 'EC', 2000, 50),
(18, 'Chandigarh', 'Jaipur', '2022-04-03', 'SL', 1800, 50),
(18, 'Jaipur', 'Delhi', '2022-04-01', 'AC1', 2800, 50),
(18, 'Jaipur', 'Delhi', '2022-04-01', 'AC2', 2600, 50),
(18, 'Jaipur', 'Delhi', '2022-04-01', 'AC3', 2400, 50),
(18, 'Jaipur', 'Delhi', '2022-04-01', 'CC', 2200, 50),
(18, 'Jaipur', 'Delhi', '2022-04-01', 'EC', 2000, 50),
(18, 'Jaipur', 'Delhi', '2022-04-01', 'SL', 1800, 50),
(18, 'Jaipur', 'Delhi', '2022-04-02', 'AC1', 2800, 50),
(18, 'Jaipur', 'Delhi', '2022-04-02', 'AC2', 2600, 50),
(18, 'Jaipur', 'Delhi', '2022-04-02', 'AC3', 2400, 50),
(18, 'Jaipur', 'Delhi', '2022-04-02', 'CC', 2200, 50),
(18, 'Jaipur', 'Delhi', '2022-04-02', 'EC', 2000, 50),
(18, 'Jaipur', 'Delhi', '2022-04-02', 'SL', 1800, 50),
(18, 'Jaipur', 'Delhi', '2022-04-03', 'AC1', 2800, 50),
(18, 'Jaipur', 'Delhi', '2022-04-03', 'AC2', 2600, 50),
(18, 'Jaipur', 'Delhi', '2022-04-03', 'AC3', 2400, 50),
(18, 'Jaipur', 'Delhi', '2022-04-03', 'CC', 2200, 50),
(18, 'Jaipur', 'Delhi', '2022-04-03', 'EC', 2000, 50),
(18, 'Jaipur', 'Delhi', '2022-04-03', 'SL', 1800, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-01', 'AC1', 2700, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-01', 'AC2', 2500, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-01', 'AC3', 2300, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-01', 'CC', 2100, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-01', 'EC', 1900, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-01', 'SL', 1700, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-02', 'AC1', 2700, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-02', 'AC2', 2500, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-02', 'AC3', 2300, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-02', 'CC', 2100, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-02', 'EC', 1900, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-02', 'SL', 1700, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-03', 'AC1', 2700, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-03', 'AC2', 2500, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-03', 'AC3', 2300, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-03', 'CC', 2100, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-03', 'EC', 1900, 50),
(19, 'Allahbad', 'Jaipur', '2022-04-03', 'SL', 1700, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-01', 'AC1', 2700, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-01', 'AC2', 2500, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-01', 'AC3', 2300, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-01', 'CC', 2100, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-01', 'EC', 1900, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-01', 'SL', 1700, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-02', 'AC1', 2700, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-02', 'AC2', 2500, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-02', 'AC3', 2300, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-02', 'CC', 2100, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-02', 'EC', 1900, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-02', 'SL', 1700, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-03', 'AC1', 2700, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-03', 'AC2', 2500, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-03', 'AC3', 2300, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-03', 'CC', 2100, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-03', 'EC', 1900, 50),
(19, 'Lucknow', 'Allahbad', '2022-04-03', 'SL', 1700, 50),
(20, 'Delhi', 'Jaipur', '2022-04-01', 'AC1', 2800, 50),
(20, 'Delhi', 'Jaipur', '2022-04-01', 'AC2', 2600, 50),
(20, 'Delhi', 'Jaipur', '2022-04-01', 'AC3', 2400, 50),
(20, 'Delhi', 'Jaipur', '2022-04-01', 'CC', 2200, 50),
(20, 'Delhi', 'Jaipur', '2022-04-01', 'EC', 2000, 50),
(20, 'Delhi', 'Jaipur', '2022-04-01', 'SL', 1800, 50),
(20, 'Delhi', 'Jaipur', '2022-04-02', 'AC1', 2800, 50),
(20, 'Delhi', 'Jaipur', '2022-04-02', 'AC2', 2600, 50),
(20, 'Delhi', 'Jaipur', '2022-04-02', 'AC3', 2400, 50),
(20, 'Delhi', 'Jaipur', '2022-04-02', 'CC', 2200, 50),
(20, 'Delhi', 'Jaipur', '2022-04-02', 'EC', 2000, 50),
(20, 'Delhi', 'Jaipur', '2022-04-02', 'SL', 1800, 50),
(20, 'Delhi', 'Jaipur', '2022-04-03', 'AC1', 2800, 50),
(20, 'Delhi', 'Jaipur', '2022-04-03', 'AC2', 2600, 50),
(20, 'Delhi', 'Jaipur', '2022-04-03', 'AC3', 2400, 50),
(20, 'Delhi', 'Jaipur', '2022-04-03', 'CC', 2200, 50),
(20, 'Delhi', 'Jaipur', '2022-04-03', 'EC', 2000, 50),
(20, 'Delhi', 'Jaipur', '2022-04-03', 'SL', 1800, 50),
(21, 'Jaipur', 'Delhi', '2022-04-01', 'AC1', 2900, 50),
(21, 'Jaipur', 'Delhi', '2022-04-01', 'AC2', 2700, 50),
(21, 'Jaipur', 'Delhi', '2022-04-01', 'AC3', 2500, 50),
(21, 'Jaipur', 'Delhi', '2022-04-01', 'CC', 2300, 50),
(21, 'Jaipur', 'Delhi', '2022-04-01', 'EC', 2100, 50),
(21, 'Jaipur', 'Delhi', '2022-04-01', 'SL', 1900, 50),
(21, 'Jaipur', 'Delhi', '2022-04-02', 'AC1', 2900, 50),
(21, 'Jaipur', 'Delhi', '2022-04-02', 'AC2', 2700, 50),
(21, 'Jaipur', 'Delhi', '2022-04-02', 'AC3', 2500, 50),
(21, 'Jaipur', 'Delhi', '2022-04-02', 'CC', 2300, 50),
(21, 'Jaipur', 'Delhi', '2022-04-02', 'EC', 2100, 50),
(21, 'Jaipur', 'Delhi', '2022-04-02', 'SL', 1900, 50),
(21, 'Jaipur', 'Delhi', '2022-04-03', 'AC1', 2900, 50),
(21, 'Jaipur', 'Delhi', '2022-04-03', 'AC2', 2700, 50),
(21, 'Jaipur', 'Delhi', '2022-04-03', 'AC3', 2500, 50),
(21, 'Jaipur', 'Delhi', '2022-04-03', 'CC', 2300, 50),
(21, 'Jaipur', 'Delhi', '2022-04-03', 'EC', 2100, 50),
(21, 'Jaipur', 'Delhi', '2022-04-03', 'SL', 1900, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-01', 'AC1', 2600, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-01', 'AC2', 2400, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-01', 'AC3', 2200, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-01', 'CC', 2000, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-01', 'EC', 1800, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-01', 'SL', 1600, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-02', 'AC1', 2600, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-02', 'AC2', 2400, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-02', 'AC3', 2200, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-02', 'CC', 2000, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-02', 'EC', 1800, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-02', 'SL', 1600, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-03', 'AC1', 2600, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-03', 'AC2', 2400, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-03', 'AC3', 2200, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-03', 'CC', 2000, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-03', 'EC', 1800, 50),
(22, 'Delhi', 'Rajasthan', '2022-04-03', 'SL', 1600, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-01', 'AC1', 2600, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-01', 'AC2', 2400, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-01', 'AC3', 2200, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-01', 'CC', 2000, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-01', 'EC', 1800, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-01', 'SL', 1600, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-02', 'AC1', 2600, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-02', 'AC2', 2400, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-02', 'AC3', 2200, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-02', 'CC', 2000, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-02', 'EC', 1800, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-02', 'SL', 1600, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-03', 'AC1', 2600, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-03', 'AC2', 2400, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-03', 'AC3', 2200, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-03', 'CC', 2000, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-03', 'EC', 1800, 50),
(22, 'Madhya Pradesh', 'Mumbai', '2022-04-03', 'SL', 1600, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-01', 'AC1', 2600, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-01', 'AC2', 2400, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-01', 'AC3', 2200, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-01', 'CC', 2000, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-01', 'EC', 1800, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-01', 'SL', 1600, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-02', 'AC1', 2600, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-02', 'AC2', 2400, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-02', 'AC3', 2200, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-02', 'CC', 2000, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-02', 'EC', 1800, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-02', 'SL', 1600, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-03', 'AC1', 2600, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-03', 'AC2', 2400, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-03', 'AC3', 2200, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-03', 'CC', 2000, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-03', 'EC', 1800, 50),
(22, 'Rajasthan', 'Madhya Pradesh', '2022-04-03', 'SL', 1600, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-01', 'AC1', 2500, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-01', 'AC2', 2300, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-01', 'AC3', 2100, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-01', 'CC', 1900, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-01', 'EC', 1700, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-01', 'SL', 1500, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-02', 'AC1', 2500, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-02', 'AC2', 2300, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-02', 'AC3', 2100, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-02', 'CC', 1900, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-02', 'EC', 1700, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-02', 'SL', 1500, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-03', 'AC1', 2500, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-03', 'AC2', 2300, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-03', 'AC3', 2100, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-03', 'CC', 1900, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-03', 'EC', 1700, 50),
(23, 'Madhya Pradesh', 'Rajasthan', '2022-04-03', 'SL', 1500, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-01', 'AC1', 2500, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-01', 'AC2', 2300, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-01', 'AC3', 2100, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-01', 'CC', 1900, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-01', 'EC', 1700, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-01', 'SL', 1500, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-02', 'AC1', 2500, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-02', 'AC2', 2300, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-02', 'AC3', 2100, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-02', 'CC', 1900, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-02', 'EC', 1700, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-02', 'SL', 1500, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-03', 'AC1', 2500, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-03', 'AC2', 2300, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-03', 'AC3', 2100, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-03', 'CC', 1900, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-03', 'EC', 1700, 50),
(23, 'Mumbai', 'Madhya Pradesh', '2022-04-03', 'SL', 1500, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-01', 'AC1', 2500, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-01', 'AC2', 2300, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-01', 'AC3', 2100, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-01', 'CC', 1900, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-01', 'EC', 1700, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-01', 'SL', 1500, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-02', 'AC1', 2500, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-02', 'AC2', 2300, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-02', 'AC3', 2100, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-02', 'CC', 1900, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-02', 'EC', 1700, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-02', 'SL', 1500, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-03', 'AC1', 2500, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-03', 'AC2', 2300, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-03', 'AC3', 2100, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-03', 'CC', 1900, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-03', 'EC', 1700, 50),
(23, 'Rajasthan', 'Delhi', '2022-04-03', 'SL', 1500, 50);

--
-- Triggers `classseats`
--
DROP TRIGGER IF EXISTS `before_insert_on_classseats`;
DELIMITER //
CREATE TRIGGER `before_insert_on_classseats` BEFORE INSERT ON `classseats`
 FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = 'Check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_on_classseats`;
DELIMITER //
CREATE TRIGGER `before_update_on_classseats` BEFORE UPDATE ON `classseats`
 FOR EACH ROW begin
if datediff(curdate(),new.doj)>0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'check date!!!';
end if;
if new.fare<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check fare!!!';
end if;
if new.seatsleft<=0 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Check seats!!!';
end if;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pd`
--

CREATE TABLE IF NOT EXISTS `pd` (
  `pnr` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `page` int(11) NOT NULL,
  `pgender` varchar(10) NOT NULL,
  PRIMARY KEY (`pnr`,`pname`,`page`,`pgender`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pd`
--

INSERT INTO `pd` (`pnr`, `pname`, `page`, `pgender`) VALUES
(0, 'man', 21, 'M'),
(0, 'su', 20, 'M'),
(58, 'akhil', 20, 'M'),
(58, 'deepak', 21, 'M'),
(58, 'rahul', 12, 'M'),
(58, 'shyam', 50, 'M'),
(59, 'abhinav', 20, 'M'),
(59, 'vikas', 40, 'M'),
(60, 'mohan', 20, 'M'),
(60, 'msp', 21, 'M'),
(61, 'Francis', 21, 'M'),
(61, 'Vidhya', 20, 'F'),
(62, 'cam', 19, 'M'),
(62, 'dam', 15, 'M'),
(62, 'dash', 18, 'F'),
(62, 'ham', 14, 'F'),
(62, 'jam', 13, 'M'),
(62, 'lap', 20, 'M'),
(62, 'man', 11, 'M'),
(62, 'sam', 12, 'F'),
(62, 'sha', 17, 'M'),
(62, 'sum', 16, 'F'),
(63, 'aa', 21, 'M'),
(63, 'bb', 18, 'F'),
(64, 'dhana', 45, 'F'),
(64, 'raji', 23, 'F');

--
-- Triggers `pd`
--
DROP TRIGGER IF EXISTS `before_insert_on_pd`;
DELIMITER //
CREATE TRIGGER `before_insert_on_pd` BEFORE INSERT ON `pd`
 FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_on_pd`;
DELIMITER //
CREATE TRIGGER `before_update_on_pd` BEFORE UPDATE ON `pd`
 FOR EACH ROW begin
if new.pgender NOT IN ('M','F') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Enter M:Male F:Female.';
end if;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `resv`
--

CREATE TABLE IF NOT EXISTS `resv` (
  `pnr` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `trainno` int(11) NOT NULL,
  `sp` varchar(50) NOT NULL,
  `dp` varchar(50) NOT NULL,
  `doj` date NOT NULL,
  `tfare` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `nos` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`pnr`),
  UNIQUE KEY `UNIQUE` (`id`,`trainno`,`doj`,`status`),
  UNIQUE KEY `pnr` (`pnr`,`id`,`trainno`,`doj`,`class`,`status`),
  UNIQUE KEY `pnr_2` (`pnr`,`id`,`trainno`,`sp`,`dp`,`doj`,`tfare`,`class`,`nos`,`status`),
  KEY `FK_ID` (`id`),
  KEY `FK_TN_DOJ_C` (`trainno`,`doj`,`class`),
  KEY `class` (`class`),
  KEY `sp` (`sp`,`dp`),
  KEY `dp` (`dp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `resv`
--

INSERT INTO `resv` (`pnr`, `id`, `trainno`, `sp`, `dp`, `doj`, `tfare`, `class`, `nos`, `status`) VALUES
(51, 4, 12, 'Chandigarh', 'Jaipur', '2015-05-07', 3300, 'AC1', 2, 'BOOKED'),
(57, 5, 12, 'Chandigarh', 'Jaipur', '2015-05-07', 2200, 'AC1', 1, 'CANCELLED'),
(58, 6, 20, 'Delhi', 'Jaipur', '2015-05-09', 11200, 'AC2', 4, 'CANCELLED'),
(59, 10, 12, 'Lucknow', 'Delhi', '2015-05-17', 2200, 'EC', 2, 'BOOKED'),
(60, 32, 12, 'Chandigarh', 'Jaipur', '2022-04-01', 350, 'SL', 1, 'CANCELLED'),
(61, 32, 14, 'Jammu Kashmir', 'Madras', '2022-04-02', 2600, 'SL', 2, 'BOOKED'),
(62, 32, 13, 'Jammu Kashmir', 'Delhi', '2022-04-03', 13000, 'AC1', 10, 'BOOKED'),
(63, 33, 14, 'Jammu Kashmir', 'Madras', '2022-04-03', 3800, 'AC3', 2, 'CANCELLED'),
(64, 34, 14, 'Jammu Kashmir', 'Madras', '2022-04-03', 3000, 'EC', 2, 'CANCELLED');

--
-- Triggers `resv`
--
DROP TRIGGER IF EXISTS `after_insert_on_resv`;
DELIMITER //
CREATE TRIGGER `after_insert_on_resv` AFTER INSERT ON `resv`
 FOR EACH ROW begin
UPDATE classseats SET seatsleft=seatsleft-new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `after_update_on_resv`;
DELIMITER //
CREATE TRIGGER `after_update_on_resv` AFTER UPDATE ON `resv`
 FOR EACH ROW begin
if (new.status='CANCELLED' AND datediff(new.doj,curdate())<0 ) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cancellation Not Possible!!!!';
end if;

if (new.status='CANCELLED' AND datediff(new.doj,curdate())>0 )then
UPDATE classseats SET seatsleft=seatsleft+new.nos where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp;
 if datediff(new.doj,curdate())>=30 then 
 INSERT INTO canc values (new.pnr,new.tfare);
 end if;
 if datediff(new.doj,curdate())<30 then 
 INSERT INTO canc values (new.pnr,0.5*new.tfare);
 end if;
end if;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_insert_on_resv`;
DELIMITER //
CREATE TRIGGER `before_insert_on_resv` BEFORE INSERT ON `resv`
 FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
if datediff(new.doj,curdate())<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Booking Not Possible!!!!';
end if;
SET new.status='BOOKED';
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_on_resv`;
DELIMITER //
CREATE TRIGGER `before_update_on_resv` BEFORE UPDATE ON `resv`
 FOR EACH ROW begin
if new.tfare<0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative balance NOT possible';
end if;
if new.nos<=0 then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Negative OR 0 seats NOT possible';
end if;
if (select seatsleft from classseats where trainno=new.trainno AND class=new.class AND doj=new.doj AND sp=new.sp AND dp=new.dp) < new.nos then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Not enough seats available!!!';
end if;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trainno` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trainno` (`trainno`),
  KEY `sname` (`sname`),
  KEY `id` (`id`),
  KEY `distance` (`distance`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `trainno`, `sname`, `arrival_time`, `departure_time`, `distance`) VALUES
(1, 12, 'Chandigarh', '01:00:12', '01:00:00', 0),
(2, 12, 'Jaipur', '03:45:15', '03:50:00', 100),
(3, 12, 'Kolkata', '05:00:00', '05:15:00', 300),
(4, 12, 'Lucknow', '11:50:10', '12:00:00', 450),
(5, 12, 'Delhi', '16:30:00', '16:30:00', 600),
(6, 13, 'Jammu Kashmir', '22:00:00', '22:00:00', 0),
(7, 13, 'Delhi', '04:00:00', '04:05:00', 700),
(8, 13, 'Rajasthan', '07:30:50', '07:33:00', 900),
(9, 13, 'Allahbad', '09:00:00', '09:10:00', 1700),
(10, 13, 'Patna', '11:45:00', '11:47:00', 2500),
(11, 13, 'Madhya Pradesh', '13:00:00', '13:00:00', 3600),
(12, 14, 'Jammu Kashmir', '01:00:12', '01:00:12', 0),
(13, 14, 'Madras', '22:00:00', '22:00:00', 2500),
(14, 15, 'Delhi', '16:00:00', '16:00:00', 0),
(15, 15, 'Jaipur', '22:45:00', '22:45:00', 800),
(16, 16, 'Jaipur', '03:30:00', '03:30:00', 0),
(17, 16, 'Delhi', '09:30:00', '09:30:00', 800),
(18, 17, 'Delhi', '00:00:14', '00:00:14', 0),
(19, 17, 'Jaipur', '16:00:00', '16:10:00', 500),
(20, 17, 'Chandigarh', '20:30:00', '20:30:00', 1200),
(21, 18, 'Chandigarh', '08:05:00', '08:05:00', 0),
(22, 18, 'Jaipur', '10:15:00', '10:20:00', 700),
(23, 18, 'Delhi', '14:00:00', '14:00:00', 1200),
(24, 6, 'Jaipur', '03:30:00', '03:30:00', 0),
(25, 6, 'Allahbad', '08:00:00', '08:15:00', 200),
(26, 6, 'Lucknow', '15:15:00', '15:15:00', 700),
(27, 19, 'Lucknow', '13:30:00', '13:30:00', 0),
(28, 19, 'Allahbad', '20:00:00', '20:10:00', 300),
(29, 19, 'Jaipur', '05:15:00', '05:15:00', 700),
(30, 20, 'Delhi', '10:04:00', '10:04:00', 0),
(31, 20, 'Jaipur', '16:00:00', '16:00:00', 800),
(32, 21, 'Jaipur', '20:00:00', '20:00:00', 0),
(33, 21, 'Delhi', '10:00:00', '10:00:00', 800),
(34, 22, 'Delhi', '16:35:00', '16:35:00', 0),
(35, 22, 'Rajasthan', '20:00:00', '20:10:00', 1100),
(36, 22, 'Madhya Pradesh', '03:30:00', '03:33:00', 1500),
(37, 22, 'Mumbai', '09:00:00', '09:00:00', 2300),
(38, 23, 'Mumbai', '01:00:00', '01:00:00', 0),
(39, 23, 'Madhya Pradesh', '05:30:00', '05:40:00', 1500),
(40, 23, 'Rajasthan', '15:45:00', '15:50:00', 2000),
(41, 23, 'Delhi', '20:30:00', '20:30:00', 2300);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  PRIMARY KEY (`sname`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `sname`) VALUES
(1, 'Chandigarh'),
(2, 'Delhi'),
(3, 'Jaipur'),
(4, 'Lucknow'),
(5, 'Mumbai'),
(6, 'Allahbad'),
(7, 'Kolkata'),
(8, 'Patna'),
(9, 'Madras'),
(10, 'Jammu Kashmir'),
(11, 'Rajasthan'),
(12, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE IF NOT EXISTS `train` (
  `trainno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Train_no',
  `tname` varchar(50) NOT NULL COMMENT 'Train_name',
  `sp` varchar(50) NOT NULL COMMENT 'Starting_Point',
  `st` time NOT NULL COMMENT 'Arrival_Time',
  `dp` varchar(50) NOT NULL COMMENT 'Destination_Point',
  `dt` time NOT NULL,
  `dd` varchar(10) DEFAULT NULL COMMENT 'Day',
  `distance` int(11) NOT NULL COMMENT 'Distance',
  PRIMARY KEY (`trainno`),
  KEY `sp` (`sp`),
  KEY `dp` (`dp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`trainno`, `tname`, `sp`, `st`, `dp`, `dt`, `dd`, `distance`) VALUES
(6, 'Ashram Express', 'Jaipur', '10:00:00', 'Lucknow', '21:30:00', 'Day 1', 700),
(12, 'Shatabdi Express', 'Chandigarh', '01:00:12', 'Delhi', '16:30:00', 'Day 1', 600),
(13, 'Harijan Express', 'Jammu Kashmir', '22:00:00', 'Madhya Pradesh', '13:00:00', 'Day2', 3600),
(14, 'Jammu Mail Express', 'Jammu Kashmir', '01:00:12', 'Madras', '22:00:00', 'Day 1', 2500),
(15, 'Delhi Jaipur Double Decker', 'Delhi', '16:00:00', 'Jaipur', '22:45:00', 'Day 1', 800),
(16, 'Jaipur Delhi Double Decker', 'Jaipur', '03:30:00', 'Delhi', '09:30:00', 'Day 1', 800),
(17, 'Delhi Chandigarh Shatabdi', 'Delhi', '00:00:14', 'Chandigarh', '20:30:00', 'Day 1', 1200),
(18, 'Chandigarh Delhi Shatabdi', 'Chandigarh', '08:05:00', 'Delhi', '14:00:00', 'Day 2', 1200),
(19, 'Ashram Express', 'Lucknow', '13:30:00', 'Jaipur', '05:15:00', 'Day 2', 700),
(20, 'Frontier Express', 'Delhi', '10:04:00', 'Jaipur', '16:00:00', 'Day 1', 800),
(21, 'Frontier Express', 'Jaipur', '20:00:00', 'Delhi', '10:00:00', 'Day 2', 800),
(22, 'Rajdhani Express', 'Delhi', '16:35:00', 'Mumbai', '09:00:00', 'Day 2 ', 2300),
(23, 'Rajdhani Express', 'Mumbai', '01:00:00', 'Delhi', '20:30:00', 'Day 1', 2300);

--
-- Triggers `train`
--
DROP TRIGGER IF EXISTS `before_insert_on_train`;
DELIMITER //
CREATE TRIGGER `before_insert_on_train` BEFORE INSERT ON `train`
 FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
if (new.dp=new.sp) then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Same Starting & Destination Points not allowed';
end if;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_on_train`;
DELIMITER //
CREATE TRIGGER `before_update_on_train` BEFORE UPDATE ON `train`
 FOR EACH ROW begin
if (new.dt<new.st AND new.dd='Day 1') then
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Improper Timings';
end if;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUEMN` (`mobileno`),
  UNIQUE KEY `UNIQUEEI` (`emailid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `emailid`, `password`, `mobileno`, `dob`) VALUES
(12, 'amanmalik@hotmail.com', 'aman', '9878876654', '1997-09-08'),
(21, 'man123@gmail.com', '1234', '1234567890', '2000-12-31'),
(27, 'sk123@gmail.com', 'manman', '1234567899', '0000-00-00'),
(32, 'msp@gmail.com', '1234', '1234561234', '1999-03-30'),
(33, 'lk@gmail.com', '7896', '8123188972', '2000-05-15'),
(34, '14@gmail.com', 'suma', '6655447788', '2002-08-28');

--
-- Triggers `user`
--
DROP TRIGGER IF EXISTS `before_insert_on_user`;
DELIMITER //
CREATE TRIGGER `before_insert_on_user` BEFORE INSERT ON `user`
 FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
//
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_on_user`;
DELIMITER //
CREATE TRIGGER `before_update_on_user` BEFORE UPDATE ON `user`
 FOR EACH ROW begin
if (year(curdate())-year(new.dob))<18 then 
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Minimum age bar of 18 years.';
end if;
end
//
DELIMITER ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classseats`
--
ALTER TABLE `classseats`
  ADD CONSTRAINT `classseats_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `classseats_ibfk_3` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_4` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `classseats_ibfk_5` FOREIGN KEY (`class`) REFERENCES `class` (`cname`);

--
-- Constraints for table `resv`
--
ALTER TABLE `resv`
  ADD CONSTRAINT `resv_ibfk_1` FOREIGN KEY (`trainno`) REFERENCES `train` (`trainno`),
  ADD CONSTRAINT `resv_ibfk_2` FOREIGN KEY (`sp`) REFERENCES `station` (`sname`),
  ADD CONSTRAINT `resv_ibfk_3` FOREIGN KEY (`dp`) REFERENCES `station` (`sname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
