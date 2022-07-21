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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nascimento` date NOT NULL,
  `foto_documento` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_usuario` text COLLATE utf8mb4_unicode_ci,
  `telefone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_usuario` int NOT NULL,
  `chave_pix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reputacao` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Rafael Almeida','95313256009','2001-09-14','local/0yR5XNC1m9IGwoF0VOY8QbaC4kpe8TFgBCCkFour.jpg',NULL,'31999586911',2,'aberr',5,'rafaelalmeida@gmail.com',NULL,'$2y$10$TMAlNkQSLQBSA67pqeeQy.MZoaiysnANs.kkCllmBlc.LwybJAuV2',NULL,'2022-07-02 22:26:55','2022-07-02 22:26:55'),(2,'Raquel Leão','24252887089','2001-09-14','local/lF12aMUvEYSB1id6ueH2U3Lo4RAGbhNkvAvo0143.jpg',NULL,'31999586911',2,'aberr',5,'raquel179@gmail.com',NULL,'$2y$10$GuNaWR0IzcD6MUP.SpxnVeHRKzsb4WplSX12bw/lY.KJ8feJ8mzcm',NULL,'2022-07-02 22:28:30','2022-07-02 22:28:30'),(3,'Elton Fonseca','50406150001','2001-09-14','local/uoYJm795o22LBLSCigeimSMLbkdrWtQoWnKBvzRt.jpg',NULL,'31999586911',2,'aberr',5,'eltonfonseca@treinaweb.com.br',NULL,'$2y$10$8X5RRJ6U56b5UkatGjT9O.mDFJAcCLFV../lQCPxmMIHad9yFbSpe',NULL,'2022-07-02 22:29:48','2022-07-02 22:29:48'),(4,'Maria Silva','88943076037','2001-09-14','local/bssllAgb3eR73YAqJZ4XMlVv3uSCAnvgmsO4YQGf.jpg',NULL,'31999586911',1,'aberr',5,'mariasilva@gmail.com',NULL,'$2y$10$K6QqOlOwtnHBiSiOKyVpTOzZhJTIbaVqG5BAKo0aDZtCEjtind4C.',NULL,'2022-07-02 22:30:36','2022-07-02 22:30:36'),(5,'Akira Alves','13471766081','2001-09-14','local/wlAWM5UvWR11UQGgArfXa6Di3dNbsEkateVChrmz.jpg',NULL,'31999586911',1,'aberr',5,'akiraalves@gmail.com',NULL,'$2y$10$ELHcRcyNgOL2d6kNUNeTcOLRmJxS9z8SEO9dP0M7gbZsXIz7EoxS6',NULL,'2022-07-02 22:31:53','2022-07-02 22:31:53'),(6,'Renata da Silva','25780708061','2001-09-14','local/Gv4fk9LwSrDSvtjaI7RY7ir1t9r342RGQkOUz4sm.jpg',NULL,'31999586911',2,'aberr',5,'renatasilva@gmail.com',NULL,'$2y$10$lly.rZtCASj4t3VZ4uuOQ.WAlI9X9iXi04KwvnvtKz15vA1AYQVJW',NULL,'2022-07-08 21:16:42','2022-07-08 21:16:42'),(8,'Alice Silva','08035417088','2001-09-14','local/p2FQbcN4IurfnL2gok3S5WwZlZcbcnAAELaJJ8fo.jpg',NULL,'31999586911',2,'aberr',5,'alicesilva@gmail.com',NULL,'$2y$10$VIocxif5Es9J9b2lfSxoUuKXWPhAwv33TKmbMWodytWlAlPS9z6yC',NULL,'2022-07-08 22:40:26','2022-07-08 22:40:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19 18:26:30
