-- MySQL dump 10.11
--
-- Host: localhost    Database: philippbosch_w32
-- ------------------------------------------------------
-- Server version	5.0.51a-24+lenny5-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `permission_id_refs_id_a7792de1` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `auth_message_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add migration history',9,'add_migrationhistory'),(26,'Can change migration history',9,'change_migrationhistory'),(27,'Can delete migration history',9,'delete_migrationhistory'),(28,'Can add photo',10,'add_photo'),(29,'Can change photo',10,'change_photo'),(30,'Can delete photo',10,'delete_photo'),(31,'Can add flat page',11,'add_flatpage'),(32,'Can change flat page',11,'change_flatpage'),(33,'Can delete flat page',11,'delete_flatpage'),(34,'Can add navigation bar element',12,'add_navbarentry'),(35,'Can change navigation bar element',12,'change_navbarentry'),(36,'Can delete navigation bar element',12,'delete_navbarentry');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pb','','','hello@pb.io','sha1$b8d70$152c11dbbfae97faaad138d9c6fe42b719b8841a',1,1,1,'2011-07-13 09:33:02','2010-01-21 01:42:19');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `group_id_refs_id_f0ee9890` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `permission_id_refs_id_67e79cb` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_user_id` (`user_id`),
  KEY `django_admin_log_content_type_id` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2010-01-21 08:17:47',1,7,'1','buero-wilhelmstrasse.de',2,'Changed domain and name.'),(2,'2010-01-23 19:07:33',1,10,'1','./utils/photos/4292617523_de53bdc170_o_d.jpg',3,''),(3,'2010-01-23 19:07:33',1,10,'2','./utils/photos/4292617609_f7d15be182_o_d.jpg',3,''),(4,'2010-01-23 19:07:33',1,10,'3','./utils/photos/4292617723_d1cba3e78b_o_d.jpg',3,''),(5,'2010-01-23 19:07:33',1,10,'4','./utils/photos/4292617955_09d0fd2ce6_o_d.jpg',3,''),(6,'2010-01-23 19:07:33',1,10,'5','./utils/photos/4292618139_9e96b497cd_o_d.jpg',3,''),(7,'2010-01-23 19:07:33',1,10,'6','./utils/photos/4292618417_249371cc75_o_d.jpg',3,''),(8,'2010-01-23 19:07:33',1,10,'7','./utils/photos/4293359232_bef12c1e94_o_d.jpg',3,''),(9,'2010-01-23 19:07:33',1,10,'8','./utils/photos/4293359302_b4b0e4f210_o_d.jpg',3,''),(10,'2010-01-23 19:07:33',1,10,'9','./utils/photos/4293359696_c0e84fd5f0_o_d.jpg',3,''),(11,'2010-01-23 19:07:33',1,10,'10','./utils/photos/4293359990_867e745fea_o_d.jpg',3,''),(12,'2010-01-23 19:07:33',1,10,'11','./utils/photos/4293360136_28870d3b21_o_d.jpg',3,''),(13,'2010-01-23 19:07:33',1,10,'12','./utils/photos/4293360180_bfe8c9f5ef_o_d.jpg',3,''),(14,'2010-01-23 19:07:33',1,10,'13','./utils/photos/4293360984_09d3c3c873_o_d.jpg',3,''),(15,'2010-01-23 19:07:33',1,10,'14','./utils/photos/4293361146_e9c714c32f_o_d.jpg',3,''),(16,'2010-01-23 19:07:33',1,10,'15','./utils/photos/4293361264_1fbdd3a3c5_o_d.jpg',3,''),(17,'2010-01-23 19:07:33',1,10,'16','./utils/photos/4293361744_fbc566e3c5_o_d.jpg',3,''),(18,'2010-01-23 19:07:33',1,10,'17','./utils/photos/4293361804_cb7e9772b5_o_d.jpg',3,''),(19,'2010-01-23 19:07:33',1,10,'18','./utils/photos/4293362060_f16eb390a0_o_d.jpg',3,''),(20,'2010-01-23 19:07:33',1,10,'19','./utils/photos/4295506001_bd62893160_o_d.jpg',3,''),(21,'2010-01-23 19:07:33',1,10,'20','./utils/photos/4295506099_81bfd2a557_o_d.jpg',3,''),(22,'2010-01-23 19:07:33',1,10,'21','./utils/photos/4296251160_35b07275a7_o_d.jpg',3,''),(23,'2010-01-23 19:07:33',1,10,'22','./utils/photos/4296251474_a60646d9cc_o_d.jpg',3,''),(24,'2010-01-23 19:09:37',1,10,'32','xxx',2,'Changed caption.'),(25,'2010-01-23 19:10:41',1,10,'32','(Ohne Titel)',2,'Changed caption.'),(26,'2010-01-24 18:38:12',1,10,'41','Die Stiftskirche zwischen dem Bürogebäude und der Volkshochschule',2,'Changed caption.'),(27,'2010-01-24 18:38:42',1,10,'43','Blick vom Eingangsbereich des Gerichts. In der Mitte das Bürogebäude. ',2,'Changed caption.'),(28,'2010-01-24 18:39:15',1,10,'44','(Ohne Titel)',2,'Changed photo.'),(29,'2010-01-24 18:43:21',1,10,'45','Blick durch den Flur in den Garten, hinten die Innentreppe zum Untergeschoss ',1,''),(30,'2010-01-24 18:44:10',1,10,'26','Im vorderen, zur Wilhelmstraße gelegenen Raum. Durch die Fenster sieht man das Gerichtsgebäude. ',2,'Changed caption.'),(31,'2010-01-24 18:44:44',1,10,'36','Blick vom Flur in den mittleren Raum zwischen dem zur Straße und dem zum Garten gelegenen Büroraum.',2,'Changed caption.'),(32,'2010-01-24 19:05:08',1,10,'23','Innenflur, von der Gartenseite in Richtung Wilhelmstraße ',2,'Changed caption.'),(33,'2010-01-24 19:05:08',1,10,'27','Innenflur, rechts der mittlere Raum, hinten das Podest der Innentreppe zum Untergeschoss ',2,'Changed caption.'),(34,'2010-01-24 19:05:08',1,10,'29','Blick vom an der Wilhelmstraße gelegenen Raum (links die Eingangstüre) durch den Innenflur zum Garten. ',2,'Changed caption.'),(35,'2010-01-24 19:05:08',1,10,'30','Innenflur mit Blick zur Wilhelmstraße, links die Eingangstüre zum mittleren Büroraum. ',2,'Changed caption.'),(36,'2010-01-24 19:05:08',1,10,'33','Einbauküche im Untergeschoss ',2,'Changed caption.'),(37,'2010-01-24 19:05:08',1,10,'34','Blick aus dem Untergeschoss in den Garten. In der Mitte unten die Anschlüsse für einen hier möglichen weiteren Arbeitsplatz. ',2,'Changed caption.'),(38,'2010-01-24 19:05:08',1,10,'38','Parkettboden im zum Garten hin gelegenen Büroraum. Hinten einer der in jedem Büroraum mehrfach vorhandenen Anschlüsse für Strom, Computer und Telefon. ',2,'Changed caption.'),(39,'2010-01-24 19:05:34',1,10,'46','Im Eingangsbereich, von der Haustüre aus gesehen ',1,''),(40,'2010-01-24 19:05:34',1,10,'47','Im Eingangsbereich, von der Haustüre aus gesehen ',1,''),(41,'2010-01-24 19:07:47',1,10,'31','Im Büroraum, der zum Garten hin liegt. ',2,'Changed caption.'),(42,'2010-01-24 19:07:47',1,10,'32','Die Innentreppe im Glasanbau zum Garten hin, vom Untergeschoss aus gesehen. ',2,'Changed caption.'),(43,'2010-01-24 19:07:47',1,10,'35','Im Eingangsbereich, rechts der Eingang in die Büroetage ',2,'Changed caption.'),(44,'2010-01-24 19:07:47',1,10,'39','Pitchpine-Boden im zur Wilhelmstraße gelegenen Raum ',2,'Changed caption.'),(45,'2010-01-24 19:07:47',1,10,'40','Im Eingangsbereich. Links die Haustüre zur Wilhelmstraße. ',2,'Changed caption.'),(46,'2010-01-24 19:08:53',1,10,'48','Im Eingangsbereich, vom Eingang in die Büroetage aus gesehen ',1,''),(47,'2010-01-24 19:10:05',1,10,'28','Deckenstrahler (in stromsparender Ausführung), die den gesamten Raum erleuchten und den Stuck zur Geltung bringen, in allen Erdgeschossräumen. ',2,'Changed caption.'),(48,'2010-01-24 19:10:05',1,10,'37','Im mittleren Raum zwischen dem zur Straße und dem zum Garten gelegenen Büroraum ',2,'Changed caption.'),(49,'2010-01-24 19:54:35',1,10,'47','Im Eingangsbereich, von der Haustüre aus gesehen ',3,''),(50,'2010-01-24 22:18:45',1,11,'1','/kontakt/ -- Kontakt',1,''),(51,'2010-01-24 22:36:05',1,12,'1','Start',1,''),(52,'2010-01-24 22:36:28',1,12,'2','Beschreibung',1,''),(53,'2010-01-24 22:36:37',1,12,'3','Fotos',1,''),(54,'2010-01-24 22:36:45',1,12,'4','Pläne',1,''),(55,'2010-01-24 22:36:47',1,12,'4','Pläne',2,'No fields changed.'),(56,'2010-01-24 22:36:54',1,12,'5','Kontakt',1,''),(57,'2010-01-24 22:37:25',1,12,'6','bla',1,''),(58,'2010-01-24 22:37:34',1,12,'6','bla',3,''),(59,'2010-01-24 22:47:03',1,12,'1','Start',2,'Changed path_type.'),(60,'2010-01-24 22:50:05',1,11,'2','/beschreibung/ -- Beschreibung',1,''),(61,'2010-01-25 00:38:37',1,11,'3','/lage/ -- Lage',1,''),(62,'2010-01-25 00:40:31',1,12,'7','Lage',1,''),(63,'2010-01-25 00:40:56',1,12,'3','Fotos',2,'Changed order.'),(64,'2010-01-25 00:41:05',1,12,'4','Pläne',2,'Changed order.'),(65,'2010-01-25 00:41:16',1,12,'5','Kontakt',2,'Changed order.'),(66,'2010-01-25 00:43:24',1,11,'3','/lage/ -- Lage',2,'Changed content.'),(67,'2010-01-25 00:43:55',1,11,'3','/lage/ -- Lage',2,'Changed content.'),(68,'2010-01-25 00:57:56',1,11,'3','/lage/ -- Lage',2,'Changed content.'),(69,'2010-01-25 01:04:06',1,11,'1','/kontakt/ -- Kontakt',2,'Changed content.'),(70,'2010-01-25 10:06:55',1,11,'4','/plaene/ -- Pläne',1,''),(71,'2010-01-25 12:14:11',1,11,'2','/beschreibung/ -- Beschreibung',2,'Changed content.'),(72,'2010-01-25 12:27:39',1,10,'29','Blick vom an der Wilhelmstraße gelegenen Raum (links die Eingangstüre) durch den Innenflur zum Garten. ',2,'Changed order.'),(73,'2010-01-25 12:27:39',1,10,'35','Im Eingangsbereich, rechts der Eingang in die Büroetage ',2,'Changed order.'),(74,'2010-01-25 12:27:39',1,10,'39','Pitchpine-Boden im zur Wilhelmstraße gelegenen Raum ',2,'Changed order.'),(75,'2010-01-25 12:27:39',1,10,'40','Im Eingangsbereich. Links die Haustüre zur Wilhelmstraße. ',2,'Changed order.'),(76,'2010-01-25 12:27:39',1,10,'42','(Ohne Titel)',2,'Changed order.'),(77,'2010-01-25 12:27:39',1,10,'43','Blick vom Eingangsbereich des Gerichts. In der Mitte das Bürogebäude. ',2,'Changed order.'),(78,'2010-01-25 12:27:39',1,10,'44','(Ohne Titel)',2,'Changed order.'),(79,'2010-01-25 12:27:39',1,10,'46','Im Eingangsbereich, von der Haustüre aus gesehen ',2,'Changed order.'),(80,'2010-01-25 12:27:39',1,10,'48','Im Eingangsbereich, vom Eingang in die Büroetage aus gesehen ',2,'Changed order.'),(81,'2010-01-25 12:27:48',1,10,'39','Pitchpine-Boden im zur Wilhelmstraße gelegenen Raum ',2,'Changed order.'),(82,'2010-01-25 13:04:13',1,10,'23','Innenflur, von der Gartenseite in Richtung Wilhelmstraße ',2,'Changed order.'),(83,'2010-01-25 13:04:13',1,10,'24','(Ohne Titel)',2,'Changed order.'),(84,'2010-01-25 13:04:13',1,10,'25','(Ohne Titel)',2,'Changed order.'),(85,'2010-01-25 13:04:13',1,10,'26','Im vorderen, zur Wilhelmstraße gelegenen Raum. Durch die Fenster sieht man das Gerichtsgebäude. ',2,'Changed order.'),(86,'2010-01-25 13:04:13',1,10,'27','Innenflur, rechts der mittlere Raum, hinten das Podest der Innentreppe zum Untergeschoss ',2,'Changed order.'),(87,'2010-01-25 13:04:13',1,10,'28','Deckenstrahler (in stromsparender Ausführung), die den gesamten Raum erleuchten und den Stuck zur Geltung bringen, in allen Erdgeschossräumen. ',2,'Changed order.'),(88,'2010-01-25 13:04:13',1,10,'30','Innenflur mit Blick zur Wilhelmstraße, links die Eingangstüre zum mittleren Büroraum. ',2,'Changed order.'),(89,'2010-01-25 13:04:13',1,10,'31','Im Büroraum, der zum Garten hin liegt. ',2,'Changed order.'),(90,'2010-01-25 13:04:13',1,10,'32','Die Innentreppe im Glasanbau zum Garten hin, vom Untergeschoss aus gesehen. ',2,'Changed order.'),(91,'2010-01-25 13:04:13',1,10,'33','Einbauküche im Untergeschoss ',2,'Changed order.'),(92,'2010-01-25 13:04:13',1,10,'34','Blick aus dem Untergeschoss in den Garten. In der Mitte unten die Anschlüsse für einen hier möglichen weiteren Arbeitsplatz. ',2,'Changed order.'),(93,'2010-01-25 13:04:13',1,10,'36','Blick vom Flur in den mittleren Raum zwischen dem zur Straße und dem zum Garten gelegenen Büroraum.',2,'Changed order.'),(94,'2010-01-25 13:04:13',1,10,'37','Im mittleren Raum zwischen dem zur Straße und dem zum Garten gelegenen Büroraum ',2,'Changed order.'),(95,'2010-01-25 13:04:49',1,10,'38','Parkettboden im zum Garten hin gelegenen Büroraum. Hinten einer der in jedem Büroraum mehrfach vorhandenen Anschlüsse für Strom, Computer und Telefon. ',2,'Changed order.'),(96,'2010-01-25 13:04:49',1,10,'41','Die Stiftskirche zwischen dem Bürogebäude und der Volkshochschule',2,'Changed order.'),(97,'2010-01-25 13:04:49',1,10,'45','Blick durch den Flur in den Garten, hinten die Innentreppe zum Untergeschoss ',2,'Changed order.'),(98,'2010-01-25 14:06:49',1,11,'4','/plaene/ -- Pläne',2,'Changed content.'),(99,'2010-01-25 14:07:04',1,11,'4','/plaene/ -- Pläne',2,'Changed content.'),(100,'2010-01-25 14:09:24',1,11,'5','/ --  ',1,''),(101,'2010-01-25 14:14:27',1,11,'5','/ -- Überblick',2,'Changed title and content.'),(102,'2010-01-25 14:36:37',1,11,'5','/ -- Überblick',2,'Changed content.'),(103,'2010-01-25 14:37:52',1,11,'5','/ -- Überblick',2,'Changed content.'),(104,'2010-01-25 14:38:13',1,12,'1','Überblick',2,'Changed name.'),(105,'2010-01-25 14:38:57',1,11,'5','/ -- Überblick',2,'Changed content.'),(106,'2010-01-25 15:38:45',1,11,'5','/ -- Überblick',2,'Changed content.'),(107,'2010-01-25 15:39:07',1,11,'5','/ -- Überblick',2,'Changed template_name.'),(108,'2010-10-15 16:40:22',1,11,'5','/ -- Überblick',2,'Changed content.'),(109,'2010-10-15 16:41:15',1,11,'2','/beschreibung/ -- Beschreibung',2,'Changed content.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'migration history','south','migrationhistory'),(10,'photo','photos','photo'),(11,'flat page','flatpages','flatpage'),(12,'navigation bar element','navbar','navbarentry');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_flatpage` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_flatpage_url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
INSERT INTO `django_flatpage` VALUES (1,'/kontakt/','Kontakt','Anfragen bitte an 0228/282105 oder <a href=\"mailto:martina.bosch@web.de\">martina.bosch@web.de</a> oder Bosch, Basteistraße 44, 53173 Bonn.\r\n',0,'',0),(2,'/beschreibung/','Beschreibung','Die etwa 140 m² große Büroetage befindet sich im Erdgeschoss eines gegenüber dem Amts- und Landgericht Bonn gelegenen, unter Denkmalschutz stehenden Gebäudes. Das Gebäude ist in den letzten Jahren teilweise umgebaut und vollständig saniert worden.\r\n\r\nIm Erdgeschoss befinden sich fünf Büroräume. Im Untergeschoss lässt sich ein weiterer, heller Arbeitsplatz einrichten (alle Anschlüsse sind vorhanden); außerdem sind dort eine kleine eingerichtete Küchenzeile, zwei WC sowie ein ca. 12 m² großer Raum, der als Archiv oder Aktenlager zu nutzen ist und in dem die Anschlüsse für den Computer-Server sowie die Telefonanlage liegen. Die beiden Etagen sind mit einer Innentreppe in einem vollständig verglasten, zum Garten hin gelegenen modernen Anbau verbunden.\r\n\r\nDie Räume sind entsprechend dem Stil der Gründerzeit restauriert worden: Im Erdgeschoss Stuckdecken und in allen Räumen versiegelte Holzböden, größtenteils Parkett. Raumhöhe ca. 3,50 m. Alle Räume sind mit moderner Beleuchtung ausgestattet (Deckenstrahler in stromsparender Ausführung und Niedervoltlampen).\r\n\r\nTechnisch befindet sich die Büroetage auf aktuellem Stand. Die Fenster sind insgesamt erneuert und alle Fenster sind mit hochwertigem Isolierglas ausgestattet; ein Energieausweis der Fa. Ista aus dem Jahr 2009 bestätigt einen im grünen Bereich liegenden, also geringen Heizkostenverbrauch. Sämtliche Elektro- und Sanitärinstallationen sind erneuert worden. Eine hochwertige, zentrale Computerverkabelung ist vorhanden; der Platz für einen Server ist im Archiv- oder Aktenlagerraum im Untergeschoss. Alle Räume sind mit jeweils mehreren Computer- und Telefonanschlüssen sowie Elektrosteckdosen ausgestattet, so dass eine größtmögliche Freiheit für die Möblierung gewährleistet ist.\r\n\r\nDie Kaltmiete beträgt 1.400 €. Die Mietnebenkosten lagen in der Vergangenheit bei etwa 250 € monatlich.\r\n',0,'',0),(3,'/lage/','Lage','',0,'flatpages/map.html',0),(4,'/plaene/','Pläne','<h4>Erdgeschoss</h4>\r\n<img src=\"/media/img/grundriss-eg.png\" alt=\"Grundriss Erdgeschoss\" />\r\n\r\n<h4>Untergeschoss</h4>\r\n<img src=\"/media/img/grundriss-ug.png\" alt=\"Grundriss Untergeschoss\" />\r\n',0,'',0),(5,'/','Überblick','<ul class=\"keyfacts\"><li>Büroimmobilie in <a href=\"/lage/\">zentraler Lage</a> in der Bonner Innenstadt.</li><li>Etwa 140 m². Insgesamt sechs <a href=\"/plaene/\">Räume</a> – davon fünf im EG und einer im UG.</li><li>Sanierter Altbau mit hohen Decken, Holzböden und Stuckdecken.</li><li>Technische Ausstattung auf aktuellem Stand.</li><li>Kaltmiete: 1.400,– €/Monat zzgl. Nebenkosten (zuletzt 250,– €).</li></ul>',0,'flatpages/start.html',0);
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage_sites`
--

