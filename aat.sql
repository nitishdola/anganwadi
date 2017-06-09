-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2017 at 06:49 AM
-- Server version: 5.7.13-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, '8876912828', '8876912828'),
(3, '7664898301', '7664898301'),
(4, '8638087209', '8638087209'),
(5, '8399088260', '8399088260'),
(6, '9706548422', '9706548422'),
(7, '9613965362', '9613965362'),
(8, '9854736748', '9854736748'),
(9, '9508871724', '9508871724'),
(10, 'himangshudas', 'himans'),
(11, 'akib', 'geda'),
(12, 'pranab', 'pranab'),
(13, 'deepjyoti', 'deepjyoti');

-- --------------------------------------------------------

--
-- Table structure for table `anganbadi`
--

CREATE TABLE `anganbadi` (
  `a_id` int(10) NOT NULL,
  `serial_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `visit_date` date DEFAULT NULL,
  `monitors_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arrival_time` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `centre_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `centre_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `centre_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alpha_numeric_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workers_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workers_ac_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpers_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpers_ac_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpers_bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helpers_ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `awcmc_ac_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `awcmc_bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `awcmc_ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `president_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `block` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sector` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `village` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `m_p` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_p` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t_p` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa6` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa7_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa7_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa7_3` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa7_4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa7_5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa8` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa9` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa10` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa11` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa12a` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa12b` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa12c` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa12d` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa8a` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa9a` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa10a` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa11a` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa13` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa14` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa15` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa16` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17a` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17a_reson` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17b` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17b_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17c` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17c_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17d` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa17d_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18a` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18a_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18b` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18b_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18c` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18c_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18d` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18d_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18e` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa18e_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19a` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19a_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19b` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19b_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19c` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19c_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19d` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19d_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19e` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19e_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19f` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19f_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19g` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa19g_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa20` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa21` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qa22` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb1_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb2_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb3_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb4_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb5_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb6` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb6_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb7` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qb7_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc1_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc2_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc3a` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc3a_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc3b` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc3b_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc4_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc5_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc6` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc6_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc7` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc7_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc8` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc8_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd1_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd2_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd3_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd4` text COLLATE utf8_unicode_ci,
  `qd4_reason` text COLLATE utf8_unicode_ci,
  `qd5` text COLLATE utf8_unicode_ci,
  `qd5_reason` text COLLATE utf8_unicode_ci,
  `qd6` text COLLATE utf8_unicode_ci,
  `qd6_reason` text COLLATE utf8_unicode_ci,
  `qd7` text COLLATE utf8_unicode_ci,
  `qd7_reason` text COLLATE utf8_unicode_ci,
  `qd8` text COLLATE utf8_unicode_ci,
  `qd8_reason` text COLLATE utf8_unicode_ci,
  `qd9` text COLLATE utf8_unicode_ci,
  `qd9_reason` text COLLATE utf8_unicode_ci,
  `qd10` text COLLATE utf8_unicode_ci,
  `qd10_reason` text COLLATE utf8_unicode_ci,
  `qd11` text COLLATE utf8_unicode_ci,
  `qd11_number` varchar(127) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qd11_reason` text COLLATE utf8_unicode_ci,
  `qe1_1stmonth` text COLLATE utf8_unicode_ci,
  `qe1_2ndmonth` text COLLATE utf8_unicode_ci,
  `qe1_3rdmonth` text COLLATE utf8_unicode_ci,
  `qe2_1stmonth` text COLLATE utf8_unicode_ci,
  `qe2_2ndmonth` text COLLATE utf8_unicode_ci,
  `qe2_3rdmonth` text COLLATE utf8_unicode_ci,
  `qe3_1stmonth` text COLLATE utf8_unicode_ci,
  `qe3_2ndmonth` text COLLATE utf8_unicode_ci,
  `qe3_3rdmonth` text COLLATE utf8_unicode_ci,
  `qe4_1stmonth` text COLLATE utf8_unicode_ci,
  `qe4_2ndmonth` text COLLATE utf8_unicode_ci,
  `qe4_3rdmonth` text COLLATE utf8_unicode_ci,
  `qe5_1stmonth` text COLLATE utf8_unicode_ci,
  `qe5_2ndmonth` text COLLATE utf8_unicode_ci,
  `qe5_3rdmonth` text COLLATE utf8_unicode_ci,
  `qe6_1stmonth` text COLLATE utf8_unicode_ci,
  `qe6_2ndmonth` text COLLATE utf8_unicode_ci,
  `qe6_3rdmonth` text COLLATE utf8_unicode_ci,
  `qe7_1stmonth` text COLLATE utf8_unicode_ci,
  `qe7_2ndmonth` text COLLATE utf8_unicode_ci,
  `qe7_3rdmonth` text COLLATE utf8_unicode_ci,
  `qf1_date_of_last_survey` text COLLATE utf8_unicode_ci,
  `qf1_no_of_families` text COLLATE utf8_unicode_ci,
  `qf1_date_of_last_update` text COLLATE utf8_unicode_ci,
  `qf2_date_of_last_update` text COLLATE utf8_unicode_ci,
  `g1_avl` text COLLATE utf8_unicode_ci,
  `g1_maintenance` text COLLATE utf8_unicode_ci,
  `g2_avl` text COLLATE utf8_unicode_ci,
  `g2_maintenance` text COLLATE utf8_unicode_ci,
  `g3_avl` text COLLATE utf8_unicode_ci,
  `g3_maintenance` text COLLATE utf8_unicode_ci,
  `g4_avl` text COLLATE utf8_unicode_ci,
  `g4_maintenance` text COLLATE utf8_unicode_ci,
  `g5_avl` text COLLATE utf8_unicode_ci,
  `g5_maintenance` text COLLATE utf8_unicode_ci,
  `g6_avl` text COLLATE utf8_unicode_ci,
  `g6_maintenance` text COLLATE utf8_unicode_ci,
  `g7_avl` text COLLATE utf8_unicode_ci,
  `g7_maintenance` text COLLATE utf8_unicode_ci,
  `g8_avl` text COLLATE utf8_unicode_ci,
  `g8_maintenance` text COLLATE utf8_unicode_ci,
  `g9_avl` text COLLATE utf8_unicode_ci,
  `g9_maintenance` text COLLATE utf8_unicode_ci,
  `g10_avl` text COLLATE utf8_unicode_ci,
  `g10_maintenance` text COLLATE utf8_unicode_ci,
  `g11_avl` text COLLATE utf8_unicode_ci,
  `g11_maintenance` text COLLATE utf8_unicode_ci,
  `g12_avl` text COLLATE utf8_unicode_ci,
  `g13_avl` text COLLATE utf8_unicode_ci,
  `g13_avl_reason` text COLLATE utf8_unicode_ci,
  `qh1_no_of_active_members` text COLLATE utf8_unicode_ci,
  `qh1_no_of_meetings` text COLLATE utf8_unicode_ci,
  `qh1_proceedings` text COLLATE utf8_unicode_ci,
  `qh1_activity` text COLLATE utf8_unicode_ci,
  `qh2_no_of_active_members` text COLLATE utf8_unicode_ci,
  `qh2_no_of_meetings` text COLLATE utf8_unicode_ci,
  `qh2_proceedings` text COLLATE utf8_unicode_ci,
  `qh2_activity` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci,
  `date_of_visit` text COLLATE utf8_unicode_ci,
  `signature_aww` text COLLATE utf8_unicode_ci,
  `signature_monitor` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbldist`
--

CREATE TABLE `tbldist` (
  `fldDistID` int(3) NOT NULL,
  `fldDiv` int(3) NOT NULL,
  `fldDistName` varchar(50) DEFAULT NULL,
  `fldDistStat` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldist`
--

INSERT INTO `tbldist` (`fldDistID`, `fldDiv`, `fldDistName`, `fldDistStat`) VALUES
(1, 1, 'Kamrup(M)', 1),
(2, 1, 'Kamrup', 1),
(3, 1, 'Barpeta', 1),
(4, 1, 'Nalbari', 1),
(5, 1, 'Goalpara', 1),
(6, 1, 'Baksa', 1),
(7, 2, 'Kokrajhar', 1),
(8, 2, 'Dhubri', 1),
(9, 2, 'Bongaigaon', 1),
(10, 2, 'Chirang', 1),
(11, 3, 'Sonitpur', 1),
(12, 3, 'Darrang', 1),
(13, 3, 'Udalguri', 1),
(14, 3, 'Lakhimpur', 1),
(15, 3, 'Dhemaji', 1),
(16, 4, 'Nagaon', 1),
(17, 4, 'Morigaon', 1),
(18, 5, 'Cachar', 1),
(19, 5, 'Karimganj', 1),
(20, 5, 'Hailakandi', 1),
(21, 5, 'Dima-Hasao', 1),
(22, 6, 'Jorhat', 1),
(23, 6, 'Tinsukia', 1),
(24, 6, 'Dibrugarh', 1),
(25, 6, 'Golaghat', 1),
(26, 6, 'Sivsagar', 1),
(27, 7, 'Karbi-Anglong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbldivision`
--

CREATE TABLE `tbldivision` (
  `fldDiv` int(3) NOT NULL,
  `fldDivName` varchar(50) DEFAULT NULL,
  `fldDivStat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldivision`
--

INSERT INTO `tbldivision` (`fldDiv`, `fldDivName`, `fldDivStat`) VALUES
(1, 'Kamrup', 1),
(2, 'Kokrajhar', 1),
(3, 'Sonitpur', 1),
(4, 'Nagaon', 1),
(5, 'Cachar', 1),
(6, 'Jorhat', 1),
(7, 'Karbi Anglong', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anganbadi`
--
ALTER TABLE `anganbadi`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `serial_number` (`serial_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `anganbadi`
--
ALTER TABLE `anganbadi`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
