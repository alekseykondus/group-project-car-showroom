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
-- Table structure for table `ordersadditional`
--

DROP TABLE IF EXISTS `ordersadditional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersadditional` (
  `orderId` int DEFAULT NULL,
  `carId` int DEFAULT NULL,
  `equipment` varchar(45) DEFAULT NULL,
  KEY `carId_idx` (`carId`),
  KEY `orderId_idx` (`orderId`),
  CONSTRAINT `car_Id` FOREIGN KEY (`carId`) REFERENCES `cars` (`carId`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orderId` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersadditional`
--

LOCK TABLES `ordersadditional` WRITE;
/*!40000 ALTER TABLE `ordersadditional` DISABLE KEYS */;
INSERT INTO `ordersadditional` VALUES (14,1,'Повна (стандарт)'),(15,1,'Повна (стандарт)'),(16,1,'Повна (стандарт)'),(17,7,'Повна на магнітній підвісці'),(17,12,'Повна з автопілотом'),(18,1,'Повна на магнітній підвісці'),(19,4,'Повна з автопілотом'),(19,6,'Повна на магнітній підвісці'),(20,6,'Повна на магнітній підвісці'),(20,12,'Повна на магнітній підвісці'),(21,1,'Повна з автопілотом'),(21,2,'Повна з автопілотом'),(22,6,'Повна на магнітній підвісці'),(22,10,'Повна з автопілотом'),(23,2,'Повна (стандарт)'),(23,10,'Повна (стандарт)'),(24,3,'Повна (стандарт)'),(25,1,'Повна (стандарт)'),(26,1,'Повна (стандарт)'),(27,1,'Повна (стандарт)'),(28,1,'Повна (стандарт)'),(29,1,'Повна (стандарт)'),(30,1,'Повна (стандарт)'),(31,1,'Повна (стандарт)'),(32,1,'Повна (стандарт)');
/*!40000 ALTER TABLE `ordersadditional` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `orderadditional_AFTER_INSERT` AFTER INSERT ON `ordersadditional` FOR EACH ROW BEGIN
	UPDATE cars SET inStock = inStock - 1 WHERE carId = NEW.carId;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 21:23:54
