-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 07:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lafirenzedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservation`
--

CREATE TABLE `tbl_reservation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `ingress` varchar(255) NOT NULL,
  `egress` varchar(255) NOT NULL,
  `caterer` varchar(255) NOT NULL,
  `lightsProvider` varchar(255) NOT NULL,
  `soundsProvider` varchar(255) NOT NULL,
  `numOfGuests` int(11) NOT NULL,
  `numOfHours` int(11) NOT NULL,
  `dateFrom` varchar(255) NOT NULL,
  `dateTo` varchar(255) NOT NULL,
  `timeStart` varchar(255) NOT NULL,
  `timeEnd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_reservation`
--

INSERT INTO `tbl_reservation` (`id`, `name`, `email`, `contact`, `address`, `event`, `ingress`, `egress`, `caterer`, `lightsProvider`, `soundsProvider`, `numOfGuests`, `numOfHours`, `dateFrom`, `dateTo`, `timeStart`, `timeEnd`) VALUES
(1, 'Glenmhar Priol Aurelio', 'gmaurelio8@gmail.com', '09950885038', 'Cabuyao City Laguna', 'Graduation Ball', '1:00 PM', '8:00 AM', 'Lydia\'s Catering Services', 'Mac\'s Lightings', 'JJ\'s Event Essentials', 12, 12, '27 June, 2022', '28 June, 2022', '7:00 PM', '7:00 AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_reservation`
--
ALTER TABLE `tbl_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
