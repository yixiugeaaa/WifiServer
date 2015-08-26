-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: localhost    Database: wifi
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `think_bus`
--

DROP TABLE IF EXISTS `think_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_bus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(45) DEFAULT NULL,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_bus`
--

LOCK TABLES `think_bus` WRITE;
/*!40000 ALTER TABLE `think_bus` DISABLE KEYS */;
INSERT INTO `think_bus` VALUES (1,'123',40,40,1,'2015-08-26 10:10:04',4,'鲁B110',-1,NULL),(2,'456',20,20,1,'2015-08-26 10:10:04',2,'鲁B120',-1,NULL);
/*!40000 ALTER TABLE `think_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_command`
--

DROP TABLE IF EXISTS `think_command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_command` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(45) DEFAULT NULL,
  `cmd` varchar(45) DEFAULT NULL,
  `finish` int(11) DEFAULT NULL,
  `createt_ime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_command`
--

LOCK TABLES `think_command` WRITE;
/*!40000 ALTER TABLE `think_command` DISABLE KEYS */;
INSERT INTO `think_command` VALUES (1,'123','Df',1,NULL);
/*!40000 ALTER TABLE `think_command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_line`
--

DROP TABLE IF EXISTS `think_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `line_no` varchar(45) DEFAULT NULL,
  `station_num` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_line`
--

LOCK TABLES `think_line` WRITE;
/*!40000 ALTER TABLE `think_line` DISABLE KEYS */;
INSERT INTO `think_line` VALUES (1,'2015-08-20 09:00:00','2015-08-20 19:00:00','11',4,NULL),(2,'2015-08-20 12:00:00','2015-08-20 20:00:00','12',0,NULL);
/*!40000 ALTER TABLE `think_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_route`
--

DROP TABLE IF EXISTS `think_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(45) DEFAULT NULL,
  `useage_rate` varchar(45) DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `bus_id` int(11) DEFAULT NULL,
  `ssid` varchar(45) DEFAULT NULL,
  `firmware_update` varchar(45) DEFAULT NULL,
  `contents_update` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_route`
--

LOCK TABLES `think_route` WRITE;
/*!40000 ALTER TABLE `think_route` DISABLE KEYS */;
INSERT INTO `think_route` VALUES (1,'123','1',NULL,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `think_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_station`
--

DROP TABLE IF EXISTS `think_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_station`
--

LOCK TABLES `think_station` WRITE;
/*!40000 ALTER TABLE `think_station` DISABLE KEYS */;
INSERT INTO `think_station` VALUES (1,'A',10,10,1,0,NULL),(2,'B',20,20,1,1,NULL),(3,'C',30,30,1,2,NULL),(4,'D',40,40,1,3,NULL);
/*!40000 ALTER TABLE `think_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_user`
--

DROP TABLE IF EXISTS `think_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) DEFAULT NULL,
  `mac` varchar(45) DEFAULT NULL,
  `flow` float DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_user`
--

LOCK TABLES `think_user` WRITE;
/*!40000 ALTER TABLE `think_user` DISABLE KEYS */;
INSERT INTO `think_user` VALUES (1,'123','123',110,NULL);
/*!40000 ALTER TABLE `think_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_uurl`
--

DROP TABLE IF EXISTS `think_uurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_uurl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_uurl`
--

LOCK TABLES `think_uurl` WRITE;
/*!40000 ALTER TABLE `think_uurl` DISABLE KEYS */;
INSERT INTO `think_uurl` VALUES (1,1,1,'www.baidu.com','2015-08-21 10:21:30'),(2,1,1,'www.baidu.com','2015-08-21 10:21:30'),(3,1,1,'www.baidu.com:80','2015-08-21 10:21:30');
/*!40000 ALTER TABLE `think_uurl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-26 21:46:03
