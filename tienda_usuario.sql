-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(100) DEFAULT NULL,
  `usu_tipo_documento` varchar(45) DEFAULT NULL,
  `usu_documento` varchar(12) DEFAULT NULL,
  `usu_state` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`usu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'adriel','CE','123456',1),(2,'ingrid B','CC','654321',1),(3,'ingrid Bedoya','CC','65432168',1),(4,'Valentina','CC','100061652',1),(5,'Valentina2','CC','100061652',1),(60,'adryan','CC','6666666',1),(61,'adryan','CC','6666666',1),(62,'adryan','CC','6666666',1),(63,'adryan','CC','6666666',1),(64,'adryan','CC','6666666',1),(65,'adryan','CC','6666666',1),(66,'adryan','CC','6666666',1),(67,'adryan','CC','6666666',1),(68,'adryan','CC','6666666',1),(69,'adryan','CC','6666666',1),(70,'adryan','CC','6666666',1),(71,'adryan','CC','6666666',1),(72,'adryan','CC','6666666',1),(73,'adryan','CC','6666666',1),(74,'adryan','CC','6666666',1),(75,'adryan','CC','6666666',1),(76,'adryan','CC','6666666',1),(77,'adryan','CC','6666666',1),(78,'adryan','CC','6666666',1),(79,'adryan','CC','6666666',1),(80,'adryan','CC','6666666',1),(81,'adryan','CC','6666666',1),(82,'adryan','CC','6666666',1),(83,'adryan','CC','6666666',1),(84,'adryan','CC','6666666',1),(85,'adryan','CC','6666666',1),(86,'adryan','CC','6666666',1),(87,'adryan','CC','6666666',1),(88,'adryan','CC','6666666',1),(89,'adryan','CC','6666666',1),(90,'adryan','CC','6666666',1),(91,'adryan','CC','6666666',1),(92,'adryan','CC','6666666',1),(93,'adryan','CC','6666666',1),(94,'adryan','CC','6666666',1),(95,'adryan','CC','6666666',1),(96,'adryan','CC','6666666',1),(97,'adryan','CC','6666666',1),(98,'adryan','CC','6666666',1),(99,'adryan','CC','6666666',1),(100,'adryan','CC','6666666',1),(101,'adryan','CC','6666666',1),(102,'adryan','CC','6666666',1),(103,'adryan','CC','6666666',1),(104,'adryan','CC','6666666',1),(105,'adryan','CC','6666666',1),(106,'adryan','CC','6666666',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-13 19:09:32
