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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  UNIQUE KEY `UK_mf7n8wo2rwrxsd6f3t9ub2mep` (`order_id`),
  CONSTRAINT `FKlouu98csyullos9k25tbpk4va` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,0,'2024-02-22 17:51:55.850920','upi','success',1),(2,0,'2024-02-22 18:06:44.834041','creditCard','success',2),(3,0,'2024-02-23 17:02:44.036284','creditCard','success',3),(4,0,'2024-02-23 17:40:04.742363','upi','success',4),(5,0,'2024-02-24 11:42:06.831833','debitCard','success',5),(6,0,'2024-02-24 11:48:15.635816','upi','success',6),(7,0,'2024-02-24 11:50:28.486737','upi','success',7),(8,0,'2024-02-24 11:52:30.600296','upi','success',8),(9,0,'2024-02-24 11:53:39.187546','debitCard','success',9),(10,0,'2024-02-24 11:55:43.443667','upi','success',10),(11,0,'2024-02-24 11:58:20.292268','upi','success',11),(12,0,'2024-02-24 12:03:56.484664','upi','success',12),(13,0,'2024-02-24 12:07:27.827930','upi','success',13),(14,0,'2024-02-24 12:11:56.167555','upi','success',14),(15,0,'2024-02-24 12:14:17.659293','upi','success',15),(16,0,'2024-02-24 12:17:13.644317','upi','success',16),(17,0,'2024-02-24 21:49:08.828982','upi','success',17),(18,0,'2024-02-24 21:49:10.992804','upi','success',18),(19,0,'2024-02-26 14:33:19.972736','upi','success',19),(20,0,'2024-02-26 15:39:37.165623','upi','success',20),(21,0,'2024-03-08 13:29:38.141524',NULL,NULL,30),(22,0,'2024-03-08 13:31:07.094064',NULL,NULL,31),(23,0,'2024-03-08 13:33:14.851809',NULL,NULL,32),(24,0,'2024-03-08 15:17:10.014668',NULL,NULL,33),(25,0,'2024-03-16 18:38:36.232459',NULL,NULL,34);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-20  9:48:59
