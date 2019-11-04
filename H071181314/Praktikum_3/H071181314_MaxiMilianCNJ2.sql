-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_lab_praktikum3
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
-- Table structure for table `jalur_masuk`
--

DROP TABLE IF EXISTS `jalur_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jalur_masuk` (
  `kode` enum('0','3','5') NOT NULL,
  `nama` varchar(200) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jalur_masuk`
--

LOCK TABLES `jalur_masuk` WRITE;
/*!40000 ALTER TABLE `jalur_masuk` DISABLE KEYS */;
INSERT INTO `jalur_masuk` VALUES ('3','SB');
/*!40000 ALTER TABLE `jalur_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_fakultas`
--

DROP TABLE IF EXISTS `tb_fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fakultas` (
  `kode` varchar(1) NOT NULL,
  `nama` varchar(200) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fakultas`
--

LOCK TABLES `tb_fakultas` WRITE;
/*!40000 ALTER TABLE `tb_fakultas` DISABLE KEYS */;
INSERT INTO `tb_fakultas` VALUES ('H','MIPA');
/*!40000 ALTER TABLE `tb_fakultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mahasiswa`
--

DROP TABLE IF EXISTS `tb_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mahasiswa` (
  `id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `kode_fakultas` varchar(1) NOT NULL,
  `kode_prodi` int(2) unsigned zerofill NOT NULL,
  `tahun_masuk` int(4) NOT NULL,
  `jalur_masuk` enum('0','3','5') NOT NULL,
  `nama` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kode_fakultas` (`kode_fakultas`),
  KEY `kode_prodi` (`kode_prodi`),
  KEY `jalur_masuk` (`jalur_masuk`),
  CONSTRAINT `tb_mahasiswa_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `tb_fakultas` (`kode`),
  CONSTRAINT `tb_mahasiswa_ibfk_2` FOREIGN KEY (`kode_prodi`) REFERENCES `tb_prodi` (`kode`),
  CONSTRAINT `tb_mahasiswa_ibfk_3` FOREIGN KEY (`jalur_masuk`) REFERENCES `jalur_masuk` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mahasiswa`
--

LOCK TABLES `tb_mahasiswa` WRITE;
/*!40000 ALTER TABLE `tb_mahasiswa` DISABLE KEYS */;
INSERT INTO `tb_mahasiswa` VALUES (02,'H',07,2018,'3','Maxi Milian CNJ');
/*!40000 ALTER TABLE `tb_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_nim`
--

DROP TABLE IF EXISTS `tb_nim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_nim` (
  `nama` varchar(200) NOT NULL,
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nim`
--

LOCK TABLES `tb_nim` WRITE;
/*!40000 ALTER TABLE `tb_nim` DISABLE KEYS */;
INSERT INTO `tb_nim` VALUES ('Maxi Milian CNJ','H071181302');
/*!40000 ALTER TABLE `tb_nim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_prodi`
--

DROP TABLE IF EXISTS `tb_prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_prodi` (
  `kode` int(2) unsigned zerofill NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL,
  PRIMARY KEY (`kode`),
  KEY `kode_fakultas` (`kode_fakultas`),
  CONSTRAINT `tb_prodi_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `tb_fakultas` (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_prodi`
--

LOCK TABLES `tb_prodi` WRITE;
/*!40000 ALTER TABLE `tb_prodi` DISABLE KEYS */;
INSERT INTO `tb_prodi` VALUES (07,'Ilkom','H');
/*!40000 ALTER TABLE `tb_prodi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-26 12:16:29
