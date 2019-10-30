-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2019 at 02:27 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tfakultas`
--

CREATE TABLE `tfakultas` (
  `kode_fakultas` varchar(1) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tfakultas`
--

INSERT INTO `tfakultas` (`kode_fakultas`, `nama_fakultas`) VALUES
('H', 'Matematika dan Ilmu Pengetahuan Alam');

-- --------------------------------------------------------

--
-- Table structure for table `tjalur`
--

CREATE TABLE `tjalur` (
  `kode_jalur` enum('0','3','5') NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tjalur`
--

INSERT INTO `tjalur` (`kode_jalur`, `nama`) VALUES
('0', 'SN');

-- --------------------------------------------------------

--
-- Table structure for table `tmahasiswa`
--

CREATE TABLE `tmahasiswa` (
  `id_mahasiswa` int(2) UNSIGNED ZEROFILL NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL,
  `kode_prodi` int(2) UNSIGNED ZEROFILL DEFAULT NULL,
  `tahun_masuk` int(4) NOT NULL,
  `kode_jalur` enum('0','3','5') NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmahasiswa`
--

INSERT INTO `tmahasiswa` (`id_mahasiswa`, `kode_fakultas`, `kode_prodi`, `tahun_masuk`, `kode_jalur`, `nama`) VALUES
(01, 'H', 07, 2018, '0', 'Topaz Alexandria');

-- --------------------------------------------------------

--
-- Table structure for table `tprodi`
--

CREATE TABLE `tprodi` (
  `kode_prodi` int(2) UNSIGNED ZEROFILL NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tprodi`
--

INSERT INTO `tprodi` (`kode_prodi`, `nama`, `kode_fakultas`) VALUES
(07, 'Ilmu Komputer', 'H');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tfakultas`
--
ALTER TABLE `tfakultas`
  ADD PRIMARY KEY (`kode_fakultas`);

--
-- Indexes for table `tjalur`
--
ALTER TABLE `tjalur`
  ADD PRIMARY KEY (`kode_jalur`);

--
-- Indexes for table `tmahasiswa`
--
ALTER TABLE `tmahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tprodi`
--
ALTER TABLE `tprodi`
  ADD PRIMARY KEY (`kode_prodi`),
  ADD KEY `kode_fakultas` (`kode_fakultas`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tprodi`
--
ALTER TABLE `tprodi`
  ADD CONSTRAINT `tprodi_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `tfakultas` (`kode_fakultas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
