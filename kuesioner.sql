-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 05:09 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuesioner`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
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
  `meta_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `email`, `phone`, `address`, `description`, `icon`, `instagram`, `facebook`, `logo`, `meta_deskripsi`, `basic`, `meta_keyword`) VALUES
(1, 'Sistem Informasi Kuesioner', '', '801217596251', 'Universitas 17 Agustus 1945 Surabaya', 'Diskominfo Magang<br>', 'icon1.png', '', '', 'logo4.png', '																																																																								\r\n											\r\n											\r\n											\r\n											\r\n											\r\n											', 5, '																																																																								\r\n											\r\n											\r\n											\r\n											\r\n											\r\n											');

-- --------------------------------------------------------

--
-- Table structure for table `detail_jawaban`
--

CREATE TABLE `detail_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_jawaban`
--

INSERT INTO `detail_jawaban` (`id_jawaban`, `id_soal`, `jawaban`) VALUES
(0, 10, '1'),
(0, 11, '2'),
(0, 12, '2'),
(0, 13, '2'),
(0, 14, '2'),
(0, 15, '2'),
(0, 16, '2'),
(0, 17, '2'),
(0, 18, '2'),
(0, 19, '2'),
(0, 20, '2'),
(0, 21, '2'),
(0, 22, '3'),
(0, 23, '3'),
(0, 24, '4'),
(0, 25, '3'),
(0, 26, '4'),
(0, 27, '3'),
(0, 28, '2'),
(0, 29, '3');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_kuesioner` int(11) NOT NULL,
  `id_responden` int(11) NOT NULL,
  `hasil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `id_kuesioner`, `id_responden`, `hasil`) VALUES
(0, 1, 1461404973, 34);

-- --------------------------------------------------------

--
-- Table structure for table `kuesioner`
--

