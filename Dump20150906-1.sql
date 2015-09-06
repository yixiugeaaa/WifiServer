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
  `position_x` float DEFAULT NULL,
  `position_y` float DEFAULT NULL,
  `line_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_bus`
--

LOCK TABLES `think_bus` WRITE;
/*!40000 ALTER TABLE `think_bus` DISABLE KEYS */;
INSERT INTO `think_bus` VALUES (3,NULL,NULL,1,NULL,1,'鲁B1000',NULL,1),(4,NULL,NULL,1,NULL,10,'鲁B672',NULL,10),(5,NULL,NULL,1,NULL,19,'鲁B920',NULL,19),(6,NULL,NULL,1,NULL,28,'鲁B318',NULL,28),(7,NULL,NULL,2,NULL,1,'鲁B436',NULL,28),(8,NULL,NULL,2,NULL,10,'鲁B135',NULL,19),(9,NULL,NULL,2,NULL,19,'鲁B472',NULL,10),(10,NULL,NULL,2,NULL,28,'鲁B828',NULL,1),(11,NULL,NULL,3,NULL,1,'鲁B851',NULL,1),(12,NULL,NULL,3,NULL,8,'鲁B308',NULL,8),(13,NULL,NULL,3,NULL,15,'鲁B227',NULL,15),(14,NULL,NULL,3,NULL,22,'鲁B945',NULL,22),(15,NULL,NULL,4,NULL,1,'鲁B280',NULL,22),(16,NULL,NULL,4,NULL,8,'鲁B338',NULL,15),(17,NULL,NULL,4,NULL,15,'鲁B214',NULL,8),(18,NULL,NULL,4,NULL,22,'鲁B351',NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_command`
--

LOCK TABLES `think_command` WRITE;
/*!40000 ALTER TABLE `think_command` DISABLE KEYS */;
INSERT INTO `think_command` VALUES (1,'123','Df',1,NULL),(4,'2e:60:d1:8a:3d:0a','Df',1,NULL),(5,'2e:60:d1:8a:3d:0a','Reboot',1,NULL);
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
  `tline_id` int(11) DEFAULT NULL,
  `start_station` varchar(45) DEFAULT NULL,
  `end_station` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_line`
--

LOCK TABLES `think_line` WRITE;
/*!40000 ALTER TABLE `think_line` DISABLE KEYS */;
INSERT INTO `think_line` VALUES (1,'2015-08-20 09:00:00','2015-08-20 19:00:00',1,'嘉陵江东路','黄岛轮渡'),(2,'2015-08-20 12:00:00','2015-08-20 20:00:00',1,'黄岛轮渡','嘉陵江东路'),(3,'2015-08-27 09:00:00','2015-08-20 19:00:00',2,'致远中学','黄岛轮渡'),(4,'2015-08-20 12:00:00','2015-08-20 20:00:00',2,'黄岛轮渡','致远中学');
/*!40000 ALTER TABLE `think_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_line_station`
--

DROP TABLE IF EXISTS `think_line_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_line_station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_id` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_line_station`
--

LOCK TABLES `think_line_station` WRITE;
/*!40000 ALTER TABLE `think_line_station` DISABLE KEYS */;
INSERT INTO `think_line_station` VALUES (407,1,1,1),(408,1,2,2),(409,1,3,3),(410,1,4,4),(411,1,5,5),(412,1,6,6),(413,1,7,7),(414,1,8,8),(415,1,9,9),(416,1,10,10),(417,1,11,11),(418,1,12,12),(419,1,13,13),(420,1,14,14),(421,1,15,15),(422,1,16,16),(423,1,17,17),(424,1,18,18),(425,1,19,19),(426,1,20,20),(427,1,21,21),(428,1,22,22),(429,1,23,23),(430,1,24,24),(431,1,25,25),(432,1,26,26),(433,1,27,27),(434,1,28,28),(435,1,29,29),(436,1,30,30),(437,1,31,31),(438,1,32,32),(439,1,33,33),(440,1,34,34),(441,1,35,35),(442,1,36,36),(443,2,1,36),(444,2,2,35),(445,2,3,34),(446,2,4,33),(447,2,5,32),(448,2,6,31),(449,2,7,30),(450,2,8,29),(451,2,9,28),(452,2,10,27),(453,2,11,26),(454,2,12,25),(455,2,13,24),(456,2,14,23),(457,2,15,22),(458,2,16,21),(459,2,17,20),(460,2,18,19),(461,2,19,18),(462,2,20,17),(463,2,21,16),(464,2,22,15),(465,2,23,14),(466,2,24,13),(467,2,25,12),(468,2,26,11),(469,2,27,10),(470,2,28,9),(471,2,29,8),(472,2,30,7),(473,2,31,6),(474,2,32,5),(475,2,33,4),(476,2,34,3),(477,2,35,2),(478,2,36,1),(507,3,37,1),(508,3,38,2),(509,3,39,3),(510,3,40,4),(511,3,41,5),(512,3,42,6),(513,3,43,7),(514,3,44,8),(515,3,45,9),(516,3,46,10),(517,3,47,11),(518,3,48,12),(519,3,49,13),(520,3,50,14),(521,3,51,15),(522,3,52,16),(523,3,53,17),(524,3,54,18),(525,3,55,19),(526,3,56,20),(527,3,57,21),(528,3,58,22),(529,3,59,23),(530,3,60,24),(531,3,61,25),(532,3,62,26),(533,3,63,27),(534,3,64,28),(563,4,37,28),(564,4,38,27),(565,4,39,26),(566,4,40,25),(567,4,41,24),(568,4,42,23),(569,4,43,22),(570,4,44,21),(571,4,45,20),(572,4,46,19),(573,4,47,18),(574,4,48,17),(575,4,49,16),(576,4,50,15),(577,4,51,14),(578,4,52,13),(579,4,53,12),(580,4,54,11),(581,4,55,10),(582,4,56,9),(583,4,57,8),(584,4,58,7),(585,4,59,6),(586,4,60,5),(587,4,61,4),(588,4,62,3),(589,4,63,2),(590,4,64,1);
/*!40000 ALTER TABLE `think_line_station` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_route`
--

LOCK TABLES `think_route` WRITE;
/*!40000 ALTER TABLE `think_route` DISABLE KEYS */;
INSERT INTO `think_route` VALUES (1,'2e:60:d1:8a:3d:0a','8','2015-08-31 09:00:00',NULL,1,'abc','F_HD_26_V1.0_20141218','C_HD_26_V1.0_20141218'),(2,'456','2','2015-08-31 09:00:00',NULL,2,'def','F_HD_26_V1.0_20141218','C_HD_26_V1.0_20141218');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_station`
--

LOCK TABLES `think_station` WRITE;
/*!40000 ALTER TABLE `think_station` DISABLE KEYS */;
INSERT INTO `think_station` VALUES (1,'嘉陵江东路',10,10),(2,'泽润金融广场',20,20),(3,'薛家岛',30,30),(4,'薛家岛市场',40,40),(5,'福瀛锦绣前城',10,30),(6,'理工大学黄岛校区',20,NULL),(7,'丁家河',NULL,NULL),(8,'开发区管委',NULL,NULL),(9,'城市桂冠',NULL,NULL),(10,'武夷山市场',NULL,NULL),(11,'开发区第一医院',NULL,NULL),(12,'丰泰购物广场',NULL,NULL),(13,'中国人保财险',NULL,NULL),(14,'开发区交通局',NULL,NULL),(15,'中达化纤',NULL,NULL),(16,'武家庄',NULL,NULL),(17,'青职学院',NULL,NULL),(18,'车家岭',NULL,NULL),(19,'保税港区西门',NULL,NULL),(20,'卓亭广场',NULL,NULL),(21,'齐长城',NULL,NULL),(22,'上汽通用五菱',NULL,NULL),(23,'金宇物流公司',NULL,NULL),(24,'青岛育仁医院',NULL,NULL),(25,'汇智广场',NULL,NULL),(26,'新街口',NULL,NULL),(27,'前湾港',NULL,NULL),(28,'福田雷沃',NULL,NULL),(29,'中集集装箱公司',NULL,NULL),(30,'黄岛街道服务中心',NULL,NULL),(31,'中泽国货',NULL,NULL),(32,'大唐黄岛发电',NULL,NULL),(33,'黄岛街道办事处',NULL,NULL),(34,'平安客运码头',NULL,NULL),(35,'黄岛油库',NULL,NULL),(36,'黄岛轮渡',NULL,NULL),(37,'致远中学',NULL,NULL),(38,'北下庄',NULL,NULL),(39,'山东科技大学西',NULL,NULL),(40,'山东科技大学',NULL,NULL),(41,'西南辛安',NULL,NULL),(42,'前湾港路西站',NULL,NULL),(43,'澳柯玛工业园',NULL,NULL),(44,'蜊叉泊',NULL,NULL),(45,'港头李',NULL,NULL),(46,'港头刘',NULL,NULL),(47,'团结路',NULL,NULL),(48,'青岛育仁医院西',NULL,NULL),(49,'港头臧',NULL,NULL),(50,'兴华集团',NULL,NULL),(51,'新街口西',NULL,NULL),(52,'前湾港',NULL,NULL),(53,'福田雷沃',NULL,NULL),(54,'中集集装箱公司',NULL,NULL),(55,'卧棚',NULL,NULL),(56,'开发区第二医院',NULL,NULL),(57,'柳沟',NULL,NULL),(58,'晨光园',NULL,NULL),(59,'北海公园',NULL,NULL),(60,'斋堂岛街',NULL,NULL),(61,'灵山岛街',NULL,NULL),(62,'前湾',NULL,NULL),(63,'黄岛油库',NULL,NULL),(64,'黄岛轮渡',NULL,NULL);
/*!40000 ALTER TABLE `think_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `think_tline`
--

DROP TABLE IF EXISTS `think_tline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `think_tline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `think_tline`
--

LOCK TABLES `think_tline` WRITE;
/*!40000 ALTER TABLE `think_tline` DISABLE KEYS */;
INSERT INTO `think_tline` VALUES (1,'1路',0,1),(2,'10路',0,1);
/*!40000 ALTER TABLE `think_tline` ENABLE KEYS */;
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

-- Dump completed on 2015-09-06 11:32:45
