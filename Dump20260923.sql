-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: GestionPedidos
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.24.04.4

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
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTE` (
  `ID_CLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOM_CLIENTE` varchar(45) NOT NULL,
  `ESTADO` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES (101,'MARTI','CA'),(107,'HERMAN','WI'),(110,'WE-SPORTS','MI');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detalle_orden`
--

DROP TABLE IF EXISTS `Detalle_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detalle_orden` (
  `idDetalle_orden` int NOT NULL AUTO_INCREMENT,
  `ID_ORDENfk` int NOT NULL,
  `NUM_ITEMfk` int NOT NULL,
  `CANT` int NOT NULL,
  PRIMARY KEY (`idDetalle_orden`,`NUM_ITEMfk`,`ID_ORDENfk`),
  KEY `fk_ORDEN_1_idx` (`ID_ORDENfk`),
  KEY `fk_Producto_1_idx` (`NUM_ITEMfk`),
  CONSTRAINT `fk_ORDEN_1` FOREIGN KEY (`ID_ORDENfk`) REFERENCES `ORDEN` (`ID_ORDEN`),
  CONSTRAINT `fk_Producto_1` FOREIGN KEY (`NUM_ITEMfk`) REFERENCES `Producto` (`NUM_ITEM`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detalle_orden`
--

LOCK TABLES `Detalle_orden` WRITE;
/*!40000 ALTER TABLE `Detalle_orden` DISABLE KEYS */;
INSERT INTO `Detalle_orden` VALUES (1,2301,3786,3),(2,2301,4011,6),(3,2301,9132,8),(4,2302,5794,4),(5,2303,4011,2),(6,2303,3142,2);
/*!40000 ALTER TABLE `Detalle_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDEN`
--

DROP TABLE IF EXISTS `ORDEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDEN` (
  `ID_ORDEN` int NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `ID_CLIENTEfk` int NOT NULL,
  PRIMARY KEY (`ID_ORDEN`,`ID_CLIENTEfk`),
  KEY `fk_CLIENTE_1_idx` (`ID_CLIENTEfk`),
  CONSTRAINT `fk_CLIENTE_1` FOREIGN KEY (`ID_CLIENTEfk`) REFERENCES `CLIENTE` (`ID_CLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=2304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDEN`
--

LOCK TABLES `ORDEN` WRITE;
/*!40000 ALTER TABLE `ORDEN` DISABLE KEYS */;
INSERT INTO `ORDEN` VALUES (2301,'2003-02-23',101),(2302,'2003-02-25',107),(2303,'2003-02-27',110);
/*!40000 ALTER TABLE `ORDEN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producto` (
  `NUM_ITEM` int NOT NULL AUTO_INCREMENT,
  `DESC_ITEM` varchar(45) NOT NULL,
  `PRECIO` decimal(10,0) NOT NULL,
  PRIMARY KEY (`NUM_ITEM`)
) ENGINE=InnoDB AUTO_INCREMENT=9133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (3142,'FUNDA',10),(3786,'RED',35),(4011,'RAQUETA',65),(5794,'PAQ6',5),(9132,'PAQ-3',5);
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-23 14:38:03
