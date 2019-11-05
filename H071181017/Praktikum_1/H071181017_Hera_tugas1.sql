-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tugasasli
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
-- Table structure for table `table_mahasiswa`
--

DROP TABLE IF EXISTS `table_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` int(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `status` enum('Aktif','Lulus') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nim_mhs` (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_mahasiswa`
--

LOCK TABLES `table_mahasiswa` WRITE;
/*!40000 ALTER TABLE `table_mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_matakuliah`
--

DROP TABLE IF EXISTS `table_matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_matakuliah` (
  `id` int(11) NOT NULL,
  `kode` varchar(11) DEFAULT NULL,
  `nama` varchar(11) DEFAULT NULL,
  `sks` enum('2','3','4') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nama_mk` (`nama`),
  UNIQUE KEY `kode_mk` (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_matakuliah`
--

LOCK TABLES `table_matakuliah` WRITE;
/*!40000 ALTER TABLE `table_matakuliah` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_matakuliah` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-11 21:05:44
