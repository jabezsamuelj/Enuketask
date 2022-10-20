-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 02:13 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_20_095949_task', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '0fdb0d2351aa4d98155104315b5d89ee1d19ac5c3101be227448eea7aa807d71', '[\"*\"]', NULL, NULL, '2022-10-20 05:07:29', '2022-10-20 05:07:29'),
(2, 'App\\Models\\User', 1, 'API TOKEN', '850ba1391ee8786949bf2daec63135c8fd560697435135a11a1b67569f9f5df6', '[\"*\"]', '2022-10-20 05:26:08', NULL, '2022-10-20 05:12:52', '2022-10-20 05:26:08'),
(3, 'App\\Models\\User', 1, 'API TOKEN', 'e72e8b31072ee904c6c99ff4384c695bc63f5683e07039a5975b82e0b1755c3a', '[\"*\"]', '2022-10-20 05:26:51', NULL, '2022-10-20 05:26:20', '2022-10-20 05:26:51'),
(4, 'App\\Models\\User', 1, 'API TOKEN', 'a53859cfe03bcacc1b55d9719eeff0cf47a8b2d802ae29a0a53b9f928a129d1a', '[\"*\"]', '2022-10-20 05:37:03', NULL, '2022-10-20 05:32:32', '2022-10-20 05:37:03'),
(5, 'App\\Models\\User', 1, 'API TOKEN', 'b7f33fbe6919bdd848e15ad54555be631235ee29adb95deaea04aea8aa31568a', '[\"*\"]', NULL, NULL, '2022-10-20 05:33:54', '2022-10-20 05:33:54'),
(6, 'App\\Models\\User', 1, 'API TOKEN', 'dd13930574ba85be5f8b5516df6af9ffed7d3008d74c39a5366e59c146290900', '[\"*\"]', '2022-10-20 05:37:39', NULL, '2022-10-20 05:36:07', '2022-10-20 05:37:39'),
(7, 'App\\Models\\User', 1, 'API TOKEN', '1fe7c01a55a846f21f60a803fcbb0ab28a62831c558c36294d81b61022325362', '[\"*\"]', NULL, NULL, '2022-10-20 05:42:07', '2022-10-20 05:42:07'),
(8, 'App\\Models\\User', 1, 'API TOKEN', 'f9ec06e0dd615bfab7b3df9d835863fd08b71637250c9afb78dd80103464e1d1', '[\"*\"]', NULL, NULL, '2022-10-20 05:42:45', '2022-10-20 05:42:45'),
(9, 'App\\Models\\User', 1, 'API TOKEN', 'f8fdd43cc0f5a9301dd912c37a766db89635b403ad513e420e7e3d75e6274644', '[\"*\"]', NULL, NULL, '2022-10-20 05:45:18', '2022-10-20 05:45:18'),
(10, 'App\\Models\\User', 1, 'API TOKEN', '0edbbab1f8e830bc3e3958b866543e5050056f0aef824b84a7bfce080f368961', '[\"*\"]', NULL, NULL, '2022-10-20 05:45:50', '2022-10-20 05:45:50'),
(11, 'App\\Models\\User', 1, 'API TOKEN', 'd43c5a66567d2ee4f48d83f9fe8e5a9d1e7dd612b2e18b3eb569c063bc369437', '[\"*\"]', '2022-10-20 06:18:22', NULL, '2022-10-20 05:47:35', '2022-10-20 06:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'image/IGKBgmux6zfG4xxRv7lU3pn80BPfIWnFUUz2z660.jpg', '2022-10-20 06:09:36', '2022-10-20 06:09:36'),
(2, 'image/qSWc2Ry3jUW12MoMeYPbW5BoveLAQalme34Ie9Cd.jpg', '2022-10-20 06:11:09', '2022-10-20 06:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', NULL, '$2y$10$5GrxIdGZJWS6E/Bz8v519ezOEHVIj4nb.zjPqOabCti7aJXv8h7U.', NULL, '2022-10-20 05:07:29', '2022-10-20 05:07:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
