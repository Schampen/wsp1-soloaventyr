-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: greta
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `links_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `links_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,2,'Börja leka'),(2,1,3,'Fortsätt att jobba'),(3,2,4,'Ta fram grädde'),(4,2,6,'Gör ingenting'),(5,3,5,'Ta fram grädde'),(6,3,6,'Gör ingenting'),(7,4,9,'Fortsätt'),(8,5,7,'Ät grädden'),(9,5,8,'Ät inte grädden'),(10,6,9,'Fortsätt'),(11,8,9,'Fortsätt'),(12,9,10,'Plocka bär'),(13,9,11,'Lek istället'),(14,9,12,'Vänta på pappa'),(15,10,15,'Ät inte bären'),(16,10,16,'Ät bären'),(17,11,15,'Fortsätt'),(18,12,13,'Vänta'),(19,12,14,'Plocka bär'),(20,15,17,'Spring'),(21,15,18,'Göm er'),(22,16,20,'Spring'),(23,16,21,'Göm er'),(24,18,19,'Sov'),(25,18,25,'Sök efter mat'),(26,20,24,'Fortsätt'),(27,21,22,'Sov'),(28,21,23,'Försök hitta hem'),(29,22,30,'Smaka inte av huset'),(30,22,31,'Att smaka kan väl inte skada'),(31,23,24,'Fortsätt'),(32,24,28,'Göm er'),(33,24,29,'Spring'),(34,25,26,'Försök ta bär ändå'),(35,25,27,'Vänta'),(36,27,32,'Ta bären'),(37,27,33,'Lämna bären'),(38,28,33,'Döda inte fén'),(39,28,34,'Döda fén'),(40,29,30,'Ät inte av huset'),(41,29,31,'Ät av huset'),(42,31,37,'Leta efter något smalt'),(43,31,38,'Gör inget'),(44,33,35,'Ät av huset'),(45,33,36,'Ät inte av huset'),(46,35,47,'Gör inget'),(47,35,50,'Leta efter något att attackera häxan med'),(48,37,39,'Lura häxan'),(49,37,40,'Hjälp Hans'),(50,38,45,'Ta häxans stav'),(51,38,46,'Fly'),(52,42,44,'Försök döda häxan igen'),(53,42,43,'Försök fly'),(54,45,41,'Förstör staven'),(55,45,42,'Försök döda häxan'),(56,47,48,'Fly'),(57,47,49,'Försök döda häxan'),(58,50,51,'Spring iväg'),(59,50,52,'Putta häxan in i ugnen'),(60,52,53,'Spring'),(61,52,54,'Kommunicera med barnen'),(62,13,55,'Slut'),(63,14,55,'Slut'),(64,17,55,'Slut'),(65,19,55,'Slut'),(66,26,55,'Slut'),(67,32,55,'Slut'),(68,36,55,'Slut'),(69,46,55,'Slut'),(70,49,55,'Slut'),(71,39,55,'Slut'),(72,43,55,'Slut'),(73,53,55,'Slut'),(74,30,56,'Slut'),(75,34,56,'Slut'),(76,48,56,'Slut'),(77,40,57,'Slut'),(78,41,57,'Slut'),(79,44,57,'Slut'),(80,51,57,'Slut'),(81,54,57,'Slut'),(82,55,1,'Ja\r\n'),(83,56,1,'Ja'),(84,57,1,'Ja'),(85,55,1,'Nej'),(86,56,1,'Nej'),(87,57,1,'Nej'),(88,58,1,'Starta'),(89,7,55,'Slut');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Ni sitter hemma och jobbar. Ni har jobbat hela dagen och börjar bli uttråkade. Det skulle väl inte göra någon skada att slappa lite'),(2,'Ni bestämmer er att börja leka och dansa, ni har riktig kul tills mamma kommer hem. Mamma blir jätte arg på er och ni funderar om ni ska lugna ner henne'),(3,'Ni bestämmer att fortsätta jobba. Mamma kommer och är riktigt arg på allt och ni funderar om ni ska lugna ner henne'),(4,'Ni tar fram grädden som ni fick av grannen igår. Men i sin ilska så slår hon ut grädden'),(5,'Ni tar fram grädden och mamma blir lite gladare. Hon frågar om ni vill äta lite av grädden. Ni är riktigt hungriga men grädden luktar lite konstig'),(6,'Ni bestämmer att gör inget alls åt mammas ilska'),(7,'Ni äter grädden fast dens skumma lukt. Detta visar sig var ett misstag eftersom grädden var giftig. Ni blir sjuka och dör'),(8,'Ni äter inte grädden utan istället bestämmer er att slänga den'),(9,'Mamma skickar ut er i skogen för att hämta bär så att ni kan äta något ikväll. Ni frågar om ni atminstånde kan vänta tills pappa kommer hem men det går inte mamma med på'),(10,'Ni bestämmer er att  gå och plocka bären för ni är hungriga. Men medans ni letar och plockar bär så går ni vilse och ni hittar inte hem. Ni börjar också bli hungriga '),(11,'Ni börjar leka i skogen istället för att plocka bär och ni har så kul så ni går vilse. Ni tar er inte hem och ni är hungriga.'),(12,'Ni bestämmer er att vänta utanför huset på pappa för att skogen är läskig.'),(13,'Ni fortsätter att vänta men det blir mörk och pappa kommer inte hem. Efter ett tag så kommer en varg som äter upp er.'),(14,'Ni bestämmer er att plocka bär ändå. Men precis när ni börjar begå er ut i skogen så kommer pappa med massa mat och ni går hem och har en fäst och lever lyckligt tills att ni blir sjuka och dör'),(15,'Ni ser sandmannen gå runt i skogen och han verkar närma sig. Ni är hungriga men ni måste gör något snabbt'),(16,'Ni äter bären och ni har nu en full mage. Men ni ser den groteska sandmannen som går runt. Ni måste göra något snabbt '),(17,'Ni försöker springa från sandmannen men han hinner ikapp er och äter är för att ni inte har ätit något och därför inte har någon energi'),(18,'Ni bestämmer att gömma er och sandmannen går förbi utan att märka er. Ni är både trötta och hungriga'),(19,'Ni bestämmer er att sova men eftersom ni inte ätit på flera dar så dör ni av svält i sömnen'),(20,'Ni försöker springa ifrån sandmannen och lyckas knappt. Efter åt så är ni trött att ni somnar. När ni vaknar upp så hör ni något'),(21,'Ni gömmer er och sandmannen går förbi utan att märka er. Ni är trötta och vill hem'),(22,'Ni somnar och i era drömmar så träffar ni änglarna som tar och visar er vägen till ett hus i skogen. När ni vaknar så ligger ni utanför huset som verkar vara byggt av godis. Det ser riktigt gott ut'),(23,'Ni försöker hitta er väg hem men ni lyckas inte och ni ser något gå långt borta'),(24,'Det är morgonfén som är och går runt i skogen. Den vänder sig mot er och börjar gå närmare, den kommer närmre och närmre'),(25,'Ni är hungriga så ni går och söker efter mat. Ni hittar tillslut massa bär men dem är vaktad av barn som inte har något ansikte. Ni kanske skulle kunna ta några snabbt och sen sticka'),(26,'Ni försöker ta några bär men barnen märker er och fångar er. Dem trycker på era huvuden och börjar suga ut någon typ av gas. Ni dör'),(27,'Ni väntar på att barnen ska sticka men ni blir trötta och somnar. När ni vaknar så är barnen borta så ni kan nog ta bären nu'),(28,'Ni gömmer er från morgonfén och han går förbi. Ni märker att det ligger ett gammalt svärd på marken så ni skulle nog kunna döda fén'),(29,'Ni springer iväg och anländer vid ett hus av godis det ser rikitgt gott ut'),(30,'Ni bestämmer er att inte äta av huset och istället gå hem. Ni hittar vägen hem men på vägen så ramlar Hans ner för en ravin'),(31,'Ni äter av huset och medans ni äter  så kommer en häxa ut ur huset. Ni försöker fly men häxan fångar Hans och sätter han i en bur. Häxan matar Hans så han blir tjock, häxan har tänkt äta honom'),(32,'Ni går och tar några bär men ett av barnen är kvar och den tar och dödar er'),(33,'Ni bestämmer er istället för att gå ut i skogen och ni anländer till et hus av godis. Den ser riktigt smaskig ut'),(34,'Ni går till attack på fén. Ni lyckas att hugga av den huvudet men i slagsmålet så har den lyckats att döda Hans. Greta går ut i skogen ledsamt och anländer hem ensam'),(35,'Ni äter av huset och medans ni äter  så kommer en häxa ut ur huset. Ni försöker fly men häxan fångar Hans och sätter han i en bur. Häxan matar Hans så han blir tjock, häxan har tänkt äta honom'),(36,'Ni äter inte av huset och ni går ut i skogen och dör av svält'),(37,'Hans hittar en pinne som han använder för att lura häxan och få henne att tro att han är spinkig. Häxan blir arg och bestämmer sig att äta Greta medans hon väntar på att Hans ska bli tjock'),(38,'Ni gör ingenting och Häxan har gjort sig redo för att äta Hans. Greta lägger till att Häxan lagt bort sin stav'),(39,'Greta försöker lura in häxan i ugnen men häxan är för smart och puttar in Greta istället, hon äter sen Hans'),(40,'Greta hjälper Hans ut ur buren och dem flyr fån häxan. Dem kommer hem med lite lycka och får äta massa mat som pappa tagit hem'),(41,'Greta förstör staven och häxan dör. Ni går hem med massa godis i händerna'),(42,'Ni försöker döda häxan men häxan \"dödar\" Greta'),(43,'Hans försöker fly men han blir tagen av en varg och blir uppäten'),(44,'Hans försöker döda häxan men han lyckas inte men då kommer Greta och hugger häxan i ryggen\r\n'),(45,'Greta tar häxans stav och häxans blir svin arg. Det här är er chans ni kan döda häxan'),(46,'Greta flyr istället för att hjälpa Hans. Hon tar sig ganska långt men hon träffar på en varg som äter henne'),(47,'Greta gör inget medans häxan börjar att äta Hans. Häxan har sin rygg vänd mot Greta'),(48,'Greta flyr och kommer hem ensam gråtandes till mamma och pappa'),(49,'Greta försöker döda Häxan med några stenar hon hittat på marken. Det går inte bra och häxan fångar Greta och äter henne också'),(50,'Hans hittar en pinne på marken som han använder för att sticka ut häxans ögon. Häxan skriker så att det gör ont i öronen och hon rör sig mot sin ugn'),(51,'Istället för att döda häxan så springer ni iväg in i skogen så snabbt ni kan. Efter en dag av gående i skogen så hittar ni hem till mamma och pappa som blir glada av att se er'),(52,'Ni puttar in häxan i ugnen och det exploderar i en stor flamma. Kraften av explosion skickar er flygande bakåt och ni svimmar. När ni vaknar upp så står dem ansiktes lösa barnen vid er och ser lite ledsna ut'),(53,'Ni försöker springa från barnen men dem är  för snabba och fångar er. Barnen suger sen livet ur er'),(54,'Ni bestämmer er att fråga barnen varför dem ser ledsna ut och dem svarar med att dem blev döda av häxan för länge sedan och aldrig kunde gå vidare till himmeln på grund av detta men tack vare er så kan dem nu vila i frid. Efter ni pratat med barnen så hör ni pappas röst. Ni springer snabbt till  vars hans röst kom ifrån och där är mamma och pappa dem blir jätte glada över att se er och börjar gråta'),(55,'Både Hans och Greta dog, vill du spela igen?'),(56,'Greta överlevde, vill du spela igen'),(57,'Hans och Greta båda överlevde, vill du spela igen'),(58,'Välkommen till ett Hans och Greta soloäventyr. Du kommer få välja själv vad karaktärerna gör och beroende på dina val kommer du få olika slut. Kommer Hans och Greta att överleva eller dö? Det är upp till dig. Börja spelet genom att trycka på knappen nedan.');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23 11:05:50
