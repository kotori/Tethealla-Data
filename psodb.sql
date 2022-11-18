-- This dump contains the table structure required to run Tethealla in SQL mode.

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account_data`
--

DROP TABLE IF EXISTS `account_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_data` (
  `username` varchar(18) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `password` varchar(33) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `regtime` int(11) unsigned NOT NULL DEFAULT 0,
  `lastip` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `lasthwinfo` tinyblob DEFAULT NULL,
  `guildcard` int(11) NOT NULL AUTO_INCREMENT,
  `isgm` tinyint(2) NOT NULL DEFAULT 0,
  `isbanned` tinyint(2) NOT NULL DEFAULT 0,
  `islogged` tinyint(2) NOT NULL DEFAULT 0,
  `isactive` tinyint(2) NOT NULL DEFAULT 0,
  `teamid` int(11) NOT NULL DEFAULT -1,
  `privlevel` mediumint(9) NOT NULL DEFAULT 0,
  `lastchar` tinyblob DEFAULT NULL,
  PRIMARY KEY (`guildcard`)
) ENGINE=InnoDB AUTO_INCREMENT=42000005 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bank_data`
--

DROP TABLE IF EXISTS `bank_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_data` (
  `guildcard` int(11) NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `character_data`
--

DROP TABLE IF EXISTS `character_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_data` (
  `guildcard` int(11) NOT NULL DEFAULT 0,
  `slot` tinyint(4) NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  `header` tinyblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guild_data`
--

DROP TABLE IF EXISTS `guild_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guild_data` (
  `accountid` int(11) NOT NULL DEFAULT 0,
  `friendid` int(11) NOT NULL DEFAULT 0,
  `friendname` tinyblob NOT NULL,
  `friendtext` blob NOT NULL,
  `reserved` smallint(6) NOT NULL DEFAULT 257,
  `sectionid` smallint(6) NOT NULL DEFAULT 0,
  `class` smallint(6) NOT NULL DEFAULT 0,
  `comment` tinyblob NOT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hw_bans`
--

DROP TABLE IF EXISTS `hw_bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hw_bans` (
  `guildcard` int(11) NOT NULL,
  `hwinfo` tinyblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ip_bans`
--

DROP TABLE IF EXISTS `ip_bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ip_bans` (
  `ipinfo` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `key_data`
--

DROP TABLE IF EXISTS `key_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key_data` (
  `guildcard` int(11) NOT NULL DEFAULT 0,
  `controls` blob NOT NULL,
  PRIMARY KEY (`guildcard`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `security_data`
--

DROP TABLE IF EXISTS `security_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `security_data` (
  `guildcard` int(11) NOT NULL DEFAULT 0,
  `thirtytwo` int(11) NOT NULL DEFAULT 0,
  `sixtyfour` tinyblob NOT NULL,
  `slotnum` tinyint(4) NOT NULL DEFAULT -1,
  `isgm` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ship_data`
--

DROP TABLE IF EXISTS `ship_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ship_data` (
  `rc4key` tinyblob NOT NULL,
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_data`
--

DROP TABLE IF EXISTS `team_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_data` (
  `name` tinyblob NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `flag` blob NOT NULL,
  `teamid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`teamid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-18 13:51:39
