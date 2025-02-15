-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: referral
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('0444f00c-7a00-449e-b87c-a602aa43e2c8','e3aa1415572ff373b139eba9a4256fbb31b61667d4463788c99b3334ce2668f1','2025-02-15 15:47:11.838','20250214050732_init',NULL,NULL,'2025-02-15 15:47:11.781',1),('6ffc1104-39fc-43cb-8dfa-1bdce3c78180','1423feb5ef875a200152a2f97451cddc2fc7d2383b5a49e7a6d7a5d317f8a53c','2025-02-15 15:47:12.095','20250215154712_init',NULL,NULL,'2025-02-15 15:47:12.036',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refer`
--

DROP TABLE IF EXISTS `refer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refreeName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refreeEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrerName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrerEmail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `Refer_refreeEmail_key` (`refreeEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refer`
--

LOCK TABLES `refer` WRITE;
/*!40000 ALTER TABLE `refer` DISABLE KEYS */;
INSERT INTO `refer` VALUES (1,'Hemant','chariom2003@gmail.com','Hariom','harrym@gmail.com','2025-02-15 15:57:08.877'),(2,'HAriom','chariom833@gmail.com','Hariom','harrym@gmail.com','2025-02-15 16:37:52.272'),(3,'HAriom','harrym09123456@gmail.com','Hariom','harrym@gmail.com','2025-02-15 16:38:21.191'),(4,'shivom','shivom7890@gmail.com','HArsh','harry1@gmail.com','2025-02-15 16:38:40.069'),(5,'Shivom','chaudharyshivom7890@gmail.com','Hariom','cajk@gmail.com','2025-02-15 16:40:04.424'),(6,'Shivom','chaudharyshivo7890@gmail.com','Hariom','cajk@gmail.com','2025-02-15 16:42:39.751'),(7,'Shivom','chaudharyshio7890@gmail.com','Hariom','cajk@gmail.com','2025-02-15 16:44:23.605'),(8,'Shivom','chaudharyom7890@gmail.com','Hariom','cajk@gmail.com','2025-02-15 16:48:03.503'),(9,'Shivom','chaudm7890@gmail.com','Hariom','cajk@gmail.com','2025-02-15 16:53:39.751'),(10,'Shivom','chau7890@gmail.com','Hariom','cajk@gmail.com','2025-02-15 16:55:25.217'),(11,'Shivom','ch90@gmail.com','Hariom','cajk@gmail.com','2025-02-15 16:58:30.182');
/*!40000 ALTER TABLE `refer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-15 23:27:16
