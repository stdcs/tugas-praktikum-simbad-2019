-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: world
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
-- Table structure for table `table_list_country`
--

DROP TABLE IF EXISTS `table_list_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_list_country` (
  `iso_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` decimal(10,0) NOT NULL,
  `population` decimal(11,0) NOT NULL,
  `gdp` decimal(14,0) DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pop_density` int(4) NOT NULL,
  PRIMARY KEY (`iso_code`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_list_country`
--

LOCK TABLES `table_list_country` WRITE;
/*!40000 ALTER TABLE `table_list_country` DISABLE KEYS */;
INSERT INTO `table_list_country` VALUES ('AF','Afghanistan','Asia','Central','Kabul',625090,29863010,7168,'Afghan afgani',46),('AL','Albani','Europe','South East','Tirana',28748,3129678,8379,'Albanian lek',109),('AR','Argentina','South America','South East','Bueno Aires',2780400,38747150,183309,'Argentine peso',13),('AT','Austria','Europe','South Central','Vienna',83858,8189444,304527,'Euro',98),('AU','Australia','Oceana','South West','Canberra',7741220,20155130,700672,'Autralian dollar',2),('BD','Bangladesh','Asia','South Central','Dhaka',143998,141822300,59958,'Bangladeshi taka',985),('BE','Belgium','Europe','Central West','Brussels',30528,10419050,364735,'Euro',341),('BG','Bulgaria','Europe','South East','Sofia',110912,7725965,26648,'Bulgarian Lev',70),('BH','Bahrain','Asia','South West','Manama',694,726617,12995,'Bahraini dinar',1047),('BN','Brunei','Asia','South East','Bandar Seri Begawan',5765,373819,9531,'Brunei dollar',65),('BR','Brazil','South America','North East','Brasilia',8514877,186404900,794098,'Brazillian real',22),('BT','Bhutan','Asia','South Central','Thimphu',47000,2162546,840,'Indian rupee',46),('CA','Canada','North America','North Central','Ottawa',9970610,32268240,1115192,'Canadian dollar',3),('CN','China','Asia','Central East','Beijing',9596961,1315844000,2228862,'Chinese yuan',137),('CO','Colombia','South America','North West','Bogota',1138914,45600240,122309,'Colombia peso',40),('CZ','Czech Republic','Europe','Central','Prague',78866,10219600,122345,'Czech koruna',130),('DE','Germany','Europe','Central','Berlin',357022,82689210,2781900,'Euro',232),('DK','Denmark','Europe','North Central','Copenhagen',43094,5430590,254401,'Danish krone',126),('DM','Dominican Republic','North America','South East','Santo Domingo',48671,8894907,28303,'Dominican peso',183),('DZ','Algeria','Africa','North Central','Algiers',2381741,32853800,102257,'Algerian dinar',13),('EG','Egypt','North Amerika','South East','Cairo',1001449,74032880,89336,'Egyptian pound',74),('ET','Ethiopia','Africa','Central East','Addis Ababa',1104300,77430700,11174,'Ethiopian birr',70),('FI','Finland','Europe','North East','Helsinki',338145,5249060,193176,'Euro',15),('FR','France','Europe','South West','Paris',551500,60495540,2110185,'Euro',110),('GH','Ghana','Africa','North West','Accra',238533,2212810,10695,'Ghanian cedi',137),('GT','Guatemala','North America','South East','Guatemala City',108889,12599060,31683,'Guatemalan quetzal',116),('HT','Haiti','Nort America','South East','Port-au-Prince',27750,8527777,4254,'Haitian gourde',307),('HU','Hungary','Europe','South East','Budapest',93032,10097730,109154,'Hungarian forint',109),('ID','Indonesia','Asia','South East','Jakarta',1904569,222781500,287217,'Indonesian rupiah',117),('IE','Ireland','Europe','North West','Dublin',70273,4147901,196388,'Euro',59),('IL','Israel','Asia','Central West','Jerusalem',22145,6724564,123434,'Israeli new shaqei',304),('IN','India','Asia','South Central','New Delhi',3287263,1103371000,785468,'Indian rupee',336),('IQ','Iraq','Asia','Central West','Baghdad',438317,28807190,438317,'Iraqi dinar',66),('IR','Iran','Asia','Central West','Tehran',1648195,69515210,196343,'Iranian rial',42),('IS','Iceland','Europe','North West','Reykjavik',103000,294561,15036,'Iceland krona',2),('IT','Italy','Europe','South Central','Rome',301318,58092740,1732044,'Euro',193),('JP','Japan','Asia','Central East','Tokyo',377873,128084700,4505912,'Japanese yen',339),('KH','Cambodia','Asia','South East','Phnom Penh',181035,14071010,5391,'Cambodian riel',78),('KP','Korea, North','Asia','Central East','Pyongyang',120538,22487660,5997,'North Korean won',187),('KR','Korea, South','Asia','Central East','Seoul',99538,48846823,787624,'South Korean won',480),('KZ','Kazakhstan','Asia','North West','Astana',2724900,14825110,56088,'Kazakhstani tenge',5),('LA','Laos','Asia','South East','Vientiane',236800,5924145,2855,'Lao kip',25),('LB','Lebanon','Asia','Central West','Beirut',10400,3576818,22210,'Lebanese lira',344),('MM','Myanmar','Asia','South East','Naypyidaw',676578,50519490,12151,'Myanmar kyat',75),('MX','Mexico','North America','South Central','Mexico City',1958201,107029400,768438,'Mexican peso',55),('MY','Malysia','Asia','South East','Putra Jaya',329847,25347370,130143,'Malaysian ringgit',77),('NL','Netherlands','Europe','Central West','Amsterdam',41528,16299170,594755,'Euro',392),('NZ','New Zealand','Oceana','South East','Wellington',270534,4028384,109041,'New Zealan dollar',14),('RU','Rusia','Asia','North West','Moscow',17098242,143201600,2855,'Russian ruble',8),('SA','Saudi Arabia','Asia','South West','Riyadh',2149690,24573100,309778,'Saudi riyal',11);
/*!40000 ALTER TABLE `table_list_country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-20  6:07:30
