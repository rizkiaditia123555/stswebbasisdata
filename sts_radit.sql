-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Mar 2024 pada 01.03
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sts_radit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(10) NOT NULL,
  `kode_brg` varchar(8) NOT NULL,
  `nama_brg` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_brg`, `nama_brg`, `kategori`, `merk`, `jumlah`) VALUES
(64379, '09', 'bubu', 'ki', 'nmcbhjdrg', 3),
(64380, 'jhruytur', 'yayat', 'bhghbrb', 'oli', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(20) NOT NULL,
  `tgl_pinjam` datetime NOT NULL,
  `tgl_kembali` datetime NOT NULL,
  `no_identitas` varchar(50) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `keperluan` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `id_login` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `tgl_pinjam`, `tgl_kembali`, `no_identitas`, `kode_barang`, `jumlah`, `keperluan`, `status`, `id_login`) VALUES
(2432, '2024-03-03 00:00:00', '2024-03-06 00:00:00', '09', 'LAT01', 6, 'Belajar', 'siswa', 24234),
(54321, '2021-12-03 00:00:00', '2021-12-04 00:00:00', '02', 'LAT03', 8, 'Belajar', 'siswa', 1408);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `no_identitas` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `no_identitas`, `nama`, `status`, `username`, `password`, `role`) VALUES
(1234, '01', 'baba', 'admin', 'babo', 'a8698009bce6d1b8c2128eddefc25aad', 'admin'),
(1408, '09', 'yayat', 'siswa', 'yayat2', '827ccb0eea8a706c4c34a16891f84e7b', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64381;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
