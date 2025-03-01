-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Aug 24, 2023 at 08:57 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comparateur_auto`
--

-- --------------------------------------------------------

--
-- Table structure for table `batmobile`
--

CREATE TABLE `batmobile` (
  `nom` varchar(255) NOT NULL,
  `batterie` int(255) NOT NULL,
  `autonomie` int(255) NOT NULL,
  `acceleration` int(255) NOT NULL,
  `prix` int(255) NOT NULL,
  `puissance_m` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ford_400`
--

CREATE TABLE `ford_400` (
  `nom` varchar(30) NOT NULL,
  `autonomie` int(255) NOT NULL,
  `prix` int(255) NOT NULL,
  `puissance_m` int(255) NOT NULL,
  `batterie` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ford_400`
--

INSERT INTO `ford_400` (`nom`, `autonomie`, `prix`, `puissance_m`, `batterie`) VALUES
('\'Ford\'', 240, 14290, 96, 30);

-- --------------------------------------------------------

--
-- Table structure for table `renault_2000`
--

CREATE TABLE `renault_2000` (
  `nom` varchar(255) NOT NULL,
  `batterie` int(255) NOT NULL,
  `autonomie` int(255) NOT NULL,
  `prix` int(255) NOT NULL,
  `puissance_m` int(255) NOT NULL,
  `acceleration` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `renault_c3`
--

CREATE TABLE `renault_c3` (
  `nom` varchar(255) NOT NULL,
  `autonomie` int(255) NOT NULL,
  `prix` int(255) NOT NULL,
  `puissance_m` int(255) NOT NULL,
  `batterie` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `renault_c3`
--

INSERT INTO `renault_c3` (`nom`, `autonomie`, `prix`, `puissance_m`, `batterie`) VALUES
('\'Renault\'', 390, 25000, 93, 52);

-- --------------------------------------------------------

--
-- Table structure for table `vehicules`
--

CREATE TABLE `vehicules` (
  `marque` varchar(255) NOT NULL,
  `modele` varchar(255) NOT NULL,
  `annee` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicule_electrique`
--

CREATE TABLE `vehicule_electrique` (
  `renault_id` int(11) NOT NULL,
  `ford_id` int(11) NOT NULL,
  `renaultC_id` int(11) NOT NULL,
  `batmobile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ford_400`
--
ALTER TABLE `ford_400`
  ADD PRIMARY KEY (`prix`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
