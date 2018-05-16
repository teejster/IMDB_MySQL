-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.15.14    Database: imdb_stage
-- ------------------------------------------------------
-- Server version	8.0.11

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
create schema if not exists imdb_stage;
use imdb_stage;
--
-- Table structure for table `name_basics`
--

DROP TABLE IF EXISTS `name_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `name_basics` (
  `nconst` varchar(10) DEFAULT NULL,
  `primaryName` varchar(128) DEFAULT NULL,
  `birthYear` smallint(6) DEFAULT NULL,
  `deathYear` smallint(6) DEFAULT NULL,
  `primaryProfession` varchar(100) DEFAULT NULL,
  `knownForTitles` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_akas`
--

DROP TABLE IF EXISTS `title_akas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_akas` (
  `titleId` varchar(10) DEFAULT NULL,
  `ordering` tinyint(4) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `region` varchar(4) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL,
  `types` varchar(20) DEFAULT NULL,
  `attributes` varchar(100) DEFAULT NULL,
  `isOriginalTitle` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_basics`
--

DROP TABLE IF EXISTS `title_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_basics` (
  `tconst` varchar(10) DEFAULT NULL,
  `titleType` varchar(15) DEFAULT NULL,
  `primaryTitle` varchar(500) DEFAULT NULL,
  `originalTitle` varchar(500) DEFAULT NULL,
  `isAdult` tinyint(4) DEFAULT NULL,
  `startYear` smallint(6) DEFAULT NULL,
  `endYear` smallint(6) DEFAULT NULL,
  `runTimeMinutes` int(11) DEFAULT NULL,
  `genres` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_crew`
--

DROP TABLE IF EXISTS `title_crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_crew` (
  `tconst` varchar(10) DEFAULT NULL,
  `directors` varchar(5000) DEFAULT NULL,
  `writers` varchar(6000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_episode`
--

DROP TABLE IF EXISTS `title_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_episode` (
  `tconst` varchar(10) DEFAULT NULL,
  `parentTconst` varchar(10) DEFAULT NULL,
  `seasonNumber` smallint(5) unsigned DEFAULT NULL,
  `episodeNumber` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_principals`
--

DROP TABLE IF EXISTS `title_principals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_principals` (
  `tconst` varchar(10) DEFAULT NULL,
  `ordering` tinyint(4) DEFAULT NULL,
  `nconst` varchar(10) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `job` varchar(500) DEFAULT NULL,
  `characters` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `title_ratings`
--

DROP TABLE IF EXISTS `title_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_ratings` (
  `tconst` text,
  `averageRating` double DEFAULT NULL,
  `numVotes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-09 23:34:51
