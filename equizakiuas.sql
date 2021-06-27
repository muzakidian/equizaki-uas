-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2021 pada 12.23
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `equizakiuas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Cold Stone Ice Cream', 'coldstone.png', '15000', '7', 'Rasa Coklat dipadu dengan Moka', '2019-11-13 17:00:00', '2021-06-27 03:21:52'),
(2, 'Cupcake Ice Cream', 'icecream_cupcake.png', '10000', '20', 'Bermacam rasa buah-buahan', '2019-11-13 17:00:00', '2021-06-21 03:17:31'),
(3, 'Neapolitan', 'neapolitan.png', '20000', '20', 'Rasa Vanila, Strawberry, Coklat', '2019-11-13 17:00:00', '2019-11-13 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_19_105340_create_barangs_table', 1),
(5, '2021_06_19_110143_create_pesanans_table', 1),
(6, '2021_06_19_110346_create_pesanan_details_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(9, 1, '2021-06-21', '1', 574, 15000, '2021-06-21 03:24:52', '2021-06-21 03:24:56'),
(10, 1, '2021-06-21', '1', 741, 15000, '2021-06-21 03:40:48', '2021-06-21 03:40:54'),
(11, 1, '2021-06-21', '1', 307, 15000, '2021-06-21 03:42:40', '2021-06-21 03:42:44'),
(12, 1, '2021-06-21', '1', 324, 15000, '2021-06-21 03:44:09', '2021-06-21 03:44:14'),
(13, 1, '2021-06-21', '1', 734, 15000, '2021-06-21 03:44:41', '2021-06-21 03:44:45'),
(14, 1, '2021-06-21', '1', 399, 15000, '2021-06-21 09:10:00', '2021-06-21 09:10:07'),
(15, 1, '2021-06-21', '1', 736, 15000, '2021-06-21 10:30:39', '2021-06-21 10:30:43'),
(16, 1, '2021-06-21', '1', 555, 15000, '2021-06-21 10:33:58', '2021-06-21 10:34:03'),
(17, 1, '2021-06-21', '1', 465, 15000, '2021-06-21 10:41:31', '2021-06-21 10:41:36'),
(18, 1, '2021-06-21', '1', 241, 15000, '2021-06-21 10:46:19', '2021-06-21 10:46:24'),
(19, 1, '2021-06-21', '1', 855, 15000, '2021-06-21 10:50:16', '2021-06-21 10:50:20'),
(20, 1, '2021-06-27', '1', 684, 15000, '2021-06-27 02:01:42', '2021-06-27 02:02:06'),
(21, 1, '2021-06-27', '1', 949, 15000, '2021-06-27 03:21:47', '2021-06-27 03:21:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(9, 1, 9, 1, 15000, '2021-06-21 03:24:52', '2021-06-21 03:24:52'),
(10, 1, 10, 1, 15000, '2021-06-21 03:40:48', '2021-06-21 03:40:48'),
(11, 1, 11, 1, 15000, '2021-06-21 03:42:40', '2021-06-21 03:42:40'),
(12, 1, 12, 1, 15000, '2021-06-21 03:44:09', '2021-06-21 03:44:09'),
(13, 1, 13, 1, 15000, '2021-06-21 03:44:41', '2021-06-21 03:44:41'),
(14, 1, 14, 1, 15000, '2021-06-21 09:10:00', '2021-06-21 09:10:00'),
(15, 1, 15, 1, 15000, '2021-06-21 10:30:39', '2021-06-21 10:30:39'),
(16, 1, 16, 1, 15000, '2021-06-21 10:33:58', '2021-06-21 10:33:58'),
(17, 1, 17, 1, 15000, '2021-06-21 10:41:31', '2021-06-21 10:41:31'),
(18, 1, 18, 1, 15000, '2021-06-21 10:46:19', '2021-06-21 10:46:19'),
(19, 1, 19, 1, 15000, '2021-06-21 10:50:16', '2021-06-21 10:50:16'),
(20, 1, 20, 1, 15000, '2021-06-27 02:01:43', '2021-06-27 02:01:43'),
(21, 1, 21, 1, 15000, '2021-06-27 03:21:47', '2021-06-27 03:21:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'muzakidian', 'muzakidian1@gmail.com', NULL, '$2y$10$Xg39DKoWElZzlezJEEX2N.6l2z3SaxUGsL/YnKMVhnD.R7sPa025i', 'Sudimoro', '08133341326', '79LUmI5SnW5FwrAZtYE9aoOQ7C4qGfJe3z64dCnbTCbiJbZtxm00cM8nYYtz', '2021-06-20 11:08:48', '2021-06-20 11:19:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
