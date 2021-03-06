-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: CS461
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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

--
-- Current Database: `CS461`
--

/*!40000 DROP DATABASE IF EXISTS `CS461`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `CS461` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `CS461`;

--
-- Table structure for table `Attendance`
--

DROP TABLE IF EXISTS `Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `checked_in` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `meeting` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attendance`
--

LOCK TABLES `Attendance` WRITE;
/*!40000 ALTER TABLE `Attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `Attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Club`
--

DROP TABLE IF EXISTS `Club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `president` int(11) NOT NULL,
  `section` char(1) NOT NULL,
  `description` varchar(512) NOT NULL,
  `faculty_advisor` varchar(255) NOT NULL,
  `faculty_email` varchar(255) NOT NULL,
  `norm_meeting_days` varchar(255) NOT NULL,
  `norm_meeting_time` time NOT NULL,
  `norm_meeting_loc` varchar(255) NOT NULL,
  `picture` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Club`
--

LOCK TABLES `Club` WRITE;
/*!40000 ALTER TABLE `Club` DISABLE KEYS */;
INSERT INTO `Club` VALUES (1,'Aquaneers',2,'A','We do water stuffs','Miranda Martin','mart8115@kettering.edu','tue,thur','16:00:00','4400-AB',_binary '/uploads/images/1.jpg'),(2,'Aquaneers',2,'B','We do water stuffs','Miranda Martin','mart8115@kettering.edu','tue,thur','16:00:00','4400-AB',_binary '/uploads/images/2.jpg'),(3,'Larpers United',3,'A','We hit people with foam swords','Miranda Martin','mart8115@kettering.edu','mon,fri','20:00:00','Soccer Field',_binary '/uploads/images/3.jpg'),(4,'Larpers United',3,'B','We hit people with foam swords','Miranda Martin','mart8115@kettering.edu','mon,fri','20:00:00','Soccer Field',_binary '/uploads/images/4.jpg'),(5,'Federation of Coders',6,'A','We code for LULZ','Miranda Martin','mart8115@kettering.edu','mon,wed,fri','18:00:00','3400-AB',_binary '/uploads/images/5.jpg'),(6,'Federation of Coders',6,'B','We code for LULZ','Miranda Martin','mart8115@kettering.edu','mon,wed,fri','18:00:00','3400-AB',_binary '/uploads/images/6.jpg');
/*!40000 ALTER TABLE `Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Meeting`
--

DROP TABLE IF EXISTS `Meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `club_id` int(11) NOT NULL,
  `event_date` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `meeting_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Meeting`
--

LOCK TABLES `Meeting` WRITE;
/*!40000 ALTER TABLE `Meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `Meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Officers`
--

DROP TABLE IF EXISTS `Officers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Officers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `club_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Officers`
--

LOCK TABLES `Officers` WRITE;
/*!40000 ALTER TABLE `Officers` DISABLE KEYS */;
INSERT INTO `Officers` VALUES (1,2,'president',1),(2,2,'president',2),(3,3,'president',3),(4,3,'president',4),(5,6,'president',5),(6,6,'president',6);
/*!40000 ALTER TABLE `Officers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `student_id` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Admin','123456789','admin@kettering.edu','18009554464','c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec'),(2,'Aquaneers President','123456789','pres1@kettering.edu','18009554464','de6af338d04214c219ae413aadf7d21faa2262848c6e1166572cde7615ba5f2bb54948c108060d171523da66f046489fe8afc64f5019a005316ac55e91180626'),(3,'Larpers President','123456789','pres2@kettering.edu','18009554464','4a2a5580e93fb8b23a05fd6943a0ba15a35ad3788203dbeee063d64878dc28c99f8a9de3edf9b7c0bc6d77c43b61ad13f1adeee67529e447f65e3d2536144d50'),(4,'Aquaneers Member','123456789','mem1@kettering.edu','18009554464','e74aba1a7c03413c57b0f90a9cb333ff6df1528c12bc7ccba52b615d356fca0e9229f228f7ea5f8fab2ff7f0d0d90708410a0cbca4d19c0df8274420491acb20'),(5,'Larpers Member','123456789','mem2@kettering.edu','18009554464','43c48c8047f3e387a19e57961a515d38b4878572ba617334f80cd7d0462e8ab8a7af83e2f1062f4ac1f4656fefb16e6064971868ff39e147cc553bbeb597bfeb'),(6,'Coders President','123456789','pres3@kettering.edu','18009554464','0714c05c5d81eb244e3d5f2ba3a678a5d28fafac8f5f120875d6438c2234130b552364b20fc01c5325cbb1a22f6278b69bc0a620e80da7175461a3eab50532d8');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-01 17:58:02
