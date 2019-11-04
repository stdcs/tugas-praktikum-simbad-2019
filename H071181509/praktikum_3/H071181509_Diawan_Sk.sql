-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Okt 2019 pada 07.33
-- Versi server: 10.1.39-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `kode` varchar(1) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`kode`, `nama`) VALUES
('H', 'MIPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jalur_masuk`
--

CREATE TABLE `jalur_masuk` (
  `kode` enum('0','3','5') NOT NULL,
  `nama` enum('SN','SB','mandiri') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jalur_masuk`
--

INSERT INTO `jalur_masuk` (`kode`, `nama`) VALUES
('0', 'SN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(2) UNSIGNED ZEROFILL NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL,
  `kode_prodi` int(2) UNSIGNED ZEROFILL NOT NULL,
  `tahun_masuk` int(4) NOT NULL,
  `jalur_masuk` enum('0','3','5') NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `kode_fakultas`, `kode_prodi`, `tahun_masuk`, `jalur_masuk`, `nama`) VALUES
(01, 'H', 07, 2018, '0', 'awan sk'),
(02, 'H', 07, 2018, '0', 'khoir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nim`
--

CREATE TABLE `nim` (
  `nama` varchar(100) NOT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nim`
--

INSERT INTO `nim` (`nama`, `nim`) VALUES
('awan sk', 'H071181001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `kode` int(2) UNSIGNED ZEROFILL NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`kode`, `nama`, `kode_fakultas`) VALUES
(07, 'ilmu komputer', 'H');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `jalur_masuk`
--
ALTER TABLE `jalur_masuk`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_fakultas` (`kode_fakultas`),
  ADD KEY `kode_prodi` (`kode_prodi`),
  ADD KEY `jalur_masuk` (`jalur_masuk`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `kode_fakultas` (`kode_fakultas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode`),
  ADD CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`jalur_masuk`) REFERENCES `jalur_masuk` (`kode`);

--
-- Ketidakleluasaan untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
