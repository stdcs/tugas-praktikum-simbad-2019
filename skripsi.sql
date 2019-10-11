-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2019 pada 15.41
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
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_pembimbing`
--

CREATE TABLE `dosen_pembimbing` (
  `nama` varchar(200) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kode_dosen` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `jenis_pembimbing` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen_penguji`
--

CREATE TABLE `dosen_penguji` (
  `nama` varchar(200) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kode_dosen` varchar(10) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `nama_prodi` varchar(200) DEFAULT NULL,
  `jenis_penguji` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa_prodi`
--

CREATE TABLE `mahasiswa_prodi` (
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `nama_prodi` varchar(200) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_lulus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `seminar_mahasiswa`
--

CREATE TABLE `seminar_mahasiswa` (
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jk` char(1) NOT NULL,
  `tgl_seminar` date DEFAULT NULL,
  `jenis_seminar` char(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `dosen_penguji` varchar(200) DEFAULT NULL,
  `nip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `skripsi_mahasiswa`
--

CREATE TABLE `skripsi_mahasiswa` (
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jk` char(1) DEFAULT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `judul_skripsi` varchar(255) NOT NULL,
  `dosen_pembimbing` varchar(200) NOT NULL,
  `tgl_sidang` date DEFAULT NULL,
  `nilai_sidang` varchar(2) DEFAULT NULL,
  `nip` varchar(50) NOT NULL,
  `jenis_pembimbing` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tdosen`
--

CREATE TABLE `tdosen` (
  `id_dosen` int(255) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kode_dosen` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_prodi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmahasiswa`
--

CREATE TABLE `tmahasiswa` (
  `id_mahasiswa` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jk` char(1) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_lulus` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `id_prodi` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tnilai`
--

CREATE TABLE `tnilai` (
  `id_nilai` int(2) NOT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `bobot_nilai` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpembimbing`
--

CREATE TABLE `tpembimbing` (
  `id_pembimbing` int(255) NOT NULL,
  `jenis_pembimbing` varchar(7) NOT NULL,
  `id_dosen` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tpenguji`
--

CREATE TABLE `tpenguji` (
  `id_penguji` int(255) NOT NULL,
  `id_dosen` int(255) NOT NULL,
  `jenis_penguji` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tprodi`
--

CREATE TABLE `tprodi` (
  `id_prodi` int(5) NOT NULL,
  `kode_prodi` varchar(5) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tsemester`
--

CREATE TABLE `tsemester` (
  `id_semester` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kode_semester` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tseminar`
--

CREATE TABLE `tseminar` (
  `id_seminar` int(5) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `id_nilai` int(2) NOT NULL,
  `jenis_seminar` char(1) DEFAULT NULL,
  `id_mahasiswa` int(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `id_pembimbing` int(255) NOT NULL,
  `id_penguji` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tsidang`
--

CREATE TABLE `tsidang` (
  `id_sidang` int(5) NOT NULL,
  `id_mahasiswa` int(255) NOT NULL,
  `tanggal_sidang` date DEFAULT NULL,
  `id_nilai` int(2) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tskripsi`
--

CREATE TABLE `tskripsi` (
  `id_skripsi` int(5) NOT NULL,
  `id_mahasiswa` int(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_pembimbing` int(255) NOT NULL,
  `id_penguji` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tsk_pembimbing`
--

CREATE TABLE `tsk_pembimbing` (
  `id_sk` int(4) NOT NULL,
  `id_skripsi` int(5) NOT NULL,
  `id_semester` int(3) DEFAULT NULL,
  `no_sk` varchar(20) DEFAULT NULL,
  `tanggal_sk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `untitled`
--

CREATE TABLE `untitled` (
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa_prodi`
--
ALTER TABLE `mahasiswa_prodi`
  ADD PRIMARY KEY (`nama`);

--
-- Indeks untuk tabel `tdosen`
--
ALTER TABLE `tdosen`
  ADD PRIMARY KEY (`id_dosen`,`nip`,`kode_dosen`);

--
-- Indeks untuk tabel `tmahasiswa`
--
ALTER TABLE `tmahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`,`nim`);

--
-- Indeks untuk tabel `tnilai`
--
ALTER TABLE `tnilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `tpembimbing`
--
ALTER TABLE `tpembimbing`
  ADD PRIMARY KEY (`id_pembimbing`);

--
-- Indeks untuk tabel `tpenguji`
--
ALTER TABLE `tpenguji`
  ADD PRIMARY KEY (`id_penguji`);

--
-- Indeks untuk tabel `tprodi`
--
ALTER TABLE `tprodi`
  ADD PRIMARY KEY (`id_prodi`,`kode_prodi`);

--
-- Indeks untuk tabel `tsemester`
--
ALTER TABLE `tsemester`
  ADD PRIMARY KEY (`id_semester`,`kode_semester`);

--
-- Indeks untuk tabel `tseminar`
--
ALTER TABLE `tseminar`
  ADD PRIMARY KEY (`id_seminar`);

--
-- Indeks untuk tabel `tsidang`
--
ALTER TABLE `tsidang`
  ADD PRIMARY KEY (`id_nilai`,`id_sidang`);

--
-- Indeks untuk tabel `tskripsi`
--
ALTER TABLE `tskripsi`
  ADD PRIMARY KEY (`id_skripsi`);

--
-- Indeks untuk tabel `tsk_pembimbing`
--
ALTER TABLE `tsk_pembimbing`
  ADD PRIMARY KEY (`id_sk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tnilai`
--
ALTER TABLE `tnilai`
  MODIFY `id_nilai` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tpenguji`
--
ALTER TABLE `tpenguji`
  MODIFY `id_penguji` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tseminar`
--
ALTER TABLE `tseminar`
  MODIFY `id_seminar` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tsk_pembimbing`
--
ALTER TABLE `tsk_pembimbing`
  MODIFY `id_sk` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
