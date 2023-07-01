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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `aadhar_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `door_no` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `is_owner` tinyint DEFAULT NULL,
  `is_tenant` tinyint DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (101,20210467,'Aashish','Male',19,'4','VK','Hyderabad','Telengana',50059,'1234','krovidiaashishchandra@gmail.com',1,0),(102,20211823,'Bhavya','Male',20,'22','VK','Hyderabad','Telengana',500031,'abcd','bhavyabansal@gmail.com',0,1),(103,20212021,'Aryan','Male',20,'25','VK','Hyderabad','Telengana',50032,'sus','aryansingh@gmail.com',0,1),(104,20210312,'Kaustubh','Male',19,'3','VK','Hyderabad','Telengana',500032,'none','kaustubh@gmail.com',1,1),(112,20211807,'Aman','Male',19,'23','VK','Hyderabad','Telangana',50032,'1254','aman@gmail.com',1,0),(120,20210266,'Vignesh','Male',19,'234','VK','Hyderabad','Telengana',500067,'12345678','vignesh@gmail.com',0,1),(121,20210268,'Revanth','Male',20,'235','VK','Hyderabad','Telengana',500032,'god','revanth@gmail.com',0,1),(130,20210001,'Rishabh','Male',20,'03','VK','Hyderabad','Telengana',500012,'nooby','rishabh@gmail.com',0,1),(131,20210444,'Abc','Female',21,'5','MY','Bangalore','Karnataka',20054,'abcd','abc@gmail.com',0,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-01 16:30:44
