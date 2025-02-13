-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 01:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('text','date','number','select') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'department', 'text', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(2, 'start_date', 'date', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(3, 'end_date', 'date', '2025-02-13 06:21:49', '2025-02-13 06:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `entity_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'HR', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(2, 2, 1, '1978-07-05', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(3, 3, 1, '1979-03-30', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(4, 1, 2, 'Sales', '2025-02-13 06:21:49', '2025-02-13 07:14:11'),
(5, 2, 2, '2025-12-31', '2025-02-13 06:21:49', '2025-02-13 07:14:11'),
(6, 3, 2, '2014-04-18', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(7, 1, 3, 'IT', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(8, 2, 3, '1986-09-07', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(9, 3, 3, '1986-05-19', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(10, 1, 4, 'Finance', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(11, 2, 4, '2017-07-20', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(12, 3, 4, '1986-08-31', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(13, 1, 5, 'HR', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(14, 2, 5, '2003-07-13', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(15, 3, 5, '1976-12-02', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(16, 1, 6, 'HR', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(17, 2, 6, '1999-10-14', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(18, 3, 6, '2003-09-12', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(19, 1, 7, 'IT', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(20, 2, 7, '1994-06-26', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(21, 3, 7, '1995-01-21', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(22, 1, 8, 'HR', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(23, 2, 8, '1983-09-06', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(24, 3, 8, '1991-03-01', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(25, 1, 9, 'HR', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(26, 2, 9, '2016-02-20', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(27, 3, 9, '2023-11-09', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(28, 1, 10, 'HR', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(29, 2, 10, '1976-10-04', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(30, 3, 10, '1980-11-08', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(31, 1, 11, 'Sales', '2025-02-13 07:09:29', '2025-02-13 07:09:29'),
(32, 2, 11, '2025-12-31', '2025-02-13 07:09:29', '2025-02-13 07:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2025_02_12_113428_create_projects_table', 1),
(11, '2025_02_12_113449_create_timesheets_table', 1),
(12, '2025_02_12_113631_update_users_table', 1),
(13, '2025_02_12_114030_create_project_user_table', 1),
(14, '2025_02_12_114322_create_attributes_table', 1),
(15, '2025_02_12_114420_create_attribute_values_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0d844dd40ee1152a361f64208c1d94fe3787c096dfe7b32bbaed9f51f64ea35964028276e5db570e', 3, 1, 'API Token', '[]', 0, '2025-02-13 06:30:14', '2025-02-13 06:30:14', '2026-02-13 12:00:14'),
('512cdf49ccc408d390a1e47bf84c8b479b808d24c63de79f4ad1c3c86fde33cf3d37ff994bf122ce', 3, 1, 'API Token', '[]', 0, '2025-02-13 06:29:45', '2025-02-13 06:29:45', '2026-02-13 11:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'GFtw7AX63affFnpRbG900yDqfGM1nRnBqpc37eRa', NULL, 'http://localhost', 1, 0, 0, '2025-02-13 06:27:22', '2025-02-13 06:27:22'),
(2, NULL, 'Laravel Password Grant Client', 'yEFV6Bay9u0xQZFTcLleE8W5I6Zj3hknx4fMV8pe', 'users', 'http://localhost', 0, 1, 0, '2025-02-13 06:27:22', '2025-02-13 06:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-02-13 06:27:22', '2025-02-13 06:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','Completed','On Hold') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aspernatur corporis nam numquam.', 'Active', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(2, 'Project A 2', 'Active', '2025-02-13 06:21:49', '2025-02-13 07:14:11'),
(3, 'Harum maxime autem quia.', 'Completed', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(4, 'Eum aspernatur ipsum in.', 'Completed', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(5, 'Non illum exercitationem.', 'Completed', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(6, 'Dolor ut numquam quas.', 'Active', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(7, 'Error sint asperiores dolorem.', 'Completed', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(8, 'Accusantium tempore inventore.', 'On Hold', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(9, 'Consequatur assumenda modi aliquam.', 'Active', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(10, 'Adipisci aut vero est.', 'Completed', '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(11, 'Project A', 'Active', '2025-02-13 07:09:29', '2025-02-13 07:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `hours` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timesheets`
--

INSERT INTO `timesheets` (`id`, `user_id`, `project_id`, `task_name`, `date`, `hours`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Nostrum et ut autem nulla.', '2008-09-09', 3, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(2, 1, 5, 'Cumque nobis sunt quod ea.', '1996-09-24', 7, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(3, 1, 2, 'Omnis aut dolores ab.', '1996-07-31', 6, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(4, 1, 4, 'Aperiam culpa ut veritatis maiores.', '1975-02-21', 7, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(5, 1, 2, 'Ipsa sapiente aut aperiam aut.', '2010-06-26', 7, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(6, 1, 5, 'Amet consequuntur enim aut in id.', '2007-12-06', 7, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(7, 1, 1, 'Molestiae dignissimos sapiente incidunt et.', '2009-08-27', 6, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(8, 1, 2, 'Animi quos et consequatur est incidunt.', '2016-12-09', 4, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(9, 1, 1, 'Assumenda praesentium nisi pariatur maiores.', '1989-07-05', 4, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(10, 1, 5, 'Quo occaecati sint.', '2022-06-10', 2, '2025-02-13 06:21:50', '2025-02-13 06:21:50'),
(11, 1, 7, 'Ipsum dignissimos ut dolorem.', '2014-08-11', 1, '2025-02-13 06:22:03', '2025-02-13 06:22:03'),
(12, 1, 9, 'Officiis quia quisquam deserunt vel dolorum.', '1985-01-12', 1, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(13, 1, 6, 'Ex amet molestiae sed voluptas dolore.', '2018-08-31', 6, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(14, 1, 8, 'Enim ullam eos dignissimos laudantium.', '1994-08-29', 3, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(15, 1, 3, 'Atque est enim consequatur excepturi.', '2008-07-22', 3, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(16, 1, 5, 'Similique unde et dolorem molestias.', '2002-06-24', 8, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(17, 1, 2, 'Beatae natus et labore aut sint.', '2008-10-14', 6, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(18, 1, 2, 'Nisi ea recusandae aut.', '1976-01-21', 5, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(19, 1, 4, 'Natus error rerum provident id.', '1990-12-30', 8, '2025-02-13 06:22:04', '2025-02-13 06:22:04'),
(20, 1, 4, 'Id qui eius amet voluptatem.', '1987-06-18', 5, '2025-02-13 06:22:04', '2025-02-13 06:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Myriam', 'Kunze', 'vicenta86@example.com', '2025-02-13 06:21:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'reCi0ftVjO', '2025-02-13 06:21:49', '2025-02-13 06:21:49'),
(3, 'John Doe', 'Doe', 'john1@example.com', NULL, '$2y$10$LCS8fThrAOTRHNQLsXf8aeWxva7e6UHjj2kXSKLrDDXA.OMz0y.fy', NULL, '2025-02-13 06:29:45', '2025-02-13 06:29:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_values_entity_id_foreign` (`entity_id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_user_user_id_foreign` (`user_id`),
  ADD KEY `project_user_project_id_foreign` (`project_id`);

--
-- Indexes for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timesheets_user_id_foreign` (`user_id`),
  ADD KEY `timesheets_project_id_foreign` (`project_id`);

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
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `attribute_values_entity_id_foreign` FOREIGN KEY (`entity_id`) REFERENCES `projects` (`id`);

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timesheets`
--
ALTER TABLE `timesheets`
  ADD CONSTRAINT `timesheets_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timesheets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
