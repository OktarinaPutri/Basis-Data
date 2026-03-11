-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: data_mahasiswa
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data` (
  `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mahasiswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES (1,'Anin','Teknik Elektro'),(2,'Bara','Teknik Elektro'),(3,'Liona','Teknik Elektro'),(4,'Darwin','Teknik Mekatronika'),(5,'Farel','Teknik Mekatronika'),(6,'Tarin','Teknologi Informasi'),(7,'Izza','Teknologi Informasi'),(8,'Danuwara','Teknologi Informasi');
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `mahasiswa_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mahasiswa` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `mata_kuliah` varchar(100) DEFAULT NULL,
  `nilai` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`mahasiswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES (1,'Izam Danuara','Mekatronika','Kimia',75.89),(2,'Izam Danuara','Mekatronika','Biologi',90.45),(3,'Izam Danuara','Mekatronika','Kalkulus Lanjut',67.90),(4,'Arina Maheswara','Teknik Elektro','Kimia',68.33),(5,'Bambang Pamungkas','Teknik Elektro','Kimia',100.00),(6,'Bambang Pamungkas','Teknik Elektro','Biologi',88.00),(7,'Maul Hiya','Mekatronika','Biologi',79.00),(8,'Maul Hiya','Mekatronika','Kimia',76.00),(9,'Oktarina Putri','Teknologi Informasi','Kalkulus',100.00),(10,'Oktarina Putri','Teknologi Informasi','Kimia',90.00),(11,'Oktarina Putri','Teknologi Informasi','Kalkulus Lanjut',79.00),(12,'Fadhilah Nur','Teknik Industri','Kalkulus Lanjut',90.00),(13,'Fadhilah Nur','Teknik Industri','Kimia',98.00),(14,'Maulana Yusuf','Teknologi Informasi','Kalkulus Lanjut',100.00),(15,'Maulana Yusuf','Teknologi Informasi','Biologi',98.00),(16,'Siti Azimah','Teknologi Informasi','Kimia',100.00),(17,'Siti Azimah','Teknologi Informasi','Biologi',98.99),(18,'Akmal Nadhir','Teknik Industri','Biologi',97.00);
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `nilai_id` int(11) NOT NULL AUTO_INCREMENT,
  `mahasiswa_id` int(11) DEFAULT NULL,
  `mata_kuliah` varchar(50) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`nilai_id`),
  KEY `mahasiswa_id` (`mahasiswa_id`),
  CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `data` (`mahasiswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES (1,1,'Kimia',89),(2,1,'Biologi',90),(3,2,'Kimia',90),(4,2,'Biologi',67),(5,2,'Matematika',100),(6,3,'Kimia',80),(7,4,'Biologi',90),(8,4,'Matematika',100),(9,5,'Kimia',87),(10,5,'Biologi',97),(11,6,'Kimia',90),(12,6,'Matematika',98),(13,7,'Biologi',97),(14,8,'Matematika',94),(15,8,'Biologi',90);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-11 10:40:00
