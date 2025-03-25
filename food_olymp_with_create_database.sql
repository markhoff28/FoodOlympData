-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 25. Mrz 2025 um 16:35
-- Server-Version: 10.4.28-MariaDB
-- PHP-Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `food_olymp`
--
CREATE DATABASE IF NOT EXISTS `food_olymp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food_olymp`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `status` varchar(255) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `token`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'magnus', 'magnus@example.com', NULL, '$2y$12$Z.CILyIYQYKklXi5/ai1R.0cdZlb5Gy2JL.MQ.gz7xd9ut2/Pxiby', '', '1725287321.jpg', '124578996', 'Zum Honigsach 2 76855 Annweiler am Trifels', 'admin', '1', NULL, NULL, '2024-10-04 13:09:45'),
(2, 'Admin', 'admin@example.com', NULL, '$2y$12$ARIF95drGuRH54.Pm5qBQeviYpGJExhhQ57LaN2437myH2Q09.yfC', NULL, NULL, NULL, NULL, 'admin', '1', NULL, NULL, NULL),
(3, 'Magnus CEO', 'magnusceo@example.com', NULL, '$2y$12$QtQFcH3PqBxAMe7JBe9psexUUF5Dhpc75prlgx52BIfyfC1B3sCV2', NULL, NULL, '124578996', 'wwwww', 'admin', '1', NULL, '2024-10-04 12:24:42', '2024-10-04 12:24:42'),
(4, 'Niklas Rohr', 'niklas@example.org', NULL, '$2y$12$IFyvNybUe64zuF6svZTyXuOMXuh1s3lFg/Tb.QYwIrte3Q27602nG', NULL, NULL, '123', 'ggg', 'admin', '1', NULL, '2024-10-04 12:33:11', '2024-10-04 12:33:11');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `banners`
--

