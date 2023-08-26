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
-- Table structure for table `emp_record`
--

DROP TABLE IF EXISTS `emp_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_record` (
  `emp_id` varchar(6) NOT NULL,
  `f_name` varchar(10) NOT NULL,
  `l_name` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `role` varchar(30) NOT NULL,
  `dept` varchar(15) NOT NULL,
  `exp` int NOT NULL,
  `country` varchar(15) NOT NULL,
  `continent` varchar(15) NOT NULL,
  `salary` int NOT NULL,
  `emp_rating` int NOT NULL,
  `manager_id` varchar(5) DEFAULT NULL,
  `proj_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fname_index` (`f_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_record`
--

LOCK TABLES `emp_record` WRITE;
/*!40000 ALTER TABLE `emp_record` DISABLE KEYS */;
INSERT INTO `emp_record` VALUES ('E001','Arthur','Black','M','PRESIDENT','ALL',20,'USA','NORTH AMERICA',16500,5,NULL,NULL),('E005','Eric','Hoffman','M','LEAD DATA SCIENTIST','FINANCE',11,'USA','NORTH AMERICA',8500,3,'E103','P105'),('E010','William','Butler','M','LEAD DATA SCIENTIST','AUTOMOTIVE',12,'FRANCE','EUROPE',9000,2,'E428','P204'),('E052','Dianna','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',6,'CANADA','NORTH AMERICA',5500,5,'E083','P103'),('E057','Dorothy','Wilson','F','SENIOR DATA SCIENTIST','HEALTHCARE',9,'USA','NORTH AMERICA',7700,1,'E083','P302'),('E083','Patrick','Voltz','M','MANAGER','HEALTHCARE',15,'USA','NORTH AMERICA',9500,5,'E001',NULL),('E103','Emily','Grove','F','MANAGER','FINANCE',14,'CANADA','NORTH AMERICA',10500,4,'E001',NULL),('E204','Karene','Nowak','F','SENIOR DATA SCIENTIST','AUTOMOTIVE',8,'GERMANY','EUROPE',7500,5,'E428','P204'),('E245','Nian','Zhen','M','SENIOR DATA SCIENTIST','RETAIL',6,'CHINA','ASIA',6500,2,'E583','P109'),('E260','Roy','Collins','M','SENIOR DATA SCIENTIST','RETAIL',7,'INDIA','ASIA',7000,3,'E583','NA'),('E403','Steve','Hoffman','M','ASSOCIATE DATA SCIENTIST','FINANCE',4,'USA','NORTH AMERICA',5000,3,'E103','P105'),('E428','Pete','Allen','M','MANAGER','AUTOMOTIVE',14,'GERMANY','EUROPE',11000,4,'E001',NULL),('E478','David','Smith','M','ASSOCIATE DATA SCIENTIST','RETAIL',3,'COLOMBIA','SOUTH AMERICA',4000,4,'E583','P109'),('E505','Chad','Wilson','M','ASSOCIATE DATA SCIENTIST','HEALTHCARE',5,'CANADA','NORTH AMERICA',5000,2,'E083','P103'),('E532','Claire','Brennan','F','ASSOCIATE DATA SCIENTIST','AUTOMOTIVE',3,'GERMANY','EUROPE',4300,1,'E428','P204'),('E583','Janet','Hale','F','MANAGER','RETAIL',14,'COLOMBIA','SOUTH AMERICA',10000,2,'E001',NULL),('E612','Tracy','Norris','F','MANAGER','RETAIL',13,'INDIA','ASIA',8500,4,'E001',NULL),('E620','Katrina','Allen','F','JUNIOR DATA SCIENTIST','RETAIL',2,'INDIA','ASIA',3000,1,'E612','P406'),('E640','Jenifer','Jhones','F','JUNIOR DATA SCIENTIST','RETAIL',1,'COLOMBIA','SOUTH AMERICA',2800,4,'E612','P406');
/*!40000 ALTER TABLE `emp_record` ENABLE KEYS */;
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

-- Dump completed on 2023-08-27  1:32:36
