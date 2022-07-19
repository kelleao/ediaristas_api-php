-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: project_ediaristas
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor_minimo` decimal(10,2) NOT NULL,
  `quantidade_horas` int NOT NULL,
  `porcentagem` decimal(8,2) NOT NULL,
  `valor_quarto` decimal(10,2) NOT NULL,
  `horas_quarto` int NOT NULL,
  `valor_sala` decimal(10,2) NOT NULL,
  `horas_sala` int NOT NULL,
  `valor_banheiro` decimal(10,2) NOT NULL,
  `horas_banheiro` int NOT NULL,
  `valor_cozinha` decimal(10,2) NOT NULL,
  `horas_cozinha` int NOT NULL,
  `valor_quintal` decimal(10,2) NOT NULL,
  `horas_quintal` int NOT NULL,
  `valor_outros` decimal(10,2) NOT NULL,
  `horas_outros` int NOT NULL,
  `icone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posicao` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (1,'limpeza Comum',20.00,3,10.00,1.00,1,1.00,1,1.00,1,1.00,1,1.00,1,1.00,1,'twf-cleaning-1',1,NULL,NULL),(2,'limpeza completa',20.00,3,10.00,1.00,1,1.00,1,1.00,1,1.00,1,1.00,1,1.00,1,'twf-cleaning-2',1,NULL,NULL),(3,'limpeza geral',20.00,3,10.00,1.00,1,1.00,1,1.00,1,1.00,1,1.00,1,1.00,1,'twf-cleaning-3',1,NULL,NULL);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19 18:26:32
