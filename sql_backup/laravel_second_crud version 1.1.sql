-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 26, 2020 at 07:08 PM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_second_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2020_01_24_014858_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_details`, `created_at`, `updated_at`) VALUES
(1, 'Motorola One Action (Denim Blue, 128 GB)  (4 GB RAM)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean erat tellus, bibendum in ornare nec, facilisis a est. Fusce rutrum purus quis ante bibendum vestibulum. Nullam imperdiet nisi eu ipsum efficitur convallis id vel erat. In hac habitasse platea dictumst. Nullam scelerisque finibus malesuada. Nulla mollis magna vel enim dignissim malesuada. Ut vehicula finibus magna, ac fermentum velit semper id. Etiam accumsan rhoncus enim, sed placerat nulla pellentesque dignissim. Duis facilisis ac tortor at lobortis. Nullam rhoncus mi eget risus vestibulum, ut imperdiet arcu aliquet. Duis sollicitudin nunc sed nulla sollicitudin, et efficitur metus pretium.', '2020-01-25 13:04:59', '2020-01-25 13:04:59'),
(2, 'Infinix S5 Lite (Violet, 64 GB)  (4 GB RAM)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean erat tellus, bibendum in ornare nec, facilisis a est. Fusce rutrum purus quis ante bibendum vestibulum. Nullam imperdiet nisi eu ipsum efficitur convallis id vel erat. In hac habitasse platea dictumst. Nullam scelerisque finibus malesuada. Nulla mollis magna vel enim dignissim malesuada. Ut vehicula finibus magna, ac fermentum velit semper id. Etiam accumsan rhoncus enim, sed placerat nulla pellentesque dignissim. Duis facilisis ac tortor at lobortis. Nullam rhoncus mi eget risus vestibulum, ut imperdiet arcu aliquet. Duis sollicitudin nunc sed nulla sollicitudin, et efficitur metus pretium.', '2020-01-25 13:05:26', '2020-01-25 13:05:26'),
(3, 'Realme 5s (Crystal Blue, 128 GB)  (4 GB RAM)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean erat tellus, bibendum in ornare nec, facilisis a est. Fusce rutrum purus quis ante bibendum vestibulum. Nullam imperdiet nisi eu ipsum efficitur convallis id vel erat. In hac habitasse platea dictumst. Nullam scelerisque finibus malesuada. Nulla mollis magna vel enim dignissim malesuada. Ut vehicula finibus magna, ac fermentum velit semper id. Etiam accumsan rhoncus enim, sed placerat nulla pellentesque dignissim. Duis facilisis ac tortor at lobortis. Nullam rhoncus mi eget risus vestibulum, ut imperdiet arcu aliquet. Duis sollicitudin nunc sed nulla sollicitudin, et efficitur metus pretium.', '2020-01-25 13:08:19', '2020-01-25 13:08:19'),
(4, 'Apple iPhone 7 (Rose Gold, 32 GB)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean erat tellus, bibendum in ornare nec, facilisis a est. Fusce rutrum purus quis ante bibendum vestibulum. Nullam imperdiet nisi eu ipsum efficitur convallis id vel erat. In hac habitasse platea dictumst. Nullam scelerisque finibus malesuada. Nulla mollis magna vel enim dignissim malesuada. Ut vehicula finibus magna, ac fermentum velit semper id. Etiam accumsan rhoncus enim, sed placerat nulla pellentesque dignissim. Duis facilisis ac tortor at lobortis. Nullam rhoncus mi eget risus vestibulum, ut imperdiet arcu aliquet. Duis sollicitudin nunc sed nulla sollicitudin, et efficitur metus pretium.', '2020-01-25 21:14:01', '2020-01-25 21:14:01'),
(5, 'Redmi 8 (Sapphire Blue, 64 GB)  (4 GB RAM)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean erat tellus, bibendum in ornare nec, facilisis a est. Fusce rutrum purus quis ante bibendum vestibulum. Nullam imperdiet nisi eu ipsum efficitur convallis id vel erat. In hac habitasse platea dictumst. Nullam scelerisque finibus malesuada. Nulla mollis magna vel enim dignissim malesuada. Ut vehicula finibus magna, ac fermentum velit semper id. Etiam accumsan rhoncus enim, sed placerat nulla pellentesque dignissim. Duis facilisis ac tortor at lobortis. Nullam rhoncus mi eget risus vestibulum, ut imperdiet arcu aliquet. Duis sollicitudin nunc sed nulla sollicitudin, et efficitur metus pretium.', '2020-01-25 21:25:12', '2020-01-25 21:25:12'),
(6, 'Apple iPhone XR (128GB)', '6.1-inch Liquid Retina display (LCD)\r\nIP67 water and dust resistant (maximum depth of 1 meter up to 30 minutes)\r\n12MP camera with OIS and 7MP TrueDepth front camera—Portrait mode, Portrait Lighting, Depth Control, and Smart HDR\r\nFace ID for secure authentication\r\nA12 Bionic with next-generation Neural Engine\r\nWireless charging—works with Qi chargers\r\niOS 12 with Memoji, Screen Time, Siri Shortcuts, and Group FaceTime\r\nManufacturer Detail: Apple India Private Limited No. 24, 19th Floor, Concorde Tower C, UB City, Vittal Mallya Road, Bangalore - 560001\r\nPacker Detail: Designed by Apple in California, Assembled in India\r\nImporter Details: Apple India Private Limited No. 24, 19th Floor, Concorde Tower C, UB City, Vittal Mallya Road, Bangalore - 560001', '2020-01-26 09:22:26', '2020-01-26 13:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
