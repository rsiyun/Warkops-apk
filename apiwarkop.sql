-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2022 pada 16.00
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiwarkop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `idadmin` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`idadmin`, `username`, `password`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'rsiyun', '$2y$10$N6SeF/OxsYdOeiO6OzFrn.xAovQzQvOk4PMHRUu8amhemWNZTQWxu', 'VDbsfHyJBTNKAEfKmrJiZ1oMx928xhQtW1SoUTPm', '2021-11-11 05:44:41', '2021-11-11 05:44:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `iddetail` int(10) UNSIGNED NOT NULL,
  `idorder` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hargajual` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `details`
--

INSERT INTO `details` (`iddetail`, `idorder`, `idmenu`, `jumlah`, `hargajual`, `created_at`, `updated_at`) VALUES
(66, 58, 2, 1, 4000, '2022-04-29 06:41:17', '2022-04-29 06:41:17'),
(67, 58, 4, 2, 8000, '2022-04-29 06:41:17', '2022-04-29 06:41:17'),
(68, 58, 11, 1, 1000, '2022-04-29 06:41:17', '2022-04-29 06:41:17'),
(69, 59, 19, 1, 4000, '2022-04-29 06:49:48', '2022-04-29 06:49:48'),
(70, 59, 2, 1, 4000, '2022-04-29 06:49:49', '2022-04-29 06:49:49'),
(71, 59, 4, 1, 4000, '2022-04-29 06:49:49', '2022-04-29 06:49:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `idkategori` int(10) UNSIGNED NOT NULL,
  `idwarkop` int(11) NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`idkategori`, `idwarkop`, `kategori`, `created_at`, `updated_at`) VALUES
(2, 2, 'minuman', '2021-11-10 09:53:46', '2021-11-10 10:03:45'),
(3, 1, 'makanan', '2021-11-10 09:53:52', '2021-11-10 09:53:52'),
(11, 1, 'minuman', '2022-02-08 02:16:39', '2022-02-08 02:16:39'),
(15, 2, 'jajanan', '2022-02-08 04:48:08', '2022-02-08 04:48:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `idmenu` int(10) UNSIGNED NOT NULL,
  `idkategori` int(11) NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgmenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `harga` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`idmenu`, `idkategori`, `menu`, `deskripsi`, `imgmenu`, `harga`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'sprite', 'ini adalah minuman kaleng sprite', 'http://192.168.54.63:8000/upload/imgmenu/sprite.jpg', 4000, 1, '2021-11-11 05:45:27', '2021-11-20 11:01:47'),
(2, 3, 'sprite', 'ini adalah minuman kaleng sprite', 'http://192.168.54.63:8000/upload/imgmenu/sprite.jpg', 4000, 1, '2021-11-11 05:45:34', '2021-11-20 11:02:41'),
(3, 2, 'makanan', 'Nasibakar yang sangat enak', 'http://192.168.54.63:8000/upload/imgmenu/nasibakar.jpg', 4000, 1, NULL, NULL),
(4, 3, 'menu', 'Nasibakar yang sangat enak', 'http://192.168.54.63:8000/upload/imgmenu/nasibakar.jpg', 4000, 1, NULL, NULL),
(5, 15, 'ote-ote', 'ini ote ote enak', 'http://192.168.54.63:8000/upload/imgmenuplastic.png', 1000, 1, '2022-02-28 10:38:14', '2022-02-28 10:38:14'),
(20, 11, 'Jus Alpukat', 'ini adalah Jus alpukat', 'http://192.168.1.5:8000/upload/imgmenu/IMG_20220528_212636037.jpg', 4000, 1, '2022-05-28 13:26:44', '2022-05-28 13:26:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(90, '2021_11_03_070950_create_admins_table', 1),
(91, '2021_11_03_071519_create_kategoris_table', 1),
(92, '2021_11_03_071833_create_pakets_table', 1),
(93, '2021_11_03_071902_create_menus_table', 1),
(94, '2021_11_03_071925_create_orders_table', 1),
(95, '2021_11_03_072404_create_details_table', 1),
(96, '2021_11_03_072441_create_pelanggans_table', 1),
(97, '2021_11_03_072501_create_transaksis_table', 1),
(98, '2021_11_03_072517_create_warkops_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `idorder` int(10) UNSIGNED NOT NULL,
  `idwarkop` int(11) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tglorder` date NOT NULL,
  `status` int(11) NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`idorder`, `idwarkop`, `idpelanggan`, `tglorder`, `status`, `total`, `created_at`, `updated_at`) VALUES