DROP TABLE IF EXISTS `django_flatpage_sites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_flatpage_sites` (
  `id` int(11) NOT NULL auto_increment,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `site_id_refs_id_4e3eeb57` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
INSERT INTO `django_flatpage_sites` VALUES (7,1,1),(20,2,1),(6,3,1),(11,4,1),(19,5,1);
/*!40000 ALTER TABLE `django_flatpage_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ec17c959dfc51f5ea577d1abbb844238','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4xODk2MmI1ZjBlNzBkNWE3OGZi\nMjJkZDNjZjMzM2VhYg==\n','2010-02-04 08:17:24'),('ca5c4ad4e10a017643ee7ecee4b498e9','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS4xODk2MmI1ZjBlNzBkNWE3OGZi\nMjJkZDNjZjMzM2VhYg==\n','2010-02-06 18:32:17'),('a80357a166f8c37955e151ae44e0aa3b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5iZjU5Zjk5NDFlNmFhZWE4YjI0\nOTFkYTAyZGUyM2EwYg==\n','2010-02-08 01:36:44'),('853c7f9bebbf0300dd77a778cde0c900','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS5iZjU5Zjk5NDFlNmFhZWE4YjI0\nOTFkYTAyZGUyM2EwYg==\n','2010-10-29 16:40:09'),('e61b5bd8d9dda2390c2745e4bd145b28','gAJ9cQEuMzY1ZjA1NjRhNjdmMmVjMmVhMDVlOGExMDhhYjIxMTg=\n','2011-07-27 09:41:39'),('141c3e2360c7df17f21b0a2ffdc87e77','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLjdlOTMwYzQ5Y2QxZWZlOTljMTNiM2Y1YjMx\nZGE4ZDVl\n','2011-07-27 09:41:42');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'buero-wilhelmstrasse.de','Büro Wilhelmstraße');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navbar_navbarentry`
--

DROP TABLE IF EXISTS `navbar_navbarentry`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `navbar_navbarentry` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) default NULL,
  `path_type` varchar(1) NOT NULL,
  `user_type` varchar(1) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `navbar_navbarentry_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `navbar_navbarentry`
--

LOCK TABLES `navbar_navbarentry` WRITE;
/*!40000 ALTER TABLE `navbar_navbarentry` DISABLE KEYS */;
INSERT INTO `navbar_navbarentry` VALUES (1,'Überblick','','/',1,NULL,'E','E'),(2,'Beschreibung','','/beschreibung/',2,NULL,'A','E'),(3,'Fotos','','/fotos/',4,NULL,'A','E'),(4,'Pläne','','/plaene/',5,NULL,'A','E'),(5,'Kontakt','','/kontakt/',6,NULL,'A','E'),(7,'Lage','','/lage/',3,NULL,'A','E');
/*!40000 ALTER TABLE `navbar_navbarentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navbar_navbarentry_groups`
--

DROP TABLE IF EXISTS `navbar_navbarentry_groups`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `navbar_navbarentry_groups` (
  `id` int(11) NOT NULL auto_increment,
  `navbarentry_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `navbarentry_id` (`navbarentry_id`,`group_id`),
  KEY `group_id_refs_id_be4ba606` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `navbar_navbarentry_groups`
--

LOCK TABLES `navbar_navbarentry_groups` WRITE;
/*!40000 ALTER TABLE `navbar_navbarentry_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `navbar_navbarentry_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos_photo`
--

DROP TABLE IF EXISTS `photos_photo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `photos_photo` (
  `id` int(11) NOT NULL auto_increment,
  `photo` varchar(100) NOT NULL,
  `caption` longtext NOT NULL,
  `order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `photos_photo`
--

LOCK TABLES `photos_photo` WRITE;
/*!40000 ALTER TABLE `photos_photo` DISABLE KEYS */;
INSERT INTO `photos_photo` VALUES (45,'photos/4293361558_604731c871_o_.jpg','Blick durch den Flur in den Garten, hinten die Innentreppe zum Untergeschoss ',313),(44,'photos/4296251410_05affd7e6c_o.jpg','',102),(43,'photos/4296251160_35b07275a7_o_d.jpg','Blick vom Eingangsbereich des Gerichts. In der Mitte das Bürogebäude. ',101),(41,'photos/4295506001_bd62893160_o_d.jpg','Die Stiftskirche zwischen dem Bürogebäude und der Volkshochschule',104),(42,'photos/4295506099_81bfd2a557_o_d.jpg','',103),(40,'photos/4293362060_f16eb390a0_o_d.jpg','Im Eingangsbereich. Links die Haustüre zur Wilhelmstraße. ',203),(38,'photos/4293361744_fbc566e3c5_o_d.jpg','Parkettboden im zum Garten hin gelegenen Büroraum. Hinten einer der in jedem Büroraum mehrfach vorhandenen Anschlüsse für Strom, Computer und Telefon. ',314),(39,'photos/4293361804_cb7e9772b5_o_d.jpg','Pitchpine-Boden im zur Wilhelmstraße gelegenen Raum ',302),(37,'photos/4293361264_1fbdd3a3c5_o_d.jpg','Im mittleren Raum zwischen dem zur Straße und dem zum Garten gelegenen Büroraum ',303),(35,'photos/4293360984_09d3c3c873_o_d.jpg','Im Eingangsbereich, rechts der Eingang in die Büroetage ',204),(36,'photos/4293361146_e9c714c32f_o_d.jpg','Blick vom Flur in den mittleren Raum zwischen dem zur Straße und dem zum Garten gelegenen Büroraum.',304),(34,'photos/4293360180_bfe8c9f5ef_o_d.jpg','Blick aus dem Untergeschoss in den Garten. In der Mitte unten die Anschlüsse für einen hier möglichen weiteren Arbeitsplatz. ',402),(32,'photos/4293359990_867e745fea_o_d.jpg','Die Innentreppe im Glasanbau zum Garten hin, vom Untergeschoss aus gesehen. ',401),(33,'photos/4293360136_28870d3b21_o_d.jpg','Einbauküche im Untergeschoss ',403),(31,'photos/4293359696_c0e84fd5f0_o_d.jpg','Im Büroraum, der zum Garten hin liegt. ',312),(29,'photos/4293359232_bef12c1e94_o_d.jpg','Blick vom an der Wilhelmstraße gelegenen Raum (links die Eingangstüre) durch den Innenflur zum Garten. ',301),(30,'photos/4293359302_b4b0e4f210_o_d.jpg','Innenflur mit Blick zur Wilhelmstraße, links die Eingangstüre zum mittleren Büroraum. ',305),(28,'photos/4292618417_249371cc75_o_d.jpg','Deckenstrahler (in stromsparender Ausführung), die den gesamten Raum erleuchten und den Stuck zur Geltung bringen, in allen Erdgeschossräumen. ',306),(26,'photos/4292617955_09d0fd2ce6_o_d.jpg','Im vorderen, zur Wilhelmstraße gelegenen Raum. Durch die Fenster sieht man das Gerichtsgebäude. ',308),(27,'photos/4292618139_9e96b497cd_o_d.jpg','Innenflur, rechts der mittlere Raum, hinten das Podest der Innentreppe zum Untergeschoss ',307),(25,'photos/4292617723_d1cba3e78b_o_d.jpg','',309),(23,'photos/4292617523_de53bdc170_o_d.jpg','Innenflur, von der Gartenseite in Richtung Wilhelmstraße ',311),(24,'photos/4292617609_f7d15be182_o_d.jpg','',310),(46,'photos/4292618205_91eb427780_o.jpg','Im Eingangsbereich, von der Haustüre aus gesehen ',201),(48,'photos/4292618267_b5c13072d1_o.jpg','Im Eingangsbereich, vom Eingang in die Büroetage aus gesehen ',202);
/*!40000 ALTER TABLE `photos_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL auto_increment,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'photos','0001_initial','2010-01-23 17:28:58');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-07-13  7:41:53
