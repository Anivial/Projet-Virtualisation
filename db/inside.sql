CREATE DATABASE  IF NOT EXISTS `inside` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci */;
USE `inside`;
-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: inside
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `FavoriteGames`
--

DROP TABLE IF EXISTS `FavoriteGames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FavoriteGames` (
  `idUser` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `idGames` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`idUser`,`idGames`),
  KEY `fk_User_has_Game_Game1_idx` (`idGames`),
  KEY `fk_User_has_Game_User_idx` (`idUser`),
  CONSTRAINT `fk_User_has_Game_Game1` FOREIGN KEY (`idGames`) REFERENCES `Game` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_User_has_Game_User` FOREIGN KEY (`idUser`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FavoriteGames`
--

LOCK TABLES `FavoriteGames` WRITE;
/*!40000 ALTER TABLE `FavoriteGames` DISABLE KEYS */;
INSERT INTO `FavoriteGames` VALUES ('00c1c531-5d3b-4b90-8acf-ed53e36ac348','a42883a3-2973-4f2c-9572-5ff5ec93bcb4'),('c48ad329-b6d1-45d3-aaa6-051a4fa978b3','b3ce7749-5192-4777-a07c-65b706a53c71');
/*!40000 ALTER TABLE `FavoriteGames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Game` (
  `id` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `description` varchar(5000) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game`
--

LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
INSERT INTO `Game` VALUES ('11f21e59-8112-45c5-98f3-3f27c0d980b8','Okami','./images/okami.png','Amaterasu, déesse du Soleil et de la Lumière et reine des hautes plaines célestes (Takama ga Hara) réincarnée dans une statue en l\'honneur du légendaire loup blanc Shiranui, est réveillée par Konohanasakuya Hime (Sakuya), déesse de la Flore, afin de rendre ses couleurs à un monde envahi par les ténèbres à la suite de la résurrection d\'un puissant démon, le dragon octocéphale, Yamata-no-Orochi.'),('546a6481-0d8a-4714-bd78-97c17edd4d2a','Splinter Cell','./images/splintercell.jpg','Vous êtes Sam Fisher, le meilleur agent d\'une entité secrète de la National Security Agency et accessoirement le dernier recours de votre gouvernement dans sa lutte contre le terrorisme. Infiltrez-vous dans des univers d\'ombre et de lumière et forcez l\'ennemi à coopérer ou utilisez-le comme bouclier humain.'),('5903dc94-e146-41a1-b2c4-f2bd8e12ae3b','Undertale','./images/undertale.png','Undertale est un jeu RPG. Vous contrôlez un humain qui se trouve bloqué dans le monde des monstres. Deux choix s\'offrent à vous. Soit vous trouvez le moyen de sortir, soit vous restez prisonnier pour toujours.'),('80232bb3-3d2c-4e8b-bff7-4895bc64836a','The Elder Scrolls V: Skyrim','./images/skyrim.jpg','The Elder Scrolls V : Skyrim est le cinquième épisode de la saga de jeux de rôle du même nom. Le scénario se passe 200 ans après l\'histoire du quatrième opus, quand Alduin fait son retour au milieu d\'une guerre civile. Seul le Dovahkiin, incarné par le joueur, peut mettre un terme à cette sombre affaire...'),('a42883a3-2973-4f2c-9572-5ff5ec93bcb4','Super Street Fighter IV','./images/sf4.jpg','Super Street Fighter IV sur Xbox 360 est une version améliorée du célèbre jeu de combat. Cette nouvelle version comporte de nouveaux combattants comme DeeJay, T.Hawk ou Cody, et dispose de Bonus Stages inédits qui raviront les fans.'),('b3ce7749-5192-4777-a07c-65b706a53c71','Super Mario Odyssey','./images/mario.png','Bowser enlève Peach pour se marier avec elle. Mario rencontre une créature ressemblant à un chapeau, un Chapiforme, portant le nom de Cappy. Bowser a aussi enlevé sa sœur, Tiara. Mario et Cappy récupèrent un vaisseau abandonné, l\'Odyssée, et voyagent de pays en pays à la poursuite de Bowser.'),('d5cb735b-51b2-4ed3-a4a8-f960d0ed9106','Slither.io','./images/slitherio.jpg','Mangez pour croître ! Le joueur contrôle un serpent. Il doit le faire grossir le plus possible en absorbant des cellules d\'énergie. Il est confronté aux serpents des autres joueurs qui vont essayer de le détruire et qu\'il doit essayer lui-même de détruire. Pour ce faire, le joueur doit essayer d\'intercepter la trajectoire des autres joueurs en évitant lui-même de percuter un serpent adverse. Slither.io propose un concept similaire au jeu Agar.io sorti en 2015 et rappelle le classique du jeu d\'arcade Snake.'),('d66d2c13-a4d7-4361-ab15-7b352f85a8ca','Final Fantasy X','./images/ffx.jpg','Le monde de Spira vit dans la crainte d\'une entité maléfique nommée Sin. Vous incarnez une équipe menée par le jeune Tidus dans une quête pour libérer la terre de l\'oppression, uniquement possible au prix d\'une invocation finale...'),('f77209e9-4475-487b-ad69-8705230cd884','Pokemon Cristal','./images/pokemon.jpg','Pokémon Version Cristal est un jeu de rôle. Dirigez un dresseur de Pokémons qui doit devenir le meilleur d\'entre tous. Pour cela, capturez des créatures et faites-les évoluer pour qu\'elles deviennent de plus en plus fortes afin de battre la ligue Pokémon.'),('fab9a91f-e178-43aa-8156-14f8e80b8d64','NieR Automata','./images/nier.png','Nier Automata est un jeu d\'action de type RPG jouable en solo. Le titre amène le joueur dans un futur lointain où la Terre a été envahie par des formes extra-terrestres armées de \"bio-machines\". Après s\'être réfugiée sur la lune, l\'humanité envoie sur leur planète natale des androïdes capable de lutter avec les extra-terrestres et reconquérir la planète.');
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GameTypes`
--

DROP TABLE IF EXISTS `GameTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GameTypes` (
  `idGames` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `type` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`idGames`,`type`),
  KEY `fk_Game_has_Type_Type1_idx` (`type`),
  KEY `fk_Game_has_Type_Game1_idx` (`idGames`),
  CONSTRAINT `fk_Game_has_Type_Game1` FOREIGN KEY (`idGames`) REFERENCES `Game` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Game_has_Type_Type1` FOREIGN KEY (`type`) REFERENCES `Type` (`type`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GameTypes`
--

LOCK TABLES `GameTypes` WRITE;
/*!40000 ALTER TABLE `GameTypes` DISABLE KEYS */;
INSERT INTO `GameTypes` VALUES ('11f21e59-8112-45c5-98f3-3f27c0d980b8','Aventure'),('a42883a3-2973-4f2c-9572-5ff5ec93bcb4','Combat'),('546a6481-0d8a-4714-bd78-97c17edd4d2a','Infiltration'),('d5cb735b-51b2-4ed3-a4a8-f960d0ed9106','Multijoueur'),('b3ce7749-5192-4777-a07c-65b706a53c71','Plateforme'),('5903dc94-e146-41a1-b2c4-f2bd8e12ae3b','RPG'),('80232bb3-3d2c-4e8b-bff7-4895bc64836a','RPG'),('d66d2c13-a4d7-4361-ab15-7b352f85a8ca','RPG'),('f77209e9-4475-487b-ad69-8705230cd884','RPG'),('fab9a91f-e178-43aa-8156-14f8e80b8d64','RPG');
/*!40000 ALTER TABLE `GameTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Matches`
--

DROP TABLE IF EXISTS `Matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Matches` (
  `idMatch` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `idUser` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `idGame` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`idMatch`,`idUser`,`idGame`),
  KEY `fk_User_has_Game_Game2_idx` (`idGame`),
  KEY `fk_User_has_Game_User1_idx` (`idUser`),
  CONSTRAINT `fk_User_has_Game_Game2` FOREIGN KEY (`idGame`) REFERENCES `Game` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_User_has_Game_User1` FOREIGN KEY (`idUser`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Matches`
--

LOCK TABLES `Matches` WRITE;
/*!40000 ALTER TABLE `Matches` DISABLE KEYS */;
INSERT INTO `Matches` VALUES ('710b6040-eb31-46a2-8538-f179981eb810','00c1c531-5d3b-4b90-8acf-ed53e36ac348','11f21e59-8112-45c5-98f3-3f27c0d980b8','2018-04-09 19:00:00',NULL),('db8b3956-a419-43ac-b12b-fcf7771b21d9','c48ad329-b6d1-45d3-aaa6-051a4fa978b3','d5cb735b-51b2-4ed3-a4a8-f960d0ed9106','2018-04-09 20:00:00','2018-04-09 21:00:00');
/*!40000 ALTER TABLE `Matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Type`
--

DROP TABLE IF EXISTS `Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Type` (
  `type` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Type`
--

LOCK TABLES `Type` WRITE;
/*!40000 ALTER TABLE `Type` DISABLE KEYS */;
INSERT INTO `Type` VALUES ('Action'),('Aventure'),('Combat'),('Infiltration'),('Multijoueur'),('Plateforme'),('Reflexion'),('RPG');
/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `username` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  `birthday` date NOT NULL,
  `createdDate` date NOT NULL,
  `email` varchar(45) COLLATE utf8_general_mysql500_ci NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `ban` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('00c1c531-5d3b-4b90-8acf-ed53e36ac348','Player2','Password2','1980-05-03','1980-05-03','player2@hotmail.fr',0,0),('839b841f-6903-4b68-b754-d0d1e987afe8','admin','admin','2000-05-05','2000-05-05','admin@hotmail.fr',1,0),('c48ad329-b6d1-45d3-aaa6-051a4fa978b3','Player1','Password1','1996-02-02','1996-02-02','player1@hotmail.fr',0,0);
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

-- Dump completed on 2018-04-10 23:39:03
