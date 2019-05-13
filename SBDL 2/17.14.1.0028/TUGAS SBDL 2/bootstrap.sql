-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2019 pada 12.09
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

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
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `idguru` int(11) NOT NULL,
  `nip` int(30) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
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
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `idguru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
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
-- Struktur dari tabel `mata pelajaran`
--

CREATE TABLE `mata pelajaran` (
  `idmatapelajaran` int(11) NOT NULL,
  `nama_mata_pelajaran` varchar(50) NOT NULL,
  `idguru` int(11) NOT NULL,
  `idnilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata pelajaran`
--

INSERT INTO `mata pelajaran` (`idmatapelajaran`, `nama_mata_pelajaran`, `idguru`, `idnilai`) VALUES
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
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `idnilai` int(11) NOT NULL,
  `idsiswa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`idnilai`, `idsiswa`) VALUES
(60, 1000),
(61, 1001),
(62, 1002),
(63, 1003),
(64, 1004),
(65, 1005),
(66, 1006),
(67, 1007),
(68, 1008),
(69, 1009);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
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
-- Dumping data untuk tabel `siswa`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `level_user` varchar(150) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`) VALUES
(1, 'Mochamad amran al fariz', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'Regha', 'member', 'aa08769cdcb26674c6706093503ff0a3', 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indeks untuk tabel `mata pelajaran`
--
ALTER TABLE `mata pelajaran`
  ADD PRIMARY KEY (`idmatapelajaran`),
  ADD KEY `idguru` (`idguru`),
  ADD KEY `idnilai` (`idnilai`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`idnilai`),
  ADD KEY `idsiswa` (`idsiswa`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD KEY `idkelas` (`idkelas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mata pelajaran`
--
ALTER TABLE `mata pelajaran`
  ADD CONSTRAINT `mata pelajaran_ibfk_1` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
