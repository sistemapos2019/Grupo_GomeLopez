CREATE DATABASE  IF NOT EXISTS `pos` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pos`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pos
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bitacora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `suceso` varchar(245) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bitacora_usuario_idx` (`idUsuario`),
  CONSTRAINT `fk_bitacora_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
INSERT INTO `bitacora` VALUES (1,1,'2019-11-06 08:46:55','Inicio sesion en el sistema'),(2,1,'2019-11-06 08:52:15','Creo la orden #3'),(3,1,'2019-11-06 09:25:48','Inicio sesion en el sistema'),(4,1,'2019-11-06 09:26:50','Creo la orden #4'),(5,1,'2019-11-06 09:35:35','Inicio sesion en el sistema'),(6,1,'2019-11-06 09:36:57','Creo la orden #5'),(7,1,'2019-11-06 10:04:38','Inicio sesion en el sistema'),(8,1,'2019-11-06 10:07:30','Inicio sesion en el sistema'),(9,1,'2019-11-06 10:09:07','Inicio sesion en el sistema'),(10,1,'2019-11-06 10:15:21','Inicio sesion en el sistema'),(11,1,'2019-11-06 10:19:45','Inicio sesion en el sistema'),(12,1,'2019-11-06 10:20:08','Creo la orden #6'),(13,1,'2019-11-06 10:27:58','Inicio sesion en el sistema'),(14,1,'2019-11-06 10:28:42','Modifico la orden #6'),(15,1,'2019-11-06 11:26:15','Inicio sesion en el sistema'),(16,1,'2019-11-06 11:27:10','Inicio sesion en el sistema'),(17,1,'2019-11-06 11:55:50','Inicio sesion en el sistema'),(18,1,'2019-11-06 11:57:31','Inicio sesion en el sistema'),(19,1,'2019-11-06 11:58:23','Inicio sesion en el sistema'),(20,1,'2019-11-06 12:03:37','Inicio sesion en el sistema'),(21,1,'2019-11-06 12:04:37','Creo la orden #7'),(22,1,'2019-11-06 12:08:29','Inicio sesion en el sistema'),(23,1,'2019-11-06 12:19:31','Inicio sesion en el sistema'),(24,1,'2019-11-06 12:22:43','Inicio sesion en el sistema'),(25,1,'2019-11-06 12:23:00','Creo la orden #8'),(26,1,'2019-11-06 12:26:09','Inicio sesion en el sistema'),(27,1,'2019-11-06 12:26:26','Creo la orden #9'),(28,1,'2019-11-06 12:28:24','Inicio sesion en el sistema'),(29,1,'2019-11-06 12:28:53','Creo la orden #10'),(30,1,'2019-11-06 12:33:03','Creo la orden #11'),(31,1,'2019-11-06 12:46:08','Inicio sesion en el sistema'),(32,1,'2019-11-06 12:46:21','Creo la orden #12'),(33,1,'2019-11-06 13:06:39','Inicio sesion en el sistema'),(34,1,'2019-11-06 13:07:14','Creo la orden #13'),(35,1,'2019-11-06 14:14:04','Inicio sesion en el sistema'),(36,1,'2019-11-06 14:15:30','Inicio sesion en el sistema'),(37,1,'2019-11-06 14:17:55','Inicio sesion en el sistema'),(38,1,'2019-11-06 14:18:11','Creo la orden #16'),(39,1,'2019-11-06 14:20:26','Inicio sesion en el sistema'),(40,1,'2019-11-06 14:20:42','Creo la orden #17'),(41,1,'2019-11-06 14:34:01','Inicio sesion en el sistema'),(42,1,'2019-11-06 14:34:19','Creo la orden #18'),(43,1,'2019-11-06 14:48:07','Inicio sesion en el sistema'),(44,1,'2019-11-06 14:48:47','Creo la orden #19'),(45,1,'2019-11-06 15:14:59','Inicio sesion en el sistema'),(46,1,'2019-11-06 15:42:01','Inicio sesion en el sistema'),(47,1,'2019-11-06 15:42:18','Creo la orden #21'),(48,1,'2019-11-06 15:43:46','Inicio sesion en el sistema'),(49,1,'2019-11-06 15:44:08','Creo la orden #22'),(50,1,'2019-11-06 16:21:03','Inicio sesion en el sistema'),(51,1,'2019-11-06 16:22:19','Inicio sesion en el sistema'),(52,1,'2019-11-06 20:00:23','Inicio sesion en el sistema'),(53,1,'2019-11-06 20:05:03','Inicio sesion en el sistema'),(54,1,'2019-11-07 00:01:10','Inicio sesion en el sistema'),(55,1,'2019-11-07 00:34:07','Inicio sesion en el sistema'),(56,1,'2019-11-07 00:34:21','Creo la orden #27'),(57,1,'2019-11-07 00:36:41','Creo la orden #28'),(58,1,'2019-11-07 00:44:23','Inicio sesion en el sistema'),(59,1,'2019-11-07 00:44:56','Creo la orden #29'),(60,1,'2019-11-07 00:50:13','Inicio sesion en el sistema'),(61,1,'2019-11-07 00:53:12','Creo la orden #30'),(62,1,'2019-11-07 01:19:04','Inicio sesion en el sistema'),(63,1,'2019-11-07 05:00:18','Inicio sesion en el sistema'),(64,1,'2019-11-07 05:04:29','Inicio sesion en el sistema'),(65,1,'2019-11-07 05:20:24','Inicio sesion en el sistema'),(66,1,'2019-11-07 05:26:45','Inicio sesion en el sistema'),(67,1,'2019-11-07 05:31:02','Inicio sesion en el sistema'),(68,1,'2019-11-07 05:35:34','Inicio sesion en el sistema'),(69,1,'2019-11-07 05:37:59','Inicio sesion en el sistema'),(70,1,'2019-11-07 05:42:39','Inicio sesion en el sistema'),(71,1,'2019-11-07 05:45:28','Inicio sesion en el sistema'),(72,1,'2019-11-07 05:48:43','Inicio sesion en el sistema'),(73,1,'2019-11-07 05:59:43','Inicio sesion en el sistema'),(74,1,'2019-11-07 06:18:46','Inicio sesion en el sistema'),(75,1,'2019-11-07 06:19:21','Inicio sesion en el sistema'),(76,1,'2019-11-07 06:22:40','Inicio sesion en el sistema'),(77,1,'2019-11-07 06:44:41','Inicio sesion en el sistema'),(78,1,'2019-11-07 07:14:35','Inicio sesion en el sistema'),(79,1,'2019-11-07 07:42:21','Inicio sesion en el sistema'),(80,1,'2019-11-07 07:51:05','Inicio sesion en el sistema'),(81,1,'2019-11-07 07:53:25','Inicio sesion en el sistema'),(82,1,'2019-11-07 07:58:07','Inicio sesion en el sistema'),(83,1,'2019-11-07 07:59:15','Inicio sesion en el sistema'),(84,1,'2019-11-07 08:00:36','Inicio sesion en el sistema'),(85,1,'2019-11-07 08:01:37','Inicio sesion en el sistema'),(86,1,'2019-11-07 08:03:23','Cobro la orden #6'),(87,1,'2019-11-07 08:21:53','Inicio sesion en el sistema'),(88,1,'2019-11-07 08:22:14','Cobro la orden #3'),(89,1,'2019-11-07 08:24:43','Inicio sesion en el sistema'),(90,1,'2019-11-07 08:25:02','Cobro la orden #4'),(91,1,'2019-11-07 08:26:54','Inicio sesion en el sistema'),(92,1,'2019-11-07 08:27:12','Cobro la orden #1'),(93,1,'2019-11-07 08:43:57','Inicio sesion en el sistema'),(94,1,'2019-11-07 09:03:02','Inicio sesion en el sistema'),(95,1,'2019-11-07 09:04:13','Inicio sesion en el sistema'),(96,1,'2019-11-07 09:05:31','Inicio sesion en el sistema'),(97,1,'2019-11-07 09:08:40','Inicio sesion en el sistema'),(98,1,'2019-11-07 09:10:47','Inicio sesion en el sistema'),(99,1,'2019-11-07 09:12:01','Inicio sesion en el sistema'),(100,1,'2019-11-07 09:35:59','Inicio sesion en el sistema'),(101,1,'2019-11-07 09:47:19','Inicio sesion en el sistema'),(102,1,'2019-11-07 09:47:41','Inicio sesion en el sistema'),(103,1,'2019-11-07 10:02:52','Inicio sesion en el sistema'),(104,1,'2019-11-07 10:05:59','Inicio sesion en el sistema'),(105,1,'2019-11-07 10:08:06','Inicio sesion en el sistema'),(108,1,'2019-11-07 10:09:11','Inicio sesion en el sistema'),(109,1,'2019-11-07 10:11:56','Inicio sesion en el sistema'),(110,1,'2019-11-07 10:13:52','Inicio sesion en el sistema'),(113,1,'2019-11-07 10:15:27','Inicio sesion en el sistema'),(115,1,'2019-11-07 10:15:44','Inicio sesion en el sistema'),(116,1,'2019-11-07 10:18:49','Inicio sesion en el sistema'),(117,1,'2019-11-07 10:19:44','Inicio sesion en el sistema'),(118,1,'2019-11-07 10:20:05','Inicio sesion en el sistema'),(120,1,'2019-11-07 10:21:33','Inicio sesion en el sistema'),(121,1,'2019-11-07 10:23:16','Inicio sesion en el sistema'),(122,1,'2019-11-07 10:23:36','Inicio sesion en el sistema'),(123,1,'2019-11-07 10:46:33','Inicio sesion en el sistema'),(124,1,'2019-11-07 10:46:52','Inicio sesion en el sistema'),(125,1,'2019-11-07 10:47:52','Inicio sesion en el sistema'),(126,1,'2019-11-07 10:51:59','Inicio sesion en el sistema'),(127,1,'2019-11-07 10:54:52','Inicio sesion en el sistema'),(128,1,'2019-11-07 10:55:32','Inicio sesion en el sistema'),(129,1,'2019-11-07 10:56:27','Inicio sesion en el sistema'),(130,1,'2019-11-07 10:59:26','Inicio sesion en el sistema'),(131,1,'2019-11-07 11:04:30','Inicio sesion en el sistema'),(132,1,'2019-11-07 11:05:37','Inicio sesion en el sistema'),(133,1,'2019-11-07 11:11:40','Inicio sesion en el sistema'),(134,1,'2019-11-07 11:12:17','Creo la orden #31'),(135,1,'2019-11-07 13:18:33','Inicio sesion en el sistema'),(136,1,'2019-11-07 13:20:27','Inicio sesion en el sistema'),(137,1,'2019-11-07 13:23:56','Inicio sesion en el sistema'),(147,1,'2019-11-07 13:26:07','Inicio sesion en el sistema'),(159,1,'2019-11-07 15:25:50','Inicio sesion en el sistema'),(161,1,'2019-11-07 15:26:17','Inicio sesion en el sistema'),(162,1,'2019-11-07 15:43:44','Creo la orden #35'),(163,1,'2019-11-07 15:46:35','Creo la orden #36'),(164,1,'2019-11-07 15:48:44','Cobro la orden #36'),(165,1,'2019-11-07 15:58:21','Inicio sesion en el sistema'),(166,1,'2019-11-07 15:58:32','Creo la orden #37'),(167,1,'2019-11-07 15:59:48','Inicio sesion en el sistema'),(168,1,'2019-11-07 16:00:00','Creo la orden #38'),(169,1,'2019-11-07 16:01:09','Inicio sesion en el sistema'),(170,1,'2019-11-07 16:01:21','Creo la orden #39'),(171,1,'2019-11-07 16:03:36','Inicio sesion en el sistema'),(172,1,'2019-11-07 16:03:47','Creo la orden #40'),(173,1,'2019-11-07 16:05:28','Inicio sesion en el sistema'),(174,1,'2019-11-07 16:05:39','Creo la orden #41'),(175,1,'2019-11-07 16:06:58','Creo la orden #42'),(176,1,'2019-11-07 16:07:49','Creo la orden #43'),(177,1,'2019-11-07 16:09:57','Inicio sesion en el sistema'),(178,1,'2019-11-07 16:10:30','Creo la orden #44'),(179,1,'2019-11-07 16:14:10','Inicio sesion en el sistema'),(180,1,'2019-11-07 16:14:36','Creo la orden #45'),(181,1,'2019-11-07 16:16:48','Inicio sesion en el sistema'),(182,1,'2019-11-07 16:17:02','Creo la orden #46'),(183,1,'2019-11-07 16:18:23','Inicio sesion en el sistema'),(184,1,'2019-11-07 16:22:30','Inicio sesion en el sistema'),(185,1,'2019-11-07 16:32:37','Inicio sesion en el sistema'),(186,1,'2019-11-07 16:33:08','Creo la orden #47'),(187,1,'2019-11-07 16:40:40','Inicio sesion en el sistema'),(188,1,'2019-11-07 16:41:00','Creo la orden #48'),(189,1,'2019-11-07 16:41:33','Cobro la orden #48'),(190,1,'2019-11-07 16:52:06','Creo la orden #49'),(191,1,'2019-11-07 16:53:36','Creo la orden #50'),(192,1,'2019-11-07 16:54:31','Cobro la orden #49'),(193,1,'2019-12-02 02:48:29','Inicio sesion en el sistema'),(194,1,'2019-12-02 03:03:33','Inicio sesion en el sistema'),(195,1,'2019-12-02 04:25:53','Inicio sesion en el sistema'),(196,1,'2019-12-02 04:28:12','Creo la orden #1'),(197,1,'2019-12-02 04:28:45','Agrego o elimno productos a la orden#1'),(198,1,'2019-12-02 04:29:23','Cobro la orden #1'),(199,1,'2019-12-02 04:29:56','Inicio sesion en el sistema'),(200,1,'2019-12-02 04:30:38','Creo la orden #2'),(201,1,'2019-12-02 05:36:54','Inicio sesion en el sistema'),(202,1,'2019-12-02 05:37:59','Inicio sesion en el sistema');
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pos`.`bitacora_BEFORE_INSERT` BEFORE INSERT ON `bitacora` FOR EACH ROW
BEGIN
SET NEW.fecha = now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Entradas'),(2,'Platos'),(3,'Bebidas'),(4,'postres');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `Ndocumento` varchar(45) DEFAULT NULL,
  `NRC` varchar(45) DEFAULT NULL,
  `NITDUI` varchar(45) DEFAULT NULL,
  `nombreProveedor` varchar(145) NOT NULL,
  `montoInterno` decimal(10,4) NOT NULL,
  `iva` decimal(8,2) NOT NULL,
  `percepcion` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dashboardllevar`
--

DROP TABLE IF EXISTS `dashboardllevar`;
/*!50001 DROP VIEW IF EXISTS `dashboardllevar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dashboardllevar` AS SELECT 
 1 AS `IdOrden`,
 1 AS `Mesero`,
 1 AS `Cliente`,
 1 AS `Total`,
 1 AS `Estado`,
 1 AS `TiempoPreparado`,
 1 AS `Preparado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dashboardprincipal`
--

DROP TABLE IF EXISTS `dashboardprincipal`;
/*!50001 DROP VIEW IF EXISTS `dashboardprincipal`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dashboardprincipal` AS SELECT 
 1 AS `IdOrden`,
 1 AS `Mesa`,
 1 AS `Mesero`,
 1 AS `Cliente`,
 1 AS `Total`,
 1 AS `Estado`,
 1 AS `llevar`,
 1 AS `TiempoPreparado`,
 1 AS `Preparado`,
 1 AS `TiempoRapido`,
 1 AS `Rapido`,
 1 AS `tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dashboardprincipal2`