(58, 1, 13, '2022-04-29', 1, 13000, '2022-04-29 06:41:16', '2022-04-29 06:41:16'),
(59, 1, 16, '2022-04-29', 1, 12000, '2022-04-29 06:49:48', '2022-04-29 06:49:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakets`
--

CREATE TABLE `pakets` (
  `idpaket` int(10) UNSIGNED NOT NULL,
  `namapaket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hargapaket` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pakets`
--

INSERT INTO `pakets` (`idpaket`, `namapaket`, `hargapaket`, `created_at`, `updated_at`) VALUES
(5, 'ini mencoba', 7000, '2021-11-11 08:32:43', '2021-11-11 08:34:10'),
(6, 'paket gratis', 7000, '2021-11-11 08:33:13', '2021-11-11 08:33:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `idpelanggan` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapengguna` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtitude` decimal(11,8) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `notelp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgpelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` int(11) NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`idpelanggan`, `username`, `namapengguna`, `password`, `alamat`, `longtitude`, `latitude`, `notelp`, `imgpelanggan`, `action`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'tegar', 'tegarprabowo', '$2y$10$EgTrtoyvSdQgRmgH9q1MoOTidAgI/T3Idw7aRHfCjXrIkCwJA/YW.', 'Graha asri sukodono blok al-8', '112.70852190', '-7.43293830', '08192102', 'http://192.168.54.63:8000/upload/imgpelanggan/pisanggoreng.jpg', 1, 'jw6EmJKDk5Vikn5VXzAiL0QLqMFI0gxHYHme1jKD', '2021-11-10 07:59:53', '2022-02-10 01:32:05'),
(2, 'coba', 'coba', '$2y$10$Pj6xUEZqZ.BtIcAcxengauUMWeQRUKELb6emwBPa6r1NLUNN.HG.K', 'Graha asri sukodono blok ak-21', '112.70852190', '-7.43293830', '12233', 'http://192.168.54.63:8000/upload/imgpelanggan/nasibakar.jpg', 1, 'sxWPyt54i762ECCBQuAeZJmHPT3pYbfb3WgcvTOC', '2021-11-10 08:00:06', '2021-12-02 01:18:30'),
(12, 'iky', 'ikyelo', '$2y$10$snTHAPMX4K58hXzrSOn4MeVkqWiB2cjmcCCHCUleqrL6gNkTgUruq', '', '0.00000000', '0.00000000', '81326555174', 'http://192.168.54.63:8000/upload/imgpelanggan/profiledefault.jpg', 1, 'a2Om4teTjcgDHdhzoY7CoGJ6d7aSDor7XaBLGJaf', '2022-02-10 02:16:34', '2022-02-10 02:16:34'),
(13, 'halon', 'saya', '$2y$10$/cUm13lMtC37S/nSfku8ZOUlIKYCjGEozsKy2vEEg5BHcPgptaC2.', '', '0.00000000', '0.00000000', '81326555174', 'http://192.168.54.63:8000/upload/imgpelanggan/profiledefault.jpg', 1, 'S7IYhBxxDGmq3A4NZYPfMbRuZSqR2QA0DUKwMYCR', '2022-02-10 02:53:23', '2022-04-29 06:37:47'),
(14, 'pram', 'pramkyuh', '$2y$10$kEcVLA7iXOkhLoPgjhfg1e4S9b6Qlq8lPDQOllvkfRFeMiy.92ViW', '', '0.00000000', '0.00000000', '85790959547', 'http://192.168.54.63:8000/upload/imgpelanggan/profiledefault.jpg', 1, 'AYaxnfP6JR9uRkAYYslKmTkjGDNo8Td1yKXMQslS', '2022-04-05 01:31:09', '2022-04-05 01:31:09'),
(15, 'DitoAr', 'Dito Armansyah', '$2y$10$x0Id8YBS2C7pJLgctr7vruLA6Oo.V6t5f6bdBDLyGuJ8ouMgxXg0i', '', '0.00000000', '0.00000000', '88989517235', 'http://192.168.54.63:8000/upload/imgpelanggan/profiledefault.jpg', 1, 'sQyqBqf8scxAbEtkHhR1prKNK2ctnqlD8yMCc9OM', '2022-04-05 06:05:15', '2022-04-05 06:06:04'),
(16, 'rsiyun', 'rsiyun', '$2y$10$6VfHdExLYTVD6HOoHkj/.uuUwkgpdHd2IbEy2Hfv9TM3JOODofz7y', '', '0.00000000', '0.00000000', '81326555174', 'http://192.168.1.8:8000/upload/imgpelanggan/profiledefault.jpg', 1, '5CJhwAFI4uI9mIEN95sdDDJn7m1pmkYsyLPDOdDg', '2022-04-29 06:49:25', '2022-04-29 06:49:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `idtransaksi` int(10) UNSIGNED NOT NULL,
  `idpaket` int(11) NOT NULL,
  `idwarkop` int(11) NOT NULL,
  `tgltransaksi` date NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`idtransaksi`, `idpaket`, `idwarkop`, `tgltransaksi`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2021-03-12', 1, '2021-11-11 08:48:21', '2021-11-11 08:48:21'),
(2, 5, 1, '2021-03-12', 1, '2021-11-11 08:48:51', '2021-11-11 08:48:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warkops`
--

CREATE TABLE `warkops` (
  `idwarkop` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namapengguna` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namawarung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtitude` decimal(11,8) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgwarkop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL,
  `action` int(11) NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `warkops`
--

INSERT INTO `warkops` (`idwarkop`, `username`, `namapengguna`, `namawarung`, `email`, `password`, `longtitude`, `latitude`, `alamat`, `notelp`, `imgwarkop`, `rating`, `action`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'tegar', 'tegarprabowo', 'abdorimie', 'email@gmail.com', '$2y$10$mCdbO1NcvSnhaimc3p3KieWGIEFVIOKM90upcUAryq98oZE40Hgxy', '112.70852190', '-7.43293830', 'tamandhika', '081237192', 'http://192.168.54.63:8000/upload/imgwarkop/bakwangor.jpg', 4.70, 1, 'jl6h7t9Mixd9lC6N2wAUQNBnayNhUeBmM1iygnJE', '2021-11-10 07:59:43', '2021-11-11 06:37:50'),
(2, 'aku', 'kamu', 'akukamu', 'email@gmail.com', '$2y$10$QPS7Xb7Ztd17DaMi2zCuje21vwDi1wl11TF06BxUWvRRM.FhH6zwm', '112.70852190', '-7.43293830', 'tamandhika', '081237192', 'http://192.168.54.63:8000/upload/imgwarkop/warkop2.jpg', 5.00, 1, 'YdRYCVECv0PqpFCPM0okmPerhFCTFH4kaw9dJlGA', '2021-11-17 13:12:57', '2021-11-20 10:24:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`iddetail`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idorder`);

--
-- Indeks untuk tabel `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`idpaket`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `warkops`
--
ALTER TABLE `warkops`
  ADD PRIMARY KEY (`idwarkop`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `idadmin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `iddetail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `idkategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `idmenu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `idorder` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT untuk tabel `pakets`
--
ALTER TABLE `pakets`
  MODIFY `idpaket` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `idpelanggan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `idtransaksi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `warkops`
--
ALTER TABLE `warkops`
  MODIFY `idwarkop` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
