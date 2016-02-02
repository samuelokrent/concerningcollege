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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backups`
--

LOCK TABLES `backups` WRITE;
/*!40000 ALTER TABLE `backups` DISABLE KEYS */;
INSERT INTO `backups` VALUES (9,'2015-06-30 15:06:10','2015-06-30 15:06:10'),(10,'2015-06-30 15:06:47','2015-06-30 15:06:47'),(11,'2015-07-17 01:48:14','2015-07-17 01:48:14'),(12,'2015-07-17 01:49:43','2015-07-17 01:49:43'),(13,'2015-07-17 02:08:02','2015-07-17 02:08:02'),(14,'2015-07-17 02:08:26','2015-07-17 02:08:26'),(15,'2015-07-17 02:13:06','2015-07-17 02:13:06'),(16,'2015-07-17 02:13:20','2015-07-17 02:13:20'),(17,'2015-07-17 02:16:30','2015-07-17 02:16:30'),(18,'2015-07-17 02:18:12','2015-07-17 02:18:12'),(19,'2015-07-17 02:19:34','2015-07-17 02:19:34'),(20,'2015-07-17 02:20:45','2015-07-17 02:20:45');
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
INSERT INTO `hits` VALUES (1,265,NULL,'2015-07-17 02:19:35');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (20,'Welcome to ConcerningCollege.com!','                     The site for your college admissions and financing strategies. ','2015-07-17 01:48:14','2015-07-17 02:08:26','welcome-to-concerningcollegecom'),(21,'A College Tour\'s Unexpected Surprise','Published in the Edina Sun Current on November 14, 2014\r\nWritten by Concerning College founder Mark Lerner\r\n\r\nWhat began as a journey to picture the collegiate future of one child shifted to serious soul searching over that of another. During MEA weekend my wife and I took our daughter Clara, a junior at Edina High School, on a college tour of the Carolinas. What drew us down to Dixie was our son Miles, a sophomore at Furman University in Greenville, S.C. We planned to watch him play in a rugby match between Clara’s college visits.\r\n\r\nStarting out from Charlotte, we drove to Elon University in central North Carolina, between Greensboro and Durham. Set on a pretty campus in the small town of Elon, the college has much to offer its 5,600 students. Along with 60 majors to choose from, Elon’s undergraduates are strongly encouraged to take one of the college’s many programs for study abroad, which almost three-quarters of them do. Elon’s students come mainly from the Carolina-Virginia-Maryland region, even as the university’s reach is now broadening to attract applicants from the northeastern states and indeed nationwide.\r\n\r\nWhile Elon students are encouraged to think globally, those attending another college on our tour most definitely think locally – and in particular about how to secure good seats at football games. The students of Clemson University ooze school spirit. Clemson, whose hilly, well-landscaped campus serves 16,000 undergraduates, is a public institution near Georgia in the northwest corner of South Carolina. On the weekend we visited, at least 100 students, many clad in orange with tiger paw logos, had pitched tents on the sidewalk outside Death Valley, the stadium whose box office would open Monday morning to sell tickets for Saturday’s game against Syracuse. Helpfulness and good manners stood out in the conversations we had with several students. As Northerners, we were delighted to experience Southern hospitality up close.\r\n\r\nIn between our travels to Elon and Clemson, we visited Miles at Furman, whose campus is mentioned frequently among the country’s most beautiful. On arrival, Miles greeted us with firm hugs and huge smiles, then took us to our surprise. He introduced us to a woman he’d been seeing recently. Her name was Annette Woods. But no, Annette was not our boy’s romantic interest. Quite the opposite. Of late, she had been counseling Miles to make war, not love. Ms. Woods is Furman’s recruiting operations officer for the U.S. Army.\r\n\r\nShe told my wife and me that Miles was at the top of her list to earn a scholarship through the Army’s Reserve Officers’ Training Corps (ROTC) program. Even though today’s military was downsizing, Miles had the academic and athletic credentials the Army wanted. For the upcoming semester, he would have to take a class in military science alongside his four regular courses. He would also have to complete a 28-day Leader’s Training Course this summer at Fort Knox, Ky. Those requirements satisfied, Ms. Woods was confident that Miles would get Uncle Sam’s most generous financial award for the rest of college: tuition, room and board, books, fees, transportation, everything, all covered 100 percent, with a monthly stipend besides.\r\n\r\nWow. Miles gets financial aid now based on both scholastic achievement and rugby; our family, however, would save tens of thousands of dollars were he to go ROTC. But what would we, no, what would Miles, have to give in exchange? Upon graduation from Furman, our son would become a lieutenant with an obligation of eight years’ service to the Army. While pursuing a civilian career, he would join his unit one weekend a month, as well as for one two-week period each year. If needed, the Army could change his status from reserve to active, especially in time of war. That’s the scary part.\r\n\r\nMy wife and I left the meeting choked up. It looks like Miles, who spoke of all the selfless reasons for wanting to serve, may well be on his way to a military future. While his choosing that route will leave our family richer in more ways than one, it may be years before we know whether the price paid was too high.','2015-07-17 02:13:06','2015-07-17 02:13:20','a-college-tours-unexpected-surprise'),(22,'College Costs Continue to Rise','Published in the Edina Sun Current on December 12, 2014\r\nWritten by Concerning College founder Mark Lerner\r\n\r\nHow long can the cost of higher education continue to rise? Carleton College will ask families of students who enroll there next fall to pay a quarter of a million dollars over four years. This includes room and board, and books and fees, as well as tuition. An undergraduate degree from the Northfield school will cost more than my 22-year-old daughter paid recently for her tidy three-bedroom house.\r\n\r\nBut costs are just one side of the college coin. On the other side is financial aid, which today flows as never before. About 90 percent of the students enrolled at Gustavus Adolphus College receive merit-based aid. This can reach $22,500 per year. That’s the value of the President’s Scholarship, which about 300 students now receive, according to Doug Minter, dean of financial aid. The award cuts the cost of attendance at the St. Peter school almost in half. To qualify, students must have scored 30 or more on the ACT, and achieved a grade point average of close to 4.0. Another Gustavus award, the Dean’s Scholarship, has a value of between $12,000 and $20,000. It considers students’ involvement in church or community activities and high school leadership, as well as academic performance. Both scholarships are renewed annually if students maintain a GPA of at least 3.0.\r\n\r\nSimilarly, the Buntrock Scholarship offers St. Olaf students $24,000 per year. A high school GPA of almost 4.0 and an ACT score of around 33 are required for the award, according to Michael Kyle, vice president of Enrollment and College Relations. The Northfield school’s cost of attendance is near $53,000, but several merit-based scholarships in addition to the Buntrock, including those for proficiency in music, dance, theater and the arts, help to bring families’ net cost down. After including awards, the cost to enroll at St. Olaf can fall to about the level of what the University of Minnesota charges.\r\n\r\nPublic institutions offer merit-based financial aid as well. The University of Wisconsin-Stout annually provides a total of $700,000 in foundation scholarships. Some of these are worth as much as $8,500, which nearly covers the Menomonie school’s $9,000 tuition. Through reciprocity with Wisconsin, residents of Minnesota qualify for in-state tuition at Stout and all member institutions of the Wisconsin Intercollegiate Athletic Conference. The eight colleges have similar costs and aid packages.\r\n\r\nThe nine private colleges of the Minnesota Intercollegiate Athletic Conference have varying approaches to financial aid. Carleton bases its generous awards largely on a family’s economic need. “We don’t want any financial barriers to get in the way of a qualified student enrolling at Carleton,” said Rodney Oto, director of Student Financial Services. Of Carleton freshman, 55 percent receive some need-based financial aid.\r\n\r\nAll of the MIAC and WIAC schools belong to the Division III class of the National Collegiate Athletic Conference. None of them, officially, can provide financial aid based on athletic achievements in high school. All however, have wide discretion in defining what leadership abilities or other personal qualities are and what may be considered in offering financial aid. “The band director might need a bassoon player,” said Carleton’s Oto, pointing out that those who run extracurricular activities can help to influence the makeup of an incoming class. Indeed, as a recent article in the Wall Street Journal noted, even Harvard “is leveraging financial aid and donor money to build a dominating football team.” It paid off for the Crimson this season, as Harvard posted a perfect 10-0 record and the championship of the Ivy League, a league where athletic scholarships are not allowed.','2015-07-17 02:16:30','2015-07-17 02:16:30','college-costs-continue-to-rise'),(23,'Mailers Aplenty','Published in the Edina Sun Current on January 17, 2015 \r\nWritten by Concerning College founder Mark Lerner \r\n\r\nWill colleges ever stop sending brochures to your house? The answer is no. At least not until your high school student graduates. Direct mail, despite all that ends up in the recycling, remains one of the most economical ways for colleges to attract prospective students. Promotional material sent via email has made contacts with students even more of a bargain for the admissions offices that generate and send them.\r\n\r\nIowa State University and the University of Nebraska-Lincoln were among the first colleges to contact the Edina High junior who lives in our house. Iowa State’s Phil Caffrey, director of admissions operations and policy, pointed out that the Ames school recruits students for three classes all at the same time. Mailing or emailing promotional pitches to seniors, juniors and sophomores marks the “beginning of the student search cycle,” he said. The marketing drive to turn high school students into “prospects” never stops.\r\n\r\nColleges typically purchase lists containing thousands of student names and addresses. Among the list providers are the College Board, which administers the SAT, the Educational Opportunity Service (part of ACT) and the National Research Center for College and University Admissions, which boasts on its website of operating “The Nation’s Largest Student Database.”\r\n\r\nLists include the names of “students who essentially raise their hand” offering to be placed on them, said Eric Berg, vice-president for enrollment management at Duluth’s College of St. Scholastica, a heavy user of direct-mail marketing. For each name, and depending on the data included, colleges will pay between 20 cents and one dollar, Berg estimated. Email addresses are particularly valuable both because they cost nothing for printing and postage, and because students today tend to respond better to electronic solicitations.\r\n\r\nStudents who attend college fairs, or who check boxes on survey or test questionnaires allowing for their names to be shared, make their personal information widely available.\r\n\r\nList providers collect the information, enter it into databases and segment it into marketable data, which may include ethnic, financial and academic information. Students with a 3.5 grade-point average can expect to receive more mail than those with a 2.0, and high SAT or ACT scores will lead to more mail than low scores.\r\n\r\nPublic institutions rely heavily on revenue from students who come from outside the state, since tuition for out-of-state students is often double what local residents pay. About 25 percent of the University of Nebraska-Lincoln’s freshman class comes from outside the Cornhusker state. Their admissions office targets students mainly from three geographic areas: the Twin Cities, Chicago and Denver.\r\n\r\nYohlunda Mosley, the university’s senior associate director of admissions, said that “we are competing for students with our Big Ten peers,” and with regional rivals such as Kansas and Kansas State as well. Mosley said that her department employs a “steady calendar of things that go out,” including direct mail, email and social media promotions. Measuring the results of college marketing campaigns is imprecise at best. And while Mosley suggested that electronic contacts seem most effective with students, “we know that parents appreciate our mailings,” she said.\r\n\r\nCollege admissions departments want to attract students they believe most likely to attend and succeed at their school and target their mailings accordingly. As St. Scholastica’s Berg put it, “schools are casting their lines out there for students” and the “buying parameters” of lists they use reflect the type of individual they hope to enroll.\r\n\r\nSeniors accepted for admission can expect their volume of mail to climb dramatically, as colleges ramp up efforts to close the deal, trying hard to get them to show up on campus in the fall.','2015-07-17 02:18:12','2015-07-17 02:18:12','mailers-aplenty'),(24,'Financial Aid is a Multi-Step Process','Published in the Edina Sun Current on March 27, 2015 \r\nWritten by Concerning College founder Mark Lerner\r\n\r\nCollege acceptance letters will start arriving in the homes of high school seniors right about now. Along with the good news, many of the letters will also tell students and families what their financial aid awards will be, if any. Savvy families will consider such letters and the aid they offer the beginning, rather than the end, of the process to determine how much they will actually pay for college.\r\n\r\nThe first step families should take to try to increase the size of a college’s financial aid offer, or to reduce the overall amount they will pay, is to write an appeal letter. The appeal, directed to the financial aid office, should note any circumstances that have changed in a family’s finances since the student applied to the college.\r\n\r\nThis can include a job loss, or high medical bills, a divorce, or other unexpected events that may affect a family’s ability to cover the costs of college. The appeal should also mention whether the family already has tuition expenses for another child or two.\r\n\r\nFlattery could be effective as well. An appeal that states how strongly the student really wants to attend the college – if only the costs were reduced – could move financial aid administrators to sweeten their offer.\r\n\r\n“The odds of receiving additional aid are very high by simply writing a positive appeal letter,” said Michael Niedenfuehr of College Funding Options, a Minneapolis-based company that advises families on college decisions. “Bottom line, it’s okay to appeal.”\r\n\r\nNiedenfuehr pointed out that colleges differ in how they calculate the Expected Family Contribution, or EFC. Private schools, in particular, vary widely in their assessments of how much a family can afford to pay out of pocket, as well as in the size of grants and loans to offer.\r\n\r\nBrenda Murtha, director of financial aid at Augustana College in Sioux Falls, S.D., welcomes the opportunity to work with families to make her school more affordable.\r\n\r\nIn sending out acceptance letters and aid offers, “We go with our best award initially,” she said. But if “the student really wants to be here, we would not want the family to make a decision over a few thousand dollars.” Augustana’s financial aid office would certainly weigh a family’s changed circumstances in considering a revised award.\r\n\r\nNeither can it hurt to make college administrators aware of what other colleges have promised.\r\n\r\n“While we typically don’t match other schools’ offers, we do talk to families about net pricing,” said Stuart Perry, executive director of financial aid at The College of Saint Benedict and Saint John’s University in Collegeville. Perry would want to look carefully at another college’s award letter to make sure, for example, that offers of student loans were not mistaken for grants.\r\n\r\nPerry’s office has a “special circumstances form” that families can use in making an appeal to Saint John’s. While family financial hardship could result in additional need-based aid, an improved test score or special academic accomplishment since the application process began could generate more merit-based aid.\r\n\r\nNiedenfuehr said that a family’s appeal letter “should repeat the student’s special attributes, what the student would contribute by his or her presence on campus.”\r\n\r\nMake the competition among schools for well-qualified students work to your financial advantage. Colleges don’t want to lose a four-year paying customer over a few thousand dollars up front.','2015-07-17 02:19:34','2015-07-17 02:19:34','financial-aid-is-a-multi-step-process'),(25,'Academics a Driver for Athletic Scholarships','Published in the Edina Sun Current on March 27, 2015 \r\nWritten by Concerning College founder Mark Lerner\r\n\r\nHit the books hard and you’ll increase your odds of landing an athletic scholarship. How so? The vast majority of athletic programs sponsored by the National Collegiate Athletic Association are considered “equivalency” sports. This allows coaches to offer partial scholarships based on a student’s athletic merit, which may be combined with academic-based or need-based dollars from the school’s admissions or financial aid office.\r\n\r\nNCAA Division I and Division II colleges may provide athletic-based financial aid in 17 men’s sports, ranging from baseball to wrestling, and in 21 women’s sports, ranging from basketball to water polo. The NCAA sets the maximum number of athletic scholarships allowed per sport in each division. Baseball coaches, for example, have the equivalent of 11.7 scholarships available in Division 1 and 9 in Division 2. Since college rosters have more than 20 players, coaches must split up athletic-based scholarships, offering “quarters” or “halves,” for example, across the ball club.\r\n\r\nThe NCAA’s few “head-count” sports, by contrast, typically do offer “full rides” for athletes, but these are the most difficult scholarships to come by. Full rides include tuition, room and board, books and fees. For women, only basketball, gymnastics, tennis, and volleyball are head-count sports at the Division 1 level; for men, just basketball and the FBS-level of Division 1 football (the most competitive) allow athletic-based financial aid to cover all college expenses.\r\n\r\nThe annual undergraduate cost to attend the University of Denver, a hockey power, is $58,000. Overcoming the hefty price tag for families, said Ryan Peck, associate vice chancellor of external affairs at DU, is the college’s greatest challenge. “Good students are very important to our hockey team because we can offer them academic financial aid that won’t go against the NCAA limits for Division 1 hockey,” said Peck.\r\n\r\nAt Augustana College in Sioux Falls, S.D., head football coach Jerry Olszewski divides 28 scholarships among his team, which has more than 100 players on the roster. He gives no full rides and believes that very few coaches at the Division II level do. A player he recruits out of high school with a 3.5 GPA or a 25 on the ACT will qualify for both athletic and academic scholarships. “Do the best you can academically in high school,” Olszewski advises athletes, “so you can have the greatest opportunity for college aid.”\r\n\r\nPrivate schools such as Augustana typically offer more academic aid than public institutions, knowing they need to meet or beat the lower base price of the public schools. Erik Lofdahl, founder and owner of Midwest Collegiate Scouting in Green Bay, Wis., works with the families of athletes seeking scholarships. He points out that academic financial aid does not count against the athletic budget for scholarships. That’s why coaches hope to find “stackable athletes,” those for whom colleges can stack academic financial aid on top of athletic aid.\r\n\r\n“Going from a 24 ACT score to a 26,” Lofdahl said, “can mean the difference between an athlete’s family paying 75 percent of college costs to paying next to nothing.”','2015-07-17 02:20:45','2015-07-17 02:20:45','academics-a-driver-for-athletic-scholarships');
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

-- Dump completed on 2015-07-17  2:20:45
