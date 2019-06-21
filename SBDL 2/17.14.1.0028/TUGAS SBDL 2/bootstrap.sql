-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2019 at 09:24 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootstrap`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idguru` int(11) NOT NULL,
  `nip` int(30) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idguru`, `nip`, `nama_guru`, `jenis_kelamin`, `alamat`) VALUES
(10, 1234, 'cahyo purnomo', 'L', 'Jl sukmawati No 12'),
(20, 1235, 'firza khusuma', 'L', 'Jl kamboja No 1'),
(30, 1236, 'fifit fitriani', 'P', 'Jl imam bonjol No 87'),
(40, 1237, 'fitriani kusuma', 'P', 'Jl anurah No 11'),
(50, 1238, 'fauzi raman', 'L', 'Jl sawit No 66'),
(60, 1239, 'ramon key', 'L', 'Jl imam syaf No 13'),
(70, 1233, 'syafek ulin', 'L', 'Jl kemayoran No 33'),
(80, 1232, 'wulan kusuma', 'P', 'Jl kemayoran No 99'),
(90, 1231, 'cahya wijaya', 'P', 'Jl kemayoran No 55'),
(100, 1230, 'memen safei', 'L', 'Jl keamkmuran No 12');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `idguru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idkelas`, `nama_kelas`, `idguru`) VALUES
(1, 'mawar', 10),
(2, 'kamboja', 20),
(3, 'mekar', 30),
(4, 'aman', 40),
(5, 'sehat', 50),
(6, 'sekarsari', 60),
(7, 'makmur', 70),
(8, 'jujur', 80),
(9, 'juara', 90),
(11, 'pintar', 100);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `idmatapelajaran` int(11) NOT NULL,
  `nama_mata_pelajaran` varchar(50) NOT NULL,
  `idguru` int(11) NOT NULL,
  `idnilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`idmatapelajaran`, `nama_mata_pelajaran`, `idguru`, `idnilai`) VALUES
(200, 'PKN', 10, 50),
(300, 'MTK', 20, 51),
(400, 'IPS', 30, 52),
(500, 'IPA', 40, 53),
(600, 'fisika', 50, 54),
(700, 'kimia', 60, 55),
(800, 'OR', 70, 56),
(900, 'Bahasa Inggris', 80, 57),
(1000, 'Bahasa sunda', 90, 58),
(1100, 'Sosiologi', 80, 59);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `idnilai` int(11) NOT NULL,
  `idsiswa` int(11) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`idnilai`, `idsiswa`, `nilai`) VALUES
(60, 1000, 80),
(61, 1001, 80),
(62, 1002, 75),
(63, 1003, 75),
(64, 1004, 85),
(65, 1005, 70),
(66, 1006, 90),
(67, 1007, 90),
(68, 1008, 90),
(69, 1009, 85);

-- --------------------------------------------------------

--
-- Stand-in structure for view `profil siswa`
-- (See below for the actual view)
--
CREATE TABLE `profil siswa` (
`idsiswa` int(11)
,`nis` int(30)
,`nama_siswa` varchar(30)
,`tempat_lahir` varchar(30)
,`jenis_kelamin` char(1)
,`semester` varchar(10)
,`tahun_ajaran` varchar(10)
,`alamat_siswa` varchar(200)
,`nama_kelas` varchar(50)
,`nama_ayah` varchar(30)
,`nama_ibu` varchar(30)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(11) NOT NULL,
  `nis` int(30) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `idkelas` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `alamat_siswa` varchar(200) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `idkelas`, `semester`, `tahun_ajaran`, `alamat_siswa`, `nama_ayah`, `nama_ibu`) VALUES
(1000, 123456789, 'khoirun safei', 'jakarta', '2015-12-16', 'L', 1, 'ganjil', '2013', 'Jl kyimanjuntak No 11', 'memen khoirun', 'kokom sulistri'),
(1001, 123456788, 'kokom ', 'jakarta', '2015-08-25', 'P', 2, 'ganjil', '2013', 'Jl kemayoran No 65', 'supratman', 'ijem siti'),
(1002, 123456787, 'armila', 'jakarta', '2015-11-13', 'P', 3, 'ganjil', '2013', 'Jl makmur No 13', 'babam komar', 'eem sulastri'),
(1003, 123456786, 'siti nurmala', 'sumatra', '2015-09-04', 'P', 4, 'ganjil', '2013', 'Jl sulaeman No 12', 'komar bahrun', 'entin '),
(1004, 123456785, 'nur falah', 'sumatra', '2015-10-26', 'P', 5, 'ganjil', '2013', 'Jl sulaeman No 13', 'jejen makmur', 'sri kusuma'),
(1005, 123456784, 'jejen ', 'sumatra', '2015-03-24', 'L', 6, 'ganjil', '2013', 'Jl sulaeman No 15', 'makmur', 'omah sri yuli'),
(1006, 123456783, 'khomar ', 'jakarta', '2015-10-16', 'L', 7, 'ganjil', '2013', 'Jl kemayoran No 87', 'komarupin ', 'sri yuli'),
(1007, 123456782, 'ijem syah', 'jakarta', '2015-05-19', 'P', 8, 'ganjil', '2013', 'Jl kemayoran No 88', 'ipin ', 'yuli sri'),
(1008, 123456781, 'beis ', 'jakarta', '2015-10-01', 'P', 9, 'ganjil', '2013', 'Jl kemayoran No 88', 'upin ', 'ros'),
(1009, 123456780, 'iis ', 'jakarta', '2015-01-07', 'P', 11, 'ganjil', '2013', 'Jl kemayoran No 89', 'uup puhin', 'rosa ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `level_user` varchar(150) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`) VALUES
(1, 'Mochamad amran al fariz', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'Regha', 'member', 'aa08769cdcb26674c6706093503ff0a3', 'member');

-- --------------------------------------------------------

--
-- Structure for view `profil siswa`
--
DROP TABLE IF EXISTS `profil siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `profil siswa`  AS  select `siswa`.`idsiswa` AS `idsiswa`,`siswa`.`nis` AS `nis`,`siswa`.`nama_siswa` AS `nama_siswa`,`siswa`.`tempat_lahir` AS `tempat_lahir`,`siswa`.`jenis_kelamin` AS `jenis_kelamin`,`siswa`.`semester` AS `semester`,`siswa`.`tahun_ajaran` AS `tahun_ajaran`,`siswa`.`alamat_siswa` AS `alamat_siswa`,`kelas`.`nama_kelas` AS `nama_kelas`,`siswa`.`nama_ayah` AS `nama_ayah`,`siswa`.`nama_ibu` AS `nama_ibu`,`nilai`.`nilai` AS `nilai` from ((`siswa` join `kelas` on((`kelas`.`idkelas` = `siswa`.`idkelas`))) join `nilai` on((`nilai`.`idsiswa` = `siswa`.`idsiswa`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`idmatapelajaran`),
  ADD KEY `idguru` (`idguru`),
  ADD KEY `idnilai` (`idnilai`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`idnilai`),
  ADD KEY `idsiswa` (`idsiswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD KEY `idkelas` (`idkelas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_ibfk_1` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
