-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for training
CREATE DATABASE IF NOT EXISTS `training` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `training`;

-- Dumping structure for table training.AgentData
CREATE TABLE IF NOT EXISTS `AgentData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('AgentData') DEFAULT 'AgentData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nama` varchar(25) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Phone` varchar(14) DEFAULT NULL,
  `CountUpdate` int(11) NOT NULL DEFAULT '0',
  `PropertiesID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PropertiesID` (`PropertiesID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.AgentData: ~0 rows (approximately)
/*!40000 ALTER TABLE `AgentData` DISABLE KEYS */;
/*!40000 ALTER TABLE `AgentData` ENABLE KEYS */;

-- Dumping structure for table training.ArticlePage
CREATE TABLE IF NOT EXISTS `ArticlePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Author` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.ArticlePage: 0 rows
/*!40000 ALTER TABLE `ArticlePage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ArticlePage` ENABLE KEYS */;

-- Dumping structure for table training.ArticlePage_Live
CREATE TABLE IF NOT EXISTS `ArticlePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Author` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.ArticlePage_Live: 0 rows
/*!40000 ALTER TABLE `ArticlePage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `ArticlePage_Live` ENABLE KEYS */;

-- Dumping structure for table training.ArticlePage_versions
CREATE TABLE IF NOT EXISTS `ArticlePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` date DEFAULT NULL,
  `Author` mediumtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.ArticlePage_versions: 0 rows
/*!40000 ALTER TABLE `ArticlePage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ArticlePage_versions` ENABLE KEYS */;

-- Dumping structure for table training.BrowserPollSubmission
CREATE TABLE IF NOT EXISTS `BrowserPollSubmission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('BrowserPollSubmission') DEFAULT 'BrowserPollSubmission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` mediumtext,
  `Browser` mediumtext,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.BrowserPollSubmission: ~0 rows (approximately)
/*!40000 ALTER TABLE `BrowserPollSubmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrowserPollSubmission` ENABLE KEYS */;

-- Dumping structure for table training.Category
CREATE TABLE IF NOT EXISTS `Category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Category') DEFAULT 'Category',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Category: ~0 rows (approximately)
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;

-- Dumping structure for table training.CategoryData
CREATE TABLE IF NOT EXISTS `CategoryData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CategoryData') DEFAULT 'CategoryData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table training.CategoryData: ~4 rows (approximately)
/*!40000 ALTER TABLE `CategoryData` DISABLE KEYS */;
INSERT INTO `CategoryData` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nama`) VALUES
	(1, 'CategoryData', '2018-04-16 05:15:08', '2018-04-16 05:15:08', 'Toko'),
	(2, 'CategoryData', '2018-04-16 05:15:19', '2018-04-16 05:15:19', 'Ruko'),
	(3, 'CategoryData', '2018-04-16 05:15:28', '2018-04-16 05:15:28', 'Apartement'),
	(4, 'CategoryData', '2018-04-16 05:15:36', '2018-04-16 05:15:36', 'Rumah'),
	(5, 'CategoryData', '2018-04-16 05:15:44', '2018-04-16 05:15:44', 'Tanah');
/*!40000 ALTER TABLE `CategoryData` ENABLE KEYS */;

-- Dumping structure for table training.Category_Teams
CREATE TABLE IF NOT EXISTS `Category_Teams` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `TeamID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `TeamID` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Category_Teams: ~0 rows (approximately)
/*!40000 ALTER TABLE `Category_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Category_Teams` ENABLE KEYS */;

-- Dumping structure for table training.CityData
CREATE TABLE IF NOT EXISTS `CityData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CityData') DEFAULT 'CityData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nama` varchar(25) DEFAULT NULL,
  `ProvinsiID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ProvinsiID` (`ProvinsiID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table training.CityData: ~4 rows (approximately)
/*!40000 ALTER TABLE `CityData` DISABLE KEYS */;
INSERT INTO `CityData` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nama`, `ProvinsiID`) VALUES
	(1, 'CityData', '2018-04-16 05:30:55', '2018-04-16 05:30:55', 'Bandung', 3),
	(2, 'CityData', '2018-04-16 05:31:11', '2018-04-16 05:31:11', 'Semarang', 2),
	(3, 'CityData', '2018-04-16 05:31:23', '2018-04-16 05:31:23', 'Surabaya', 1),
	(4, 'CityData', '2018-04-16 07:10:05', '2018-04-16 07:10:05', 'Mojokerto', 1);
