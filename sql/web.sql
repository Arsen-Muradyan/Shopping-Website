-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2019 at 09:46 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE `active_admin_comments` (
  `id` bigint(20) NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_type` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@example.com', '$2a$11$nH6.8TtFiK4hig3.mXT9DOtroajO7CPuPRrnsbtO4RqoCKy8.kKO.', NULL, NULL, NULL, '2019-05-08 17:31:15', '2019-05-09 07:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2019-05-08 16:37:40', '2019-05-08 16:37:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 6 plus', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est placeat, a ipsum nostrum suscipit corrupti quas id numquam necessitatibus quam, eos dolores tempore delectus harum, quae minus eum unde labore.', '39.jpg', '2019-05-09 07:28:23', '2019-05-09 07:28:23'),
(2, 'Acer Predator', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quae, suscipit, ipsam iste facilis voluptatem a deserunt dolorum vero dolor.', 'Product_Helios_500_Secondary_banner.jpg', '2019-05-09 07:38:48', '2019-05-09 07:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20190508162851'),
('20190508172850'),
('20190508172910');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  ADD KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  ADD KEY `index_active_admin_comments_on_namespace` (`namespace`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_admin_users_on_email` (`email`),
  ADD UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_admin_comments`
--
ALTER TABLE `active_admin_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
