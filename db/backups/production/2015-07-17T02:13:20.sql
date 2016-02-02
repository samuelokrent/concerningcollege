-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rails
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `backups`
--

DROP TABLE IF EXISTS `backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
INSERT INTO `backups` VALUES (9,'2015-06-30 15:06:10','2015-06-30 15:06:10'),(10,'2015-06-30 15:06:47','2015-06-30 15:06:47'),(11,'2015-07-17 01:48:14','2015-07-17 01:48:14'),(12,'2015-07-17 01:49:43','2015-07-17 01:49:43'),(13,'2015-07-17 02:08:02','2015-07-17 02:08:02'),(14,'2015-07-17 02:08:26','2015-07-17 02:08:26'),(15,'2015-07-17 02:13:06','2015-07-17 02:13:06'),(16,'2015-07-17 02:13:20','2015-07-17 02:13:20');
/*!40000 ALTER TABLE `backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blurbs`
--

DROP TABLE IF EXISTS `blurbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blurbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blurbs_on_page` (`page`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blurbs`
--

LOCK TABLES `blurbs` WRITE;
/*!40000 ALTER TABLE `blurbs` DISABLE KEYS */;
INSERT INTO `blurbs` VALUES (1,'About','Log in to update this blurb.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,'2015-06-16 21:20:53'),(2,'Contact','For questions or comments about my articles, or to learn more about how to get the most out of the college admissions process and financial aid opportunities, please email me at concerningcollege@gmail.com. I will get  back to you promptly.',NULL,'2015-07-17 02:07:38');
/*!40000 ALTER TABLE `blurbs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hits`
--

DROP TABLE IF EXISTS `hits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hits` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hits`
--

LOCK TABLES `hits` WRITE;
/*!40000 ALTER TABLE `hits` DISABLE KEYS */;
INSERT INTO `hits` VALUES (1,262,NULL,'2015-07-17 01:49:02');
/*!40000 ALTER TABLE `hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `digest` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwords`
--

LOCK TABLES `passwords` WRITE;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
INSERT INTO `passwords` VALUES (1,'vbSA3mVapux1ygWMhJxPrzwPdbE=',NULL,'2015-06-16 20:37:59');
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_posts_on_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (20,'Welcome to ConcerningCollege.com!','                     The site for your college admissions and financing strategies. ','2015-07-17 01:48:14','2015-07-17 02:08:26','welcome-to-concerningcollegecom'),(21,'A College Tour\'s Unexpected Surprise','Published in the Edina Sun Current on November 14, 2014\r\nWritten by Concerning College founder Mark Lerner\r\n\r\nWhat began as a journey to picture the collegiate future of one child shifted to serious soul searching over that of another. During MEA weekend my wife and I took our daughter Clara, a junior at Edina High School, on a college tour of the Carolinas. What drew us down to Dixie was our son Miles, a sophomore at Furman University in Greenville, S.C. We planned to watch him play in a rugby match between Clara’s college visits.\r\n\r\nStarting out from Charlotte, we drove to Elon University in central North Carolina, between Greensboro and Durham. Set on a pretty campus in the small town of Elon, the college has much to offer its 5,600 students. Along with 60 majors to choose from, Elon’s undergraduates are strongly encouraged to take one of the college’s many programs for study abroad, which almost three-quarters of them do. Elon’s students come mainly from the Carolina-Virginia-Maryland region, even as the university’s reach is now broadening to attract applicants from the northeastern states and indeed nationwide.\r\n\r\nWhile Elon students are encouraged to think globally, those attending another college on our tour most definitely think locally – and in particular about how to secure good seats at football games. The students of Clemson University ooze school spirit. Clemson, whose hilly, well-landscaped campus serves 16,000 undergraduates, is a public institution near Georgia in the northwest corner of South Carolina. On the weekend we visited, at least 100 students, many clad in orange with tiger paw logos, had pitched tents on the sidewalk outside Death Valley, the stadium whose box office would open Monday morning to sell tickets for Saturday’s game against Syracuse. Helpfulness and good manners stood out in the conversations we had with several students. As Northerners, we were delighted to experience Southern hospitality up close.\r\n\r\nIn between our travels to Elon and Clemson, we visited Miles at Furman, whose campus is mentioned frequently among the country’s most beautiful. On arrival, Miles greeted us with firm hugs and huge smiles, then took us to our surprise. He introduced us to a woman he’d been seeing recently. Her name was Annette Woods. But no, Annette was not our boy’s romantic interest. Quite the opposite. Of late, she had been counseling Miles to make war, not love. Ms. Woods is Furman’s recruiting operations officer for the U.S. Army.\r\n\r\nShe told my wife and me that Miles was at the top of her list to earn a scholarship through the Army’s Reserve Officers’ Training Corps (ROTC) program. Even though today’s military was downsizing, Miles had the academic and athletic credentials the Army wanted. For the upcoming semester, he would have to take a class in military science alongside his four regular courses. He would also have to complete a 28-day Leader’s Training Course this summer at Fort Knox, Ky. Those requirements satisfied, Ms. Woods was confident that Miles would get Uncle Sam’s most generous financial award for the rest of college: tuition, room and board, books, fees, transportation, everything, all covered 100 percent, with a monthly stipend besides.\r\n\r\nWow. Miles gets financial aid now based on both scholastic achievement and rugby; our family, however, would save tens of thousands of dollars were he to go ROTC. But what would we, no, what would Miles, have to give in exchange? Upon graduation from Furman, our son would become a lieutenant with an obligation of eight years’ service to the Army. While pursuing a civilian career, he would join his unit one weekend a month, as well as for one two-week period each year. If needed, the Army could change his status from reserve to active, especially in time of war. That’s the scary part.\r\n\r\nMy wife and I left the meeting choked up. It looks like Miles, who spoke of all the selfless reasons for wanting to serve, may well be on his way to a military future. While his choosing that route will leave our family richer in more ways than one, it may be years before we know whether the price paid was too high.','2015-07-17 02:13:06','2015-07-17 02:13:20','a-college-tours-unexpected-surprise');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150608002638'),('20150608133151'),('20150610204923'),('20150611154255'),('20150611155722'),('20150611203653'),('20150622210651'),('20150629153829');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-17  2:13:20