/*!40000 ALTER TABLE `CityData` ENABLE KEYS */;

-- Dumping structure for table training.Company
CREATE TABLE IF NOT EXISTS `Company` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Company') DEFAULT 'Company',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `ManagerID` int(11) NOT NULL DEFAULT '0',
  `CleanerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ManagerID` (`ManagerID`),
  KEY `CleanerID` (`CleanerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Company: ~0 rows (approximately)
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;

-- Dumping structure for table training.ErrorPage
CREATE TABLE IF NOT EXISTS `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table training.ErrorPage: 2 rows
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
	(4, 404),
	(5, 500);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;

-- Dumping structure for table training.ErrorPage_Live
CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table training.ErrorPage_Live: 2 rows
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
	(4, 404),
	(5, 500);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;

-- Dumping structure for table training.ErrorPage_versions
CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table training.ErrorPage_versions: 2 rows
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
	(1, 4, 1, 404),
	(2, 5, 1, 500);
/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;

-- Dumping structure for table training.FacilityData
CREATE TABLE IF NOT EXISTS `FacilityData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('FacilityData') DEFAULT 'FacilityData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nama` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table training.FacilityData: ~5 rows (approximately)
/*!40000 ALTER TABLE `FacilityData` DISABLE KEYS */;
INSERT INTO `FacilityData` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nama`) VALUES
	(1, 'FacilityData', '2018-04-16 05:15:55', '2018-04-16 05:15:55', 'Listrik'),
	(2, 'FacilityData', '2018-04-16 05:16:06', '2018-04-16 05:16:06', 'Air'),
	(3, 'FacilityData', '2018-04-16 05:16:16', '2018-04-16 05:16:16', 'PDAM'),
	(4, 'FacilityData', '2018-04-16 05:16:24', '2018-04-16 05:16:24', 'Internet'),
	(5, 'FacilityData', '2018-04-16 05:16:32', '2018-04-16 05:16:32', 'Wifi'),
	(6, 'FacilityData', '2018-04-16 05:16:44', '2018-04-16 05:16:44', 'Security');
/*!40000 ALTER TABLE `FacilityData` ENABLE KEYS */;

-- Dumping structure for table training.File
CREATE TABLE IF NOT EXISTS `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Filename`,`Title`,`Content`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table training.File: 19 rows
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
	(1, 'Folder', '2018-04-16 11:53:48', '2018-04-16 11:53:48', 'upload', 'upload', 'assets/upload/', NULL, 1, 0, 1),
	(2, 'Folder', '2018-04-16 11:53:48', '2018-04-16 11:53:48', 'foto', 'foto', 'assets/upload/foto/', NULL, 1, 1, 1),
	(3, 'Folder', '2018-04-16 11:53:48', '2018-04-16 11:53:48', '7', '7', 'assets/upload/foto/7/', NULL, 1, 2, 1),
	(4, 'Image', '2018-04-16 11:53:48', '2018-04-16 11:53:48', 'background-2.jpg', 'background 2', 'assets/upload/foto/7/background-2.jpg', NULL, 1, 3, 1),
	(5, 'Image', '2018-04-16 11:56:10', '2018-04-16 11:56:10', 'background-3.jpg', 'background 3', 'assets/upload/foto/7/background-3.jpg', NULL, 1, 3, 1),
	(6, 'Image', '2018-04-16 11:57:51', '2018-04-16 11:57:51', 'background-4.jpg', 'background 4', 'assets/upload/foto/7/background-4.jpg', NULL, 1, 3, 1),
	(7, 'Image', '2018-04-16 11:59:18', '2018-04-16 11:59:18', 'amazing-wallpapers-full-hd-16.jpg', 'amazing wallpapers full hd 16', 'assets/upload/foto/7/amazing-wallpapers-full-hd-16.jpg', NULL, 1, 3, 1),
	(8, 'Folder', '2018-04-16 11:59:51', '2018-04-16 11:59:51', '16', '16', 'assets/upload/foto/16/', NULL, 1, 2, 1),
	(9, 'Image', '2018-04-16 11:59:51', '2018-04-16 11:59:51', 'background-2.jpg', 'background 2', 'assets/upload/foto/16/background-2.jpg', NULL, 1, 8, 1),
	(10, 'Image', '2018-04-16 12:00:55', '2018-04-16 12:00:55', 'background-3.jpg', 'background 3', 'assets/upload/foto/16/background-3.jpg', NULL, 1, 8, 1),
	(11, 'Image', '2018-04-16 12:02:09', '2018-04-16 12:02:09', 'background-4.jpg', 'background 4', 'assets/upload/foto/16/background-4.jpg', NULL, 1, 8, 1),
	(12, 'Image', '2018-04-16 12:02:13', '2018-04-16 12:02:13', 'background-5.jpg', 'background 5', 'assets/upload/foto/16/background-5.jpg', NULL, 1, 8, 1),
	(13, 'Image', '2018-04-16 12:02:14', '2018-04-16 12:02:14', 'background-6.jpg', 'background 6', 'assets/upload/foto/16/background-6.jpg', NULL, 1, 8, 1),
	(14, 'Image', '2018-04-16 12:02:15', '2018-04-16 12:02:15', 'background-7.jpg', 'background 7', 'assets/upload/foto/16/background-7.jpg', NULL, 1, 8, 1),
	(15, 'Folder', '2018-04-16 12:03:06', '2018-04-16 12:03:06', '17', '17', 'assets/upload/foto/17/', NULL, 1, 2, 1),
	(16, 'Image', '2018-04-16 12:03:06', '2018-04-16 12:03:06', 'background-2.jpg', 'background 2', 'assets/upload/foto/17/background-2.jpg', NULL, 1, 15, 1),
	(17, 'Image', '2018-04-16 12:03:29', '2018-04-16 12:03:29', 'background-3.jpg', 'background 3', 'assets/upload/foto/17/background-3.jpg', NULL, 1, 15, 1),
	(18, 'Image', '2018-04-16 12:03:39', '2018-04-16 12:03:39', 'background-4.jpg', 'background 4', 'assets/upload/foto/17/background-4.jpg', NULL, 1, 15, 1),
	(19, 'Image', '2018-04-17 03:33:04', '2018-04-17 03:33:04', '6064683-full-hd-wallpaper.jpg', '6064683 full hd wallpaper', 'assets/upload/foto/7/6064683-full-hd-wallpaper.jpg', NULL, 1, 3, 1);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;

-- Dumping structure for table training.Group
CREATE TABLE IF NOT EXISTS `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table training.Group: ~2 rows (approximately)
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
	(1, 'Group', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
	(2, 'Group', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0),
	(3, 'Group', '2018-04-16 11:28:47', '2018-04-16 11:31:04', 'Programmer', NULL, 'programmer', 0, 0, NULL, 0);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;

-- Dumping structure for table training.Group_Members
CREATE TABLE IF NOT EXISTS `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table training.Group_Members: ~2 rows (approximately)
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
	(1, 2, 1),
	(2, 3, 2);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;

-- Dumping structure for table training.Group_Roles
CREATE TABLE IF NOT EXISTS `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Group_Roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `Group_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Roles` ENABLE KEYS */;

-- Dumping structure for table training.LessonAR
CREATE TABLE IF NOT EXISTS `LessonAR` (
  `LessonARID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `TeacherARID` int(11) NOT NULL,
  PRIMARY KEY (`LessonARID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table training.LessonAR: ~3 rows (approximately)
/*!40000 ALTER TABLE `LessonAR` DISABLE KEYS */;
INSERT INTO `LessonAR` (`LessonARID`, `Name`, `TeacherARID`) VALUES
	(1, 'English', 1),
	(2, 'Math', 1),
	(3, 'Sains', 1);
/*!40000 ALTER TABLE `LessonAR` ENABLE KEYS */;

-- Dumping structure for table training.LoginAttempt
CREATE TABLE IF NOT EXISTS `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.LoginAttempt: ~0 rows (approximately)
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;

-- Dumping structure for table training.Member
CREATE TABLE IF NOT EXISTS `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table training.Member: ~2 rows (approximately)
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`, `Gender`) VALUES
	(1, 'Member', '2018-04-16 05:10:17', '2018-04-18 11:46:55', 'Default Admin', 'admin', 'admin', 'e4c5c5256de4c93182020c3594ea4f1cc9a94bf6', '2018-04-21 04:15:12', NULL, NULL, 4, '2018-04-18 16:46:55', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, 'MMM d, y', 'h:mm:ss a', 'Tidak disebutkan'),
	(2, 'Member', '2018-04-16 11:29:41', '2018-04-16 11:31:40', 'Nukman', 'Nukkman', 'Nukkman@mail.com', '9c22619ceda43b843c450ac3ee0ac02c4c9f9377', '2018-04-19 11:31:20', '$2y$10$c9763bb6c52a15b384ba8OID5N4nGAcxTCbPtcIGm59g/1i9.59uO', NULL, 1, '2018-04-16 16:31:40', NULL, NULL, 'blowfish', '10$c9763bb6c52a15b384ba8a', NULL, NULL, 'en_US', 0, 'MMM d, y', 'h:mm:ss a', 'Laki-laki');
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;

-- Dumping structure for table training.MemberPassword
CREATE TABLE IF NOT EXISTS `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table training.MemberPassword: ~1 rows (approximately)
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
	(1, 'MemberPassword', '2018-04-16 11:29:41', '2018-04-16 11:29:41', '$2y$10$c9763bb6c52a15b384ba8OID5N4nGAcxTCbPtcIGm59g/1i9.59uO', '10$c9763bb6c52a15b384ba8a', 'blowfish', 2);
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;

-- Dumping structure for table training.MentorData
CREATE TABLE IF NOT EXISTS `MentorData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MentorData') DEFAULT 'MentorData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.MentorData: ~0 rows (approximately)
/*!40000 ALTER TABLE `MentorData` DISABLE KEYS */;
/*!40000 ALTER TABLE `MentorData` ENABLE KEYS */;

-- Dumping structure for table training.Permission
CREATE TABLE IF NOT EXISTS `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table training.Permission: ~6 rows (approximately)
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
	(1, 'Permission', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'CMS_ACCESS_CMSMain', 0, 1, 1),
	(2, 'Permission', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
	(3, 'Permission', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
	(4, 'Permission', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'SITETREE_REORGANISE', 0, 1, 1),
	(5, 'Permission', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'ADMIN', 0, 1, 2),
	(6, 'Permission', '2018-04-16 11:31:04', '2018-04-16 11:31:04', 'CMS_ACCESS_CMSMain', 0, 1, 3);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;

-- Dumping structure for table training.PermissionRole
CREATE TABLE IF NOT EXISTS `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.PermissionRole: ~0 rows (approximately)
/*!40000 ALTER TABLE `PermissionRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRole` ENABLE KEYS */;

-- Dumping structure for table training.PermissionRoleCode
CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.PermissionRoleCode: ~0 rows (approximately)
/*!40000 ALTER TABLE `PermissionRoleCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRoleCode` ENABLE KEYS */;

-- Dumping structure for table training.Person
CREATE TABLE IF NOT EXISTS `Person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Person') DEFAULT 'Person',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Person: ~0 rows (approximately)
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;

-- Dumping structure for table training.Player
CREATE TABLE IF NOT EXISTS `Player` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Player') DEFAULT 'Player',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `TeamID` int(11) NOT NULL DEFAULT '0',
  `AnotherTeamID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `TeamID` (`TeamID`),
  KEY `AnotherTeamID` (`AnotherTeamID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Player: ~0 rows (approximately)
/*!40000 ALTER TABLE `Player` DISABLE KEYS */;
/*!40000 ALTER TABLE `Player` ENABLE KEYS */;

-- Dumping structure for table training.ProjectPage_Mentors
CREATE TABLE IF NOT EXISTS `ProjectPage_Mentors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectPageID` int(11) NOT NULL DEFAULT '0',
  `MentorDataID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ProjectPageID` (`ProjectPageID`),
  KEY `MentorDataID` (`MentorDataID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.ProjectPage_Mentors: ~0 rows (approximately)
/*!40000 ALTER TABLE `ProjectPage_Mentors` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectPage_Mentors` ENABLE KEYS */;

-- Dumping structure for table training.PropertyData
CREATE TABLE IF NOT EXISTS `PropertyData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PropertyData') DEFAULT 'PropertyData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `AddressFull` varchar(100) DEFAULT NULL,
  `Phone` varchar(14) DEFAULT NULL,
  `VendorName` varchar(30) DEFAULT NULL,
  `VendorPhone` varchar(14) DEFAULT NULL,
  `CategoriesID` int(11) NOT NULL DEFAULT '0',
  `ProvinsiID` int(11) NOT NULL DEFAULT '0',
  `CitiesID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CategoriesID` (`CategoriesID`),
  KEY `ClassName` (`ClassName`),
  KEY `ProvinsiID` (`ProvinsiID`),
  KEY `CitiesID` (`CitiesID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table training.PropertyData: ~5 rows (approximately)
/*!40000 ALTER TABLE `PropertyData` DISABLE KEYS */;
INSERT INTO `PropertyData` (`ID`, `ClassName`, `Created`, `LastEdited`, `Address`, `AddressFull`, `Phone`, `VendorName`, `VendorPhone`, `CategoriesID`, `ProvinsiID`, `CitiesID`) VALUES
	(1, 'PropertyData', '2018-04-16 05:17:18', '2018-04-16 10:22:41', 'Mojokerto', 'Mojokerto', '123124234', 'PT', '03212345', 1, 2, 3),
	(2, 'PropertyData', '2018-04-16 08:27:49', '2018-04-16 09:16:35', 'asdas', 'asdasd', '12312', 'ADSAS', '123123', 0, 1, 1),
	(3, 'PropertyData', '2018-04-16 08:31:11', '2018-04-16 09:14:08', 'Test', 'Testing', '1234', 'asd', '12345', 0, 0, 0),
	(4, 'PropertyData', '2018-04-16 08:36:43', '2018-04-16 09:14:31', 'vvv', 'vvvvv', '111', 'aaa', '222', 5, 2, 2),
	(5, 'PropertyData', '2018-04-18 11:05:38', '2018-04-18 11:06:29', 'ASDD', 'dasda', '1234', 'CV', '12312313', 5, 1, 1);
/*!40000 ALTER TABLE `PropertyData` ENABLE KEYS */;

-- Dumping structure for table training.PropertyData_Facilities
CREATE TABLE IF NOT EXISTS `PropertyData_Facilities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PropertyDataID` int(11) NOT NULL DEFAULT '0',
  `FacilityDataID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PropertyDataID` (`PropertyDataID`),
  KEY `FacilityDataID` (`FacilityDataID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table training.PropertyData_Facilities: ~3 rows (approximately)
/*!40000 ALTER TABLE `PropertyData_Facilities` DISABLE KEYS */;
INSERT INTO `PropertyData_Facilities` (`ID`, `PropertyDataID`, `FacilityDataID`) VALUES
	(2, 3, 1),
	(3, 1, 1),
	(4, 1, 2);
/*!40000 ALTER TABLE `PropertyData_Facilities` ENABLE KEYS */;

-- Dumping structure for table training.ProvinsiData
CREATE TABLE IF NOT EXISTS `ProvinsiData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('ProvinsiData') DEFAULT 'ProvinsiData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Nama` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table training.ProvinsiData: ~3 rows (approximately)
/*!40000 ALTER TABLE `ProvinsiData` DISABLE KEYS */;
INSERT INTO `ProvinsiData` (`ID`, `ClassName`, `Created`, `LastEdited`, `Nama`) VALUES
	(1, 'ProvinsiData', '2018-04-16 05:30:27', '2018-04-16 05:30:27', 'Jawa Timur'),
	(2, 'ProvinsiData', '2018-04-16 05:30:36', '2018-04-16 05:30:36', 'Jawa Tengah'),
	(3, 'ProvinsiData', '2018-04-16 05:30:45', '2018-04-16 05:30:45', 'Jawa Barat');
/*!40000 ALTER TABLE `ProvinsiData` ENABLE KEYS */;

-- Dumping structure for table training.RedirectorPage
CREATE TABLE IF NOT EXISTS `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.RedirectorPage: 0 rows
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;

-- Dumping structure for table training.RedirectorPage_Live
CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.RedirectorPage_Live: 0 rows
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;

-- Dumping structure for table training.RedirectorPage_versions
CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.RedirectorPage_versions: 0 rows
/*!40000 ALTER TABLE `RedirectorPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_versions` ENABLE KEYS */;

-- Dumping structure for table training.SiteConfig
CREATE TABLE IF NOT EXISTS `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `EmailOwner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteConfig: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;
INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `EmailOwner`) VALUES
	(1, 'SiteConfig', '2018-04-16 05:10:17', '2018-04-18 08:46:02', 'Training', 'Training SilverStripe 3.X', 'AdminLTE', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 'admin@mail.com');
/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;

-- Dumping structure for table training.SiteConfig_CreateTopLevelGroups
CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteConfig_CreateTopLevelGroups: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` ENABLE KEYS */;

-- Dumping structure for table training.SiteConfig_EditorGroups
CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteConfig_EditorGroups: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` ENABLE KEYS */;

-- Dumping structure for table training.SiteConfig_ViewerGroups
CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteConfig_ViewerGroups: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` ENABLE KEYS */;

-- Dumping structure for table training.SiteTree
CREATE TABLE IF NOT EXISTS `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','AgentPage','ArticleHolder','ArticlePage','HomePage','ProjectsHolderPage','ProjectPage','PropertyPage','StaffHolder','StaffPage','StudentARPage','StudentPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteTree: 8 rows
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
	(1, 'HomePage', '2018-04-16 05:10:17', '2018-04-18 11:17:07', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
	(2, 'Page', '2018-04-16 05:10:17', '2018-04-18 11:12:45', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
	(3, 'Page', '2018-04-16 05:10:17', '2018-04-18 11:12:56', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 0, 0, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
	(4, 'ErrorPage', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
	(5, 'ErrorPage', '2018-04-16 05:10:18', '2018-04-16 05:10:18', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
	(6, 'PropertyPage', '2018-04-16 05:12:23', '2018-04-16 05:12:45', 'property', 'Property', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
	(7, 'StudentPage', '2018-04-16 09:42:00', '2018-04-16 09:42:12', 'students', 'students', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
	(8, 'StudentARPage', '2018-04-17 05:40:56', '2018-04-17 05:41:14', 'studentar', 'StudentAR', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;

-- Dumping structure for table training.SiteTree_EditorGroups
CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteTree_EditorGroups: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;

-- Dumping structure for table training.SiteTree_ImageTracking
CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteTree_ImageTracking: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;

-- Dumping structure for table training.SiteTree_LinkTracking
CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteTree_LinkTracking: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;

-- Dumping structure for table training.SiteTree_Live
CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','AgentPage','ArticleHolder','ArticlePage','HomePage','ProjectsHolderPage','ProjectPage','PropertyPage','StaffHolder','StaffPage','StudentARPage','StudentPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteTree_Live: 6 rows
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
	(1, 'HomePage', '2018-04-16 05:10:17', '2018-04-18 11:17:07', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
	(4, 'ErrorPage', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
	(5, 'ErrorPage', '2018-04-16 05:10:18', '2018-04-16 05:10:18', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
	(6, 'PropertyPage', '2018-04-16 05:12:23', '2018-04-16 05:12:45', 'property', 'Property', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
	(7, 'StudentPage', '2018-04-16 09:42:00', '2018-04-16 09:42:12', 'students', 'students', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0),
	(8, 'StudentARPage', '2018-04-17 05:40:56', '2018-04-17 05:41:14', 'studentar', 'StudentAR', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;

-- Dumping structure for table training.SiteTree_versions
CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','AgentPage','ArticleHolder','ArticlePage','HomePage','ProjectsHolderPage','ProjectPage','PropertyPage','StaffHolder','StaffPage','StudentARPage','StudentPage','ErrorPage','RedirectorPage','VirtualPage') DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`),
  FULLTEXT KEY `SearchFields` (`Title`,`MenuTitle`,`Content`,`MetaDescription`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteTree_versions: 16 rows
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
	(1, 1, 1, 1, 0, 0, 'Page', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(2, 2, 1, 1, 0, 0, 'Page', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(3, 3, 1, 1, 0, 0, 'Page', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(4, 4, 1, 1, 0, 0, 'ErrorPage', '2018-04-16 05:10:17', '2018-04-16 05:10:17', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(5, 5, 1, 1, 0, 0, 'ErrorPage', '2018-04-16 05:10:18', '2018-04-16 05:10:18', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(6, 6, 1, 0, 1, 0, 'PropertyPage', '2018-04-16 05:12:23', '2018-04-16 05:12:23', 'new-property-page', 'New Property Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(7, 6, 2, 1, 1, 1, 'PropertyPage', '2018-04-16 05:12:23', '2018-04-16 05:12:45', 'property', 'Property', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(8, 7, 1, 0, 1, 0, 'StudentPage', '2018-04-16 09:42:00', '2018-04-16 09:42:00', 'new-student-page', 'New Student Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(9, 7, 2, 1, 1, 1, 'StudentPage', '2018-04-16 09:42:00', '2018-04-16 09:42:12', 'students', 'students', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(10, 8, 1, 0, 1, 0, 'StudentARPage', '2018-04-17 05:40:56', '2018-04-17 05:40:56', 'new-student-a-r-page', 'New Student A R Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(11, 8, 2, 1, 1, 1, 'StudentARPage', '2018-04-17 05:40:56', '2018-04-17 05:41:14', 'studentar', 'StudentAR', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(12, 1, 2, 1, 1, 1, 'HomePage', '2018-04-16 05:10:17', '2018-04-18 08:51:07', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>.</p><p>You can now access the <a href="http://docs.silverstripe.org">developer documentation</a>, or begin the <a href="http://www.silverstripe.org/learn/lessons">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(17, 2, 2, 0, 1, 0, 'Page', '2018-04-16 05:10:17', '2018-04-18 11:12:45', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(16, 3, 2, 0, 1, 0, 'Page', '2018-04-16 05:10:17', '2018-04-18 11:11:58', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(18, 3, 3, 0, 1, 0, 'Page', '2018-04-16 05:10:17', '2018-04-18 11:12:56', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 0, 0, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
	(19, 1, 3, 1, 1, 1, 'HomePage', '2018-04-16 05:10:17', '2018-04-18 11:17:07', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0);
/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;

-- Dumping structure for table training.SiteTree_ViewerGroups
CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.SiteTree_ViewerGroups: ~0 rows (approximately)
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;

-- Dumping structure for table training.StaffPage
CREATE TABLE IF NOT EXISTS `StaffPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.StaffPage: 0 rows
/*!40000 ALTER TABLE `StaffPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `StaffPage` ENABLE KEYS */;

-- Dumping structure for table training.StaffPage_Live
CREATE TABLE IF NOT EXISTS `StaffPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.StaffPage_Live: 0 rows
/*!40000 ALTER TABLE `StaffPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `StaffPage_Live` ENABLE KEYS */;

-- Dumping structure for table training.StaffPage_versions
CREATE TABLE IF NOT EXISTS `StaffPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.StaffPage_versions: 0 rows
/*!40000 ALTER TABLE `StaffPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `StaffPage_versions` ENABLE KEYS */;

-- Dumping structure for table training.StudentAR
CREATE TABLE IF NOT EXISTS `StudentAR` (
  `StudentARID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Phone` varchar(14) NOT NULL,
  `Address` varchar(50) NOT NULL,
  PRIMARY KEY (`StudentARID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table training.StudentAR: ~6 rows (approximately)
/*!40000 ALTER TABLE `StudentAR` DISABLE KEYS */;
INSERT INTO `StudentAR` (`StudentARID`, `Name`, `Phone`, `Address`) VALUES
	(1, 'ikko', '03112', 'baruk'),
	(2, 'Nukman', '12344', 'Mjk'),
	(5, 'Agus', '1234', 'Mjk'),
	(6, 'Yoga', '3455555', 'Sby'),
	(7, 'goo', '123', 'Surabaya'),
	(8, 'foo', '12323', 'Sby'),
	(9, 'carly', '12323', 'sby');
/*!40000 ALTER TABLE `StudentAR` ENABLE KEYS */;

-- Dumping structure for table training.StudentAR_LessonAR
CREATE TABLE IF NOT EXISTS `StudentAR_LessonAR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentAR_ID` int(11) DEFAULT '0',
  `LessonAR_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table training.StudentAR_LessonAR: ~0 rows (approximately)
/*!40000 ALTER TABLE `StudentAR_LessonAR` DISABLE KEYS */;
INSERT INTO `StudentAR_LessonAR` (`ID`, `StudentAR_ID`, `LessonAR_ID`) VALUES
	(1, 1, 1),
	(2, 2, 1);
/*!40000 ALTER TABLE `StudentAR_LessonAR` ENABLE KEYS */;

-- Dumping structure for table training.StudentData
CREATE TABLE IF NOT EXISTS `StudentData` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('StudentData') DEFAULT 'StudentData',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Phone` varchar(14) DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `PhotoID` (`PhotoID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table training.StudentData: ~9 rows (approximately)
/*!40000 ALTER TABLE `StudentData` DISABLE KEYS */;
INSERT INTO `StudentData` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Address`, `Phone`, `PhotoID`) VALUES
	(1, 'StudentData', '2018-04-16 09:59:32', '2018-04-16 10:39:05', 'Antonio', 'Mojokerto', '1231242345', 0),
	(4, 'StudentData', '2018-04-16 10:56:45', '2018-04-16 10:57:35', 'Yudi', 'Surabaya', '1231232', 0),
	(5, 'StudentData', '2018-04-16 10:58:41', '2018-04-16 10:58:41', 'Andre', 'Surabaya', '12312323', 0),
	(6, 'StudentData', '2018-04-16 10:58:55', '2018-04-16 10:58:55', 'Ali', 'Surabaya', '423423', 0),
	(7, 'StudentData', '2018-04-16 10:59:47', '2018-04-17 03:33:04', 'Chika', 'Surabaya', '123234', 19),
	(8, 'StudentData', '2018-04-16 11:03:52', '2018-04-16 11:03:52', 'qwer', 'aasddf', '031', 0),
	(10, 'StudentData', '2018-04-16 11:06:30', '2018-04-16 11:06:30', 'opop', 'opopo', '123', 0),
	(16, 'StudentData', '2018-04-16 11:59:51', '2018-04-16 12:02:15', 'tefdytryytdy', 'rtdytrdytrdyrtr', '031', 14),
	(17, 'StudentData', '2018-04-16 12:02:17', '2018-04-16 12:03:39', 'asdasd', 'asdasd', 'asdasd', 18);
/*!40000 ALTER TABLE `StudentData` ENABLE KEYS */;

-- Dumping structure for table training.StudentData_Friend
CREATE TABLE IF NOT EXISTS `StudentData_Friend` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `StudentDataID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `StudentDataID` (`StudentDataID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- Dumping data for table training.StudentData_Friend: ~13 rows (approximately)
/*!40000 ALTER TABLE `StudentData_Friend` DISABLE KEYS */;
INSERT INTO `StudentData_Friend` (`ID`, `StudentDataID`, `ChildID`) VALUES
	(15, 1, 1),
	(16, 1, 3),
	(20, 4, 1),
	(21, 4, 3),
	(38, 10, 1),
	(39, 10, 5),
	(57, 16, 3),
	(60, 17, 1),
	(61, 7, 3),
	(62, 7, 5),
	(63, 7, 7),
	(64, 7, 8);
/*!40000 ALTER TABLE `StudentData_Friend` ENABLE KEYS */;

-- Dumping structure for table training.TeacherAR
CREATE TABLE IF NOT EXISTS `TeacherAR` (
  `TeacherARID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TeacherARID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table training.TeacherAR: ~0 rows (approximately)
/*!40000 ALTER TABLE `TeacherAR` DISABLE KEYS */;
INSERT INTO `TeacherAR` (`TeacherARID`, `Name`) VALUES
	(1, 'Billy');
/*!40000 ALTER TABLE `TeacherAR` ENABLE KEYS */;

-- Dumping structure for table training.Team
CREATE TABLE IF NOT EXISTS `Team` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Team') DEFAULT 'Team',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Team: ~0 rows (approximately)
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;

-- Dumping structure for table training.Team_Categories
CREATE TABLE IF NOT EXISTS `Team_Categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TeamID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `TeamID` (`TeamID`),
  KEY `CategoryID` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table training.Team_Categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `Team_Categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team_Categories` ENABLE KEYS */;

-- Dumping structure for table training.VirtualPage
CREATE TABLE IF NOT EXISTS `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.VirtualPage: 0 rows
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;

-- Dumping structure for table training.VirtualPage_Live
CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.VirtualPage_Live: 0 rows
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;

-- Dumping structure for table training.VirtualPage_versions
CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table training.VirtualPage_versions: 0 rows
/*!40000 ALTER TABLE `VirtualPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_versions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
