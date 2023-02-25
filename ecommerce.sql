-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 25, 2023 at 07:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `per_product_price` varchar(255) DEFAULT NULL,
  `per_product_quantity` varchar(255) DEFAULT NULL,
  `total_product_quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
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
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
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
  `ordernumber` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `per_product_price` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ordernumber` varchar(255) DEFAULT NULL,
  `User_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `User_address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `product_quantity` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_price` varchar(255) DEFAULT NULL,
  `per_product_price` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5DuemKt9BHPUYJgX8a00Z0M5Fhc8BcZteM09VQQ5', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWFFDMUc0OXdtaFBiWmJMRDBlYUVyeE9WYTM2SmxtMlN1YVFZMkJZbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1677306090);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
