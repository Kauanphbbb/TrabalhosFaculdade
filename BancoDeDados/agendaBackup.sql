-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2021 at 09:57 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `contato`
--

CREATE TABLE `contato` (
  `idcontato` int(11) NOT NULL,
  `nome` varchar(85) DEFAULT NULL,
  `cidade` varchar(80) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contato`
--

INSERT INTO `contato` (`idcontato`, `nome`, `cidade`, `telefone`, `email`) VALUES
(1, 'romario teste', 'parnamirim', '88998758558', 'romario@gmail.com'),
(2, 'lucas', 'Parnaíba', '86554477889', 'lucas@gmail.com'),
(3, 'Arrascaeta', 'Parnaíba', '86554477889', 'arrascaeta@gmail.com'),
(4, 'gabriel barbosa', 'Parnaíba', '86554477889', 'gabriel@gmail.com'),
(5, 'martha', 'Parnaíba', '86554477889', 'martha@gmail.com'),
(6, 'pedro', 'Parnaíba', '86554477889', 'pedro@gmail.com'),
(7, 'Luxemburgo', 'Parnaíba', '86554477889', 'luxembugo@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idcontato`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `idcontato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
