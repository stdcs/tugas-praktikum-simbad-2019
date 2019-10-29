-- MySQL dump 10.13  Distrib 5.5.39, for Win32 (x86)
--
-- Host: localhost    Database: praktikum_3
-- ------------------------------------------------------
-- Server version	5.5.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fakultas`
--

DROP TABLE IF EXISTS `fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fakultas` (
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fakultas`
--

LOCK TABLES `fakultas` WRITE;
/*!40000 ALTER TABLE `fakultas` DISABLE KEYS */;
INSERT INTO `fakultas` VALUES ('H','MIPA');
/*!40000 ALTER TABLE `fakultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jalur_masuk`
--

DROP TABLE IF EXISTS `jalur_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jalur_masuk` (
  `kode` int(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jalur_masuk`
--

LOCK TABLES `jalur_masuk` WRITE;
/*!40000 ALTER TABLE `jalur_masuk` DISABLE KEYS */;
INSERT INTO `jalur_masuk` VALUES (0,'SNMPTN'),(3,'SBMPTN'),(5,'JNS/POSK');
/*!40000 ALTER TABLE `jalur_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `id` int(2) unsigned zerofill NOT NULL DEFAULT '00',
  `kode_fakultas` varchar(100) NOT NULL,
  `kode_prodi` int(2) unsigned zerofill DEFAULT NULL,
  `tahun_masuk` int(4) NOT NULL,
  `jalur_masuk` int(2) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kode_fakultas` (`kode_fakultas`),
  KEY `jalur_masuk` (`jalur_masuk`),
  KEY `nama` (`nama`),
  KEY `kode_prodi` (`kode_prodi`),
  CONSTRAINT `mahasiswa_ibfk_4` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode`),
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode`),
  CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`jalur_masuk`) REFERENCES `jalur_masuk` (`kode`),
  CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`nama`) REFERENCES `nim` (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (01,'H',07,2018,0,'Arikah Putri'),(02,'H',07,2018,0,'Cecilia tania');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nim`
--

DROP TABLE IF EXISTS `nim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nim` (
  `nama` varchar(100) NOT NULL,
  `nim` varchar(100) NOT NULL,
  PRIMARY KEY (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nim`
--

LOCK TABLES `nim` WRITE;
/*!40000 ALTER TABLE `nim` DISABLE KEYS */;
INSERT INTO `nim` VALUES ('Arikah Putri','H071181001'),('Cecilia tania','H071181002');
/*!40000 ALTER TABLE `nim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodi`
--

DROP TABLE IF EXISTS `prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi` (
  `kode` int(2) unsigned zerofill NOT NULL DEFAULT '00',
  `nama` varchar(100) NOT NULL,
  `kode_fakultas` varchar(100) NOT NULL,
  PRIMARY KEY (`kode`),
  KEY `kode_fakultas` (`kode_fakultas`),
  CONSTRAINT `prodi_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodi`
--

LOCK TABLES `prodi` WRITE;
/*!40000 ALTER TABLE `prodi` DISABLE KEYS */;
INSERT INTO `prodi` VALUES (07,'ILMU KOMPUTER','H');
/*!40000 ALTER TABLE `prodi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 22:00:50
