CREATE DATABASE  IF NOT EXISTS `psl` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `psl`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: psl
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match` (
  `match_id` int unsigned NOT NULL AUTO_INCREMENT,
  `match_Date` date NOT NULL,
  `match_Time` time NOT NULL,
  `team_1_Id` int unsigned NOT NULL,
  `team_2_Id` int unsigned NOT NULL,
  `Commentator` varchar(80) NOT NULL,
  `toss_Winner` int unsigned NOT NULL,
  `choose_To` varchar(45) NOT NULL,
  `Score` int NOT NULL,
  `Stats` varchar(45) NOT NULL,
  `stadium_Id` int unsigned NOT NULL,
  `umpire_Id` int unsigned NOT NULL,
  PRIMARY KEY (`match_id`),
  KEY `team match_idx` (`team_1_Id`,`team_2_Id`),
  KEY `team rivals2_idx` (`team_2_Id`),
  KEY `umpire select_idx` (`umpire_Id`),
  KEY `stadium select_idx` (`stadium_Id`),
  KEY `team winner_idx` (`toss_Winner`),
  CONSTRAINT `stadium select` FOREIGN KEY (`stadium_Id`) REFERENCES `stadium` (`stadium_Id`),
  CONSTRAINT `team rivals` FOREIGN KEY (`team_1_Id`) REFERENCES `teams` (`team_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team rivals2` FOREIGN KEY (`team_2_Id`) REFERENCES `teams` (`team_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team winner` FOREIGN KEY (`toss_Winner`) REFERENCES `teams` (`team_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `umpire select` FOREIGN KEY (`umpire_Id`) REFERENCES `umpire` (`umpire_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES (1,'2021-02-20','19:00:00',2,6,'Ramiz Raja',2,'Field',121,'Karachi won by 7 wickets',2,6),(2,'2021-02-21','14:00:00',3,5,'Ramiz Raja',3,'Field',140,'Lahore won by 4 wickets',2,7);
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26 23:22:58
