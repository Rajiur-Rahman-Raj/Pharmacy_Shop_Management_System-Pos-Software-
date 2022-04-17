-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 09:37 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_title`, `category_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Syrup', 'This is syrup', 'Active', '2018-11-08 05:35:45', '2019-01-26 01:55:38'),
(2, 'Paracetamol', 'This is paracetamol', 'Active', '2018-11-08 05:47:58', '2018-11-08 05:47:58'),
(3, 'Multivitamins', 'Multivitamins', 'Active', '2018-11-08 05:48:28', '2018-11-08 05:48:28'),
(4, 'Vitamins', 'Vitamins', 'Active', '2018-11-09 22:51:44', '2018-11-09 22:51:44'),
(5, 'Antibiotic', 'Antibiotic', 'Active', '2018-11-09 23:05:16', '2018-11-10 00:49:15'),
(6, 'Tablet', 'Tablet', 'Active', '2018-11-09 23:06:31', '2018-11-09 23:06:31'),
(7, 'Capsule', 'Capsule', 'Inactive', '2018-11-10 00:41:08', '2018-11-10 05:30:48'),
(8, 'terst', 'fff', 'Inactive', '2019-01-20 03:19:50', '2019-02-03 07:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bappy Mustafiz', 'bappy@sarosit.com', '01751817603', 'Uttara, Dhaka.', 'Active', NULL, '2018-12-04 05:21:34'),
(2, 'John', 'john@gmail.com', '0147855', 'House-36, Road-20,Dhaka', 'Active', '2018-11-16 23:44:50', '2018-11-17 02:34:16'),
(3, 'Hasan', 'hasan@gmail.com', '012335556', 'Adam street, Dhaka', 'Active', '2018-11-16 23:46:15', '2018-11-17 02:34:37'),
(4, 'Milon', 'milon@gmail.com', '01789563256', 'Merul badda, dhaka.', 'Inactive', '2018-11-16 23:51:12', '2018-12-10 02:22:00'),
(5, 'Rumpa', 'rumpa@sarosit.com', '01789563257', 'House-36, Road-20,Dhaka', 'Inactive', '2018-11-16 23:53:49', '2018-11-17 04:06:12'),
(6, 'Pinky', 'pinky@sarosit.com', '0125896', 'House No. # 02, Road No. # 19, Sector # 04, Uttara, Dhaka - 1230', 'Inactive', '2018-11-17 02:40:39', '2018-11-18 04:23:37'),
(7, 'Pinky malu', 'pink@sarosit.com', '0147895632', 'here and now', 'Inactive', '2018-11-18 06:48:29', '2018-11-18 06:48:59'),
(8, 'Pingky Malo', 'p@sarosit.com', '0124578', 'Dhaka', 'Active', '2019-03-13 04:58:15', '2019-03-13 04:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `expense` double(10,2) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `entry_date`, `expense_category_id`, `expense`, `status`, `created_at`, `updated_at`) VALUES
(1, '2019-03-04', 2, 2500.00, 'Active', '2018-11-11 04:47:34', '2019-03-14 05:56:07'),
(2, '11/11/2018', 1, 250000.00, 'Active', '2018-11-11 05:22:50', '2018-11-12 00:23:57'),
(3, '11/12/2018', 3, 2500.00, 'Active', '2018-11-12 00:18:38', '2018-11-12 00:23:31'),
(4, '12/04/2018', 2, 500.00, 'Active', '2018-12-04 05:22:01', '2018-12-04 05:22:01'),
(5, '01/20/2019', 2, 100.00, 'Active', '2019-01-20 00:46:01', '2019-01-20 00:46:01'),
(6, '2019-03-14', 2, 100.00, 'Inactive', '2019-03-14 05:52:21', '2019-03-14 05:58:13'),
(7, '2019-03-14', 2, 500.00, 'Active', '2019-03-14 05:56:33', '2019-03-14 05:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `expense_category_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `expense_category_title`, `expense_category_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Salary', 'Monthly Salaries of Employees to be paid on 1st of every month.', 'Active', '2018-11-11 02:08:50', '2018-11-12 23:48:28'),
(2, 'Maintaince', 'Expenses on Maintainence of Shop.', 'Active', '2018-11-11 02:10:24', '2018-11-12 23:57:23'),
(3, 'Service', 'All Expenses on Service of Guests, e.g Cold Drinks.', 'Active', '2018-11-11 02:10:50', '2018-11-11 02:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(10) UNSIGNED NOT NULL,
  `medicine_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `generic_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_price` double(10,2) NOT NULL,
  `selling_price` double(10,2) NOT NULL,
  `stored_box` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock_alert` int(11) NOT NULL,
  `self_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `effects` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `medicine_title`, `category_id`, `generic_name`, `company_name`, `purchase_price`, `selling_price`, `stored_box`, `quantity`, `stock_alert`, `self_number`, `effects`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Napa', 3, 'N-100', 'Paracitamal', 2.00, 3.00, 5, 130, 10, 'B', 'No effects', '12/12/2018', 'Active', '2018-11-10 03:15:14', '2019-02-03 04:50:56'),
(2, 'Panadol 200gm', 5, 'P-200', 'Arton Drugs', 25.00, 27.00, 5, 2, 10, '1', 'No effects', '12/31/2018', 'Active', '2018-11-10 03:20:07', '2019-02-03 04:52:05'),
(3, 'Desopen 2', 6, 'D-100', 'Desopen', 5.00, 7.00, 10, 80, 0, 'D', 'No effects', '11/12/2018', 'Active', '2018-11-11 23:42:30', '2019-02-03 03:52:17'),
(4, 'Phinix', 6, 'P-20', 'Finix', 4.00, 5.50, 5, 30, 0, 'F', 'No effects', '12/12/2018', 'Active', '2018-11-20 02:56:36', '2019-02-03 03:52:26'),
(5, 'Algin', 6, 'A-700', 'Algin', 5.00, 7.00, 5, 4, 5, '1A', 'No effects', '11/12/2018', 'Active', '2018-11-20 02:59:32', '2019-03-13 02:28:39'),
(6, 'Neurobest', 3, 'N-123', 'Renta Limited', 7.00, 10.00, 100, 9905, 0, 'A', 'No side effects', '02/04/2019', 'Active', '2019-02-03 03:36:55', '2019-02-03 03:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_08_093719_create_categories_table', 2),
(4, '2018_11_10_071029_create_mediciens_table', 3),
(5, '2018_11_10_090532_create_medicines_table', 4),
(6, '2018_11_10_091305_create_mediciens_table', 5),
(7, '2018_11_10_091437_create_medicines_table', 6),
(8, '2018_11_11_074002_create_expensecategories_table', 7),
(9, '2018_11_11_080809_create_expense_categories_table', 8),
(10, '2018_11_11_100202_create_expenses_table', 9),
(11, '2018_11_11_115850_create_permission_tables', 10),
(12, '2018_11_15_095937_create_customers_table', 11),
(13, '2019_01_26_082712_create_orders_table', 12),
(16, '2019_03_18_055131_create_returns_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `medicine_details` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_details` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `status` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `medicine_details`, `customer_details`, `payment_details`, `total`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:45;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:1;s:13:\"customer_name\";s:14:\"Bappy Mustafiz\";s:5:\"email\";s:17:\"bappy@sarosit.com\";s:5:\"phone\";s:11:\"01751817603\";s:7:\"address\";s:14:\"Uttara, Dhaka.\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";N;s:10:\"updated_at\";s:19:\"2018-12-04 11:21:34\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:1;s:13:\"customer_name\";s:14:\"Bappy Mustafiz\";s:5:\"email\";s:17:\"bappy@sarosit.com\";s:5:\"phone\";s:11:\"01751817603\";s:7:\"address\";s:14:\"Uttara, Dhaka.\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";N;s:10:\"updated_at\";s:19:\"2018-12-04 11:21:34\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:2:{s:4:\"cash\";s:2:\"15\";s:4:\"card\";s:2:\"20\";}', '480.00', '10.00', 'Active', '2019-03-13 08:35:52', '2019-03-17 11:12:32'),
(3, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:4;s:13:\"medicine_name\";s:6:\"Phinix\";s:12:\"medicine_qty\";i:9;s:14:\"medicine_price\";d:5;}i:1;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:50;s:14:\"medicine_price\";d:10;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:13:\"customer_name\";s:4:\"John\";s:5:\"email\";s:14:\"john@gmail.com\";s:5:\"phone\";s:7:\"0147855\";s:7:\"address\";s:23:\"House-36, Road-20,Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:44:50\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:16\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:13:\"customer_name\";s:4:\"John\";s:5:\"email\";s:14:\"john@gmail.com\";s:5:\"phone\";s:7:\"0147855\";s:7:\"address\";s:23:\"House-36, Road-20,Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:44:50\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:16\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:2:{s:4:\"card\";s:3:\"500\";s:4:\"cash\";s:2:\"40\";}', '545.00', '5.00', 'Active', '2019-03-13 08:39:42', '2019-03-13 09:37:46'),
(4, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:4;s:13:\"medicine_name\";s:6:\"Phinix\";s:12:\"medicine_qty\";i:3;s:14:\"medicine_price\";d:5.5;}}', 'N;', 'a:1:{s:4:\"cash\";s:4:\"16.5\";}', '16.50', NULL, 'deleted', '2019-03-13 10:01:43', '2019-03-14 06:11:26'),
(5, 'a:3:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}i:1;a:4:{s:11:\"medicine_id\";i:5;s:13:\"medicine_name\";s:5:\"Algin\";s:12:\"medicine_qty\";i:2;s:14:\"medicine_price\";d:7;}i:2;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:15;s:14:\"medicine_price\";d:10;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:2:{s:4:\"cash\";s:3:\"100\";s:4:\"card\";s:2:\"90\";}', '194.00', '4.00', 'Active', '2019-03-13 10:08:39', '2019-03-13 10:08:39'),
(6, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:5;s:13:\"medicine_name\";s:5:\"Algin\";s:12:\"medicine_qty\";i:1;s:14:\"medicine_price\";d:7;}i:1;a:4:{s:11:\"medicine_id\";i:4;s:13:\"medicine_name\";s:6:\"Phinix\";s:12:\"medicine_qty\";i:7;s:14:\"medicine_price\";d:5.5;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:13:\"customer_name\";s:11:\"Pingky Malo\";s:5:\"email\";s:13:\"p@sarosit.com\";s:5:\"phone\";s:7:\"0124578\";s:7:\"address\";s:5:\"Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2019-03-13 10:58:15\";s:10:\"updated_at\";s:19:\"2019-03-13 10:58:15\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:13:\"customer_name\";s:11:\"Pingky Malo\";s:5:\"email\";s:13:\"p@sarosit.com\";s:5:\"phone\";s:7:\"0124578\";s:7:\"address\";s:5:\"Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2019-03-13 10:58:15\";s:10:\"updated_at\";s:19:\"2019-03-13 10:58:15\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:2:{s:4:\"cash\";s:2:\"10\";s:4:\"card\";s:2:\"34\";}', '45.50', '1.50', 'Active', '2019-03-13 10:59:38', '2019-03-13 10:59:38'),
(7, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:15;s:14:\"medicine_price\";d:10;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:2;s:13:\"customer_name\";s:4:\"John\";s:5:\"email\";s:14:\"john@gmail.com\";s:5:\"phone\";s:7:\"0147855\";s:7:\"address\";s:23:\"House-36, Road-20,Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:44:50\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:16\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:2;s:13:\"customer_name\";s:4:\"John\";s:5:\"email\";s:14:\"john@gmail.com\";s:5:\"phone\";s:7:\"0147855\";s:7:\"address\";s:23:\"House-36, Road-20,Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:44:50\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:16\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:1:{s:4:\"cash\";s:3:\"150\";}', '150.00', '10.00', 'Active', '2019-03-14 06:35:38', '2019-03-14 12:00:17'),
(8, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:15;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:4;s:13:\"medicine_name\";s:6:\"Phinix\";s:12:\"medicine_qty\";i:11;s:14:\"medicine_price\";d:5.5;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:2:{s:4:\"cash\";s:3:\"109\";s:4:\"card\";s:3:\"100\";}', '210.50', '1.50', 'Active', '2019-03-14 11:23:59', '2019-03-14 11:23:59'),
(9, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:45;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:2:{s:4:\"cash\";s:3:\"170\";s:4:\"card\";s:3:\"300\";}', '480.00', '10.00', 'Active', '2019-03-16 10:16:03', '2019-03-16 10:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bappy@dev.com', '$2y$10$DmgYLBCR80YpRuSXwMxGf.VmkRT.4z3zg/Js4ZNeDT4pFVyacEyti', '2018-11-07 22:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `item_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `return_charge` decimal(10,2) DEFAULT NULL,
  `status` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `inventory_id`, `item_details`, `return_details`, `customer_details`, `return_type`, `total`, `return_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}i:1;a:4:{s:11:\"medicine_id\";i:5;s:13:\"medicine_name\";s:5:\"Algin\";s:12:\"medicine_qty\";i:2;s:14:\"medicine_price\";d:7;}}', '[{\"id\":5,\"medicine_details\":\"a:3:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:10;s:14:\\\"medicine_price\\\";d:3;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:5;s:13:\\\"medicine_name\\\";s:5:\\\"Algin\\\";s:12:\\\"medicine_qty\\\";i:2;s:14:\\\"medicine_price\\\";d:7;}i:2;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:15;s:14:\\\"medicine_price\\\";d:10;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"194.00\",\"discount\":\"4.00\"}]', '', 'a:1:{s:4:\"cash\";s:2:\"30\";}', '44.00', '14.00', 'Active', '2019-03-18 06:46:33', '2019-03-18 07:46:17'),
(2, 1, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:45;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}}', '[{\"id\":1,\"medicine_details\":\"a:2:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:45;s:14:\\\"medicine_price\\\";d:10;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:10;s:14:\\\"medicine_price\\\";d:3;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:1;s:13:\\\"customer_name\\\";s:14:\\\"Bappy Mustafiz\\\";s:5:\\\"email\\\";s:17:\\\"bappy@sarosit.com\\\";s:5:\\\"phone\\\";s:11:\\\"01751817603\\\";s:7:\\\"address\\\";s:14:\\\"Uttara, Dhaka.\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2018-12-04 11:21:34\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:1;s:13:\\\"customer_name\\\";s:14:\\\"Bappy Mustafiz\\\";s:5:\\\"email\\\";s:17:\\\"bappy@sarosit.com\\\";s:5:\\\"phone\\\";s:11:\\\"01751817603\\\";s:7:\\\"address\\\";s:14:\\\"Uttara, Dhaka.\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2018-12-04 11:21:34\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"480.00\",\"discount\":\"10.00\"}]', 'N;', 'a:1:{s:4:\"cash\";s:3:\"460\";}', '480.00', '20.00', 'Active', '2019-03-18 07:32:31', '2019-03-18 07:32:31'),
(3, 5, 'a:3:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}i:1;a:4:{s:11:\"medicine_id\";i:5;s:13:\"medicine_name\";s:5:\"Algin\";s:12:\"medicine_qty\";i:2;s:14:\"medicine_price\";d:7;}i:2;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:15;s:14:\"medicine_price\";d:10;}}', '[{\"id\":5,\"medicine_details\":\"a:3:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:10;s:14:\\\"medicine_price\\\";d:3;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:5;s:13:\\\"medicine_name\\\";s:5:\\\"Algin\\\";s:12:\\\"medicine_qty\\\";i:2;s:14:\\\"medicine_price\\\";d:7;}i:2;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:15;s:14:\\\"medicine_price\\\";d:10;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"194.00\",\"discount\":\"4.00\"}]', 'N;', 'a:1:{s:4:\"cash\";i:640;}', '194.00', '14.00', 'Active', '2019-03-18 07:47:54', '2019-03-18 07:47:54'),
(4, 8, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:15;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:4;s:13:\"medicine_name\";s:6:\"Phinix\";s:12:\"medicine_qty\";i:11;s:14:\"medicine_price\";d:5.5;}}', '[{\"id\":8,\"medicine_details\":\"a:2:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:15;s:14:\\\"medicine_price\\\";d:10;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:4;s:13:\\\"medicine_name\\\";s:6:\\\"Phinix\\\";s:12:\\\"medicine_qty\\\";i:11;s:14:\\\"medicine_price\\\";d:5.5;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"210.50\",\"discount\":\"1.50\"}]', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:1:{s:4:\"cash\";i:840;}', '210.50', '10.50', 'Active', '2019-03-18 07:49:05', '2019-03-18 08:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_type_id`, `address`, `phone`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bappy', 'bappy@sarosit.com', NULL, '$2y$10$4neRM5DFhdI1aKjmMg2ApevKmX63D1N5LuZ1NIs9yig4NzpuQl6hW', 1, 'House-36, Road-20,Dhaka', '01478956', '98836.jpg', 'Active', 'G6Cvdc6kDJm01nKd5ZUQksocC3gJUM31JpXoTNP5YieZbdL2AiDQJ729SBnK', '2018-11-07 22:59:10', '2018-11-13 01:17:09'),
(2, 'Hasan', 'hasan@sarosit.com', NULL, '$2y$10$Dpcz3/UC65t.jHVAEJHBRuqSchw/H3RrNcSfY.bwIIVEYSULinRCW', 2, 'House-36, Road-20,Dhaka', '0147895632', '69359.jpg', 'Active', NULL, '2018-11-12 01:15:38', '2018-11-12 03:50:37'),
(3, 'Yeasin', 'yeasin@sarosit.com', NULL, '$2y$10$Ryb8fSYspeBxfNfXl/hRtO8/eIoSXGB67aTno91kvE1cVI0lUQhcK', 2, 'House-36, Road-20,Dhaka update', '0147895632', '52029.jpg', 'Active', NULL, '2018-11-12 01:19:16', '2018-11-12 03:49:07'),
(4, 'John Doe', 'john@sarosit.com', NULL, '$2y$10$oCjLt0AFf0SFWFDFiLpPJ.ubb7t2pPlbUrfMBHDXYe/QEI3f3ktUG', 2, 'House-36, Road-20,Dhaka', '01478956', '10234.jpg', 'Active', NULL, '2018-11-12 01:21:25', '2018-11-12 03:48:43'),
(5, 'Hj Noyon', 'hjnoyon@sarosit.com', NULL, '$2y$10$UWKnqXsEMzsHDu7.ma4pk.3qTQ4/lQENi0SgeEdlTjKX5jEep/vt.', 1, 'House-36, Road-20,Dhaka', '01478956', '17188.jpg', 'Active', NULL, '2018-11-12 01:24:28', '2018-11-12 03:51:30'),
(6, 'Shahin', 'shahin@sarosit.com', NULL, '$2y$10$Ri792Nc5m8HiDtUqd5aiZu6QsZG7od1Ec/gJ8VuDN20FHQpcV6nfy', 2, 'Adam street, Dhaka', '0147895632', '62512.jpg', 'Active', NULL, '2018-11-12 01:38:28', '2018-11-12 07:27:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
