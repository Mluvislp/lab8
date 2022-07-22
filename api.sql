-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 10:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
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
(5, '2022_07_22_022547_create_posts_table', 1),
(6, '2022_07_22_030213_create_permission_tables', 1),
(7, '2022_07_22_060944_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenSP` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `anHien` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `tenSP`, `gia`, `anHien`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Elenora Gleichner', 627059, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(2, 'Jody Rodriguez', 420425, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(3, 'Dr. Tyra Predovic', 241640, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(4, 'Kenna Olson III', 532368, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(5, 'Odie Goyette', 532919, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(6, 'Norberto Larson', 808751, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(7, 'Shania Treutel', 208032, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(8, 'Prof. Jasper Bosco III', 184773, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(9, 'Selmer Champlin', 735166, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(10, 'Prof. Hildegard Boyle DDS', 200581, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(11, 'Lincoln Keebler', 252484, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(12, 'Fanny McDermott', 294547, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(13, 'Dr. Hailey Huel', 366705, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(14, 'Dr. Weldon Rippin', 871610, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(15, 'Steve Cole', 475112, 1, '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(16, 'vvvvvv', 2222222, 1, '2022-07-22 01:17:47', '2022-07-22 01:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ewald Gottlieb', 'katrina18@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'xpSGt7paI3', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(2, 'Lesley Stokes', 'collins.jed@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '0NMNs1nnuC', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(3, 'Neva Becker', 'jacques60@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'pl1Zm1kZmL', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(4, 'Dr. Sigurd Nikolaus PhD', 'waldo.gutmann@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Ig20aYcwvw', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(5, 'Landen Weber', 'emerson13@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'TuaCKXn84G', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(6, 'Otis Hagenes', 'justice81@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'LuqfZUybwP', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(7, 'Millie McDermott', 'khartmann@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'hnZP71riM6', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(8, 'Damian Boyer PhD', 'danyka59@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'bdnPeLqaGk', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(9, 'Lorenza Friesen', 'nklein@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '1tcl1pcDGj', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(10, 'Edison Hamill MD', 'lhalvorson@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'SDsysqMktS', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(11, 'Merlin Keeling III', 'rene39@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'bhtQApDf0w', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(12, 'Rudy Hettinger IV', 'wisozk.haylie@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '0tUPRgEYeQ', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(13, 'Jeanette Nader MD', 'christiansen.assunta@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'hpEZ2SaEi3', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(14, 'Jasen Hackett Sr.', 'bcollins@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'ZXLPAxziyv', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(15, 'Omer Gusikowski', 'dferry@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '5F9xyC4eMY', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(16, 'Ms. Maeve Howe', 'bkunde@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'sduNQB0rQL', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(17, 'Kavon Ernser', 'jones.lisa@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'tDBbabizQO', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(18, 'Gussie Senger', 'nikki46@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'jQSkDiMhI7', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(19, 'Enrico Quigley', 'leannon.abel@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'NbPdjYMp4P', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(20, 'Murl Schoen', 'fadel.linnie@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'OiZ8d2FKM1', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(21, 'Lori Treutel', 'vivien.stark@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'qSEIMobTSn', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(22, 'Maxie Collins', 'gerson52@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'DbSIU0XLyf', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(23, 'Ashleigh Volkman', 'consuelo28@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'wmRXyz65K2', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(24, 'Jaden Bergstrom', 'bmclaughlin@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Ya1Iempu6x', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(25, 'Serenity Terry', 'rosina66@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'sQREf3qjp6', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(26, 'Mr. Dewayne Doyle', 'vherman@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'mhk5dcwubp', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(27, 'Mr. Rocio Parker', 'ethyl.gutmann@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '56ldaHuXOE', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(28, 'Trevor Moen', 'camille.strosin@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'OcW15PSxGM', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(29, 'Miss Josiane Wilderman PhD', 'krajcik.devyn@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'mEGK0OArrq', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(30, 'General Brakus', 'aida.schumm@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'BlDah0NXFp', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(31, 'Mr. Alec Kuvalis', 'jerad98@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2R0pCj5LqB', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(32, 'Mrs. Samanta Ziemann', 'filiberto60@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'IXMLE66aI7', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(33, 'Malachi McLaughlin Sr.', 'fschamberger@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'm0uD8UJhBD', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(34, 'Daniella Carter', 'bryon.wuckert@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'pfi6mzsS6y', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(35, 'Euna Jacobson', 'clementine09@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'XVEE4CFOzC', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(36, 'Dr. Ted Cummerata IV', 'ledner.gilberto@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'QrrGSmytv3', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(37, 'Deanna Ledner', 'cicero.raynor@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'EgzOWdNUn9', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(38, 'Ms. Sister Parisian Jr.', 'simonis.jeanne@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '9FFEFJBYh0', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(39, 'Dr. Laisha Koss', 'haven49@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'vmFrAgpDVe', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(40, 'Guido Watsica II', 'fabiola57@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'xvC8Y7qshO', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(41, 'Isidro Jaskolski', 'katelyn77@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'GjjgxRr8ca', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(42, 'Keyon Powlowski III', 'cremin.myrtie@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'XaRJxLgQTa', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(43, 'Joshua Stanton IV', 'gfahey@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '5Vz1N2Qro8', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(44, 'Miss Edna Steuber II', 'wmarquardt@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'kD0HsICUNx', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(45, 'Janet Thiel', 'ygoldner@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '7nQsJhPXYN', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(46, 'Prof. Isaiah Weber Sr.', 'genesis62@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'aAHn7jGpoS', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(47, 'Quincy Bradtke', 'smoore@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '7SD1flzHzV', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(48, 'Marley Berge', 'veum.thalia@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'vwiOrsmcJh', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(49, 'Alisha Smith', 'wilmer68@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'RGxm4IXhef', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(50, 'Dixie Dickinson I', 'katrina.murray@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'UOzRY9fUol', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(51, 'Martina Bernhard', 'bogisich.nikita@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'qXtNOR6c0u', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(52, 'Nels Wolf', 'erik.sawayn@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '6gTLffPt4h', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(53, 'Prof. Jared Tremblay', 'daija.thiel@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'n6locx7CSr', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(54, 'Ettie Wiza', 'rbreitenberg@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Dgr44U77I0', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(55, 'Prof. Deja Bogisich', 'reymundo.welch@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '5ecihFWs0E', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(56, 'Keshawn Will', 'kirlin.wendy@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'h68C1DJppO', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(57, 'Joy Lang', 'ceasar11@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'lCGF2JslSM', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(58, 'Fredrick Beatty', 'umcglynn@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'CQIhDjGJHL', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(59, 'Enola Ankunding', 'tterry@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'UT8nDGOnzR', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(60, 'Mrs. Rosie Williamson IV', 'yazmin49@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'r6nHUFI6xH', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(61, 'Anika Medhurst', 'mlittle@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'wtgnMltHi7', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(62, 'Ms. Eleonore O\'Kon DVM', 'fbreitenberg@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'ViJq4mYlk0', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(63, 'Camryn McCullough V', 'furman63@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'fSpDdVmRuP', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(64, 'Marcus Nader', 'ldickens@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'VinHog05xo', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(65, 'Tremayne Farrell IV', 'howell.wiley@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Rtq0hjrG8u', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(66, 'Adela Olson', 'muller.brandi@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'qNsAKmJ0eR', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(67, 'Mr. Adrian Watsica', 'rmann@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '3TjQBAvfey', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(68, 'Dr. Ignatius McClure', 'haag.eulalia@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'vau6GkD306', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(69, 'Marge Ondricka', 'bkihn@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'N6LGoA30Bb', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(70, 'Dr. Walter Bednar', 'lockman.genoveva@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'LHadA7WNRa', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(71, 'Prof. Domenica McGlynn', 'frunolfsdottir@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '4pAIzTOrJJ', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(72, 'Nellie Hintz', 'crist.daphnee@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'oCY8xTzd2S', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(73, 'Cydney Cartwright', 'tremblay.aleen@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'vursX5fj2m', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(74, 'Parker Hirthe', 'lois82@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'awCyh3852G', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(75, 'Mireille Ryan', 'vance.keeling@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'J84Z2oBA83', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(76, 'Elfrieda Oberbrunner', 'wsmith@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '73uXvtfJgq', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(77, 'Trevor Bode', 'swilliamson@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '3kmTwkoEnt', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(78, 'Alanis Boehm', 'lesch.jasmin@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '1tCWUk5Q2h', '2022-07-21 23:20:42', '2022-07-21 23:20:42'),
(79, 'Fredrick Will', 'bpadberg@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'iGQoSkycj7', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(80, 'Troy Connelly', 'tschneider@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'l9GIi71uAD', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(81, 'Mac Zboncak', 'theresa.goodwin@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'xaQeKfTRHc', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(82, 'Dashawn Schimmel', 'lea.kerluke@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'AZmAvrm12R', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(83, 'Amara Powlowski', 'leffler.kelvin@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'ODVFYy7aIR', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(84, 'Reinhold Reichert', 'lazaro12@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'reg9PITn84', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(85, 'Prof. Alysa Fadel Jr.', 'braxton.hayes@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'NzLvHhLBsH', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(86, 'Ms. Vada Torphy', 'khirthe@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 's6FlB8uNpZ', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(87, 'Shawn Pfeffer', 'bins.winona@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'w8jIRrGdWZ', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(88, 'Gabriella Dooley', 'rosario63@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '2IhpJx7BA1', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(89, 'Faustino Frami', 'lbednar@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Td4GnRp2Nv', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(90, 'Alphonso Medhurst', 'rippin.elinore@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'KwoDGtmoPQ', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(91, 'Garnett Jacobson Jr.', 'karina.cruickshank@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'K7Qvh9nQpU', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(92, 'Charles Turner III', 'saige69@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'rJuwUrWPbJ', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(93, 'Alverta Pagac', 'cthiel@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '0qncgz0CDJ', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(94, 'Otha Herman DDS', 'deckow.evan@example.org', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'VPY6PMHph9', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(95, 'Mrs. Mariam Hyatt', 'hansen.sasha@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'MaaFwd2njp', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(96, 'Mr. Dean Shanahan', 'estell.wisozk@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'Yk4XGqfYHm', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(97, 'Eula Ratke', 'xwisoky@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'iBpcZhxcGh', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(98, 'Dr. Julianne Bruen', 'norwood.fay@example.com', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'gWHoB7hA74', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(99, 'Roman Hickle', 'alyson70@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'MkWJGs1pox', '2022-07-21 23:20:43', '2022-07-21 23:20:43'),
(100, 'Prof. Dolly Goldner Jr.', 'jacobi.justus@example.net', '2022-07-21 23:20:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'LmMY96AHBw', '2022-07-21 23:20:43', '2022-07-21 23:20:43');

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
