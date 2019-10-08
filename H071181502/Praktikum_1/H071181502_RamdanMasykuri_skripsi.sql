-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: skripsi
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dosen_pembimbing`
--

DROP TABLE IF EXISTS `dosen_pembimbing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_pembimbing` (
  `nama` varchar(200) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kode_dosen` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `jenis_pembimbing` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_pembimbing`
--

LOCK TABLES `dosen_pembimbing` WRITE;
/*!40000 ALTER TABLE `dosen_pembimbing` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_pembimbing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen_penguji`
--

DROP TABLE IF EXISTS `dosen_penguji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen_penguji` (
  `nama` varchar(200) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kode_dosen` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `jenis_penguji` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen_penguji`
--

LOCK TABLES `dosen_penguji` WRITE;
/*!40000 ALTER TABLE `dosen_penguji` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen_penguji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa_prodi`
--

DROP TABLE IF EXISTS `mahasiswa_prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa_prodi` (
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jk` char(1) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_lulus` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa_prodi`
--

LOCK TABLES `mahasiswa_prodi` WRITE;
/*!40000 ALTER TABLE `mahasiswa_prodi` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahasiswa_prodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seminar_mahasiswa`
--

DROP TABLE IF EXISTS `seminar_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seminar_mahasiswa` (
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jk` char(1) NOT NULL,
  `tgl_seminar` date NOT NULL,
  `jenis_seminar` char(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `dosen_penguji` varchar(200) NOT NULL,
  `nip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seminar_mahasiswa`
--

LOCK TABLES `seminar_mahasiswa` WRITE;
/*!40000 ALTER TABLE `seminar_mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `seminar_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skripsi_mahasiswa`
--

DROP TABLE IF EXISTS `skripsi_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skripsi_mahasiswa` (
  `nama` varchar(225) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jk` char(1) NOT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `judul_skripsi` varchar(255) NOT NULL,
  `dosen_pembimbing` varchar(200) NOT NULL,
  `tgl_sidang` date NOT NULL,
  `nilai_sidang` varchar(2) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jenis_pembimbing` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skripsi_mahasiswa`
--

LOCK TABLES `skripsi_mahasiswa` WRITE;
/*!40000 ALTER TABLE `skripsi_mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `skripsi_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tdosen`
--

DROP TABLE IF EXISTS `tdosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdosen` (
  `id_dosen` int(255) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kode_dosen` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_prodi` int(5) NOT NULL,
  PRIMARY KEY (`id_dosen`,`nip`,`kode_dosen`),
  UNIQUE KEY `id_prodi` (`id_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdosen`
--

LOCK TABLES `tdosen` WRITE;
/*!40000 ALTER TABLE `tdosen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tdosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmahasiswa`
--

DROP TABLE IF EXISTS `tmahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmahasiswa` (
  `id_mahasiswa` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `jk` char(1) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `tgl_lulus` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_prodi` int(5) NOT NULL,
  PRIMARY KEY (`id_mahasiswa`,`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmahasiswa`
--

LOCK TABLES `tmahasiswa` WRITE;
/*!40000 ALTER TABLE `tmahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tnilai`
--

DROP TABLE IF EXISTS `tnilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tnilai` (
  `id_nilai` int(2) NOT NULL,
  `nilai_huruf` varchar(2) NOT NULL,
  `bobot_nilai` decimal(3,2) NOT NULL,
  PRIMARY KEY (`id_nilai`),
  UNIQUE KEY `bobot_nilai` (`bobot_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tnilai`
--

LOCK TABLES `tnilai` WRITE;
/*!40000 ALTER TABLE `tnilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `tnilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpembimbing`
--

DROP TABLE IF EXISTS `tpembimbing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpembimbing` (
  `id_pembimbing` int(255) NOT NULL,
  `jenis_pembimbing` varchar(7) NOT NULL,
  `id_dosen` int(255) NOT NULL,
  PRIMARY KEY (`id_pembimbing`),
  UNIQUE KEY `id_dosen` (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpembimbing`
--

LOCK TABLES `tpembimbing` WRITE;
/*!40000 ALTER TABLE `tpembimbing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpembimbing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpenguji`
--

DROP TABLE IF EXISTS `tpenguji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpenguji` (
  `id_penguji` int(255) NOT NULL,
  `id_dosen` int(255) NOT NULL,
  `jenis_penguji` char(1) NOT NULL,
  PRIMARY KEY (`id_penguji`),
  UNIQUE KEY `id_dosen` (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpenguji`
--

LOCK TABLES `tpenguji` WRITE;
/*!40000 ALTER TABLE `tpenguji` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpenguji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tprodi`
--

DROP TABLE IF EXISTS `tprodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tprodi` (
  `id_prodi` int(5) NOT NULL,
  `kode_prodi` varchar(5) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id_prodi`,`kode_prodi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tprodi`
--

LOCK TABLES `tprodi` WRITE;
/*!40000 ALTER TABLE `tprodi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tprodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsemester`
--

DROP TABLE IF EXISTS `tsemester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsemester` (
  `id_semester` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kode_semester` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id_semester`,`kode_semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsemester`
--

LOCK TABLES `tsemester` WRITE;
/*!40000 ALTER TABLE `tsemester` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsemester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tseminar`
--

DROP TABLE IF EXISTS `tseminar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tseminar` (
  `id_seminar` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `id_nilai` int(2) NOT NULL,
  `jenis_seminar` char(1) NOT NULL,
  `id_mahasiswa` int(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_pembimbing` int(255) NOT NULL,
  `id_penguji` int(255) NOT NULL,
  PRIMARY KEY (`id_seminar`),
  UNIQUE KEY `id_nilai` (`id_nilai`),
  UNIQUE KEY `id_mahasiswa` (`id_mahasiswa`),
  UNIQUE KEY `id_pembimbing` (`id_pembimbing`),
  UNIQUE KEY `id_penguji` (`id_penguji`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tseminar`
--

LOCK TABLES `tseminar` WRITE;
/*!40000 ALTER TABLE `tseminar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tseminar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsidang`
--

DROP TABLE IF EXISTS `tsidang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsidang` (
  `id_sidang` int(5) NOT NULL,
  `id_mahasiswa` int(255) NOT NULL,
  `tanggal_sidang` date NOT NULL,
  `id_nilai` int(2) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id_sidang`),
  UNIQUE KEY `id_mahasiswa` (`id_mahasiswa`),
  UNIQUE KEY `id_nilai` (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsidang`
--

LOCK TABLES `tsidang` WRITE;
/*!40000 ALTER TABLE `tsidang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsidang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsk_pembimbing`
--

DROP TABLE IF EXISTS `tsk_pembimbing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsk_pembimbing` (
  `id_SK` int(4) NOT NULL,
  `id_skripsi` int(5) NOT NULL,
  `id_semester` int(3) NOT NULL,
  `no_sk` varchar(20) NOT NULL,
  `tanggal_SK` date NOT NULL,
  PRIMARY KEY (`id_SK`),
  UNIQUE KEY `id_skripsi` (`id_skripsi`),
  UNIQUE KEY `id_semester` (`id_semester`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsk_pembimbing`
--

LOCK TABLES `tsk_pembimbing` WRITE;
/*!40000 ALTER TABLE `tsk_pembimbing` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsk_pembimbing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tskripsi`
--

DROP TABLE IF EXISTS `tskripsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tskripsi` (
  `id_skripsi` int(5) NOT NULL,
  `id_mahasiswa` int(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `id_pembimbing` int(255) NOT NULL,
  `id_penguji` int(255) NOT NULL,
  PRIMARY KEY (`id_skripsi`),
  UNIQUE KEY `id_mahasiswa` (`id_mahasiswa`),
  UNIQUE KEY `id_pembimbing` (`id_pembimbing`),
  UNIQUE KEY `id_penguji` (`id_penguji`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tskripsi`
--

LOCK TABLES `tskripsi` WRITE;
/*!40000 ALTER TABLE `tskripsi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tskripsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `untitled`
--

DROP TABLE IF EXISTS `untitled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `untitled` (
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `untitled`
--

LOCK TABLES `untitled` WRITE;
/*!40000 ALTER TABLE `untitled` DISABLE KEYS */;
/*!40000 ALTER TABLE `untitled` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-08  0:55:11
