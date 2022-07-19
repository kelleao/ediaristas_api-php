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
-- Table structure for table `candidatas_diaria`
--

DROP TABLE IF EXISTS `candidatas_diaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatas_diaria` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `diarista_id` bigint unsigned NOT NULL,
  `diaria_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `candidatas_diaria_diarista_id_foreign` (`diarista_id`),
  KEY `candidatas_diaria_diaria_id_foreign` (`diaria_id`),
  CONSTRAINT `candidatas_diaria_diaria_id_foreign` FOREIGN KEY (`diaria_id`) REFERENCES `diarias` (`id`),
  CONSTRAINT `candidatas_diaria_diarista_id_foreign` FOREIGN KEY (`diarista_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatas_diaria`
--

LOCK TABLES `candidatas_diaria` WRITE;
/*!40000 ALTER TABLE `candidatas_diaria` DISABLE KEYS */;
INSERT INTO `candidatas_diaria` VALUES (1,2,1,'2022-07-03 22:30:59','2022-07-03 22:30:59'),(2,2,6,'2022-07-03 22:31:46','2022-07-03 22:31:46'),(3,2,5,'2022-07-07 23:13:02','2022-07-07 23:13:02'),(5,2,16,NULL,NULL),(15,8,16,'2022-07-18 22:02:04','2022-07-18 22:02:04');
/*!40000 ALTER TABLE `candidatas_diaria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19 18:26:31