INSERT INTO `banners` (`id`, `banner_image`, `banner_url`, `created_at`, `updated_at`) VALUES
(1, 'upload/banner/1810288425536143.jpg', '/test', '2024-09-15 16:39:36', '2024-09-15 16:39:36'),
(2, 'upload/banner/1810288467599618.jpg', '/test2', '2024-09-15 16:40:16', '2024-09-15 16:40:16'),
(3, 'upload/banner/1810373142894255.jpg', '/test', '2024-09-16 15:06:10', '2024-09-16 15:06:10'),
(5, 'upload/banner/1810374003173022.png', '/test3', '2024-09-16 15:19:50', '2024-10-05 10:09:21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:5:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"d\";s:10:\"group_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:40:{i:0;a:5:{s:1:\"a\";i:27;s:1:\"b\";s:13:\"category.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:8:\"Category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:1;a:5:{s:1:\"a\";i:28;s:1:\"b\";s:12:\"category.all\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:8:\"Category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:2;a:5:{s:1:\"a\";i:29;s:1:\"b\";s:13:\"category.list\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:8:\"Category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:3;a:5:{s:1:\"a\";i:30;s:1:\"b\";s:12:\"category.add\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:8:\"Category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:4;a:5:{s:1:\"a\";i:31;s:1:\"b\";s:13:\"category.edit\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:8:\"Category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:5;a:5:{s:1:\"a\";i:32;s:1:\"b\";s:15:\"category.delete\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:8:\"Category\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:6;a:5:{s:1:\"a\";i:33;s:1:\"b\";s:14:\"restaurant.all\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:10:\"Restaurant\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:7;a:5:{s:1:\"a\";i:34;s:1:\"b\";s:15:\"restaurant.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:10:\"Restaurant\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:8;a:5:{s:1:\"a\";i:35;s:1:\"b\";s:18:\"restaurant.details\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:10:\"Restaurant\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:9;a:5:{s:1:\"a\";i:36;s:1:\"b\";s:17:\"restaurant.status\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:10:\"Restaurant\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:10;a:5:{s:1:\"a\";i:37;s:1:\"b\";s:12:\"product.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Product\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:11;a:5:{s:1:\"a\";i:38;s:1:\"b\";s:11:\"product.all\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Product\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:12;a:5:{s:1:\"a\";i:39;s:1:\"b\";s:12:\"product.list\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Product\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:3;i:2;i:4;}}i:13;a:5:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"product.add\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Product\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:14;a:5:{s:1:\"a\";i:41;s:1:\"b\";s:12:\"product.edit\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Product\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:15;a:5:{s:1:\"a\";i:42;s:1:\"b\";s:14:\"product.delete\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Product\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:16;a:5:{s:1:\"a\";i:43;s:1:\"b\";s:9:\"city.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:4:\"City\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:17;a:5:{s:1:\"a\";i:44;s:1:\"b\";s:8:\"city.all\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:4:\"City\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:18;a:5:{s:1:\"a\";i:45;s:1:\"b\";s:9:\"city.list\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:4:\"City\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:19;a:5:{s:1:\"a\";i:46;s:1:\"b\";s:8:\"city.add\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:4:\"City\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:20;a:5:{s:1:\"a\";i:47;s:1:\"b\";s:9:\"city.edit\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:4:\"City\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:21;a:5:{s:1:\"a\";i:48;s:1:\"b\";s:11:\"city.delete\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:4:\"City\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:22;a:5:{s:1:\"a\";i:49;s:1:\"b\";s:10:\"order.list\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Orders\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:23;a:5:{s:1:\"a\";i:50;s:1:\"b\";s:9:\"order.all\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Orders\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:24;a:5:{s:1:\"a\";i:51;s:1:\"b\";s:10:\"order.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Orders\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:25;a:5:{s:1:\"a\";i:52;s:1:\"b\";s:11:\"report.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Reports\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:12;}}i:26;a:5:{s:1:\"a\";i:57;s:1:\"b\";s:20:\"role.permission.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:19:\"Role and Permission\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:27;a:5:{s:1:\"a\";i:58;s:1:\"b\";s:11:\"review.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Review\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:28;a:5:{s:1:\"a\";i:59;s:1:\"b\";s:14:\"review.pending\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Review\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:29;a:5:{s:1:\"a\";i:68;s:1:\"b\";s:23:\"content.management.user\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:23:\"Content Management User\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:3;}}i:30;a:5:{s:1:\"a\";i:70;s:1:\"b\";s:14:\"product.status\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:7:\"Product\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:5:{s:1:\"a\";i:71;s:1:\"b\";s:14:\"review.approve\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Review\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:5:{s:1:\"a\";i:72;s:1:\"b\";s:26:\"business.intelligence.user\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:26:\"Business Intelligence User\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:5:{s:1:\"a\";i:73;s:1:\"b\";s:11:\"banner.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Banner\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:5:{s:1:\"a\";i:74;s:1:\"b\";s:10:\"banner.add\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Banner\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:5:{s:1:\"a\";i:75;s:1:\"b\";s:11:\"banner.edit\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Banner\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:5:{s:1:\"a\";i:76;s:1:\"b\";s:13:\"banner.delete\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Banner\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:5:{s:1:\"a\";i:77;s:1:\"b\";s:20:\"user.management.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:8:\"All User\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:5:{s:1:\"a\";i:78;s:1:\"b\";s:15:\"admin.user.menu\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:10:\"Admin User\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:5:{s:1:\"a\";i:79;s:1:\"b\";s:10:\"banner.all\";s:1:\"c\";s:5:\"admin\";s:1:\"d\";s:6:\"Banner\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:5:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"SuperAdmin\";s:1:\"c\";s:5:\"admin\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:5:\"admin\";}i:2;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:7:\"Account\";s:1:\"c\";s:5:\"admin\";}i:3;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:3:\"CEO\";s:1:\"c\";s:5:\"admin\";}i:4;a:3:{s:1:\"a\";i:12;s:1:\"b\";s:9:\"BI Expert\";s:1:\"c\";s:5:\"admin\";}}}', 1739111910);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(4, 'The Pizza', 'upload/category/1809530074381086.webp', '2024-09-07 07:38:02', '2024-09-07 07:45:56'),
(5, 'Burger', 'upload/category/1809530090432743.webp', '2024-09-07 07:46:12', '2024-09-07 07:46:12'),
(6, 'Cake', 'upload/category/1809530124452840.webp', '2024-09-07 07:46:44', '2024-09-07 07:46:44'),
(7, 'Chicken', 'upload/category/1809530142272304.webp', '2024-09-07 07:47:01', '2024-09-07 07:47:01'),
(8, 'Cafe', 'upload/category/1809530170135264.webp', '2024-09-07 07:47:28', '2024-09-07 07:47:28'),
(9, 'Scoop Haven2', 'upload/category/1809530194339986.webp', '2024-09-07 07:47:51', '2024-10-05 08:48:21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `city_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `city_slug`, `created_at`, `updated_at`) VALUES
(1, 'Annweiler am Trifels', 'annweiler-am-trifels', '2024-09-07 07:58:10', '2024-09-07 07:58:10'),
(2, 'Landau in der Pfalz', 'landau-in-der-pfalz', '2024-09-07 07:59:04', '2024-09-07 07:59:04'),
(3, 'Neustadt Weinstraße', 'neustadt-weinstraße', '2024-09-07 08:00:51', '2024-09-07 08:00:51'),
(6, 'Bad Dürkheim', 'bad-dürkheim', '2024-10-05 08:50:17', '2024-10-05 08:50:17');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'client',
  `status` varchar(255) NOT NULL DEFAULT '1',
  `city_id` int(11) DEFAULT NULL,
  `shop_info` text DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `email_verified_at`, `password`, `token`, `photo`, `phone`, `address`, `role`, `status`, `city_id`, `shop_info`, `cover_photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RentSomeFood', 'rentsomeware@test.com', NULL, '$2y$12$D0DHCbOZgNR3xFv.hR/M5eJj9lg9MIspcHnno.g61LhxLjFnRO5UO', NULL, '1725460017.png', '124578996', 'Musterstraße 3 1234 Musterheim', 'client', '1', 1, 'Test', '1726074164.webp', NULL, NULL, '2024-10-05 08:54:59');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_desc` text DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `validity` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_desc`, `discount`, `validity`, `client_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'RENTSOMEWARE15', 'Rentsomeware Gutschein 15%', 15, '2025-01-31', '1', 1, '2024-09-12 15:56:58', '2024-09-12 15:56:58'),
