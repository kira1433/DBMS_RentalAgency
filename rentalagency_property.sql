CREATE DATABASE  IF NOT EXISTS `rentalagency` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rentalagency`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: rentalagency
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
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` int NOT NULL,
  `owner_id` int DEFAULT NULL,
  `available_sdate` date DEFAULT NULL,
  `available_edate` date DEFAULT NULL,
  `rent_pm` int DEFAULT NULL,
  `annual_hike` int DEFAULT NULL,
  `construction_year` int DEFAULT NULL,
  `locality` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `floors` int DEFAULT NULL,
  `total_area` int NOT NULL,
  `plinth_area` int NOT NULL,
  PRIMARY KEY (`property_id`),
  KEY `property_fk` (`owner_id`),
  CONSTRAINT `property_fk` FOREIGN KEY (`owner_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (10,101,'2020-05-01',NULL,12000,2,2018,'Hyderabad','310/2RT',1,1200,1000),(20,104,'2020-11-03',NULL,10000,5,2016,'Hyderabad','233/1234 Habsiguda',2,600,500),(30,112,'2019-02-03','2024-02-03',15000,5,2015,'Hyderabad','2837/123 Malakpet',3,700,600),(40,101,'2019-02-03',NULL,12000,0,2018,'Bangalore','abc complex',1,1000,900),(50,101,'2020-07-08',NULL,18000,0,2012,'Chennai','Near Airport',1,600,500),(60,104,'2008-02-04','2025-03-05',15000,3,2006,'Nagpur','Near Birlamandir',2,500,400),(70,112,'2008-01-02','2023-06-01',15000,3,2001,'Vizag','Near Beach',1,1200,1150),(80,104,'2020-01-05',NULL,500,10,2015,'Chennai','abc beach',1,1000,900);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01 16:30:43
