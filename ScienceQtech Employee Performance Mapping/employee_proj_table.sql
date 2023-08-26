-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: mysourcedatabase.cb7uv6opx09y.ap-south-1.rds.amazonaws.com    Database: employee
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `proj_table`
--

DROP TABLE IF EXISTS `proj_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proj_table` (
  `proj_id` varchar(5) NOT NULL,
  `proj_name` varchar(30) NOT NULL,
  `domain` varchar(15) NOT NULL,
  `start_date` date NOT NULL,
  `closure_date` date NOT NULL,
  `dev_qtr` varchar(4) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`proj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proj_table`
--

LOCK TABLES `proj_table` WRITE;
/*!40000 ALTER TABLE `proj_table` DISABLE KEYS */;
INSERT INTO `proj_table` VALUES ('P103','Drug Discovery','HEALTHCARE','0000-00-00','0000-00-00','Q1','DONE'),('P105','Fraud Detection','FINANCE','0000-00-00','0000-00-00','Q1','DONE'),('P109','Market Basket Analysis','RETAIL','0000-00-00','0000-00-00','Q1','DELAYED'),('P204','Supply Chain Management','AUTOMOTIVE','0000-00-00','0000-00-00','Q2','WIP'),('P302','Early Detection of Lung Cancer','HEALTHCARE','0000-00-00','0000-00-00','Q3','YTS'),('P406','Customer Sentiment Analysis','RETAIL','0000-00-00','0000-00-00','Q2','WIP');
/*!40000 ALTER TABLE `proj_table` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-27  1:32:33
