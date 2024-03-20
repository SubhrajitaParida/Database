-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: online medicine order
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `ordered_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKf5464gxwc32ongdvka2rtvw96` (`address_id`),
  CONSTRAINT `FKf5464gxwc32ongdvka2rtvw96` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,'2024-02-22 17:51:55.759975','delivered',4),(2,2,'2024-02-22 18:06:44.823753','delivered',5),(3,5,'2024-02-23 17:02:43.835793','delivered',8),(4,6,'2024-02-23 17:40:04.679297','delivered',9),(5,2,'2024-02-24 11:42:06.725428','delivered',5),(6,2,'2024-02-24 11:48:15.626415','delivered',4),(7,2,'2024-02-24 11:50:28.486737','delivered',4),(8,2,'2024-02-24 11:52:30.568529','delivered',4),(9,2,'2024-02-24 11:53:39.171968','delivered',5),(10,2,'2024-02-24 11:55:43.435117','delivered',4),(11,2,'2024-02-24 11:58:20.280092','delivered',6),(12,2,'2024-02-24 12:03:56.476846','delivered',5),(13,2,'2024-02-24 12:07:27.817372','delivered',5),(14,2,'2024-02-24 12:11:56.162361','delivered',4),(15,2,'2024-02-24 12:14:17.649250','delivered',4),(16,2,'2024-02-24 12:17:13.632502','delivered',4),(17,2,'2024-02-24 21:49:08.559227','delivered',4),(18,2,'2024-02-24 21:49:10.971870','delivered',4),(19,14,'2024-02-26 14:33:19.873625','delivered',10),(20,15,'2024-02-26 15:39:37.133055','delivered',11),(21,1,'2024-03-08 13:05:44.745429','delivered',2),(22,1,'2024-03-08 13:08:21.783248','delivered',2),(23,1,'2024-03-08 13:09:21.993993','delivered',2),(24,1,'2024-03-08 13:11:55.584955','delivered',2),(25,1,'2024-03-08 13:13:07.995271','delivered',2),(26,1,'2024-03-08 13:16:47.287550','delivered',2),(27,1,'2024-03-08 13:19:26.174112','delivered',2),(28,1,'2024-03-08 13:20:20.083713','delivered',2),(29,1,'2024-03-08 13:26:19.908902','delivered',2),(30,1,'2024-03-08 13:29:19.618358','delivered',2),(31,1,'2024-03-08 13:31:06.982290','delivered',2),(32,1,'2024-03-08 13:33:14.761168','delivered',2),(33,1,'2024-03-08 15:17:09.960388','delivered',2),(34,1,'2024-03-16 18:38:36.139644','Ordered',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-20  9:48:58
