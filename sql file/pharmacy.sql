-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2021 at 06:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
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
(1, 'Robin', 'msrobin@gmail.com', '01751817603', 'Uttara, Dhaka.', 'Inactive', NULL, '2019-11-05 21:33:13'),
(2, 'John', 'john@gmail.com', '0147855', 'House-36, Road-20,Dhaka', 'Active', '2018-11-16 23:44:50', '2018-11-17 02:34:16'),
(3, 'Hasan', 'hasan@gmail.com', '012335556', 'Adam street, Dhaka', 'Active', '2018-11-16 23:46:15', '2018-11-17 02:34:37'),
(4, 'Milon', 'milon@gmail.com', '01789563256', 'Merul badda, dhaka.', 'Inactive', '2018-11-16 23:51:12', '2018-12-10 02:22:00'),
(5, 'Rumpa', 'rumpa@sarosit.com', '01789563257', 'House-36, Road-20,Dhaka', 'Inactive', '2018-11-16 23:53:49', '2018-11-17 04:06:12'),
(6, 'Pinky', 'pinky@sarosit.com', '0125896', 'House No. # 02, Road No. # 19, Sector # 04, Uttara, Dhaka - 1230', 'Inactive', '2018-11-17 02:40:39', '2018-11-18 04:23:37'),
(7, 'Pinky malu', 'pink@sarosit.com', '0147895632', 'here and now', 'Inactive', '2018-11-18 06:48:29', '2018-11-18 06:48:59'),
(8, 'Pingky Malo', 'p@sarosit.com', '0124578', 'Dhaka', 'Active', '2019-03-13 04:58:15', '2019-03-13 04:58:15'),
(9, 'konika', 'shahin@gmail.com', '1733112181', 'House-36, Road-20,Dhaka, Malibag', 'Inactive', '2019-11-07 13:26:44', '2019-11-07 13:26:44');

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
(1, 'Napa', 3, 'N-100', 'Paracitamal', 2.00, 3.00, 5, 123, 10, 'B', 'No effects', '12/12/2018', 'Active', '2018-11-10 03:15:14', '2019-02-03 04:50:56'),
(2, 'Panadol 200gm', 5, 'P-200', 'Arton Drugs', 25.00, 27.00, 5, 2, 10, '1', 'No effects', '12/31/2018', 'Active', '2018-11-10 03:20:07', '2019-02-03 04:52:05'),
(3, 'Desopen 2', 6, 'D-100', 'Desopen', 5.00, 7.00, 10, 80, 0, 'D', 'No effects', '11/12/2018', 'Active', '2018-11-11 23:42:30', '2019-02-03 03:52:17'),
(4, 'Phinix', 6, 'P-20', 'Finix', 4.00, 5.50, 5, 30, 0, 'F', 'No effects', '12/12/2018', 'Active', '2018-11-20 02:56:36', '2019-02-03 03:52:26'),
(5, 'Algin', 6, 'A-700', 'Algin', 5.00, 7.00, 5, 4, 5, '1A', 'No effects', '11/12/2018', 'Active', '2018-11-20 02:59:32', '2019-03-13 02:28:39'),
(6, 'Neurobest', 3, 'N-123', 'Renta Limited', 7.00, 10.00, 100, 9905, 0, 'A', 'No side effects', '02/04/2019', 'Active', '2019-02-03 03:36:55', '2019-02-03 03:36:55'),
(7, 'voligel', 2, 'diclofenac sodium', 'beximco', 80.00, 97.00, 50, 48, 5, 'D', 'no', '01/30/2019', 'Active', '2019-11-07 13:32:58', '2019-11-07 13:32:58'),
(8, 'ace plus', 2, 'parcetamol', 'beximco', 2.00, 3.00, 10, 95, 10, 'c', 'no', '11/09/2019', 'Active', '2019-11-09 00:09:56', '2019-11-09 00:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
(9, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:45;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}}', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:2:{s:4:\"cash\";s:3:\"170\";s:4:\"card\";s:3:\"300\";}', '480.00', '10.00', 'Active', '2019-03-16 10:16:03', '2019-03-16 10:16:03'),
(10, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:1;s:14:\"medicine_price\";d:3;}}', 'N;', 'a:1:{s:4:\"cash\";s:1:\"3\";}', '3.00', NULL, 'Active', '2019-11-06 02:13:07', '2019-11-06 02:13:07'),
(11, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}}', 'N;', 'a:1:{s:4:\"cash\";s:2:\"20\";}', '30.00', '10.00', 'Active', '2019-11-07 19:24:51', '2019-11-07 19:24:51'),
(12, 'a:0:{}', 'N;', 'a:1:{s:4:\"cash\";s:3:\"100\";}', '30.00', '10.00', 'Active', '2019-11-07 19:27:29', '2019-11-07 19:27:29'),
(13, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:7;s:13:\"medicine_name\";s:7:\"voligel\";s:12:\"medicine_qty\";i:2;s:14:\"medicine_price\";d:97;}}', 'N;', 'a:1:{s:4:\"cash\";i:1088;}', '194.00', NULL, 'Active', '2019-11-07 19:36:30', '2019-11-07 19:36:30'),
(14, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:8;s:13:\"medicine_name\";s:8:\"ace plus\";s:12:\"medicine_qty\";i:5;s:14:\"medicine_price\";d:3;}}', 'N;', 'a:1:{s:4:\"cash\";s:2:\"15\";}', '15.00', NULL, 'Active', '2019-11-09 06:11:00', '2019-11-09 06:11:00'),
(15, 'a:0:{}', 'N;', 'a:1:{s:4:\"cash\";s:3:\"100\";}', '15.00', NULL, 'Active', '2019-11-09 06:11:43', '2019-11-09 06:11:43'),
(16, 'a:0:{}', 'N;', 'a:1:{s:4:\"cash\";s:3:\"100\";}', '15.00', NULL, 'Active', '2019-11-09 06:12:23', '2019-11-09 06:12:23');

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
('bappy@dev.com', '$2y$10$DmgYLBCR80YpRuSXwMxGf.VmkRT.4z3zg/Js4ZNeDT4pFVyacEyti', '2018-11-07 22:59:55'),
('mdhrshahin@gmail.com', 'lXT1pQMqe0HrRsIceNypFwNra4ZGqJ9HFKKR57JZsXnnyX35QRX3CL7CcmSwLB3o0vJ79gWqD3tiCr5eBuRLaDsePF5uZZzOTmTwVN7bEGRzkN8XNr98sc3D', '2019-10-12 02:45:13'),
('mdhrshahin@gmail.com', 'o2DI8vut9iSwsqjoaQn3zbd2RaqGAI2KXu6xbJMKerxZLAhHSmQrGm55bB8vQFBLEOV3imItzyxgx7o5bv2kygWq6rTE3Pb4qDfe383vzqk1VjUD6Hw3B1Qd', '2019-10-12 02:47:48'),
('mdhrshahin@gmail.com', '7lsFfu3Acs0foEwTbR1WBOMewPciqBcnHJ61A8BCtT6zJDoSSFggLwNhC6a5cED6aTrbu3yWUAXDd9yGS3wVDq2RDmSz4DIAfBWAlFSwQRI2T8P6vdDMrBMW', '2019-10-12 02:48:19'),
('mdhrshahin@gmail.com', 'EcLGYhjQeg30DLVxRcfb6sEEoynv9g9lLzu3KU8k2Or5lj5Icyn7wOjEBMdyh2r3Zy2upWHHw5hcGFumHDca09Z4GHZly1RxPTQIEhEhPXm09XKeoKUYchkM', '2019-10-12 02:49:23'),
('mdhrshahin@gmail.com', 'SeLhyssll11ZzTKq87Jr2tc2uj55OWaWYXpwTezltQSVL6Sj2XD6rSTFR2xFj38YGoaFB8BYlOSr8wg7Y48FOxAUQvxNx3iTuCVe921Qme1aUHGHTkn7xf7j', '2019-10-12 02:50:14'),
('mdhrshahin@gmail.com', '65LTbeZte7lYNoTDcr5lBmgCKbM45M7KivIxsi4MD5xEDucaVoDYkBfKwtBcDmwMEYCkZZgquiM9YgUkISIpfTGUGuNbUho0wC0jKf8cC2Ay5HT4ELNj5Wq1', '2019-10-12 02:51:37'),
('mdhrshahin@gmail.com', 'BuKSr50f0ibVImoPPpNgIhAecBkfiGkzHNBqFdgByYzjxufruMb0Qo5ExJH0L9KyUMAMXMvHIF9HBPO876R7pATdPuYDKdOBvVTSMiUWRAYYX0h7uDOHlhYh', '2019-10-12 02:53:49'),
('mdhrshahin@gmail.com', 'YLP6XewUJaDISNst7Gyisv3VRKR3pw8piNifU4Q3nLt4VU8bmYxzcRVerBefGYdxmyjqRacMsFPNTbKoTsqC8MVIWlDHYolkOYesHcW8biI0Ova809a2qgR6', '2019-10-12 02:55:23'),
('mdhrshahin@gmail.com', 'cV0wIO045Etr1YFRBr36HBwhJa9pEpYhYmN9kmvXmRPCvMCZV43FDSVkzdnTUvgG80bOkDqG0hFFdzqkcjTCT64YWZzvoce7rIm683h7GyuzVcb8x4H2NeZp', '2019-10-12 02:56:19'),
('mdhrshahin@gmail.com', 'LiM8PTcRqz3MxqEo0dx5iHq1yOAqzwibunMSGCYrsEt63ZhmNxBPf4ENOomauXczHYE9CcP5fxFJrtzNgvLSVHMBSxW10IDgDPboWA9uhgzsx9i4gtsXUGFZ', '2019-10-12 02:56:38'),
('mdhrshahin@gmail.com', 'tHQeqwj3qO6rRoZs9cvP4QY7Q11DOoZ59DtJD7EtLQDiqpoOHbFdtfIGx7E4M3AhZjGeCJw8ukiYcXbI8huAVVcil5K3Yg1oNQNbqy5wi6JW5wLIwsi6ZwMD', '2019-10-12 02:56:59'),
('mdhrshahin@gmail.com', 'HWKdkxhQ2m4Ue4T7IGOwemUEROzx5xPQ9VYtY7wMeLU9Q9kj8gNwx66NUmCRhxhkPFpotrkyTxsnU4N4YU2pAbHAvnW97xN9CxH2gPAN868BNzgmx2pTVfgS', '2019-10-12 02:57:55'),
('mdhrshahin@gmail.com', 'fQi1P7HCVFuIni1d59rCRrKEGUkYBCkTQDqguVSmsyRyGYn1aNkmCAB1EiGnjP5dBfWYgR2CqkzTHMBMZORaLesMYiGoZHBrOlkaZTzmGmYDbwv8MOpjZgIW', '2019-10-12 02:58:27'),
('mdhrshahin@gmail.com', 'QvFhmSjIvPhpODbMhnvJdd4Ff38bZrKmSLY4WBrIwnaDtAqHlzn90YcGTsF2y954Lgtsn5sT3RmTFk1qOZPjMUeysSodk0Pj5iFpMrCZQjBf5886TE9dPXdz', '2019-10-12 02:59:49'),
('mdhrshahin@gmail.com', 'l1LHOYY4aEMtLdibVWuh0fylRL3guLssT2QAawBUBOwVfd4mZLwRl5ACTNVaY9G9iHFLtQ500a2o8E7IY4isXLBTObOs5JLPBq6wRMm24MIX3x9BGJf5G4bF', '2019-10-12 03:01:07'),
('mdhrshahin@gmail.com', 'z4ZOUHoz8kyy4bd0ZKpYAs7TMoJT67y2qAh4C0W6BynlmhRWggNm2wf0Kr9piFBdU2arrcqBGmcbSHAibLR4XukNaNFMdGecJIehhCq2Ms8e16jTWkmeDszq', '2019-10-12 03:02:20'),
('mdhrshahin@gmail.com', 'PwPvhDv3kEEcaRO6jl5BKhbylcANLcNMc1bU77OqpYpyhPQiFM0PLW6Gw4jtPRnCwboRg0216OXhbIGwz71mRuaABuWEfC7phVFplAmW0CpNy3koSglqtufE', '2019-10-12 03:02:41'),
('mdhrshahin@gmail.com', 'unqobMG6HZC6UsivFcvah7ca9u3Mb5aEssXf0YcW7khZPzgc3GNAFTfJXRHEsTLrr8XVxPDxXXwhwU3Mg6m0BD5842ddnuiy8FCWGVZNCKhDQqoddku7md3q', '2019-10-12 03:03:41'),
('mdhrshahin@gmail.com', 'llxToyIt9QK2zyRsJT53Xk1zbHuUKgLmnSSppVG7f6MqmMjcOHzPwp7nrc4lIHiIKiU8BaAthwNpmkRl3XjO4FjzdCF4uKW1S8dUBDjWSfhxf1NxR4bVGfug', '2019-10-12 03:07:14'),
('mdhrshahin@gmail.com', '71I7RfpBIiIcWehkc1Kko8ZCYk8NskTo3Z8in6XOe1CY0BeMUEHkdMar7ALQwmlxLK6vusuflxku9uUfcWE81khGWcOfeBF8v5U7IDDkBbEA1HzhiLRfGGuC', '2019-10-12 03:07:56'),
('mdhrshahin@gmail.com', 'PjaT6EtWChcvk4VSbAJSvDE2mA3Maz9skVBts4qCxLRJJtNsQskp3qfTBXVG2WgeY5M0FcnfCvj16nKzcHAUCdHJkxVDNZJvnZOn1IfSq4jBvT1vfBDSofaa', '2019-10-12 03:09:03'),
('mdhrshahin@gmail.com', 'Q9vE6RwCWp68wvouEAxchMn4AbvRdn0nzysKT8DzjatvoY6vh8EyFafAXPW5CJD7PsM5tEZpPOusPlGolkXq5uqWQhYDl3c9Xqge37BZnSvHWAHfsuiyNbfJ', '2019-10-12 03:09:45'),
('mdhrshahin@gmail.com', 'i0fSIyutAYdf3k2v1XEaBSiS9tlOwClGGcKQDDB3XbzdLzAZV9yAbgnnjq20Ca8TiItyPjzkt8pyYMHQaDWutzIBncRQMArFdRG1713FPNcWsjb8SS7J8xpu', '2019-10-12 03:11:40'),
('mdhrshahin@gmail.com', 'DVKra7KlpiGqboYBGHZctwfHfVKk6ok6zKILH41pxhQ92wfpLeh1YilErTzD0HflsrgX1YYASuuMA1d7Au82GJe9aERiCuRUQbsMBVs9Ftu2kv6U0mXpWNOM', '2019-10-12 03:12:25'),
('mdhrshahin@gmail.com', 'FYZbt1E4hZIXqfbOnsXN3n3lXIvLjwuOkhBiXAOnaPIOpdXXytfpCg8c2rRrLkGX4h9O6C3AB39FoSsKz2a2WKkUVAOIli2atBn5KXmUPMcRpMzhKkclvMwa', '2019-10-12 03:13:13'),
('mdhrshahin@gmail.com', 'WmapUMKijEIvtYRjiJNNzvZcFuwkHJ1pmgcNw58zBr5q9vrHCSyLVXfutXRq1IDH7y0sN7hzY9AhkBHLe4zi9WkCr5whqQL4XtS5pwqERN66Pt4a7KbO4NTm', '2019-10-12 03:13:23'),
('mdhrshahin@gmail.com', 'sgsEAhn46sgaxhn0MphhT2KtwgvmsuI2bWJmNeiJ1TZ5lW4QJ8Kflciu53Hp5K8mmu7Qtna9nrIsi7tIn8FcoQ8DqaUcMvPlTOPMA1bsyoyeFkn9BpshsiLm', '2019-10-12 03:13:51'),
('mdhrshahin@gmail.com', 'XOQrzdSL3lEE7EoskUvyYBxH2XqvIVZ8LFG28iqPmHtwpSQOhEvQrTcfQSNGG5rUmtAQyfWmFS3pmgKuy6rTqr9SDTcjUN4FPP3lr7CZHAlOV4p7ZqdR3RB9', '2019-10-12 03:14:35'),
('mdhrshahin@gmail.com', 'YGdVX9hQY0vYZdCkQFOqueRRX5rEITsaGtqHbNdx7MDehTDnEpurS4Z2kspInGduursZY7yZzBNAN3KBgVrL7I3guqf8aSbOCtoeZ14yMGga88ZdEmBcAwLF', '2019-10-12 03:14:44'),
('mdhrshahin@gmail.com', 'dhi5oVZrO4DvphwmVsEseOsoCbSSjippSzedovVAyCCX9g1Dlm2VtW7zQpjIkzU51CIFiaxgpPiWZZvi7wZ4nyKklq6SrXLWfk1e6HK4e4HtskRNrJhhfWMO', '2019-10-12 03:17:03'),
('mdhrshahin@gmail.com', 'bts2dqGmqnAFeipgOP8nZbN5VNA9df9F2IJnrcHStwjyVpmG5I5msmyQd85n8kalO7BbfMARJ9Hq4eqkLxs7MeQG4Ed3xTX4HfavQjFRzcib1Bt9PmYBhFS0', '2019-10-12 03:21:58'),
('mdhrshahin@gmail.com', 't4C5u1FnyqqnFJ0xGzgL4f6Xaf1eSd8UvRd9jNV9EuGyyTJqFuEIUcd6EBhrDF9L3jIU5uifxS7j7a0bGUZR0J4xNPpBJ716oBntpfTdc5SKr2yALtHeotd8', '2019-10-12 03:22:43'),
('mdhrshahin@gmail.com', 'fK9HRXXOGxOMKTD56K44X8JvY4mFIHLSHXrbQ0kAv5ej58PKBYaMXvQK8eCRji3KVJJcXJSl6l0bIl3FJVFQRck7YOIh68MmNSfOB78XkyQsIwxX4dOjhL0N', '2019-10-12 03:22:55'),
('mdhrshahin@gmail.com', 'TQElUCvKivrTLUxstPDesDiyzlqqQOcuy915lAsaYFGfPyQ5GBfrRA058IcZMtpWhuofrmDiaA7cY9a0X7L6JqmCK8RPMfRgUYcq1VoH7tY8KQ5wlBlM0tF8', '2019-10-12 03:23:10'),
('mdhrshahin@gmail.com', 'A4QA9vli1hVIqBsQqXY6DUN6hZXA6L7b9NqfiBtQfeN5kjK4wiktuNVBlsGRECxdMnwgSYWDw1urr7LXBICyDlNB0OpQFEkUArlJ2m7KnKoERJYsEegrWqf4', '2019-10-12 03:24:37'),
('mdhrshahin@gmail.com', '5afgK0ms6KNBg3Oa1AUCBUBKRpFZ4LSbqL4HSZECfFH8jRyhvu11VmBOXExVU7pt5DCGu4GeIN8oAHbRBiFbaSipmyLR8BPJtCyq8Vjt4ADbqBwTgXnRWv5L', '2019-10-12 03:25:29'),
('mdhrshahin@gmail.com', 'm2RjJmvhLqu9izyih8LF74hkFqBoDt3eferS2ARHktOnd5w6BP3cwetov6seBxTjvJyvmte36g41DKRN3k8n2JboAj4T1KSiixkRKQxMuBRIi1FpPif7Fryq', '2019-10-12 03:28:32'),
('mdhrshahin@gmail.com', '9URU57M9ftbJexZkdKJqTmmJB8hR2Qf4Qa8n5DqcWDKAD7T64a0CK9FaSb3Voyw9MFpkMxZCVwPe34OwkbwdGvSz8bvvkpCeh86kdeMrWmjywxgS5ndXvoVc', '2019-10-12 03:30:17'),
('mdhrshahin@gmail.com', '2o0qJyHnRzYJnQZa49NzMFKlRPCpLg3q4AMDcIOBFCvJ47uoiElWPdqQan02Rz59mYGzlC4NMaiRSQ6TXxKnSyMdD4A6F1KB3miR7MwNo9QP5IN5CN2A05Mp', '2019-10-12 03:32:27'),
('mdhrshahin@gmail.com', 'Ejitm0tsQ4vscvgQTDgMTEKMv0GSriEGutLhupTNCPSehbZzAgMRiGIa2JCtnGbc0kgGVL00Go82OPAZ4V7YxNKXBEcEWaHzOKAuZDUOTDBjJ2k4VCXEWZxf', '2019-10-12 03:32:40'),
('nazmulhasan05807062@gmail.com', 'VykSsrKPN883P7er89pFGWe6I6pFCvnHeGCGFWoiKoNThO5KmjLWqz4MoF0iLqc1zR6CdKtq6x6QG7iq0FWI9ccfgMDhXGSh51TiiS1JdEtCb4LVlunhIewz', '2019-10-12 05:53:05'),
('msrobin1997@gmail.com', 'dwULVHdfLqqcG3JfXLS3TAkAtu7vnUPnws2KsCaMNDIIVTTiJw6JvIKZPtIv5vQTQ6IT5JJ8yKMkl3OXcLaTx2S0VbSzxwliNpdW2LzDhyTGXQA05CVWhWAS', '2019-10-12 05:54:53'),
('msrobin1997@gmail.com', 'LOCvMcloeeT8Icb1Zf7vWZsdykdH1OFxBFdqKvNUu6m4HPCTa9ESMyAsJGvO2gOXmMkOfZ2ikPxFndchOX6Ok6jAiskA6vpUeChdnwQZmGnoIICK3VIlmt42', '2019-10-12 05:56:04'),
('nazmulhasan05807062@gmail.com', '3gqtCgTjO62DnAlbc2xjwqGi7Fe47KrhXP54Vfby4i8vixCUb7E5bFNwy3qvxdt28RPQ4bl5u3F81DUTlmybpcL4K0lEJRpEMbzxXsmZoLsQc7AK4osj1iyI', '2019-10-12 06:34:55'),
('nazmulhasan05807062@gmail.com', '8qxa4Swbxu6HFsg7X2utLta4QH9qTmqiFXXe4n7xXCJWMW9tAO4cstQ1I1GbI92URI09jA2KMEvappkBMLeR3PRyBO2uXiezDYGvrc2HK9yO0ntscGJGJL3N', '2019-11-06 03:43:01'),
('nazmulhasan05807062@gmail.com', 'OYjZ2z8ChTlpgFpRhYk4J2zwW7Da8MBTgZA5bHmmJGmVR0Lokz6tNmTqmW7DnQEkts5npgea4TovuIRQ5MmzhJvqlm2LRbF5T3r0JXY9j7oupJiUc5Hj1cPq', '2019-11-06 03:51:41'),
('nazmulhasan05807062@gmail.com', 'cUtqLevuac05GzEkOsrZd0SF5TBVUFF5C6YRzmNUraY5PZrxbQ8U52w2k8PbjbP5vCNv7p5AcJbu1xu1zKKuthxArdQzDgsPc5ewBavCmQQ4RpGGIs1arky8', '2019-11-06 03:52:54'),
('nazmulhasan05807062@gmail.com', '923QdXgaawrWYjgT95qADmQomvU30WLitxnIoUXFXp839x7ZbKNNylR5IfdnSQkiuSh2ZExRBX77DzAyftlnxqOb0I5UE9N8k1bn3p19vroiYFc3lG7UkyJE', '2019-11-06 03:53:06');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `inventory_id`, `item_details`, `return_details`, `customer_details`, `return_type`, `total`, `return_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}i:1;a:4:{s:11:\"medicine_id\";i:5;s:13:\"medicine_name\";s:5:\"Algin\";s:12:\"medicine_qty\";i:2;s:14:\"medicine_price\";d:7;}}', '[{\"id\":5,\"medicine_details\":\"a:3:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:10;s:14:\\\"medicine_price\\\";d:3;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:5;s:13:\\\"medicine_name\\\";s:5:\\\"Algin\\\";s:12:\\\"medicine_qty\\\";i:2;s:14:\\\"medicine_price\\\";d:7;}i:2;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:15;s:14:\\\"medicine_price\\\";d:10;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"194.00\",\"discount\":\"4.00\"}]', '', 'a:1:{s:4:\"cash\";s:2:\"30\";}', '44.00', '14.00', 'deleted', '2019-03-18 06:46:33', '2019-10-19 04:01:21'),
(2, 1, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:45;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}}', '[{\"id\":1,\"medicine_details\":\"a:2:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:45;s:14:\\\"medicine_price\\\";d:10;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:10;s:14:\\\"medicine_price\\\";d:3;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:1;s:13:\\\"customer_name\\\";s:14:\\\"Bappy Mustafiz\\\";s:5:\\\"email\\\";s:17:\\\"bappy@sarosit.com\\\";s:5:\\\"phone\\\";s:11:\\\"01751817603\\\";s:7:\\\"address\\\";s:14:\\\"Uttara, Dhaka.\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2018-12-04 11:21:34\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:1;s:13:\\\"customer_name\\\";s:14:\\\"Bappy Mustafiz\\\";s:5:\\\"email\\\";s:17:\\\"bappy@sarosit.com\\\";s:5:\\\"phone\\\";s:11:\\\"01751817603\\\";s:7:\\\"address\\\";s:14:\\\"Uttara, Dhaka.\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";N;s:10:\\\"updated_at\\\";s:19:\\\"2018-12-04 11:21:34\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"480.00\",\"discount\":\"10.00\"}]', 'N;', 'a:1:{s:4:\"cash\";s:3:\"460\";}', '480.00', '20.00', 'deleted', '2019-03-18 07:32:31', '2019-10-19 04:01:28'),
(3, 5, 'a:3:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:10;s:14:\"medicine_price\";d:3;}i:1;a:4:{s:11:\"medicine_id\";i:5;s:13:\"medicine_name\";s:5:\"Algin\";s:12:\"medicine_qty\";i:2;s:14:\"medicine_price\";d:7;}i:2;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:15;s:14:\"medicine_price\";d:10;}}', '[{\"id\":5,\"medicine_details\":\"a:3:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:10;s:14:\\\"medicine_price\\\";d:3;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:5;s:13:\\\"medicine_name\\\";s:5:\\\"Algin\\\";s:12:\\\"medicine_qty\\\";i:2;s:14:\\\"medicine_price\\\";d:7;}i:2;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:15;s:14:\\\"medicine_price\\\";d:10;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"194.00\",\"discount\":\"4.00\"}]', 'N;', 'a:1:{s:4:\"cash\";i:640;}', '194.00', '14.00', 'deleted', '2019-03-18 07:47:54', '2019-10-19 04:01:37'),
(4, 8, 'a:2:{i:0;a:4:{s:11:\"medicine_id\";i:6;s:13:\"medicine_name\";s:9:\"Neurobest\";s:12:\"medicine_qty\";i:15;s:14:\"medicine_price\";d:10;}i:1;a:4:{s:11:\"medicine_id\";i:4;s:13:\"medicine_name\";s:6:\"Phinix\";s:12:\"medicine_qty\";i:11;s:14:\"medicine_price\";d:5.5;}}', '[{\"id\":8,\"medicine_details\":\"a:2:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:15;s:14:\\\"medicine_price\\\";d:10;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:4;s:13:\\\"medicine_name\\\";s:6:\\\"Phinix\\\";s:12:\\\"medicine_qty\\\";i:11;s:14:\\\"medicine_price\\\";d:5.5;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"210.50\",\"discount\":\"1.50\"}]', 'O:12:\"App\\Customer\":26:{s:11:\"\0*\0fillable\";a:5:{i:0;s:13:\"customer_name\";i:1;s:5:\"email\";i:2;s:5:\"phone\";i:3;s:7:\"address\";i:4;s:6:\"status\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:9:\"customers\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:3;s:13:\"customer_name\";s:5:\"Hasan\";s:5:\"email\";s:15:\"hasan@gmail.com\";s:5:\"phone\";s:9:\"012335556\";s:7:\"address\";s:18:\"Adam street, Dhaka\";s:6:\"status\";s:6:\"Active\";s:10:\"created_at\";s:19:\"2018-11-17 05:46:15\";s:10:\"updated_at\";s:19:\"2018-11-17 08:34:37\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}', 'a:1:{s:4:\"cash\";i:840;}', '210.50', '10.50', 'deleted', '2019-03-18 07:49:05', '2019-10-19 04:01:44'),
(5, 10, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:1;s:14:\"medicine_price\";d:3;}}', '[{\"id\":10,\"medicine_details\":\"a:1:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:1;s:14:\\\"medicine_price\\\";d:3;}}\",\"customer_details\":\"N;\",\"total\":\"3.00\",\"discount\":null}]', 'N;', 'a:1:{s:4:\"cash\";s:1:\"3\";}', '3.00', NULL, 'Active', '2019-11-06 02:51:18', '2019-11-06 02:51:18'),
(6, 5, 'a:1:{i:0;a:4:{s:11:\"medicine_id\";i:1;s:13:\"medicine_name\";s:4:\"Napa\";s:12:\"medicine_qty\";i:3;s:14:\"medicine_price\";d:3;}}', '[{\"id\":5,\"medicine_details\":\"a:3:{i:0;a:4:{s:11:\\\"medicine_id\\\";i:1;s:13:\\\"medicine_name\\\";s:4:\\\"Napa\\\";s:12:\\\"medicine_qty\\\";i:10;s:14:\\\"medicine_price\\\";d:3;}i:1;a:4:{s:11:\\\"medicine_id\\\";i:5;s:13:\\\"medicine_name\\\";s:5:\\\"Algin\\\";s:12:\\\"medicine_qty\\\";i:2;s:14:\\\"medicine_price\\\";d:7;}i:2;a:4:{s:11:\\\"medicine_id\\\";i:6;s:13:\\\"medicine_name\\\";s:9:\\\"Neurobest\\\";s:12:\\\"medicine_qty\\\";i:15;s:14:\\\"medicine_price\\\";d:10;}}\",\"customer_details\":\"O:12:\\\"App\\\\Customer\\\":26:{s:11:\\\"\\u0000*\\u0000fillable\\\";a:5:{i:0;s:13:\\\"customer_name\\\";i:1;s:5:\\\"email\\\";i:2;s:5:\\\"phone\\\";i:3;s:7:\\\"address\\\";i:4;s:6:\\\"status\\\";}s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:9:\\\"customers\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:2:\\\"id\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:8:{s:2:\\\"id\\\";i:3;s:13:\\\"customer_name\\\";s:5:\\\"Hasan\\\";s:5:\\\"email\\\";s:15:\\\"hasan@gmail.com\\\";s:5:\\\"phone\\\";s:9:\\\"012335556\\\";s:7:\\\"address\\\";s:18:\\\"Adam street, Dhaka\\\";s:6:\\\"status\\\";s:6:\\\"Active\\\";s:10:\\\"created_at\\\";s:19:\\\"2018-11-17 05:46:15\\\";s:10:\\\"updated_at\\\";s:19:\\\"2018-11-17 08:34:37\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:0:{}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:8:\\\"\\u0000*\\u0000dates\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:1;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}\",\"total\":\"194.00\",\"discount\":\"4.00\"}]', 'N;', 'a:1:{s:4:\"cash\";s:1:\"9\";}', '9.00', NULL, 'Active', '2019-11-07 20:49:20', '2019-11-07 20:49:20');

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
(4, 'Rajiur Rahman', 'rajiurrahmanraj2021@gmail.com', NULL, '$2y$10$1xWWM/Qy0IC6LVIzBY8i/uGymXOp8fhQAHh7OrcE1GzGyzjQXI4QS', 1, 'Malibagh Dhaka', '01868752464', '82234.jpg', 'Active', NULL, '2021-03-26 11:22:01', '2021-03-26 11:22:01');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