(2, 'RENTSOMEWARE10', 'Rentsomeware Gutschein 10%', 10, '2024-11-29', '1', 1, '2024-09-12 15:57:11', '2024-09-12 15:57:11');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `failed_jobs`
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
-- Tabellenstruktur für Tabelle `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `gallery_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `galleries`
--

INSERT INTO `galleries` (`id`, `client_id`, `gallery_img`, `created_at`, `updated_at`) VALUES
(1, '1', 'upload/gallery/1810529083783445.webp', NULL, '2024-09-18 08:24:46'),
(2, '1', 'upload/gallery/1810529091283494.webp', NULL, '2024-09-18 08:24:53'),
(3, '1', 'upload/gallery/1810529098062641.webp', NULL, '2024-09-18 08:25:00'),
(4, '1', 'upload/gallery/1810529043839311.webp', NULL, '2024-09-18 08:24:09');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `menus`
--

INSERT INTO `menus` (`id`, `client_id`, `menu_name`, `menu_image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pizza', 'upload/menu/1809624544235662.png', '2024-09-08 08:47:31', '2024-09-08 08:47:31'),
(2, 1, 'Garlic Bread', 'upload/menu/1809624585674927.png', '2024-09-08 08:48:09', '2024-09-08 08:48:09'),
(3, 1, 'Dips', 'upload/menu/1809624608074645.png', '2024-09-08 08:48:31', '2024-09-08 08:48:31'),
(4, 1, 'Jumbo Slice', 'upload/menu/1809624621390091.png', '2024-09-08 08:48:43', '2024-09-08 08:48:43'),
(5, 1, 'Lasagne', 'upload/menu/1809624636893128.png', '2024-09-08 08:48:58', '2024-09-08 09:25:08'),
(6, 1, 'Quesadilla', 'upload/menu/1809624658510720.png', '2024-09-08 08:49:19', '2024-09-08 08:49:19'),
(7, 1, 'Pastas', 'upload/menu/1809624670579657.png', '2024-09-08 08:49:30', '2024-09-08 08:49:30'),
(8, 1, 'Deserts', 'upload/menu/1809624825778395.png', '2024-09-08 08:49:42', '2024-09-08 08:52:06'),
(10, 1, 'Test', 'upload/menu/1809731963475610.png', '2024-09-09 13:14:53', '2024-09-09 13:14:53');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '0001_01_01_000000_create_users_table', 1),
(8, '0001_01_01_000001_create_cache_table', 1),
(9, '0001_01_01_000002_create_jobs_table', 1),
(10, '2024_08_31_132309_create_admins_table', 2),
(11, '2024_09_03_125912_create_clients_table', 3),
(12, '2024_09_06_141957_create_categories_table', 4),
(13, '2024_09_07_095116_create_cities_table', 5),
(14, '2024_09_08_092247_create_menus_table', 6),
(15, '2024_09_08_110332_create_products_table', 7),
(16, '2024_09_11_144059_create_galleries_table', 8),
(17, '2024_09_12_173811_create_coupons_table', 9),
(18, '2024_09_15_175007_create_banners_table', 10),
(19, '2024_09_18_103309_create_wishlists_table', 11),
(20, '2024_09_21_104037_create_orders_table', 12),
(21, '2024_09_21_104046_create_order_items_table', 12),
(22, '2024_09_26_143456_create_reviews_table', 13),
(23, '2024_10_02_143028_create_permission_tables', 14),
(24, '2024_10_05_145237_create_notifications_table', 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 3),
(3, 'App\\Models\\Admin', 2),
(5, 'App\\Models\\Admin', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('06b31367-284c-44b1-9b70-e4f1afc2ca3a', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 2, '{\"message\":\"New Order Added in Shop\"}', NULL, '2024-10-05 13:07:07', '2024-10-05 13:07:07'),
('22fb1c9a-dd2f-4744-9a05-e93fd50a3c13', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 1, '{\"message\":\"New Order Added in Shop\"}', '2024-10-05 13:13:33', '2024-10-05 13:05:32', '2024-10-05 13:13:33'),
('322005e7-8c69-48f8-b7a2-0aae50711918', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 3, '{\"message\":\"New Order Added in Shop\"}', '2024-10-05 13:23:57', '2024-10-05 13:05:32', '2024-10-05 13:23:57'),
('6b9917b4-f177-40f8-8153-e0eff6490d86', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 4, '{\"message\":\"New Order Added in Shop\"}', NULL, '2024-10-05 13:07:07', '2024-10-05 13:07:07'),
('71666024-d5b0-473a-be0d-9d518fb61b23', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 1, '{\"message\":\"New Order Added in Shop\"}', '2024-10-05 13:13:35', '2024-10-05 13:07:07', '2024-10-05 13:13:35'),
('8bd4cffd-9600-42a2-8ab3-63688ccb977f', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 2, '{\"message\":\"New Order Added in Shop\"}', NULL, '2024-10-05 13:05:32', '2024-10-05 13:05:32'),
('bb78edb9-7dc0-4cee-ac59-2a1ad7585633', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 3, '{\"message\":\"New Order Added in Shop\"}', '2024-10-05 13:23:51', '2024-10-05 13:07:07', '2024-10-05 13:23:51'),
('d11998ba-19cd-44bc-8eda-373fabf3d9b9', 'App\\Notifications\\OrderComplete', 'App\\Models\\Admin', 4, '{\"message\":\"New Order Added in Shop\"}', NULL, '2024-10-05 13:05:32', '2024-10-05 13:05:32');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL,
  `total_amount` float NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_month` varchar(255) DEFAULT NULL,
  `order_year` varchar(255) DEFAULT NULL,
  `confirmed_date` varchar(255) DEFAULT NULL,
  `processing_date` varchar(255) DEFAULT NULL,
  `shipped_date` varchar(255) DEFAULT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `total_amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `shipped_date`, `delivered_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 8, 7.2, NULL, 'easyshop29463025', '21 September 2024', 'September', '2024', NULL, NULL, NULL, NULL, 'deliverd', '2024-09-21 09:09:19', '2024-09-25 12:36:45'),
