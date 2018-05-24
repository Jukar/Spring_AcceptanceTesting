start transaction;

create database `AcmeEssay`;

use `AcmeEssay`;

create user 'acme-user'@'%'identified by password
	'*4F10007AADA9EE3DBB2CC36575DFC6F4FDE27577';
create user 'acme-manager'@'%'identified by password
	'*FDB8CD304EB2317D10C95D797A4BD7492560F55F';

grant select, insert, update, delete
	on `AcmeEssay`.* to 'acme-user'@'%';
grant select, insert, update, delete, create, drop, references, index, alter,
		create temporary tables, lock tables, create view, create routine,
		alter routine, execute, trigger, show view
	on `AcmeEssay`.* to 'acme-manager'@'%';



-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: localhost    Database: AcmeEssay
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contactPhone` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cgls5lrufx91ufsyh467spwa3` (`userAccount_id`),
  CONSTRAINT `FK_cgls5lrufx91ufsyh467spwa3` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contactPhone` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_idt4b4u259p6vs4pyr9lax4eg` (`userAccount_id`),
  CONSTRAINT `FK_idt4b4u259p6vs4pyr9lax4eg` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (8,0,'1223123124312','admin1@acme.com','admin1','surname1','',1),(9,0,'56213756712','admin2@acme.com','admin2','surname2','http://www.acmeadmin2.com',2);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contactPhone` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `cvvCode` int(11) NOT NULL,
  `expirationMonth` int(11) NOT NULL,
  `expirationYear` int(11) NOT NULL,
  `holderName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g9r6idksespv276wsu4a9e6y9` (`userAccount_id`),
  CONSTRAINT `FK_g9r6idksespv276wsu4a9e6y9` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (15,0,'7852675211','author1@acme.com','author1','aSurname1','http://www.acmeAuthor1.com',5,'1988-11-10 00:00:00','Brand2',130,1,2016,'HolderName6','5698326993051908','UK'),(16,0,'90729186421','author2@acme.com','author2','aSurname2','http://www.acmeAuthor2.com',6,'1990-07-01 00:00:00','Brand2',130,3,2017,'HolderName7','5150775378678332','UK'),(17,0,'90229212456','author3@acme.com','author3','aSurname3','http://www.acmeAuthor3.com',7,'1992-07-02 00:00:00','Brand2',234,2,2016,'HolderName7','5368680124676069','Esp');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest`
--

DROP TABLE IF EXISTS `contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `holdingDate` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest`
--

