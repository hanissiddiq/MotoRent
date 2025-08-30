-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2025 at 06:08 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_motorent`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('available','unavailable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `plate_number`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Xpander', 'BK5676ZQ', 'unavailable', '', '2025-07-26 21:09:58', '2025-08-29 10:38:45'),
(2, 'Panther Capsule', 'BL9822FP', 'available', '', '2025-07-26 21:09:58', '2025-08-29 07:57:47'),
(3, 'Xenia', 'BK6678ZQ', 'available', '', '2025-07-26 21:09:58', '2025-08-29 08:04:04'),
(4, 'Mazda CX-5', 'BK8890ZL', 'available', '', '2025-07-26 21:09:58', '2025-08-29 09:07:08'),
(5, 'Honda CR-V', 'BK1234YZ', 'available', '', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(7, 'sen', 'BC5656QZ', 'available', NULL, '2025-08-29 09:27:22', '2025-08-29 09:59:42'),
(8, 'seni', 'BC5653QZ', 'unavailable', NULL, '2025-08-29 09:30:26', '2025-08-29 09:54:53'),
(12, 'Honda CRV', 'BK5564ZK', 'available', 'cars/20250829_174320_CRV.JPG', '2025-08-29 10:43:20', '2025-08-29 10:43:20'),
(13, 'maz', 'wa8000qw', 'available', 'cars/20250829_180716_mazda.JPG', '2025-08-29 11:07:16', '2025-08-29 11:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `car_id` bigint UNSIGNED NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `user_id`, `car_id`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 12, 2, '2025-07-20 03:03:31', '2025-07-20 10:03:31', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(2, 8, 4, '2025-07-22 21:34:11', '2025-07-23 01:34:11', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(3, 5, 2, '2025-07-22 10:33:19', '2025-07-22 16:33:19', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(4, 7, 3, '2025-07-22 09:17:49', '2025-07-22 15:17:49', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(5, 2, 3, '2025-07-23 14:53:42', '2025-07-23 18:53:42', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(6, 5, 1, '2025-07-20 21:57:20', '2025-07-21 02:57:20', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(7, 10, 4, '2025-07-20 21:54:08', '2025-07-21 00:54:08', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(8, 8, 1, '2025-07-21 05:00:17', '2025-07-21 06:00:17', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(9, 11, 3, '2025-07-23 23:17:01', '2025-07-24 00:17:01', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(10, 2, 2, '2025-07-23 19:06:06', '2025-07-24 03:06:06', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(11, 17, 4, '2025-08-29 07:31:09', NULL, '2025-08-29 07:31:09', '2025-08-29 07:31:09'),
(12, 2, 1, '2025-08-29 07:43:00', NULL, '2025-08-29 07:43:00', '2025-08-29 07:43:00'),
(13, 2, 1, '2025-08-29 07:48:16', NULL, '2025-08-29 07:48:16', '2025-08-29 07:48:16'),
(14, 2, 2, '2025-08-29 07:48:24', NULL, '2025-08-29 07:48:24', '2025-08-29 07:48:24'),
(15, 2, 1, '2025-08-29 07:54:29', NULL, '2025-08-29 07:54:29', '2025-08-29 07:54:29'),
(16, 2, 4, '2025-08-29 07:56:24', NULL, '2025-08-29 07:56:24', '2025-08-29 07:56:24'),
(17, 2, 2, '2025-08-29 07:57:47', NULL, '2025-08-29 07:57:47', '2025-08-29 07:57:47'),
(18, 2, 3, '2025-08-29 08:04:04', NULL, '2025-08-29 08:04:04', '2025-08-29 08:04:04'),
(19, 2, 1, '2025-08-29 08:09:37', NULL, '2025-08-29 08:09:37', '2025-08-29 08:09:37'),
(20, 2, 4, '2025-08-29 09:07:08', NULL, '2025-08-29 09:07:08', '2025-08-29 09:07:08'),
(22, 2, 8, '2025-08-29 09:54:53', NULL, '2025-08-29 09:54:53', '2025-08-29 09:54:53'),
(23, 2, 7, '2025-08-29 09:59:42', NULL, '2025-08-29 09:59:42', '2025-08-29 09:59:42'),
(24, 2, 1, '2025-08-29 10:38:45', NULL, '2025-08-29 10:38:45', '2025-08-29 10:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint UNSIGNED NOT NULL,
  `loan_id` bigint UNSIGNED NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `recorded_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `loan_id`, `latitude`, `longitude`, `recorded_at`, `created_at`, `updated_at`) VALUES
