-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2024 pada 08.13
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusmarshall`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `buku_id` bigint(3) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`buku_id`, `judul`, `penulis`, `penerbit`, `tahun_terbit`) VALUES
(551, 'Resign\r\n\r\n', 'Almira Bastari', 'Gramedia\r\n\r\n', '2022\r\n\r\n'),
(552, 'Antologi Rasa\r\n\r\n', 'Ika Natassa\r\n\r\n', 'Gramedia\r\n\r\n', '2021\r\n\r\n'),
(553, 'Laut Bercerita\r\n\r\n', 'Leila S.\r\n\r\n', 'Gramedia\r\n\r\n\r\n', '2023'),
(554, 'Pelabuhan Terakhir\r\n\r\n', 'Roidah\r\n\r\n', 'Erlangga\r\n\r\n\r\n', '2022'),
(555, 'Berwisata ke Surga\r\n\r\n', 'Restu Fitria\r\n\r\n', 'Erlangga\r\n\r\n', '2023\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '1234'),
('marsall', 'marsall');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjman`
--

CREATE TABLE `peminjman` (
  `pinjam_id` int(3) NOT NULL,
  `user_id` int(4) NOT NULL,
  `buku_id` int(3) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjman`
--

INSERT INTO `peminjman` (`pinjam_id`, `user_id`, `buku_id`, `tanggal_pinjam`, `tanggal_kembali`, `status`) VALUES
(201, 1011, 553, '2024-02-01', '2024-02-06', 'kembali'),
(202, 1013, 553, '2024-02-06', '2024-02-10', 'kembali'),
(203, 1011, 551, '2024-02-07', '2024-02-11', 'kembali'),
(204, 1015, 552, '2024-02-12', '2024-02-20', 'kembali'),
(205, 1015, 552, '2024-02-20', '2024-02-24', 'tidak kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `nama_lengkap`, `alamat`) VALUES
(1011, 'titi@gmail.com\r\n\r\n\r\n\r\n', 'Titi Padmasari', 'Jl. Mirama Bandung'),
(1012, 'rosi@gmail.com\r\n\r\n\r\n\r\n', 'Rosiana ', 'Jl. S. Parman Malang'),
(1013, 'arima@gmail.com', 'Arima Nanda\r\n\r\n\r\n', 'Jl. Bunga Cengkeh Malang'),
(1014, 'davin@gmail.com\r\n\r\n\r\n\r\n', 'Davin Nugroho', 'Komplek AU Singosari Malang'),
(1015, 'kemal@gmail.com\r\n\r\n\r\n', 'Kemal Airlangga', 'Jl. Intan Surabaya\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `peminjman`
--
ALTER TABLE `peminjman`
  ADD PRIMARY KEY (`pinjam_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
