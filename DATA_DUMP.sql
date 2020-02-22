CREATE DATABASE  IF NOT EXISTS `new_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `new_schema`;
-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `commentaries`
--

DROP TABLE IF EXISTS `commentaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `author` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_commentaries_1_idx` (`news_id`),
  CONSTRAINT `fk_commentaries_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentaries`
--

LOCK TABLES `commentaries` WRITE;
/*!40000 ALTER TABLE `commentaries` DISABLE KEYS */;
INSERT INTO `commentaries` VALUES (14,9,'Emma','what a douche!'),(15,9,'','no wonder he lived happily until he\'s 90, lol'),(17,10,'Robert','Go Bernie! Go!'),(18,10,'','Would that stop Russian bot actiories? No'),(19,13,'','омг, фу');
/*!40000 ALTER TABLE `commentaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (8,'US mother arrested in bizarre missing children case','The US mother whose two young children have been missing for months has been arrested in Hawaii amid a complicated search operation spanning the US.\n\nLori Daybell, 46, left for Hawaii in November after police in Idaho questioned her about her children, who officers say are in danger.\n\nThe mysterious case includes three suspicious deaths.\n\nMrs Daybell has reportedly been linked to a doomsday cult-like religious group, according to US media reports.\n\nShe is facing two counts of child abandonment and is being held on a $5m (£3.8m) bond on the island of Kauai.\n\nShe appeared in court on Friday, with another hearing scheduled for 2 March.','dfDlc6mNAuUrWkqQjbkbR.jpg','2020-02-22T11:53:02.322Z'),(9,'L\'Arche founder Jean Vanier sexually abused women - internal report','A religious leader who founded a celebrated organisation for people with learning difficulties sexually abused six women in France, an internal report found.\n\nCanadian Jean Vanier founded the global network L\'Arche in France in 1964 and died last year aged 90.\n\nNone of the women he abused were themselves disabled, the report says.\n\nAn investigation into Vanier was commissioned by L\'Arche International last year after suspicions were raised.\n\nThe full report is due to be published in the coming days.\n\n\"We are shocked by these discoveries and unreservedly condemn these actions, which are in total contradiction with the values Jean Vanier claimed and are incompatible with the basic rules of respect and integrity of persons, and contrary to the fundamental principles on which L\'Arche is based,\" L\'Arche International said in a statement on its website.\n\nThe organisation runs homes and centres where people with and without disabilities live together, operating in 38 countries with around 10,000 members.','MLCKLtmDXPFQn88qb0-dv.jpg','2020-02-22T11:55:08.163Z'),(10,'US election 2020: Sanders \'told of Russian effort to aid his campaign\'','Democratic presidential hopeful Bernie Sanders has condemned Russia for its reported attempts to help his campaign, telling it to \"stay out of American elections\".\n\nMr Sanders said on Friday that US officials had told him last month about Russian efforts to aid his campaign.\n\nSpeaking in Bakersfield, California, Mr Sanders said it was not clear how Russia intended to interfere.\n\nBut the Vermont senator, 78, said he strongly opposed any attempts to do so.\n\nHe denounced Russian President Vladimir Putin as an \"autocratic thug\" whose government has \"used internet propaganda to sow division in our country\".\n\n\"Let\'s be clear, the Russians want to undermine American democracy by dividing us up and, unlike the current president, I stand firmly against their efforts and any other foreign power that wants to interfere in our election,\" Mr Sanders said.\n\nRussia \'meddled in all big social media\' around US election\nTrump Russia: The saga in 350 words\nMr Sanders, a self-styled democratic socialist, is currently considered the front-runner in the race to win the presidential nomination for the Democrats.\n\nFacebook said it has not seen any evidence of Russian assistance to Mr Sanders\' campaign.\n\nOn Friday, The Washington Post said US President Donald Trump and other US lawmakers had been informed of reported Russian efforts to assist Mr Sanders.','_6Sr-RkYy4UgJ2dcMYjWt.jpg','2020-02-22T11:56:38.696Z'),(11,'Friends to reunite for one-off special on HBO Max','The cast of Friends is to reunite for a one-off special, more than 15 years since the show ended.\n\nThe unscripted episode will air on the HBO Max streaming service, launching in May. A date is yet to be announced.\n\nJennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry and David Schwimmer will all appear.\n\nPerry posted on Instagram: \"It\'s happening\" with a photo of the cast from the 1990s. The rest of the cast then started sharing the same post.','WIySPUagyCehPAchSrZ1G.jpg','2020-02-22T12:04:53.465Z'),(13,'Самая тучная в мире модель показала снимок в нижнем белье и обрадовала фанатов','Самая тучная в мире модель, американка Тесс Холлидей, поделилась снимком в нижнем белье и призвала любить себя. Публикация появилась в Instagram-аккаунте знаменитости.\n\nНа снимке 34-летняя модель позирует перед зеркалом в черном бюстгальтере, кружевных трусах и укороченном меховом кардигане бюджетного британского бренда PrettyLittleThing.\n\n«Нам постоянно говорят, чтобы мы занизили свои ожидания, поскольку тела толстых людей никто не хочет. Нам говорят, что нам повезло, если хоть кто-то считает нас привлекательными и если кто-то полюбит нас. Поэтому для меня любовь всегда была чем-то чуждым, и из-за этого я позволяла другим людям плохо относиться к себе. Любовь к себе — это то, что мы воспитываем всю жизнь, и мне еще предстоит многому научиться», — написала Холлидей под фотографией.\n\nФанаты обрадовались публикации знаменитости и бросились хвалить ее в комментариях. «Я горжусь тобой! Многим из нас нужно было это услышать», «Ты красива внутри и снаружи. Наблюдать за тобой — это просто подарок», «Так приятно слышать, что ты требуешь большего просто потому, что ты заслуживаешь этого!» — писали они.','ROwwGawQbsPHESyiSG2S5.jpg','2020-02-22T12:58:35.587Z'),(14,'Биатлонист Гараничев раскрыл подробности обысков в российской сборной','Российский биатлонист Евгений Гараничев, чей номер обыскивали сотрудники итальянской полиции, прокомментировал проверку. Его слова приводит «Матч ТВ».\n\nГараничев проживал в номере вместе с Александром Логиновым. Спортсменов разбудили полицейские в шесть утра и начали обыскивать помещение. «Саша больше злился, чем нервничал. Ему дали записать контакты с телефона, чтобы позвонить супруге и друзьям, но при этом спрашивали, кто это такие», — рассказал он.','YnUHV-tyYHZBLjP7n5gyr.jpg','2020-02-22T12:59:19.978Z');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-22 19:19:16
