CREATE DATABASE  IF NOT EXISTS `quan_ly_tiec_cuoi` /*!40100 DEFAULT CHARACTER SET latin1 */;
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
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ascii` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `money` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'Cẩm Huy','cam huy',1,'ITEC',NULL),(2,'Kiến Huy','kien huy',1,'ITEC',NULL),(3,'Đức','duc',1,'ITEC',NULL),(4,'Giang','giang',1,'ITEC',NULL),(5,'Tâm','tam',1,'ITEC',NULL),(6,'Hải Phong','hai phong',1,'ITEC',NULL),(7,'Vỹ Phong','vy phong',1,'ITEC',NULL),(8,'Thiện','thien',1,'ITEC',NULL),(9,'Tuấn','tuan',1,'ITEC',NULL),(10,'Trọng','trong',1,'ITEC',NULL),(11,'Lăng','lang',1,'ITEC',NULL),(12,'Sơn','son',1,'ITEC',NULL),(13,'Huy','huy',1,'Cấp 2',NULL),(14,'Đạt','dat',1,'Cấp 2',NULL),(15,'Thầy Tú','thay tu',2,'Nguyễn Khuyến',NULL),(16,'Bảo Ngọc','bao ngoc',2,'Nguyễn Khuyến',NULL),(17,'Chi','chi',2,'Nguyễn Khuyến',NULL),(18,'Thơ','tho',2,'Nguyễn Khuyến',NULL),(19,'Uyên','uyen',2,'Nguyễn Khuyến',NULL),(20,'Sang','sang',2,'Nguyễn Khuyến',NULL),(21,'Ngọc Trường','ngoc truong',2,'Nguyễn Khuyến',NULL),(22,'Nguyên','nguyen',2,'Nguyễn Khuyến',NULL),(23,'Nam','nam',2,'Nguyễn Khuyến',NULL),(24,'Hạo','hao',2,'Nguyễn Khuyến',NULL),(25,'Duy','duy',2,'Nguyễn Khuyến',NULL),(26,'Jenny Nguyen','jenny nguyen',2,'Nguyễn Khuyến',NULL),(27,'Ly Ly Trang','ly ly trang',2,'Nguyễn Khuyến',NULL),(28,'Hân','han',2,'Nguyễn Khuyến',NULL),(29,'Hon','hon',2,'Nguyễn Khuyến',NULL),(30,'Tuấn','tuan',2,'Nguyễn Khuyến',NULL),(31,'Tùng','tung',0,'Nguyễn Khuyến',NULL),(32,'Đức Minh','duc minh',2,'Nguyễn Khuyến',NULL),(33,'Quế Ly','que ly',2,'Nguyễn Khuyến',NULL),(34,'Huyền','huyen',2,'Nguyễn Khuyến',NULL),(35,'Toàn','toan',2,'Nguyễn Khuyến',NULL),(36,'Chị Ni','chi ni',0,'Cao Đẳng Thi',NULL),(37,'Phương','phuong',0,'Cao Đẳng Thi',NULL),(38,'Quyên','quyen',0,'Cao Đẳng Thi',NULL),(39,'Tùng','tung',0,'Cao Đẳng Thi',NULL),(40,'Dung','dung',0,'Cao Đẳng Thi',NULL),(41,'Thi','thi',0,'Cao Đẳng Thi',NULL),(42,'Ly','ly',0,'Cao Đẳng Thi',NULL),(43,'Linh','linh',0,'Cao Đẳng Thi',NULL),(44,'Oanh','oanh',0,'Cao Đẳng Thi',NULL),(45,'Đoan','doan',0,'Cao Đẳng Thi',NULL),(46,'Sơn','son',0,'Cao Đẳng Thi',NULL),(47,'Mỹ','my',0,'Cao Đẳng Thi',NULL),(48,'Yến','yen',0,'Cao Đẳng Thi',NULL),(49,'C.T.Anh','c.t.anh',0,'Yusen',NULL),(50,'C.Tâm','c.tam',0,'Yusen',NULL),(51,'C.Thủy','c.thuy',0,'Yusen',NULL),(52,'A.Hiếu','a.hieu',0,'Yusen',NULL),(53,'C.Hạnh','c.hanh',0,'Yusen',NULL),(54,'C.Liên','c.lien',0,'Yusen',NULL),(55,'C.Loan','c.loan',0,'Yusen',NULL),(56,'C.Hà','c.ha',0,'Yusen',NULL),(57,'C.Mi','c.mi',0,'Yusen',NULL),(58,'Trang','trang',0,'Yusen',NULL),(59,'C.Huệ','c.hue',0,'Yusen',NULL),(60,'A.Hải','a.hai',0,'Yusen',NULL),(61,'C.Kim Loan','c.kim loan',0,'Yusen',NULL),(62,'C.Hải Yến','c.hai yen',0,'Yusen',NULL),(63,'C.Phương','c.phuong',0,'Yusen',NULL),(64,'C.Thúy','c.thuy',0,'Yusen',NULL),(65,'C.Ngát','c.ngat',0,'Yusen',NULL),(66,'C.K.Anh','c.k.anh',0,'Yusen',NULL),(67,'Hiệp','hiep',0,'Yusen',NULL),(68,'Nguyên','nguyen',0,'Yusen',NULL),(69,'B.Phượng','b.phuong',0,'Yusen',NULL),(70,'Thanh','thanh',0,'Yusen',NULL),(71,'A.Thiện','a.thien',0,'Yusen',NULL),(72,'C.Sa','c.sa',0,'Yusen',NULL),(73,'C.Thuận','c.thuan',0,'Yusen',NULL),(74,'C.Như Ý','c.nhu y',0,'Yusen',NULL),(75,'C.Uyên','c.uyen',0,'Yusen',NULL),(76,'C.Hằng','c.hang',0,'Yusen',NULL),(77,'C.Vân','c.van',0,'Yusen',NULL),(78,'A.Tuấn','a.tuan',0,'Yusen',NULL),(79,'VC A.Minh','vc a.minh',0,'Yusen',NULL),(80,'A.Ba','a.ba',0,'Yusen',NULL),(81,'A.Hưng','a.hung',0,'Yusen',NULL),(82,'A.Tâm','a.tam',1,'Infory',NULL),(83,'Huy','huy',1,'Infory',NULL),(84,'Hà','ha',1,'Infory',NULL),(85,'Phương','phuong',1,'Infory',NULL),(86,'A.Duy','a.duy',1,'Infory',NULL),(87,'A.Duyên','a.duyen',1,'Infory',NULL),(88,'Hào','hao',1,'Infory',NULL),(89,'Đạt','dat',1,'Infory',NULL),(90,'Kha','kha',1,'Infory',NULL),(91,'Thầy Minh','thay minh',1,'Infory',NULL),(92,'Thầy Huy','thay huy',1,'Infory',NULL),(93,'Thầy Hưng','thay hung',2,'Thầy Hưng',NULL),(94,'A.Thống','a.thong',2,'Thầy Hưng',NULL),(95,'Nam','nam',2,'Thầy Hưng',NULL),(96,'Nguyệt','nguyet',2,'Thầy Hưng',NULL);
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
  KEY `fk_gt_guest_idx` (`id_guest`),
  CONSTRAINT `fk_gt_guest` FOREIGN KEY (`id_guest`) REFERENCES `guest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_gt_table` FOREIGN KEY (`id_table`) REFERENCES `table` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_table`