LOCK TABLES `contest` WRITE;
/*!40000 ALTER TABLE `contest` DISABLE KEYS */;
INSERT INTO `contest` VALUES (11,0,'2015-08-10 11:30:00','description3','2015-08-12 11:30:00','contest3',''),(13,0,'2015-12-11 11:30:00','description1','2016-10-11 11:30:00','contest1',''),(14,0,'2015-10-10 11:30:00','description2','2013-12-10 11:30:00','contest2','result1');
/*!40000 ALTER TABLE `contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_organiser`
--

DROP TABLE IF EXISTS `contest_organiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_organiser` (
  `Contest_id` int(11) NOT NULL,
  `contestOrganisers_id` int(11) NOT NULL,
  KEY `FK_5ptck0lsljwfemnho7cjfim44` (`contestOrganisers_id`),
  KEY `FK_d7pt3w5g0kofwhuvse4x52k46` (`Contest_id`),
  CONSTRAINT `FK_d7pt3w5g0kofwhuvse4x52k46` FOREIGN KEY (`Contest_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `FK_5ptck0lsljwfemnho7cjfim44` FOREIGN KEY (`contestOrganisers_id`) REFERENCES `organiser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_organiser`
--

LOCK TABLES `contest_organiser` WRITE;
/*!40000 ALTER TABLE `contest_organiser` DISABLE KEYS */;
INSERT INTO `contest_organiser` VALUES (11,10),(13,12),(14,12);
/*!40000 ALTER TABLE `contest_organiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contactPhone` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `cvvCode` int(11) NOT NULL,
  `expirationMonth` int(11) NOT NULL,
  `expirationYear` int(11) NOT NULL,
  `holderName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pwmktpkay2yx7v00mrwmuscl8` (`userAccount_id`),
  CONSTRAINT `FK_pwmktpkay2yx7v00mrwmuscl8` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essay`
--

DROP TABLE IF EXISTS `essay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `essay` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `abstractEss` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `submissionDate` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `contest_id` int(11) NOT NULL,
  `publicSession_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_eum1wju1olefqahoaju6a2s14` (`title`,`contest_id`),
  KEY `FK_kbdp2rn8s20pimxcxqmv1q6d2` (`author_id`),
  KEY `FK_cwi07si3jg6j6390sk51dxrii` (`contest_id`),
  KEY `FK_p0c2ui65o4dw4o9abflamniof` (`publicSession_id`),
  CONSTRAINT `FK_p0c2ui65o4dw4o9abflamniof` FOREIGN KEY (`publicSession_id`) REFERENCES `publicsession` (`id`),
  CONSTRAINT `FK_cwi07si3jg6j6390sk51dxrii` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`),
  CONSTRAINT `FK_kbdp2rn8s20pimxcxqmv1q6d2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essay`
--

LOCK TABLES `essay` WRITE;
/*!40000 ALTER TABLE `essay` DISABLE KEYS */;
INSERT INTO `essay` VALUES (19,0,'abstractEss1','contents1','\0','2013-07-10 16:30:00','essay1',15,14,NULL),(20,0,'abstractEss2','contents2','','2013-08-10 19:30:00','essay2',16,14,18),(21,0,'abstractEss3','contents3','\0','2013-01-13 14:12:00','essay3',17,14,18),(22,0,'abstractEss4','contents4','\0','2013-10-09 19:30:00','essay4',15,13,NULL);
/*!40000 ALTER TABLE `essay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('DomainEntity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organiser`
--

DROP TABLE IF EXISTS `organiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organiser` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `contactPhone` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `cvvCode` int(11) NOT NULL,
  `expirationMonth` int(11) NOT NULL,
  `expirationYear` int(11) NOT NULL,
  `holderName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_knopyrfq1m6r5bdnoue36ko0t` (`userAccount_id`),
  CONSTRAINT `FK_knopyrfq1m6r5bdnoue36ko0t` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiser`
--

LOCK TABLES `organiser` WRITE;
/*!40000 ALTER TABLE `organiser` DISABLE KEYS */;
INSERT INTO `organiser` VALUES (10,0,'32568351654','organiser1@acme.com','organiser1','oSurname1','',3,'1990-11-10 00:00:00','Brand1',154,1,2018,'HolderName4','5698329020840038','Esp'),(12,0,'63547623223','organiser2@acme.com','organiser2','oSurname2','http://www.acmeOrganiser2.com',4,'1980-05-09 00:00:00','Brand1',135,1,2017,'HolderName5','5698321377012188','Esp');
/*!40000 ALTER TABLE `organiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organiser_contest`
--

DROP TABLE IF EXISTS `organiser_contest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organiser_contest` (
  `Organiser_id` int(11) NOT NULL,
  `contests_id` int(11) NOT NULL,
  KEY `FK_41qbgcuu4j29mee59w63wnp5i` (`contests_id`),
  KEY `FK_l28tsv35ne7jwe3vun5hd7e33` (`Organiser_id`),
  CONSTRAINT `FK_l28tsv35ne7jwe3vun5hd7e33` FOREIGN KEY (`Organiser_id`) REFERENCES `organiser` (`id`),
  CONSTRAINT `FK_41qbgcuu4j29mee59w63wnp5i` FOREIGN KEY (`contests_id`) REFERENCES `contest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiser_contest`
--

LOCK TABLES `organiser_contest` WRITE;
/*!40000 ALTER TABLE `organiser_contest` DISABLE KEYS */;
INSERT INTO `organiser_contest` VALUES (10,11),(12,13),(12,14);
/*!40000 ALTER TABLE `organiser_contest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicsession`
--

DROP TABLE IF EXISTS `publicsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicsession` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `endMoment` datetime DEFAULT NULL,
  `startMoment` datetime DEFAULT NULL,
  `contest_id` int(11) NOT NULL,
  `organiser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bbdio7vgre5ri4ynp9sxqq731` (`contest_id`),
  KEY `FK_af789p53529rmj60grjspvk34` (`organiser_id`),
  CONSTRAINT `FK_af789p53529rmj60grjspvk34` FOREIGN KEY (`organiser_id`) REFERENCES `organiser` (`id`),
  CONSTRAINT `FK_bbdio7vgre5ri4ynp9sxqq731` FOREIGN KEY (`contest_id`) REFERENCES `contest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicsession`
--

LOCK TABLES `publicsession` WRITE;
/*!40000 ALTER TABLE `publicsession` DISABLE KEYS */;
INSERT INTO `publicsession` VALUES (18,0,20,'2015-10-05 23:30:00','2015-10-05 20:00:00',14,12);
/*!40000 ALTER TABLE `publicsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_csivo9yqa08nrbkog71ycilh5` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` VALUES (1,0,'e00cf25ad42683b3df678c61f42c6bda','admin1'),(2,0,'c84258e9c39059a89ab77d846ddab909','admin2'),(3,0,'66f7546a22eb4c13c4a78d58b0a00194','organiser1'),(4,0,'22ef0e5c643538df4e980eb206a10dd3','organiser2'),(5,0,'b312ba4ffd5245fa2a1ab819ec0d0347','author1'),(6,0,'9bd97baef2b853ec00cc3cffd269f679','author2'),(7,0,'c59a474d5ade296a15ebc40d6c4e8e11','author3');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount_authorities`
--

DROP TABLE IF EXISTS `useraccount_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount_authorities` (
  `UserAccount_id` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_b63ua47r0u1m7ccc9lte2ui4r` (`UserAccount_id`),
  CONSTRAINT `FK_b63ua47r0u1m7ccc9lte2ui4r` FOREIGN KEY (`UserAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount_authorities`
--

LOCK TABLES `useraccount_authorities` WRITE;
/*!40000 ALTER TABLE `useraccount_authorities` DISABLE KEYS */;
INSERT INTO `useraccount_authorities` VALUES (1,'ADMIN'),(2,'ADMIN'),(3,'ORGANISER'),(4,'ORGANISER'),(5,'AUTHOR'),(6,'AUTHOR'),(7,'AUTHOR');
/*!40000 ALTER TABLE `useraccount_authorities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-07 10:59:56
commit;