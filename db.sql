CREATE DATABASE  IF NOT EXISTS `quan_ly_tiec_cuoi` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `quan_ly_tiec_cuoi`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: quan_ly_tiec_cuoi
-- ------------------------------------------------------
-- Server version	5.6.12-log

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
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ascii` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` int(11) DEFAULT NULL COMMENT 'Nha trai hay gai',
  `description` text COLLATE utf8_unicode_ci,
  `money` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'Hưng','hung',1,'',NULL),(2,'Thi','thi',0,'AAAA',NULL),(4,'Hon','hon',2,'B18 Nguyễn Khuyến',NULL),(6,'Duy','duy',2,'B18 Nguyễn Khuyến',NULL),(7,'Nam','nam',2,'B18 Nguyễn Khuyến',NULL),(8,'Thầy Tú','thay tu',2,'B18 Nguyễn Khuyến',NULL),(10,'Hưng 2','hung 2',0,'A',NULL),(11,'Hưng 3','hung 3',2,'B',NULL),(12,'Hưng 4','hung 4',1,'C',NULL),(13,'Hưng 5','hung 5',0,'s',NULL),(15,'Hưng 7','hung 7',1,'A',NULL),(16,'Hưng 8','hung 8',1,'A',NULL),(19,'Hưng 10','hung 10',0,'',NULL),(22,'Huy','huy',1,'ITEC',NULL);
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_table`
--

DROP TABLE IF EXISTS `guest_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_table` (
  `id_table` int(11) NOT NULL,
  `id_guest` int(11) NOT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id_table`,`id_guest`),
  KEY `fk_guest_idx` (`id_guest`),
  CONSTRAINT `fk_gt_guest` FOREIGN KEY (`id_guest`) REFERENCES `guest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gt_table` FOREIGN KEY (`id_table`) REFERENCES `table` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_table`
--

LOCK TABLES `guest_table` WRITE;
/*!40000 ALTER TABLE `guest_table` DISABLE KEYS */;
INSERT INTO `guest_table` VALUES (1,2,0),(2,1,1),(2,13,0),(3,4,1),(3,6,0),(3,7,0),(3,8,0),(4,16,1),(4,22,1);
/*!40000 ALTER TABLE `guest_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_guest` int(11) DEFAULT NULL,
  `written` int(11) DEFAULT '0',
  `send` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_guest_idx` (`id_guest`),
  CONSTRAINT `fk_invitation_guest` FOREIGN KEY (`id_guest`) REFERENCES `guest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_num_of_guest` int(11) DEFAULT '0',
  `current_num_of_guest` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
INSERT INTO `table` VALUES (1,'Nhà Trai (Nội)',1,0,0),(2,'Nhà Trai (Ngoại)',2,1,0),(3,'Nguyễn Khuyến',4,1,0),(4,'ITEC',2,2,1);
/*!40000 ALTER TABLE `table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-28 23:26:38