--

LOCK TABLES `guest_table` WRITE;
/*!40000 ALTER TABLE `guest_table` DISABLE KEYS */;
INSERT INTO `guest_table` VALUES (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,5,0),(1,6,0),(1,7,0),(1,8,0),(1,9,0),(1,10,0),(1,11,0),(1,12,0),(2,13,0),(2,14,0),(3,15,0),(3,16,0),(3,17,0),(3,18,0),(3,19,0),(3,20,0),(3,21,0),(3,22,0),(3,23,0),(3,24,0),(3,25,0),(3,26,0),(3,27,0),(3,28,0),(3,29,0),(3,30,0),(3,31,0),(3,32,0),(3,33,0),(3,34,0),(3,35,0),(4,36,0),(4,37,0),(4,38,0),(4,39,0),(4,40,0),(4,41,0),(4,42,0),(4,43,0),(4,44,0),(4,45,0),(4,46,0),(4,47,0),(4,48,0),(5,49,0),(5,50,0),(5,51,0),(5,52,0),(5,53,0),(5,54,0),(5,55,0),(5,56,0),(5,57,0),(5,58,0),(5,59,0),(5,60,0),(5,61,0),(5,62,0),(5,63,0),(5,64,0),(5,65,0),(5,66,0),(5,67,0),(5,68,0),(5,69,0),(5,70,0),(5,71,0),(5,72,0),(5,73,0),(5,74,0),(5,75,0),(5,76,0),(5,77,0),(5,78,0),(5,79,0),(5,80,0),(5,81,0),(6,82,0),(6,83,0),(6,84,0),(6,85,0),(6,86,0),(6,87,0),(6,88,0),(6,89,0),(6,90,0),(6,91,0),(6,92,0),(7,93,0),(7,94,0),(7,95,0),(7,96,0);
/*!40000 ALTER TABLE `guest_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table`
--

DROP TABLE IF EXISTS `table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_num_of_guest` int(11) DEFAULT '0',
  `current_num_of_guest` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

LOCK TABLES `table` WRITE;
/*!40000 ALTER TABLE `table` DISABLE KEYS */;
INSERT INTO `table` VALUES (1,'ITEC',12,0,0),(2,'Cấp 2',2,0,0),(3,'Nguyễn Khuyến',21,0,0),(4,'Cao Đẳng Thi',13,0,0),(5,'Yusen',33,0,0),(6,'Infory',11,0,0),(7,'Thầy Hưng',4,0,0);
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

-- Dump completed on 2015-03-21 22:39:58
