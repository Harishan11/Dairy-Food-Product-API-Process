-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 04:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE `company_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fssai_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst_no` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_time` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`id`, `name`, `address`, `fssai_no`, `pincode`, `mobile_no`, `state`, `country`, `gst_no`, `bank_name`, `acc_no`, `ifsc`, `c_time`, `created_at`, `updated_at`) VALUES
(1, 'apple', 'cbe', '673736', '641653', '8877553366', 'Punjab', 'India', 'hdy77', 'Indian Overseas Bank', '1827272728872728', 'iob8382873737', '2022-05-10 13:50:55', '2022-05-10 08:20:55', '2022-05-10 08:20:55'),
(2, 'Ice', 'gandhipuram', 'gsys628wbsjz', '641001', '9757873497', 'Tamil Nadu', 'India', 'bzhdbd6w9wj', 'Canara Bank', '', '', '2022-05-10 17:01:11', '2022-05-10 11:31:11', '2022-05-10 11:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE `customer_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_mobile_no` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_list` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_executive` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`id`, `name`, `code`, `address`, `c_person`, `mobile_no`, `alt_mobile_no`, `gst_no`, `pan_no`, `user_email`, `location`, `route_name`, `price_list`, `s_executive`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 'rahul', '001js', 'gshsjjsjsnzozk', 'sai', '9764943494', '0', '0', '0', '0', '1', '1', 'null', '1', 1, '2022-05-10 13:54:40', NULL, '2022-05-10 08:24:40', '2022-05-10 08:24:40'),
(2, 'mohan', 'mo001', 'gzysbusnziznz', 'jack', '8734973497', '0', '0', '0', '0', '1', '1', '1', '2', 1, '2022-05-10 13:55:28', NULL, '2022-05-10 08:25:28', '2022-05-10 08:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `employee_masters`
--

CREATE TABLE `employee_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` bigint(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_pwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_login` tinyint(1) NOT NULL DEFAULT 1,
  `licenses_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime DEFAULT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_masters`
--

