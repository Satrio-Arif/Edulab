-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2021 at 09:41 AM
-- Server version: 5.7.34-log
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edulabpw_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(12) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(1, '1000', 'Aktif', '24-5-2021');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(12) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `jml` int(12) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL,
  `id_rak` int(12) NOT NULL,
  `id_kategori` int(12) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jml_dipinjam` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `sampul`, `isbn`, `title`, `penerbit`, `pengarang`, `thn_buku`, `jml`, `tgl_masuk`, `id_rak`, `id_kategori`, `created`, `jml_dipinjam`) VALUES
(32, 'BK2', '1621851376_6d6d95fc35258e30296e.jpg', 'ISBN 987-632-5684-80-9', 'Java Untuk Pemula', 'Gramedia', 'Sandhika Galih', '2020', 48, NULL, 1, 29, '2021-05-20 15:03:08', 2),
(33, 'BK37', '1621867103_affbaa48e0338b5ad362.jpg', 'ISBN 978-602-8519-93-9', 'Belajar PHP', 'Kompas', 'Sandhika', '2018', 10, NULL, 1, 29, '2021-05-20 15:03:08', 0),
(36, 'BK39', '1621872961_a0a91d484ffa57e0bb31.jpg', 'ISBN 874-512-6321-43-1', 'Interaksi Manusia Komputer', 'Gramedia', 'Faizatul Amalia', '2020', 29, NULL, 1, 28, '2021-05-23 15:02:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(12) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) DEFAULT NULL,
  `lama_waktu` int(12) DEFAULT NULL,
  `tgl_denda` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(1, 'PJ4', '10000', 1, ''),
(2, 'PJ5', '31000', 31, ''),
(3, 'PJ6', '', NULL, ''),
(4, 'PJ7', '2000', 2, NULL),
(5, 'PJ8', NULL, NULL, NULL),
(6, 'PJ9', NULL, NULL, NULL),
(7, 'PJ10', NULL, NULL, NULL),
(8, 'PJ16', '20000', 2, NULL),
(9, 'PJ17', '4000', 4, NULL),
(10, 'PJ26', '11000', 11, NULL),
(11, 'PJ27', '8000', 8, NULL),
(12, 'PJ28', '8000', 8, NULL),
(13, 'PJ29', NULL, NULL, NULL),
(14, 'PJ30', '10000', 10, NULL),
(15, 'PJ31', NULL, NULL, NULL),
(16, 'PJ32', '9000', 9, NULL),
(17, 'PJ33', NULL, NULL, NULL),
(18, 'PJ34', NULL, NULL, NULL),
(19, 'PJ35', NULL, NULL, NULL),
(20, 'PJ36', NULL, NULL, NULL),
(21, 'PJ37', '11000', 11, NULL),
(22, 'PJ38', '4000', 4, NULL),
(23, 'PJ39', NULL, NULL, NULL),
(24, 'PJ40', NULL, NULL, NULL),
(25, 'PJ41', '3000', 3, NULL),
(26, 'PJ42', NULL, NULL, NULL),
(27, 'PJ42', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(12) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(28, 'Pemrograman'),
(29, 'PHP'),
(38, 'Statistika'),
(39, 'Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(12) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(2, 'AG002', 'nofan', '$2y$10$8udHBzFqOYwTkLSzGwQCPemcauN7tIwUr6l4.xOCCRCcRvh1x6bca', 'Admin', 'Achmad Nofandi', 'Malang', '11-11-2001', 'Laki-laki', 'Ngijo Malang', 'Achmad Nofandi', 'nofan1@gmail.com', '11-11-2020', '1621851174_83e12617100f44a22724.jpg'),
(10, 'AG4', 'sandrian', '$2y$10$8udHBzFqOYwTkLSzGwQCPemcauN7tIwUr6l4.xOCCRCcRvh1x6bca', 'Anggota', 'Sandrian Yulian F', 'Pasuraun', '1-1-2001', 'Laki-laki', 'Pasuruan', 'Sandrian Yulian F', 'sandy@gmail.com', '', '1621872663_09b647b261c16f5ccedf.jpg'),
(18, 'AG5', 'irtiyah', '$2y$10$8udHBzFqOYwTkLSzGwQCPemcauN7tIwUr6l4.xOCCRCcRvh1x6bca', 'Petugas', 'Irtiyah izzaty', 'Lombokk', 'Lombok', 'Perempuan', 'Lombok', '081654789321', 'irtiyah@gmail.com', '22-5-2021', '1621857357_4fe5bc8cb1591b3c5915.jpg'),
(37, 'AG19', 'satrioarif', '$2y$10$FqaiDU0GUR/512upUE06tOOG.0hY3L0eCbvFleCTReed2zZf7M30S', 'Anggota', 'Satrio Arif Budiman', 'malang', '', 'Laki-laki', 'danau toba barat', 'Satrio Arif Budiman', 'satrioarif@student.ub.ac.id', '', '1621873919_843b224d2ce1bd1fa252.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(12) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(12) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(5, 'PJ5', 'AG4', 'BK2', 'Dikembalikan', '20-05-2021', 3, '24-05-2021', '23-04-2021'),
(10, 'PJ9', 'AG4', 'BK2', 'Dikembalikan', '20-05-2021', 3, '21-05-2021', '23-05-2021'),
(27, 'PJ27', 'AG4', 'BK2', 'Dikembalikan', '13-05-2021', 3, '24-05-2021', '16-05-2021'),
(28, 'PJ28', 'AG4', 'BK2', 'Dikembalikan', '13-05-2021', 3, '24-05-2021', '16-05-2021'),
(30, 'PJ30', 'AG002', 'BK2', 'Dipinjam', '13-05-2021', 2, '', '15-05-2021'),
(36, 'PJ36', 'AG002', 'BK2', 'Dipinjam', '24-05-2021', 2, '', '26-05-2021'),
(44, 'PJ42', 'AG3', 'BK2', 'Dipinjam', '24-05-2021', 2, '', '26-05-2021');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(12) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak 1'),
(2, 'Rak 2'),
(3, 'Rak 3'),
(9, 'Rak 4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