CREATE TABLE `kuesioner` (
  `id_kuesioner` int(11) NOT NULL,
  `kode_kuesioner` char(50) NOT NULL DEFAULT '0',
  `judul` varchar(255) DEFAULT '0',
  `skala` int(11) DEFAULT '0',
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuesioner`
--

INSERT INTO `kuesioner` (`id_kuesioner`, `kode_kuesioner`, `judul`, `skala`, `deskripsi`) VALUES
(1, 'kuesioner1', 'Kuesioner Penelitian Pemanfaatan Metode Human Performance Model Untuk Prototyping Website (Studi Kasus: Website warta17agustus.com)', 5, '<p>Petunjuk Pengisian Kuesioner</p>\r\n\r\n<ol>\r\n	<li>Pendahuluan<br />\r\n	Kuesioner ini dibuat untuk mengetahui tingkat usabilitas pada website warta17agustus.com, jika terdapat kekurangan pada website tersebut maka akan dilakukan perancangan ulang.</li>\r\n	<li>Petunjuk Pengisian<br />\r\n	a. Isi identitas Bapak/Ibu/Saudara/i dibawah ini dengan benar<br />\r\n	b. Bukalah website warta17agustus.com<br />\r\n	c. Isilah kuesioner sesuai dengan kebenaran yang ada pada website tersebut<br />\r\n	d. Berilah tanda (V) pada kolom yang tersedia dan pilih sesuai hati nurani Anda<br />\r\n	e. Ada lima alternatif jawaban, yang menandakan skala 1-5 dengan rincian sebagai berikut:<br />\r\n	&nbsp; &nbsp;1 = Sangat Tidak Setuju<br />\r\n	&nbsp; &nbsp;2 = Tidak Setuju&nbsp;<br />\r\n	&nbsp; &nbsp;3 = Cukup Setuju<br />\r\n	&nbsp; &nbsp;4 = Setuju<br />\r\n	&nbsp; &nbsp;5 = Sangat Setuju</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `responden`
--

CREATE TABLE `responden` (
  `id_responden` int(11) NOT NULL,
  `nim` char(50) DEFAULT '0',
  `nama` varchar(255) DEFAULT NULL,
  `instansi` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responden`
--

INSERT INTO `responden` (`id_responden`, `nim`, `nama`, `instansi`, `jurusan`) VALUES
(1, '1461404738', 'Tutus Dwiyanto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(2, '1461404659', 'Agus Tri S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(3, '1211408389', 'Choirul Anwar', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(4, '1461404906', 'Fatkhur Rochman', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(5, '1461604897', 'Yuan Eko ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(6, '1461404784', 'Eko Setyo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(7, '1461404747', 'Khoirul Anwar', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(8, '1511405193', 'Satrio P P', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(9, '1211508913', 'Alfiazah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(10, '1211508580', 'Novi Dwi Retnowati', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(11, '1211508845', 'Ketut Raditya W', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(12, '1461404623', 'Bachtiar Eka S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(13, '1461404889', 'Dwika Lovita ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(14, '1461600190', 'Diah Ayu Novitasari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(15, '1461600256', 'Diah Dwi Ristanti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(16, '1461600254', 'Murniawati G', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(17, '1461600217', 'Yuniar Ayu P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(18, '1231503323', 'Lismawati', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan'),
(19, '1231503263', 'Winarsih', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan'),
(20, '1511700114', 'Yeyen Rafika', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(22, '1511700102', 'Febriana N', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(23, '1511700065', 'Envy Putri Pancarina Prismi', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(24, '1211700288', 'Dandy Satrya H', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(25, '1211700285', 'Agnes Iftitahun', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(26, '1211700294', 'Abellia Permatasari', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(27, '1211700295', 'Fahira Nadifah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(28, '1211700308', 'M. Fikri Alfadel', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(29, '1211700293', 'Alfirra Ramadhanie', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(30, '1461404708', 'Moch. Saifuddin Zuhri', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(31, '1461404873', 'Yogie Takbir', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(32, '1461404753', 'Arsyan Donniswara', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(33, '1461404856', 'Ahmad Fajrillah Azizy', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(34, '511304918', 'Shahnaz', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(35, '1221600123', 'Dewi Anggraeni', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(36, '1461404796', 'M. Faisal F', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(37, '1151600267', 'R. Salsabila Nur', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(38, '1151600243', 'Lisa Purwita Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(39, '1151600241', 'Yunita R', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(40, '1151600228', 'Ika Fitri Sriliana', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(41, '1511505446', 'N.J.M Kamila', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(42, '1511505395', 'Fahira Indah O', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(43, '1511700071', 'Syafrie Ma\'arief', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(44, '1511700032', 'Nuansari Nurhandini', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(45, '1511700020', 'Diah Pitaloka', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(46, '1511700004', 'Maulina Bunga A.', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(47, '1511700017', 'Imam Faid', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(48, '1511700049', 'Ulil Amriatul', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(49, '1511700039', 'Oriza Avrelly W', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(50, '1511700081', 'Putri Aprilia C', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(51, '1511700029', 'Farihta Rafidika', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(52, '1511700036', 'Fais Imron', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(53, '1511405125', 'Rida Wahyu Utami', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(54, '1511405203', 'Rodha Uwais Almirza', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(55, '1511405134', 'Dinda Fathimah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(56, '1511405165', 'Emilia Novita Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(57, '1511405076', 'Nur Asmeila S T', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(58, '1511405184', 'Afryda', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(59, '1461404680', 'Anang Dwi Rismawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(60, '1461404973', 'Ikko Satrio Yulian Dwi Rahadian', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(61, '1461404746', 'Arga Haris', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(62, '1461404914', 'Rina Munik Aprilia K', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(63, '1461404905', 'Shokibul Kahfi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(64, '1461404947', 'Ratna Aprilia Hastuti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(65, '1461404962', 'Hidayati Renita Putri', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(66, '1461404913', 'Faiz Nahroni', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(67, '1461404917', 'Mochammad Sayid Ibnu Yahya', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(68, '1461404901', 'Citra Devi Ariyanti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(69, '1221408834', 'Windi Leolita W', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(70, '1221408828', 'Yunifa Sri Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(71, '1221408859', 'Yunia Nisa N F', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(72, '1221408887', 'Jefry Rahmad Kriswanto', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(73, '1221408883', 'Widyani Rahayu Kinasih', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(74, '1221408817', 'Shelawati Arinda', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(75, '1221408876', 'Anna Zulfa Amaliyah', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(76, '1211508556', 'Noval Candra R', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(77, '1221408784', 'Annisa Alwy', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(78, '1461404841', 'Eko Suheriyanto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(79, '1461600056', 'Aldion Amirrul E', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(80, '1211408349', 'Wiki N W', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(81, '1211408123', 'Fucha Fitri K', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(82, '1211408122', 'Aisya R K', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(83, '1211408131', 'Nugrahayu Puspita A', 'Universitas 17 Agustus 1945 Surabaya', ' Manajemen'),
(84, '1111408528', 'Rimazaiyana Firdaus', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Negara'),
(85, '1211408493', 'Septian Artdika Prasetya', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(86, '1211408422', 'Bayu Sasmito', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(87, '1211408454', 'Zainul Arif Hidayat', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(88, '1211408412', 'Achmad Faisol', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(89, '1211408407', 'Tri Oka Desta C', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(90, '1211408487', 'Ricky Dwi F', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(91, '1211408461', 'Fany Setyawan', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(92, '1461404980', 'Mochammad Eka', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(93, '1461404895', 'Krusita Oktaviani W', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(94, '1461404916', 'Auliah Novianti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(95, '1511405197', 'Rosita Mila Khoirun Nisa', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(96, '1461600080', 'Bagus Jati Wiguna', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(97, '1461600048', 'Kheivino Bambang S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(98, '1511405083', 'Defta Wimanda Pribadi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(99, '1621400664', 'Laily Budiarti', 'Universitas 17 Agustus 1945 Surabaya', 'Sastra Jepang'),
(100, '1461600047', 'Ilvi Pratiana S Alnun', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(101, '1461404932', 'Albert Wattimena', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(102, '1461600025', 'Amsyar Salam', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(103, '1461600081', 'Rismandu Permana P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(104, '1461600027', 'M. Ichwan Dwi Prasetyo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(105, '1461404890', 'Fitri Nurhayati', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(106, '1461600041', 'Iga Ariansyah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(107, '1461600075', 'Ivan Rozak', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(108, '1461404951', 'Andrianto Cahyono Putro', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(109, '1461404715', 'Rany Kurnia Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(110, '1461404845', 'Riga Kurniawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(111, '110', 'V F', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(112, '111', 'F B N', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(113, '1511405057', 'Wahyu Mayroro P', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(114, '1511404985', 'Gregorius Kurniawan B Y K', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(115, '1511405055', 'Anton Panji S', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(116, '1511405163', 'Rizky Amelia', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(117, '1511600040', 'Moch Ainur R', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(118, '1511500006', 'Farida Munawaroh', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(119, '1511405156', 'Reni Oktaviana C', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(120, '1461404674', 'Linda Novita Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(121, '1461404654', 'Febriya Dyah Safitri ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(122, '1461404869', 'Nadia Maharani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(123, '1221408769', 'Anggraini Azizah', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(124, '1311600198', 'Rizky Prayogi P', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum'),
(125, '1311600203', 'Hanief Kurniawan', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum'),
(126, '1311600170', 'Matias Hariawan W', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum'),
(127, '1311600034', 'Doni Rahmat A', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum'),
(128, '1431700063', 'Intan Yuli Riyanti', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil'),
(129, '1461505197', 'Maharani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(130, '1211508834', 'Agnes F.W', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(131, '1211508876', 'Vicky Divela', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(132, '1211508568', 'Diyar Vonselisi Pradina ', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(133, '1211508778', 'Bela Aulia', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(134, '1461404642', 'Aditya Putra Daniswara', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(135, '1461402597', 'Ainul Rohman ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(136, '1461404600', 'Dedi Putra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(137, '1121600043', 'Puji Sri Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(138, '1121600018', 'Nindi Ayu T S', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(139, '1211408035', 'Nadia', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(140, '1221509221', 'Irma Arnike Saputri', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(141, '1211408491', 'Widiana Putri', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(142, '1211600308', 'Maria Margaretha', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(143, '1211600202', 'Yogi Agil Prastyo', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(144, '1511405096', 'Diana Tri Setyawati', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(145, '1511405074', 'Hosiana M P', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(146, '1511404991', 'Ika Rizky', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(147, '411306173', 'Riska Agus Tianingsih', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Industri'),
(148, '1461505304', 'Faiz Damar H', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(149, '1151501133', 'Tiara Parwita O', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(150, '1431502823', 'Aliyatul Raidah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil'),
(151, '1511700040', 'Amaylia Dewi A', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(152, '1511700218', 'M. Dzulhiham An Najih', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(153, '1461600209', 'Zuchal Ari Bastian', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(154, '1461600189', 'Rasyid Dwi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(155, '1461600212', 'Bryan Wahyu P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(156, '1461600206', 'Nizar Zulmi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(157, '1441600012', 'Fardianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Arsitektur'),
(158, '1451700039', 'Eksa A M', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Elektro'),
(159, '1451502287', 'Wisnu Triwijaya', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Elektro'),
(160, '1221408825', 'Daniel Alex', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(161, '1611403092', 'Desi Sulistyarini', 'Universitas 17 Agustus 1945 Surabaya', 'Sastra Inggris'),
(162, '1221408697', 'Desi Wulandari', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(163, '1461404829', 'Vicky Rivaldi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(164, '1461404958', 'Axel Aziz Erino', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(165, '311301439', 'Tito Tambunan', 'Universitas 17 Agustus 1945 Surabaya', 'Hukum'),
(166, '1461404918', 'Aditya Zaadur R', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(167, '1611403108', 'Ulfa Amalia', 'Universitas 17 Agustus 1945 Surabaya', 'Sastra Inggris'),
(168, '1211408510', 'Mahriyah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(169, '511304827', 'Andriana Anggraini W', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(170, '1461404758', 'Demianus Kambu', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(171, '1461404823', 'Dian Oktavia S T', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(172, '1461404957', 'Wahyu Bhekti Pertiwi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(173, '1461404788', 'Martafina Natalia Takdare', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(174, '1461404858', 'Arif Nasruddin', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(175, '1461404954', 'Anggi Surya P', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(176, '1221700113', 'Safira Yuli Ananta', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(177, '1221700132', 'Dharma Widhi Rahayu', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(178, '1121408108', 'Siti Fadila', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(179, '1461600136', 'Mohammad Eko H', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(180, '1461404783', 'Fahira Zahrotul Maulidyah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(181, '1421404467', 'Agung Deni Iriyanto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Mesin'),
(182, '1461404930', 'Linda Ayu Niswatin', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(183, '1211700032', 'Dewi Chandra', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(184, '1461404678', 'Wahyu Irawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(185, '1461404806', 'Ryan Eka Pramuditha', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(186, '1461404820', 'Bachtiar Yuliardi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(187, '1461404966', 'Miftakhul Khoir', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(188, '1461404972', 'Ahmad Ibrahim Gani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(189, '1461404911', 'Martin Dwiky Setiawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(190, '1461404963', 'Christian Adikusuma Tanjung', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(191, '1221408693', 'Andri Prasetya', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(192, '1421404567', 'Mochamad Yusuf', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Mesin'),
(193, '1211510002', 'Tionisyah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(194, '1221408754', 'Aris Setiyono', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(195, '1151600169', 'Nida Naziah', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(196, '1151600216', 'Novita Agustina M', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(197, '1151600215', 'Jihan Kinanah', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(198, '1231600004', 'Dian Rizky P', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan'),
(199, '1231600017', 'Irmanda Azalia', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan'),
(200, '1231600059', 'Zelika Dewi Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan'),
(201, '1231600060', 'Varisa P F', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan'),
(202, '1211508671', 'Siti Jumrotul Fadilah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(203, '1211508683', 'Anggraeni Fitria Febrianti', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(204, '1211508657', 'Fauziyah Fadhilah K', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(205, '1231600106', 'Dhaivi S N', 'Universitas 17 Agustus 1945 Surabaya', 'Ekonomi Pembangunan'),
(206, '1461404743', 'Adam Teguh Saputra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(207, '1211408297', 'Putri Bella', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(208, '1211408247', 'Nelly', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(209, '1511405139', 'Anggi Gusti Pradhana', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(210, '1121600044', 'Sofi Diah Melati', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(211, '1121600032', 'Niaza One', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(212, '1511405205', 'Bangun Raharjo', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(213, '1121600040', 'Dwi Cahya Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(214, '1121600012', 'Erikha Julia Kartikasari', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(215, '1121600036', 'Nur Aulia R', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(216, '1121600078', 'Febbi N', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(217, '1121600035', 'Veryda Ayu', 'Universitas 17 Agustus 1945 Surabaya', 'Administrasi Bisnis'),
(218, '1511405179', 'Tejananto Kurniawan', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(219, '218', 'CHA', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(220, '1221408718', 'Eka Agustiningsih', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(221, '1511404978', 'R. Aziz Normansyah Wijaya', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(222, '221', 'NMSN', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(223, '1151501244', 'Theresia Ine Sintya Sidi', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(224, '1151501277', 'Alfi Febriana', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(225, '1151700272', 'Dhia Prabatasari Boymau', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(226, '1151700200', 'Alifah Dinda Putri Septyani', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(227, '1151700217', 'Yana Ekarina Tali', 'Universitas 17 Agustus 1945 Surabaya', 'Ilmu Komunikasi'),
(228, '1511505394', 'Ana Lailatul M', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(229, '1511505442', 'Rr. Astriet Puspitasari C', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(230, '1511505375', 'Nurul Qomariah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(231, '1511505269', 'Metha Apri Bella', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(232, '1511505423', 'Franssyah Loudriyan Andre Yulianto', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(233, '1511505457', 'Ratna Rachmadani', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(234, '1511505283', 'Yuniar Pramadhita', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(235, '1511505376', 'Dina Azzahra', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(236, '1511405051', 'Aminatus Zahroh', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(237, '1511405063', 'Lisa Purnamasari', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(238, '1211508893', 'Mita Diana Sari', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(239, '1211508900', 'Misbahul Mudiyah', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(240, '1211508854', 'Hafina', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(241, '1511405022', 'Nurul Dwi Komariyah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(242, '1511405084', 'Putri Kumaladewi Abdullah', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(243, '1461404691', 'Albertus Ferriyan S', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(244, '1461404826', 'Henry Indra Wardhana', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(245, '1461404805', 'Rahmat Abdul Ghaffar', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(246, '1461404810', 'Verry Alan Dwi Prastyo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(247, '1461404812', 'Muhammad Abdul Aziz', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(248, '1461404574', 'Muzayyanah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(249, '1461404610', 'Rendy Ari Sandy', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(250, '1461404714', 'Rastha Himawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(251, '1461404777', 'Andy Setianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(252, '1461404771', 'Dewa Gede A M', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(253, '1461404785', 'Mufti Chabib Mubarok', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(254, '1461404789', 'Ali Aridho', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(255, '1461404792', 'Devi Anggraeni', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(256, '1461404791', 'Muhammad Argadinata F', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(257, '1461404795', 'Hugo Sanca R', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(258, '1461404861', 'B\'tary Agatha Meidy', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(259, '1461404865', 'Muvi Delvin Suraida', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(260, '1461404876', 'Ade Oktaviani', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(261, '1461404888', 'Widia Risthi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(262, '1461404764', 'Siti Magfiroh ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(263, '1461404760', 'Edo Halim Perdana', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(264, '1461404733', 'Bimo Prakoso', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(265, '1461404755', 'Yusuf Putra Anugrah', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(266, '1461404797', 'Bevi Firman Dito', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(267, '1461404842', 'Reynaldi Ariston Oki', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(268, '1461404847', 'Achmad Riza Ferdianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(269, '1461404849', 'Duwi Hariono ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(270, '1461404852', 'Nendi Candra Putra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(271, '1461404850', 'Raden Ilham Wahdani Saputra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(272, '1461404862', 'Samudra Proviano', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(273, '1461404864', 'Okki Dwi Syahrizal', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(274, '1461404875', 'Muhammad Syaiful Arif', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(275, '1461404813', 'Fatrurozi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(276, '1461404825', 'Rizky Puji Trianto', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(277, '1461404831', 'Rizki Fajar', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(278, '1461404833', 'Maulana Azizir', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(279, '1461404837', 'Wahyu Setiono', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(280, '1464104884', 'Muhammad Ridho', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(281, '1461404903', 'Yatim Rahman', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(282, '1461404927', 'Misbach Surury', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(283, '1461404953', 'Awang Bagus Permadi', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(284, '1461404968', 'Sena Aji Putra', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(285, '1221408951', 'Titik Pujiyanti', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(286, '1431402716', 'Nur Alamsyah Firdaus', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil'),
(287, '441301879', 'Muhammad Marzuki ', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Arsitektur'),
(288, '1211408226', 'Yuli Dini Ayu Sintia', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(289, '1211408223', 'Rosa Claudia Rosidi', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(290, '1211408657', 'Arya Bagus Wicaksono', 'Universitas 17 Agustus 1945 Surabaya', 'Manajemen'),
(291, '421304297', 'Bangkit Suryo Prayogo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Mesin'),
(292, '1221408665', 'Sischa Putri utami', 'Universitas 17 Agustus 1945 Surabaya', 'Akuntansi'),
(293, '1511405166', 'Lia Fatma Yunita', 'Universitas 17 Agustus 1945 Surabaya', 'Psikologi'),
(294, '1461404910', 'Pratiwi Aulia', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(295, '1431402781', 'Moh. Khafids Amrullah R', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil'),
(296, '1431402723', 'Abid Hamdan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Sipil'),
(297, '11656', 'Adhetia Teddy Bujana', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(298, '11727', 'Fandya Priyandra Zahran', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(299, '11650', 'Achmad Ghozy A B', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(300, '11674', 'Amelya Suci Ramadhani', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(301, '11689', 'Azalia Azhari Nova', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(302, '11661', 'Afrillia Nindy Olyviasyah', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(303, '11855', 'Yesinta', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(304, '11730', 'Fitri Astutik', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(305, '11700', 'Dondi Tri Cahyo', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(306, '11725', 'Eunke Emmanuela B', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(307, '11601', 'Rizki Mulyadi', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(308, '11531', 'Isbat', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(309, '11485', 'Dhea Nanda Safira', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(310, '11513', 'Febriani Puspitasari', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(311, '11486', 'Dheajeng Putri Ayu', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(312, '11562', 'Nabila Purwita Anggraini', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(313, '11488', 'Dilla Andisyah F', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(314, '11432', 'A Cantika P', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(315, '11449', 'Arlin Khodinaud D', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(316, '11461', 'Berania Nanda S', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(317, '11644', 'Zaisa Della', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(318, '11573', 'Nur Aida Safitri', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(319, '11474', 'Conny Larung I', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(320, '11571', 'Nindya Kirana Rahma N', 'SMA 17 Agustus 1945 Surabaya', 'IPS'),
(321, '1915', 'Demas Reinaldy', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(322, '1895', 'Alvito Dimas W', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(323, '3', 'Ahmad Ridza Abdillah', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(324, '1898', 'Anugrah Cada K', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(325, '1919', 'Vio Hadi', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(326, '6', 'Aurellia Elsha Yolandha', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(327, '7', 'Dina Kamelia', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(328, '8', 'Al Alimu Nur Rohman ', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(329, '1891', 'Ahmad Nizar', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(330, '1896', 'Asti Nabilah', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(331, '1894', 'Aliefya Shalfadillah', 'SMP 17 Agustus 1945 Surabaya', 'Tidak Ada'),
(332, '01', 'Latifah', 'Universitas 17 Agustus 1945 Surabaya', 'BSI'),
(333, '02', 'Dwi', 'Universitas 17 Agustus 1945 Surabaya', 'BSI'),
(334, '03', 'Kusnan', 'Universitas 17 Agustus 1945 Surabaya', 'BSI'),
(335, '04', 'Ika Lestari', 'Universitas 17 Agustus 1945 Surabaya', 'BSI'),
(336, '05', 'Aris', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(337, '06', 'Reny', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(338, '20460170736', 'Puteri Noraisya Primandari', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(339, '20460160702', 'Dwi Harini', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(340, '20460160708', 'Elsen Ronaldo', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(341, '145529', 'Dodi Krisnawan', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(342, '20450020554', 'Anton Breva Yunanda', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika'),
(343, '20410960490', 'Muhammad Sidqon', 'Universitas 17 Agustus 1945 Surabaya', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_kuesioner` int(11) DEFAULT '0',
  `soal` text,
  `jenis` enum('positif','negatif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `id_kuesioner`, `soal`, `jenis`) VALUES
(10, 1, 'Saya sepertinya akan sering menggunakan website ini', 'positif'),
(11, 1, 'Saya melihat ada bagian fitur dari website ini yang cukup merepotkan, yang semestinya hal itu tidak perlu terjadi', 'negatif'),
(12, 1, 'Saya rasa website ini mudah digunakan', 'positif'),
(13, 1, 'Saya sepertinya membutuhkan bantuan teknisi agar bisa lancar menggunakan website ini', 'negatif'),
(14, 1, 'Saya rasa fitur-fitur atau menu-menu website ini sudah terintegrasi dengan baik satu sama lain', 'positif'),
(15, 1, 'Saya menemukan terlalu banyak ketidak konsistenan dalam website ini', 'negatif'),
(16, 1, 'Saya pikir orang-orang akan sangat cepat bisa menggunakan website ini', 'positif'),
(17, 1, 'Saya merasa mantap menggunakan website ini', 'positif'),
(18, 1, 'Saya mesti belajar banyak hal terlebih dahulu sebelum memulai menggunakan website ini', 'negatif'),
(19, 1, 'Saya merasa kecepatan membuka awal website adalah cepat', 'positif'),
(20, 1, 'Saya pikir informasi dan data selalu pada website ini selalu up to date', 'positif'),
(21, 1, 'Saya merasa informasi yang disediakan website bermanfaat dan relevan dengan kebutuhan pengguna', 'positif'),
(22, 1, 'Saya rasa tampilan interface atau antarmuka website monoton', 'negatif'),
(23, 1, 'Saya menemukan banyak ruang kosong pada website yang seharusnya bisa ditambahkan konten lain.', 'negatif'),
(24, 1, 'Saya merasa tampilan interface atau antarmuka website atraktif.', 'positif'),
(25, 1, 'Saya menemukan banyaknya pemborosan konten pada website ini (kurangnya penataan konten yang baik)', 'negatif'),
(26, 1, 'Saya menemukan beberapa menu yang kontennya harus diperbaharui atau di update (video, berita foto, dll).', 'negatif'),
(27, 1, 'Saya merasa masih kurangnya kesesuaian pada penataan menu dan isinya', 'negatif'),
(28, 1, 'Saya menemukan beberapa link dengan website lain yang terkait', 'positif'),
(29, 1, 'Saya merasa mudah untuk memberikan tanggapan/komentar pada informasi yang terdapat di website', 'positif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nm_user` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('peserta','admin','kominfo') DEFAULT 'peserta'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nm_user`, `email`, `password`, `role`) VALUES
(1, 'admin', 'yuhhu', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(3, 'asd@gmail.com', 'asd@gmail.com', 'ceedf12f8fe3dc63d35b2567a59b93bd62ff729a', 'peserta'),
(4, 'info', 'info@gmai.com', 'b32a5c2fac69078c6043b4dc705b964e122f19ab', 'kominfo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `kuesioner`
--
ALTER TABLE `kuesioner`
  ADD PRIMARY KEY (`id_kuesioner`),
  ADD UNIQUE KEY `kode_kuesioner` (`kode_kuesioner`);

--
-- Indexes for table `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id_responden`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kuesioner`
--
ALTER TABLE `kuesioner`
  MODIFY `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `responden`
--
ALTER TABLE `responden`
  MODIFY `id_responden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
