-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2024 pada 11.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egp_presensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_18_131302_create_table_presensi', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '06aeacbd0c9b63cbfb190bda1b6d7bbe9f997bb0063f7df36aabed6be8355523', '[\"*\"]', '2024-05-21 05:21:59', NULL, '2024-05-21 05:01:27', '2024-05-21 05:21:59'),
(2, 'App\\Models\\User', 1, 'auth_token', 'a04ecce39b666aafca620928789c9510e8b27afcef1143f428d644f2d9a44318', '[\"*\"]', '2024-05-21 05:19:34', NULL, '2024-05-21 05:14:52', '2024-05-21 05:19:34'),
(3, 'App\\Models\\User', 1, 'auth_token', 'f29e88a02b26b67e9a73c2466cbc9811eb92ad344b312e93aaf6f9489578664b', '[\"*\"]', '2024-05-21 06:36:55', NULL, '2024-05-21 06:21:52', '2024-05-21 06:36:55'),
(4, 'App\\Models\\User', 2, 'auth_token', 'dd857f61e6553ff5282d4d537846dc838c29998d6c0dfa483ed4c2d2719f2a89', '[\"*\"]', '2024-05-21 06:37:53', NULL, '2024-05-21 06:37:10', '2024-05-21 06:37:53'),
(5, 'App\\Models\\User', 1, 'auth_token', '215e703335a30f2f931248326bed654e478dc98554d93861e06b0a6c02f0cc03', '[\"*\"]', '2024-05-30 10:17:55', NULL, '2024-05-30 09:42:57', '2024-05-30 10:17:55'),
(6, 'App\\Models\\User', 1, 'auth_token', '84d8bac396aa9824d4e42bd19cb5a16f13e7c88f8f7c42f06e846eb40900d0e1', '[\"*\"]', '2024-05-31 00:57:09', NULL, '2024-05-30 09:48:58', '2024-05-31 00:57:09'),
(7, 'App\\Models\\User', 2, 'auth_token', '5b83bdc0336d35a415757d97a70ccbb5cee9bd3e61fd5fc91b395b1d4eb9c3c4', '[\"*\"]', '2024-05-30 10:30:22', NULL, '2024-05-30 10:21:26', '2024-05-30 10:30:22'),
(8, 'App\\Models\\User', 1, 'auth_token', '4fb1bbb0627023189e70c1fc98bfe756ffe88d1d387086703a52c97daee2c0e2', '[\"*\"]', '2024-05-31 01:45:11', NULL, '2024-05-31 01:03:06', '2024-05-31 01:45:11'),
(9, 'App\\Models\\User', 1, 'auth_token', '25bd9d8343f7734bf2bf30a014263428bd4f732866a00e8cee1bcd99848e77d1', '[\"*\"]', '2024-05-31 02:20:53', NULL, '2024-05-31 02:20:32', '2024-05-31 02:20:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensis`
--

CREATE TABLE `presensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `latitude` decimal(12,5) NOT NULL,
  `longitude` decimal(12,5) NOT NULL,
  `tanggal` date NOT NULL,
  `masuk` time NOT NULL,
  `pulang` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `presensis`
--

INSERT INTO `presensis` (`id`, `user_id`, `latitude`, `longitude`, `tanggal`, `masuk`, `pulang`, `created_at`, `updated_at`) VALUES
(1, 1, -6.98180, 110.41207, '2024-05-21', '12:15:27', '12:15:34', '2024-05-21 05:15:27', '2024-05-21 05:15:34'),
(2, 2, -6.98180, 110.41207, '2024-05-21', '13:37:22', NULL, '2024-05-21 06:37:22', '2024-05-21 06:37:22'),
(3, 1, -6.98180, 110.41207, '2024-05-30', '16:44:35', '16:45:03', '2024-05-30 09:44:35', '2024-05-30 09:45:03'),
(4, 2, -6.98180, 110.41207, '2024-05-30', '17:21:37', NULL, '2024-05-30 10:21:37', '2024-05-30 10:21:37'),
(5, 1, -6.98180, 110.41207, '2024-05-31', '07:57:09', '08:04:16', '2024-05-31 00:57:09', '2024-05-31 01:04:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pegawai', 'pegawai1@gmail.com', NULL, '$2y$12$HWwW8nhMppMfS6kZwaiujeigv9eBHusorpr22GG37sASoBAfVSDv2', NULL, '2024-05-21 04:51:09', '2024-05-21 04:51:09'),
(2, 'Pegawai', 'pegawai2@gmail.com', NULL, '$2y$12$JrF2Nj2wzO8H6WEfm4fK3uI9/f7mGAgpDJoV0ZUFgvCAjlZXrnxWC', NULL, '2024-05-21 04:52:21', '2024-05-21 04:52:21');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `presensis`
--
ALTER TABLE `presensis`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `presensis`
--
ALTER TABLE `presensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