(2, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 8, 8, NULL, 'easyshop78633104', '21 September 2024', 'September', '2024', NULL, NULL, NULL, NULL, 'deliverd', '2024-09-21 09:15:59', '2024-09-22 10:35:10'),
(3, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 9, 8.1, NULL, 'easyshop83034223', '25 September 2024', 'September', '2024', NULL, NULL, NULL, NULL, 'deliverd', '2024-09-25 12:31:19', '2024-09-25 12:35:37'),
(4, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 8, 7.2, NULL, 'easyshop15448134', '02 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-02 12:23:07', NULL),
(5, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 8, 7.2, NULL, 'easyshop24477664', '02 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'processing', '2024-10-02 12:37:32', '2024-10-02 15:10:39'),
(6, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 9, 8.1, NULL, 'easyshop19922294', '02 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'confirm', '2024-10-02 15:13:21', '2024-10-05 10:10:43'),
(7, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 8, 8, NULL, 'easyshop27441631', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 12:56:06', NULL),
(8, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 0, 0, NULL, 'easyshop69629273', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 12:56:56', NULL),
(9, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 8, 8, NULL, 'easyshop70434894', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 12:58:01', NULL),
(10, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 0, 0, NULL, 'easyshop15926355', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 13:00:10', NULL),
(11, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 3.5, 3.5, NULL, 'easyshop51545413', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 13:01:28', NULL),
(12, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 0, 0, NULL, 'easyshop93114955', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 13:02:56', NULL),
(13, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 0, 0, NULL, 'easyshop14587036', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 13:05:31', NULL),
(14, 3, 'Robert', 'robert@example.com', '12357', '3234567877', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 8, 8, NULL, 'easyshop67680765', '05 October 2024', 'October', '2024', NULL, NULL, NULL, NULL, 'Pending', '2024-10-05 13:07:07', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `client_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '1', 8, '2024-09-21 09:09:19', NULL),
(2, 2, 2, '1', '1', 8, '2024-09-21 09:15:59', NULL),
(3, 3, 4, '1', '1', 9, '2024-09-25 12:31:19', NULL),
(4, 4, 1, '1', '1', 8, '2024-10-02 12:23:07', NULL),
(5, 5, 2, '1', '1', 8, '2024-10-02 12:37:32', NULL),
(6, 6, 4, '1', '1', 9, '2024-10-02 15:13:21', NULL),
(7, 7, 2, '1', '1', 8, '2024-10-05 12:56:06', NULL),
(8, 9, 2, '1', '1', 8, '2024-10-05 12:58:01', NULL),
(9, 11, 5, '1', '1', 3.5, '2024-10-05 13:01:28', NULL),
(10, 14, 2, '1', '1', 8, '2024-10-05 13:07:07', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(27, 'category.menu', 'admin', 'Category', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(28, 'category.all', 'admin', 'Category', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(29, 'category.list', 'admin', 'Category', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(30, 'category.add', 'admin', 'Category', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(31, 'category.edit', 'admin', 'Category', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(32, 'category.delete', 'admin', 'Category', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(33, 'restaurant.all', 'admin', 'Restaurant', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(34, 'restaurant.menu', 'admin', 'Restaurant', '2024-10-03 10:55:36', '2024-10-04 18:03:15'),
(35, 'restaurant.details', 'admin', 'Restaurant', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(36, 'restaurant.status', 'admin', 'Restaurant', '2024-10-03 10:55:36', '2024-10-04 18:04:44'),
(37, 'product.menu', 'admin', 'Product', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(38, 'product.all', 'admin', 'Product', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(39, 'product.list', 'admin', 'Product', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(40, 'product.add', 'admin', 'Product', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(41, 'product.edit', 'admin', 'Product', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(42, 'product.delete', 'admin', 'Product', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(43, 'city.menu', 'admin', 'City', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(44, 'city.all', 'admin', 'City', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(45, 'city.list', 'admin', 'City', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(46, 'city.add', 'admin', 'City', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(47, 'city.edit', 'admin', 'City', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(48, 'city.delete', 'admin', 'City', '2024-10-03 10:55:36', '2024-10-04 18:11:02'),
(49, 'order.list', 'admin', 'Orders', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(50, 'order.all', 'admin', 'Orders', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(51, 'order.menu', 'admin', 'Orders', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(52, 'report.menu', 'admin', 'Reports', '2024-10-03 10:55:36', '2024-10-03 10:56:22'),
(57, 'role.permission.menu', 'admin', 'Role and Permission', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(58, 'review.menu', 'admin', 'Review', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(59, 'review.pending', 'admin', 'Review', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(68, 'content.management.user', 'admin', 'Content Management User', '2024-10-03 10:55:36', '2024-10-03 10:55:36'),
(70, 'product.status', 'admin', 'Product', '2024-10-04 17:58:15', '2024-10-04 17:58:15'),
(71, 'review.approve', 'admin', 'Review', '2024-10-04 18:12:57', '2024-10-04 18:12:57'),
(72, 'business.intelligence.user', 'admin', 'Business Intelligence User', '2024-10-04 18:15:54', '2024-10-04 18:15:54'),
(73, 'banner.menu', 'admin', 'Banner', '2024-10-04 18:18:49', '2024-10-04 18:24:20'),
(74, 'banner.add', 'admin', 'Banner', '2024-10-04 18:24:05', '2024-10-04 18:24:05'),
(75, 'banner.edit', 'admin', 'Banner', '2024-10-04 18:25:23', '2024-10-04 18:25:23'),
(76, 'banner.delete', 'admin', 'Banner', '2024-10-04 18:25:33', '2024-10-04 18:25:33'),
(77, 'user.management.menu', 'admin', 'All User', '2024-10-04 18:29:07', '2024-10-04 18:29:07'),
(78, 'admin.user.menu', 'admin', 'Admin User', '2024-10-04 18:35:45', '2024-10-04 18:35:45'),
(79, 'banner.all', 'admin', 'Banner', '2024-10-05 10:08:10', '2024-10-05 10:08:10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `most_populer` varchar(255) DEFAULT NULL,
  `best_seller` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `city_id`, `menu_id`, `code`, `qty`, `size`, `price`, `discount_price`, `image`, `client_id`, `most_populer`, `best_seller`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Piza Napoli', 'piza-napoli', 4, 2, 1, 'PC001', '50', 'Big', '10', '8', 'upload/product/1809731995930551.webp', '1', NULL, NULL, '1', '2024-09-09 13:15:24', '2024-09-09 13:15:24'),
(2, 'Pizza Salami', 'pizza-salami', 4, 1, 1, 'PC002', '10', 'Big', '10', '8', 'upload/product/1809732041233066.webp', '1', '1', '1', '1', '2024-09-19 09:52:40', '2024-09-19 09:52:40'),
(3, 'Burchetta', 'burchetta', 9, 5, 8, 'FO003', '2', '20', '12', '8', 'upload/product/1809732762274090.webp', '1', NULL, NULL, '1', '2024-09-10 14:57:14', '2024-09-10 14:57:14'),
(4, 'Pizzabrot', 'pizzabrot', 9, 5, 5, 'FO003', '1', '20', '10', '9', 'upload/product/1809732837335903.webp', '1', '1', NULL, '1', '2024-09-10 12:58:35', '2024-09-13 11:53:43'),
(5, 'The dip', 'the-dip', 5, 1, 3, 'FO003', '65', 'medium', '4', '3.5', 'upload/product/1810165778122746.webp', '1', '1', '1', '1', '2024-10-05 08:53:21', '2024-10-05 08:53:21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `reviews`
--

INSERT INTO `reviews` (`id`, `client_id`, `user_id`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Super Essen', '5', '1', '2024-09-27 11:10:28', '2024-09-29 12:50:17'),
(2, 1, 3, 'Super', '5', '1', '2024-09-27 11:12:47', '2024-10-05 10:12:54');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'admin', '2024-10-03 11:04:07', '2024-10-03 11:04:07'),
(2, 'CEO', 'admin', '2024-10-03 11:04:16', '2024-10-04 12:48:38'),
(3, 'Admin', 'admin', '2024-10-03 11:04:23', '2024-10-04 12:48:40'),
(4, 'Account', 'admin', '2024-10-03 11:04:33', '2024-10-04 12:48:43'),
(5, 'Marketing', 'admin', '2024-10-03 11:04:43', '2024-10-04 12:48:46'),
(6, 'Sales', 'admin', '2024-10-03 11:04:54', '2024-10-04 12:48:49'),
(7, 'Finance', 'admin', '2024-10-03 11:05:04', '2024-10-04 12:48:52'),
(9, 'Category Manager', 'admin', '2024-10-03 11:05:31', '2024-10-04 12:48:55'),
(10, 'Partner Manager', 'admin', '2024-10-03 11:07:39', '2024-10-04 12:48:58'),
(12, 'BI Expert', 'admin', '2024-10-03 13:35:59', '2024-10-04 12:49:02');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(37, 4),
(38, 1),
(38, 3),
(38, 4),
(39, 1),
(39, 3),
(39, 4),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 2),
(49, 3),
(50, 1),
(50, 2),
(50, 3),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 3),
(52, 12),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(68, 1),
(68, 3),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('E8vxZBjbAiMXSrhv1ULnzUZI74SeoMXdksKfRhz1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFl6THNFZENLTDY1SmVIQUJjSTgwdWJvWXBWY01weDVmcE9JUEJFdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fX0=', 1728144213),
('sd6PUoUQfya1CVtacUf3WIgHKA8D0v54dDZhRJQG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:135.0) Gecko/20100101 Firefox/135.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXMwWUhDcGlhTnlQcjg3emI4WE5YZUJSOVdHZUNQNDJTRFV0NEUzZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739032757);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','restaurant','user') NOT NULL DEFAULT 'user',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Magnus Hoffmann', 'magnus@example.de', '2024-08-31 11:11:25', '$2y$12$Ns1IQkOaSVL9kBoKVBULtumfCVlCHxS0.IEciSjiuhJWan7bWPETK', NULL, NULL, NULL, 'user', '1', NULL, '2024-08-30 10:29:11', '2024-08-31 11:11:25'),
(2, 'Test User', 'test@example.com', '2024-08-31 11:37:58', '$2y$12$M0gHUCV89B18okv3MxcyDud0BtPzud7xPIr/wJWj/nTKgip0wu/xq', NULL, NULL, NULL, 'user', '1', 'JieJgKZSDr', '2024-08-31 11:37:58', '2024-08-31 11:37:58'),
(3, 'Robert', 'robert@example.com', NULL, '$2y$12$am6jyV.CvbDE3/T8QvvJlOLuwdc/.qec2Co7tXGzD2QePOfy/2uLm', '1726660223.jpg', '12357', '3234567877', 'user', '1', NULL, '2024-09-05 13:57:40', '2024-09-19 09:48:57');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `client_id`, `created_at`, `updated_at`) VALUES
(13, 3, 1, '2024-09-19 09:30:06', NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indizes für die Tabelle `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indizes für die Tabelle `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indizes für die Tabelle `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indizes für die Tabelle `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indizes für die Tabelle `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indizes für die Tabelle `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indizes für die Tabelle `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indizes für die Tabelle `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indizes für die Tabelle `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indizes für die Tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_client_id_foreign` (`client_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indizes für die Tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indizes für die Tabelle `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indizes für die Tabelle `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indizes für die Tabelle `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT für Tabelle `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