--

DROP TABLE IF EXISTS `dashboardprincipal2`;
/*!50001 DROP VIEW IF EXISTS `dashboardprincipal2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dashboardprincipal2` AS SELECT 
 1 AS `IdOrden`,
 1 AS `Mesa`,
 1 AS `Mesero`,
 1 AS `Cliente`,
 1 AS `Total`,
 1 AS `Estado`,
 1 AS `llevar`,
 1 AS `TiempoPreparado`,
 1 AS `TiempoRapido`,
 1 AS `tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dashboardprincipal3`
--

DROP TABLE IF EXISTS `dashboardprincipal3`;
/*!50001 DROP VIEW IF EXISTS `dashboardprincipal3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dashboardprincipal3` AS SELECT 
 1 AS `IdOrden`,
 1 AS `Mesa`,
 1 AS `Mesero`,
 1 AS `Cliente`,
 1 AS `Total`,
 1 AS `Estado`,
 1 AS `llevar`,
 1 AS `TiempoPreparado`,
 1 AS `Preparado`,
 1 AS `TiempoRapido`,
 1 AS `Rapido`,
 1 AS `tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detallecompra`
--

DROP TABLE IF EXISTS `detallecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallecompra` (
  `idCompra` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `precioUnitario` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idCompra`,`idProducto`),
  KEY `fk_detallecompra_producto_idx` (`idProducto`),
  CONSTRAINT `fk_detallecompra_compra` FOREIGN KEY (`idCompra`) REFERENCES `compra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_detallecompra_producto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecompra`
--

LOCK TABLES `detallecompra` WRITE;
/*!40000 ALTER TABLE `detallecompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallecompra` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pos`.`detalleCompra_AFTER_INSERT` AFTER INSERT ON `detalleCompra` FOR EACH ROW
BEGIN
update producto set inventario=inventario+new.cantidad where id=new.idProducto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `detalleorden`
--

DROP TABLE IF EXISTS `detalleorden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalleorden` (
  `idOrden` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` decimal(5,1) NOT NULL,
  `precioUnitario` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idOrden`,`idProducto`),
  KEY `fk_detalle_producto_idx` (`idProducto`),
  CONSTRAINT `fk_detalle_orden` FOREIGN KEY (`idOrden`) REFERENCES `orden` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_detalle_producto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleorden`
--

LOCK TABLES `detalleorden` WRITE;
/*!40000 ALTER TABLE `detalleorden` DISABLE KEYS */;
INSERT INTO `detalleorden` VALUES (1,1,1.0,4.50),(1,2,1.0,1.25),(2,1,1.0,4.50),(2,2,1.0,1.25);
/*!40000 ALTER TABLE `detalleorden` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pos`.`detalleorden_AFTER_INSERT` AFTER INSERT ON `detalleorden` FOR EACH ROW
BEGIN
declare tipoP int;
declare Linventario int;
	set tipoP=(select preparado from producto where id=new.idProducto);
	if tipoP=1 then
		update orden set tiempoPreparado=now() where id=new.idOrden;
    else
    		update orden set tiempoRapido=now() where id=new.idOrden;
    end if;
    set Linventario=(select inventario from producto where id=new.idProducto);
    set Linventario=Linventario - new.cantidad;
    if Linventario<0 then
		set Linventario=0;
	end if;
    update producto set inventario=Linventario where id=new.idProducto;
    call calcularTotalOrden(new.idOrden);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pos`.`detalleorden_BEFORE_UPDATE` BEFORE UPDATE ON `detalleorden` FOR EACH ROW
BEGIN
declare Linventario int;
set Linventario=(select inventario from producto where id=new.idProducto);
    set Linventario=Linventario - (new.cantidad - old.cantidad);
    if Linventario<0 then
		set Linventario=0;
	end if;
    update producto set inventario=Linventario where id=new.idProducto;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pos`.`detalleorden_AFTER_UPDATE` AFTER UPDATE ON `detalleorden` FOR EACH ROW
BEGIN
declare tipoP int;
	set tipoP=(select preparado from producto where id=new.idProducto);
	if tipoP=1 then
		update orden set tiempoPreparado=now() where id=new.idOrden;
    else
    		update orden set tiempoRapido=now() where id=new.idOrden;
    end if;
    
    call calcularTotalOrden(new.idOrden);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pos`.`detalleorden_AFTER_DELETE` AFTER DELETE ON `detalleorden` FOR EACH ROW
BEGIN
call calcularTotalOrden(old.idOrden);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mesa` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
INSERT INTO `mesa` VALUES (1,'Uno'),(2,'Dos'),(3,'Tres'),(4,'Cuatro'),(5,'Cinco'),(6,'Seis');
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `IdOrden`,
 1 AS `Mesero`,
 1 AS `tiempoRapido`,
 1 AS `Rapido`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orden`
--

DROP TABLE IF EXISTS `orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idMesa` int(11) DEFAULT NULL COMMENT 'Cuando la orden es para llevar, la mesa es NULL',
  `idUsuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `llevar` int(11) NOT NULL DEFAULT '0',
  `estado` varchar(2) NOT NULL COMMENT 'CC -- Cobrado y Cerrado\nCP -- Cobrado en preparacion\nAA -- Activa sin Cobrar',
  `observacion` varchar(245) DEFAULT NULL,
  `tiempoPreparado` datetime DEFAULT NULL,
  `tiempoRapido` datetime DEFAULT NULL,
  `total` decimal(8,2) DEFAULT '0.00',
  `propina` decimal(8,2) DEFAULT '0.00',
  `formaPago` varchar(1) DEFAULT 'E' COMMENT 'Indica la forma de pago:\nE--Efectivo\nT--Tarjeta de Credito',
  `cliente` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orden_usuario1_idx` (`idUsuario`),
  KEY `fk_orden_mesa_idx` (`idMesa`),
  CONSTRAINT `fk_orden_mesa` FOREIGN KEY (`idMesa`) REFERENCES `mesa` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_orden_usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,1,1,'2019-12-02',0,'CC','','2019-12-02 04:28:11','2019-12-02 04:28:45',5.75,0.00,'E','Miguel'),(2,NULL,1,'2019-12-02',1,'CP','','2019-12-02 04:30:38','2019-12-02 04:30:38',5.75,0.00,'E','Miguel');
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `pos`.`orden_BEFORE_INSERT` BEFORE INSERT ON `orden` FOR EACH ROW
BEGIN
SET NEW.fecha = now();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `parametro`
--

DROP TABLE IF EXISTS `parametro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametro` (
  `id` int(11) NOT NULL,
  `nombre` varchar(145) NOT NULL,
  `valor` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametro`
--

LOCK TABLES `parametro` WRITE;
/*!40000 ALTER TABLE `parametro` DISABLE KEYS */;
INSERT INTO `parametro` VALUES (1,'ModoEntorno','0'),(2,'Nombre','Negocio la Bendición de Dios'),(3,'Descripcion','Servicios de Cafetería y restaurante'),(4,'Telefono','(503) 2453-5478'),(5,'NIT','0524-045374-102-8'),(6,'Giro','Restaurante'),(7,'Direccion','Barrio El Calvario calle libertad N23 Santa Ana'),(8,'Imprimir Ticket de productos preparados','0'),(9,'Imprimir Ticket de productos NO preparados o rapidos','1'),(10,'Tiempo maximo ordenes RAPIDAS (minutos)','10.0'),(11,'Tiempo maximo Preparacion de Orden','20.0'),(12,'Loggin en cada pantalla','0'),(13,'Propina','10.0');
/*!40000 ALTER TABLE `parametro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(145) NOT NULL,
  `precio` decimal(8,2) NOT NULL DEFAULT '0.00',
  `inventario` int(11) NOT NULL DEFAULT '0',
  `preparado` int(11) NOT NULL DEFAULT '1',
  `idCategoria` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_categoria_idx` (`idCategoria`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Carne Asada',4.50,0,1,2),(2,'Soda Coca-Cola 12onz',1.25,0,0,3);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(145) NOT NULL,
  `login` varchar(45) NOT NULL,
  `clave` varchar(245) NOT NULL,
  `pin` varchar(5) NOT NULL,
  `rol` varchar(1) NOT NULL DEFAULT 'M' COMMENT 'G--Gerente\nM--Mesero',
  PRIMARY KEY (`id`),
  UNIQUE KEY `loggin_UNIQUE` (`login`),
  UNIQUE KEY `pin_UNIQUE` (`pin`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Administrador','admin','admin','12345','G');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistafecha`
--

DROP TABLE IF EXISTS `vistafecha`;
/*!50001 DROP VIEW IF EXISTS `vistafecha`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vistafecha` AS SELECT 
 1 AS `now()`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'pos'
--

--
-- Dumping routines for database 'pos'
--
/*!50003 DROP PROCEDURE IF EXISTS `calcularTotalOrden` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcularTotalOrden`(LidOrden int)
BEGIN

update orden set total=(select sum(d.precioUnitario * d.cantidad) from detalleorden d where d.idOrden=LidOrden) where id=LidOrden;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `dashboardllevar`
--

/*!50001 DROP VIEW IF EXISTS `dashboardllevar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dashboardllevar` AS select `o`.`id` AS `IdOrden`,`u`.`nombreCompleto` AS `Mesero`,ifnull(`o`.`cliente`,'') AS `Cliente`,`o`.`total` AS `Total`,`o`.`estado` AS `Estado`,round(((now() - `o`.`tiempoPreparado`) / 60),1) AS `TiempoPreparado`,if(`o`.`tiempoPreparado`,ifnull(if((round(((now() - `o`.`tiempoPreparado`) / 60),1) > (select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 11))),'ROJO',NULL),if((((select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 11)) - round(((now() - `o`.`tiempoPreparado`) / 60),1)) > 1.5),'VERDE','AMARILLO')),NULL) AS `Preparado` from (`orden` `o` join `usuario` `u` on((`o`.`idUsuario` = `u`.`id`))) where ((`o`.`estado` <> 'CC') and (`o`.`llevar` = 1)) order by 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dashboardprincipal`
--

/*!50001 DROP VIEW IF EXISTS `dashboardprincipal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dashboardprincipal` AS select `o`.`id` AS `IdOrden`,`o`.`idMesa` AS `Mesa`,`u`.`nombreCompleto` AS `Mesero`,ifnull(`o`.`cliente`,'') AS `Cliente`,`o`.`total` AS `Total`,`o`.`estado` AS `Estado`,`o`.`llevar` AS `llevar`,round(((now() - `o`.`tiempoPreparado`) / 60),1) AS `TiempoPreparado`,if(`o`.`tiempoPreparado`,ifnull(if((round(((now() - `o`.`tiempoPreparado`) / 60),1) > (select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 11))),'ROJO',NULL),if((((select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 11)) - round(((now() - `o`.`tiempoPreparado`) / 60),1)) > 1.5),'VERDE','AMARILLO')),NULL) AS `Preparado`,round(((now() - `o`.`tiempoRapido`) / 60),1) AS `TiempoRapido`,if(`o`.`tiempoRapido`,ifnull(if((round(((now() - `o`.`tiempoRapido`) / 60),1) > (select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 10))),'ROJO',NULL),if((((select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 10)) - round(((now() - `o`.`tiempoRapido`) / 60),1)) > 1.5),'VERDE','AMARILLO')),NULL) AS `Rapido`,if((`o`.`llevar` = 1),'LLEVAR','AQUI') AS `tipo` from (`orden` `o` join `usuario` `u` on((`o`.`idUsuario` = `u`.`id`))) where (`o`.`estado` <> 'CC') order by 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dashboardprincipal2`
--

/*!50001 DROP VIEW IF EXISTS `dashboardprincipal2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dashboardprincipal2` AS select `o`.`id` AS `IdOrden`,`o`.`idMesa` AS `Mesa`,`u`.`nombreCompleto` AS `Mesero`,ifnull(`o`.`cliente`,'') AS `Cliente`,`o`.`total` AS `Total`,if((`o`.`estado` = 'AA'),'Activo','Cancelado') AS `Estado`,`o`.`llevar` AS `llevar`,timestampdiff(MINUTE,`o`.`tiempoPreparado`,now()) AS `TiempoPreparado`,timestampdiff(MINUTE,`o`.`tiempoRapido`,now()) AS `TiempoRapido`,if((`o`.`llevar` = 1),'LLEVAR','AQUI') AS `tipo` from (`orden` `o` join `usuario` `u` on((`o`.`idUsuario` = `u`.`id`))) where (`o`.`estado` <> 'CC') order by 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dashboardprincipal3`
--

/*!50001 DROP VIEW IF EXISTS `dashboardprincipal3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dashboardprincipal3` AS select `o`.`id` AS `IdOrden`,`o`.`idMesa` AS `Mesa`,`u`.`nombreCompleto` AS `Mesero`,ifnull(`o`.`cliente`,'') AS `Cliente`,`o`.`total` AS `Total`,`o`.`estado` AS `Estado`,`o`.`llevar` AS `llevar`,timestampdiff(MINUTE,`o`.`tiempoPreparado`,now()) AS `TiempoPreparado`,ifnull(if((isnull(timestampdiff(MINUTE,`o`.`tiempoPreparado`,now())) = 1),NULL,if((timestampdiff(MINUTE,`o`.`tiempoPreparado`,now()) > (select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 11))),'ROJO','VERDE')),NULL) AS `Preparado`,timestampdiff(MINUTE,`o`.`tiempoRapido`,now()) AS `TiempoRapido`,ifnull(if((isnull(timestampdiff(MINUTE,`o`.`tiempoRapido`,now())) = 1),NULL,if((timestampdiff(MINUTE,`o`.`tiempoRapido`,now()) > (select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 10))),'ROJO','VERDE')),NULL) AS `Rapido`,if((`o`.`llevar` = 1),'LLEVAR','AQUI') AS `tipo` from (`orden` `o` join `usuario` `u` on((`o`.`idUsuario` = `u`.`id`))) where (`o`.`estado` <> 'CC') order by 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sistemaPOS`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `o`.`id` AS `IdOrden`,`u`.`nombreCompleto` AS `Mesero`,timestampdiff(MINUTE,`o`.`tiempoRapido`,now()) AS `tiempoRapido`,ifnull(if((timestampdiff(MINUTE,`o`.`tiempoRapido`,now()) > (select `parametro`.`valor` from `parametro` where (`parametro`.`id` = 11))),'ROJO','VERDE'),NULL) AS `Rapido` from (`orden` `o` join `usuario` `u` on((`o`.`idUsuario` = `u`.`id`))) where (`o`.`estado` <> 'CC') order by 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistafecha`
--

/*!50001 DROP VIEW IF EXISTS `vistafecha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistafecha` AS select now() AS `now()` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04  0:52:32
