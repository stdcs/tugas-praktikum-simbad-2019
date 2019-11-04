-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_nim
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

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
-- Table structure for table `tb_fakultas`
--

DROP TABLE IF EXISTS `tb_fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fakultas` (
  `kode_fakultas` varchar(1) NOT NULL,
  `nama_fakultas` varchar(255) NOT NULL,
  PRIMARY KEY (`kode_fakultas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_fakultas`
--

LOCK TABLES `tb_fakultas` WRITE;
/*!40000 ALTER TABLE `tb_fakultas` DISABLE KEYS */;
INSERT INTO `tb_fakultas` VALUES ('A','Fakultas Ekonomi dan Bisnis'),('B','Fakultas Hukum'),('C','Fakultas Kedokteran'),('D','Fakultas Teknik'),('E','Fakultas Ilmu Sosial dan Ilmu Politik'),('F','Fakultas Ilmu Budaya'),('G','Fakultas Pertanian'),('H','Fakultas Matematika dan Ilmu Pengetahuan Alam'),('I','Fakultas Peternakan'),('J','Fakultas Kedoteran Gigi'),('K','Fakultas Kesehatan Masyarakat'),('L','Fakultas Ilmu Kelautan dan Perikanan'),('M','Fakultas Kehutanan'),('N','Fakultas Farmasi'),('R','Fakultas Keperawatan');
/*!40000 ALTER TABLE `tb_fakultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_jalur_masuk`
--

DROP TABLE IF EXISTS `tb_jalur_masuk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_jalur_masuk` (
  `kode_jalur` int(1) NOT NULL,
  `nama_jalur` varchar(7) NOT NULL,
  PRIMARY KEY (`kode_jalur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jalur_masuk`
--

LOCK TABLES `tb_jalur_masuk` WRITE;
/*!40000 ALTER TABLE `tb_jalur_masuk` DISABLE KEYS */;
INSERT INTO `tb_jalur_masuk` VALUES (0,'SNMPTN'),(3,'SBMPTN'),(5,'Mandiri');
/*!40000 ALTER TABLE `tb_jalur_masuk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mahasiswa`
--

DROP TABLE IF EXISTS `tb_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mhs` varchar(255) NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL,
  `kode_prodi` varchar(2) NOT NULL,
  `kode_jalur` int(1) NOT NULL,
  `tahun_masuk` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kode_fakultas` (`kode_fakultas`),
  KEY `kode_jalur` (`kode_jalur`),
  CONSTRAINT `tb_mahasiswa_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `tb_fakultas` (`kode_fakultas`),
  CONSTRAINT `tb_mahasiswa_ibfk_2` FOREIGN KEY (`kode_jalur`) REFERENCES `tb_jalur_masuk` (`kode_jalur`),
  CONSTRAINT `tb_mahasiswa_ibfk_3` FOREIGN KEY (`id`) REFERENCES `tb_prodi` (`id_prodi`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mahasiswa`
--

LOCK TABLES `tb_mahasiswa` WRITE;
/*!40000 ALTER TABLE `tb_mahasiswa` DISABLE KEYS */;
INSERT INTO `tb_mahasiswa` VALUES (1,'CECILIA TANIA EMANUELLA','H','07',0,2018),(2,'AJRANA','H','07',0,2018),(3,'MOHD. ABDUL GHANI','H','07',0,2018),(4,'RAHMAYATI','H','07',0,2018),(5,'INDAH NURAWALIAH','H','07',0,2018),(6,'AL WAASIU','H','07',0,2018),(7,'AHMAD ILHAM B.','H','07',0,2018),(8,'MOCH. DJIHAD AKBAR SYAH','H','07',0,2018),(9,'TOPAZ ALEXANDRIA','H','07',0,2018),(10,'LA ODE AHMAD KHAIR ASYIDIQI','H','07',0,2018),(11,'MUSFITA','H','07',0,2018),(12,'SYAMSUL AKBAR MUSTAMIN','H','07',0,2018),(13,'AYNUN AKBAR','H','07',0,2018),(14,'FUAD HAMDI BAHAR','H','07',0,2018),(15,'HERA ARISKA','H','07',0,2018),(16,'EKA SAFITRI','H','07',0,2018),(17,'SYARIFAH ASMUL FAUZIAH','H','07',0,2018),(18,'MUH. AINUN LUTHFI','H','07',3,2018),(19,'MUHAMMAD ULIL AMRI','H','07',3,2018),(20,'NURUL FITRIHASARI RAMADHANI','H','07',3,2018),(21,'ARDI S','H','07',3,2018),(22,'A. MUH. FARID AQTHAR','H','07',3,2018),(23,'NASMAH INDAH SARI','H','07',3,2018),(24,'MUHAMMAD RIZKY WAHYUDIN','H','07',3,2018),(25,'RAYNALDY ARIEF','H','07',3,2018),(26,'M.RAHMATULLAH AL-MADANI','H','07',3,2018),(27,'AHMAD TAUFAN NUGRAHA SUFYAN','H','07',3,2018),(28,'NYSSA ROMANA','H','07',3,2018),(29,'MAXIMILIAN CRISTOPORUS NUEL JAYA','H','07',3,2018),(30,'FATHUR FAHRIZAL','H','07',3,2018),(31,'EVELINE GABRIELA WINARTO','H','07',3,2018),(32,'NASRULLAH M. HARIS','H','07',3,2018),(33,'MUHAMMAD IKHSAN ILMA','H','07',3,2018),(34,'MUHAMMAD FAISHAL','H','07',3,2018),(35,'MUHAMMAD ISLAHFARI WAHID','H','07',5,2018),(36,'RAMDAN MASYKURI','H','07',5,2018),(37,'MUH. NURSADID HIDAYAT','H','07',5,2018),(38,'AHMAD AL IHWAN','H','07',5,2018),(39,'MUH. RIFKY PARAHIAN SOPIAN','H','07',5,2018),(40,'RENALDI AKBAR RIFAI','H','07',5,2018),(41,'DIAWAN SALLEKARURUNG','H','07',5,2018),(42,'MUHAMMAD HAYAT ABDI','H','07',5,2018),(43,'WASILAH HAFID','H','07',5,2018);
/*!40000 ALTER TABLE `tb_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_nim`
--

DROP TABLE IF EXISTS `tb_nim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_nim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `nim` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tb_nim_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_mahasiswa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nim`
--

LOCK TABLES `tb_nim` WRITE;
/*!40000 ALTER TABLE `tb_nim` DISABLE KEYS */;
INSERT INTO `tb_nim` VALUES (1,'CECILIA TANIA EMANUELLA','H071181001'),(2,'AJRANA','H071181002'),(3,'MOHD. ABDUL GHANI','H071181003'),(4,'RAHMAYATI','H071181004'),(5,'INDAH NURAWALIAH','H071181005'),(6,'AL WAASIU','H071181006'),(7,'AHMAD ILHAM B.','H071181007'),(8,'MOCH. DJIHAD AKBAR SYAH','H071181008'),(9,'TOPAZ ALEXANDRIA','H071181009'),(10,'LA ODE AHMAD KHAIR ASYIDIQI','H071181010'),(11,'MUSFITA','H071181011'),(12,'SYAMSUL AKBAR MUSTAMIN','H071181012'),(13,'AYNUN AKBAR','H071181013'),(14,'FUAD HAMDI BAHAR','H071181014'),(15,'HERA ARISKA','H071181015'),(16,'EKA SAFITRI','H071181016'),(17,'SYARIFAH ASMUL FAUZIAH','H071181017'),(18,'MUH. AINUN LUTHFI','H071181318'),(19,'MUHAMMAD ULIL AMRI','H071181319'),(20,'NURUL FITRIHASARI RAMADHANI','H071181320'),(21,'ARDI S','H071181321'),(22,'A. MUH. FARID AQTHAR','H071181322'),(23,'NASMAH INDAH SARI','H071181323'),(24,'MUHAMMAD RIZKY WAHYUDIN','H071181324'),(25,'RAYNALDY ARIEF','H071181325'),(26,'M.RAHMATULLAH AL-MADANI','H071181326'),(27,'AHMAD TAUFAN NUGRAHA SUFYAN','H071181327'),(28,'NYSSA ROMANA','H071181328'),(29,'MAXIMILIAN CRISTOPORUS NUEL JAYA','H071181329'),(30,'FATHUR FAHRIZAL','H071181330'),(31,'EVELINE GABRIELA WINARTO','H071181331'),(32,'NASRULLAH M. HARIS','H071181332'),(33,'MUHAMMAD IKHSAN ILMA','H071181333'),(34,'MUHAMMAD FAISHAL','H071181334'),(35,'MUHAMMAD ISLAHFARI WAHID','H071181535'),(36,'RAMDAN MASYKURI','H071181536'),(37,'MUH. NURSADID HIDAYAT','H071181537'),(38,'AHMAD AL IHWAN','H071181538'),(39,'MUH. RIFKY PARAHIAN SOPIAN','H071181539'),(40,'RENALDI AKBAR RIFAI','H071181540'),(41,'DIAWAN SALLEKARURUNG','H071181541'),(42,'MUHAMMAD HAYAT ABDI','H071181542'),(43,'WASILAH HAFID','H071181543');
/*!40000 ALTER TABLE `tb_nim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_prodi`
--

DROP TABLE IF EXISTS `tb_prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_prodi` (
  `id_prodi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_prodi` varchar(2) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `kode_fakultas` varchar(1) NOT NULL,
  PRIMARY KEY (`id_prodi`,`kode_prodi`),
  KEY `kode_fakultas` (`kode_fakultas`),
  CONSTRAINT `tb_prodi_ibfk_1` FOREIGN KEY (`kode_fakultas`) REFERENCES `tb_fakultas` (`kode_fakultas`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_prodi`
--

LOCK TABLES `tb_prodi` WRITE;
/*!40000 ALTER TABLE `tb_prodi` DISABLE KEYS */;
INSERT INTO `tb_prodi` VALUES (1,'01','Ilmu Ekonomi dan Studi Pembangunan','A'),(2,'02','Manajemen','A'),(3,'03','Akuntansi','A'),(4,'01','Ilmu Hukum','B'),(5,'02','Hukum Administrasi Negara','B'),(6,'01','Pendidikan Dokter','C'),(7,'02','Psikologi','C'),(8,'03','Kedokteran Hewan','C'),(9,'01','Teknik Sipil','D'),(10,'02','Teknik Mesin','D'),(11,'03','Teknik Perkapalan','D'),(12,'04','Teknik Elektro','D'),(13,'05','Teknik Arsitektur','D'),(14,'06','Teknik Geologi','D'),(15,'07','Teknik Industri','D'),(16,'08','Teknik Kelautan','D'),(17,'09','Teknik Sistem Perkapalan','D'),(18,'10','Teknik Pengembangan Wilayah Kota','D'),(19,'11','Teknik Pertambangan','D'),(20,'12','Teknik Informatika','D'),(21,'13','Teknik Lingkungan','D'),(22,'01','Ilmu Administrasi Negara','E'),(23,'02','Ilmu Komunikasi','E'),(24,'03','Sosiologi','E'),(25,'04','Ilmu Politik','E'),(26,'05','Ilmu Pemerintahan','E'),(27,'06','Hubungan Internasional','E'),(28,'07','Antoropologi','E'),(29,'01','Sastra Indonesia','F'),(30,'02','Sastra Daerah','F'),(31,'03','Sastra Arab','F'),(32,'04','Sastra Inggris','F'),(33,'05','Sastra Perancis','F'),(34,'06','Ilmu Sejarah','F'),(35,'07','Arkeologi','F'),(36,'08','Sastra Jepang','F'),(37,'09','Bahasa Mandarin','F'),(38,'01','Agroteknologi','G'),(39,'02','Agribisnis','G'),(40,'03','Ilmu dan Teknologi Pangan','G'),(41,'04','Keteknikan Pertanian','G'),(42,'01','Matematika','H'),(43,'02','Fisika','H'),(44,'03','Kimia','H'),(45,'04','Biologi','H'),(46,'05','Statistika','H'),(47,'06','Geofisika','H'),(48,'07','Ilmu Komputer','H'),(49,'08','Ilmu Aktuaria','H'),(50,'01','Peternakan','I'),(51,'01','Pendidikan Dokter Gigi','J'),(52,'01','Kesehatan Masyarakat','K'),(53,'02','Ilmu Gizi','K'),(54,'01','Ilmu Kelautan','L'),(55,'02','Manajemen Sumberdaya Perairan','L'),(56,'03','Budidaya Perairan','L'),(57,'04','Sosial Ekonomi Perikanan','L'),(58,'05','Pemanfaatan Sumberdaya Perikanan','L'),(59,'01','Kehutanan','M'),(60,'01','Farmasi','N'),(61,'01','Ilmu Keperawatan','R'),(62,'02','Fisioterapi','R');
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

-- Dump completed on 2019-10-28 21:31:45
