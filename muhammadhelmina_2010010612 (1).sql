-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jan 2023 pada 09.02
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muhammadhelmina_2010010612`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_istri`
--

CREATE TABLE `tbl_istri` (
  `idistri` int(11) NOT NULL,
  `nm_istri` varchar(50) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `warga_negara` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_istri`
--

INSERT INTO `tbl_istri` (`idistri`, `nm_istri`, `tmp_lahir`, `tgl_lahir`, `warga_negara`, `agama`, `pekerjaan`, `alamat`, `pendidikan`) VALUES
(4, 'Sinta', 'Banjarmasin', '2002-09-08', 'Indonesia', 'Islam', 'Guru', 'Sundai', 'S1'),
(6, 'Hanabi', 'Banjarmasin', '2002-01-07', 'Indonesia', 'Islam', 'Ibu Rumah Tangga', 'Kuin Selatan', 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemeriksaan`
--

CREATE TABLE `tbl_pemeriksaan` (
  `idpmrn` int(11) NOT NULL,
  `tgl_daftar` varchar(100) NOT NULL,
  `tgl_nikah` varchar(100) NOT NULL,
  `nm_suami` varchar(50) NOT NULL,
  `nm_istri` varchar(50) NOT NULL,
  `jam_nikah` varchar(50) NOT NULL,
  `maskawin` varchar(50) NOT NULL,
  `tmp_nikah` varchar(50) NOT NULL,
  `nm_saksi` varchar(50) NOT NULL,
  `nm_penghulu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pemeriksaan`
--

INSERT INTO `tbl_pemeriksaan` (`idpmrn`, `tgl_daftar`, `tgl_nikah`, `nm_suami`, `nm_istri`, `jam_nikah`, `maskawin`, `tmp_nikah`, `nm_saksi`, `nm_penghulu`) VALUES
(18, '2024-09-24', '2024-10-01', 'Stefanus', 'lia', '5', '3 unta dan 10kg emas', 'gedung putih', 'putin', 'jokowi'),
(19, '2022-03-09', '2022-04-10', 'Supri', 'Sanah', '8', 'Emas', 'Gedung', 'Helmi', 'Koko'),
(20, '2023-01-01', '2023-01-30', 'Matun', 'Sanah', '9', 'Berlian', 'Rumah', 'Helmi', 'Anto'),
(22, '2023-01-01', '2023-01-25', 'Koko', 'Lia', '9', 'Berlian', 'Kantor Agama', 'Helmi', 'Iwan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suami`
--

CREATE TABLE `tbl_suami` (
  `idsuami` int(11) NOT NULL,
  `nm_suami` varchar(50) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `warga_negara` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_suami`
--

INSERT INTO `tbl_suami` (`idsuami`, `nm_suami`, `tmp_lahir`, `tgl_lahir`, `warga_negara`, `agama`, `pekerjaan`, `alamat`, `pendidikan`) VALUES
(3, 'Koko', 'Belitung', '2022-09-09', 'Indonesia', 'Protestan', 'Buruh', 'Sudam', 'S1'),
(4, 'Helmi', 'Banjarmasin', '2022-09-08', 'Indonesia', 'Islam', 'Freelance', 'Kuin', 'S1'),
(6, 'Ricky', 'Pangkalanbun', '2002-12-08', 'Indonesia', 'Islam', 'TNI', 'Sultan Adam', 'S1'),
(7, 'Stefanus', 'Tanjung', '2002-01-20', 'Indonesia', 'Protestan', 'Polisi', 'Sultan Adam', 'S1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_istri`
--
ALTER TABLE `tbl_istri`
  ADD PRIMARY KEY (`idistri`);

--
-- Indeks untuk tabel `tbl_pemeriksaan`
--
ALTER TABLE `tbl_pemeriksaan`
  ADD PRIMARY KEY (`idpmrn`);

--
-- Indeks untuk tabel `tbl_suami`
--
ALTER TABLE `tbl_suami`
  ADD PRIMARY KEY (`idsuami`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_istri`
--
ALTER TABLE `tbl_istri`
  MODIFY `idistri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pemeriksaan`
--
ALTER TABLE `tbl_pemeriksaan`
  MODIFY `idpmrn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_suami`
--
ALTER TABLE `tbl_suami`
  MODIFY `idsuami` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
