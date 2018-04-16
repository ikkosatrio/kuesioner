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


-- Dumping database structure for kuesioner
CREATE DATABASE IF NOT EXISTS `kuesioner` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kuesioner`;

-- Dumping structure for table kuesioner.config
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` longtext,
  `description` longtext,
  `icon` longtext,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `logo` longtext,
  `meta_deskripsi` text NOT NULL,
  `basic` int(11) DEFAULT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table kuesioner.kuesioner
CREATE TABLE IF NOT EXISTS `kuesioner` (
  `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kuesioner` char(50) NOT NULL DEFAULT '0',
  `judul` varchar(255) DEFAULT '0',
  `skala` int(11) DEFAULT '0',
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_kuesioner`),
  UNIQUE KEY `kode_kuesioner` (`kode_kuesioner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table kuesioner.responden
CREATE TABLE IF NOT EXISTS `responden` (
  `id_responden` int(11) NOT NULL AUTO_INCREMENT,
  `nim` char(50) DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_responden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table kuesioner.soal
CREATE TABLE IF NOT EXISTS `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_kuesioner` int(11) DEFAULT '0',
  `soal` text,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table kuesioner.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nm_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('peserta','admin','kominfo') DEFAULT 'peserta',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
