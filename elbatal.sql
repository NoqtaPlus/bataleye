-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 08, 2018 at 02:08 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.1.17-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elbatal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads_positions`
--

CREATE TABLE `ads_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads_positions`
--

INSERT INTO `ads_positions` (`id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'main-1', NULL, NULL),
(2, 'main-2', NULL, NULL),
(3, 'sidebar', NULL, NULL),
(4, 'inner-pages-1', NULL, NULL),
(5, 'inner-pages-2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `person_id` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `slider` tinyint(1) DEFAULT '0',
  `breaking` tinyint(1) DEFAULT '0',
  `keywards` text COLLATE utf8mb4_unicode_ci,
  `number_of_readings` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `person_id`, `category_id`, `image`, `active`, `slider`, `breaking`, `keywards`, `number_of_readings`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'wfI0EGx6yD1541584828.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:00:28', '2018-11-07 15:47:52'),
(2, NULL, 2, 'OtXii6qKYz1541584846.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:00:46', '2018-11-07 08:00:46'),
(3, NULL, 3, 'cDSYrUEGgR1541585393.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:09:53', '2018-11-07 12:09:01'),
(4, NULL, 3, 'jK8Wr7TLTS1541585402.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:10:02', '2018-11-07 08:10:02'),
(5, NULL, 1, 'e7BXLJtWHS1541585421.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:10:21', '2018-11-07 11:30:29'),
(6, NULL, 3, '9cQMOE70Nl1541585433.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:10:33', '2018-11-07 09:21:48'),
(7, NULL, 1, 'TzUaV4dRRU1541585452.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:10:52', '2018-11-07 08:27:51'),
(8, NULL, 3, 'ZogqaT1Iiv1541585460.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:11:00', '2018-11-07 08:11:00'),
(9, NULL, 2, 'dz9Uu0COlp1541585485.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:11:25', '2018-11-08 08:00:50'),
(10, NULL, 3, 'Obw0SVRdc11541585494.png', 1, 1, 1, NULL, NULL, 1, NULL, '2018-11-07 08:11:34', '2018-11-08 10:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_translation`
--

CREATE TABLE `blogs_translation` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `keywards` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs_translation`
--

INSERT INTO `blogs_translation` (`id`, `blog_id`, `locale`, `title`, `short_description`, `long_description`, `content`, `keywards`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:00:28', '2018-11-07 08:00:28'),
(2, 1, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:00:28', '2018-11-07 08:00:28'),
(3, 2, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:00:46', '2018-11-07 08:00:46'),
(4, 2, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:00:46', '2018-11-07 08:00:46'),
(5, 3, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:09:53', '2018-11-07 08:09:53'),
(6, 3, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:09:54', '2018-11-07 08:09:54'),
(7, 4, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:02', '2018-11-07 08:10:02'),
(8, 4, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:02', '2018-11-07 08:10:02'),
(9, 5, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:21', '2018-11-07 08:10:21'),
(10, 5, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:21', '2018-11-07 08:10:21'),
(11, 6, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:33', '2018-11-07 08:10:33'),
(12, 6, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:33', '2018-11-07 08:10:33'),
(13, 7, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:52', '2018-11-07 08:10:52'),
(14, 7, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:10:52', '2018-11-07 08:10:52'),
(15, 8, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:11:00', '2018-11-07 08:11:00'),
(16, 8, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:11:00', '2018-11-07 08:11:00'),
(17, 9, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:11:25', '2018-11-07 08:11:25'),
(18, 9, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:11:26', '2018-11-07 08:11:26'),
(19, 10, 'en', 'DR. Ahmed El Batal In Bahrain', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:11:34', '2018-11-07 08:11:34'),
(20, 10, 'ar', 'د. أحمد البطل سنتر', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore</p>', NULL, NULL, '2018-11-07 08:11:34', '2018-11-07 08:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `active`, `parent_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'رعاية طفلك', 'رعاية طفلك', 1, NULL, NULL, NULL, NULL),
(2, 'شهور الحمل', 'شهور الحمل', 1, NULL, NULL, NULL, '2018-11-08 07:36:09'),
(3, 'مواضيع عامة', 'مواضيع عامة', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `championships`
--

CREATE TABLE `championships` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `championships`
--

INSERT INTO `championships` (`id`, `name`, `image`, `years`, `created_at`, `updated_at`) VALUES
(19, 'الدورى الممتاز', '9gTZzYWY9c1522851254.png', '1963', '2018-04-04 19:14:14', '2018-04-04 19:14:14'),
(17, 'الدورى الممتاز', 'UniRXVVlCd1522851222.png', '1962', '2018-04-04 19:13:42', '2018-04-04 19:13:42'),
(16, 'كأس مصر', 'idg1K27AMn1522851179.png', '1954', '2018-04-04 19:12:59', '2018-04-04 19:12:59'),
(15, 'دوري منطقة القاهرة', 'Yphp4R8G6A1522851127.png', '1933', '2018-04-04 19:12:07', '2018-04-04 19:12:07'),
(13, 'كأس مصر', 'XeGSVkNMS41522851042.png', '1923', '2018-04-04 19:10:42', '2018-04-04 19:10:42'),
(14, 'كأس مصر', 'nKo8Yg8yYw1522851093.png', '1929', '2018-04-04 19:11:33', '2018-04-04 19:11:33'),
(20, 'كأس مصر', 'Yh93KmMieQ1522851286.png', '1965', '2018-04-04 19:14:46', '2018-04-04 19:14:46'),
(22, 'كأس مصر', '7TlG6wxKlA1522851316.png', '1967', '2018-04-04 19:15:16', '2018-04-04 19:15:16'),
(23, 'كأس مصر', '6SNn9d480A1522851353.png', '1986', '2018-04-04 19:15:53', '2018-04-04 19:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opinion` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8mb4_unicode_ci,
  `external_link` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `opinion`, `country`, `email`, `phone`, `logo`, `other`, `external_link`, `created_by`, `updated_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Mostapha Mohamed Ahmed', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea', 'Egypt', NULL, NULL, '170926avatar.png', NULL, NULL, 1, NULL, 1, '2018-11-07 15:09:26', '2018-11-07 15:12:28'),
(2, 'yasen Abdelghany', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', 'Sudia', NULL, NULL, '171338avatar.png', NULL, NULL, 1, NULL, 1, '2018-11-07 15:13:27', '2018-11-07 15:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `active`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'مصطفى محمد السيد', 'mostapha@mahacode.com', 'خدمة عظيمة', '2018-11-07 09:54:26', '2018-11-07 11:11:38'),
(3, 3, 1, 'ee', 'mostapha@mahacode.com', 'ewew', '2018-11-07 09:55:41', '2018-11-07 09:55:41'),
(4, 6, 1, 'ddd', 'mostapha@mahacode.com', 'خدمة كويسة', '2018-11-07 09:58:36', '2018-11-07 10:52:35'),
(5, 9, 0, NULL, NULL, NULL, '2018-11-07 11:51:57', '2018-11-07 11:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_from` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `name`, `contact_from`, `doctor_name`, `doctor_time`, `email`, `phone`, `address`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Mostapha Mohamed Ahmed', 'online_appointment', NULL, '11/15/2018', 'mostapha@mahacode.com', '920006659', NULL, 'Message', '2018-11-08 09:26:10', '2018-11-08 09:26:10'),
(2, 'Mostapha Mohamed Ahmed', 'online_appointment', 'fsa', '11/15/2018', 'mostapha@mahacode.com', '920006659', NULL, 'Message', '2018-11-08 09:28:11', '2018-11-08 09:28:11'),
(3, 'مصطفى محمد', 'contactus', NULL, NULL, 'admin@admin.com', '05565686889', NULL, 'ارجو عمل', '2018-11-08 09:36:34', '2018-11-08 09:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `year`, `content`, `created_at`, `updated_at`) VALUES
(1, 0, '<p>تأسس النادي في عام 1921 كواحد من أوائل النوادي الرياضيه في مصر ليبدأ نشاطه في كرة القدم في نفس الموسم، ويحصل النادي علي أول بطوله في تاريخه عندما فاز ببطولة كأس مصر 1923 ليصبح ثاني نادي مصري يفوز بتلك الكأس بعد الزمالك .وكرر الترسانه إنجازه مره أخري بعد مرور 6 سنوات بعد فوزه بالكأس للمره الثانيه في العام 1929 ومن ثم بدأ النادي في الاشتراك ببطولة الدوري الممتاز منذ نشاته عام 1948 وحصل الترسانه علي المركز الثاني وراء الأهلي بعد منافسه ثنائيه بينهما وفاز الفريق مره اخري ببطولة كأس مصر عام 1954 ليحقق الثلاثيه ببطولة كأس مصر الجيل الذهبي كان الفريق دائما في قلب المنافسه علي البطوله وكان دائما في المربع الذهبي وأحيانا في المركز الثاني والثالث حتي تحقق حلمه وحقق الإنجاز بالفوز بأول بطولة دوري في تاريخه موسم 1962/1963 بقيادة هداف الفريق ونجمه الأول حسن الشاذلي ومصطفي رياض ومحمد رياض وبدوي عبد الفتاح</p>\r\n\r\n<p>فاز الترسانة بكأس مصر 6 مرات أعوام (1923-1929-1954-1965-1967-1986) ، بينما وصل للنهائي 5 مرات أعوام (1938-1950-1956-1966) لكنه لم يحالفه الحظ في الفوز بها .. وارتبط نادي الترسانة بالفوز في النهائي على أندية الزمالك والمصري بنتيجة (4-1) في نهائي كأس مصر وهي تعد أكبر نتيجة للترسانة في مشاركته في نهائي كأس مصر .. بينما تعد نتيجة مع النادي الاهلى في نهائي كأس مصر عام 1950 بالهزيمة (6-صفر) هي أكبر هزيمة في مشاركته في كأس مصر ، بينما كان أكبر فوز أحرزه نادي الترسانة على النادي الاهلى كان موسم 1953-1954 وكانت بنتيجة ثقيلة (6-2) ، وأيضاً في موسم 60-61 كرر نادي الترسانة فوزه على النادي الاهلى بنتيجة (5-1) ، أى أن نادي الترسانة كان بعبع الاهلى والزمالك في الخمسينيات والستينيات.</p>\r\n\r\n<p>كثيراً ما ينبذ لنا نادي الترسانة لاعبين فذاذ ، كما خرج لنا من قبل الاسطورتين حسن الشاذلي ومصطفى رياض فالان يخرج لنا بلاعبين هما الابرز وهم من الجيل الحالي فقد خرج علينا نادي الترسانة بلاعب خط وسط برز كثيراً في صفوفه وهو محمد عبدالواحد لاعب الترسانة والزمالك السابقين والاسماعيلي الحالي فقد لمع كثيراً ضمن صفوفه إلى أن اتجه إلى اللعب لنادي الزمالك في صفقه رائعة لنادي الزمالك ثم بعدها اتجه للنادي الاسماعيلي وهو يلمع بين صفوفه حتى الان، ثم نتجه الان بلاعب تألق كثيراً وصال وجال في ملاعبنا المصرية رغم صغر سنه وهو من اللاعبين الذين لن ولم تنساهم الجماهير المصرية أبدا فهو لاعب ذو خلق عالي ومتدين ومخلص لفانلة نادي .. فهو النجم محمد أبو تريكه الذي انتقل بموجبه للنادي الاهلى بينما كان على اعتاب الانتقال لنادي الزمالك .. لكن يستطيع النادي الاهلى للحصول على خدماته .. فتألق بين صفوفه وأحرز بطولات كبيرة وكثيرة مع النادي الاهلى بل وصعد لكأس العالم للأندية والتي أقيمت في اليابان وهو ضمن صفوفه وأحرز هداف الدوري المصري العام الماضي .. وأيضاً كان صاحب الضربة الاخيرة وضربة الفوز بكأس الأمم الأفريقية لعام 2006 مع المنتخب الوطني .</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2018-04-10 14:46:06'),
(2, 2001, 'تأسس النادي في عام 1921 كواحد من أوائل النوادي الرياضيه في مصر ليبدأ نشاطه في كرة القدم في نفس الموسم، ويحصل النادي علي أول بطوله في تاريخه عندما فاز ببطولة كأس مصر 1923 ليصبح ثاني نادي مصري يفوز بتلك الكأس بعد الزمالك .وكرر الترسانه إنجازه مره أخري بعد مرور 6 سنوات بعد فوزه بالكأس للمره الثانيه في العام 1929 ومن ثم بدأ النادي في الاشتراك ببطولة الدوري الممتاز منذ نشاته عام 1948 وحصل الترسانه علي المركز الثاني وراء الأهلي بعد منافسه ثنائيه بينهما وفاز الفريق مره اخري ببطولة كأس مصر عام 1954 ليحقق الثلاثيه ببطولة كأس مصر الجيل الذهبي كان الفريق دائما في قلب المنافسه علي البطوله وكان دائما في المربع الذهبي وأحيانا في المركز الثاني والثالث حتي تحقق حلمه وحقق الإنجاز بالفوز بأول بطولة دوري في تاريخه موسم 1962/1963 بقيادة هداف الفريق ونجمه الأول حسن الشاذلي ومصطفي رياض ومحمد رياض وبدوي عبد الفتاح', '2018-04-08 13:45:07', '2018-04-10 14:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `album_title`, `images`, `created_at`, `updated_at`) VALUES
(3, 'صوره 1', 'Ouvs3zDYla1541428043.png;Vr6VBHlQy41541428002.png;hRh4C3PlVA1541428002.png;8qIncP10KX1541428002.png;NbfswZbDGO1541428002.png;xp7jjwFdEP1541427941.png;ILccx5PenS1541427916.png;ztAz1NuYum1541427698.png', '2018-11-05 20:21:38', '2018-11-05 20:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'top manager', NULL, NULL),
(2, 'manager', NULL, NULL),
(3, 'employee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Arabic', 'ar', NULL, NULL),
(2, 'English', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `link_section_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`link_id`, `link_section_id`, `title`, `route`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', 'getFrontHome', 1, NULL, NULL, NULL),
(2, 1, 'aboutus', 'getAboutusPage', 1, NULL, NULL, '2018-11-03 07:40:45'),
(3, 1, 'doctors', 'getFrontPersons', 1, NULL, NULL, '2018-11-04 08:57:27'),
(4, 1, 'Gallary', 'getFrontGallary', 1, NULL, NULL, '2018-11-02 22:37:22'),
(5, 1, 'equipments', 'getFrontEquipments', 1, NULL, NULL, '2018-11-02 22:38:14'),
(6, 1, 'technologies', 'getFrontTechnologies', 1, NULL, NULL, '2018-11-02 22:39:09'),
(7, 2, 'blogs', 'getFrontBlog', 1, NULL, '2018-05-07 18:02:32', '2018-11-04 12:22:50'),
(8, 1, 'contactus', 'getFrontContactus', 1, NULL, '2018-11-07 07:35:44', '2018-11-07 07:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `links_translation`
--

CREATE TABLE `links_translation` (
  `id` int(11) NOT NULL,
  `link_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `links_translation`
--

INSERT INTO `links_translation` (`id`, `link_id`, `locale`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'الرئيسية', '2018-11-03 09:25:04', NULL),
(2, 1, 'en', 'home', '2018-11-03 09:25:04', NULL),
(3, 2, 'ar', 'من نحن', '2018-11-03 09:25:58', NULL),
(4, 2, 'en', 'About Us', '2018-11-03 09:25:58', NULL),
(5, 3, 'ar', 'الأطباء', '2018-11-03 09:27:03', NULL),
(6, 3, 'en', 'Doctors', '2018-11-03 09:27:03', NULL),
(7, 4, 'ar', 'معرض الوسائط', '2018-11-03 09:27:54', NULL),
(8, 4, 'en', 'Gallary', '2018-11-03 09:27:54', NULL),
(9, 5, 'ar', 'المعدات الطبية', '2018-11-03 09:28:49', NULL),
(10, 5, 'equipments', 'en', '2018-11-03 09:28:49', NULL),
(11, 6, 'ar', 'التكنولوجيا المستخدمة', '2018-11-03 09:30:23', NULL),
(12, 6, 'en', 'Technologies', '2018-11-03 09:30:23', NULL),
(13, 8, 'ar', 'إتصل بنا', '2018-11-03 09:31:28', NULL),
(14, 8, 'en', 'Contact Us', '2018-11-03 09:31:28', NULL),
(15, 7, 'en', 'news', '2018-11-07 07:35:44', '2018-11-07 07:35:44'),
(16, 7, 'ar', 'الأخبار', '2018-11-07 07:35:44', '2018-11-07 07:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `link_sections`
--

CREATE TABLE `link_sections` (
  `link_section_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link_sections`
--

INSERT INTO `link_sections` (`link_section_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'navbar', NULL, NULL),
(2, 'footer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(10) UNSIGNED NOT NULL,
  `opposing_team` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `championship` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stadium` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `result` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `opposing_team`, `logo`, `championship`, `stadium`, `date`, `time`, `result`, `created_at`, `updated_at`) VALUES
(1, 'الاهلى', 'CFhLNjnbln1522748741.png', 'دورى', 'ستاد القاهره', '2018-02-23', '14:00:00', '0', '2018-04-03 14:45:41', '2018-04-04 19:27:38'),
(2, 'الزمالك', 'JPkoLlOGAD1523352910.jpg', 'الدورى الممتاز', 'القاهره', '2018-12-04', '14:00:00', '0-0', '2018-04-04 16:12:30', '2018-04-10 14:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_08_08_112606_create_user_roles_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2017_08_08_225052_create_sidebar_items_table', 6),
(34, '2017_08_08_224302_create_sidebar_menuses_table', 6),
(6, '2017_08_12_211705_create_pages_table', 1),
(7, '2017_08_13_130548_create_service_sections_table', 1),
(8, '2017_08_13_130903_create_services_table', 1),
(9, '2017_08_14_213550_create_clients_table', 1),
(10, '2017_08_18_155345_create_trackers_table', 1),
(11, '2017_08_19_224958_create_categories_table', 1),
(12, '2017_08_19_225040_create_posts_table', 1),
(13, '2017_08_31_131050_create_sliders_table', 1),
(14, '2017_08_31_151258_create_link_sections_table', 1),
(15, '2017_08_31_151258_create_links_table', 1),
(16, '2017_09_08_195917_create_contacts_table', 1),
(31, '2017_09_15_192328_create_settings_table', 4),
(30, '2018_02_06_091604_create_ads__positions_table', 3),
(19, '2018_03_05_140819_create_ads_table', 1),
(20, '2018_03_14_130405_create_images_table', 1),
(29, '2018_03_14_130405_create_videos_table', 2),
(22, '2018_03_14_131133_create_history_table', 1),
(23, '2018_03_14_132124_create_comments_table', 1),
(24, '2018_03_17_111749_jobs', 1),
(25, '2018_03_17_114413_persons', 1),
(26, '2018_03_18_120006_sponsors', 1),
(27, '2018_03_18_124227_championships', 1),
(28, '2018_03_26_140906_matches', 1),
(32, '2018_04_15_110338_create_tags_table', 5),
(33, '2018_04_15_110606_create_tag_post_table', 5),
(36, '2018_05_14_091334_create_ticket_table', 7),
(37, '2018_05_14_132653_create-subscription-table', 7),
(38, '2018_05_15_094207_add_whatsap_to_setting_table', 8),
(39, '2018_06_02_101518_add_youtube_to_setting_table', 9),
(40, '2018_06_02_121830_add_youtube_to_setting_table', 10),
(41, '2018_06_04_143654_add_permission_to_users_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` text COLLATE utf8mb4_unicode_ci,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_type`, `external_link`, `title`, `description`, `image`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'من نحن', NULL, '184347image-1.png', 1, NULL, NULL, '2018-11-02 16:43:47'),
(2, 'feature', 'link', NULL, NULL, '011219gallery-4.png', 1, 1, '2018-11-01 22:35:14', '2018-11-06 14:17:29'),
(3, 'feature', 'Affordable link', NULL, NULL, '011251gallery-2.png', NULL, 1, '2018-11-01 22:35:40', '2018-11-06 14:18:00'),
(4, 'feature', 'Great Facilities link', 'سليدر', NULL, '011315gallery-3.png', 1, 1, '2018-10-29 21:44:01', '2018-11-06 14:18:31'),
(5, 'feature', 'Consult Us link', NULL, NULL, '011325gallery-5.png', NULL, 1, '2018-11-01 22:32:37', '2018-11-06 14:18:49'),
(11, 'expertise', NULL, NULL, NULL, '095109icon-4.png', 1, 1, '2018-11-05 07:48:50', '2018-11-05 07:51:09'),
(12, 'expertise', NULL, NULL, NULL, '094948icon-3.png', 1, 1, '2018-11-05 07:49:48', '2018-11-05 07:49:48'),
(13, 'expertise', NULL, NULL, NULL, '095152icon-2.png', 1, 1, '2018-11-05 07:51:52', '2018-11-05 07:51:52'),
(14, 'expertise', NULL, NULL, NULL, '095237icon-1.png', 1, 1, '2018-11-05 07:52:37', '2018-11-05 07:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translation`
--

CREATE TABLE `pages_translation` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `mission` text COLLATE utf8_unicode_ci,
  `vision` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_translation`
--

INSERT INTO `pages_translation` (`id`, `page_id`, `locale`, `title`, `short_description`, `long_description`, `mission`, `vision`, `created_at`, `updated_at`) VALUES
(1, 1, 'ar', 'البطل سنتر', 'مركز د. بطل لجراحات العين والليزر فى جدة بالمملكة العربية السعودية - هو مركز استشاري متخصص يضم عيادات استشارية باشراف الدكتور أحمد حسان بطل الطبيب المعروف والاستشاري في طب وجراحة عيون الاطفال والحول. وقد تأسس المركز عام 2010 في مدينة جدة المدينة الساحلية، عروس البحر الأحمر، ثاني أكبر المدن في المملكة العربية السعودية. نقدم في المركز رعاية طبية متكاملة للعناية بالعين ومعالجة الأمراض التي تصيبها. حيث يقوم الأطباء والاستشاريون العاملون في هذه المركز بتقديم خدمات تشخيصية وعلاجية متكاملة للبالغين والأطفال في كل الاختصاصات الدقيقة في مجال طب وأمراض العيون مثل علاج الماء الأبيض والأزرق وعلاج الحول، وتصحيح انكسار البصر وعلاج أمراض الشبكية والقرنية. وقد تم تزويد العيادة بالأجهزة والمعدات الطبية وفقاً لأرقى المعايير العالمية.', '<p>مركز د. بطل لجراحات العين والليزر فى جدة بالمملكة العربية السعودية - هو مركز استشاري متخصص يضم عيادات استشارية باشراف الدكتور أحمد حسان بطل الطبيب المعروف والاستشاري في طب وجراحة عيون الاطفال والحول. وقد تأسس المركز عام 2010 في مدينة جدة المدينة الساحلية، عروس البحر الأحمر، ثاني أكبر المدن في المملكة العربية السعودية. نقدم في المركز رعاية طبية متكاملة للعناية بالعين ومعالجة الأمراض التي تصيبها. حيث يقوم الأطباء والاستشاريون العاملون في هذه المركز بتقديم خدمات تشخيصية وعلاجية متكاملة للبالغين والأطفال في كل الاختصاصات الدقيقة في مجال طب وأمراض العيون مثل علاج الماء الأبيض والأزرق وعلاج الحول، وتصحيح انكسار البصر وعلاج أمراض الشبكية والقرنية. وقد تم تزويد العيادة بالأجهزة والمعدات الطبية وفقاً لأرقى المعايير العالمية.&nbsp;<br />\r\n<br />\r\n<strong>الفريق الطبي لمركز د. بطل لجراحات العين والليزر</strong><br />\r\n<br />\r\n<strong>الأطباء</strong><br />\r\n- د.أحمد حسان بطل (رئيس المركز)<br />\r\nاستشاري طب وجراحة الحول وعيون الأطفال زميل كلية الجراحيين الملكية البريطانية زميل الأكاديمية الأمريكية لطب العيون<br />\r\n<br />\r\n<strong>- د. وضاح جلبي</strong><br />\r\nاستشاري جراحة الشبكية والماء الأبيض زميل كلية الجراحين الملكية البريطانية<br />\r\n<br />\r\n<strong>- د. براء فحام</strong><br />\r\nاستشاري جراحة القرنية والليزك وتصحيح البصر - البورد العربي لطب العيون<br />\r\n<br />\r\n<strong>- د. علا الحسن</strong><br />\r\nأخصائي أول طب وجراحة العيون - البورد المصري لطب وجراحة العيون<br />\r\n<br />\r\n<strong>الأخصائيات</strong><br />\r\n- منال أحمد غرايبة<br />\r\nأخصائية بصريات وتقويم عضلات العين<br />\r\n- أسماء احدقو<br />\r\nأخصائية بصريات والعدسات اللاصقة<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n</ul>', 'ملتزمون بتقديم خدمات طبية رفيعة المستوى لمرضانا في مجال أمراض العين وجراحاتها من خلال فريق طبي يؤمن برسالته في ربط البحث العلمي القائم على الدليل مع دوره في تلبية الإحتياجات الصحية للمجتمع.', 'أن تكون لنا الريادة والصدارة في مجال أمراض العين وجراحاتها في المملكة العربية السعودية ودول الخليج من خلال تقديم أعلى مستويات الخدمة الطبية المبنية على اسس البحث العلمي الحديث.', '2018-10-30 06:21:00', '2018-11-07 12:58:26'),
(2, 1, 'en', 'EL BATAL CENTER', 'short descDr. Batal Eye & Laser Center is a specialized ophthalmology institute for treatment of different eye diseases. Located at Jeddah, Kingdom of Saudi Arabia, the center has a medical team that includes specialists and consultants in all fields of Ophthalmology. Leaded and supervised by Dr. Ahmad Hassan Batal who is a renowned doctor and consultant in Ophthalmology and Strabismus in children, the center was founded on 2010 in the coastal city of Jeddah, Bride of the Red Sea and the second largest city in the Kingdom.', '<p>Dr. Batal Eye &amp; Laser Center is a specialized ophthalmology institute for treatment of different eye diseases. Located at Jeddah, Kingdom of Saudi Arabia, the center has a medical team that includes specialists and consultants in all fields of Ophthalmology. Leaded and supervised by Dr. Ahmad Hassan Batal who is a renowned doctor and consultant in Ophthalmology and Strabismus in children, the center was founded on 2010 in the coastal city of Jeddah, Bride of the Red Sea and the second largest city in the Kingdom. Integrated medical care is offered as a sub-specialized center.</p>\r\n\r\n<p>Our center provides sophisticated diagnostic and therapeutic services for all age groups (adults and children) in the field of eye diseases such as Cataract, Glaucoma, treatment of strabismus, visual correction for refractive errors, and treatment of diseases of retina and cornea. patient care is being rendered in the center with the use of medical equipment that meet the highest international standards.</p>\r\n\r\n<h3>DEPARTMENTS</h3>\r\n\r\n<ul>\r\n	<li>Unit of Strabismus and Pediatric Ophthalmology</li>\r\n	<li>Unit of Refractive Ophthalmology Using Excimer Laser</li>\r\n	<li>Unit of Corneal Diseases</li>\r\n	<li>Unit of Contact Lenses</li>\r\n	<li>Unit of Cataract and Glaucoma</li>\r\n	<li>Unit Occuplasty and Lacrimal System Disaeses</li>\r\n	<li>Unit of Retinal Diseases and Surgeries</li>\r\n</ul>', 'our new mission', 'our new vission', '2018-10-30 06:36:19', '2018-11-05 21:01:24'),
(3, 2, 'ar', 'Great Staff', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n\r\nة', '<p>Can frames and glasses work better than lenses? All children, except one, grow up. They soon know that they will grow up, and the way Wendy knew was this. One day when she was two years old she was playing in a garden, and she plucked another flower and ran with it to her mother. Quality initiatives without exceptional innovation. Continually coordinate backward-compatible interfaces through cross-platform growth strategies. Distinctively parallel task premier innovation for standardized communities. Distinctively myocardinate innovative ROI via goal-oriented e-tailers. Enthusiastically evolve progressive systems with out-of-the-box infrastructures. Headline H3 HTML Tag Example Appropriately actualize multimedia based leadership skills with accurate action items. Progressively repurpose magnetic e-tailers through 24/7 ideas. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Abdullah , Source Name Proactively extend bricks-and-clicks vortals and enabled e-markets. Uniquely transform future-proof mindshare with worldwide meta-services. Competently administrate high-quality deliverables before empowered technologies. Headline H4 HTML Tag Example List one is awesome. Adding list item is very easily. List Two is awesome. Adding list item is very easily. List Three is awesome. Adding list item is very easily.</p>', NULL, NULL, '2018-10-30 06:36:19', '2018-11-05 20:42:46'),
(4, 2, 'en', 'Great Staff', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ة', '<p>gfgf</p>', NULL, NULL, '2018-10-30 21:51:47', '2018-11-05 20:42:46'),
(5, 3, 'en', 'Affordable', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ة', NULL, NULL, NULL, '2018-11-01 22:32:37', '2018-11-06 14:18:00'),
(6, 3, 'ar', 'Affordable', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ة', '<p>Affordable</p>', NULL, NULL, '2018-11-01 22:32:37', '2018-11-06 14:18:00'),
(7, 4, 'en', 'Great Facilities', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ة', '<p>Great Facilities</p>', NULL, NULL, '2018-11-01 22:35:14', '2018-11-06 14:18:31'),
(8, 4, 'ar', 'Great Facilities', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ة', '<p>Great Facilities</p>', NULL, NULL, '2018-11-01 22:35:14', '2018-11-06 14:18:31'),
(9, 5, 'en', 'Consult Us', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ة', '<p>Consult Us</p>', NULL, NULL, '2018-11-01 22:35:40', '2018-11-06 14:18:49'),
(10, 5, 'ar', 'Consult Us', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ة', '<p>Consult Us</p>', NULL, NULL, '2018-11-01 22:35:40', '2018-11-06 14:18:50'),
(11, 11, 'en', 'CATARACT AND GLAUCOMA', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:48:50', '2018-11-05 07:48:50'),
(12, 11, 'ar', 'CATARACT AND GLAUCOMA', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:48:50', '2018-11-05 07:48:50'),
(13, 12, 'en', 'RETINAL AND SURGERIES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:49:48', '2018-11-05 07:49:48'),
(14, 12, 'ar', 'RETINAL AND SURGERIES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:49:48', '2018-11-05 07:49:48'),
(15, 13, 'en', 'RETINAL AND SURGERIES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:51:52', '2018-11-05 07:51:52'),
(16, 13, 'ar', 'CONTACT LENSES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:51:52', '2018-11-05 07:51:52'),
(17, 14, 'en', 'CORNEAL DISEASES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:52:37', '2018-11-05 07:52:37'),
(18, 14, 'ar', 'CORNEAL DISEASES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad</p>', NULL, NULL, '2018-11-05 07:52:37', '2018-11-05 07:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `contact_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` text COLLATE utf8mb4_unicode_ci,
  `twitter_link` text COLLATE utf8mb4_unicode_ci,
  `insta_link` text COLLATE utf8mb4_unicode_ci,
  `youtube_link` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `image`, `contact_info`, `facebook_link`, `twitter_link`, `insta_link`, `youtube_link`, `created_at`, `updated_at`) VALUES
(1, '115115team-1.png', '800967543221', 'https://www.facebook.com/DrBatalCenter', 'https://twitter.com/account/suspended', 'https://www.instagram.com/drbatalcenter/', 'https://www.youtube.com/channel/UCv_RtKbDTVzIqAn7iJWBjSg', '2018-11-03 12:11:18', '2018-11-05 18:07:30'),
(2, '141138team-2.png', '0015565655544', NULL, NULL, NULL, NULL, '2018-11-03 12:11:38', '2018-11-03 12:11:38'),
(3, '141222team-2.png', '56551', 'fac', 'tww', 'insta', 'you', '2018-11-03 12:12:22', '2018-11-04 08:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `persons_translation`
--

CREATE TABLE `persons_translation` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `services_topics` text COLLATE utf8_unicode_ci,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialist_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `training` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_days` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persons_translation`
--

INSERT INTO `persons_translation` (`id`, `person_id`, `locale`, `name`, `degree`, `short_description`, `long_description`, `services_topics`, `role`, `specialist_in`, `training`, `work_days`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Dr. Ahmed Hassan Al-Batal (President of the Center)', 'Royal College of surgeons', 'Senior Consultant, Pediatric Surgery and Eye Surgery\r\nFellow of the British Royal Surgical College\r\nFellow of the American Academy of Ophthalmology', '<p>sdfsfs</p>', NULL, NULL, 'Senior Consultant Ophthalmology, Pediatric and adults strabismus', 'American Academy of Ophthalmology', 'Saturday To Thurseday', '2018-11-03 12:11:18', '2018-11-05 18:07:30'),
(2, 1, 'ar', 'fsa', 'sesd', 'استشاري أول طب وجراحة الحول وعيون الأطفال \r\nزميل كلية الجراحيين الملكية البريطانية\r\nزميل الأكاديمية الأمريكية لطب العيون', '<p>sdsdsdsd</p>', NULL, 'sdsdsd', 'sdsd', NULL, 'sdsd', '2018-11-03 12:11:18', '2018-11-05 17:51:15'),
(3, 2, 'en', 'cscss', 'sasa', 'affss', '<p>sdfsfs</p>', NULL, 'sasa', 'sss', NULL, 'saaff', '2018-11-03 12:11:38', '2018-11-03 12:11:38'),
(4, 2, 'ar', 'fsa', 'sesd', 'sdsd', '<p>sdsdsdsd</p>', NULL, 'sdsdsd', 'sdsd', NULL, 'sdsd', '2018-11-03 12:11:38', '2018-11-03 12:11:38'),
(5, 3, 'en', 'cscss', 'sasa', 'affss', '<p>sdfsfs</p>', '<p>affs</p>', 'sasa', 'sss', NULL, 'saaff', '2018-11-03 12:12:22', '2018-11-03 12:12:22'),
(6, 3, 'ar', 'fsa2', 'sesd2', 'sdsd', '<p>sdsdsdsd2</p>', '<p>&nbsp;</p>\r\n\r\n<ul dir="rtl">\r\n	<li>Eye Infection Care</li>\r\n	<li>Computerized Eye Exam</li>\r\n	<li>Dry Eyes Treatment</li>\r\n	<li>Contract Screening</li>\r\n	<li>Post Operation Lasik Care</li>\r\n	<li>Free Lense Consultation</li>\r\n	<li>Lasik Consultation/ Surgery</li>\r\n</ul>', 'sdsdsd2', '2sdsd', 'tranining', 'sdsd2', '2018-11-03 12:12:22', '2018-11-04 09:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `service_section_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `active` int(11) DEFAULT '1',
  `show_in_homepage` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_section_id`, `name`, `short_description`, `long_description`, `image`, `active`, `show_in_homepage`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, '000647medical-10.png', 1, 1, 1, '2018-10-31 16:33:01', '2018-11-02 22:06:47'),
(2, 1, NULL, NULL, NULL, '001253medical-1.png', NULL, NULL, 1, '2018-11-02 22:12:53', '2018-11-02 22:12:53'),
(3, 1, NULL, NULL, NULL, '001423medical-1.png', 1, 1, 1, '2018-11-02 22:14:23', '2018-11-02 22:14:23'),
(4, 1, NULL, NULL, NULL, '001432medical-1.png', 1, 1, 1, '2018-11-02 22:14:32', '2018-11-02 22:14:32'),
(5, 1, NULL, NULL, NULL, '001441medical-1.png', 1, 1, 1, '2018-11-02 22:14:41', '2018-11-02 22:14:41'),
(6, 1, NULL, NULL, NULL, '001449medical-1.png', 1, 1, 1, '2018-11-02 22:14:49', '2018-11-02 22:14:49'),
(7, 1, NULL, NULL, NULL, '001458medical-1.png', 1, 1, 1, '2018-11-02 22:14:58', '2018-11-02 22:14:58'),
(8, 1, NULL, NULL, NULL, '001510medical-1.png', 1, 1, 1, '2018-11-02 22:15:10', '2018-11-02 22:15:10'),
(9, 1, NULL, NULL, NULL, '001518medical-1.png', 1, 1, 1, '2018-11-02 22:15:18', '2018-11-02 22:15:18'),
(10, 2, NULL, NULL, NULL, '002427medical-8.png', 1, 1, 1, '2018-11-02 22:24:27', '2018-11-02 22:24:27'),
(11, 2, NULL, NULL, NULL, '002435medical-8.png', 1, 1, 1, '2018-11-02 22:24:35', '2018-11-02 22:24:35'),
(12, 2, NULL, NULL, NULL, '002443medical-8.png', 1, 1, 1, '2018-11-02 22:24:43', '2018-11-02 22:24:43'),
(13, 2, NULL, NULL, NULL, '002502medical-10.png', 1, 1, 1, '2018-11-02 22:25:02', '2018-11-02 22:25:02'),
(14, 2, NULL, NULL, NULL, '002512medical-10.png', 1, 1, 1, '2018-11-02 22:25:12', '2018-11-02 22:25:12'),
(15, 2, NULL, NULL, NULL, '002520medical-10.png', 1, 1, 1, '2018-11-02 22:25:20', '2018-11-02 22:25:20'),
(16, 2, NULL, NULL, NULL, '002535medical-1.png', 1, 1, 1, '2018-11-02 22:25:35', '2018-11-02 22:25:35'),
(17, 2, NULL, NULL, NULL, '002543medical-1.png', 1, 1, 1, '2018-11-02 22:25:43', '2018-11-02 22:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `services_translation`
--

CREATE TABLE `services_translation` (
  `id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services_translation`
--

INSERT INTO `services_translation` (`id`, `service_id`, `locale`, `name`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Equipments', 'Equipments short', '<p>Equipments details</p>', '2018-10-31 16:33:01', '2018-11-02 22:06:47'),
(2, 1, 'ar', 'اسم المعدة', 'المعدة وصف قصير', '<p>المعدة وصف مفصل</p>', '2018-10-31 16:33:01', '2018-11-02 22:06:48'),
(3, 2, 'en', NULL, NULL, NULL, '2018-11-02 22:12:53', '2018-11-02 22:12:53'),
(4, 2, 'ar', 'sss', 'dds', '<p>ddsds</p>', '2018-11-02 22:12:53', '2018-11-02 22:12:53'),
(5, 3, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:14:23', '2018-11-02 22:14:23'),
(6, 3, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:14:23', '2018-11-02 22:14:23'),
(7, 4, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:14:32', '2018-11-02 22:14:32'),
(8, 4, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:14:32', '2018-11-02 22:14:32'),
(9, 5, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:14:41', '2018-11-02 22:14:41'),
(10, 5, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:14:41', '2018-11-02 22:14:41'),
(11, 6, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:14:49', '2018-11-02 22:14:49'),
(12, 6, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:14:49', '2018-11-02 22:14:49'),
(13, 7, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:14:58', '2018-11-02 22:14:58'),
(14, 7, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:14:58', '2018-11-02 22:14:58'),
(15, 8, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:15:10', '2018-11-02 22:15:10'),
(16, 8, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:15:10', '2018-11-02 22:15:10'),
(17, 9, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:15:18', '2018-11-02 22:15:18'),
(18, 9, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:15:18', '2018-11-02 22:15:18'),
(19, 10, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:24:27', '2018-11-02 22:24:27'),
(20, 10, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:24:27', '2018-11-02 22:24:27'),
(21, 11, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:24:35', '2018-11-02 22:24:35'),
(22, 11, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:24:35', '2018-11-02 22:24:35'),
(23, 12, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:24:43', '2018-11-02 22:24:43'),
(24, 12, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:24:43', '2018-11-02 22:24:43'),
(25, 13, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:02', '2018-11-02 22:25:02'),
(26, 13, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:02', '2018-11-02 22:25:02'),
(27, 14, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:12', '2018-11-02 22:25:12'),
(28, 14, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:12', '2018-11-02 22:25:12'),
(29, 15, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:20', '2018-11-02 22:25:20'),
(30, 15, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:20', '2018-11-02 22:25:20'),
(31, 16, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:35', '2018-11-02 22:25:35'),
(32, 16, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:35', '2018-11-02 22:25:35'),
(33, 17, 'en', 'new equipment', 'new equipment short', '<p>new equipment details</p>', '2018-11-02 22:25:43', '2018-11-02 22:25:43'),
(34, 17, 'ar', 'خدمة بالعربى', 'وصف قصير', '<p>تفاصيل</p>', '2018-11-02 22:25:43', '2018-11-02 22:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `service_sections`
--

CREATE TABLE `service_sections` (
  `service_section_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'fa fa-book',
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_sections`
--

INSERT INTO `service_sections` (`service_section_id`, `name`, `description`, `image`, `class`, `icon`, `active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'EQUIPMENTS - معدات', 'EQUIPMENTS - معدات', NULL, NULL, 'fa fa-book', NULL, 1, '2018-10-31 16:22:11', '2018-10-31 16:22:11'),
(2, 'TECHNOLOGIES - التقنيات المستخدمة', 'TECHNOLOGIES - التقنيات المستخدمة', NULL, NULL, 'fa fa-book', NULL, 1, '2018-10-31 16:24:21', '2018-10-31 16:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_description` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci,
  `subscript_description` text COLLATE utf8mb4_unicode_ci,
  `email_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saturday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `site_title`, `site_description`, `phone`, `address_ar`, `address_en`, `subscript_description`, `email_1`, `email_2`, `facebook_link`, `twitter_link`, `youtube`, `whatsapp`, `instagram_link`, `google_link`, `about`, `created_at`, `updated_at`, `saturday_time`, `sunday_time`, `monday_time`, `tuesday_time`, `wednesday_time`, `thursday_time`) VALUES
(1, 'EL BATAL CENTER', 'EL BATAL CENTER', '98555487748', 'عنوان الموقع بالعربى 15 شارع متفرع من', 'Prince Sultan St. corss Al Kaial St. infront of Nafat petrol station , Floor No. 6', 'كيفية الاشتراك هى ...', 'info@bataleyecenter.com', NULL, '#facebook', '#twitter', '#youtube', '#', '#instagram', '#google', 'تأسس الموقع عام 2018 و ...', NULL, '2018-11-07 14:18:22', '08:00AM : 01:00PM', '08:00AM : 0700PM', '08:00AM : 05:00PM', '08:00AM : 06:00PM', '08:00AM : 07:00PM', '08:00AM : 09:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_items`
--

CREATE TABLE `sidebar_items` (
  `item_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_access` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_items`
--

INSERT INTO `sidebar_items` (`item_id`, `menu_id`, `name`, `route`, `roles_access`, `icon`, `ordering`, `active`, `class`, `created_at`, `updated_at`) VALUES
(1, 1, 'allUsers', 'getAllUsers', '1', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(2, 1, 'addUser', 'getAddUser', '1', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(3, 2, 'all_settings', 'getSettings', '1', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(4, 3, 'all_message', 'getAllContacts', '1', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(5, 4, 'add_ads', 'ads_management.create', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(6, 4, 'all_ads', 'ads_management.index', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(7, 5, 'allPersons', 'getAllPersons', '15,', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(8, 5, 'addPerson', 'getAddPerson', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(9, 6, 'allsponsors', 'getAllSponsors', '15,', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(10, 6, 'addSponsor', 'getAddSponsor', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(11, 7, 'allChampionships', 'getAllChampionships', '1,2,3', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(12, 7, 'addChampionship', 'getAddChampionship', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(13, 8, 'all_images', 'imagesIndex', '15,', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(14, 8, 'add_images', 'addImages', '1,2,3', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(15, 8, 'videos', 'videosIndex', '1,2,3', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(16, 8, 'addVideo', 'addVideo', '15,', 'fa fa-images', 2, 1, NULL, NULL, NULL),
(17, 9, 'allMatches', 'getAllMatches', '1,2,3', 'fa fa-users', 1, 1, NULL, NULL, NULL),
(18, 9, 'addMatch', 'getAddMatch', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(19, 10, 'all_news', 'getAllBlogs', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(20, 10, 'add_news', 'getAddBlog', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(21, 11, 'all_links', 'getAllLinks', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(22, 11, 'add_links', 'getAddLink', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(23, 12, 'all_sliders', 'getAllSliders', '1,2,3', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(24, 12, 'add_sliders', 'getAddSlider', '15,', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(25, 13, 'all_subscription', 'getAllSubscription', '1', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(26, 14, 'all_ticket', 'getAllTicket', '1,2', 'fa fa-users', 2, 1, NULL, NULL, NULL),
(27, NULL, 'updateUser', 'getUserById', '1,2,3', NULL, 1, 1, NULL, NULL, NULL),
(29, NULL, 'getSliderById', 'getSliderById', NULL, NULL, 2, 1, NULL, NULL, NULL),
(30, 15, 'allServices', 'getAllServices', NULL, 'fa fa-sitemap', NULL, 1, NULL, NULL, NULL),
(31, 15, 'addService', 'getAddService', NULL, 'fa fa-sitemap', NULL, 1, NULL, NULL, NULL),
(32, NULL, 'updateService', 'getServiceById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(33, 16, 'sections_services', 'getAllServiceSections', NULL, 'fa fa-columns', NULL, 1, NULL, NULL, NULL),
(34, 16, 'addSectionServices', 'getAddServiceSection', NULL, 'fa fa-columns', NULL, 1, NULL, NULL, NULL),
(35, NULL, 'updateSectionServices', 'getServiceSectionById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(36, 1, 'getAllRoles', 'getAllRoles', NULL, NULL, 1, 1, NULL, NULL, NULL),
(37, 1, 'getAddRole', 'getAddRole', NULL, NULL, 1, 1, NULL, NULL, NULL),
(38, NULL, 'getRoleById', 'getRoleById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(39, 17, 'blog_categories', 'getAllBlogCategories', NULL, NULL, 1, 1, NULL, NULL, NULL),
(40, 17, 'add_blog_category', 'getAddBlogCategory', '1,1,3', NULL, 2, 1, NULL, NULL, NULL),
(41, NULL, 'update_blog_categories', 'getBlogsCategoriesById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(42, NULL, 'update_blog', 'getBlogById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(43, 18, 'allPages', 'getAllPages', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(44, 18, 'addPage', 'getAddPage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(45, NULL, 'updatePages', 'getPageById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(46, 19, 'all_images', 'imagesIndex', NULL, 'fa fa-images', 1, 1, NULL, NULL, NULL),
(47, 19, 'add_images', 'addImages', NULL, 'fa fa-images', 2, 1, NULL, NULL, NULL),
(48, 19, 'videos', 'videosIndex', NULL, 'fa fa-images', 3, 1, NULL, NULL, NULL),
(49, 19, 'addVideo', 'addVideo', NULL, 'fa fa-images', 4, 1, NULL, NULL, NULL),
(50, NULL, 'getImage', 'getImage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(51, NULL, 'getVideo', 'getVideo', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(52, NULL, 'getAlbumImage', 'getAlbumImage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(53, NULL, 'getVideoThumb', 'getVideoThumb', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(54, NULL, 'update_link', 'getLinkById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(55, NULL, 'update_person', 'getPersonById', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(56, 2, 'languages_translations', 'backendLanguage', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(57, NULL, 'getCommentsByPostId', 'getCommentsByPostId', NULL, NULL, NULL, 1, NULL, NULL, NULL),
(58, 20, 'allClients', 'getAllClients', NULL, 'fa fa-users', NULL, 1, NULL, NULL, NULL),
(59, 20, 'addClient', 'getAddClient', NULL, 'fa fa-pencil', NULL, 1, NULL, NULL, NULL),
(60, NULL, 'updateClient', 'getClientById', NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sidebar_menus`
--

CREATE TABLE `sidebar_menus` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_access` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `have_header` int(11) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebar_menus`
--

INSERT INTO `sidebar_menus` (`menu_id`, `name`, `roles_access`, `icon`, `ordering`, `active`, `have_header`, `class`, `created_at`, `updated_at`) VALUES
(1, 'users', '1', 'fa fa-users', 1, 1, 1, NULL, NULL, NULL),
(2, 'settings', '1', 'fa fa-sitemap', 7, 1, 1, NULL, NULL, NULL),
(3, 'message', '1', 'fa fa-pencil', 6, 0, 1, NULL, NULL, NULL),
(4, 'ads', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(5, 'persons', '1', 'fa fa-users', 6, 1, 1, NULL, NULL, NULL),
(6, 'sponsors', '1', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(7, 'championships', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(8, 'Media', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(9, 'Matches', '1,2,3', 'fa fa-sitemap', 6, 0, 1, NULL, NULL, NULL),
(10, 'news', '1,2,3', 'fa fa-pencil', 6, 1, 1, NULL, NULL, NULL),
(11, 'links', '1,2,3', 'fa fa-pencil', 6, 1, 1, NULL, NULL, NULL),
(12, 'sliders', '1,2,3', 'fa fa-pencil', 6, 1, 1, NULL, NULL, NULL),
(13, 'subscription', '1', 'fa fa-sitemap', 7, 0, 1, NULL, NULL, NULL),
(14, 'ticket', '1,2', 'fa fa-sitemap', 7, 0, 1, NULL, NULL, NULL),
(15, 'services', '', 'fa fa-sitemap', 2, 1, 1, NULL, NULL, NULL),
(16, 'sections_services', '', 'fa fa-sitemap', 3, 1, 1, NULL, NULL, NULL),
(17, 'blog_categories', '1,2,3,4', 'fa fa-sitemap', 4, 1, 1, NULL, NULL, NULL),
(18, 'pages', '1,2', 'fa fa-book', 5, 1, 1, NULL, NULL, NULL),
(19, 'Media', '', 'fa fa-sitemap', 5, 1, 1, NULL, NULL, NULL),
(20, 'clients', '', 'fa fa-users', 8, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `data_transition` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'slideup',
  `active` int(11) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slider_id`, `image`, `data_transition`, `active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '000215slide.png', 'slideup', 1, 1, 1, '2018-11-01 22:01:19', '2018-11-01 22:02:15'),
(2, '105437slide.png', 'slideup', 1, 1, 1, '2018-11-05 16:50:31', '2018-11-05 16:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_translation`
--

CREATE TABLE `sliders_translation` (
  `id` int(11) NOT NULL,
  `slider_id` int(11) DEFAULT NULL,
  `locale` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8_unicode_ci,
  `long_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders_translation`
--

INSERT INTO `sliders_translation` (`id`, `slider_id`, `locale`, `title`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'DR Ahmed Elbatal', '“We\'ll do our best to deliver the best possible healthcare and customer service to you!”', '“We\'ll do our best to deliver the best possible healthcare !”', '2018-11-01 22:01:19', '2018-11-05 16:08:56'),
(2, 1, 'ar', 'دكتور احمد بطل', '"سنبذل قصارى جهدنا لتقديم أفضل رعاية صحية وخدمة عملاء ممكنة لك!"', NULL, '2018-11-01 22:01:19', '2018-11-05 16:55:04'),
(3, 2, 'en', 'DR Ahmed Elbatal', '“We\'ll do our best to deliver the best possible healthcare !”', NULL, '2018-11-05 16:50:31', '2018-11-05 16:53:39'),
(4, 2, 'ar', 'دكتور احمد بطل', '"سنبذل قصارى جهدنا لتقديم أفضل رعاية صحية !"', '“We\'ll do our best to deliver the best possible healthcare !”', '2018-11-05 16:50:31', '2018-11-05 16:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'جهينه', 'Vw6ZcXHTfZ1522746513.png', '2018-04-03 14:08:33', '2018-04-03 14:08:33'),
(2, 'حديد المصرين', 'o2i1IqClMa1522746534.png', '2018-04-03 14:08:54', '2018-04-03 14:08:54'),
(3, 'دومتى', 'WTgBc4K2a91522746734.png', '2018-04-03 14:12:14', '2018-04-03 14:12:14'),
(4, 'shell helix', '82UOiEA9ns1522746942.png', '2018-04-03 14:15:42', '2018-04-03 14:15:42'),
(5, 'دومينوز', 'ym2bYmltM81522746965.png', '2018-04-03 14:16:05', '2018-04-03 14:16:05'),
(6, 'راعى', 'nwcUB4MyGi1522842620.png', '2018-04-04 16:50:20', '2018-04-04 16:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'احمد محمد بكرى', 'ahmed@yahoo.com', '01149671770', '2018-05-14 20:28:02', '2018-05-14 20:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'البطل سنتر', '2018-05-06 14:43:26', '2018-05-06 14:43:26'),
(2, 'حمل', '2018-05-07 18:57:01', '2018-05-07 18:57:01'),
(3, 'تكنولوجيا', '2018-06-01 17:51:29', '2018-06-01 17:51:29'),
(4, 'سعادة', '2018-06-05 14:08:50', '2018-06-05 14:08:50'),
(5, 'طفل', '2018-06-05 14:10:25', '2018-06-05 14:10:25'),
(6, 'طبيب', '2018-10-15 21:56:35', '2018-10-15 21:56:35'),
(7, 'رعاية', '2018-10-16 06:42:05', '2018-10-16 06:42:05'),
(8, 'حديثى الولادة', '2018-10-16 06:48:28', '2018-10-16 06:48:28'),
(9, 'تفاصيل', '2018-10-27 13:09:59', '2018-10-27 13:09:59'),
(10, 'الأم', '2018-10-29 14:31:09', '2018-10-29 14:31:09'),
(11, 'الأطفال', '2018-10-29 14:35:39', '2018-10-29 14:35:39'),
(12, 'معدات حديثة', '2018-10-29 15:39:46', '2018-10-29 15:39:46'),
(13, 'أجهزة طبية', '2018-11-29 17:00:35', '2018-11-29 17:00:35'),
(14, 'خاص', '2018-11-29 17:07:53', '2018-11-29 17:07:53'),
(15, 'طفلك', '2018-10-30 12:23:37', '2018-10-30 12:23:37'),
(16, 'صحة', '2018-10-30 12:24:40', '2018-10-30 12:24:40'),
(17, 'رعاية', '2018-10-30 12:28:48', '2018-10-30 12:28:48'),
(18, 'بيبى', '2018-10-30 12:55:26', '2018-10-30 12:55:26');

-- --------------------------------------------------------

--
-- Table structure for table `tag_post`
--

CREATE TABLE `tag_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_post`
--

INSERT INTO `tag_post` (`id`, `post_id`, `tag_id`) VALUES
(75, 4, 17),
(2, 29, 2),
(3, 33, 3),
(4, 33, 2),
(6, 37, 5),
(72, 1, 2),
(71, 1, 1),
(67, 2, 13),
(66, 2, 14),
(74, 3, 3),
(73, 3, 16),
(77, 5, 17),
(27, 6, 11),
(28, 7, 11),
(29, 8, 11),
(43, 5, 2),
(70, 1, 15),
(76, 4, 2),
(78, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `full_name`, `email`, `phone`, `ticket_name`, `created_at`, `updated_at`) VALUES
(1, 'أحمد محمد بكرى', 'ahmed@yahoo.com', '01149671770', 'شرم الشيخ', '2018-05-14 20:28:37', '2018-05-14 20:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `lang` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `word` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `lang`, `word`, `translation`, `created_at`, `updated_at`) VALUES
(1, 'ar', 'about_us', 'من نحن', NULL, NULL),
(2, 'en', 'about_us', 'About Us', NULL, NULL),
(3, 'ar', 'expertise', 'EXPERTISE', NULL, NULL),
(4, 'en', 'expertise', 'EXPERTISE', NULL, NULL),
(5, 'ar', 'meet_our', 'قابل', NULL, NULL),
(6, 'en', 'meet_our', 'meet_our', NULL, NULL),
(7, 'ar', 'doctors', 'الأطباء', NULL, NULL),
(8, 'en', 'doctors', 'doctors', NULL, NULL),
(9, 'ar', 'doctors_second_title', 'وصف قصير', NULL, NULL),
(10, 'en', 'doctors_second_title', 'doctors_second_title', NULL, NULL),
(11, 'ar', 'gallery', 'المعرض', NULL, NULL),
(12, 'en', 'gallery', 'gallery', NULL, NULL),
(13, 'ar', 'gallery_second_title', 'وصف قصير للمعرض', NULL, NULL),
(14, 'en', 'gallery_second_title', 'gallery_second_title', NULL, NULL),
(15, 'ar', 'welcome_to_our', 'مرحباً بك فى', NULL, NULL),
(16, 'en', 'welcome_to_our', 'welcome_to_our', NULL, NULL),
(17, 'ar', 'we_are_experts_doctor', 'We are Expert doctors in Ophthalmology', NULL, NULL),
(18, 'en', 'we_are_experts_doctor', 'We are Expert doctors in Ophthalmology', NULL, NULL),
(19, 'ar', 'we_will_be_happy', 'We will be happy to contact you\r\n', NULL, NULL),
(20, 'en', 'we_will_be_happy', 'We will be happy to contact you\r\n\r\n', NULL, NULL),
(21, 'ar', 'ask_your_doctor', 'إسأل طبيبك', NULL, NULL),
(22, 'en', 'ask_your_doctor', 'ASK YOUR DOCTOR', NULL, NULL),
(23, 'ar', 'our_mission', 'مهمتنا', NULL, NULL),
(24, 'en', 'our_mission', 'Our Mission', NULL, NULL),
(25, 'ar', 'our_vision', 'رؤيتنا', NULL, NULL),
(26, 'en', 'our_vision', 'our vision', NULL, NULL),
(27, 'ar', 'our_doctors', 'أطباءنا', NULL, NULL),
(28, 'en', 'our_doctors', 'our_doctors', NULL, NULL),
(29, 'ar', 'home_page', 'الرئيسية', NULL, NULL),
(30, 'en', 'home_page', 'Home Page', NULL, NULL),
(31, 'ar', 'equipments', 'المعدات الطبية', NULL, NULL),
(32, 'en', 'equipments', 'equipments', NULL, NULL),
(33, 'ar', 'equipments_second_title', 'وصف قصير للمعدات', NULL, NULL),
(34, 'en', 'equipments_second_title', 'equipments_second_title', NULL, NULL),
(35, 'ar', 'technologies', 'التكنولوجيا المستخدمة', NULL, NULL),
(36, 'en', 'technologies', 'technologies', NULL, NULL),
(37, 'ar', 'our_technologies', 'our technologies', NULL, NULL),
(38, 'en', 'our_technologies', 'our technologies', NULL, NULL),
(39, 'ar', 'technologies_second_title', 'وصف قصير للتكنولوجيا', NULL, NULL),
(40, 'en', 'technologies_second_title', 'technologies_second_title', NULL, NULL),
(41, 'ar', 'contactus', 'اتصل بنا', NULL, NULL),
(42, 'en', 'contactus', 'contactus', NULL, NULL),
(43, 'ar', 'contactus_second_title', 'contactus_second_title', NULL, NULL),
(44, 'en', 'contactus_second_title', 'To get in touch, complete this form and we\'ll get back to you as quickly as possible.\r\n', NULL, NULL),
(45, 'ar', 'send_message', 'إرسال', NULL, NULL),
(46, 'en', 'send_message', 'Send Message', NULL, NULL),
(47, 'ar', 'contact_name', 'من فضلك ادخل اسمك بالكامل', NULL, NULL),
(48, 'en', 'contact_name', 'Please Enter Your Full Name', NULL, NULL),
(49, 'ar', 'contact_email', 'من فضلك أدخل بريدك الألكترونى', NULL, NULL),
(50, 'en', 'contact_email', 'Please Enter Your E-mail', NULL, NULL),
(51, 'ar', 'contact_phone', 'من فضلك أدخل رقم تليقونك', NULL, NULL),
(52, 'en', 'contact_phone', 'Please Enter Your Phone', NULL, NULL),
(53, 'ar', 'contact_message', 'الرسالة المراد إرسالها', NULL, NULL),
(54, 'en', 'contact_message', 'Message', NULL, NULL),
(55, 'ar', 'online_appointment', 'حجز ألكترونى', NULL, NULL),
(56, 'en', 'online_appointment', 'Online Appointment', NULL, NULL),
(57, 'ar', 'read_more', 'قراءة المزيد', NULL, NULL),
(58, 'en', 'read_more', 'Read More', NULL, NULL),
(59, 'ar', 'go_to_external_link', 'الذهاب لرابط خارجى', NULL, NULL),
(60, 'en', 'go_to_external_link', 'go_to_external_link', NULL, NULL),
(61, 'ar', 'we_are_here', 'نحن هنا من اجلك', NULL, NULL),
(62, 'en', 'we_are_here', 'we are here for you', NULL, NULL),
(63, 'ar', 'book_an_appintment', 'احجز اونلاين من هنا', NULL, NULL),
(64, 'en', 'book_an_appintment', 'book an appintment', NULL, NULL),
(65, 'ar', 'book_now', 'احجز الان', NULL, NULL),
(66, 'en', 'book_now', 'Book Now', NULL, NULL),
(67, 'ar', 'booking_message', 'لقد تم ارسال طلبك بنجاح', NULL, NULL),
(68, 'en', 'booking_message', 'Sent Successfully', NULL, NULL),
(69, 'ar', 'press_ok_to_hide_msg', 'اضغط  ok لتختفى الرسالة', NULL, NULL),
(70, 'en', 'press_ok_to_hide_msg', 'press ok to hide msg', NULL, NULL),
(71, 'ar', 'blogs', 'الأخبار', NULL, NULL),
(72, 'en', 'blogs', 'Blogs', NULL, NULL),
(73, 'ar', 'recent_blogs', 'أحدث الأخبار', NULL, NULL),
(74, 'en', 'recent_blogs', 'Recent News', NULL, NULL),
(75, 'ar', 'blog_categories', 'الفئات', NULL, NULL),
(76, 'en', 'blog_categories', 'categories', NULL, NULL),
(77, 'ar', 'recent_comments', 'أحدث التعليقات', NULL, NULL),
(78, 'en', 'recent_comments', 'Recent Comments\r\n', NULL, NULL),
(79, 'ar', 'search', 'بحث', NULL, NULL),
(80, 'en', 'search', 'search', NULL, NULL),
(81, 'ar', 'post_comment', 'نشر التعليق', NULL, NULL),
(82, 'en', 'post_comment', 'Post Comment', NULL, NULL),
(83, 'ar', 'comment', 'التعليق', NULL, NULL),
(84, 'en', 'comment', 'Comment', NULL, NULL),
(85, 'ar', 'let_comment', 'اترك تعليق', NULL, NULL),
(86, 'en', 'let_comment', 'Leave a Comment', NULL, NULL),
(87, 'ar', 'comment_second_title', 'وصف قصير للتعليق', NULL, NULL),
(88, 'en', 'comment_second_title', 'Your email address will not be published. Required fields are marked *\r\n', NULL, NULL),
(89, 'ar', 'tags', 'التاجات', NULL, NULL),
(90, 'en', 'tags', 'Tags', NULL, NULL),
(91, 'ar', 'saturday', 'السبت', NULL, NULL),
(92, 'en', 'saturday', 'Saturday', NULL, NULL),
(93, 'ar', 'sunday', 'الأحد', NULL, NULL),
(94, 'en', 'sunday', 'Sunday', NULL, NULL),
(95, 'ar', 'monday', 'الأثنين', NULL, NULL),
(96, 'en', 'monday', 'Monday', NULL, NULL),
(97, 'ar', 'tuesday', 'الثلاثاء', NULL, NULL),
(98, 'en', 'tuesday', 'Tuesday', NULL, NULL),
(99, 'ar', 'wednesday', 'الأربعاء', NULL, NULL),
(100, 'en', 'wednesday', 'Wednesday', NULL, NULL),
(101, 'ar', 'thursday', 'الخميس', NULL, NULL),
(102, 'en', 'thursday', 'Thursday', NULL, NULL),
(103, 'ar', 'morjan_tower', 'المدينة وموجودة فى الترجمة', NULL, NULL),
(104, 'en', 'morjan_tower', 'Al Morjan Tower', NULL, NULL),
(105, 'ar', 'online_appointment_second_title', 'وصف قصير للحجز', NULL, NULL),
(106, 'en', 'online_appointment_second_title', 'online appointment_second_title', NULL, NULL),
(107, 'ar', 'doctor_time', 'توقيت الكشف', NULL, NULL),
(108, 'en', 'doctor_time', 'Time', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_access` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '1',
  `active` int(11) DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `items_access`, `password`, `created_by`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super', 'super@elbatal.com', NULL, '$2y$10$2IcFBQFddbE365YaLdNEDuNQ18zV7cpRW05r.WMvKgffr.hCJIIcy', 1, 1, 'AoSbeqrmdbAeo1tVujrPSMYuuZZY6oRrlMkuudzaCMFEH5fChehlO5VDqMcd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_access` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`, `items_access`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'a:59:{i:0;s:11:"getAllUsers";i:1;s:10:"getAddUser";i:2;s:11:"getSettings";i:3;s:14:"getAllContacts";i:4;s:21:"ads_management.create";i:5;s:20:"ads_management.index";i:6;s:13:"getAllPersons";i:7;s:12:"getAddPerson";i:8;s:14:"getAllSponsors";i:9;s:13:"getAddSponsor";i:10;s:19:"getAllChampionships";i:11;s:18:"getAddChampionship";i:12;s:11:"imagesIndex";i:13;s:9:"addImages";i:14;s:11:"videosIndex";i:15;s:8:"addVideo";i:16;s:13:"getAllMatches";i:17;s:11:"getAddMatch";i:18;s:11:"getAllBlogs";i:19;s:10:"getAddBlog";i:20;s:11:"getAllLinks";i:21;s:10:"getAddLink";i:22;s:13:"getAllSliders";i:23;s:12:"getAddSlider";i:24;s:18:"getAllSubscription";i:25;s:12:"getAllTicket";i:26;s:11:"getUserById";i:27;s:13:"getSliderById";i:28;s:14:"getAllServices";i:29;s:13:"getAddService";i:30;s:14:"getServiceById";i:31;s:21:"getAllServiceSections";i:32;s:20:"getAddServiceSection";i:33;s:21:"getServiceSectionById";i:34;s:11:"getAllRoles";i:35;s:10:"getAddRole";i:36;s:11:"getRoleById";i:37;s:20:"getAllBlogCategories";i:38;s:18:"getAddBlogCategory";i:39;s:22:"getBlogsCategoriesById";i:40;s:11:"getBlogById";i:41;s:11:"getAllPages";i:42;s:10:"getAddPage";i:43;s:11:"getPageById";i:44;s:11:"imagesIndex";i:45;s:9:"addImages";i:46;s:11:"videosIndex";i:47;s:8:"addVideo";i:48;s:8:"getImage";i:49;s:8:"getVideo";i:50;s:13:"getAlbumImage";i:51;s:13:"getVideoThumb";i:52;s:11:"getLinkById";i:53;s:13:"getPersonById";i:54;s:15:"backendLanguage";i:55;s:19:"getCommentsByPostId";i:56;s:13:"getAllClients";i:57;s:12:"getAddClient";i:58;s:13:"getClientById";}', NULL, '2018-11-07 14:48:00'),
(2, ' Admin', 'a:2:{i:0;s:10:"getAddUser";i:1;s:12:"getAddSlider";}', NULL, NULL),
(3, ' Writer', 'a:2:{i:0;s:10:"getAddUser";i:1;s:12:"getAddSlider";}', NULL, NULL),
(5, 'abdalaa', 'a:6:{i:0;s:11:"getAllUsers";i:1;s:10:"getAddUser";i:2;s:14:"getAllContacts";i:3;s:21:"ads_management.create";i:4;s:13:"getAllPersons";i:5;s:12:"getAddPerson";}', '2018-10-24 15:56:57', '2018-10-24 16:08:14'),
(6, 'test', 'a:2:{i:0;s:10:"getAddUser";i:1;s:12:"getAddSlider";}', '2018-10-25 05:53:00', '2018-10-25 05:53:00'),
(7, 'safwat', 'a:3:{i:0;s:11:"getAllUsers";i:1;s:11:"getSettings";i:2;s:21:"ads_management.create";}', '2018-10-25 05:57:00', '2018-10-25 05:57:00'),
(8, 'كاتب اسليدر', 'a:2:{i:0;s:13:"getAllSliders";i:1;s:12:"getAddSlider";}', '2018-10-25 07:27:29', '2018-10-25 07:27:29'),
(9, 'يكتب اسليدر', 'a:1:{i:0;s:12:"getAddSlider";}', '2018-10-25 10:16:38', '2018-10-25 10:18:46'),
(10, 'mostapha', 'a:37:{i:0;s:11:"getAllUsers";i:1;s:10:"getAddUser";i:2;s:11:"getSettings";i:3;s:14:"getAllContacts";i:4;s:21:"ads_management.create";i:5;s:20:"ads_management.index";i:6;s:13:"getAllPersons";i:7;s:12:"getAddPerson";i:8;s:14:"getAllSponsors";i:9;s:13:"getAddSponsor";i:10;s:19:"getAllChampionships";i:11;s:18:"getAddChampionship";i:12;s:11:"imagesIndex";i:13;s:9:"addImages";i:14;s:11:"videosIndex";i:15;s:8:"addVideo";i:16;s:13:"getAllMatches";i:17;s:11:"getAddMatch";i:18;s:11:"getAllBlogs";i:19;s:10:"getAddBlog";i:20;s:11:"getAllLinks";i:21;s:10:"getAddLink";i:22;s:13:"getAllSliders";i:23;s:12:"getAddSlider";i:24;s:18:"getAllSubscription";i:25;s:12:"getAllTicket";i:26;s:11:"getUserById";i:27;s:13:"getSliderById";i:28;s:14:"getAllServices";i:29;s:13:"getAddService";i:30;s:14:"getServiceById";i:31;s:21:"getAllServiceSections";i:32;s:20:"getAddServiceSection";i:33;s:21:"getServiceSectionById";i:34;s:11:"getAllRoles";i:35;s:10:"getAddRole";i:36;s:11:"getRoleById";}', '2018-10-25 12:08:06', '2018-10-25 12:09:37'),
(11, 'كاتب', 'a:3:{i:0;s:14:"getAllServices";i:1;s:13:"getAddService";i:2;s:14:"getServiceById";}', '2018-10-25 12:22:03', '2018-10-25 12:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `type`, `video`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'video', 'sdsdsd', 'youtube', 'https://www.youtube.com/watch?v=fHCWNPc027Q', 'https://img.youtube.com/vi/fHCWNPc027Q/hqdefault.jpg', '2018-11-06 07:18:10', '2018-11-06 07:18:10'),
(2, 'فيديو', 'فيديو', 'youtube', 'https://www.youtube.com/watch?v=YQHESf3jDmg', 'https://img.youtube.com/vi/YQHESf3jDmg/hqdefault.jpg', '2018-11-07 16:06:28', '2018-11-07 16:06:28'),
(3, 'فيديو', 'فيديو', 'youtube', 'https://www.youtube.com/watch?v=mElVGah7Epg&index=1&list=PLBZBJbE_rGRX34xJpiFrEz0jKLx53Ph_Q', 'https://img.youtube.com/vi/mElVGah7Epg/hqdefault.jpg', '2018-11-07 16:07:53', '2018-11-07 16:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_position_id_foreign` (`position_id`);

--
-- Indexes for table `ads_positions`
--
ALTER TABLE `ads_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `blogs_translation`
--
ALTER TABLE `blogs_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `championships`
--
ALTER TABLE `championships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `links_link_section_id_foreign` (`link_section_id`);

--
-- Indexes for table `links_translation`
--
ALTER TABLE `links_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_sections`
--
ALTER TABLE `link_sections`
  ADD PRIMARY KEY (`link_section_id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_translation`
--
ALTER TABLE `pages_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persons_translation`
--
ALTER TABLE `persons_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `services_service_section_id_foreign` (`service_section_id`);

--
-- Indexes for table `services_translation`
--
ALTER TABLE `services_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_sections`
--
ALTER TABLE `service_sections`
  ADD PRIMARY KEY (`service_section_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `sidebar_items`
--
ALTER TABLE `sidebar_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `sidebar_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `sliders_translation`
--
ALTER TABLE `sliders_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_email_unique` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_post`
--
ALTER TABLE `tag_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_post_post_id_foreign` (`post_id`),
  ADD KEY `tag_post_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_email_unique` (`email`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ads_positions`
--
ALTER TABLE `ads_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `blogs_translation`
--
ALTER TABLE `blogs_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `championships`
--
ALTER TABLE `championships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `links_translation`
--
ALTER TABLE `links_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `link_sections`
--
ALTER TABLE `link_sections`
  MODIFY `link_section_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pages_translation`
--
ALTER TABLE `pages_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `persons_translation`
--
ALTER TABLE `persons_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `services_translation`
--
ALTER TABLE `services_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `service_sections`
--
ALTER TABLE `service_sections`
  MODIFY `service_section_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sidebar_items`
--
ALTER TABLE `sidebar_items`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `sidebar_menus`
--
ALTER TABLE `sidebar_menus`
  MODIFY `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sliders_translation`
--
ALTER TABLE `sliders_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tag_post`
--
ALTER TABLE `tag_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
