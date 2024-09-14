-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2024 at 10:56 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `form-and-datatable`
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
(4, '2024_09_14_202642_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(9, 'iusto', '7173.15', 27, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(10, 'est', '8972.90', 48, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(11, 'explicabo', '8737.91', 27, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(12, 'vero', '578.00', 23, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(13, 'laborum', '4534.14', 33, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(14, 'qui', '4761.67', 28, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(15, 'dolorum', '4645.47', 33, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(16, 'non', '5618.64', 41, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(17, 'molestiae', '9484.26', 35, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(18, 'dicta', '9156.36', 43, '2024-09-14 22:49:15', '2024-09-14 22:49:15'),
(19, 'nobis', '6474.73', 49, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(20, 'harum', '9589.11', 47, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(21, 'molestiae', '7347.97', 49, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(22, 'amet', '7418.99', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(23, 'suscipit', '5676.89', 23, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(24, 'sit', '9126.13', 46, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(25, 'tempore', '6360.22', 30, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(26, 'dolorem', '1889.50', 31, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(27, 'veniam', '4166.24', 40, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(28, 'id', '7619.95', 40, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(29, 'in', '8318.20', 22, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(30, 'omnis', '8706.59', 35, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(31, 'ut', '8275.91', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(32, 'quae', '4883.74', 43, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(33, 'quaerat', '2377.97', 44, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(34, 'est', '7774.84', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(35, 'enim', '5406.41', 33, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(36, 'cumque', '1376.87', 37, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(37, 'expedita', '2650.92', 38, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(38, 'exercitationem', '3352.42', 47, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(39, 'quaerat', '8064.65', 50, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(40, 'voluptatibus', '9207.38', 31, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(41, 'asperiores', '1058.92', 46, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(42, 'rem', '6496.23', 48, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(43, 'sapiente', '5978.89', 36, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(44, 'iure', '8804.16', 25, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(45, 'est', '9554.78', 48, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(46, 'consequatur', '8242.43', 39, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(47, 'est', '197.77', 39, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(48, 'necessitatibus', '3088.44', 38, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(49, 'fuga', '9552.31', 20, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(50, 'fugiat', '5133.87', 49, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(51, 'nisi', '2728.47', 39, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(52, 'similique', '8778.56', 36, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(53, 'quae', '1405.91', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(54, 'excepturi', '9388.39', 40, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(55, 'temporibus', '801.28', 29, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(56, 'quia', '2820.99', 36, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(57, 'accusamus', '4942.36', 28, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(58, 'eum', '2196.62', 33, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(59, 'assumenda', '9710.86', 27, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(60, 'repellat', '7880.63', 44, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(61, 'velit', '9560.57', 40, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(62, 'quos', '1838.91', 21, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(63, 'voluptates', '837.82', 32, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(64, 'et', '3497.74', 29, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(65, 'nesciunt', '5323.46', 26, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(66, 'quasi', '6519.99', 34, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(67, 'eveniet', '7794.13', 44, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(68, 'aliquam', '6476.44', 36, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(69, 'minima', '5990.21', 22, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(70, 'consequuntur', '2144.82', 31, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(71, 'modi', '862.22', 27, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(72, 'iste', '7467.74', 32, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(73, 'facilis', '4738.65', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(74, 'repellendus', '8317.52', 49, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(75, 'atque', '3081.38', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(76, 'tempore', '5365.60', 43, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(77, 'consequatur', '6954.64', 21, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(78, 'quo', '7960.79', 23, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(79, 'voluptas', '8111.52', 20, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(80, 'sequi', '2355.12', 24, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(81, 'esse', '7333.73', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(82, 'eum', '219.66', 42, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(83, 'eaque', '9708.09', 44, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(84, 'fugiat', '9756.16', 28, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(85, 'minus', '7255.06', 45, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(86, 'distinctio', '1431.04', 28, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(87, 'recusandae', '9072.09', 38, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(88, 'et', '5172.60', 28, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(89, 'esse', '4636.59', 38, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(90, 'totam', '8815.53', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(91, 'quia', '2439.51', 23, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(92, 'sapiente', '8065.37', 50, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(93, 'iste', '7034.26', 39, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(94, 'quis', '1757.91', 40, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(95, 'perferendis', '7352.32', 45, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(96, 'ea', '808.07', 43, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(97, 'nesciunt', '3521.05', 26, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(98, 'iusto', '9775.92', 43, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(99, 'repellendus', '3303.78', 44, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(100, 'et', '5240.27', 28, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(101, 'soluta', '9375.08', 28, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(102, 'quo', '8724.83', 32, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(103, 'aut', '7852.53', 44, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(104, 'adipisci', '7926.36', 22, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(105, 'occaecati', '4150.02', 25, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(106, 'id', '9748.97', 32, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(107, 'nesciunt', '3465.46', 41, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(108, 'quo', '3120.72', 35, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(109, 'vitae', '2459.59', 32, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(110, 'impedit', '6877.11', 50, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(111, 'aut', '8951.73', 31, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(112, 'deserunt', '2851.96', 45, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(113, 'et', '8811.09', 31, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(114, 'in', '4003.41', 43, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(115, 'eos', '5001.54', 29, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(116, 'magni', '6588.05', 32, '2024-09-14 22:50:02', '2024-09-14 22:50:02'),
(117, 'lala', '1520.15', 27, '2024-09-14 22:50:02', '2024-09-14 22:51:34');

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
('GZgXjpEDMomn54UCJC7mWRss18Ki3wVNCac7OVPA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTDNqUVhxMnNSaFQ5MkhtSXRlRXN2NDNmekwzaUJyVkZwR0ZRUWJXdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1726348098),
('JjMzp8Ly2V8wkSDpn9z1niWXuuSBM84aVNKEVCd4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNXlvMjA3Q0ZNU3VNdWs2SnE2MGttazl1THE0b0R0Znk1bHNMNFdRUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1726354427);

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
(1, 'user1', 'user1@mail.com', NULL, '$2y$12$UqkBGSw1S1O9EljMkfJx6e1IVEJwr8YWZfBiYcRsEfhyRyo7PAONq', NULL, '2024-09-14 20:37:48', '2024-09-14 20:37:48');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
