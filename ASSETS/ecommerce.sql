-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2023 at 02:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `product_quantity`, `product_price`, `per_product_price`, `per_product_quantity`, `total_product_quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Aklima', 'aklima@gmail.com', '12331231', 'mirpure', 'Red Tomato', '2', '38', '19', '500', NULL, '1677315946.jpg', '4', '1', '2023-02-25 03:07:41', '2023-02-25 03:07:41'),
(5, 'Aklima', 'aklima@gmail.com', '12331231', 'mirpure', 'Fulkopi (Cauliflower)', '2', '58', '29', '1', NULL, '1677316018.jpg', '5', '1', '2023-02-25 03:09:59', '2023-02-25 03:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fruits & vegetables', '<p>Fruits &amp; vegetables</p>', '1677300239.jpg', 1, '2023-02-24 22:43:59', '2023-02-24 22:43:59'),
(2, 'Meat & Fish', '<p>Meat &amp; Fish</p>', '1677300261.jpg', 1, '2023-02-24 22:44:21', '2023-02-24 22:44:21'),
(3, 'Cooking', '<p>Cooking</p>', '1677300301.jpg', 1, '2023-02-24 22:45:01', '2023-02-24 22:45:01'),
(4, 'Sauces & Pickles', '<p>Sauces &amp; Pickles</p>', '1677300339.jpg', 1, '2023-02-24 22:45:39', '2023-02-24 22:45:39'),
(5, 'Dairy & Eggs', '<p>Dairy &amp; Eggs</p>', '1677300364.jpg', 1, '2023-02-24 22:46:04', '2023-02-24 22:46:04'),
(6, 'Breakfast', '<p>Breakfast</p>', '1677300387.jpg', 1, '2023-02-24 22:46:27', '2023-02-24 22:46:27'),
(7, 'Candy & Chocolate', '<p>Candy &amp; Chocolate</p>', '1677300466.jpg', 1, '2023-02-24 22:47:46', '2023-02-24 22:47:46'),
(8, 'Snacks', '<p>Snacks</p>', '1677300491.jpg', 1, '2023-02-24 22:48:11', '2023-02-24 22:48:11'),
(9, 'Beverages', '<p>Beverages</p>', '1677300511.jpg', 1, '2023-02-24 22:48:31', '2023-02-24 22:48:31'),
(10, 'Backing', '<p>Backing</p>', '1677300527.jpg', 1, '2023-02-24 22:48:47', '2023-02-24 22:48:47'),
(11, 'Frozen & Canned', '<p>Frozen &amp; Canned</p>', '1677300600.jpg', 1, '2023-02-24 22:50:00', '2023-02-24 22:50:00'),
(12, 'Diabetic Food', '<p>Diabetic Food</p>', '1677300625.jpg', 1, '2023-02-24 22:50:25', '2023-02-24 22:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'zxcxcvcxv', '2', '2023-02-25 00:21:29', '2023-02-25 00:21:29');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_01_26_192135_create_sessions_table', 1),
(7, '2023_01_26_231631_create_catagories_table', 1),
(8, '2023_01_27_061650_create_products_table', 1),
(9, '2023_01_29_083820_create_carts_table', 1),
(10, '2023_01_29_161838_create_orders_table', 1),
(11, '2023_01_31_163830_create_notifications_table', 1),
(12, '2023_02_09_054825_create_comments_table', 1),
(13, '2023_02_09_054926_create_replies_table', 1),
(14, '2023_02_15_080937_create_categories_table', 1),
(15, '2023_02_15_163928_create_subcategories_table', 1),
(16, '2023_02_24_194519_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ordernumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ordernumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `ordernumber`, `User_name`, `user_email`, `user_phone`, `User_address`, `user_id`, `product_title`, `product_quantity`, `product_id`, `product_price`, `per_product_price`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, NULL, '[]', '[]', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 21:55:52', '2023-02-24 21:55:52'),
(2, NULL, '[]', '[]', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 21:58:52', '2023-02-24 21:58:52'),
(3, NULL, '[]', '[]', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 21:59:11', '2023-02-24 21:59:11'),
(4, NULL, '[]', '[]', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 22:06:10', '2023-02-24 22:06:10'),
(5, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:06:20', '2023-02-24 22:06:20'),
(6, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:06:58', '2023-02-24 22:06:58'),
(7, 'select One', '[]', '[]', '[]', '[]', 'select One', NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 22:07:02', '2023-02-24 22:07:02'),
(8, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:07:08', '2023-02-24 22:07:08'),
(9, NULL, '[]', '[]', '[]', '[]', NULL, NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 22:08:21', '2023-02-24 22:08:21'),
(10, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:08:37', '2023-02-24 22:08:37'),
(11, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:08:54', '2023-02-24 22:08:54'),
(12, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:09:37', '2023-02-24 22:09:37'),
(13, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:09:45', '2023-02-24 22:09:45'),
(14, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:09:51', '2023-02-24 22:09:51'),
(15, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:10:13', '2023-02-24 22:10:13'),
(16, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:10:40', '2023-02-24 22:10:40'),
(17, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:10:45', '2023-02-24 22:10:45'),
(18, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:11:18', '2023-02-24 22:11:18'),
(19, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:11:23', '2023-02-24 22:11:23'),
(20, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:11:29', '2023-02-24 22:11:29'),
(21, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:11:45', '2023-02-24 22:11:45'),
(22, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:11:50', '2023-02-24 22:11:50'),
(23, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:12:13', '2023-02-24 22:12:13'),
(24, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:12:17', '2023-02-24 22:12:17'),
(25, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:12:21', '2023-02-24 22:12:21'),
(26, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:13:14', '2023-02-24 22:13:14'),
(27, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:15:03', '2023-02-24 22:15:03'),
(28, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:15:20', '2023-02-24 22:15:20'),
(29, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:15:29', '2023-02-24 22:15:29'),
(30, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:16:29', '2023-02-24 22:16:29'),
(31, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:16:38', '2023-02-24 22:16:38'),
(32, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:18:25', '2023-02-24 22:18:25'),
(33, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '2', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:22:07', '2023-02-24 22:22:07'),
(34, 'select One', '[]', '[]', '[]', '[]', 'select One', NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 22:22:34', '2023-02-24 22:22:34'),
(35, 'select One', '[]', '[]', '[]', '[]', 'select One', NULL, NULL, NULL, NULL, NULL, '[]', '2023-02-24 22:25:01', '2023-02-24 22:25:01'),
(36, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:25:04', '2023-02-24 22:25:04'),
(37, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:29:21', '2023-02-24 22:29:21'),
(38, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:30:37', '2023-02-24 22:30:37'),
(39, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:30:43', '2023-02-24 22:30:43'),
(40, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:35:55', '2023-02-24 22:35:55'),
(41, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:35:57', '2023-02-24 22:35:57'),
(42, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:36:00', '2023-02-24 22:36:00'),
(43, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:36:27', '2023-02-24 22:36:27'),
(44, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:36:30', '2023-02-24 22:36:30'),
(45, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:37:04', '2023-02-24 22:37:04'),
(46, '1201', '[{\"name\":\"Aklima\"}]', '[{\"email\":\"aklima@gmail.com\"}]', '[{\"phone\":\"12331231\"}]', '[{\"address\":\"mirpure\"}]', '1', NULL, NULL, NULL, NULL, NULL, '[{\"payment_status\":\"Cash On Delivery\"}]', '2023-02-24 22:37:15', '2023-02-24 22:37:15');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `cat_id`, `subcat_id`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Deshi Peyaj (Local Onion)', '<p><strong>Though all vegetables</strong> are important for health, certain kinds offer unique benefits.</p>\r\n\r\n<p>Onions are members of the Allium genus of flowering plants that also includes garlic, shallots, leeks and chives.</p>\r\n\r\n<p>In fact, the medicinal properties of onions have been recognized since ancient times, when they were used to treat ailments like headaches, heart disease and mouth sores.</p>\r\n\r\n<p>Nutritional facts/Ingredients :</p>\r\n\r\n<p>Benefits:</p>\r\n\r\n<p>-Packed With Nutrients</p>\r\n\r\n<p>-May Benefit Heart Health</p>\r\n\r\n<p>-Loaded With Antioxidants</p>\r\n\r\n<p>-Contain Cancer-Fighting Compounds</p>\r\n\r\n<p>-Help Control Blood Sugar</p>\r\n\r\n<p>-May Boost Bone Density</p>\r\n\r\n<p>&nbsp;</p>', '1677315141.jpg', 1, 1, '1000', '40', '35', '2023-02-25 02:52:21', '2023-02-25 02:52:21'),
(2, 'Potato Regular', '<p><strong>Buy regular potato</strong> from us which provides you with dietary fiber, potassium, vitamins, etc. Regular potato provides 9-10 percent of your daily need. Regular potatoes offer more of this nutrient which helps control your blood pressure. Make a good curry with regular potato. You can make French fries and you can enjoy with your family members.</p>', '1677315724.jpg', 1, 1, '1000', '30', '23', '2023-02-25 03:02:04', '2023-02-25 03:02:04'),
(3, 'Red Tomato', '<p><strong>The tomato</strong> is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p>', '1677315777.jpg', 1, 1, '500', '25', '19', '2023-02-25 03:02:57', '2023-02-25 03:02:57'),
(4, 'Red Tomato', '<p><strong>The tomato</strong> is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. While it is botanically a fruit, it is considered a vegetable for culinary purposes. The fruit is rich in lycopene, which may have beneficial health effects.</p>', '1677315946.jpg', 1, 1, '500', '25', '19', '2023-02-25 03:05:46', '2023-02-25 03:05:46'),
(5, 'Fulkopi (Cauliflower)', '<p>Cauliflower is as good a source of fiber and vitamins.</p>\r\n\r\n<p>Its ingredients may help strengthen bones, boost the cardiovascular system, and prevent cancer.</p>\r\n\r\n<p>Tasty ways of eating cauliflower include cauliflower crust pizza and cauliflower and cheese soup.</p>\r\n\r\n<p>People who are using blood thinners should not suddenly start eating a lot of cauliflower because the high levels of vitamin K could react adversely with the drugs.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nutritional facts/Ingredients :</p>\r\n\r\n<p>Benefits:</p>\r\n\r\n<p>-Helps With Digestion</p>\r\n\r\n<p>-Helps Fight Cancer</p>\r\n\r\n<p>-Sharpen Your memory</p>\r\n\r\n<p>-Makes your bones Stronger</p>', '1677316018.jpg', 1, 1, '800', '40', '29', '2023-02-25 03:06:58', '2023-02-25 03:11:13'),
(6, 'Deshi Gajor (Local Carrot)', '<p>5-7 pcs</p>\r\n\r\n<p>Fresh Carrots pre-packed for your convenience. Carrots are an excellent source of vitamin a and they help promote heart, eye, brain, skin and liver health. Best eaten raw for maximum health benefits.</p>', '1677316343.jpg', 1, 1, '500', '25', '19', '2023-02-25 03:12:23', '2023-02-25 03:12:23'),
(7, 'Shagor Kola (Banana Sagor)', '<h1>Shagor Kola (Banana Sagor)</h1>', '1677316460.jpg', 1, 2, '4', '50', '39', '2023-02-25 03:14:20', '2023-02-25 03:14:20'),
(8, 'Malta', '<p>5pcs -6pcs</p>\r\n\r\n<p><strong>Malta, a variety of orange</strong>, is a popular citrus fruit cultivated in hot climate. The fruit is rich in mineral salts and other ingredients of nutritive value such as iron, lime, phosphorus, and vital minerals.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Malta is loaded with vitamin C and vitamin B complex. It is a round-shaped, medium-sized fruit, weighting an average of 145.8 gm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It has a rough-surfaced orange ringed with a segment of around 9.67 centimeters and a sweet-tasting juice content of around 33.7 per cent.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The fruit is often used to make processed juice, jam, jelly and marmalade.</p>', '1677316518.jpg', 1, 2, '1000', '249', '209', '2023-02-25 03:15:18', '2023-02-25 03:15:18'),
(9, 'Paka Pape', '<p>1 pcs</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>One medium papaya has approximately:</strong></p>\r\n\r\n<p>120 calories, 30 grams of carbohydrate &ndash; including 5 grams of fiber and 18 grams of sugar, 2 grams of protein</p>\r\n\r\n<p>Papayas are also a good source of: folate, vitamin A, magnesium, copper, pantothenic, acid, fiber.</p>\r\n\r\n<p>prevention, Cancer, Bone health, Diabetes, Digestion, Heart disease, Inflammation, Skin and healing, Hair health.</p>', '1677316573.jpg', 1, 2, '1000', '120', '99', '2023-02-25 03:16:13', '2023-02-25 03:16:13'),
(11, 'Narikel (Coconut)', '<p>Coconut is one of very versatile and indispensable food item for millions of inhabitants in South and South-East Asia. It is one of the most sought-after ingredients in the kitchen since it employed in almost each and every recipe prepared in these parts of the world. Coconut is a very versatile and indispensable food item for most people under the tropical belt. It is a complete food rich in calories, vitamins, and minerals. A medium-size coconut carrying 400 g edible meat and some 30-150 ml of water may provide almost all the daily-required essential minerals, vitamins, and energy of an average-sized individual.</p>', '1677316670.jpg', 1, 2, '1', '140', '119', '2023-02-25 03:17:50', '2023-02-25 03:17:50'),
(12, 'Narikel (Coconut)', '<p>Coconut is one of very versatile and indispensable food item for millions of inhabitants in South and South-East Asia. It is one of the most sought-after ingredients in the kitchen since it employed in almost each and every recipe prepared in these parts of the world. Coconut is a very versatile and indispensable food item for most people under the tropical belt. It is a complete food rich in calories, vitamins, and minerals. A medium-size coconut carrying 400 g edible meat and some 30-150 ml of water may provide almost all the daily-required essential minerals, vitamins, and energy of an average-sized individual.</p>', '1677316747.jpg', 1, 2, '1', '140', '119', '2023-02-25 03:19:07', '2023-02-25 03:19:07'),
(13, 'Black Grapes', '<p><strong>Black grapes,</strong> which are known for their velvety colour and sweet flavour, come packed with nutrients and antioxidants. With their cultivation dating back to 6,000 to 8,000 years ago, they are said to be the oldest cultivated fruit in the Near East and Europe, and are botanically known as Vitis vinifera. There are two widely known species of black grapes: the old world species is native to the area across the southeast coast of the Black Sea (near the south of the Caspian Sea) to Afghanistan and is still found in these regions with over 10,000 varieties; and the new world species that originated from South America and North</p>', '1677316787.jpg', 1, 2, '250', '115', '89', '2023-02-25 03:19:47', '2023-02-25 03:19:47'),
(14, 'Broiler Chicken Skin Off', '<p>Weight: 1-1.05 kg</p>\r\n\r\n<p><strong>Broiler chickens</strong> are raised primarily for meat rather than to lay eggs. These poultry are often white and are bred to be large and very healthy, often with more breast meat for the consumer market. Broiler chicken breeds grow very fast and offer good value in terms of protein and calories.</p>', '1677316946.jpg', 2, 3, '1000', '399', '375', '2023-02-25 03:22:26', '2023-02-25 03:22:26'),
(15, 'Pigeon Meat', '<p>Weight: 90 -100 gm</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>The meat </strong>is very lean, easily digestible, and &quot;rich in proteins, minerals, and vitamins&quot;. It has been described as having a &quot;silky&quot; texture, as it is very tender and fine-grained. It has a milder taste than other game, and has been described as having a mild berry flavor.</p>', '1677317007.jpg', 2, 3, '100', '160', '149', '2023-02-25 03:23:27', '2023-02-25 03:23:27'),
(16, 'Chicken Liver Gizzard Mix', '<p>Chicken liver, as you might expect, refers to the liver of a healthy chicken. Chicken liver&#39;s classification is less obvious. It&#39;s not considered to be red meat or white meat; it&#39;s simply organ meat, or offal.</p>', '1677317055.jpg', 2, 3, '1000', '259', '245', '2023-02-25 03:24:15', '2023-02-25 03:24:15'),
(17, 'Chicken Liver Gizzard Mix', '<p>Chicken liver, as you might expect, refers to the liver of a healthy chicken. Chicken liver&#39;s classification is less obvious. It&#39;s not considered to be red meat or white meat; it&#39;s simply organ meat, or offal.</p>', '1677317336.jpg', 2, 3, '1000', '259', '245', '2023-02-25 03:28:56', '2023-02-25 03:28:56'),
(18, 'Premium Rui Fish Headless Curry Cut', '<p>We are offering <strong>Premium Rui</strong> With means This fishes are 100% dish bread and specially collected from Rajshahi.</p>\r\n\r\n<p>Our RUI fish are mentioned as Medium size with means each of the live fish will have to be between 1.8 KG to 2.5 KG.</p>\r\n\r\n<p>These are Medium pieces of Bengali Cuts of freshwater Rui, that are perfect for curries or fish fry. Rui is a soft-textured bony fish with a subtle flavour.</p>\r\n\r\n<p>Chaldal fish &amp; seafood is sourced from approved local fishermen Regularly, they contain no added chemicals.</p>\r\n\r\n<p>Features of our premium Rui fish:</p>\r\n\r\n<p>1. 100% native cotton fish.</p>\r\n\r\n<p>2. Our fishes are sourced from selected fish farms in Rajshahi where systematic fish farming is ensured.</p>', '1677317578.jpg', 2, 4, '500', '269', '255', '2023-02-25 03:32:58', '2023-02-25 03:32:58'),
(19, 'Premium Koi Fish Medium', '<p>Koi are freshwater fish that belong to the family of carp fish.</p>\r\n\r\n<p>Koi has a single centre bone and multiple small bones, that can be removed after cooking. It has firm skin and texture and an oily flavor. This cut consists of medium-sized, whole, cleaned &amp; gutted koi fish, with head, for your convenience. Koi fish can be enjoyed steamed, grilled, fried or in curries. They are widely enjoyed in Bengali cuisine, Tel Koi being a popular dish.</p>', '1677317637.jpg', 2, 4, '500', '210', '199', '2023-02-25 03:33:57', '2023-02-25 03:33:57'),
(20, 'Rui Fish Head Medium', '<p><strong>If you are fish lover </strong>then its the most exciting product for you. Only real fish enthusiasts would be tempted to buy this freshwater RUI head. If you&#39;re looking to cook-up a Moori Ghonto, here&#39;s the right cut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you&#39;re a fish lover, you can&#39;t keep yourself away from buying Rooi fish heads. Without Murighant, a well-known recipe of modern Bengal, we would not think that fish and rice are Bengali. Order 2 pcs Desi Premium Rui Heads today to get back that familiar taste of your mother&#39;s hands as a child.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Each of our packets contains 2 heads of medium size cotton. The live weight of these fishes ranged from 1800 grams to 2500 grams.</p>', '1677317691.jpg', 2, 4, '100', '389', '369', '2023-02-25 03:34:51', '2023-02-25 03:34:51'),
(21, 'Bengal Meat Beef Bone', '<p><em><strong>Premium quality</strong> locally sourced. Meat, such as beef, is mainly composed of protein. Usually eaten as roasts, ribs, or steaks, beef is also commonly ground or minced. Patties of ground beef are often used in hamburgers. Processed beef products include corned beef, beef jerky, and sausages. Fresh lean beef is rich in various vitamins and minerals, especially iron and zinc, and is therefore recommended as part of a healthy diet.</em></p>', '1677318366.jpg', 2, 5, '1000', '795', NULL, '2023-02-25 03:46:06', '2023-02-25 03:46:06'),
(22, 'Beef Liver (Kolija)', '<p><strong>Beef liver</strong> is an organ meat from cows. Some people may also refer to it as offal or variety meats. These terms typically refer to the internal organs and entrails of animals that a butcher may discard after preparing them. Offal can also include the heart, kidneys, and tongue.</p>', '1677318432.jpg', 2, 5, '500', '425', '349', '2023-02-25 03:47:12', '2023-02-25 03:47:12'),
(23, 'Mutton Bone in (Khashi)', '<p><strong><em>Lamb is from a younger sheep (Less than a year old) and mutton is from an older sheep. In South Asian or Caribbean cuisine, mutton refers to the meat of goats. In India however, we often refer to both sheep and goat meat as mutton.Nov</em></strong></p>', '1677318488.jpg', 2, 5, '1000', '1100', '999', '2023-02-25 03:48:08', '2023-02-25 03:48:08'),
(24, 'Tofu', '<p>Tofu</p>', '1677319588.jpg', 2, 6, '150', '69', NULL, '2023-02-25 04:06:28', '2023-02-25 04:06:28'),
(25, 'Nautilus Lite Sandwich Tuna In Spring Water', '<h1><strong>Nautilus Lite</strong> Sandwich Tuna In Spring Water</h1>', '1677319643.jpg', 2, 6, '165', '225', NULL, '2023-02-25 04:07:23', '2023-02-25 04:07:23'),
(26, 'King Bell Tuna Salad Vegetables', '<h1>King Bell Tuna Salad Vegetables</h1>', '1677319671.jpg', 2, 6, '170', '250', NULL, '2023-02-25 04:07:51', '2023-02-25 04:07:51'),
(27, 'Kazi Farms Kitchen Loitta Dried Fish', '<h1>Kazi Farms Kitchen Loitta Dried Fish</h1>', '1677319751.jpg', 2, 7, '125', '240', NULL, '2023-02-25 04:09:11', '2023-02-25 04:09:11'),
(28, 'Kazi Farms Kitchen Churi Dried Fish', '<h1>Kazi Farms Kitchen Churi Dried Fish</h1>', '1677319779.jpg', 2, 7, '125', '340', NULL, '2023-02-25 04:09:39', '2023-02-25 04:09:39'),
(29, 'Orgin Mola Dry Fish', '<h1>Orgin Mola Dry Fish</h1>', '1677319811.jpg', 2, 7, '100', '160', NULL, '2023-02-25 04:10:11', '2023-02-25 04:10:11'),
(30, 'Cumin (Jira)', '<h1><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</h1>', '1677319947.jpg', 3, 8, '100', '125', '69', '2023-02-25 04:12:27', '2023-02-25 04:12:27'),
(31, 'Cinnamon (Daruchini) Whole', '<p><em><strong>Cinnamon</strong> is used mainly as an aromatic condiment and flavouring additive in a wide variety of cuisines, sweet and savoury dishes, breakfast cereals, snackfoods, tea and traditional foods.</em></p>\r\n\r\n<p><em>Ground cinnamon is composed of around 11% water, 81% carbohydrates (including 53% dietary fiber), 4% protein, and 1% fat.[36] In a 100 gram reference amount, ground cinnamon is a rich source of calcium (100% of the Daily Value (DV)), iron (64% DV), and vitamin K (30% DV).</em></p>', '1677320079.jpg', 3, 8, '100', '80', '55', '2023-02-25 04:14:39', '2023-02-25 04:14:39'),
(32, 'Radhuni Chilli (Morich) Powder', '<p><em>Radhuni powdered Chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.</em></p>', '1677320133.jpg', 3, 8, '200', '120', NULL, '2023-02-25 04:15:33', '2023-02-25 04:15:33'),
(33, 'Radhuni Turmeric (Holud) Powder', '<p><em>Apart from having excellent antiseptic and antibacterial properties, it has the distinct flavor and fragrance of coriander for your delicious preparations.</em></p>', '1677320176.jpg', 3, 8, '200', '95', NULL, '2023-02-25 04:16:16', '2023-02-25 04:16:16'),
(34, 'Cardamom (Elachi) Whole', '<p><em>Elach, Cardamom (Elachi) is a spice with an intense, slightly sweet flavor that some people compare to mint. Its antioxidant and diuretic properties may lower blood pressure.The compounds in cardamom may help fight cancer cells. Elach is rich in compounds that may fight inflammation. Cardamom has been used for thousands of years to help with digestion.The use of cardamom to treat bad breath and improve oral health is an ancient remedy.</em></p>\r\n\r\n<p><em>Compounds in cardamom may help increase airflow to your lungs and improve breathing. When taken in powder form, cardamom may lower blood sugar.</em></p>', '1677323297.jpg', 3, 8, '50', '180', '139', '2023-02-25 05:08:17', '2023-02-25 05:08:17'),
(35, 'Teer Sugar', '<p><em><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</em></p>', '1677323385.jpg', 3, 9, '1000', '112', NULL, '2023-02-25 05:09:45', '2023-02-25 05:09:45'),
(36, 'Loose White Sugar', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', '1677323417.jpg', 3, 9, '1000', '115', NULL, '2023-02-25 05:10:17', '2023-02-25 05:10:17'),
(37, 'Saad Bit Salt', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', '1677323453.jpg', 3, 9, '100', '40', NULL, '2023-02-25 05:10:53', '2023-02-25 05:10:53'),
(38, 'Fresh Refined Sugar', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', '1677323485.jpg', 3, 9, '500', '58', NULL, '2023-02-25 05:11:25', '2023-02-25 05:11:25'),
(39, 'Paijam Rice (Boiled)', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>', '1677323596.jpg', 3, 10, '1000', '75', '65', '2023-02-25 05:13:16', '2023-02-25 05:13:16'),
(40, 'Chashi Aromatic Chinigura Rice', '<h1>Chashi Aromatic Chinigura Rice</h1>', '1677323645.jpg', 3, 10, '1000', '160', NULL, '2023-02-25 05:14:05', '2023-02-25 05:14:05'),
(41, 'Fresh Chinigura Rice', '<h1>Fresh Chinigura Rice</h1>', '1677323678.jpg', 3, 10, '1000', '160', '150', '2023-02-25 05:14:38', '2023-02-25 05:14:38'),
(42, 'Shukran Chinigura Rice', '<h1>Shukran Chinigura Rice</h1>', '1677323711.jpg', 3, 10, '1000', '155', NULL, '2023-02-25 05:15:11', '2023-02-25 05:15:11'),
(43, 'Moshur Dal (Imported)', '<h1>Moshur Dal (Imported)</h1>', '1677323850.jpg', 3, 11, '1000', '125', '105', '2023-02-25 05:17:30', '2023-02-25 05:17:30'),
(44, 'Mug Dal', '<h1>Mug Dal</h1>', '1677323885.jpg', 3, 11, '500', '75', '69', '2023-02-25 05:18:05', '2023-02-25 05:18:05'),
(45, 'Fresh Premium Moshur Dal', '<h1>Fresh Premium Moshur Dal</h1>', '1677324010.jpg', 3, 11, '1000', '150', NULL, '2023-02-25 05:20:10', '2023-02-25 05:20:10'),
(46, 'Chola Boot (Chick Peas) Dal', '<h1>Chola Boot (Chick Peas) Dal</h1>', '1677324044.jpg', 3, 11, '1000', '119', '99', '2023-02-25 05:20:44', '2023-02-25 05:20:44'),
(47, 'Mixed Dal', '<h1>Mixed Dal</h1>', '1677324073.jpg', 3, 11, '500', '75', '65', '2023-02-25 05:21:13', '2023-02-25 05:21:13'),
(48, 'Pran Moshur Dal (Deshi)', '<h1>Pran Moshur Dal (Deshi)</h1>', '1677324101.jpg', 3, 11, '1000', '170', NULL, '2023-02-25 05:21:41', '2023-02-25 05:21:41'),
(49, 'Radhuni Biryani Masala', '<p><em>Specially made mixed spices for mutton, beef, and chicken biryani. The mixing of different spices maintains the standard recipe to prepare delicious Biryani.</em></p>', '1677324204.jpg', 3, 12, '40', '55', NULL, '2023-02-25 05:23:24', '2023-02-25 05:23:24'),
(50, 'Nestle Maggi Shaad-e Magic Seasoning Mix', '<h1>Nestle Maggi Shaad-e Magic Seasoning Mix</h1>', '1677324251.jpg', 3, 12, '12', '60', NULL, '2023-02-25 05:24:11', '2023-02-25 05:24:11'),
(51, 'Radhuni Chotpoti Masala', '<p>Radhuni Chotpoti Masala is a blend of different spices that makes the preparation easy, flavored, and tasty. Radhuni Chotpoti Masala is fresh and healthy.</p>', '1677324289.jpg', 3, 12, '50', '40', NULL, '2023-02-25 05:24:49', '2023-02-25 05:24:49'),
(52, 'Knorr Crispy Fried Chicken Mix', '<p>Swap reconstituted meat for homemade chicken with Knorr Crispy Fried Chicken mix. You can also use it to prepare other delicious fried snacks e.g. onion rings, potato chop etc. Prepare restaurant like fried chicken at home with this mix and feed your children have a healthier snack!</p>', '1677324327.jpg', 3, 12, '75', '100', NULL, '2023-02-25 05:25:27', '2023-02-25 05:25:27'),
(53, 'Fresh Suji', '<h1>Fresh Suji</h1>', '1677324426.jpg', 3, 13, '500', '50', NULL, '2023-02-25 05:27:06', '2023-02-25 05:27:06'),
(54, 'Cock Vermicelli (Shemai)', '<p>Cock Vermicelli (Shemai) made of pure flour. Its very tasty and healthy. Cock Vermically (Shemai) can be the nice dessert for your family.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Manufactured by: Hashem Foods Ltd.</p>', '1677324453.jpg', 3, 13, '200', '45', NULL, '2023-02-25 05:27:33', '2023-02-25 05:27:33'),
(55, 'Well Food Lachcha Shemai', '<p>Country of Origin: Bangladesh.</p>', '1677324494.jpg', 3, 13, '400', '175', NULL, '2023-02-25 05:28:14', '2023-02-25 05:28:14'),
(56, 'Bombay Sweets Instant Laccha Shemai', '<p>Ingredients: Wheat flour, Starch, Palm olein. Nutrition facts- Calories 545, protein 13g &amp; No cholesterol</p>', '1677324523.jpg', 3, 13, '180', '50', NULL, '2023-02-25 05:28:43', '2023-02-25 05:28:43'),
(57, 'Chickpea Flour (Boot Beshon)', '<h1>Chickpea Flour (Boot Beshon)</h1>', '1677324620.jpg', 3, 14, '500', '80', NULL, '2023-02-25 05:30:20', '2023-02-25 05:30:20'),
(58, 'BBQ Coal Bag', '<h1>BBQ Coal Bag</h1>', '1677325378.jpg', 3, 14, '1000', '165', '145', '2023-02-25 05:42:58', '2023-02-25 05:42:58'),
(59, 'BBQ Coal Bag', '<h1>BBQ Coal Bag</h1>', '1677325440.jpg', 3, 14, '1000', '165', '145', '2023-02-25 05:44:00', '2023-02-25 05:44:00'),
(60, 'Tamarind peeled (Tetul)', '<p><em>Sweet and tangy, tamarind is one of the widely used spice found in every South-Asian kitchen. Tamarind fruit contains certain health benefiting essential volatile chemical compounds, minerals, vitamins and dietary fiber. This spice is a good source of minerals like copper, potassium, calcium, iron, selenium, zinc and magnesium. Potassium is an important component of cell and body fluids that helps control heart rate and blood pressure. Iron is essential for red blood cell production and as a co-factor for</em></p>', '1677325474.jpg', 3, 14, '200', '49', NULL, '2023-02-25 05:44:34', '2023-02-25 05:44:34'),
(61, 'Nutmeg (Jayfal) Whole', '<h1>Nutmeg (Jayfal) Whole</h1>', '1677325525.jpg', 3, 14, '25', '59', '55', '2023-02-25 05:45:25', '2023-02-25 05:45:25'),
(62, 'Farmer\'s Gold Awus Red Rice (Dheki Chata)', '<h1>Farmer&#39;s Gold Awus Red Rice (Dheki Chata)</h1>', '1677325567.jpg', 3, 14, '1000', '130', NULL, '2023-02-25 05:46:07', '2023-02-25 05:46:07'),
(63, 'Rupchanda Fortified Soyabean Oil', '<p>21 years of heritage.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>First Vitamin A fortified Soyabean Oil.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Increases immunity.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Strengthens bone &amp; teeth.</p>', '1677325813.jpg', 3, 15, '900', '374', '369', '2023-02-25 05:50:13', '2023-02-25 05:50:13'),
(64, 'Teer Fortified Soyabean Oil (Poly)', '<h1>Teer Fortified Soyabean Oil (Poly)</h1>', '1677325861.jpg', 3, 15, '900', '185', NULL, '2023-02-25 05:51:01', '2023-02-25 05:51:01'),
(65, 'Radhuni Pure Mustard Oil', '<p>Radhuni Pure Mustard Oil is manufactured from the finest grade of indigenous mustard seeds and purified in fully automated plant.</p>', '1677325900.jpg', 3, 15, '900', '360', NULL, '2023-02-25 05:51:40', '2023-02-25 05:51:40'),
(66, 'Fresh Fortified Soyabean Oil (Poly)', '<h1>Fresh Fortified Soyabean Oil (Poly)</h1>', '1677326126.jpg', 3, 15, '900', '185', NULL, '2023-02-25 05:55:26', '2023-02-25 05:55:26'),
(67, 'Royal Chef Fortified Sunflower Oil', '<p>* Contains 20% less harmful fat</p>\r\n\r\n<p>* Naturally enriched with Vitamins and Anti-Oxidant which boost immunity</p>\r\n\r\n<p>* 3-Stage European Processing Technology ensures product superiority</p>', '1677326164.jpg', 3, 15, '4500', '1290', NULL, '2023-02-25 05:56:04', '2023-02-25 05:56:04'),
(68, 'Foster Clark\'s Culinary Essence Vanilla', '<p><em>Foster Clarks Essences are for culinary use, and are perfect to use for cakes, creams, custard, sweets, and many savoury dishes.</em></p>', '1677327021.jpg', 3, 16, '25', '90', NULL, '2023-02-25 06:10:21', '2023-02-25 06:10:21'),
(69, 'Radhuni Kasundi', '<p><em>Kasundi is a protein-rich, spicy relish made from mustard seeds. A condiment and a taste-enhancer. Kasundi brings out the best taste in whatever it is paired up with: seasonal green fruits, snacks such as &ldquo;shingara&rdquo; &amp; &ldquo;pakora&rdquo;. Recent use of this condiment is in the preparation of &ldquo;Shorshe Ilish&rdquo;- a famous traditional recipe in Bengali cuisine &amp; even as salad dressings. A dash of Radhuni Kasundi with any food will leave your taste buds tingling with joy.</em></p>', '1677327107.jpg', 3, 16, '285', '50', NULL, '2023-02-25 06:11:47', '2023-02-25 06:11:47'),
(70, 'Ahmed Kewra Water', '<p><em>Origin: Bangladesh</em></p>\r\n\r\n<p><em>Manufacturer: Ahmed food products Ltd.</em></p>\r\n\r\n<p><em>Add exotic aroma and flavor to your polao, roast , firni etc. with ahmed kewra jal.</em></p>\r\n\r\n<p><em>&bull; Organic floured.</em></p>\r\n\r\n<p><em>&bull; Contain no Preservatives.</em></p>\r\n\r\n<p><em>&bull; Prepared from fresh fruits picked up from own gardens</em></p>\r\n\r\n<p><em>&bull; There are one portion of fruit in every 150ml.</em></p>\r\n\r\n<p><em>&bull; Has no excess sweeteners.</em></p>', '1677327151.jpg', 3, 16, '200', '25', NULL, '2023-02-25 06:12:31', '2023-02-25 06:12:31'),
(71, 'Hershey\'s Caramel Syrup', '<h1>Hershey&#39;s Caramel Syrup</h1>', '1677327181.jpg', 3, 16, '623', '750', NULL, '2023-02-25 06:13:01', '2023-02-25 06:13:01'),
(72, 'Maggi Seasoning Sauce', '<h1>Maggi Seasoning Sauce</h1>', '1677327445.jpg', 3, 16, '680', '643', NULL, '2023-02-25 06:17:25', '2023-02-25 06:17:25'),
(73, 'Pran Premium Ghee', '<p>Origin: Bangladesh.</p>', '1677327756.jpg', 3, 17, '100', '190', NULL, '2023-02-25 06:22:36', '2023-02-25 06:22:36'),
(74, 'Aarong Dairy Pure Ghee', '<p>Origin: Bangladesh</p>\r\n\r\n<p>Manufacturer: Aarong dairy</p>\r\n\r\n<p>Made hygienically from fresh cream of cow&rsquo;s milk.</p>\r\n\r\n<p>Composition:</p>\r\n\r\n<p>Cow&rsquo;s Milk Cream</p>\r\n\r\n<p>Nutrition: Milk 99.8%(Min), Moisture 0.1%</p>', '1677327790.jpg', 3, 17, '400', '670', NULL, '2023-02-25 06:23:10', '2023-02-25 06:23:10'),
(75, 'Farm Fresh Ghee', '<h1>Farm Fresh Ghee</h1>', '1677327819.jpg', 3, 17, '200', '330', NULL, '2023-02-25 06:23:39', '2023-02-25 06:23:39'),
(76, 'Milk Vita Ghee', '<h1>Milk Vita Ghee</h1>', '1677327847.jpg', 3, 17, '400', '650', NULL, '2023-02-25 06:24:07', '2023-02-25 06:24:07'),
(77, 'Ultra Ghee', '<h1>Ultra Ghee</h1>', '1677327874.jpg', 3, 17, '900', '1350', NULL, '2023-02-25 06:24:34', '2023-02-25 06:24:34'),
(78, 'Chia Seed', '<h1>Chia Seed</h1>', '1677329117.jpg', 3, 18, '100', '125', NULL, '2023-02-25 06:45:17', '2023-02-25 06:45:17'),
(79, 'Farmer\'s Gold Kaun Rice', '<h1>Farmer&#39;s Gold Kaun Rice</h1>', '1677329151.jpg', 3, 18, '500', '100', NULL, '2023-02-25 06:45:51', '2023-02-25 06:45:51'),
(80, 'Farmer\'s Gold Oshwagandha powder', '<h1>Farmer&#39;s Gold Oshwagandha powder</h1>', '1677329280.jpg', 3, 18, '100', '140', NULL, '2023-02-25 06:48:00', '2023-02-25 06:48:00'),
(81, 'Finlay Pure Green Tea Bags', '<h1>Finlay Pure Green Tea Bags 50 pcs</h1>', '1677329441.jpg', 9, 31, '100', '125', NULL, '2023-02-25 06:50:41', '2023-02-25 06:50:41'),
(82, 'Finlay Premium Tea', '<h1>Finlay Premium Tea (Free Glass)</h1>', '1677329853.jpg', 9, 31, '500', '270', NULL, '2023-02-25 06:57:33', '2023-02-25 06:57:33'),
(83, 'Magnolia Tea Stall BOP', '<h1>Magnolia Tea Stall BOP (Free Plastic Container)</h1>', '1677329893.jpg', 9, 31, '500', '195', NULL, '2023-02-25 06:58:13', '2023-02-25 06:58:13'),
(84, 'Ispahani Blender\'s', '<h1>Ispahani Blender&#39;s Choice Premium Tea</h1>', '1677329942.jpg', 9, 31, '50', '145', NULL, '2023-02-25 06:59:02', '2023-02-25 06:59:02'),
(85, 'Kazi & Kazi Tulsi Tea', '<h1>Infused with organically grown Tulsi leaves, this tea is a spicy blend of the black. Apart from the rejuvenating antioxidants, Tulsi tea can be the perfect relief from a bad cold by its adaptogenic properties.</h1>', '1677330015.jpg', 9, 31, '60', '180', NULL, '2023-02-25 07:00:15', '2023-02-25 07:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5bJ3TPjXPJvJ3QBs2wcsUUebfT2Mx2DSQG2F0vmk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHNnRTdUUFV2RXE1d1l3TEw3clFxQ1dRTzh1MzhHazB3MEVOQjJDbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1677321295),
('aEDLgN12CP1mwQR7rZg58O4tDfq9NtXIgogfTPur', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV2tSb01YZkh1VUdEd1lNeUlOVk9LU3laYUlNZ2l1c1F5VnhTNTBDRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X3Byb2R1Y3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1677317691),
('EFpXV4FCA4IBh6EbJkLq0i3euncCBUtOnjAebZIU', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicExIb0UzOUw2RnBiaVRRSjFPZ21UeDN0UFFOT1FhdGJKS0xpc2VLdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X3Byb2R1Y3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1677330015),
('g3rZWohce7yE4w5XICii0vJo73uPuIHBA7c9vf32', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRjRBeXpRNzF4ZXNTTkJhaFIyY052T2F0VVpkYTlyZVdwaVRXYTZ6RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X3Byb2R1Y3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1677324620),
('h6VjuzmgPajSWAed4sXkvvwlTFHe3jM9LuFQT3yx', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSE1neDlGeXBzSlhGdEZnVm9TaWdUUkN4YTBHU3VReDA3S1hjM1hzZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0X2J5X2NhdC8xIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1677318556),
('IN1TrprX955zMjYw4ApMsU5g0D5AkFNiaIG2REiB', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQW9pMndaM3JySGh0Z3RXeG9zQ2FSQ1pmUUVwSEJTdUpOR0pHdTlsQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X3Byb2R1Y3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1677327445),
('INd9KWiAadPtoQfuAdn9a6l2AoNv34KXdeGkS54w', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUDRrTjdBUEdDMmxiUFQzQjVGaVpOeDRQUFhadmFmYzRCM3VnSzJCWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0X2J5X2NhdC8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1677330452),
('o2vC39WnDBKdLbslRRfwB1KKQBZdxU1tWRcdvmQR', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQ0ZSQWFScGlkTjlXRXdpNUdvRHp4Q1I3ZEhvOXhpOVhrYkhVaTFyUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8/cGFnZT01Ijt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1677327181),
('qQJDLoBJ6soEChA9wrMdzIAYySy5SjjBxNZaOo24', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNnJNeldKZ25FVTJ2SFZSUDJ6R2dwQjNCcjVZaTlzTUxTVDhjZFBZbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X3Byb2R1Y3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1677320177),
('uh8Hl3DGNGTzhMlwiMiiREHN8rSi9MKjKq4gD40G', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYklDcW1JQTBwc0xlbktuWERzRGJXNnl1SXU2MFlhT0Roc1NsaDJTRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X3Byb2R1Y3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1677326164),
('WkXwy3FZdjK7xlhQOLou1bPkPS00oAttRHID2H9k', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidW10YUZYa29ma0tQNm01WmUybFZtUUpCOGpKb3NsYkFhbFNpd0M2WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC92aWV3X3Byb2R1Y3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1677329442);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `cat_id`, `name`, `description`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fresh Vegetables', '<p>Fresh Vegetables</p>', '1677300904.jpg', 1, '2023-02-24 22:55:04', '2023-02-24 22:55:04'),
(2, 1, 'Fresh Fruits', '<p>Fresh Fruits</p>', '1677300921.jpg', 1, '2023-02-24 22:55:21', '2023-02-24 22:55:21'),
(3, 2, 'Chicken & Poultry', '<p>Chicken &amp; Poultry</p>', '1677302686.jpg', 1, '2023-02-24 23:24:46', '2023-02-24 23:24:46'),
(4, 2, 'Frozen Fish', '<p>Frozen Fish</p>', '1677302706.jpg', 1, '2023-02-24 23:25:06', '2023-02-24 23:25:06'),
(5, 2, 'Meat', '<p>Meat</p>', '1677302722.jpg', 1, '2023-02-24 23:25:22', '2023-02-24 23:25:22'),
(6, 2, 'Tofu & Meat Alternatives', '<p>Tofu &amp; Meat Alternatives</p>', '1677302749.jpg', 1, '2023-02-24 23:25:49', '2023-02-24 23:25:49'),
(7, 2, 'Dried Fish', '<p>Dried Fish</p>', '1677302768.jpg', 1, '2023-02-24 23:26:08', '2023-02-24 23:26:08'),
(8, 3, 'Spices', '<p>Spices</p>', '1677302896.jpg', 1, '2023-02-24 23:28:16', '2023-02-24 23:28:16'),
(9, 3, 'Salt & Sugar', '<p>Salt &amp; Sugar</p>', '1677302933.jpg', 1, '2023-02-24 23:28:53', '2023-02-24 23:28:53'),
(10, 3, 'Rice', '<p>Rice</p>', '1677302949.jpg', 1, '2023-02-24 23:29:09', '2023-02-24 23:29:09'),
(11, 3, 'Dal or Lentil', '<p>Dal or Lentil</p>', '1677302977.jpg', 1, '2023-02-24 23:29:37', '2023-02-24 23:29:37'),
(12, 3, 'Ready Mix', '<p>Ready Mix</p>', '1677303002.jpg', 1, '2023-02-24 23:30:02', '2023-02-24 23:30:02'),
(13, 3, 'Shemai & Suji', '<p>Shemai &amp; Suji</p>', '1677303031.jpg', 1, '2023-02-24 23:30:31', '2023-02-24 23:30:31'),
(14, 3, 'Special Ingredients', '<p>Special Ingredients</p>', '1677303056.jpg', 1, '2023-02-24 23:30:56', '2023-02-24 23:30:56'),
(15, 3, 'Oil', '<p>Oil</p>', '1677303073.jpg', 1, '2023-02-24 23:31:13', '2023-02-24 23:31:13'),
(16, 3, 'Colors & Flavours', '<p>Colors &amp; Flavours</p>', '1677303097.jpg', 1, '2023-02-24 23:31:37', '2023-02-24 23:31:37'),
(17, 3, 'Ghee', '<p>Ghee</p>', '1677303116.jpg', 1, '2023-02-24 23:31:56', '2023-02-24 23:31:56'),
(18, 3, 'Premium Ingredients', '<p>Premium Ingredients</p>', '1677303148.jpg', 1, '2023-02-24 23:32:28', '2023-02-24 23:32:28'),
(19, 4, 'Tomato Sauces', '<p>Tomato Sauces</p>', '1677303222.jpg', 1, '2023-02-24 23:33:42', '2023-02-24 23:33:42'),
(20, 4, 'Pickles', '<p>Pickles</p>', '1677304279.jpg', 1, '2023-02-24 23:51:19', '2023-02-24 23:51:19'),
(21, 4, 'Cooking Sauces', '<p>Cooking Sauces</p>', '1677304304.jpg', 1, '2023-02-24 23:51:44', '2023-02-24 23:51:44'),
(22, 4, 'Other Table Sauces', '<p>Other Table Sauces</p>', '1677304329.jpg', 1, '2023-02-24 23:52:09', '2023-02-24 23:52:09'),
(23, 5, 'Eggs', '<p>Eggs</p>', '1677304416.jpg', 1, '2023-02-24 23:53:36', '2023-02-24 23:53:36'),
(24, 5, 'Powder Milk', '<p>Powder Milk</p>', '1677304437.jpg', 1, '2023-02-24 23:53:57', '2023-02-24 23:53:57'),
(25, 5, 'Liquid & UHT Milk', '<p>Liquid &amp; UHT Milk</p>', '1677304463.jpg', 1, '2023-02-24 23:54:23', '2023-02-24 23:54:23'),
(26, 5, 'Yougurt & Sweets', '<p>Yougurt &amp; Sweets</p>', '1677304498.jpg', 1, '2023-02-24 23:54:58', '2023-02-24 23:54:58'),
(27, 5, 'Cheese', '<p>Cheese</p>', '1677304618.jpg', 1, '2023-02-24 23:56:58', '2023-02-24 23:56:58'),
(28, 5, 'Condensed Milk & Cream', '<p>Condensed Milk &amp; Cream</p>', '1677304646.jpg', 1, '2023-02-24 23:57:26', '2023-02-24 23:57:26'),
(29, 5, 'Butter & Sour Cream', '<p>Butter &amp; Sour Cream</p>', '1677304682.jpg', 1, '2023-02-24 23:58:02', '2023-02-24 23:58:02'),
(30, 6, 'Braeds', '<p>Braeds</p>', '1677305061.jpg', 1, '2023-02-25 00:04:21', '2023-02-25 00:04:21'),
(31, 6, 'Tea & Coffee', '<p>Tea &amp; Coffee</p>', '1677305092.jpg', 1, '2023-02-25 00:04:52', '2023-02-25 00:04:52'),
(32, 6, 'Cereals', '<p>Cereals</p>', '1677305127.jpg', 1, '2023-02-25 00:05:27', '2023-02-25 00:05:27'),
(33, 6, 'Honey', '<p>Honey</p>', '1677305153.jpg', 1, '2023-02-25 00:05:53', '2023-02-25 00:05:53'),
(34, 5, 'Energy Boosters', '<p>Energy Boosters</p>', '1677305178.jpg', 1, '2023-02-25 00:06:18', '2023-02-25 00:06:18'),
(35, 6, 'Jams & Jellies', '<p>Jams &amp; Jellies</p>', '1677305220.jpg', 1, '2023-02-25 00:07:00', '2023-02-25 00:07:00'),
(36, 7, 'Chocolates', '<p>Chocolates</p>', '1677305292.jpg', 1, '2023-02-25 00:08:12', '2023-02-25 00:08:12'),
(37, 7, 'Wafers', '<p>Wafers</p>', '1677305311.jpg', 1, '2023-02-25 00:08:31', '2023-02-25 00:08:31'),
(38, 7, 'Candies', '<p>Candies</p>', '1677305340.jpg', 1, '2023-02-25 00:09:00', '2023-02-25 00:09:00'),
(39, 8, 'Noodles', '<p>Noodles</p>', '1677305423.jpg', 1, '2023-02-25 00:10:23', '2023-02-25 00:10:23'),
(40, 8, 'Cookies', '<p>Cookies</p>', '1677305445.jpg', 1, '2023-02-25 00:10:45', '2023-02-25 00:10:45'),
(41, 8, 'Local Snacks', '<p>Local Snacks</p>', '1677305470.jpg', 1, '2023-02-25 00:11:10', '2023-02-25 00:11:10'),
(42, 8, 'Chips & Pretzels', '<p>Chips &amp; Pretzels</p>', '1677305493.jpg', 1, '2023-02-25 00:11:33', '2023-02-25 00:11:33'),
(43, 9, 'Tea', '<p>Tea</p>', '1677305644.jpg', 1, '2023-02-25 00:14:04', '2023-02-25 00:14:04'),
(44, 9, 'Soft Drinks', '<p>Soft Drinks</p>', '1677305661.jpg', 1, '2023-02-25 00:14:21', '2023-02-25 00:14:21'),
(45, 9, 'Coffee', '<p>Coffee</p>', '1677305678.jpg', 1, '2023-02-25 00:14:38', '2023-02-25 00:14:38'),
(46, 8, 'Syrups & Powder Drinks', '<p>Syrups &amp; Powder Drinks</p>', '1677305701.jpg', 1, '2023-02-25 00:15:01', '2023-02-25 00:15:01'),
(47, 9, 'Water', '<p>Water</p>', '1677305715.jpg', 1, '2023-02-25 00:15:15', '2023-02-25 00:15:15'),
(48, 10, 'Flour', '<p>Flour</p>', '1677305781.jpg', 1, '2023-02-25 00:16:21', '2023-02-25 00:16:21'),
(49, 10, 'Nuts & Dried Fruits', '<p>Nuts &amp; Dried Fruits</p>', '1677305805.jpg', 1, '2023-02-25 00:16:45', '2023-02-25 00:16:45'),
(50, 10, 'Baking Tools', '<p>Baking Tools</p>', '1677305822.jpg', 1, '2023-02-25 00:17:02', '2023-02-25 00:17:02'),
(51, 10, 'Baking & Dessert Mixes', '<p>Baking &amp; Dessert Mixes</p>', '1677305853.jpg', 1, '2023-02-25 00:17:33', '2023-02-25 00:17:33'),
(52, 11, 'Chicken Snacks', '<p>Chicken Snacks</p>', '1677305945.jpg', 1, '2023-02-25 00:19:05', '2023-02-25 00:19:05'),
(53, 11, 'Frozen Parathas & Roti', '<p>Frozen Parathas &amp; Roti</p>', '1677305970.jpg', 1, '2023-02-25 00:19:30', '2023-02-25 00:19:30'),
(54, 11, 'Mushroom Cans', '<p>Mushroom Cans</p>', '1677305990.jpg', 1, '2023-02-25 00:19:50', '2023-02-25 00:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Aklima', 'aklima@gmail.com', '0', '12331231', 'mirpure', '2023-02-22 03:59:32', '$2y$10$9M7u1ZauCFKb/KwDPGQFK..sAY4cGWlWKE1EUtrH.JJSI4Xnx/Xa.', NULL, NULL, '2023-02-22 03:59:32', NULL, NULL, NULL, '2023-02-24 21:49:33', '2023-02-24 21:49:33'),
(2, 'Admin', 'admin@gmail.com', '1', '12331231', 'mirpure', '2023-02-28 03:49:57', '$2y$10$4j6NWk4gkd2P7zVATZ4tc.3Hh.lETLE.eeNq/XjuCQJ4Gf9medL5u', NULL, NULL, '2023-02-28 03:49:57', NULL, NULL, NULL, '2023-02-24 21:49:33', '2023-02-24 21:49:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_cat_id_foreign` (`cat_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
