-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: data
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
-- Table structure for table `fakultas`
--

DROP TABLE IF EXISTS `fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fakultas` (
  `kode` varchar(1) NOT NULL,
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
  `kode` enum('0','3','5') NOT NULL,
  `nama` enum('SN','SB','Mandiri') NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jalur_masuk`
--

LOCK TABLES `jalur_masuk` WRITE;
/*!40000 ALTER TABLE `jalur_masuk` DISABLE KEYS */;
INSERT INTO `jalur_masuk` VALUES ('0','SN');
/*!40000 ALTER TABLE `jalur_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `id` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `kode_fakultas` varchar(1) NOT NULL,
  `kode_prodi` int(2) unsigned zerofill NOT NULL,
  `tahun_masuk` int(4) NOT NULL,
  `jalur_masuk` enum('0','3','5') NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kode_fakultas` (`kode_fakultas`),
  KEY `kode_prodi` (`kode_prodi`),
  KEY `jalur_masuk` (`jalur_masuk`),
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `fakultas` (`kode`),
  CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`kode_prodi`) REFERENCES `prodi` (`kode`),
  CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`jalur_masuk`) REFERENCES `jalur_masuk` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (01,'H',07,2018,'0','Arika Putri'),(03,'H',07,2018,'0','Cecilia Tania Emanuella'),(04,'H',07,2018,'0','Hera Ariska'),(05,'H',07,2018,'0','Hera Ariska'),(06,'H',07,2018,'0','Hera Ariska'),(07,'H',07,2018,'0','Hera'),(08,'H',07,2018,'0','ika'),(09,'H',07,2018,'0','ika'),(10,'H',07,2018,'0','ika'),(11,'H',07,2018,'0','ika'),(12,'H',07,2018,'0','ika'),(13,'H',07,2018,'0','ika'),(14,'H',07,2018,'0','ika'),(15,'H',07,2018,'0','ika'),(16,'H',07,2018,'0','ika'),(17,'H',07,2018,'0','ika'),(18,'H',07,2018,'0','ika'),(19,'H',07,2018,'0','ika');
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
  `nim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nim`
--

LOCK TABLES `nim` WRITE;
/*!40000 ALTER TABLE `nim` DISABLE KEYS */;
INSERT INTO `nim` VALUES ('Arika Putri','H071181001'),('Cecilia Tania Emanuella','H071181003'),('Hera Ariska','H071181004'),('Hera Ariska','H071181005'),('Hera Ariska','H071181006'),('Hera','H071181007'),('ika','H071181017'),('ika','H071181010');
/*!40000 ALTER TABLE `nim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodi`
--

DROP TABLE IF EXISTS `prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prodi` (
  `kode` int(2) unsigned zerofill NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL,
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
INSERT INTO `prodi` VALUES (07,'Ilmu Komputer','H');
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

-- Dump completed on 2019-10-29 13:27:45
