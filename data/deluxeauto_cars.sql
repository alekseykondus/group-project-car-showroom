-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: deluxeauto
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `carId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `engineVolume` float DEFAULT NULL,
  `transmission` varchar(10) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  `inStock` int DEFAULT '0',
  `pathToPhoto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`carId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'LAMBORGHINI SIAN',3600000,'green',1.2,'automatic','2022-01-03',-5,'Lamborghini_Sian2.jpg'),(2,'TESLA ROADSTER',400000,'red',3.4,'automatic','2021-04-23',0,'Tesla_Roadster.jpg'),(3,'RENAULT ALPHINE',270000,'blue',2.2,'manual','2023-03-12',9,'Renault_Alpine.jpg'),(4,'CHEVROLET CORVETTE',110000,'yellow',5.5,'automatic','2023-09-08',8,'Chevrolet_Corvette.jpg'),(5,'MERCEDES AMG ONE',2700000,'white',3.3,'automatic','2021-03-14',0,'Mercedes_AMG_One.jpg'),(6,'BUGATTI DIVO',5800000,'black',2.5,'automatic','2023-06-28',2,'Bugatti_Divo.jpg'),(7,'HONDA NSX',320000,'orange',2.3,'manual','2021-03-21',6,'Honda_NSX.jpeg'),(8,'SUBARU BRZ',90000,'blue',3.5,'manual','2023-05-06',0,'Subaru_BRZ.jpg'),(9,'AUDIi E-TRON GT',205000,'green',2.5,'automatic','2022-09-28',0,'Audi_e-tron_GT.jpg'),(10,'KIA STINGER',95000,'red',3,'manual','2021-04-26',8,'KIA_Stinger.jpg'),(11,'BMW M4',280000,'yellow',2.3,'automatic','2023-07-27',0,'BMW_M4.jpg'),(12,'BENTLEY BENTAYGA',710000,'gold',4,'automatic','2023-11-04',3,'Bentley_Bentayga.jpg');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 21:23:54
