-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 02:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `putovanja`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinacija`
--

CREATE TABLE `destinacija` (
  `destinacijaID` int(11) NOT NULL,
  `nazivDestinacije` varchar(50) NOT NULL,
  `drzava` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinacija`
--

INSERT INTO `destinacija` (`destinacijaID`, `nazivDestinacije`, `drzava`) VALUES
(1, 'Beč', 'Austrija'),
(2, 'Budimpešta', 'Mađarska'),
(3, 'Instanbul', 'Turska'),
(4, 'Pariz', 'Francuska'),
(5, 'Rim', 'Italija'),
(6, 'Prag', 'Česka'),
(7, 'Milano', 'Italija'),
(8, 'London', 'Engleska'),
(9, 'Moskva', 'Rusija');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnikID` int(11) NOT NULL,
  `korisnickoIme` varchar(50) NOT NULL,
  `lozinka` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnikID`, `korisnickoIme`, `lozinka`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tip`
--

CREATE TABLE `tip` (
  `tipID` int(11) NOT NULL,
  `nazivTipa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tip`
--

INSERT INTO `tip` (`tipID`, `nazivTipa`) VALUES
(1, 'First minute'),
(2, 'Regular'),
(3, 'Last minute');

-- --------------------------------------------------------

--
-- Table structure for table `tura`
--

CREATE TABLE `tura` (
  `turaID` int(11) NOT NULL,
  `destinacijaID` int(11) NOT NULL,
  `datum` date NOT NULL,
  `cena` int(11) NOT NULL,
  `tipID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tura`
--

INSERT INTO `tura` (`turaID`, `destinacijaID`, `datum`, `cena`, `tipID`) VALUES
(1, 1, '2022-11-14', 450, 3),
(2, 2, '2022-11-16', 250, 3),
(3, 3, '2022-11-21', 180, 2),
(4, 4, '2022-12-17', 610, 1),
(5, 5, '2022-11-29', 490, 2),
(6, 6, '2023-01-13', 330, 1),
(7, 7, '2022-12-03', 280, 2),
(8, 8, '2022-11-20', 690, 2),
(9, 9, '2022-12-11', 550, 1),
(10, 1, '2022-12-18', 450, 1),
(11, 2, '2022-12-25', 170, 1),
(12, 3, '2022-12-02', 190, 2),
(13, 4, '2022-11-17', 550, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinacija`
--
ALTER TABLE `destinacija`
  ADD PRIMARY KEY (`destinacijaID`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnikID`);

--
-- Indexes for table `tip`
--
ALTER TABLE `tip`
  ADD PRIMARY KEY (`tipID`);

--
-- Indexes for table `tura`
--
ALTER TABLE `tura`
  ADD PRIMARY KEY (`turaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinacija`
--
ALTER TABLE `destinacija`
  MODIFY `destinacijaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnikID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tip`
--
ALTER TABLE `tip`
  MODIFY `tipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tura`
--
ALTER TABLE `tura`
  MODIFY `turaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
