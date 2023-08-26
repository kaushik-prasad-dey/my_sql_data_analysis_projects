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
-- Table structure for table `data_sci_team`
--

DROP TABLE IF EXISTS `data_sci_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_sci_team` (
  `emp_id` varchar(6) NOT NULL,
  `f_name` varchar(10) NOT NULL,
  `l_name` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `role` varchar(30) NOT NULL,
  `dept` varchar(15) NOT NULL,
  `exp` int NOT NULL,
  `country` varchar(15) NOT NULL,
  `continent` varchar(15) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_sci_team`
--

LOCK TABLES `data_sci_team` WRITE;
/*!40000 ALTER TABLE `data_sci_team` DISABLE KEYS */;
INSERT INTO `data_sci_team` VALUES ('E005','Eric','Hoffman','M','LEAD DATA SCIENTIST','FINANCE',11,'USA','NORTH AMERICA'),('E010','William','Butler','M','LEAD DATA SCIENTIST','AUTOMOTIVE',12,'FRANCE','EUROPE'),('E052','Dianna','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',6,'CANADA','NORTH AMERICA'),('E057','Dorothy','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',9,'USA','NORTH AMERICA'),('E204','Karene','Nowak','F','SENIOR DATA SCIENTIST','AUTOMOTIVE',8,'GERMANY','EUROPE'),('E245','Nian','Zhen','M','SENIOR DATA SCIENTIST','RETAIL',6,'CHINA','ASIA'),('E260','Roy','Collins','M','SENIOR DATA SCIENTIST','RETAIL',7,'INDIA','ASIA'),('E403','Steve','Hoffman','M','ASSOCIATE DATA SCIENTIST','FINANCE',4,'USA','NORTH AMERICA'),('E478','David','Smith','M','ASSOCIATE DATA SCIENTIST','RETAIL',3,'COLOMBIA','SOUTH AMERICA'),('E505','Chad','Wilson','M','ASSOCIATE DATA SCIENTIST','HEALTHCARE',5,'CANADA','NORTH AMERICA'),('E532','Claire','Brennan','F','ASSOCIATE DATA SCIENTIST','AUTOMOTIVE',3,'GERMANY','EUROPE'),('E620','Katrina','Allen','F','JUNIOR DATA SCIENTIST','RETAIL',2,'INDIA','ASIA'),('E640','Jenifer','Jhones','F','JUNIOR DATA SCIENTIST','RETAIL',1,'COLOMBIA','SOUTH AMERICA');
/*!40000 ALTER TABLE `data_sci_team` ENABLE KEYS */;
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

-- Dump completed on 2023-08-27  1:32:35
