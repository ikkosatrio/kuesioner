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

-- Dumping data for table kuesioner.config: ~0 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `name`, `email`, `phone`, `address`, `description`, `icon`, `instagram`, `facebook`, `logo`, `meta_deskripsi`, `basic`, `meta_keyword`) VALUES
	(1, 'Sistem Informasi Kuesioner', '', '083849940637', 'Universitas 17 Agustus 1945 Surabaya', 'Diskominfo Magang<br>', 'icon1.png', '', '', 'logo4.png', '																																																												\r\n											\r\n											\r\n											\r\n											\r\n											', 5, '																																																												\r\n											\r\n											\r\n											\r\n											\r\n											');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

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

-- Dumping data for table kuesioner.kuesioner: ~0 rows (approximately)
/*!40000 ALTER TABLE `kuesioner` DISABLE KEYS */;
INSERT INTO `kuesioner` (`id_kuesioner`, `kode_kuesioner`, `judul`, `skala`, `deskripsi`) VALUES
	(1, 'asd', 'qwes', 5, '<p>asd sdfsdf as</p>\r\n');
/*!40000 ALTER TABLE `kuesioner` ENABLE KEYS */;

-- Dumping structure for table kuesioner.responden
CREATE TABLE IF NOT EXISTS `responden` (
  `id_responden` int(11) NOT NULL AUTO_INCREMENT,
  `nim` char(50) DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_responden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner.responden: ~0 rows (approximately)
/*!40000 ALTER TABLE `responden` DISABLE KEYS */;
INSERT INTO `responden` (`id_responden`, `nim`, `nama`, `instansi`, `jurusan`) VALUES
	(1, '1213', 'test', 'test', 'test'),
	(2, '123123123', 'qweq', 'qwertyrty', 'qw');
/*!40000 ALTER TABLE `responden` ENABLE KEYS */;

-- Dumping structure for table kuesioner.soal
CREATE TABLE IF NOT EXISTS `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_kuesioner` int(11) DEFAULT '0',
  `soal` text,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner.soal: ~2 rows (approximately)
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
INSERT INTO `soal` (`id_soal`, `id_kuesioner`, `soal`) VALUES
	(5, 1, 'test'),
	(6, 1, 'test ke dua\r\n');
/*!40000 ALTER TABLE `soal` ENABLE KEYS */;

-- Dumping structure for table kuesioner.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nm_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('peserta','admin','kominfo') DEFAULT 'peserta',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table kuesioner.user: ~2 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id_user`, `nm_user`, `email`, `password`, `role`) VALUES
	(1, 'admin', 'yuhhu', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
	(3, 'asd@gmail.com', 'asd@gmail.com', 'ceedf12f8fe3dc63d35b2567a59b93bd62ff729a', 'peserta'),
	(4, 'info', 'info@gmai.com', 'b32a5c2fac69078c6043b4dc705b964e122f19ab', 'kominfo');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