INSERT INTO `employee_masters` (`id`, `name`, `mobile_no`, `address`, `aadhar_no`, `pan_no`, `user_id`, `user_pwd`, `user_role`, `user_division`, `is_login`, `licenses_no`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 'vikramssss', 136561, 'dssd', '232656436186', '65456', '9643323', 'vikram123', 'user', 'ice', 0, '46354saf64', 1, '2022-05-10 12:09:53', NULL, '2022-05-10 06:39:53', '2022-05-10 06:46:00'),
(2, 'Admin', 136561, 'dssd', '232656436186', '65456', 'admin', '123', 'Admin', 'All', 1, '46354saf64', 1, '2022-05-10 12:10:58', NULL, '2022-05-10 06:40:58', '2022-05-10 11:03:29'),
(4, 'Admins', 136561, 'dssd', '232656436186', '65456', 'admins', '123', 'Admin', 'Admin', 1, '46354saf64', 1, '2022-07-13 07:52:16', NULL, '2022-07-13 02:22:16', '2022-07-13 02:23:32'),
(5, 'Adminsz', 136561, 'dssd', '232656436186', '65456', 'adminsz', '123', 'Admin', 'Admin', 1, '46354saf64', 1, NULL, NULL, '2022-07-13 02:33:03', '2022-07-13 02:33:03'),
(6, 'Admiwz', 136561, 'dssd', '232656436186', '65456', 'admisdsz', '123', 'Admin', 'Admin', 1, '46354saf64', 1, NULL, NULL, '2022-07-24 14:43:03', '2022-07-24 14:43:03'),
(7, 'Admiwerz', 136561, 'dssd', '232656436186', '65456', 'abcs', '123', 'Admin', 'Admin', 1, '46354saf64', 1, NULL, NULL, '2022-08-02 09:55:12', '2022-08-02 09:55:12');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratequoter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratehalf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratehalfquoter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`id`, `name`, `code`, `tax_id`, `ratequoter`, `ratehalf`, `ratehalfquoter`, `rate`, `image_id`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 'Ice crushed', 'ic001', '2', '25', '50', '75', '100', 1, 1, '2022-05-10 13:37:26', NULL, '2022-05-10 08:07:26', '2022-05-10 08:07:26'),
(2, 'ro ice', 'ro001', '6', '0', '25', '0', '50', 2, 1, '2022-05-10 17:29:59', NULL, '2022-05-10 11:59:59', '2022-05-10 11:59:59'),
(3, 'item3', '001', '568', '75', '50', '25', '100', 52, 1, '2022-05-10 17:58:23', NULL, '2022-05-10 12:28:23', '2022-05-10 12:28:23');

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
(3, '2021_12_07_153306_create_vehicle_master_table', 1),
(4, '2022_03_22_074459_create_pricelist_master_table', 1),
(5, '2022_03_22_083143_create_route_master_table', 1),
(6, '2022_03_22_095941_create_price_list_item_master_table', 1),
(7, '2022_03_22_102354_create_item_master_table', 1),
(8, '2022_03_22_122439_create_customer_master_table', 1),
(9, '2022_04_02_141142_create_tax_master_table', 1),
(10, '2022_04_28_153621_create_sale_order_table', 1),
(11, '2022_04_28_153642_create_sale_order_item_table', 1),
(12, '2022_05_07_112453_create_raw_dump_archive_table', 1),
(13, '2022_05_09_131919_company_master', 1),
(14, '2014_10_12_000000_create_employee_masters_table', 2),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(17, '2022_05_17_103436_create_bar_selection_table', 4),
(18, '2022_05_17_104654_create_bar_selection_master_table', 5);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(8, 'App\\Models\\employee_masters', 2, 'authToken', '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '[\"*\"]', NULL, '2022-05-10 11:03:29', '2022-05-10 11:03:29'),
(9, 'App\\Models\\employee_masters', 4, 'authToken', 'bd8f97c76a1e46ccfcfcd0bc4bf2ddfc173eff2657f7349e03e166cc4963e345', '[\"*\"]', NULL, '2022-07-13 02:23:32', '2022-07-13 02:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `pricelist_master`
--

CREATE TABLE `pricelist_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricelist_master`
--

INSERT INTO `pricelist_master` (`id`, `name`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 'ice', 1, '2022-05-10 13:51:22', '2022-05-10 13:51:22', '2022-05-10 08:21:22', '2022-05-10 08:21:22'),
(2, 'item55', 1, '2022-05-10 17:58:44', '2022-05-10 17:58:44', '2022-05-10 12:28:44', '2022-05-10 12:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `price_list_item_master`
--

CREATE TABLE `price_list_item_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratequoter` int(11) NOT NULL,
  `ratehalf` int(11) NOT NULL,
  `ratehalfquoter` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_list_item_master`
--

INSERT INTO `price_list_item_master` (`id`, `p_id`, `item_id`, `ratequoter`, `ratehalf`, `ratehalfquoter`, `rate`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 27, 50, 75, 100, 1, '2022-05-10 13:53:10', '2022-05-10 13:53:42', '2022-05-10 08:23:10', '2022-05-10 08:23:42'),
(2, '352', '14', 0, 0, 0, 5000, 1, '2022-05-10 17:59:07', NULL, '2022-05-10 12:29:07', '2022-05-10 12:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `raw_dump_archive`
--

CREATE TABLE `raw_dump_archive` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `access_token` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_dump` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_dump_archive`
--

INSERT INTO `raw_dump_archive` (`id`, `user_id`, `access_token`, `json_dump`, `request_type`, `status`, `created_at`, `updated_at`) VALUES
(13, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"1516764466\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"item_master\"}', 'push_master', 1, '2022-05-10 08:05:33', '2022-05-10 08:05:33'),
(14, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6776721428\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"pricelist_master\"}', 'push_master', 1, '2022-05-10 08:05:33', '2022-05-10 08:05:33'),
(15, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"5681472371\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"price_list_item_master\"}', 'push_master', 1, '2022-05-10 08:05:33', '2022-05-10 08:05:33'),
(16, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6371500185\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"vehicle_master\"}', 'push_master', 1, '2022-05-10 08:05:34', '2022-05-10 08:05:34'),
(17, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0351726737\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"route_master\"}', 'push_master', 1, '2022-05-10 08:05:34', '2022-05-10 08:05:34'),
(18, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0880066418\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"employee_masters\"}', 'push_master', 1, '2022-05-10 08:05:34', '2022-05-10 08:05:34'),
(19, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0824116134\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"customer_master\"}', 'push_master', 1, '2022-05-10 08:05:35', '2022-05-10 08:05:35'),
(20, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"5320534267\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"sale_order\"}', 'push_entry', 1, '2022-05-10 08:05:35', '2022-05-10 08:05:35'),
(21, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"8065386313\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"name\":\"tax 5\",\"igst\":\"5\",\"cgst\":\"2.5\",\"sgst\":\"2.5\"}]}', 'tax_data', 1, '2022-05-10 08:06:15', '2022-05-10 08:06:15'),
(22, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3572158683\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"2\",\"remote_id\":\"2\",\"name\":\"tax 9\",\"igst\":\"9\",\"cgst\":\"4.5\",\"sgst\":\"4.5\"}]}', 'tax_data', 1, '2022-05-10 08:06:45', '2022-05-10 08:06:45'),
(23, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"5883428022\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"name\":\"Ice crushed\",\"code\":\"ic001\",\"tax_id\":\"2\",\"ratequoter\":\"25\",\"ratehalf\":\"50\",\"ratehalfquoter\":\"75\",\"rate\":\"100\",\"image_id\":\"1\"}]}', 'item_data', 1, '2022-05-10 08:07:26', '2022-05-10 08:07:26'),
(24, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"5068637418\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"vehicle_no\":\"TN78 6876\",\"vehicle_name\":\"bike\",\"vehicle_insurance_no\":\"67HDH7668\",\"vehicle_diesel\":\"DIESEL\",\"vehicle_exp_date\":\"2022-05-27\",\"vehicle_ins_exp_date\":\"2022-05-27\",\"vehicle_fc_exp_date\":\"2022-05-27\",\"vehicle_fc_no\":\"Hshs7hshs\",\"vehicle_pollution_certificate_no\":\"hsus77e7\"}]}', 'vehicle_data', 1, '2022-05-10 08:09:16', '2022-05-10 08:09:16'),
(25, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"8620335748\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"vehicle_no\":\"TN78 6876\",\"vehicle_name\":\"bike\",\"vehicle_insurance_no\":\"67HDH7668\",\"vehicle_diesel\":\"DIESEL\",\"vehicle_exp_date\":\"2022-05-27\",\"vehicle_ins_exp_date\":\"2022-05-27\",\"vehicle_fc_exp_date\":\"2022-05-27\",\"vehicle_fc_no\":\"Hshs7hshs\",\"vehicle_pollution_certificate_no\":\"hsus77e7\"}]}', 'vehicle_data', 1, '2022-05-10 08:09:42', '2022-05-10 08:09:42'),
(26, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\r\n    \"token\": \"8620335748\",\r\n    \"access_token\": \"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"vehicle_no\": \"TN78 6876\",\r\n            \"vehicle_name\": \"bike\",\r\n            \"vehicle_insurance_no\": \"67HDH7668\",\r\n            \"vehicle_diesel\": \"DIESEL\",\r\n            \"vehicle_exp_date\": \"2022-05-27\",\r\n            \"vehicle_ins_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_no\": \"Hshs7hshs\",\r\n            \"vehicle_pollution_certificate_no\": \"hsus77e7\"\r\n        }\r\n    ]\r\n}', 'vehicle_data', 1, '2022-05-10 08:10:33', '2022-05-10 08:10:33'),
(27, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"2154611802\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 13:36:46\"}', 'push_master', 1, '2022-05-10 08:10:36', '2022-05-10 08:10:36'),
(28, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3344351605\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"item_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:10:36', '2022-05-10 08:10:36'),
(29, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"1651620552\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"pricelist_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:10:37', '2022-05-10 08:10:37'),
(30, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"1164142654\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"price_list_item_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:10:37', '2022-05-10 08:10:37'),
(31, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6157226812\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"vehicle_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:10:38', '2022-05-10 08:10:38'),
(32, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7135027223\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"route_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:10:38', '2022-05-10 08:10:38'),
(33, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"2287466663\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 13:35:32\"}', 'push_master', 1, '2022-05-10 08:10:38', '2022-05-10 08:10:38'),
(34, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6536860578\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"customer_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:10:38', '2022-05-10 08:10:38'),
(35, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0630012570\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 08:10:39', '2022-05-10 08:10:39'),
(36, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\r\n    \"token\": \"8620335748\",\r\n    \"access_token\": \"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"vehicle_no\": \"TN78 6876\",\r\n            \"vehicle_name\": \"bike\",\r\n            \"vehicle_insurance_no\": \"67HDH7668\",\r\n            \"vehicle_diesel\": \"DIESEL\",\r\n            \"vehicle_exp_date\": \"2022-05-27\",\r\n            \"vehicle_ins_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_no\": \"Hshs7hshs\",\r\n            \"vehicle_pollution_certificate_no\": \"hsus77e7\"\r\n        }\r\n    ]\r\n}', 'vehicle_data', 1, '2022-05-10 08:11:58', '2022-05-10 08:11:58'),
(37, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\r\n    \"token\": \"8620335748\",\r\n    \"access_token\": \"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"vehicle_no\": \"TN78 6876\",\r\n            \"vehicle_name\": \"bike\",\r\n            \"vehicle_insurance_no\": \"67HDH7668\",\r\n            \"vehicle_diesel\": \"DIESEL\",\r\n            \"vehicle_exp_date\": \"2022-05-27\",\r\n            \"vehicle_ins_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_no\": \"Hshs7hshs\",\r\n            \"vehicle_pollution_certificate_no\": \"hsus77e7\"\r\n        }\r\n    ]\r\n}', 'vehicle_data', 1, '2022-05-10 08:14:18', '2022-05-10 08:14:18'),
(38, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3600823151\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 13:36:46\"}', 'push_master', 1, '2022-05-10 08:15:35', '2022-05-10 08:15:35'),
(39, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0564050365\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 08:15:36', '2022-05-10 08:15:36'),
(40, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3831866404\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"pricelist_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:15:36', '2022-05-10 08:15:36'),
(41, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3015758184\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"price_list_item_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:15:37', '2022-05-10 08:15:37'),
(42, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"2818452206\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"vehicle_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:15:37', '2022-05-10 08:15:37'),
(43, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0747070445\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"route_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:15:37', '2022-05-10 08:15:37'),
(44, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"5788186780\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 13:35:32\"}', 'push_master', 1, '2022-05-10 08:15:38', '2022-05-10 08:15:38'),
(45, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6100488172\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"customer_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:15:38', '2022-05-10 08:15:38'),
(46, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3757020032\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 08:15:38', '2022-05-10 08:15:38'),
(47, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\r\n    \"token\": \"8620335748\",\r\n    \"access_token\": \"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"vehicle_no\": \"TN78 6876\",\r\n            \"vehicle_name\": \"bike\",\r\n            \"vehicle_insurance_no\": \"67HDH7668\",\r\n            \"vehicle_diesel\": \"DIESEL\",\r\n            \"vehicle_exp_date\": \"2022-05-27\",\r\n            \"vehicle_ins_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_no\": \"Hshs7hshs\",\r\n            \"vehicle_pollution_certificate_no\": \"hsus77e7\"\r\n        }\r\n    ]\r\n}', 'vehicle_data', 1, '2022-05-10 08:17:14', '2022-05-10 08:17:14'),
(48, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\r\n    \"token\": \"8620335748\",\r\n    \"access_token\": \"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"vehicle_no\": \"TN78 6876\",\r\n            \"vehicle_name\": \"bike\",\r\n            \"vehicle_insurance_no\": \"67HDH7668\",\r\n            \"vehicle_diesel\": \"DIESEL\",\r\n            \"vehicle_exp_date\": \"2022-05-27\",\r\n            \"vehicle_ins_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_no\": \"Hshs7hshs\",\r\n            \"vehicle_pollution_certificate_no\": \"hsus77e7\"\r\n        }\r\n    ]\r\n}', 'vehicle_data', 1, '2022-05-10 08:18:59', '2022-05-10 08:18:59'),
(49, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7054085778\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"vehicle_no\":\"TN78 6899\",\"vehicle_name\":\"car\",\"vehicle_insurance_no\":\"67HDH7668\",\"vehicle_diesel\":\"DIESEL\",\"vehicle_exp_date\":\"2022-05-27\",\"vehicle_ins_exp_date\":\"2022-05-27\",\"vehicle_fc_exp_date\":\"2022-05-27\",\"vehicle_fc_no\":\"Hshs7hshs\",\"vehicle_pollution_certificate_no\":\"hsus77e7\"}]}', 'vehicle_data', 1, '2022-05-10 08:19:23', '2022-05-10 08:19:23'),
(50, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"8858153112\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"no\":\"coimbatore \",\"route_name\":\"cbe\",\"vec_name\":\"car\",\"vec_id\":\"2\"}]}', 'route_data', 1, '2022-05-10 08:19:47', '2022-05-10 08:19:47'),
(51, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0352516223\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 13:36:46\"}', 'push_master', 1, '2022-05-10 08:20:35', '2022-05-10 08:20:35'),
(52, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6306050601\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 08:20:36', '2022-05-10 08:20:36'),
(53, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"5804284015\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"pricelist_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:20:36', '2022-05-10 08:20:36'),
(54, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0110305515\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"price_list_item_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:20:36', '2022-05-10 08:20:36'),
(55, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"8884264554\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"vehicle_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:20:37', '2022-05-10 08:20:37'),
(56, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4506875523\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"route_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:20:37', '2022-05-10 08:20:37'),
(57, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4112447538\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 13:35:32\"}', 'push_master', 1, '2022-05-10 08:20:37', '2022-05-10 08:20:37'),
(58, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4760486245\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"customer_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:20:37', '2022-05-10 08:20:37'),
(59, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7331848151\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 08:20:38', '2022-05-10 08:20:38'),
(60, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4707072357\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"name\":\"hari\",\"address\":\"cbe\",\"pincode\":\"641653\",\"fssai_no\":\"673736\",\"gst_no\":\"hdy77\",\"mobile_no\":\"8877553366\",\"state\":\"Punjab\",\"country\":\"India\",\"bank_name\":\"Indian Overseas Bank\",\"acc_no\":\"1827272728872728\",\"ifsc\":\"iob8382873737\"}]}', 'company_data', 1, '2022-05-10 08:20:55', '2022-05-10 08:20:55'),
(61, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7021383640\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"name\":\"ice\"}]}', 'pricelist_data', 1, '2022-05-10 08:21:22', '2022-05-10 08:21:22'),
(62, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"8088306863\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"p_id\":\"1\",\"item_id\":\"1\",\"ratequoter\":\"25\",\"ratehalf\":\"50\",\"ratehalfquoter\":\"75\",\"rate\":\"100\"}]}', 'price_list_item_data', 1, '2022-05-10 08:23:10', '2022-05-10 08:23:10'),
(63, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6345710007\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"2\",\"remote_id\":\"1\",\"p_id\":\"1\",\"item_id\":\"1\",\"ratequoter\":\"27\",\"ratehalf\":\"50\",\"ratehalfquoter\":\"75\",\"rate\":\"100\"}]}', 'price_list_item_data', 1, '2022-05-10 08:23:42', '2022-05-10 08:23:42'),
(64, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6408052246\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"name\":\"rahul\",\"code\":\"001js\",\"address\":\"gshsjjsjsnzozk\",\"c_person\":\"sai\",\"mobile_no\":\"9764943494\",\"alt_mobile_no\":\"\",\"gst_no\":\"\",\"pan_no\":\"\",\"user_email\":\"\",\"location\":\"\",\"route_name\":\"1\",\"price_list\":\"null\",\"s_executive\":\"1\"}]}', 'customer_data', 1, '2022-05-10 08:24:30', '2022-05-10 08:24:30'),
(65, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6662152340\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"1\",\"name\":\"rahul\",\"code\":\"001js\",\"address\":\"gshsjjsjsnzozk\",\"c_person\":\"sai\",\"mobile_no\":\"9764943494\",\"alt_mobile_no\":\"\",\"gst_no\":\"\",\"pan_no\":\"\",\"user_email\":\"\",\"location\":\"\",\"route_name\":\"1\",\"price_list\":\"null\",\"s_executive\":\"1\"}]}', 'customer_data', 1, '2022-05-10 08:24:40', '2022-05-10 08:24:40'),
(66, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3582336367\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"params\":[{\"id\":\"2\",\"name\":\"mohan\",\"code\":\"mo001\",\"address\":\"gzysbusnziznz\",\"c_person\":\"jack\",\"mobile_no\":\"8734973497\",\"alt_mobile_no\":\"\",\"gst_no\":\"\",\"pan_no\":\"\",\"user_email\":\"\",\"location\":\"\",\"route_name\":\"1\",\"price_list\":\"1\",\"s_executive\":\"2\"}]}', 'customer_data', 1, '2022-05-10 08:25:28', '2022-05-10 08:25:28'),
(67, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3428102085\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 13:36:46\"}', 'push_master', 1, '2022-05-10 08:25:35', '2022-05-10 08:25:35'),
(68, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"1458030306\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 08:25:36', '2022-05-10 08:25:36'),
(69, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3834263635\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"pricelist_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:25:36', '2022-05-10 08:25:36'),
(70, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4632086443\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:43\"}', 'push_master', 1, '2022-05-10 08:25:37', '2022-05-10 08:25:37'),
(71, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7162320188\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 08:25:38', '2022-05-10 08:25:38'),
(72, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0800464284\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 08:25:38', '2022-05-10 08:25:38'),
(73, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"1187303208\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 13:35:32\"}', 'push_master', 1, '2022-05-10 08:25:39', '2022-05-10 08:25:39'),
(74, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7642560418\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"customer_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 08:25:39', '2022-05-10 08:25:39'),
(75, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"2436455840\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 08:25:39', '2022-05-10 08:25:39'),
(76, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\r\n    \"token\": \"3658381133\",\r\n    \"access_token\": \"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\r\n    \"table\": \"tax_master\",\r\n    \"remote_id\": \"2\",\r\n    \"type\": \"deactivate\"\r\n}', 'UpdateMasterStatus', 1, '2022-05-10 08:29:02', '2022-05-10 08:29:02'),
(77, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7267727550\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 09:40:49', '2022-05-10 09:40:49'),
(78, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4174760546\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 09:40:50', '2022-05-10 09:40:50'),
(79, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4610814615\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:43\"}', 'push_master', 1, '2022-05-10 09:40:50', '2022-05-10 09:40:50'),
(80, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4122701837\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 09:40:51', '2022-05-10 09:40:51'),
(81, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"2275863817\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 09:40:52', '2022-05-10 09:40:52'),
(82, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7237544857\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 13:35:32\"}', 'push_master', 1, '2022-05-10 09:40:52', '2022-05-10 09:40:52'),
(83, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"6424834734\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 09:40:53', '2022-05-10 09:40:53'),
(84, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4384816073\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 09:40:54', '2022-05-10 09:40:54'),
(85, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"7436506254\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 13:36:46\"}', 'push_master', 1, '2022-05-10 09:53:21', '2022-05-10 09:53:21'),
(86, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"4027688278\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 09:53:22', '2022-05-10 09:53:22'),
(87, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3814313230\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 09:53:22', '2022-05-10 09:53:22'),
(88, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"8086865613\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:43\"}', 'push_master', 1, '2022-05-10 09:53:22', '2022-05-10 09:53:22'),
(89, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3458235322\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 09:53:23', '2022-05-10 09:53:23'),
(90, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3213685711\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 09:53:23', '2022-05-10 09:53:23'),
(91, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"8410002786\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 13:35:32\"}', 'push_master', 1, '2022-05-10 09:53:23', '2022-05-10 09:53:23'),
(92, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"3513548436\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 09:53:24', '2022-05-10 09:53:24'),
(93, 2, '56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47', '{\"token\":\"0624331638\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"56e0ef3daff49336c74afa5aeb997d24c2412f071e29832bde7526c3dc209f47\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 09:53:24', '2022-05-10 09:53:24'),
(94, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6836440624\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\"}', 'push_master', 1, '2022-05-10 09:56:24', '2022-05-10 09:56:24'),
(95, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1273338754\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\"}', 'push_master', 1, '2022-05-10 09:56:24', '2022-05-10 09:56:24'),
(96, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0460032505\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\"}', 'push_master', 1, '2022-05-10 09:56:25', '2022-05-10 09:56:25'),
(97, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4742562710\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\"}', 'push_master', 1, '2022-05-10 09:56:25', '2022-05-10 09:56:25'),
(98, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5544018582\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\"}', 'push_master', 1, '2022-05-10 09:56:25', '2022-05-10 09:56:25'),
(99, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0026243301\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\"}', 'push_master', 1, '2022-05-10 09:56:26', '2022-05-10 09:56:26'),
(100, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1511101246\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\"}', 'push_master', 1, '2022-05-10 09:56:26', '2022-05-10 09:56:26'),
(101, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2848758726\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\"}', 'push_entry', 1, '2022-05-10 09:56:26', '2022-05-10 09:56:26'),
(102, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7151870610\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 10:01:10', '2022-05-10 10:01:10'),
(103, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3705483080\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:01:10', '2022-05-10 10:01:10'),
(104, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4760750278\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:01:10', '2022-05-10 10:01:10'),
(105, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8404315451\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:01:11', '2022-05-10 10:01:11'),
(106, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7318260863\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:01:11', '2022-05-10 10:01:11'),
(107, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4016667414\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:01:11', '2022-05-10 10:01:11'),
(108, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7176820311\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:01:12', '2022-05-10 10:01:12'),
(109, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3581507855\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:01:12', '2022-05-10 10:01:12'),
(110, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0256737336\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 10:01:12', '2022-05-10 10:01:12'),
(111, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0446868224\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 13:59:02\"}', 'push_master', 1, '2022-05-10 10:01:27', '2022-05-10 10:01:27'),
(112, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8810076823\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:01:27', '2022-05-10 10:01:27'),
(113, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0372151368\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:01:27', '2022-05-10 10:01:27'),
(114, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1476670245\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:01:27', '2022-05-10 10:01:27'),
(115, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5613232466\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:01:28', '2022-05-10 10:01:28'),
(116, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0188636276\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:01:28', '2022-05-10 10:01:28'),
(117, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2244183761\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:01:28', '2022-05-10 10:01:28'),
(118, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2205800522\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:01:28', '2022-05-10 10:01:28'),
(119, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0877445583\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 10:01:29', '2022-05-10 10:01:29'),
(120, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0486003135\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 13:59:02\"}', 'push_master', 1, '2022-05-10 10:01:58', '2022-05-10 10:01:58'),
(121, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4665850670\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:01:59', '2022-05-10 10:01:59'),
(122, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2113308000\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:01:59', '2022-05-10 10:01:59'),
(123, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6046480864\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:01:59', '2022-05-10 10:01:59'),
(124, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0858575774\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:02:00', '2022-05-10 10:02:00'),
(125, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2384121023\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:02:00', '2022-05-10 10:02:00'),
(126, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8325838761\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:02:00', '2022-05-10 10:02:00'),
(127, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0041048145\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:02:01', '2022-05-10 10:02:01'),
(128, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3426516568\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 10:02:01', '2022-05-10 10:02:01'),
(129, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2652812215\",\"table\":\"tax_master\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"remote_id\":\"2\",\"type\":\"activate\"}', 'UpdateMasterStatus', 1, '2022-05-10 10:05:50', '2022-05-10 10:05:50'),
(130, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0247225811\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:06:27', '2022-05-10 10:06:27'),
(131, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7814676485\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:06:27', '2022-05-10 10:06:27'),
(132, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0805546443\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:06:27', '2022-05-10 10:06:27'),
(133, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4647254378\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:06:28', '2022-05-10 10:06:28'),
(134, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1685611136\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:06:28', '2022-05-10 10:06:28'),
(135, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8315124513\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:06:28', '2022-05-10 10:06:28'),
(136, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2673802553\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:06:29', '2022-05-10 10:06:29'),
(137, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3810826005\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:06:29', '2022-05-10 10:06:29');
INSERT INTO `raw_dump_archive` (`id`, `user_id`, `access_token`, `json_dump`, `request_type`, `status`, `created_at`, `updated_at`) VALUES
(138, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3712827607\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 10:06:29', '2022-05-10 10:06:29'),
(139, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2538714228\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"params\":[{\"id\":8,\"party_id\":\"0\",\"party_name\":\"cash\",\"user_id\":\"2\",\"tot_qty\":\"3.0\",\"cgst_amt\":\"12.39\",\"sgst_amt\":\"12.39\",\"igst_amt\":\"27.00\",\"del_date\":\"\",\"del_location\":\"\",\"net_amt\":\"275.23\",\"gross_amt\":\"300\",\"order_type\":\"2\",\"bill_date\":\"2022-05-10 15:31:48\",\"order_sub\":[{\"id\":8,\"item_name\":\"Ice crushed\",\"item_id\":\"1\",\"item_qty\":\"3.0\",\"rate\":\"100\",\"tot_amt\":\"300.0\",\"tax_amt\":\"324.78\",\"tax_value\":\"4.5\",\"cgst\":\"4.5\",\"sgst\":\"4.5\",\"igst\":\"9\"}]}]}', 'sale_order_data', 1, '2022-05-10 10:06:30', '2022-05-10 10:06:30'),
(140, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4445502254\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:07:24', '2022-05-10 10:07:24'),
(141, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1688747334\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:07:24', '2022-05-10 10:07:24'),
(142, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3080353434\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:07:24', '2022-05-10 10:07:24'),
(143, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2485488076\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:07:24', '2022-05-10 10:07:24'),
(144, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6567748140\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:07:25', '2022-05-10 10:07:25'),
(145, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6450577204\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:07:25', '2022-05-10 10:07:25'),
(146, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8256826855\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:07:25', '2022-05-10 10:07:25'),
(147, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2248162837\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:07:26', '2022-05-10 10:07:26'),
(148, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5836252580\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 10:07:26', '2022-05-10 10:07:26'),
(149, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6726585057\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"params\":[{\"id\":8,\"party_id\":\"0\",\"party_name\":\"cash\",\"user_id\":\"2\",\"tot_qty\":\"3.0\",\"cgst_amt\":\"12.39\",\"sgst_amt\":\"12.39\",\"igst_amt\":\"27.00\",\"del_date\":\"\",\"del_location\":\"\",\"net_amt\":\"275.23\",\"gross_amt\":\"300\",\"order_type\":\"2\",\"bill_date\":\"2022-05-10 15:31:48\",\"order_sub\":[{\"id\":8,\"item_name\":\"Ice crushed\",\"item_id\":\"1\",\"item_qty\":\"3.0\",\"rate\":\"100\",\"tot_amt\":\"300.0\",\"tax_amt\":\"324.78\",\"tax_value\":\"4.5\",\"cgst\":\"4.5\",\"sgst\":\"4.5\",\"igst\":\"9\"}]}]}', 'sale_order_data', 1, '2022-05-10 10:07:26', '2022-05-10 10:07:26'),
(150, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"token\": \"6726585057\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": 8,\r\n            \"party_id\": \"0\",\r\n            \"party_name\": \"cash\",\r\n            \"user_id\": \"2\",\r\n            \"tot_qty\": \"3.0\",\r\n            \"cgst_amt\": \"12.39\",\r\n            \"sgst_amt\": \"12.39\",\r\n            \"igst_amt\": \"27.00\",\r\n            \"del_date\": \"\",\r\n            \"del_location\": \"\",\r\n            \"net_amt\": \"275.23\",\r\n            \"gross_amt\": \"300\",\r\n            \"order_type\": \"2\",\r\n            \"bill_date\": \"2022-05-10 15:31:48\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": 8,\r\n                    \"item_name\": \"Ice crushed\",\r\n                    \"item_id\": \"1\",\r\n                    \"item_qty\": \"3.0\",\r\n                    \"rate\": \"100\",\r\n                    \"tot_amt\": \"300.0\",\r\n                    \"tax_amt\": \"324.78\",\r\n                    \"tax_value\": \"4.5\",\r\n                    \"cgst\": \"4.5\",\r\n                    \"sgst\": \"4.5\",\r\n                    \"igst\": \"9\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:07:43', '2022-05-10 10:07:43'),
(151, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1455730648\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:09:49', '2022-05-10 10:09:49'),
(152, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1684670865\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:09:49', '2022-05-10 10:09:49'),
(153, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8674062436\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:09:49', '2022-05-10 10:09:49'),
(154, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1018757645\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:09:50', '2022-05-10 10:09:50'),
(155, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8840550805\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:09:50', '2022-05-10 10:09:50'),
(156, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0322064850\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:09:51', '2022-05-10 10:09:51'),
(157, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4566333318\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:09:51', '2022-05-10 10:09:51'),
(158, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3382853564\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:09:51', '2022-05-10 10:09:51'),
(159, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5877611084\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 10:09:52', '2022-05-10 10:09:52'),
(160, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4620458108\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"params\":[{\"id\":8,\"party_id\":\"0\",\"party_name\":\"cash\",\"user_id\":\"2\",\"tot_qty\":\"3.0\",\"cgst_amt\":\"12.39\",\"sgst_amt\":\"12.39\",\"igst_amt\":\"27.00\",\"del_date\":\"\",\"del_location\":\"\",\"net_amt\":\"275.23\",\"gross_amt\":\"300\",\"order_type\":\"2\",\"bill_date\":\"2022-05-10 15:31:48\",\"order_sub\":[{\"id\":8,\"item_name\":\"Ice crushed\",\"item_id\":\"1\",\"item_qty\":\"3.0\",\"rate\":\"100\",\"tot_amt\":\"300.0\",\"tax_amt\":\"324.78\",\"tax_value\":\"4.5\",\"cgst\":\"4.5\",\"sgst\":\"4.5\",\"igst\":\"9\"}]}]}', 'sale_order_data', 1, '2022-05-10 10:09:52', '2022-05-10 10:09:52'),
(161, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"token\": \"6726585057\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": 8,\r\n            \"party_id\": \"0\",\r\n            \"party_name\": \"cash\",\r\n            \"user_id\": \"2\",\r\n            \"tot_qty\": \"3.0\",\r\n            \"cgst_amt\": \"12.39\",\r\n            \"sgst_amt\": \"12.39\",\r\n            \"igst_amt\": \"27.00\",\r\n            \"del_date\": \"\",\r\n            \"del_location\": \"\",\r\n            \"net_amt\": \"275.23\",\r\n            \"gross_amt\": \"300\",\r\n            \"order_type\": \"2\",\r\n            \"bill_date\": \"2022-05-10 15:31:48\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": 8,\r\n                    \"item_name\": \"Ice crushed\",\r\n                    \"item_id\": \"1\",\r\n                    \"item_qty\": \"3.0\",\r\n                    \"rate\": \"100\",\r\n                    \"tot_amt\": \"300.0\",\r\n                    \"tax_amt\": \"324.78\",\r\n                    \"tax_value\": \"4.5\",\r\n                    \"cgst\": \"4.5\",\r\n                    \"sgst\": \"4.5\",\r\n                    \"igst\": \"9\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:10:02', '2022-05-10 10:10:02'),
(162, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5656338116\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:10:59', '2022-05-10 10:10:59'),
(163, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3757137650\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:10:59', '2022-05-10 10:10:59'),
(164, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4640750451\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:10:59', '2022-05-10 10:10:59'),
(165, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6120428430\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:11:00', '2022-05-10 10:11:00'),
(166, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4703117118\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:11:00', '2022-05-10 10:11:00'),
(167, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4060874876\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:11:00', '2022-05-10 10:11:00'),
(168, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3338226031\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:11:01', '2022-05-10 10:11:01'),
(169, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3846532225\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:11:01', '2022-05-10 10:11:01'),
(170, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8668351504\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 10:11:02', '2022-05-10 10:11:02'),
(171, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5807768808\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"params\":[{\"id\":8,\"party_id\":\"0\",\"party_name\":\"cash\",\"user_id\":\"2\",\"tot_qty\":\"3.0\",\"cgst_amt\":\"12.39\",\"sgst_amt\":\"12.39\",\"igst_amt\":\"27.00\",\"del_date\":\"\",\"del_location\":\"\",\"net_amt\":\"275.23\",\"gross_amt\":\"300\",\"order_type\":\"2\",\"bill_date\":\"2022-05-10 15:31:48\",\"order_sub\":[{\"id\":8,\"item_name\":\"Ice crushed\",\"item_id\":\"1\",\"item_qty\":\"3.0\",\"rate\":\"100\",\"tot_amt\":\"300.0\",\"tax_amt\":\"324.78\",\"tax_value\":\"4.5\",\"cgst\":\"4.5\",\"sgst\":\"4.5\",\"igst\":\"9\"}]}]}', 'sale_order_data', 1, '2022-05-10 10:11:02', '2022-05-10 10:11:02'),
(172, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3411044238\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:11:27', '2022-05-10 10:11:27'),
(173, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2865262377\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:11:27', '2022-05-10 10:11:27'),
(174, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6520420822\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:11:27', '2022-05-10 10:11:27'),
(175, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2333234103\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:11:27', '2022-05-10 10:11:27'),
(176, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6530400352\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:11:28', '2022-05-10 10:11:28'),
(177, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6587873158\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:11:28', '2022-05-10 10:11:28'),
(178, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4148574763\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:11:28', '2022-05-10 10:11:28'),
(179, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8441625513\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:11:28', '2022-05-10 10:11:28'),
(180, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5207321240\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:04\"}', 'push_entry', 1, '2022-05-10 10:11:29', '2022-05-10 10:11:29'),
(181, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5142471252\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:11:54', '2022-05-10 10:11:54'),
(182, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4803784357\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:11:54', '2022-05-10 10:11:54'),
(183, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7140822643\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:11:55', '2022-05-10 10:11:55'),
(184, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5183611478\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:11:55', '2022-05-10 10:11:55'),
(185, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5151421286\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:11:55', '2022-05-10 10:11:55'),
(186, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3530547238\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:11:55', '2022-05-10 10:11:55'),
(187, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0212720235\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:11:56', '2022-05-10 10:11:56'),
(188, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4674853183\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:11:56', '2022-05-10 10:11:56'),
(189, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0681423831\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:04\"}', 'push_entry', 1, '2022-05-10 10:11:56', '2022-05-10 10:11:56'),
(190, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8524548288\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"params\":[{\"id\":10,\"party_id\":\"0\",\"party_name\":\"cash\",\"user_id\":\"2\",\"tot_qty\":\"6.0\",\"cgst_amt\":\"24.77\",\"sgst_amt\":\"24.77\",\"igst_amt\":\"54.00\",\"del_date\":\"\",\"del_location\":\"\",\"net_amt\":\"550.46\",\"gross_amt\":\"600\",\"order_type\":\"2\",\"bill_date\":\"2022-05-10 15:41:47\",\"order_sub\":[{\"id\":9,\"item_name\":\"Ice crushed\",\"item_id\":\"1\",\"item_qty\":\"6.0\",\"rate\":\"100\",\"tot_amt\":\"600.0\",\"tax_amt\":\"649.54\",\"tax_value\":\"4.5\",\"cgst\":\"4.5\",\"sgst\":\"4.5\",\"igst\":\"9\"}]}]}', 'sale_order_data', 1, '2022-05-10 10:11:57', '2022-05-10 10:11:57'),
(191, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0168087040\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:16:27', '2022-05-10 10:16:27'),
(192, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3272574264\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:16:27', '2022-05-10 10:16:27'),
(193, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4887537620\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:16:28', '2022-05-10 10:16:28'),
(194, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3387638036\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:16:28', '2022-05-10 10:16:28'),
(195, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6657414057\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:16:29', '2022-05-10 10:16:29'),
(196, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2187762224\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:16:29', '2022-05-10 10:16:29'),
(197, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4417573387\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:16:30', '2022-05-10 10:16:30'),
(198, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3105631380\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:16:30', '2022-05-10 10:16:30'),
(199, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3632226233\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:59\"}', 'push_entry', 1, '2022-05-10 10:16:31', '2022-05-10 10:16:31'),
(200, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7228540653\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:21:27', '2022-05-10 10:21:27'),
(201, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2044301218\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:21:28', '2022-05-10 10:21:28'),
(202, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3210202482\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:21:28', '2022-05-10 10:21:28'),
(203, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0052000067\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:21:29', '2022-05-10 10:21:29'),
(204, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3073762856\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:21:29', '2022-05-10 10:21:29'),
(205, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1850766631\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:21:30', '2022-05-10 10:21:30'),
(206, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4682257214\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:21:30', '2022-05-10 10:21:30'),
(207, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1621065564\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:21:31', '2022-05-10 10:21:31'),
(208, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6832125168\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:59\"}', 'push_entry', 1, '2022-05-10 10:21:31', '2022-05-10 10:21:31'),
(209, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"token\": \"2471103181\",\r\n    \"api_key\": \"0088d7c2d68eaf9d33da24e4c2bd2b70\",\r\n    \"table\": \"sale_order\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"from_date\": \"2022-05-10 00:00\",\r\n    \"to_date\": \"2022-05-10 23:59\",\r\n    \"order_type\": \"0\"\r\n}', 'push_entry', 1, '2022-05-10 10:31:39', '2022-05-10 10:31:39'),
(210, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0440278751\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 10:31:46', '2022-05-10 10:31:46'),
(211, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8148262362\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"2\"}', 'push_entry', 1, '2022-05-10 10:32:11', '2022-05-10 10:32:11'),
(212, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4274775467\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:35:08', '2022-05-10 10:35:08'),
(213, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5155632301\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:35:09', '2022-05-10 10:35:09'),
(214, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0182078568\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:35:09', '2022-05-10 10:35:09'),
(215, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5116548052\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:35:10', '2022-05-10 10:35:10'),
(216, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4405657013\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:35:10', '2022-05-10 10:35:10'),
(217, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6276410418\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:35:11', '2022-05-10 10:35:11'),
(218, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7101456011\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:35:11', '2022-05-10 10:35:11'),
(219, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1188435554\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:35:12', '2022-05-10 10:35:12'),
(220, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5628348761\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:59\"}', 'push_entry', 1, '2022-05-10 10:35:12', '2022-05-10 10:35:12'),
(221, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"ram\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"25-03-2019\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"abi\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                },\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"praveen\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"5\",\r\n                    \"rate\": \"5000\",\r\n                    \"tot_amt\": \"50\",\r\n                    \"tax_amt\": \"600\",\r\n                    \"tax_value\": \"542\",\r\n                    \"cgst\": \"500\",\r\n                    \"sgst\": \"500\",\r\n                    \"igst\": \"1000\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:36:10', '2022-05-10 10:36:10'),
(222, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"ram\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"25-03-2019\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"abi\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:36:53', '2022-05-10 10:36:53'),
(223, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"ramkumar\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"26-03-2019\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"vimal\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:37:27', '2022-05-10 10:37:27'),
(224, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5086151618\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 10:37:40', '2022-05-10 10:37:40'),
(225, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"kiram\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"29-03-2022\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"vimal\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:38:08', '2022-05-10 10:38:08'),
(226, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8502120214\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:40:08', '2022-05-10 10:40:08'),
(227, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5265284701\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:40:09', '2022-05-10 10:40:09'),
(228, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4888538216\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:40:09', '2022-05-10 10:40:09'),
(229, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3433252061\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:40:10', '2022-05-10 10:40:10'),
(230, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3431875576\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:40:10', '2022-05-10 10:40:10'),
(231, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3651203207\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:40:11', '2022-05-10 10:40:11'),
(232, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6646460758\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:40:11', '2022-05-10 10:40:11'),
(233, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5418830102\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:40:12', '2022-05-10 10:40:12'),
(234, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2255730106\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:59\"}', 'push_entry', 1, '2022-05-10 10:40:12', '2022-05-10 10:40:12'),
(235, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4780368301\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 10:40:58', '2022-05-10 10:40:58'),
(236, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"kiram\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"29-03-2022\",\r\n            \"bill_date\" :\"30-03-2022\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"vimal\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:41:10', '2022-05-10 10:41:10'),
(237, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"rajesh\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"29-03-2022\",\r\n            \"bill_date\" :\"30-03-2022\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"suresh\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:41:32', '2022-05-10 10:41:32');
INSERT INTO `raw_dump_archive` (`id`, `user_id`, `access_token`, `json_dump`, `request_type`, `status`, `created_at`, `updated_at`) VALUES
(238, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"guna\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"29-03-2022\",\r\n            \"bill_date\" :\"30-03-2022\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"haripriya\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:41:47', '2022-05-10 10:41:47'),
(239, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"party_id\": \"1\",\r\n            \"party_name\": \"abitha\",\r\n            \"user_id\": \"5\",\r\n            \"tot_qty\": \"5\",\r\n            \"cgst_amt\": \"25\",\r\n            \"sgst_amt\": \"25\",\r\n            \"igst_amt\": \"50\",\r\n            \"del_date\": \"29-03-2022\",\r\n            \"bill_date\" :\"30-03-2022\",\r\n            \"del_location\": \"cbe\",\r\n            \"net_amt\": \"360\",\r\n            \"gross_amt\": \"3700\",\r\n            \"order_type\": \"all\",\r\n            \"order_sub\": [\r\n                {\r\n                    \"id\": \"1\",\r\n                    \"item_name\": \"nagu\",\r\n                    \"item_id\": \"634\",\r\n                    \"item_qty\": \"54\",\r\n                    \"rate\": \"542\",\r\n                    \"tot_amt\": \"500\",\r\n                    \"tax_amt\": \"655\",\r\n                    \"tax_value\": \"54\",\r\n                    \"cgst\": \"50\",\r\n                    \"sgst\": \"50\",\r\n                    \"igst\": \"100\"\r\n                }\r\n            ]\r\n        }\r\n    ]\r\n}', 'sale_order_data', 1, '2022-05-10 10:42:11', '2022-05-10 10:42:11'),
(240, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4301340568\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 10:42:54', '2022-05-10 10:42:54'),
(241, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0585417782\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 10:44:55', '2022-05-10 10:44:55'),
(242, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3235123785\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:45:08', '2022-05-10 10:45:08'),
(243, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3248014288\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:45:09', '2022-05-10 10:45:09'),
(244, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2582448646\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:45:09', '2022-05-10 10:45:09'),
(245, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5828866834\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:45:10', '2022-05-10 10:45:10'),
(246, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7748448015\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:45:10', '2022-05-10 10:45:10'),
(247, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2135604508\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:45:11', '2022-05-10 10:45:11'),
(248, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0012705482\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:45:11', '2022-05-10 10:45:11'),
(249, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5263777566\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:45:11', '2022-05-10 10:45:11'),
(250, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0153750285\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:59\"}', 'push_entry', 1, '2022-05-10 10:45:12', '2022-05-10 10:45:12'),
(251, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4328560703\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 10:45:55', '2022-05-10 10:45:55'),
(252, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1453444121\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 10:47:18', '2022-05-10 10:47:18'),
(253, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8214155521\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:50:08', '2022-05-10 10:50:08'),
(254, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1888105683\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:50:09', '2022-05-10 10:50:09'),
(255, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"0226183357\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:50:10', '2022-05-10 10:50:10'),
(256, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5075178221\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:50:10', '2022-05-10 10:50:10'),
(257, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6050375813\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:50:11', '2022-05-10 10:50:11'),
(258, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"1681361702\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:50:11', '2022-05-10 10:50:11'),
(259, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8848241348\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:50:12', '2022-05-10 10:50:12'),
(260, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"6472820670\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:50:12', '2022-05-10 10:50:12'),
(261, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4183017547\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:59\"}', 'push_entry', 1, '2022-05-10 10:50:13', '2022-05-10 10:50:13'),
(262, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"7170550207\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:52\"}', 'push_master', 1, '2022-05-10 10:58:37', '2022-05-10 10:58:37'),
(263, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"5203681448\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 10:58:38', '2022-05-10 10:58:38'),
(264, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3011045867\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 10:58:38', '2022-05-10 10:58:38'),
(265, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"3676450364\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 10:58:38', '2022-05-10 10:58:38'),
(266, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"8118836838\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 10:58:39', '2022-05-10 10:58:39'),
(267, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4315278848\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 10:58:39', '2022-05-10 10:58:39'),
(268, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4636725567\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 15:26:22\"}', 'push_master', 1, '2022-05-10 10:58:40', '2022-05-10 10:58:40'),
(269, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"4488513261\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 10:58:40', '2022-05-10 10:58:40'),
(270, 2, '073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2', '{\"token\":\"2860577357\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"073c6d4f071ce28a447a9f10c2e9600ab548e9fb9deaf0967152a6cbbb5f84b2\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 15:41:59\"}', 'push_entry', 1, '2022-05-10 10:58:41', '2022-05-10 10:58:41'),
(271, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"1307755538\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"item_master\"}', 'push_master', 1, '2022-05-10 11:01:10', '2022-05-10 11:01:10'),
(272, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"6402512346\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"pricelist_master\"}', 'push_master', 1, '2022-05-10 11:01:11', '2022-05-10 11:01:11'),
(273, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"1338437266\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"price_list_item_master\"}', 'push_master', 1, '2022-05-10 11:01:11', '2022-05-10 11:01:11'),
(274, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"1861524448\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"vehicle_master\"}', 'push_master', 1, '2022-05-10 11:01:12', '2022-05-10 11:01:12'),
(275, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"0580178805\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"route_master\"}', 'push_master', 1, '2022-05-10 11:01:12', '2022-05-10 11:01:12'),
(276, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"5122837021\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"employee_masters\"}', 'push_master', 1, '2022-05-10 11:01:13', '2022-05-10 11:01:13'),
(277, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"7205651438\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"customer_master\"}', 'push_master', 1, '2022-05-10 11:01:13', '2022-05-10 11:01:13'),
(278, 2, 'de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc', '{\"token\":\"8662881015\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"de54108dfb8536bb06566ed0ad7962239afd46ccbeefe8302d9360d97eed4fbc\",\"table\":\"sale_order\"}', 'push_entry', 1, '2022-05-10 11:01:13', '2022-05-10 11:01:13'),
(279, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7256253675\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\"}', 'push_master', 1, '2022-05-10 11:03:31', '2022-05-10 11:03:31'),
(280, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8131862460\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\"}', 'push_master', 1, '2022-05-10 11:03:31', '2022-05-10 11:03:31'),
(281, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3278066578\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\"}', 'push_master', 1, '2022-05-10 11:03:32', '2022-05-10 11:03:32'),
(282, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7325771273\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\"}', 'push_master', 1, '2022-05-10 11:03:32', '2022-05-10 11:03:32'),
(283, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7641334703\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\"}', 'push_master', 1, '2022-05-10 11:03:33', '2022-05-10 11:03:33'),
(284, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5425128652\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\"}', 'push_master', 1, '2022-05-10 11:03:33', '2022-05-10 11:03:33'),
(285, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6286280881\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\"}', 'push_master', 1, '2022-05-10 11:03:34', '2022-05-10 11:03:34'),
(286, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8067072761\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\"}', 'push_entry', 1, '2022-05-10 11:03:34', '2022-05-10 11:03:34'),
(287, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6166426865\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:04:56', '2022-05-10 11:04:56'),
(288, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3037686145\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"2\"}', 'push_entry', 1, '2022-05-10 11:05:04', '2022-05-10 11:05:04'),
(289, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4016428702\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 11:09:50', '2022-05-10 11:09:50'),
(290, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2700152848\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:09:51', '2022-05-10 11:09:51'),
(291, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7612718655\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:09:51', '2022-05-10 11:09:51'),
(292, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1603252506\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:09:52', '2022-05-10 11:09:52'),
(293, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3267144557\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:09:52', '2022-05-10 11:09:52'),
(294, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4607102443\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:09:53', '2022-05-10 11:09:53'),
(295, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0527553204\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:09:53', '2022-05-10 11:09:53'),
(296, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2010676661\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:09:54', '2022-05-10 11:09:54'),
(297, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8871132818\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 11:09:54', '2022-05-10 11:09:54'),
(298, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7316216378\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:14:50', '2022-05-10 11:14:50'),
(299, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6466637685\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:14:50', '2022-05-10 11:14:50'),
(300, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3356344318\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:14:51', '2022-05-10 11:14:51'),
(301, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5043744218\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:14:51', '2022-05-10 11:14:51'),
(302, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1441302368\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:14:52', '2022-05-10 11:14:52'),
(303, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6237888320\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:14:53', '2022-05-10 11:14:53'),
(304, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7123722250\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:14:53', '2022-05-10 11:14:53'),
(305, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1332144347\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:14:54', '2022-05-10 11:14:54'),
(306, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0006263804\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 11:14:54', '2022-05-10 11:14:54'),
(307, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4347862012\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:19:50', '2022-05-10 11:19:50'),
(308, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0810316117\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:19:50', '2022-05-10 11:19:50'),
(309, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2648522636\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:19:51', '2022-05-10 11:19:51'),
(310, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2417003783\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:19:51', '2022-05-10 11:19:51'),
(311, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0500152124\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:19:52', '2022-05-10 11:19:52'),
(312, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6864846331\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:19:52', '2022-05-10 11:19:52'),
(313, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4706426134\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:19:53', '2022-05-10 11:19:53'),
(314, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1476054704\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:19:53', '2022-05-10 11:19:53'),
(315, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5630751181\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 11:19:54', '2022-05-10 11:19:54'),
(316, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1108822574\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:20:31', '2022-05-10 11:20:31'),
(317, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7125318805\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:21:40', '2022-05-10 11:21:40'),
(318, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"api_key\": \"0088d7c2d68eaf9d33da24e4c2bd2b70\",\r\n    \"table\": \"company_master\"\r\n    \r\n}', 'push_master', 1, '2022-05-10 11:23:08', '2022-05-10 11:23:08'),
(319, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4621543180\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:24:32', '2022-05-10 11:24:32'),
(320, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3527664410\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:26:04', '2022-05-10 11:26:04'),
(321, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"api_key\": \"0088d7c2d68eaf9d33da24e4c2bd2b70\",\r\n    \"table\": \"sale_order\"\r\n}', 'push_entry', 1, '2022-05-10 11:27:29', '2022-05-10 11:27:29'),
(322, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1548310477\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"params\":[{\"id\":\"1\",\"name\":\"Ice\",\"address\":\"gandhipuram \",\"pincode\":\"641001\",\"fssai_no\":\"gsys628wbsjz\",\"gst_no\":\"bzhdbd6w9wj\",\"mobile_no\":\"9757873497\",\"state\":\"Tamil Nadu\",\"country\":\"India\",\"bank_name\":\"null\",\"acc_no\":\"\",\"ifsc\":\"\"}]}', 'company_data', 1, '2022-05-10 11:27:40', '2022-05-10 11:27:40'),
(323, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2333762353\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"params\":[{\"id\":\"1\",\"name\":\"Ice\",\"address\":\"gandhipuram \",\"pincode\":\"641001\",\"fssai_no\":\"gsys628wbsjz\",\"gst_no\":\"bzhdbd6w9wj\",\"mobile_no\":\"9757873497\",\"state\":\"Tamil Nadu\",\"country\":\"India\",\"bank_name\":\"Canara Bank\",\"acc_no\":\"\",\"ifsc\":\"\"}]}', 'company_data', 1, '2022-05-10 11:29:56', '2022-05-10 11:29:56'),
(324, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"token\": \"1548310477\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"name\": \"Ice\",\r\n            \"address\": \"gandhipuram \",\r\n            \"pincode\": \"641001\",\r\n            \"fssai_no\": \"gsys628wbsjz\",\r\n            \"gst_no\": \"bzhdbd6w9wj\",\r\n            \"mobile_no\": \"9757873497\",\r\n            \"state\": \"Tamil Nadu\",\r\n            \"country\": \"India\",\r\n            \"bank_name\": \"null\",\r\n            \"acc_no\": \"\",\r\n            \"ifsc\": \"\"\r\n        }\r\n    ]\r\n}', 'company_data', 1, '2022-05-10 11:30:43', '2022-05-10 11:30:43'),
(325, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0618785516\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:31:00', '2022-05-10 11:31:00'),
(326, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3612552352\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:31:01', '2022-05-10 11:31:01'),
(327, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3737221341\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:31:01', '2022-05-10 11:31:01'),
(328, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4182881261\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:31:01', '2022-05-10 11:31:01'),
(329, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5026164073\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:31:02', '2022-05-10 11:31:02'),
(330, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4171638660\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:31:03', '2022-05-10 11:31:03'),
(331, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7645012101\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:31:03', '2022-05-10 11:31:03'),
(332, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2304461810\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:31:03', '2022-05-10 11:31:03'),
(333, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0337707531\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 11:31:04', '2022-05-10 11:31:04'),
(334, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0206613367\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"params\":[{\"id\":\"1\",\"name\":\"Ice\",\"address\":\"gandhipuram \",\"pincode\":\"641001\",\"fssai_no\":\"gsys628wbsjz\",\"gst_no\":\"bzhdbd6w9wj\",\"mobile_no\":\"9757873497\",\"state\":\"Tamil Nadu\",\"country\":\"India\",\"bank_name\":\"Canara Bank\",\"acc_no\":\"\",\"ifsc\":\"\"}]}', 'company_data', 1, '2022-05-10 11:31:11', '2022-05-10 11:31:11'),
(335, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7400256460\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:31:16', '2022-05-10 11:31:16'),
(336, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3286751841\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:36:00', '2022-05-10 11:36:00'),
(337, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0720017448\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:36:00', '2022-05-10 11:36:00'),
(338, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7470614281\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:36:01', '2022-05-10 11:36:01'),
(339, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5160363633\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:36:01', '2022-05-10 11:36:01'),
(340, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0864682488\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:36:01', '2022-05-10 11:36:01'),
(341, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6777762517\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:36:02', '2022-05-10 11:36:02'),
(342, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4761346602\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:36:02', '2022-05-10 11:36:02'),
(343, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3236788083\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:36:02', '2022-05-10 11:36:02'),
(344, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0610372674\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 11:36:02', '2022-05-10 11:36:02'),
(345, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8671011045\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:41:00', '2022-05-10 11:41:00'),
(346, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3321066807\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:41:01', '2022-05-10 11:41:01'),
(347, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5251364568\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:41:01', '2022-05-10 11:41:01'),
(348, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8111657686\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:41:01', '2022-05-10 11:41:01'),
(349, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5165356044\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:41:02', '2022-05-10 11:41:02'),
(350, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6086723488\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:41:02', '2022-05-10 11:41:02'),
(351, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0066385883\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:41:03', '2022-05-10 11:41:03'),
(352, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4113075001\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:41:03', '2022-05-10 11:41:03'),
(353, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8426157742\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 11:41:03', '2022-05-10 11:41:03'),
(354, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2023644501\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:46:00', '2022-05-10 11:46:00'),
(355, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1408474322\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:46:00', '2022-05-10 11:46:00'),
(356, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7863744150\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:46:00', '2022-05-10 11:46:00'),
(357, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5860522601\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:46:01', '2022-05-10 11:46:01'),
(358, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7530430181\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:46:01', '2022-05-10 11:46:01'),
(359, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8124402087\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:46:01', '2022-05-10 11:46:01'),
(360, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3745026831\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:46:02', '2022-05-10 11:46:02'),
(361, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3538821616\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:46:02', '2022-05-10 11:46:02'),
(362, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2502022232\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":null}', 'push_entry', 1, '2022-05-10 11:46:02', '2022-05-10 11:46:02');
INSERT INTO `raw_dump_archive` (`id`, `user_id`, `access_token`, `json_dump`, `request_type`, `status`, `created_at`, `updated_at`) VALUES
(363, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4834882140\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"params\":[{\"id\":29,\"party_id\":\"0\",\"party_name\":\"cash\",\"user_id\":\"2\",\"tot_qty\":\"6.0\",\"cgst_amt\":\"24.77\",\"sgst_amt\":\"24.77\",\"igst_amt\":\"54.00\",\"del_date\":\"\",\"del_location\":\"\",\"net_amt\":\"550.46\",\"gross_amt\":\"600\",\"order_type\":\"2\",\"bill_date\":\"2022-05-10 17:12:36\",\"order_sub\":[{\"id\":28,\"item_name\":\"Ice crushed\",\"item_id\":\"1\",\"item_qty\":\"6.0\",\"rate\":\"100\",\"tot_amt\":\"600.0\",\"tax_amt\":\"649.54\",\"tax_value\":\"4.5\",\"cgst\":\"4.5\",\"sgst\":\"4.5\",\"igst\":\"9\"}]}]}', 'sale_order_data', 1, '2022-05-10 11:46:03', '2022-05-10 11:46:03'),
(364, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7725374262\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:49:21', '2022-05-10 11:49:21'),
(365, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7771472640\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:49:22', '2022-05-10 11:49:22'),
(366, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5544047170\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:49:22', '2022-05-10 11:49:22'),
(367, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4030005432\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:49:22', '2022-05-10 11:49:22'),
(368, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7723376647\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:49:22', '2022-05-10 11:49:22'),
(369, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2801036825\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:49:23', '2022-05-10 11:49:23'),
(370, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5740748420\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:49:23', '2022-05-10 11:49:23'),
(371, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0671546104\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:49:23', '2022-05-10 11:49:23'),
(372, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4317445552\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 11:49:23', '2022-05-10 11:49:23'),
(373, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5452831348\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 17:16:05\"}', 'push_entry', 1, '2022-05-10 11:49:24', '2022-05-10 11:49:24'),
(374, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3678763103\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:50:46', '2022-05-10 11:50:46'),
(375, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6812026337\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:50:46', '2022-05-10 11:50:46'),
(376, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1787713807\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:50:46', '2022-05-10 11:50:46'),
(377, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3451511614\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:50:47', '2022-05-10 11:50:47'),
(378, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2748204377\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:50:47', '2022-05-10 11:50:47'),
(379, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4617515452\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:50:47', '2022-05-10 11:50:47'),
(380, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5541700051\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:50:48', '2022-05-10 11:50:48'),
(381, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8638163704\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:50:48', '2022-05-10 11:50:48'),
(382, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4604283507\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"company_master\",\"last_up_time\":null}', 'push_master', 1, '2022-05-10 11:50:48', '2022-05-10 11:50:48'),
(383, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6868672734\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 17:16:05\"}', 'push_entry', 1, '2022-05-10 11:50:49', '2022-05-10 11:50:49'),
(384, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4188675235\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:52:36', '2022-05-10 11:52:36'),
(385, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6335441028\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:53:24', '2022-05-10 11:53:24'),
(386, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8055766311\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:54:05', '2022-05-10 11:54:05'),
(387, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6523470301\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:54:06', '2022-05-10 11:54:06'),
(388, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3544726230\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:54:06', '2022-05-10 11:54:06'),
(389, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3018387471\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:54:06', '2022-05-10 11:54:06'),
(390, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5527348062\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:54:07', '2022-05-10 11:54:07'),
(391, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0087843452\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:54:07', '2022-05-10 11:54:07'),
(392, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5338064476\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:54:07', '2022-05-10 11:54:07'),
(393, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5327437578\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:54:08', '2022-05-10 11:54:08'),
(394, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"2466852713\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"company_master\",\"last_up_time\":\"2022-05-10 17:01:11\"}', 'push_master', 1, '2022-05-10 11:54:08', '2022-05-10 11:54:08'),
(395, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1474778460\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 17:16:05\"}', 'push_entry', 1, '2022-05-10 11:54:08', '2022-05-10 11:54:08'),
(396, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"name\": \"tax0\",\r\n            \"igst\": \"0\",\r\n            \"cgst\": \"0.0\",\r\n            \"sgst\": \"0.0\"\r\n        },\r\n        {\r\n            \"id\": \"2\",\r\n            \"name\": \"tax1\",\r\n            \"igst\": \"50\",\r\n            \"cgst\": \"25\",\r\n            \"sgst\": \"25\"\r\n        },\r\n        {\r\n            \"id\": \"3\",\r\n            \"name\": \"tax5\",\r\n            \"igst\": \"500\",\r\n            \"cgst\": \"250\",\r\n            \"sgst\": \"250\"\r\n        },\r\n        {\r\n            \"id\": \"4\",\r\n            \"name\": \"tax8\",\r\n            \"igst\": \"1000\",\r\n            \"cgst\": \"500\",\r\n            \"sgst\": \"500\"\r\n        },\r\n        {\r\n            \"id\": \"8\",\r\n            \"name\": \"tax96\",\r\n            \"igst\": \"600\",\r\n            \"cgst\": \"300\",\r\n            \"sgst\": \"300\"\r\n        }\r\n    ]\r\n}', 'tax_data', 1, '2022-05-10 11:55:24', '2022-05-10 11:55:24'),
(397, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"name\": \"tax956\",\r\n            \"igst\": \"800\",\r\n            \"cgst\": \"400\",\r\n            \"sgst\": \"400\"\r\n        },\r\n        {\r\n            \"id\": \"2\",\r\n            \"name\": \"tax85\",\r\n            \"igst\": \"500\",\r\n            \"cgst\": \"250\",\r\n            \"sgst\": \"250\"\r\n        },\r\n        {\r\n            \"id\": \"3\",\r\n            \"name\": \"tax58\",\r\n            \"igst\": \"1000\",\r\n            \"cgst\": \"500\",\r\n            \"sgst\": \"500\"\r\n        }\r\n       \r\n    ]\r\n}', 'tax_data', 1, '2022-05-10 11:56:21', '2022-05-10 11:56:21'),
(398, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0420422650\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 15:35:50\"}', 'push_master', 1, '2022-05-10 11:56:50', '2022-05-10 11:56:50'),
(399, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8431166356\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 11:56:50', '2022-05-10 11:56:50'),
(400, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4825548275\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 11:56:51', '2022-05-10 11:56:51'),
(401, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3214168240\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 11:56:51', '2022-05-10 11:56:51'),
(402, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1118833060\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 11:56:51', '2022-05-10 11:56:51'),
(403, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6813267604\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 11:56:52', '2022-05-10 11:56:52'),
(404, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4785510351\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 11:56:52', '2022-05-10 11:56:52'),
(405, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1324041564\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 11:56:52', '2022-05-10 11:56:52'),
(406, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8725802152\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"company_master\",\"last_up_time\":\"2022-05-10 17:01:11\"}', 'push_master', 1, '2022-05-10 11:56:52', '2022-05-10 11:56:52'),
(407, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6178501227\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 17:16:05\"}', 'push_entry', 1, '2022-05-10 11:56:53', '2022-05-10 11:56:53'),
(408, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5766545631\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:58:31', '2022-05-10 11:58:31'),
(409, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6078331654\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"1\"}', 'push_entry', 1, '2022-05-10 11:58:35', '2022-05-10 11:58:35'),
(410, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0047485854\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 11:58:37', '2022-05-10 11:58:37'),
(411, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3676434506\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"params\":[{\"id\":\"7\",\"name\":\"ro ice\",\"code\":\"ro001\",\"tax_id\":\"6\",\"ratequoter\":\"\",\"ratehalf\":\"25\",\"ratehalfquoter\":\"\",\"rate\":\"50\",\"image_id\":\"2\"}]}', 'item_data', 1, '2022-05-10 11:59:59', '2022-05-10 11:59:59'),
(412, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6613272534\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-10 00:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"0\"}', 'push_entry', 1, '2022-05-10 12:02:11', '2022-05-10 12:02:11'),
(413, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8501818347\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"tax_master\",\"last_up_time\":\"2022-05-10 17:26:21\"}', 'push_master', 1, '2022-05-10 12:03:04', '2022-05-10 12:03:04'),
(414, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"0128241223\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"item_master\",\"last_up_time\":\"2022-05-10 13:37:26\"}', 'push_master', 1, '2022-05-10 12:03:04', '2022-05-10 12:03:04'),
(415, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3223233337\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"pricelist_master\",\"last_up_time\":\"2022-05-10 13:51:22\"}', 'push_master', 1, '2022-05-10 12:03:05', '2022-05-10 12:03:05'),
(416, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3074472463\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"price_list_item_master\",\"last_up_time\":\"2022-05-10 13:53:42\"}', 'push_master', 1, '2022-05-10 12:03:05', '2022-05-10 12:03:05'),
(417, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5608038546\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"vehicle_master\",\"last_up_time\":\"2022-05-10 13:49:24\"}', 'push_master', 1, '2022-05-10 12:03:05', '2022-05-10 12:03:05'),
(418, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"1117201818\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"route_master\",\"last_up_time\":\"2022-05-10 13:49:47\"}', 'push_master', 1, '2022-05-10 12:03:06', '2022-05-10 12:03:06'),
(419, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"8875145634\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"employee_masters\",\"last_up_time\":\"2022-05-10 16:33:29\"}', 'push_master', 1, '2022-05-10 12:03:06', '2022-05-10 12:03:06'),
(420, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7342124144\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"customer_master\",\"last_up_time\":\"2022-05-10 13:55:28\"}', 'push_master', 1, '2022-05-10 12:03:06', '2022-05-10 12:03:06'),
(421, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"6357000818\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"company_master\",\"last_up_time\":\"2022-05-10 17:01:11\"}', 'push_master', 1, '2022-05-10 12:03:07', '2022-05-10 12:03:07'),
(422, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"4086102732\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"table\":\"sale_order\",\"user_id\":\"2\",\"last_up_time\":\"2022-05-10 17:16:05\"}', 'push_entry', 1, '2022-05-10 12:03:07', '2022-05-10 12:03:07'),
(423, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"5382246755\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"params\":[{\"id\":30,\"party_id\":\"0\",\"party_name\":\"cash\",\"user_id\":\"2\",\"tot_qty\":\"3.0\",\"cgst_amt\":\"68.2\",\"sgst_amt\":\"68.2\",\"igst_amt\":\"1500.00\",\"del_date\":\"\",\"del_location\":\"\",\"net_amt\":\"13.64\",\"gross_amt\":\"150\",\"order_type\":\"2\",\"bill_date\":\"2022-05-10 17:31:56\",\"order_sub\":[{\"id\":29,\"item_name\":\"ro ice\",\"item_id\":\"2\",\"item_qty\":\"3.0\",\"rate\":\"50\",\"tot_amt\":\"150.0\",\"tax_amt\":\"286.40\",\"tax_value\":\"500\",\"cgst\":\"500\",\"sgst\":\"500\",\"igst\":\"1000\"}]}]}', 'sale_order_data', 1, '2022-05-10 12:03:07', '2022-05-10 12:03:07'),
(424, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"7543602574\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-08 23:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"1\"}', 'push_entry', 1, '2022-05-10 12:07:09', '2022-05-10 12:07:09'),
(425, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\"token\":\"3650750606\",\"api_key\":\"0088d7c2d68eaf9d33da24e4c2bd2b70\",\"table\":\"sale_order\",\"access_token\":\"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\"from_date\":\"2022-05-08 23:00\",\"to_date\":\"2022-05-10 23:59\",\"order_type\":\"2\"}', 'push_entry', 1, '2022-05-10 12:07:10', '2022-05-10 12:07:10'),
(426, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"token\": \"8620335748\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"vehicle_no\": \"TN79 6876\",\r\n            \"vehicle_name\": \"bike\",\r\n            \"vehicle_insurance_no\": \"67HDH7668\",\r\n            \"vehicle_diesel\": \"DIESEL\",\r\n            \"vehicle_exp_date\": \"2022-05-27\",\r\n            \"vehicle_ins_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_exp_date\": \"2022-05-27\",\r\n            \"vehicle_fc_no\": \"Hshs7hshs\",\r\n            \"vehicle_pollution_certificate_no\": \"hsus77e7\"\r\n        }\r\n    ]\r\n}', 'vehicle_data', 1, '2022-05-10 12:26:51', '2022-05-10 12:26:51'),
(427, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"4\",\r\n            \"name\": \"item3\",\r\n            \"code\": \"001\",\r\n            \"tax_id\": \"568\",\r\n            \"ratequoter\": \"75\",\r\n            \"ratehalf\": \"50\",\r\n            \"ratehalfquoter\": \"25\",\r\n            \"rate\": \"100\",\r\n            \"image_id\": \"52\"\r\n        }\r\n    ]\r\n}', 'item_data', 1, '2022-05-10 12:28:23', '2022-05-10 12:28:23'),
(428, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"3\",\r\n            \"name\": \"item55\"\r\n        }\r\n    ]\r\n}', 'pricelist_data', 1, '2022-05-10 12:28:44', '2022-05-10 12:28:44'),
(429, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\":\"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"11\",\r\n            \"p_id\": \"352\",\r\n            \"item_id\": \"14\",\r\n            \"rate\": \"5000\"\r\n        }\r\n    ]\r\n}', 'price_list_item_data', 1, '2022-05-10 12:29:06', '2022-05-10 12:29:06'),
(430, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"no\": \"852\",\r\n            \"route_name\": \"coimbatore\",\r\n            \"vec_name\": \"tempo\",\r\n            \"vec_id\": \"875\"\r\n        }\r\n    ]\r\n}', 'route_data', 1, '2022-05-10 12:29:34', '2022-05-10 12:29:34'),
(431, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"token\": \"1348464764\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"api_key\": \"0088d7c2d68eaf9d33da24e4c2bd2b70\",\r\n    \"table\": \"route_master\"\r\n}', 'push_master', 1, '2022-05-11 07:30:50', '2022-05-11 07:30:50'),
(432, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"api_key\": \"0088d7c2d68eaf9d33da24e4c2bd2b70\",\r\n    \"table\": \"route_master\",\r\n    \"last_up_time\" : \"2022-05-10 13:49:47\"\r\n    \r\n}', 'push_master', 1, '2022-05-11 07:32:20', '2022-05-11 07:32:20'),
(433, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"api_key\": \"0088d7c2d68eaf9d33da24e4c2bd2b70\",\r\n    \"table\": \"route_master\",\r\n    \"last_up_time\" : \"2022-05-10 13:49:47\"\r\n    \r\n}', 'push_master', 1, '2022-05-11 07:32:38', '2022-05-11 07:32:38'),
(434, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"token\": \"1348464764\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"api_key\": \"0088d7c2d68eaf9d33da24e4c2bd2b70\",\r\n    \"table\": \"route_master\"\r\n}', 'push_master', 1, '2022-05-11 07:34:38', '2022-05-11 07:34:38'),
(435, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"name\": \"tax963\",\r\n            \"igst\": \"500\",\r\n            \"cgst\": \"250\",\r\n            \"sgst\": \"250\"\r\n        }\r\n    ]\r\n}', 'tax_data', 1, '2022-05-17 04:38:26', '2022-05-17 04:38:26'),
(436, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"name\": \"tax785\",\r\n            \"igst\": \"100\",\r\n            \"cgst\": \"50\",\r\n            \"sgst\": \"50\"\r\n        }\r\n    ]\r\n}', 'tax_data', 1, '2022-05-17 04:40:17', '2022-05-17 04:40:17'),
(437, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\r\n    \"api_key\": \"4987549849846444564\",\r\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\r\n    \"params\": [\r\n        {\r\n            \"id\": \"1\",\r\n            \"no\": \"786\",\r\n            \"route_name\": \"chennai\",\r\n            \"vec_name\": \"car\",\r\n            \"vec_id\": \"900\"\r\n        }\r\n    ]\r\n}', 'route_data', 1, '2022-05-17 07:11:13', '2022-05-17 07:11:13'),
(438, 2, '514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0', '{\n    \"api_key\": \"4987549849846444564\",\n    \"access_token\": \"514889f609b4f417c8f58c7d140ccf4cd23393acd845298386342d5d47271ad0\",\n    \"params\": [\n        {\n            \"id\": \"1\",\n            \"empty_clr\": \"purples\",\n            \"filled_clr\": \"red\",\n            \"underprocess_clr\": \"sandle\",\n            \"selected_clr\": \"blue\"\n        }\n    ]\n}', 'bar_selection_data', 1, '2022-05-17 07:14:05', '2022-05-17 07:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `route_master`
--

CREATE TABLE `route_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vec_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vec_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `route_master`
--

INSERT INTO `route_master` (`id`, `no`, `route_name`, `vec_name`, `vec_id`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 'coimbatore', 'cbe', 'car', '2', 1, '2022-05-10 13:49:47', NULL, '2022-05-10 08:19:47', '2022-05-10 08:19:47'),
(2, '852', 'coimbatore', 'tempo', '875', 1, '2022-05-10 17:59:34', NULL, '2022-05-10 12:29:34', '2022-05-10 12:29:34'),
(3, '786', 'chennai', 'car', '900', 1, '2022-05-17 12:41:13', NULL, '2022-05-17 07:11:13', '2022-05-17 07:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order`
--

CREATE TABLE `sale_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tot_qty` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgst_amt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sgst_amt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `igst_amt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `del_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `net_amt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_amt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_order`
--

INSERT INTO `sale_order` (`id`, `party_id`, `party_name`, `user_id`, `tot_qty`, `cgst_amt`, `sgst_amt`, `igst_amt`, `bill_date`, `del_date`, `del_location`, `net_amt`, `gross_amt`, `order_type`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(6, '0', 'cash', '2', '3.0', '12.39', '12.39', '27.00', '2022-05-10 15:31:48', 'null', 'null', '275.23', '300', '2', 1, '2022-05-10 15:41:02', NULL, '2022-05-10 10:11:02', '2022-05-10 10:11:02'),
(7, '0', 'cash', '2', '6.0', '24.77', '24.77', '54.00', '2022-05-10 15:41:47', 'null', 'null', '550.46', '600', '2', 1, '2022-05-10 15:41:57', NULL, '2022-05-10 10:11:57', '2022-05-10 10:11:57'),
(9, '1', 'ram', '5', '5', '25', '25', '50', '2022-05-10 15:41:47', '25-03-2019', 'cbe', '360', '3700', '2', 1, '2022-05-10 16:06:53', NULL, '2022-05-10 10:36:53', '2022-05-10 10:36:53'),
(10, '1', 'ramkumar', '5', '5', '25', '25', '50', '2022-05-10 15:41:47', '26-03-2019', 'cbe', '360', '3700', '2', 1, '2022-05-10 16:07:27', NULL, '2022-05-10 10:37:27', '2022-05-10 10:37:27'),
(11, '1', 'kiram', '5', '5', '25', '25', '50', '2022-05-10 15:41:47', '29-03-2022', 'cbe', '360', '3700', '2', 1, '2022-05-10 16:08:08', NULL, '2022-05-10 10:38:08', '2022-05-10 10:38:08'),
(12, '1', 'kiram', '5', '5', '25', '25', '50', '2022-05-22', '29-03-2022', 'cbe', '360', '3700', '2', 1, '2022-05-10 16:11:10', NULL, '2022-05-10 10:41:10', '2022-05-10 10:41:10'),
(13, '1', 'rajesh', '5', '5', '25', '25', '50', '2022-06-22', '29-03-2022', 'cbe', '360', '3700', '2', 1, '2022-05-10 16:11:32', NULL, '2022-05-10 10:41:32', '2022-05-10 10:41:32'),
(14, '1', 'guna', '5', '5', '25', '25', '50', '2022-07-22', '29-03-2022', 'cbe', '360', '3700', '2', 1, '2022-05-10 16:11:47', NULL, '2022-05-10 10:41:47', '2022-05-10 10:41:47'),
(15, '1', 'abitha', '5', '5', '25', '25', '50', '2022-08-25', '29-03-2022', 'cbe', '360', '3700', '2', 1, '2022-05-10 16:12:11', NULL, '2022-05-10 10:42:11', '2022-05-10 10:42:11'),
(16, '0', 'cash', '2', '6.0', '24.77', '24.77', '54.00', '2022-05-10 17:12:36', 'null', 'null', '550.46', '600', '2', 1, '2022-05-10 17:16:03', NULL, '2022-05-10 11:46:03', '2022-05-10 11:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `sale_order_item`
--

CREATE TABLE `sale_order_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `tot_amt` int(11) NOT NULL,
  `tax_amt` int(11) NOT NULL,
  `tax_value` int(11) NOT NULL,
  `cgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `igst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_order_item`
--

INSERT INTO `sale_order_item` (`id`, `sale_id`, `item_name`, `item_id`, `item_qty`, `rate`, `tot_amt`, `tax_amt`, `tax_value`, `cgst`, `sgst`, `igst`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 6, 'Ice crushed', 1, 3, 100, 300, 325, 5, '4.5', '4.5', '9', 1, '2022-05-10 15:41:02', NULL, '2022-05-10 10:11:02', '2022-05-10 10:11:02'),
(2, 7, 'Ice crushed', 1, 6, 100, 600, 650, 5, '4.5', '4.5', '9', 1, '2022-05-10 15:41:57', NULL, '2022-05-10 10:11:57', '2022-05-10 10:11:57'),
(5, 9, 'abi', 634, 54, 542, 500, 655, 54, '50', '50', '100', 1, '2022-05-10 16:06:53', NULL, '2022-05-10 10:36:53', '2022-05-10 10:36:53'),
(6, 10, 'vimal', 634, 54, 542, 500, 655, 54, '50', '50', '100', 1, '2022-05-10 16:07:28', NULL, '2022-05-10 10:37:28', '2022-05-10 10:37:28'),
(7, 11, 'vimal', 634, 54, 542, 500, 655, 54, '50', '50', '100', 1, '2022-05-10 16:08:08', NULL, '2022-05-10 10:38:08', '2022-05-10 10:38:08'),
(8, 12, 'vimal', 634, 54, 542, 500, 655, 54, '50', '50', '100', 1, '2022-05-10 16:11:10', NULL, '2022-05-10 10:41:10', '2022-05-10 10:41:10'),
(9, 13, 'suresh', 634, 54, 542, 500, 655, 54, '50', '50', '100', 1, '2022-05-10 16:11:33', NULL, '2022-05-10 10:41:33', '2022-05-10 10:41:33'),
(10, 14, 'haripriya', 634, 54, 542, 500, 655, 54, '50', '50', '100', 1, '2022-05-10 16:11:47', NULL, '2022-05-10 10:41:47', '2022-05-10 10:41:47'),
(11, 15, 'nagu', 634, 54, 542, 500, 655, 54, '50', '50', '100', 1, '2022-05-10 16:12:11', NULL, '2022-05-10 10:42:11', '2022-05-10 10:42:11'),
(12, 16, 'Ice crushed', 1, 6, 100, 600, 650, 5, '4.5', '4.5', '9', 1, '2022-05-10 17:16:03', NULL, '2022-05-10 11:46:03', '2022-05-10 11:46:03'),
(13, 17, 'ro ice', 2, 3, 50, 150, 286, 500, '500', '500', '1000', 1, '2022-05-10 17:33:07', NULL, '2022-05-10 12:03:07', '2022-05-10 12:03:07');

-- --------------------------------------------------------

--
-- Table structure for table `tax_master`
--

CREATE TABLE `tax_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sgst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `igst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_master`
--

INSERT INTO `tax_master` (`id`, `name`, `cgst`, `sgst`, `igst`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 'roja', '15.4350', '15435.0', '30436', 1, '2022-05-10 13:27:40', NULL, '2022-05-10 07:57:40', '2022-05-10 07:57:40'),
(2, 'tax 9', '4.5', '4.5', '9', 1, '2022-05-10 13:36:16', '2022-05-10 15:35:50', '2022-05-10 08:06:16', '2022-05-10 10:05:50'),
(3, 'tax0', '0.0', '0.0', '0', 1, '2022-05-10 17:25:24', NULL, '2022-05-10 11:55:24', '2022-05-10 11:55:24'),
(4, 'tax1', '25', '25', '50', 1, '2022-05-10 17:25:24', NULL, '2022-05-10 11:55:24', '2022-05-10 11:55:24'),
(5, 'tax5', '250', '250', '500', 1, '2022-05-10 17:25:25', NULL, '2022-05-10 11:55:25', '2022-05-10 11:55:25'),
(6, 'tax8', '500', '500', '1000', 1, '2022-05-10 17:25:25', NULL, '2022-05-10 11:55:25', '2022-05-10 11:55:25'),
(7, 'tax96', '300', '300', '600', 1, '2022-05-10 17:25:25', NULL, '2022-05-10 11:55:25', '2022-05-10 11:55:25'),
(8, 'tax956', '400', '400', '800', 1, '2022-05-10 17:26:21', NULL, '2022-05-10 11:56:21', '2022-05-10 11:56:21'),
(9, 'tax85', '250', '250', '500', 1, '2022-05-10 17:26:21', NULL, '2022-05-10 11:56:21', '2022-05-10 11:56:21'),
(10, 'tax58', '500', '500', '1000', 1, '2022-05-10 17:26:21', NULL, '2022-05-10 11:56:21', '2022-05-10 11:56:21'),
(11, 'tax963', '250', '250', '500', 1, '2022-05-17 10:08:26', NULL, '2022-05-17 04:38:26', '2022-05-17 04:38:26'),
(12, 'tax785', '50', '50', '100', 1, '2022-05-17 10:10:17', NULL, '2022-05-17 04:40:17', '2022-05-17 04:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_master`
--

CREATE TABLE `vehicle_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_insurance_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_ins_exp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_fc_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_fc_exp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_diesel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_exp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_pollution_certificate_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `c_time` datetime NOT NULL,
  `m_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_master`
--

INSERT INTO `vehicle_master` (`id`, `vehicle_no`, `vehicle_name`, `vehicle_insurance_no`, `vehicle_ins_exp_date`, `vehicle_fc_no`, `vehicle_fc_exp_date`, `vehicle_diesel`, `vehicle_exp_date`, `vehicle_pollution_certificate_no`, `status`, `c_time`, `m_time`, `created_at`, `updated_at`) VALUES
(1, 'TN78 6876', 'bike', '67HDH7668', '2022-05-27', 'Hshs7hshs', '2022-05-27', 'DIESEL', '2022-05-27', 'hsus77e7', 1, '2022-05-10 13:48:59', NULL, '2022-05-10 08:18:59', '2022-05-10 08:18:59'),
(2, 'TN78 6899', 'car', '67HDH7668', '2022-05-27', 'Hshs7hshs', '2022-05-27', 'DIESEL', '2022-05-27', 'hsus77e7', 1, '2022-05-10 13:49:24', NULL, '2022-05-10 08:19:24', '2022-05-10 08:19:24'),
(3, 'TN79 6876', 'bike', '67HDH7668', '2022-05-27', 'Hshs7hshs', '2022-05-27', 'DIESEL', '2022-05-27', 'hsus77e7', 1, '2022-05-10 17:56:51', NULL, '2022-05-10 12:26:51', '2022-05-10 12:26:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_master`
--
ALTER TABLE `company_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_master_name_unique` (`name`);

--
-- Indexes for table `employee_masters`
--
ALTER TABLE `employee_masters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_masters_user_id_unique` (`user_id`);

--
-- Indexes for table `item_master`
--
ALTER TABLE `item_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_master_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pricelist_master`
--
ALTER TABLE `pricelist_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pricelist_master_name_unique` (`name`);

--
-- Indexes for table `price_list_item_master`
--
ALTER TABLE `price_list_item_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price_list_item_master_p_id_unique` (`p_id`);

--
-- Indexes for table `raw_dump_archive`
--
ALTER TABLE `raw_dump_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_master`
--
ALTER TABLE `route_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `route_master_no_unique` (`no`);

--
-- Indexes for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_order_item`
--
ALTER TABLE `sale_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_master`
--
ALTER TABLE `tax_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_master_name_unique` (`name`);

--
-- Indexes for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicle_master_vehicle_no_unique` (`vehicle_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_master`
--
ALTER TABLE `company_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_masters`
--
ALTER TABLE `employee_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `item_master`
--
ALTER TABLE `item_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pricelist_master`
--
ALTER TABLE `pricelist_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `price_list_item_master`
--
ALTER TABLE `price_list_item_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `raw_dump_archive`
--
ALTER TABLE `raw_dump_archive`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `route_master`
--
ALTER TABLE `route_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sale_order`
--
ALTER TABLE `sale_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sale_order_item`
--
ALTER TABLE `sale_order_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tax_master`
--
ALTER TABLE `tax_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vehicle_master`
--
ALTER TABLE `vehicle_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
