-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Okt 2019 pada 14.20
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `fakultas_id` int(11) NOT NULL,
  `prodi_id` int(11) NOT NULL,
  `tahun_masuk` int(4) NOT NULL,
  `jalur_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `fakultas_id`, `prodi_id`, `tahun_masuk`, `jalur_id`, `nama`) VALUES
(3, 1, 1, 2018, 1, 'Ramdan Masykuri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tfakultas`
--

CREATE TABLE `tfakultas` (
  `id` int(11) NOT NULL,
  `kode_fakultas` char(1) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tfakultas`
--

INSERT INTO `tfakultas` (`id`, `kode_fakultas`, `nama_fakultas`) VALUES
(1, 'H', 'Matematika dan Ilmu Pengetahuan Alam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tjalur_masuk`
--

CREATE TABLE `tjalur_masuk` (
  `id` int(11) NOT NULL,
  `kode_jalur` int(1) NOT NULL,
  `nama_jalur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tjalur_masuk`
--

INSERT INTO `tjalur_masuk` (`id`, `kode_jalur`, `nama_jalur`) VALUES
(1, 5, 'JNS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tnim`
--

CREATE TABLE `tnim` (
  `id` int(11) NOT NULL,
  `mahasiswa_id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tnim`
--

INSERT INTO `tnim` (`id`, `mahasiswa_id`, `nim`) VALUES
(14, 3, 'H071181503');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tprodi`
--

CREATE TABLE `tprodi` (
  `id` int(11) NOT NULL,
  `kode_prodi` varchar(2) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `fakultas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tprodi`
--

INSERT INTO `tprodi` (`id`, `kode_prodi`, `nama_prodi`, `fakultas_id`) VALUES
(1, '07', 'Ilmu Komputer', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fakultas_id` (`fakultas_id`),
  ADD KEY `prodi_id` (`prodi_id`),
  ADD KEY `jalur_id` (`jalur_id`);

--
-- Indeks untuk tabel `tfakultas`
--
ALTER TABLE `tfakultas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_fakultas` (`kode_fakultas`);

--
-- Indeks untuk tabel `tjalur_masuk`
--
ALTER TABLE `tjalur_masuk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_jalur` (`kode_jalur`);

--
-- Indeks untuk tabel `tnim`
--
ALTER TABLE `tnim`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`);

--
-- Indeks untuk tabel `tprodi`
--
ALTER TABLE `tprodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fakultas_id` (`fakultas_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tfakultas`
--
ALTER TABLE `tfakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tjalur_masuk`
--
ALTER TABLE `tjalur_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tnim`
--
ALTER TABLE `tnim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tprodi`
--
ALTER TABLE `tprodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `tfakultas` (`id`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`prodi_id`) REFERENCES `tprodi` (`id`),
  ADD CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`jalur_id`) REFERENCES `tjalur_masuk` (`id`);

--
-- Ketidakleluasaan untuk tabel `tnim`
--
ALTER TABLE `tnim`
  ADD CONSTRAINT `tnim_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `tprodi`
--
ALTER TABLE `tprodi`
  ADD CONSTRAINT `tprodi_ibfk_1` FOREIGN KEY (`fakultas_id`) REFERENCES `tfakultas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
