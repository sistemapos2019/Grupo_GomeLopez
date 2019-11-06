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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Entradas'),(2,'Platos'),(3,'Bebidas');
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
INSERT INTO `detalleorden` VALUES (1,1,1.0,4.50),(1,2,3.0,1.25),(2,1,2.0,4.50);
/*!40000 ALTER TABLE `detalleorden` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
INSERT INTO `mesa` VALUES (1,'Uno'),(2,'Dos'),(3,'Tres'),(4,'Cuatro'),(5,'Cinco');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,1,2,'2019-08-28',0,'AA','','2019-11-05 16:01:17',NULL,8.25,0.00,'E',''),(2,2,1,'2019-11-05',0,'AA',NULL,NULL,NULL,9.00,0.00,'E',NULL);
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `parametro` VALUES (1,'ModoEntorno','MESA'),(2,'Nombre','Negocio la Bendición de Dios'),(3,'Descripcion','Servicios de Cafetería y restaurante'),(4,'Telefono','(503) 2453-5478'),(5,'NIT','0524-045374-102-8'),(6,'Giro','Restaurante'),(7,'Direccion','Barrio El Calvario calle libertad N23 Santa Ana'),(8,'Imprimir Ticket de productos preparados','SI'),(9,'Imprimir Ticket de productos NO preparados o rapidos','SI'),(10,'Tiempo maximo ordenes RAPIDAS (minutos)','5'),(11,'Tiempo maximo Preparacion de Orden','15'),(12,'Loggin en cada pantalla','1'),(13,'Propina','10%');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Carne Asada',4.50,0,1,2),(2,'Soda Coca-Cola 12onz',1.25,41,0,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Administrador','admin','admin','12345','G'),(2,'Juan Perez','juan','juan','11111','M');
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

-- Dump completed on 2019-11-06  8:35:51