(1, 5, '-6.4313120', '106.9643260', '2025-07-25 03:36:13', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(2, 5, '-6.2001630', '106.9489320', '2025-07-25 01:41:19', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(3, 5, '-6.2556660', '106.7087810', '2025-07-25 01:28:40', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(4, 5, '-6.1306810', '106.9482940', '2025-07-21 05:58:25', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(5, 5, '-6.1861830', '106.8829700', '2025-07-22 05:53:34', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(6, 10, '-6.1987220', '106.8346190', '2025-07-26 10:18:22', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(7, 10, '-6.4160030', '106.8523250', '2025-07-20 21:12:56', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(8, 10, '-6.3510420', '106.8116530', '2025-07-24 04:38:04', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(9, 10, '-6.3323740', '106.6780960', '2025-07-26 18:30:21', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(10, 10, '-6.3866720', '106.7514390', '2025-07-21 14:21:17', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(11, 3, '-6.1357370', '106.9180250', '2025-07-22 17:42:43', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(12, 3, '-6.4463460', '106.9431920', '2025-07-23 21:14:15', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(13, 3, '-6.4354610', '106.7493720', '2025-07-24 02:44:29', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(14, 3, '-6.3706980', '106.9960120', '2025-07-26 13:42:28', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(15, 3, '-6.4038570', '106.6764310', '2025-07-24 21:24:40', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(16, 6, '-6.1717950', '106.6627820', '2025-07-24 00:37:40', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(17, 6, '-6.4950850', '106.8968210', '2025-07-20 11:53:59', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(18, 6, '-6.3964800', '106.6770650', '2025-07-23 15:02:20', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(19, 6, '-6.3745100', '106.6988960', '2025-07-20 14:59:17', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(20, 6, '-6.4933820', '106.9661200', '2025-07-26 19:40:53', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(21, 4, '-6.2914180', '106.8989470', '2025-07-26 08:29:02', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(22, 4, '-6.2282290', '106.6031740', '2025-07-23 02:36:16', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(23, 4, '-6.4988580', '106.9206100', '2025-07-19 22:25:04', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(24, 4, '-6.2008170', '106.9301870', '2025-07-22 14:00:47', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(25, 4, '-6.2331920', '106.6771750', '2025-07-23 19:23:44', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(26, 2, '-6.4445730', '106.9320190', '2025-07-24 13:00:36', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(27, 2, '-6.4878370', '106.7007650', '2025-07-24 13:56:31', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(28, 2, '-6.1608300', '106.6725990', '2025-07-21 17:41:44', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(29, 2, '-6.4911940', '106.6723250', '2025-07-20 06:33:52', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(30, 2, '-6.1380720', '106.6084140', '2025-07-24 05:48:32', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(31, 8, '-6.1527530', '106.8333830', '2025-07-24 18:39:36', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(32, 8, '-6.2210720', '106.8718300', '2025-07-20 13:25:33', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(33, 8, '-6.4298950', '106.7351490', '2025-07-22 09:19:21', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(34, 8, '-6.1191310', '106.8324020', '2025-07-26 03:55:45', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(35, 8, '-6.4412170', '106.9956690', '2025-07-20 04:04:33', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(36, 7, '-6.4055290', '106.9208550', '2025-07-22 20:07:21', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(37, 7, '-6.2946450', '106.7514810', '2025-07-24 09:02:46', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(38, 7, '-6.4355290', '106.7166860', '2025-07-21 19:03:57', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(39, 7, '-6.1265830', '106.7172060', '2025-07-24 02:06:51', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(40, 7, '-6.4712370', '106.6271190', '2025-07-22 07:07:06', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(41, 9, '-6.2244520', '106.9854450', '2025-07-23 06:14:26', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(42, 9, '-6.3490600', '106.6481050', '2025-07-26 02:18:24', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(43, 9, '-6.4342910', '106.6384080', '2025-07-21 09:29:04', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(44, 9, '-6.2575440', '106.9309810', '2025-07-23 18:50:12', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(45, 9, '-6.2313880', '106.7368250', '2025-07-26 10:36:40', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(46, 1, '-6.2401770', '106.8053740', '2025-07-26 15:10:00', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(47, 1, '-6.4591280', '106.9629420', '2025-07-23 12:53:24', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(48, 1, '-6.3833220', '106.9765520', '2025-07-22 20:06:53', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(49, 1, '-6.1673880', '106.6942510', '2025-07-26 00:10:49', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(50, 1, '-6.4682980', '106.9899330', '2025-07-24 19:54:07', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(51, 11, '5.1865000', '96.8038000', '2025-08-29 07:35:12', '2025-08-29 07:35:12', '2025-08-29 07:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_22_125606_create_personal_access_tokens_table', 1),
(5, '2025_07_22_130618_create_cars_table', 1),
(6, '2025_07_22_130628_create_loans_table', 1),
(7, '2025_07_22_130636_create_locations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '43fb6bfc9ae1b4b28f1e5837c5c32b09744659c33297f65daa3ace89d21b4b08', '[\"*\"]', '2025-08-29 07:20:34', NULL, '2025-07-26 21:13:33', '2025-08-29 07:20:34'),
(2, 'App\\Models\\User', 1, 'auth_token', 'f533e7fbf016216e9b6d40396d51f614b254053c1c9d5a3b83126954091025a5', '[\"*\"]', '2025-07-26 21:47:20', NULL, '2025-07-26 21:47:20', '2025-07-26 21:47:20'),
(3, 'App\\Models\\User', 1, 'auth_token', 'd2372ca833940ea9c1d7616aedd26a0efc67875a4090d0efa05d0bae720f48dd', '[\"*\"]', '2025-08-01 06:10:20', NULL, '2025-08-01 06:10:20', '2025-08-01 06:10:20'),
(4, 'App\\Models\\User', 1, 'auth_token', '22f17e48861056a2203f6bdbe50f24d193a86e4cc39756a98e2407d622f6e1ca', '[\"*\"]', '2025-08-01 06:32:23', NULL, '2025-08-01 06:32:22', '2025-08-01 06:32:23'),
(5, 'App\\Models\\User', 14, 'auth_token', '73c5c9facfb5068f0d85e8f9c801db88a667aa5edaab40335717f9cbd8d92a9e', '[\"*\"]', '2025-08-01 06:33:14', NULL, '2025-08-01 06:33:14', '2025-08-01 06:33:14'),
(6, 'App\\Models\\User', 15, 'auth_token', '4aed944d4ce8a7a5edf6a27ce09c867966d44789f64461db3f2782cb8caea795', '[\"*\"]', '2025-08-01 07:19:07', NULL, '2025-08-01 07:19:07', '2025-08-01 07:19:07'),
(7, 'App\\Models\\User', 16, 'auth_token', '397930891a1fcc620e903164a47b680c8f04d4727b79367b32248170d6d3e699', '[\"*\"]', '2025-08-29 07:12:17', NULL, '2025-08-29 07:12:17', '2025-08-29 07:12:17'),
(8, 'App\\Models\\User', 1, 'auth_token', '59595ab9e63e34ae0a882f22623b9bcd6678407dddcbed1f2208a6f9271f9c02', '[\"*\"]', '2025-08-29 07:17:29', NULL, '2025-08-29 07:17:29', '2025-08-29 07:17:29'),
(9, 'App\\Models\\User', 2, 'auth_token', '7340098cf95f2451928992fcc6d71cc55834a16f54b45f7f90c9d04b8012f5a4', '[\"*\"]', '2025-08-29 07:18:16', NULL, '2025-08-29 07:18:15', '2025-08-29 07:18:16'),
(10, 'App\\Models\\User', 17, 'auth_token', 'a7584f8ef626c5cc45c75d6c63108992c81081ed7d5f9255f5d8a4a98ff71947', '[\"*\"]', '2025-08-29 11:02:42', NULL, '2025-08-29 07:27:34', '2025-08-29 11:02:42'),
(11, 'App\\Models\\User', 17, 'auth_token', '7acc9a74dd5d005df76d022366d684f0863d54fbaf65bcac4f40d7453275de8e', '[\"*\"]', NULL, NULL, '2025-08-29 07:29:26', '2025-08-29 07:29:26'),
(12, 'App\\Models\\User', 2, 'auth_token', '14b720408985433e8ba1c9efd012bf8ac970ef58cdc431a3d38ef5733e9e5be2', '[\"*\"]', '2025-08-29 07:48:24', NULL, '2025-08-29 07:42:58', '2025-08-29 07:48:24'),
(13, 'App\\Models\\User', 2, 'auth_token', '7619f351bfefd064c3b4a8db28ce055e5fdd2e4c598f9adedd29aff3c1be93cc', '[\"*\"]', '2025-08-29 07:54:29', NULL, '2025-08-29 07:54:26', '2025-08-29 07:54:29'),
(14, 'App\\Models\\User', 2, 'auth_token', '842c17535012a0f43852390e78a5a797fc9e9349662d6df7b38e1bd497b1d2e4', '[\"*\"]', '2025-08-29 07:57:47', NULL, '2025-08-29 07:56:21', '2025-08-29 07:57:47'),
(15, 'App\\Models\\User', 2, 'auth_token', 'b44dde8a7a71594f26cc788cd0f110e7146271b143aa62228f67c146fee84e6c', '[\"*\"]', '2025-08-29 08:04:04', NULL, '2025-08-29 08:03:58', '2025-08-29 08:04:04'),
(16, 'App\\Models\\User', 2, 'auth_token', '215bc034e6d29761add3958effd1441ec77a6d167859a959427c71484ed78126', '[\"*\"]', '2025-08-29 08:09:37', NULL, '2025-08-29 08:09:35', '2025-08-29 08:09:37'),
(17, 'App\\Models\\User', 2, 'auth_token', '345b63f76d13da0f95de0eef115033055a1e504b2a83185ff60614403a72cd47', '[\"*\"]', '2025-08-29 08:13:18', NULL, '2025-08-29 08:13:18', '2025-08-29 08:13:18'),
(18, 'App\\Models\\User', 2, 'auth_token', 'b43bd9c570837426e4a296d30b3ff73254461be378a5ba140503e6c3a25af1b4', '[\"*\"]', '2025-08-29 08:58:19', NULL, '2025-08-29 08:58:19', '2025-08-29 08:58:19'),
(19, 'App\\Models\\User', 2, 'auth_token', '704a7e9054990fd5b53bec6d9d8b457a2a2304d347eb9ae426ba7773fc74d7f5', '[\"*\"]', '2025-08-29 08:59:24', NULL, '2025-08-29 08:59:23', '2025-08-29 08:59:24'),
(20, 'App\\Models\\User', 2, 'auth_token', 'af17e54747d976aa1df85145249a3e0b7fff429967bde080841a4b8c1694aff3', '[\"*\"]', '2025-08-29 09:01:21', NULL, '2025-08-29 09:01:20', '2025-08-29 09:01:21'),
(21, 'App\\Models\\User', 2, 'auth_token', '9bb9e6904a055cbfb4781fbbaf5ab6c476d307e8593f53ae4fda94d24ea3d659', '[\"*\"]', '2025-08-29 09:04:50', NULL, '2025-08-29 09:04:50', '2025-08-29 09:04:50'),
(22, 'App\\Models\\User', 2, 'auth_token', '23fbb1a473e6e207f2a9a05a87e13da2cd420acfbaf7462b5e91fe965e5d0a3b', '[\"*\"]', '2025-08-29 09:07:08', NULL, '2025-08-29 09:07:00', '2025-08-29 09:07:08'),
(23, 'App\\Models\\User', 2, 'auth_token', '2b3e86534f048eeabdbb800dc2fc3b900d77f30cd10d1679973f97b9395ca849', '[\"*\"]', '2025-08-29 09:35:49', NULL, '2025-08-29 09:35:49', '2025-08-29 09:35:49'),
(24, 'App\\Models\\User', 2, 'auth_token', 'ccbc7365809d9b2db2b7b0f5c58e8a168f94599b72f436dc42128a9249b34acf', '[\"*\"]', '2025-08-29 09:43:39', NULL, '2025-08-29 09:43:39', '2025-08-29 09:43:39'),
(25, 'App\\Models\\User', 2, 'auth_token', 'e17d46fb571503af6fab8bb55cc8fc27d0ee184bf3f613db1b3e6bef2fe38cb0', '[\"*\"]', '2025-08-29 09:49:32', NULL, '2025-08-29 09:49:32', '2025-08-29 09:49:32'),
(26, 'App\\Models\\User', 2, 'auth_token', '95bf6075baf9872315687e4ecb4039559c3e1ae1fe1803e8d732c98acc260595', '[\"*\"]', '2025-08-29 09:54:53', NULL, '2025-08-29 09:53:30', '2025-08-29 09:54:53'),
(27, 'App\\Models\\User', 2, 'auth_token', '150c60a9a6967cb0ee3baf7b8c6dcd5de2c2f37972300577d6c2c835942eb5bc', '[\"*\"]', '2025-08-29 09:59:42', NULL, '2025-08-29 09:59:36', '2025-08-29 09:59:42'),
(28, 'App\\Models\\User', 2, 'auth_token', '8800ab602a94e456d69ed3ccd67ef11ebde6f825d8e03674272b396c5dbf1c10', '[\"*\"]', '2025-08-29 10:07:01', NULL, '2025-08-29 10:07:01', '2025-08-29 10:07:01'),
(29, 'App\\Models\\User', 2, 'auth_token', '4b3c29ff445b81094e6dbdff809f951ad543396ac1db10623063552b4eb03016', '[\"*\"]', '2025-08-29 10:27:36', NULL, '2025-08-29 10:27:36', '2025-08-29 10:27:36'),
(30, 'App\\Models\\User', 2, 'auth_token', 'ed638aa27443017c94e036b7c0814bacfca5bfe9afa9876add962986b9ef7944', '[\"*\"]', '2025-08-29 10:36:51', NULL, '2025-08-29 10:36:51', '2025-08-29 10:36:51'),
(31, 'App\\Models\\User', 2, 'auth_token', '3fe111001077073aa8057bf5856bbfc716e435a608ed8f2e2586c0ea5e3d09ee', '[\"*\"]', '2025-08-29 10:38:45', NULL, '2025-08-29 10:38:39', '2025-08-29 10:38:45'),
(32, 'App\\Models\\User', 1, 'auth_token', 'ea940402aa58f371a08abbb82f017a877c9deac42b5b6ba8d6865dcd8ad2e81b', '[\"*\"]', '2025-08-29 11:00:05', NULL, '2025-08-29 11:00:04', '2025-08-29 11:00:05'),
(33, 'App\\Models\\User', 1, 'auth_token', 'b3f211da2f105cd541f682e03c3d98f6eec111c4b6fc81573dcec885c5ffc619', '[\"*\"]', '2025-08-29 11:07:16', NULL, '2025-08-29 11:04:49', '2025-08-29 11:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('j9fUFb2NpdoKgcsIeYj5L0W3tljC9VMj8QUhptB7', NULL, '127.0.0.1', 'PostmanRuntime/7.44.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGt2UlBjUHZndEJza0tRNHRzWlNsejdTTDh0ZFFyUDNHUlRJak1reSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756477431),
('N5BuOT6MY9mx5bMT9OOkrtLD7uYjE2BrMlBdUUI8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEZHWTJKdVFtenowbG5henlCVFhtRVJKUUpIaGVpQ1VyZjRnR1JwYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1754093281),
('vDgAmS0givuX0gXHPwd4BgxOmU4dAfMbaUosYw2g', NULL, '127.0.0.1', 'PostmanRuntime/7.44.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZWtJODNuempRaXhuZjdGVFZkbHZkRkxtZk1qWDE2T2x4c0hvS2dhYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756490562);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Administrator MotoRent', 'admin@gmail.com', '2025-07-26 21:09:55', '$2y$12$X4rI8p2btARTzqozbxOThOPq6D2uSB4kyNYHkcQrH.EVGzsM3SRxW', 'kfglZT9m5J', '2025-07-26 21:09:55', '2025-07-26 21:09:55'),
(2, 'Peminjam', 'peminjam@gmail.com', '2025-07-26 21:09:55', '$2y$12$Vs5KYrNl4RCkalszR/ukoOvmqv0II41KXB/f/D8qcxEtUylHP/C1e', 'PYSi8W7nV6', '2025-07-26 21:09:56', '2025-07-26 21:09:56'),
(3, 'Test User', 'test@example.com', '2025-07-26 21:09:56', '$2y$12$Vncsro0i/vIPhF/4T4tu/./D09kAbLZ/5qlzQ9R37.LKeoNzCOpXW', '2su8HqEsyS', '2025-07-26 21:09:56', '2025-07-26 21:09:56'),
(4, 'Omar Tampubolon', 'omar@gmail.com', '2025-07-26 21:09:56', '$2y$12$b2CRTBPo2jytWEX7ikRlQumfvubg3vLjS0HQm9.122BRHOnWp6NEm', 'fIaMvCD3Q7', '2025-07-26 21:09:56', '2025-07-26 21:09:56'),
(5, 'Fitria Padmi Kusmawati', 'fitria@gmail.com', '2025-07-26 21:09:56', '$2y$12$Qdm4JrWtXd1sIK7a8dcgvu7xkq8QQ2WQrARL50Hx76Uc/SgsKM.hK', 'nEVRrnDvXE', '2025-07-26 21:09:56', '2025-07-26 21:09:56'),
(6, 'Silvia Mulyani S.I.Kom', 'silvia@gmail.com', '2025-07-26 21:09:56', '$2y$12$BKo6WHig8kbYB5bzUFuAgeY2O.JJ97xIl10OoTZgcJYMFLq9CfrWi', 'oBUYJJgxNn', '2025-07-26 21:09:56', '2025-07-26 21:09:56'),
(7, 'Maida Oktaviani', 'maida@gmail.com', '2025-07-26 21:09:56', '$2y$12$rgMrqr/Juu2dWWxuKQ6cAeZyu0.V2qHWDxnEWDdUFPfYR.R5smI8u', '3rKoqNooz7', '2025-07-26 21:09:56', '2025-07-26 21:09:56'),
(8, 'Bakidin Tirtayasa Damanik S.IP', 'bakidin@gmail.com', '2025-07-26 21:09:57', '$2y$12$FkuhWmrtEr2hobEbfU2n7eYb.xBfWZmUzVokXjVgui36fcm4ATmFe', '7LAqqj20TY', '2025-07-26 21:09:57', '2025-07-26 21:09:57'),
(9, 'Rika Wijayanti', 'rika@gmail.com', '2025-07-26 21:09:57', '$2y$12$.YL8XDe2HsWZ0qaT2IdJXukbQTr.xpgP30nTSHbz82dkCeJs3y8hK', 'xclRZUk6Gt', '2025-07-26 21:09:57', '2025-07-26 21:09:57'),
(10, 'Ami Agustina', 'ami@gmail.com', '2025-07-26 21:09:57', '$2y$12$Kk2loxgqQQjDXPqbyVjWYOhaQaV7dEbtdltFKCjPIwKg1b3wLKC0u', 'sCOtzcBBES', '2025-07-26 21:09:57', '2025-07-26 21:09:57'),
(11, 'Suci Permata', 'suci@gmail.com', '2025-07-26 21:09:57', '$2y$12$Wt5rfZCt5G7go23oo7HuJ.sy/cNkG5Vfhrb/M7gyQ5j6s2C12isLq', 'iPbhICZiWa', '2025-07-26 21:09:57', '2025-07-26 21:09:57'),
(12, 'Bakiman Tampubolon', 'bakiman@gmail.com', '2025-07-26 21:09:57', '$2y$12$RbSvd4omCHDAHJMp08mkpudL2hron.RU8jEAxkxnB6wArbKHPUX.y', 'C9ZarqW8et', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(13, 'Qori Hassanah S.H.', 'qori@gmail.com', '2025-07-26 21:09:58', '$2y$12$9UvUrPPfV342r0nZR.mzEuZKX/7chPSMsn.B/yffRIkefnoKl/GXa', 'VVAtMqeL6r', '2025-07-26 21:09:58', '2025-07-26 21:09:58'),
(14, 'rekha', 'rekha@gmail.com', NULL, '$2y$12$xV6XGUwYSovyZBC4Ff8lw.QOLJ4qVloGNxn7cnxxBEn7sbEpXMLKO', NULL, '2025-08-01 06:32:52', '2025-08-01 06:32:52'),
(15, 'mas jajang', 'masjajang@gmail.com', NULL, '$2y$12$4t8GJseVh6CZfW1IdHbSb.dF2pQ3U06Nwc7lm2Drg/Y7msq8lkPqu', NULL, '2025-08-01 07:18:56', '2025-08-01 07:18:56'),
(16, 'manusia', 'manusia@gmail.com', NULL, '$2y$12$q9ZsuJUEpLp3xYfl.zWduezjSAc.kPqXxztwfd0YuDZn0ayeECZCu', NULL, '2025-08-29 07:11:59', '2025-08-29 07:11:59'),
(17, 'Hanis Siddiq', 'hanissiddiq10@gmail.com', NULL, '$2y$12$5Ws8nu9If2f3zY7Uom2nUeBkd7RglwEA8ct7hSpetrYLn3ZJ6.kLe', NULL, '2025-08-29 07:24:58', '2025-08-29 07:24:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cars_plate_number_unique` (`plate_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_user_id_foreign` (`user_id`),
  ADD KEY `loans_car_id_foreign` (`car_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_loan_id_foreign` (`loan_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
