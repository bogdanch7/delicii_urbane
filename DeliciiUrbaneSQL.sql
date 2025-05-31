-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2025 at 09:53 AM
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
-- Database: `delicii_urbane`
--

-- --------------------------------------------------------

--
-- Table structure for table `mesaje_contact`
--

CREATE TABLE `mesaje_contact` (
  `id` int(11) NOT NULL,
  `nume` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `mesaj` text NOT NULL,
  `trimis_la` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mesaje_contact`
--

INSERT INTO `mesaje_contact` (`id`, `nume`, `email`, `telefon`, `mesaj`, `trimis_la`) VALUES
(1, 'andrei', 'andrei@utcb.ro', '0742222345', 'mancarea a fost excelenta! aveti serviciu de delivery?', '2025-05-17 17:52:25'),
(2, 'andrei', 'andrei@utcb.ro', '0729292929', 'putem comanda?', '2025-05-17 19:52:32'),
(3, 'sebi', 'sebi@utcb.ro', '0763213123', 'vrem sa facem masa mare!', '2025-05-17 19:55:14'),
(4, 'david', 'david@utcb.ro', '0763213123', 'aveti tv?', '2025-05-17 19:58:28'),
(5, 'andrei', 'andrei@utcb.ro', '0799444111', 'aveti tv?', '2025-05-17 20:18:00'),
(6, 'andrei', 'andrei@utcb.ro', '0799444111', 'ping pong?', '2025-05-17 19:43:42'),
(7, 'andrei', 'andrei@utcb.ro', '0763213123', 'aveti biliard?', '2025-05-17 20:07:59'),
(8, 'leonte', 'leonte@utcb.ro', '0711111999', 'biliard?', '2025-05-17 20:09:32'),
(9, 'sebi', 'sebi@utcb.ro', '0798989898', 'care e cap max?', '2025-05-17 21:37:34'),
(10, 'radu', 'radu@utcb.ro', '0777777777', 'aveti deschis de 1 mai?', '2025-05-17 21:38:31'),
(11, 'vlad', 'vlad@utcb.ro', '0763213123', 'facem masa mare aveti loc?', '2025-05-17 21:41:45'),
(12, 'paul', 'paul@utcb.ro', '0729292929', 'aveti animale?', '2025-05-18 08:07:23'),
(13, 'andrei', 'andrei@utcb.ro', '0763213123', 'vrem o masa de 20 de persoane', '2025-05-18 22:57:17'),
(14, 'dan', 'dan@utcb.ro', '0788996644', 'aveti 20 de locuri disponibile?', '2025-05-19 21:00:56'),
(15, 'gabriela', 'gabriela@utcb.ro', '0722222222', 'vreau o masa pentru 20 de persoane', '2025-05-22 07:48:27'),
(16, 'andrei', 'andrei@utcb.ro', '0722222222', 'vrem sa facem o masa mare', '2025-05-22 20:15:07'),
(17, 'bogdan', 'bogdan@utcb.ro', '0729292929', 'vreau o masa pentru 20 de persoane\r\n', '2025-05-28 10:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `rezervari`
--

CREATE TABLE `rezervari` (
  `id` int(11) NOT NULL,
  `nume` varchar(100) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `data` date NOT NULL,
  `ora` time NOT NULL,
  `persoane` int(11) NOT NULL,
  `creat_la` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rezervari`
--

INSERT INTO `rezervari` (`id`, `nume`, `telefon`, `data`, `ora`, `persoane`, `creat_la`) VALUES
(1, 'bogdan', '0742222222', '2025-05-18', '18:30:00', 2, '2025-05-17 17:51:54'),
(5, 'andrei', '0729292929', '2025-05-24', '22:40:00', 3, '2025-05-17 18:39:09'),
(6, 'sebi', '0722222222', '2025-05-31', '22:00:00', 3, '2025-05-17 18:54:14'),
(7, 'andrei', '0729292929', '2025-05-29', '23:45:00', 2, '2025-05-17 19:41:49'),
(8, 'andrei', '0729292929', '2025-05-29', '23:45:00', 2, '2025-05-17 19:42:10'),
(9, 'andrei', '0729292929', '2025-05-29', '23:45:00', 2, '2025-05-17 19:42:13'),
(10, 'andrei', '0729292929', '2025-05-30', '12:00:00', 2, '2025-05-17 20:58:36'),
(11, 'andrei', '0729292929', '2025-05-22', '12:05:00', 5, '2025-05-17 21:01:16'),
(12, 'dan', '0799444111', '2025-05-28', '00:15:00', 3, '2025-05-17 21:04:53'),
(13, 'sebi', '0799444111', '2025-05-31', '12:08:00', 5, '2025-05-17 21:09:00'),
(14, 'sebi', '0729292929', '2025-05-27', '02:20:00', 3, '2025-05-17 21:20:33'),
(15, 'sebi', '0722222222', '2025-05-19', '12:40:00', 5, '2025-05-17 21:36:52'),
(16, 'vlad', '0789656565', '2025-05-18', '12:45:00', 4, '2025-05-17 21:41:19'),
(17, 'paul', '0722222229', '2025-05-18', '00:10:00', 2, '2025-05-18 08:06:39'),
(18, 'radu', '0721345678', '2025-05-27', '18:30:00', 2, '2025-05-18 22:35:37'),
(19, 'vlad', '0798765432', '2025-05-28', '19:30:00', 3, '2025-05-18 22:56:55'),
(21, 'stefan', '0722334455', '2025-05-21', '18:30:00', 2, '2025-05-19 21:00:24'),
(23, 'radu', '0799444111', '2025-05-23', '21:00:00', 2, '2025-05-22 20:12:59'),
(24, 'bogdan', '0722222222', '2025-05-23', '18:00:00', 4, '2025-05-22 20:14:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mesaje_contact`
--
ALTER TABLE `mesaje_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rezervari`
--
ALTER TABLE `rezervari`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mesaje_contact`
--
ALTER TABLE `mesaje_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rezervari`
--
ALTER TABLE `rezervari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
