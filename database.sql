CREATE DATABASE  IF NOT EXISTS `paulazfilm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `paulazfilm`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: paulazfilm
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
  `actorID` int(11) NOT NULL AUTO_INCREMENT,
  `aName` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`actorID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Leonardo DiCaprio'),(2,'Joseph Gordon-Levitt'),(3,'Ellen Page'),(4,'Tom Hardy'),(5,'Ken Watanabe'),(6,'Keanu Reeves'),(7,'Laurence Fishburne'),(8,'Carrie-Anne Moss'),(9,'Tom Hanks'),(10,'Robin Wright'),(11,'Gary Sinise'),(12,'Cary Elwes'),(13,'Richard Lewis'),(14,'Roger Rees'),(15,'Mel Brooks'),(16,'John Candy'),(17,'Rick Moranis'),(18,'Mark Hamill'),(19,'Harrison Ford'),(20,'Carrie Fisher');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `addressID` int(11) NOT NULL AUTO_INCREMENT,
  `addressLine1` varchar(45) CHARACTER SET utf8 NOT NULL,
  `addressLine2` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `apartmentNum` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `cityId` int(11) NOT NULL,
  `postalCode` int(11) NOT NULL,
  PRIMARY KEY (`addressID`),
  KEY `cityId_idx` (`cityId`),
  CONSTRAINT `cityId` FOREIGN KEY (`cityId`) REFERENCES `city` (`cityID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Gatan 1',NULL,NULL,1,11111),(2,'Gatan 12',NULL,NULL,1,22222),(3,'Ship 2','Våning 4','34',2,34534),(4,'Vägen 8','c/o Anders Andersson','12',3,55555),(5,'Harvaregatan 13',NULL,NULL,3,58333),(6,'Vägen 74',NULL,'222',1,11122),(7,'Vägen 30',NULL,'33',1,11123),(8,'Gatan 4','Postbox 7745','45',1,11222),(9,'Bgatan 5',NULL,'356',1,11133),(10,'Ågatan 6',NULL,'44',1,22233),(11,'Ågatan 28',NULL,'102',1,22233),(12,'Cgatan 1',NULL,NULL,4,44444),(13,'Cgatan 6',NULL,NULL,4,44444);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `cityID` int(11) NOT NULL AUTO_INCREMENT,
  `cityName` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`cityID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Stockholm'),(2,'Skövde'),(3,'Linköping'),(4,'Norrköping');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(45) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL,
  `addressId` int(11) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Amy Pond','0707123123','amy@email.com',1),(2,'Rory Williams','0707234234','rory@email.com',1),(3,'Clara Oswald','0707345345','clara@email.com',2),(4,'River Song','0707456456','river@email.com',3),(5,'Rose Tyler','0707666666','rose@email.com',4),(6,'Alex Zhao','0707424241','alex@email.com',5),(7,'Paula Zhao','0707424242','paula@email.com',5),(8,'Creek Song','0707456457','creek@email.com',3),(9,'Marc Mattson','0707444442','marc@email.com',8),(10,'Bertil Bertilson','0707557557','bertilb@email.com',7);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `directorID` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`directorID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Christopher Nolan'),(2,'Lana Wachowski'),(3,'Lilly Wachowski'),(4,'Robert Zemeckis'),(5,'Mel Brooks'),(6,'George Lucas');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `eName` varchar(45) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 NOT NULL,
  `title` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `addressId` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Max Mattson','0707444444','max@email.com','Manager','8'),(2,'Anna Andersson','0708111111','annaa@email.com','Ekonomiansvarig','6'),(3,'Berit Bertilson','0707556556','berit@email.com','IT-ansvarig','7'),(4,'Carla Carlsson','0708222222','carla@email.com','Säljare','9'),(5,'David Davidsson','0708333333','david@email.com','Säljare','10'),(6,'Erik Erikson','0708444444','erike@email.com','Säljare','10'),(7,'Frida Fridén','0708555555','frida@email.com','Säljare','11'),(8,'Greta Gretson','0708666666','greta@email.com','Säljare','12'),(9,'Hanna Hammar','0708777777','hannah@email.com','Säljare','12'),(10,'Inge Ingeson','0708888888','inge@email.com','Säljare','13');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film` (
  `filmID` int(11) NOT NULL AUTO_INCREMENT,
  `filmName` varchar(60) CHARACTER SET utf8 NOT NULL,
  `info` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `length` varchar(45) CHARACTER SET utf8 NOT NULL,
  `publishingYear` year(4) NOT NULL,
  `pgLevel` int(11) DEFAULT NULL,
  `priceEach` double NOT NULL,
  PRIMARY KEY (`filmID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Inception','A thief, who steals corporate secrets through the use of dream-sharing technology, \nis given the inverse task of planting an idea into the mind of a CEO.','2h 28m',2010,15,50),(2,'Matrix','A computer hacker learns from mysterious rebels about the true nature\nof his reality and his role in the war against its controllers.','2h 16m',1999,15,50),(3,'Matrix Reloaded','Neo and the rebel leaders estimate that they have 72 hours until 250,000 \nprobes discover Zion and destroy it and its inhabitants. During this, \nNeo must decide how he can save Trinity from a dark fate in his dreams.','2h 18m',2003,11,50),(4,'Matrix Revolutions','The human city of Zion defends itself against the massive invasion of the machines \nas Neo fights to end the war at another front while also opposing the rogue Agent Smith.','2h 9m',2003,11,50),(5,'Forrest Gump','The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history \nunfold through the perspective of an Alabama man with an IQ of 75.','2h 22m',1994,11,50),(6,'Robin Hood: Men in Tights','A spoof of Robin Hood in general and Robin Hood: Prince of Thieves (1991) in particular.','1h 44m',1993,7,40),(7,'Spaceballs','Planet Spaceballs´ President Skroob sends Lord Dark Helmet to steal planet Druidia´s abundant \nsupply of air to replenish their own, and only Lone Starr can stop them.','1h 36m',1987,11,40),(8,'Star Wars: Episode IV','Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save \nthe galaxy from the Empire´s world-destroying battle-station while also attempting to rescue \nPrincess Leia from the evil Darth Vader.','2h 1m',1977,11,50),(9,'Star Wars: Episode V - The Empire Strikes Back','After the rebels are overpowered by the Empire on the ice planet Hoth, Luke Skywalker \nbegins Jedi training with Yoda. His friends accept shelter from a questionable ally as \nDarth Vader hunts them in a plan to capture Luke.','2h 4m',1980,15,50),(10,'Star Wars: Episode VI - Return of the Jedi','After a daring mission to rescue Han Solo from Jabba the Hutt, the rebels dispatch to \nEndor to destroy a more powerful Death Star. Meanwhile, Luke struggles to help Vader back \nfrom the dark side without falling into the Emperor´s trap.','2h 11m',1983,11,50);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_actor` (
  `filmId` int(11) NOT NULL,
  `actorId` int(11) NOT NULL,
  KEY `filmId3_idx` (`filmId`),
  KEY `actorId_idx` (`actorId`),
  CONSTRAINT `actorId` FOREIGN KEY (`actorId`) REFERENCES `actor` (`actorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `filmId3` FOREIGN KEY (`filmId`) REFERENCES `film` (`filmID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(3,6),(3,7),(3,8),(4,6),(4,7),(4,8),(5,9),(5,10),(5,11),(6,12),(6,13),(6,14),(6,15),(7,15),(7,16),(7,17),(8,18),(8,19),(8,20),(9,18),(9,19),(9,20),(10,18),(10,19),(10,20);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_copy`
--

DROP TABLE IF EXISTS `film_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_copy` (
  `filmCopyID` int(11) NOT NULL AUTO_INCREMENT,
  `filmId` int(11) NOT NULL,
  `rentedOut` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`filmCopyID`),
  KEY `filmId_idx` (`filmId`),
  CONSTRAINT `filmId` FOREIGN KEY (`filmId`) REFERENCES `film` (`filmID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_copy`
--

LOCK TABLES `film_copy` WRITE;
/*!40000 ALTER TABLE `film_copy` DISABLE KEYS */;
INSERT INTO `film_copy` VALUES (1,1,1),(2,1,1),(3,1,0),(4,2,0),(5,2,1),(6,3,0),(7,3,1),(8,4,0),(9,4,0),(10,5,0),(11,5,0),(12,5,0),(13,6,0),(14,6,0),(15,7,1),(16,7,0),(17,8,1),(18,8,0),(19,8,0),(20,9,0),(21,9,0),(22,9,0),(23,10,0),(24,10,0),(25,10,0);
/*!40000 ALTER TABLE `film_copy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_director`
--

DROP TABLE IF EXISTS `film_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_director` (
  `filmId` int(11) NOT NULL,
  `directorId` int(11) NOT NULL,
  KEY `filmId2_idx` (`filmId`),
  KEY `directorId_idx` (`directorId`),
  CONSTRAINT `directorId` FOREIGN KEY (`directorId`) REFERENCES `director` (`directorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `filmId2` FOREIGN KEY (`filmId`) REFERENCES `film` (`filmID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_director`
--

LOCK TABLES `film_director` WRITE;
/*!40000 ALTER TABLE `film_director` DISABLE KEYS */;
INSERT INTO `film_director` VALUES (1,1),(2,2),(2,3),(3,2),(3,3),(4,2),(4,3),(5,4),(6,5),(7,5),(8,6),(9,6),(10,6);
/*!40000 ALTER TABLE `film_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_genre`
--

DROP TABLE IF EXISTS `film_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_genre` (
  `filmId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL,
  KEY `filmId4_idx` (`filmId`),
  KEY `genreId_idx` (`genreId`),
  CONSTRAINT `filmId4` FOREIGN KEY (`filmId`) REFERENCES `film` (`filmID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `genreId` FOREIGN KEY (`genreId`) REFERENCES `genre` (`genreID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_genre`
--

LOCK TABLES `film_genre` WRITE;
/*!40000 ALTER TABLE `film_genre` DISABLE KEYS */;
INSERT INTO `film_genre` VALUES (1,1),(1,2),(1,3),(2,2),(2,1),(3,2),(3,1),(4,2),(4,1),(5,4),(5,5),(6,3),(6,6),(6,7),(7,3),(7,6),(7,1),(8,2),(8,3),(8,8),(9,2),(9,3),(9,8),(10,2),(10,3),(10,8);
/*!40000 ALTER TABLE `film_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `films`
--

DROP TABLE IF EXISTS `films`;
/*!50001 DROP VIEW IF EXISTS `films`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `films` AS SELECT 
 1 AS `filmID`,
 1 AS `numFilmCopys`,
 1 AS `filmName`,
 1 AS `info`,
 1 AS `length`,
 1 AS `publishingYear`,
 1 AS `pGLevel`,
 1 AS `priceEach`,
 1 AS `directors`,
 1 AS `actors`,
 1 AS `genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `films_rented_out`
--

DROP TABLE IF EXISTS `films_rented_out`;
/*!50001 DROP VIEW IF EXISTS `films_rented_out`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `films_rented_out` AS SELECT 
 1 AS `rentedOut`,
 1 AS `filmCopyID`,
 1 AS `customer`,
 1 AS `employee`,
 1 AS `rDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `genreID` int(11) NOT NULL AUTO_INCREMENT,
  `gName` varchar(45) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Sci-Fi'),(2,'Action'),(3,'Adventure'),(4,'Drama'),(5,'Romance'),(6,'Comedy'),(7,'Musical'),(8,'Fantasy');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `late_fee`
--

DROP TABLE IF EXISTS `late_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `late_fee` (
  `lFPayID` int(11) NOT NULL AUTO_INCREMENT,
  `rentalId` int(11) NOT NULL,
  `lFDate` date NOT NULL,
  PRIMARY KEY (`lFPayID`),
  KEY `rentalId_idx` (`rentalId`),
  CONSTRAINT `rentalId` FOREIGN KEY (`rentalId`) REFERENCES `rental` (`rentalID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `late_fee`
--

LOCK TABLES `late_fee` WRITE;
/*!40000 ALTER TABLE `late_fee` DISABLE KEYS */;
INSERT INTO `late_fee` VALUES (1,3,'2018-03-19'),(2,6,'2018-03-23');
/*!40000 ALTER TABLE `late_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `late_films`
--

DROP TABLE IF EXISTS `late_films`;
/*!50001 DROP VIEW IF EXISTS `late_films`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `late_films` AS SELECT 
 1 AS `filmCopyId`,
 1 AS `filmName`,
 1 AS `customer`,
 1 AS `customerID`,
 1 AS `email`,
 1 AS `rDate`,
 1 AS `returned`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `num_film_copys`
--

DROP TABLE IF EXISTS `num_film_copys`;
/*!50001 DROP VIEW IF EXISTS `num_film_copys`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `num_film_copys` AS SELECT 
 1 AS `filmId`,
 1 AS `numFilmCopys`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL AUTO_INCREMENT,
  `pDate` date NOT NULL,
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'2018-03-09'),(2,'2018-03-12'),(3,'2018-03-12'),(4,'2018-03-14'),(5,'2018-03-15'),(6,'2018-03-16'),(7,'2018-03-19'),(8,'2018-03-20'),(9,'2018-03-21');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental` (
  `rentalID` int(11) NOT NULL AUTO_INCREMENT,
  `filmCopyId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `rDate` date NOT NULL,
  `price` double NOT NULL,
  `returned` tinyint(4) NOT NULL,
  PRIMARY KEY (`rentalID`),
  KEY `filmCopyId_idx` (`filmCopyId`),
  KEY `customerId_idx` (`customerId`),
  KEY `employeeId_idx` (`employeeId`),
  CONSTRAINT `customerId` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `employeeId` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `filmCopyId` FOREIGN KEY (`filmCopyId`) REFERENCES `film_copy` (`filmCopyID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,1,7,5,'2018-03-09',50,1),(2,14,7,5,'2018-03-09',40,1),(3,4,4,10,'2018-03-12',50,1),(4,5,2,4,'2018-03-12',50,1),(5,15,3,6,'2018-03-14',40,1),(6,17,1,8,'2018-03-15',50,1),(7,20,6,7,'2018-03-16',50,1),(8,18,8,9,'2018-03-19',50,1),(9,21,8,9,'2018-03-20',50,1),(10,23,8,9,'2018-03-20',50,1),(11,2,5,5,'2018-03-21',50,1),(12,5,9,8,'2018-03-30',50,0),(13,7,9,8,'2018-03-30',50,0),(14,17,10,5,'2018-04-02',50,0),(15,15,10,4,'2018-04-06',40,0),(16,1,3,7,'2018-04-06',50,0),(17,2,7,6,'2018-05-20',50,0);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_payment`
--

DROP TABLE IF EXISTS `rental_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental_payment` (
  `paymentId` int(11) NOT NULL,
  `rentalId` int(11) NOT NULL,
  KEY `paymentId_idx` (`paymentId`),
  KEY `rentalId_idx` (`rentalId`),
  KEY `paymentId2_idx` (`paymentId`),
  KEY `rentalId2_idx` (`rentalId`),
  CONSTRAINT `paymentId2` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`paymentID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rentalId2` FOREIGN KEY (`rentalId`) REFERENCES `rental` (`rentalID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_payment`
--

LOCK TABLES `rental_payment` WRITE;
/*!40000 ALTER TABLE `rental_payment` DISABLE KEYS */;
INSERT INTO `rental_payment` VALUES (1,1),(1,2),(2,3),(3,4),(4,5),(5,6),(6,7),(7,8),(8,9),(8,10),(9,11);
/*!40000 ALTER TABLE `rental_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rentals_per_employee`
--

DROP TABLE IF EXISTS `rentals_per_employee`;
/*!50001 DROP VIEW IF EXISTS `rentals_per_employee`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rentals_per_employee` AS SELECT 
 1 AS `employeeId`,
 1 AS `eName`,
 1 AS `rentals`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `rentals_statistics`
--

DROP TABLE IF EXISTS `rentals_statistics`;
/*!50001 DROP VIEW IF EXISTS `rentals_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `rentals_statistics` AS SELECT 
 1 AS `rentals`,
 1 AS `filmName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'paulazfilm'
--
/*!50003 DROP PROCEDURE IF EXISTS `movies_in_genre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movies_in_genre`(IN theGenre VARCHAR(45))
BEGIN
SELECT
GROUP_CONCAT(DISTINCT film.filmName) AS filmName
FROM film
JOIN film_genre ON film.filmID = film_genre.filmId
JOIN genre ON film_genre.genreId = genre.genreID
WHERE gName = theGenre
GROUP BY film.filmName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rentals_each_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rentals_each_customer`(theCustomerID INT(11))
BEGIN
SELECT film_copy.rentedOut AS rentedOut, rental.rentalID AS rentalID, film_copy.filmCopyID AS filmCopyID,
	customer.cName AS customer, employee.employeeID AS employeeID, employee.eName AS employee,
    rental.rDate AS rDate
FROM (((film_copy JOIN rental ON ((film_copy.filmCopyID = rental.filmCopyId)))
	JOIN customer ON ((rental.customerId = customer.customerID)))
	JOIN employee ON ((rental.employeeId = employee.employeeID)))
WHERE rental.customerId = theCustomerID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `films`
--

/*!50001 DROP VIEW IF EXISTS `films`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `films` AS select `film`.`filmID` AS `filmID`,`num_film_copys`.`numFilmCopys` AS `numFilmCopys`,`film`.`filmName` AS `filmName`,`film`.`info` AS `info`,`film`.`length` AS `length`,`film`.`publishingYear` AS `publishingYear`,`film`.`pgLevel` AS `pGLevel`,`film`.`priceEach` AS `priceEach`,group_concat(distinct `director`.`dName` separator ',') AS `directors`,group_concat(distinct `actor`.`aName` separator ',') AS `actors`,group_concat(distinct `genre`.`gName` separator ',') AS `genre` from (((((((`film` join `film_director` on((`film`.`filmID` = `film_director`.`filmId`))) join `director` on((`film_director`.`directorId` = `director`.`directorID`))) join `film_actor` on((`film`.`filmID` = `film_actor`.`filmId`))) join `actor` on((`film_actor`.`actorId` = `actor`.`actorID`))) join `film_genre` on((`film`.`filmID` = `film_genre`.`filmId`))) join `genre` on((`film_genre`.`genreId` = `genre`.`genreID`))) join `num_film_copys` on((`num_film_copys`.`filmId` = `film`.`filmID`))) group by `film`.`filmID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `films_rented_out`
--

/*!50001 DROP VIEW IF EXISTS `films_rented_out`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `films_rented_out` AS select `film_copy`.`rentedOut` AS `rentedOut`,`film_copy`.`filmCopyID` AS `filmCopyID`,`customer`.`cName` AS `customer`,`employee`.`eName` AS `employee`,`rental`.`rDate` AS `rDate` from (((`film_copy` join `rental` on((`film_copy`.`filmCopyID` = `rental`.`filmCopyId`))) join `customer` on((`rental`.`customerId` = `customer`.`customerID`))) join `employee` on((`rental`.`employeeId` = `employee`.`employeeID`))) where ((`film_copy`.`rentedOut` = 1) and (`rental`.`returned` = 0)) order by `rental`.`rDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `late_films`
--

/*!50001 DROP VIEW IF EXISTS `late_films`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `late_films` AS select `rental`.`filmCopyId` AS `filmCopyId`,`film`.`filmName` AS `filmName`,`customer`.`cName` AS `customer`,`customer`.`customerID` AS `customerID`,`customer`.`email` AS `email`,`rental`.`rDate` AS `rDate`,`rental`.`returned` AS `returned` from (((`rental` join `film_copy` on((`film_copy`.`filmCopyID` = `rental`.`filmCopyId`))) join `film` on((`film`.`filmID` = `film_copy`.`filmId`))) join `customer` on((`customer`.`customerID` = `rental`.`customerId`))) where ((`film_copy`.`rentedOut` = 1) and ((curdate() - `rental`.`rDate`) > 4) and (`rental`.`returned` = 0)) order by `rental`.`rDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `num_film_copys`
--

/*!50001 DROP VIEW IF EXISTS `num_film_copys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `num_film_copys` AS select `film_copy`.`filmId` AS `filmId`,count(0) AS `numFilmCopys` from `film_copy` group by `film_copy`.`filmId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rentals_per_employee`
--

/*!50001 DROP VIEW IF EXISTS `rentals_per_employee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rentals_per_employee` AS select `rental`.`employeeId` AS `employeeId`,`employee`.`eName` AS `eName`,count(0) AS `rentals` from (`rental` join `employee` on((`rental`.`employeeId` = `employee`.`employeeID`))) group by `rental`.`employeeId` order by `rentals` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rentals_statistics`
--

/*!50001 DROP VIEW IF EXISTS `rentals_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rentals_statistics` AS select count(distinct `rental`.`filmCopyId`) AS `rentals`,`film`.`filmName` AS `filmName` from ((`rental` join `film_copy` on((`rental`.`filmCopyId` = `film_copy`.`filmCopyID`))) join `film` on((`film_copy`.`filmId` = `film`.`filmID`))) where (`rental`.`rDate` between (curdate() - interval 1 month) and curdate()) group by `film`.`filmName` order by count(distinct `rental`.`filmCopyId`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-25 11:21:52
