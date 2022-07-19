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
-- Table structure for table `diarias`
--

DROP TABLE IF EXISTS `diarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diarias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_atendimento` datetime NOT NULL,
  `tempo_atendimento` int NOT NULL,
  `status` int NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `valor_comissao` decimal(10,2) NOT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complemento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_ibge` int NOT NULL,
  `cep` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantidade_quartos` int NOT NULL,
  `quantidade_salas` int NOT NULL,
  `quantidade_cozinhas` int NOT NULL,
  `quantidade_banheiros` int NOT NULL,
  `quantidade_quintais` int NOT NULL,
  `quantidade_outros` int NOT NULL,
  `observacoes` text COLLATE utf8mb4_unicode_ci,
  `motivo_cancelamento` text COLLATE utf8mb4_unicode_ci,
  `cliente_id` bigint unsigned NOT NULL,
  `diarista_id` bigint unsigned DEFAULT NULL,
  `servico_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `diarias_cliente_id_foreign` (`cliente_id`),
  KEY `diarias_diarista_id_foreign` (`diarista_id`),
  KEY `diarias_servico_id_foreign` (`servico_id`),
  CONSTRAINT `diarias_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `users` (`id`),
  CONSTRAINT `diarias_diarista_id_foreign` FOREIGN KEY (`diarista_id`) REFERENCES `users` (`id`),
  CONSTRAINT `diarias_servico_id_foreign` FOREIGN KEY (`servico_id`) REFERENCES `servicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diarias`
--

LOCK TABLES `diarias` WRITE;
/*!40000 ALTER TABLE `diarias` DISABLE KEYS */;
INSERT INTO `diarias` VALUES (1,'2022-07-06 14:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-03 21:12:29','2022-07-03 21:14:22'),(2,'2022-07-06 14:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-03 21:13:08','2022-07-03 21:13:08'),(3,'2022-07-06 14:00:00',7,3,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,8,1,'2022-07-03 21:13:20','2022-07-18 22:53:07'),(4,'2022-07-06 14:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-03 21:13:23','2022-07-03 21:13:23'),(5,'2022-07-06 14:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-08-10 13:13:26','2022-07-03 21:13:26'),(6,'2022-07-06 14:00:00',7,3,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,2,1,'2022-07-03 21:13:28','2022-07-05 22:26:06'),(7,'2022-07-06 14:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-03 21:13:30','2022-07-03 21:13:30'),(8,'2022-07-06 14:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-03 21:25:21','2022-07-03 21:25:21'),(9,'2022-07-06 14:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-03 21:34:26','2022-07-03 21:34:26'),(10,'2022-07-07 15:00:00',7,3,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,1,2,1,'2022-07-04 21:47:48','2022-07-05 22:26:59'),(11,'2022-07-07 15:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,1,NULL,1,'2022-07-04 21:53:36','2022-07-04 21:53:36'),(12,'2022-07-08 15:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,1,NULL,1,'2022-07-05 21:07:18','2022-07-05 21:07:18'),(13,'2022-07-10 15:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-07 23:09:27','2022-07-07 23:09:27'),(14,'2022-07-10 15:00:00',7,1,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-07-07 23:54:37','2022-07-07 23:54:37'),(15,'2022-07-10 15:00:00',7,2,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,NULL,1,'2022-09-10 13:57:42','2022-07-11 21:40:51'),(16,'2022-07-10 15:00:00',7,3,7.00,0.70,'Av Paulista','1100',NULL,'centro','São Paulo','SP',3550308,'01222100',1,2,1,1,1,1,NULL,NULL,2,2,1,'2022-07-07 23:57:43','2022-07-18 22:34:03');
/*!40000 ALTER TABLE `diarias` ENABLE KEYS */;
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
