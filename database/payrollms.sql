-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 07:41 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrollms`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `date`, `created_at`, `updated_at`) VALUES
(23, 9, '2019-07-03', '2019-07-02 00:15:41', '2019-07-02 01:54:49'),
(25, 7, '2019-07-03', '2019-07-03 00:34:47', '2019-07-03 00:34:47'),
(26, 4, '2019-07-03', '2019-07-03 00:46:45', '2019-07-03 00:46:45'),
(27, 10, '2019-07-03', '2019-07-03 00:47:54', '2019-07-03 00:47:54'),
(28, 9, '2019-07-03', '2019-07-03 00:48:17', '2019-07-03 00:48:17'),
(29, 6, '2019-07-03', '2019-07-03 00:48:43', '2019-07-03 00:48:43'),
(30, 4, '2019-07-04', '2019-07-03 23:55:55', '2019-07-03 23:55:55'),
(31, 6, '2019-07-08', '2019-07-08 01:51:57', '2019-07-08 01:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE `attendance_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `punch_time` time NOT NULL,
  `punch_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_details`
--

INSERT INTO `attendance_details` (`id`, `attendance_id`, `punch_time`, `punch_type`, `created_at`, `updated_at`) VALUES
(57, 23, '20:00:00', 'Check In', '2019-07-02 01:44:47', '2019-07-02 01:44:47'),
(65, 25, '06:19:00', 'Check In', '2019-07-03 00:34:48', '2019-07-03 00:34:48'),
(69, 25, '20:00:00', 'Check In', '2019-07-03 00:39:04', '2019-07-03 00:39:04'),
(70, 25, '12:00:00', 'Check In', '2019-07-03 00:39:04', '2019-07-03 00:39:04'),
(72, 23, '15:00:00', 'Check In', '2019-07-03 00:45:27', '2019-07-03 00:45:27'),
(73, 23, '16:00:00', 'Check In', '2019-07-03 00:45:27', '2019-07-03 00:45:27'),
(74, 26, '06:31:00', 'Check In', '2019-07-03 00:46:45', '2019-07-03 00:46:45'),
(75, 27, '06:31:00', 'Check In', '2019-07-03 00:47:54', '2019-07-03 00:47:54'),
(76, 27, '05:05:00', 'Check Out', '2019-07-03 00:47:54', '2019-07-03 00:47:54'),
(77, 27, '18:00:00', 'Check In', '2019-07-03 00:47:54', '2019-07-03 00:47:54'),
(78, 28, '06:32:00', 'Check In', '2019-07-03 00:48:17', '2019-07-03 00:48:17'),
(79, 28, '21:00:00', 'Check In', '2019-07-03 00:48:17', '2019-07-03 00:48:17'),
(80, 29, '02:33:00', 'Check In', '2019-07-03 00:48:43', '2019-07-03 00:48:43'),
(81, 29, '15:00:00', 'Check Out', '2019-07-03 00:48:44', '2019-07-03 00:48:44'),
(82, 30, '05:40:00', 'Check In', '2019-07-03 23:55:55', '2019-07-03 23:55:55'),
(83, 30, '12:00:00', 'Check In', '2019-07-03 23:55:55', '2019-07-03 23:55:55'),
(84, 31, '07:36:00', 'Check In', '2019-07-08 01:51:57', '2019-07-08 01:51:57'),
(85, 31, '17:55:00', 'Check Out', '2019-07-08 01:51:57', '2019-07-08 01:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `bank_detials`
--

CREATE TABLE `bank_detials` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_detials`
--

INSERT INTO `bank_detials` (`id`, `employee_id`, `bank_name`, `account_holder_name`, `account_id`, `created_at`, `updated_at`, `bank_branch`) VALUES
(1, '112C', 'Nabil Bank', 'Rahul David', '1000293299990000001AS', '2019-07-16 00:43:53', '2019-07-16 00:43:53', 'Kupandol, Lalitpur'),
(2, '113C', 'NMB Bank', 'Kumari Karki', '203423420003024001', '2019-07-16 00:44:42', '2019-07-16 00:44:42', 'Sinamangal, Kathmandu');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(49, 15, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(50, 15, 'department_name', 'text', 'Department Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(51, 15, 'department_head', 'text', 'Department Head', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(52, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(53, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(86, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 23, 'employee_id', 'text', 'Employee Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 23, 'created_at', 'timestamp', 'DateTime', 0, 1, 1, 1, 0, 1, '{}', 8),
(91, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(92, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 24, 'shift', 'text', 'Shift', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(94, 24, 'start', 'time', 'Start', 0, 1, 1, 1, 1, 1, '{\"format\":\"H-m-s\",\"validation\":{\"rule\":\"required\"}}', 3),
(95, 24, 'finish', 'time', 'Finish', 0, 1, 1, 1, 1, 1, '{\"format\":\"H-m-s\",\"validation\":{\"rule\":\"required\"}}', 4),
(96, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(97, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(130, 23, 'attendance_belongsto_employee_relationship', 'relationship', 'employees', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employee\",\"table\":\"employees\",\"type\":\"belongsTo\",\"column\":\"employee_id\",\"key\":\"id\",\"label\":\"employee_name\",\"pivot_table\":\"attendances\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(131, 23, 'time_in', 'time', 'Time In', 0, 1, 1, 1, 1, 1, '{\"format\":\"H-m-s\"}', 4),
(132, 23, 'time_out', 'time', 'Time Out', 0, 1, 1, 1, 1, 1, '{\"format\":\"H-m-s\"}', 5),
(133, 23, 'status', 'radio_btn', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"Absent\",\"options\":{\"Present\":\"Present\",\"Absent\":\"Absent\"}}', 6),
(134, 23, 'remarks', 'text', 'Remarks', 0, 1, 1, 1, 1, 1, '{}', 7),
(158, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(159, 33, 'employee_name', 'text', 'Employee Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(160, 33, 'designation', 'text', 'Designation', 1, 1, 1, 1, 1, 1, '{}', 4),
(161, 33, 'basic_salary', 'text', 'Basic Salary', 1, 1, 1, 1, 1, 1, '{}', 5),
(162, 33, 'lunch_allowance', 'text', 'Lunch Allowance', 0, 1, 1, 1, 1, 1, '{}', 6),
(164, 33, 'medical_allowance', 'text', 'Medical Allowance', 0, 1, 1, 1, 1, 1, '{}', 9),
(165, 33, 'entertainment_allowance', 'text', 'Entertainment Allowance', 0, 1, 1, 1, 1, 1, '{}', 10),
(166, 33, 'bonus', 'text', 'Bonus', 0, 1, 1, 1, 1, 1, '{}', 12),
(167, 33, 'tax', 'text', 'Tax', 1, 1, 1, 1, 1, 1, '{}', 13),
(168, 33, 'provident_fund', 'text', 'Provident Fund', 0, 1, 1, 1, 1, 1, '{}', 14),
(171, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 23),
(172, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 24),
(173, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(174, 34, 'punch_type', 'text', 'Punch Type', 0, 1, 1, 1, 1, 1, '{}', 2),
(175, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(176, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(203, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 41, 'designation', 'text', 'Designation', 0, 1, 1, 1, 1, 1, '{}', 2),
(205, 41, 'basic_salary', 'text', 'Basic Salary', 0, 1, 1, 1, 1, 1, '{}', 3),
(206, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(207, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(224, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(225, 44, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(226, 44, 'symbol', 'text', 'Symbol', 1, 1, 1, 1, 1, 1, '{}', 3),
(227, 44, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(228, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(229, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(230, 46, 'salary_structure_id', 'text', 'Salary Structure Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(231, 46, 'entitlement_id', 'text', 'Entitlement Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(232, 46, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(233, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(238, 46, 'symbol', 'text', 'Symbol', 1, 1, 1, 1, 1, 1, '{}', 6),
(239, 46, 'formula', 'text', 'Formula', 0, 1, 1, 1, 1, 1, '{}', 8),
(240, 46, 'daily', 'text', 'Daily', 0, 1, 1, 1, 1, 1, '{}', 9),
(241, 50, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(242, 50, 'designation', 'text', 'Designation', 1, 1, 1, 1, 1, 1, '{}', 2),
(243, 50, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(244, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(245, 46, 'salary_structure_entitlement_belongsto_salary_structure_relationship', 'relationship', 'Salary Structure', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SalaryStructure\",\"table\":\"salary_structures\",\"type\":\"belongsTo\",\"column\":\"salary_structure_id\",\"key\":\"id\",\"label\":\"designation\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(246, 46, 'salary_structure_entitlement_belongsto_entitlement_relationship', 'relationship', 'Entitlement', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Entitlement\",\"table\":\"entitlements\",\"type\":\"belongsTo\",\"column\":\"entitlement_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(247, 46, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 7),
(248, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(249, 51, 'employee_id', 'text', 'Employee Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(250, 51, 'salary_structure_id', 'text', 'Salary Structure Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(251, 51, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(252, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(253, 51, 'employee_salary_structure_belongsto_employee_relationship', 'relationship', 'Employee Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employee\",\"table\":\"employees\",\"type\":\"belongsTo\",\"column\":\"employee_id\",\"key\":\"id\",\"label\":\"employee_name\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(254, 51, 'employee_salary_structure_belongsto_salary_structure_relationship', 'relationship', 'Salary Structure', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SalaryStructure\",\"table\":\"salary_structures\",\"type\":\"belongsTo\",\"column\":\"salary_structure_id\",\"key\":\"id\",\"label\":\"designation\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(255, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(256, 52, 'employee_id', 'text', 'Employee Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(257, 52, 'employee_name', 'text', 'Employee Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(258, 52, 'gender', 'text', 'Gender', 0, 1, 1, 1, 1, 1, '{\"default\":\"Male\",\"options\":{\"Male\":\"Male\",\"Female\":\"Female\"}}', 8),
(259, 52, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 9),
(260, 52, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 10),
(261, 52, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(262, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(263, 52, 'image', 'text', 'Image', 0, 0, 0, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 11),
(264, 52, 'department_id', 'text', 'Department Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 7),
(265, 52, 'shift_id', 'text', 'Shift Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(266, 52, 'employee_belongsto_department_relationship', 'relationship', 'Department', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Department\",\"table\":\"departments\",\"type\":\"belongsTo\",\"column\":\"department_id\",\"key\":\"id\",\"label\":\"department_name\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(267, 52, 'employee_belongsto_shift_relationship', 'relationship', 'Shift', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Shift\",\"table\":\"shifts\",\"type\":\"belongsTo\",\"column\":\"shift_id\",\"key\":\"id\",\"label\":\"shift\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(269, 46, 'tax', 'text', 'Tax', 1, 1, 1, 1, 1, 1, '{}', 10),
(270, 50, 'basic_salary', 'text', 'Basic Salary', 1, 1, 1, 1, 1, 1, '{}', 5),
(271, 53, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(272, 53, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 2),
(273, 53, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 3),
(274, 53, 'payment_id', 'text', 'Payment Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(275, 53, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(276, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(277, 53, 'deduction_belongsto_payment_relationship', 'relationship', 'Payment Id', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Payment\",\"table\":\"payments\",\"type\":\"belongsTo\",\"column\":\"payment_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(278, 55, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(279, 55, 'employee_id', 'text', 'Employee Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(280, 55, 'bank_name', 'text', 'Bank Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(282, 55, 'account_id', 'text', 'Account Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(283, 55, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(284, 55, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(285, 55, 'bank_detial_belongsto_employee_relationship', 'relationship', 'Employee Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Employee\",\"table\":\"employees\",\"type\":\"belongsTo\",\"column\":\"employee_id\",\"key\":\"employee_id\",\"label\":\"employee_name\",\"pivot_table\":\"attendance_details\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(286, 55, 'bank_branch', 'text', 'Bank Branch', 1, 1, 1, 1, 1, 1, '{}', 7),
(287, 55, 'account_holder_name', 'text', 'Account Holder Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(288, 33, 'employee_id', 'text', 'Employee Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(289, 33, 'payment_from', 'text', 'Payment From', 1, 1, 1, 1, 1, 1, '{}', 7),
(290, 33, 'payment_till', 'text', 'Payment Till', 1, 1, 1, 1, 1, 1, '{}', 8),
(291, 33, 'transport_allowance', 'text', 'Transport Allowance', 0, 1, 1, 1, 1, 1, '{}', 11),
(292, 33, 'other_deduction', 'text', 'Other Deduction', 0, 1, 1, 1, 1, 1, '{}', 15),
(293, 33, 'total_earning', 'text', 'Total Earning', 1, 1, 1, 1, 1, 1, '{}', 16),
(294, 33, 'total_deduction', 'text', 'Total Deduction', 1, 1, 1, 1, 1, 1, '{}', 17),
(295, 33, 'net_earning', 'text', 'Net Earning', 1, 1, 1, 1, 1, 1, '{}', 18),
(296, 33, 'bank_name', 'text', 'Bank Name', 1, 1, 1, 1, 1, 1, '{}', 19),
(297, 33, 'bank_branch', 'text', 'Bank Branch', 1, 1, 1, 1, 1, 1, '{}', 20),
(298, 33, 'account_holder_name', 'text', 'Account Holder Name', 1, 1, 1, 1, 1, 1, '{}', 21),
(299, 33, 'account_id', 'text', 'Account Id', 1, 1, 1, 1, 1, 1, '{}', 22);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-06-14 06:06:38', '2019-06-14 06:06:38'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-06-14 06:06:38', '2019-06-14 06:06:38'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-06-14 06:06:38', '2019-06-14 06:06:38'),
(11, 'department', 'department', 'Department', 'Departments', 'voyager-tag', 'App\\Department', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-16 23:20:07', '2019-06-16 23:21:41'),
(15, 'departments', 'departments', 'Department', 'Departments', 'voyager-categories', 'App\\Department', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-16 23:39:41', '2019-06-18 02:34:45'),
(23, 'attendances', 'attendances', 'Attendance', 'Attendances', 'voyager-check', 'App\\Attendance', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-17 00:31:36', '2019-06-18 22:58:38'),
(24, 'shifts', 'shifts', 'Shift', 'Shifts', 'voyager-helm', 'App\\Shift', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-17 04:08:13', '2019-06-17 23:46:12'),
(25, 'salary', 'salary', 'Salary', 'Manage Salary', NULL, 'App\\Salary', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-17 05:03:32', '2019-06-17 05:03:32'),
(31, 'leave', 'leave', 'Leave', 'Leaves', NULL, 'App\\Leave', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-18 04:23:03', '2019-06-18 04:23:03'),
(33, 'payments', 'payments', 'Payment', 'Payments', NULL, 'App\\Payment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-24 05:47:38', '2019-07-16 01:49:25'),
(34, 'punch_types', 'punch-types', 'Punch Type', 'Punch Types', NULL, 'App\\PunchType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-27 05:38:02', '2019-06-27 05:38:02'),
(36, 'employee_salary_structure', 'employee-salary-structure', 'Employee Salary Structure', 'Employee Salary Structures', NULL, 'App\\EmployeeSalaryStructure', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-27 23:01:04', '2019-06-27 23:01:04'),
(41, 'salaries', 'salaries', 'Salary', 'Salaries', NULL, 'App\\Salary', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-06-30 23:39:07', '2019-06-30 23:39:07'),
(44, 'entitlements', 'entitlements', 'Entitlement', 'Entitlements', NULL, 'App\\Entitlement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-04 02:55:09', '2019-07-04 02:55:09'),
(46, 'salary_structure_entitlements', 'salary-structure-entitlements', 'Salary Structure Entitlement', 'Salary Structure Entitlements', NULL, 'App\\SalaryStructureEntitlement', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 03:21:47', '2019-07-08 02:24:40'),
(47, 'salary_sturcture', 'salary-sturcture', 'Salary Sturcture', 'Salary Sturctures', NULL, 'App\\SalarySturcture', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-04 03:21:58', '2019-07-04 03:21:58'),
(50, 'salary_structures', 'salary-structures', 'Salary Structure', 'Salary Structures', NULL, 'App\\SalaryStructure', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 23:47:25', '2019-07-09 00:04:05'),
(51, 'employee_salary_structures', 'employee-salary-structures', 'Employee Salary Structure', 'Employee Salary Structures', NULL, 'App\\EmployeeSalaryStructure', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-05 01:39:18', '2019-07-05 01:41:33'),
(52, 'employees', 'employees', 'Employee', 'Employees', NULL, 'App\\Employee', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-05 01:49:53', '2019-07-05 01:59:09'),
(53, 'deductions', 'deductions', 'Deduction', 'Deductions', NULL, 'App\\Deduction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-10 00:40:41', '2019-07-10 00:41:59'),
(55, 'bank_detials', 'bank-detials', 'Bank Detial', 'Bank Detials', NULL, 'App\\BankDetial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-16 00:39:24', '2019-07-16 00:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `payment_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `type`, `amount`, `payment_id`, `created_at`, `updated_at`) VALUES
(8, 'Loan', 1000, 16, '2019-07-16 02:30:53', '2019-07-16 02:30:53'),
(9, 'Absent', 500, 16, '2019-07-16 02:30:53', '2019-07-16 02:30:53'),
(10, 'Loan', 5555, 17, '2019-07-16 05:56:54', '2019-07-16 05:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_head` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `department_head`, `created_at`, `updated_at`) VALUES
(1, 'Computing', 'Deepak Karna', '2019-06-16 23:40:56', '2019-06-16 23:40:56'),
(2, 'Management', 'Binod Poudel', '2019-06-17 00:21:46', '2019-06-17 00:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `employee_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT '0',
  `shift_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `employee_name`, `gender`, `email`, `address`, `created_at`, `updated_at`, `image`, `department_id`, `shift_id`) VALUES
(4, '111C', 'Sonam Sherpa', 'M', 'sonam.sherpa1980@gmail.com', 'Kapan, Kathmandu', '2019-06-16 23:56:00', '2019-07-04 00:34:22', 'employees\\July2019\\BcNPKlp3fl6zjWd1GKC8.png', 1, 1),
(5, '112C', 'Rahul David', 'M', 'rahul@gmail.com', 'Kathmandu, Nepal', '2019-06-17 00:18:01', '2019-06-17 00:18:01', 'employees\\June2019\\VBk0Hzk1xDZTYwpus0CJ.png', 1, NULL),
(6, '113C', 'Kumari Karki', 'F', 'karkime@gmail.com', 'Chyasal, Patan', '2019-06-17 00:22:00', '2019-06-17 00:23:33', 'employees\\June2019\\Pkwjm2ofFFfAvsdrexdQ.png', 2, NULL),
(7, '100D', 'Kura Kani', 'M', 'kura@gmail.com', 'Kathmandu, Nepal', '2019-06-17 04:49:01', '2019-06-17 04:49:01', 'employees\\June2019\\GnD115DpQmY08ixUPIZ6.png', 2, 1),
(8, '101D', 'Kailash Basnet', 'M', 'kailash@gmail.com', 'Chabahill, Kathmandu', '2019-06-17 05:44:46', '2019-06-17 05:44:46', NULL, 1, 2),
(9, '102D', 'Manoj Kumar', 'M', 'kumar@manoj.com', 'Chabahill, Kathmandu', '2019-06-17 23:42:54', '2019-06-17 23:42:54', 'employees\\June2019\\UCyIq9nv7NB7VF0atGXy.png', 2, 1),
(10, '200E', 'Madav Kumar Rai', 'M', 'madav@gmail.com', 'Chabahill, Kathmandu', '2019-06-24 01:07:00', '2019-06-24 01:33:17', 'employees\\June2019\\AgQYLT9QYuYjKZmPA6YF.jpg', 2, 2),
(11, '201E', 'Manoj Kaak', 'M', 'manojK@gmail.com', 'kapan', '2019-07-04 00:33:00', '2019-07-04 00:33:55', 'employees\\July2019\\QF4fZtK605DmWgzqUn8b.JPG', 2, 2),
(12, '206E', 'Suman Johsi', 'M', 'suman@gmail.com', 'Kathmandu', '2019-07-04 00:39:00', '2019-07-04 00:39:46', 'employees\\July2019\\cMMgpd8a5wud6ZbeXCxx.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_structures`
--

CREATE TABLE `employee_salary_structures` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `salary_structure_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salary_structures`
--

INSERT INTO `employee_salary_structures` (`id`, `employee_id`, `salary_structure_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2019-06-27 23:07:00', '2019-06-30 23:46:56'),
(2, 6, 1, '2019-07-04 00:05:06', '2019-07-04 00:05:06'),
(4, 4, 4, '2019-07-05 01:45:48', '2019-07-05 01:45:48');

-- --------------------------------------------------------

--
-- Table structure for table `entitlements`
--

CREATE TABLE `entitlements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entitlements`
--

INSERT INTO `entitlements` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'Lunch Allowance', '2019-07-04 02:56:07', '2019-07-04 02:56:07'),
(7, 'Entertainment Allowance', '2019-07-04 02:56:28', '2019-07-04 02:56:28'),
(8, 'Medical Allowance', '2019-07-04 02:56:42', '2019-07-04 02:56:42'),
(9, 'Provident Fund', '2019-07-04 02:56:57', '2019-07-04 02:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-06-14 06:06:44', '2019-06-14 06:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-home', '#000000', NULL, 1, '2019-06-14 06:06:45', '2019-06-20 02:36:12', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2019-06-14 06:06:45', '2019-06-21 02:15:37', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2019-06-14 06:06:45', '2019-06-21 02:15:37', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2019-06-14 06:06:45', '2019-06-21 02:15:38', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2019-06-14 06:06:45', '2019-06-24 05:48:12', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-06-14 06:06:45', '2019-06-16 23:11:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-06-14 06:06:45', '2019-06-16 23:11:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-06-14 06:06:45', '2019-06-16 23:11:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-06-14 06:06:45', '2019-06-16 23:11:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2019-06-14 06:06:46', '2019-06-24 05:48:13', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-06-14 06:06:55', '2019-06-16 23:11:38', 'voyager.hooks', NULL),
(17, 1, 'Departments', '', '_self', 'voyager-categories', '#000000', NULL, 2, '2019-06-16 23:39:41', '2019-06-21 02:15:37', 'voyager.departments.index', 'null'),
(22, 1, 'Attendances', '', '_self', 'voyager-check', '#000000', 29, 2, '2019-06-17 00:31:37', '2019-06-27 00:04:03', 'attendances.index', 'null'),
(23, 1, 'Shifts', '', '_self', 'voyager-helm', '#000000', 29, 4, '2019-06-17 04:08:15', '2019-06-21 00:37:24', 'voyager.shifts.index', 'null'),
(24, 1, 'Payroll Management', '', '_self', 'voyager-logbook', '#000000', NULL, 4, '2019-06-17 04:56:58', '2019-06-21 02:15:37', NULL, ''),
(29, 1, 'Employees', '', '_self', 'voyager-people', '#000000', NULL, 3, '2019-06-18 02:29:05', '2019-06-21 02:15:37', NULL, ''),
(33, 1, 'Payslips', '/admin/payslip', '_self', NULL, '#000000', 24, 3, '2019-06-21 02:15:29', '2019-06-24 05:48:12', NULL, ''),
(34, 1, 'Payments', '', '_self', NULL, NULL, 24, 2, '2019-06-24 05:47:40', '2019-06-24 05:48:11', 'voyager.payments.index', NULL),
(35, 1, 'Punch Types', '', '_self', NULL, NULL, NULL, 10, '2019-06-27 05:38:03', '2019-06-27 05:38:03', 'voyager.punch-types.index', NULL),
(44, 1, 'Entitlements', '', '_self', NULL, NULL, NULL, 15, '2019-07-04 02:55:10', '2019-07-04 02:55:10', 'voyager.entitlements.index', NULL),
(45, 1, 'Salary Structure Entitlements', '', '_self', NULL, NULL, NULL, 16, '2019-07-04 03:21:48', '2019-07-04 03:21:48', 'voyager.salary-structure-entitlements.index', NULL),
(48, 1, 'Salary Structures', '', '_self', NULL, NULL, NULL, 19, '2019-07-04 23:47:26', '2019-07-04 23:47:26', 'voyager.salary-structures.index', NULL),
(49, 1, 'Employee Salary Structures', '', '_self', NULL, NULL, NULL, 20, '2019-07-05 01:39:19', '2019-07-05 01:39:19', 'voyager.employee-salary-structures.index', NULL),
(50, 1, 'Employees', '', '_self', NULL, NULL, NULL, 21, '2019-07-05 01:49:53', '2019-07-05 01:49:53', 'voyager.employees.index', NULL),
(51, 1, 'Deductions', '', '_self', NULL, NULL, NULL, 22, '2019-07-10 00:40:45', '2019-07-10 00:40:45', 'voyager.deductions.index', NULL),
(52, 1, 'Bank Detials', '', '_self', NULL, NULL, NULL, 23, '2019-07-16 00:39:25', '2019-07-16 00:39:25', 'voyager.bank-detials.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_06_24_112002_create_payments_table', 2),
(27, '2019_06_24_113023_create_payments_table', 3),
(28, '2019_06_26_095122_create_attendances_table', 3),
(29, '2019_06_27_052407_create_attendances_table', 4),
(30, '2019_06_27_052437_create_attendance_details_table', 5),
(31, '2019_06_27_061409_create_attendances_table', 6),
(32, '2019_06_27_061455_create_attendance_details_table', 6),
(33, '2019_07_04_063540_update_employee_id_in_attendances', 7),
(34, '2019_07_09_105907_create_payments_table', 8),
(35, '2019_07_09_113939_add_lunch_allowance_in_payments_table', 9),
(36, '2019_07_10_050749_create_payments_table', 10),
(37, '2019_07_10_051914_create_payments_table', 11),
(38, '2019_07_10_052628_create_payments_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_till` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport_allowance` double DEFAULT NULL,
  `medical_allowance` double DEFAULT NULL,
  `entertainment_allowance` double DEFAULT NULL,
  `lunch_allowance` double DEFAULT NULL,
  `provident_fund` double DEFAULT NULL,
  `tax` double NOT NULL,
  `other_deduction` double DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `total_earning` double NOT NULL,
  `total_deduction` double NOT NULL,
  `net_earning` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_holder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `employee_id`, `employee_name`, `designation`, `payment_from`, `payment_till`, `basic_salary`, `transport_allowance`, `medical_allowance`, `entertainment_allowance`, `lunch_allowance`, `provident_fund`, `tax`, `other_deduction`, `bonus`, `total_earning`, `total_deduction`, `net_earning`, `created_at`, `updated_at`, `bank_name`, `bank_branch`, `account_holder_name`, `account_id`) VALUES
(16, '113C', 'Kumari Karki', 'Senior Web Developer', '2019-07-01', '2019-07-31', '50000', NULL, 200, 500, 5000, 2500, 79.3, NULL, 100, 58300, 79.3, 58220.7, '2019-07-16 02:30:53', '2019-07-16 02:30:53', 'NMB Bank', 'Sinamangal, Kathmandu', 'Kumari Karki', '203423420003024001'),
(17, '113C', 'Kumari Karki', 'Senior Web Developer', '2019-07-01', '2000-02-29', '50000', NULL, 0, 500, 5000, 2500, 79.3, NULL, 2025, 60000, 79.3, 59920.7, '2019-07-16 05:56:53', '2019-07-16 05:56:53', 'NMB Bank', 'Sinamangal, Kathmandu', 'Kumari Karki', '203423420003024001');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-06-14 06:06:46', '2019-06-14 06:06:46'),
(2, 'browse_bread', NULL, '2019-06-14 06:06:46', '2019-06-14 06:06:46'),
(3, 'browse_database', NULL, '2019-06-14 06:06:46', '2019-06-14 06:06:46'),
(4, 'browse_media', NULL, '2019-06-14 06:06:46', '2019-06-14 06:06:46'),
(5, 'browse_compass', NULL, '2019-06-14 06:06:46', '2019-06-14 06:06:46'),
(6, 'browse_menus', 'menus', '2019-06-14 06:06:47', '2019-06-14 06:06:47'),
(7, 'read_menus', 'menus', '2019-06-14 06:06:47', '2019-06-14 06:06:47'),
(8, 'edit_menus', 'menus', '2019-06-14 06:06:47', '2019-06-14 06:06:47'),
(9, 'add_menus', 'menus', '2019-06-14 06:06:47', '2019-06-14 06:06:47'),
(10, 'delete_menus', 'menus', '2019-06-14 06:06:47', '2019-06-14 06:06:47'),
(11, 'browse_roles', 'roles', '2019-06-14 06:06:47', '2019-06-14 06:06:47'),
(12, 'read_roles', 'roles', '2019-06-14 06:06:48', '2019-06-14 06:06:48'),
(13, 'edit_roles', 'roles', '2019-06-14 06:06:48', '2019-06-14 06:06:48'),
(14, 'add_roles', 'roles', '2019-06-14 06:06:48', '2019-06-14 06:06:48'),
(15, 'delete_roles', 'roles', '2019-06-14 06:06:48', '2019-06-14 06:06:48'),
(16, 'browse_users', 'users', '2019-06-14 06:06:48', '2019-06-14 06:06:48'),
(17, 'read_users', 'users', '2019-06-14 06:06:48', '2019-06-14 06:06:48'),
(18, 'edit_users', 'users', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(19, 'add_users', 'users', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(20, 'delete_users', 'users', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(21, 'browse_settings', 'settings', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(22, 'read_settings', 'settings', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(23, 'edit_settings', 'settings', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(24, 'add_settings', 'settings', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(25, 'delete_settings', 'settings', '2019-06-14 06:06:49', '2019-06-14 06:06:49'),
(26, 'browse_hooks', NULL, '2019-06-14 06:06:55', '2019-06-14 06:06:55'),
(32, 'browse_department', 'department', '2019-06-16 23:20:07', '2019-06-16 23:20:07'),
(33, 'read_department', 'department', '2019-06-16 23:20:07', '2019-06-16 23:20:07'),
(34, 'edit_department', 'department', '2019-06-16 23:20:07', '2019-06-16 23:20:07'),
(35, 'add_department', 'department', '2019-06-16 23:20:07', '2019-06-16 23:20:07'),
(36, 'delete_department', 'department', '2019-06-16 23:20:07', '2019-06-16 23:20:07'),
(52, 'browse_departments', 'departments', '2019-06-16 23:39:41', '2019-06-16 23:39:41'),
(53, 'read_departments', 'departments', '2019-06-16 23:39:41', '2019-06-16 23:39:41'),
(54, 'edit_departments', 'departments', '2019-06-16 23:39:41', '2019-06-16 23:39:41'),
(55, 'add_departments', 'departments', '2019-06-16 23:39:41', '2019-06-16 23:39:41'),
(56, 'delete_departments', 'departments', '2019-06-16 23:39:41', '2019-06-16 23:39:41'),
(72, 'browse_attendances', 'attendances', '2019-06-17 00:31:37', '2019-06-17 00:31:37'),
(73, 'read_attendances', 'attendances', '2019-06-17 00:31:37', '2019-06-17 00:31:37'),
(74, 'edit_attendances', 'attendances', '2019-06-17 00:31:37', '2019-06-17 00:31:37'),
(75, 'add_attendances', 'attendances', '2019-06-17 00:31:37', '2019-06-17 00:31:37'),
(76, 'delete_attendances', 'attendances', '2019-06-17 00:31:37', '2019-06-17 00:31:37'),
(77, 'browse_shifts', 'shifts', '2019-06-17 04:08:14', '2019-06-17 04:08:14'),
(78, 'read_shifts', 'shifts', '2019-06-17 04:08:14', '2019-06-17 04:08:14'),
(79, 'edit_shifts', 'shifts', '2019-06-17 04:08:14', '2019-06-17 04:08:14'),
(80, 'add_shifts', 'shifts', '2019-06-17 04:08:14', '2019-06-17 04:08:14'),
(81, 'delete_shifts', 'shifts', '2019-06-17 04:08:14', '2019-06-17 04:08:14'),
(82, 'browse_salary', 'salary', '2019-06-17 05:03:32', '2019-06-17 05:03:32'),
(83, 'read_salary', 'salary', '2019-06-17 05:03:32', '2019-06-17 05:03:32'),
(84, 'edit_salary', 'salary', '2019-06-17 05:03:32', '2019-06-17 05:03:32'),
(85, 'add_salary', 'salary', '2019-06-17 05:03:32', '2019-06-17 05:03:32'),
(86, 'delete_salary', 'salary', '2019-06-17 05:03:32', '2019-06-17 05:03:32'),
(102, 'browse_leave', 'leave', '2019-06-18 04:23:04', '2019-06-18 04:23:04'),
(103, 'read_leave', 'leave', '2019-06-18 04:23:04', '2019-06-18 04:23:04'),
(104, 'edit_leave', 'leave', '2019-06-18 04:23:04', '2019-06-18 04:23:04'),
(105, 'add_leave', 'leave', '2019-06-18 04:23:04', '2019-06-18 04:23:04'),
(106, 'delete_leave', 'leave', '2019-06-18 04:23:04', '2019-06-18 04:23:04'),
(112, 'browse_payments', 'payments', '2019-06-24 05:47:39', '2019-06-24 05:47:39'),
(113, 'read_payments', 'payments', '2019-06-24 05:47:39', '2019-06-24 05:47:39'),
(114, 'edit_payments', 'payments', '2019-06-24 05:47:39', '2019-06-24 05:47:39'),
(115, 'add_payments', 'payments', '2019-06-24 05:47:39', '2019-06-24 05:47:39'),
(116, 'delete_payments', 'payments', '2019-06-24 05:47:39', '2019-06-24 05:47:39'),
(117, 'browse_punch_types', 'punch_types', '2019-06-27 05:38:02', '2019-06-27 05:38:02'),
(118, 'read_punch_types', 'punch_types', '2019-06-27 05:38:02', '2019-06-27 05:38:02'),
(119, 'edit_punch_types', 'punch_types', '2019-06-27 05:38:02', '2019-06-27 05:38:02'),
(120, 'add_punch_types', 'punch_types', '2019-06-27 05:38:02', '2019-06-27 05:38:02'),
(121, 'delete_punch_types', 'punch_types', '2019-06-27 05:38:02', '2019-06-27 05:38:02'),
(122, 'browse_employee_salary_structure', 'employee_salary_structure', '2019-06-27 23:01:04', '2019-06-27 23:01:04'),
(123, 'read_employee_salary_structure', 'employee_salary_structure', '2019-06-27 23:01:04', '2019-06-27 23:01:04'),
(124, 'edit_employee_salary_structure', 'employee_salary_structure', '2019-06-27 23:01:04', '2019-06-27 23:01:04'),
(125, 'add_employee_salary_structure', 'employee_salary_structure', '2019-06-27 23:01:04', '2019-06-27 23:01:04'),
(126, 'delete_employee_salary_structure', 'employee_salary_structure', '2019-06-27 23:01:04', '2019-06-27 23:01:04'),
(147, 'browse_salaries', 'salaries', '2019-06-30 23:39:07', '2019-06-30 23:39:07'),
(148, 'read_salaries', 'salaries', '2019-06-30 23:39:07', '2019-06-30 23:39:07'),
(149, 'edit_salaries', 'salaries', '2019-06-30 23:39:07', '2019-06-30 23:39:07'),
(150, 'add_salaries', 'salaries', '2019-06-30 23:39:07', '2019-06-30 23:39:07'),
(151, 'delete_salaries', 'salaries', '2019-06-30 23:39:07', '2019-06-30 23:39:07'),
(162, 'browse_entitlements', 'entitlements', '2019-07-04 02:55:10', '2019-07-04 02:55:10'),
(163, 'read_entitlements', 'entitlements', '2019-07-04 02:55:10', '2019-07-04 02:55:10'),
(164, 'edit_entitlements', 'entitlements', '2019-07-04 02:55:10', '2019-07-04 02:55:10'),
(165, 'add_entitlements', 'entitlements', '2019-07-04 02:55:10', '2019-07-04 02:55:10'),
(166, 'delete_entitlements', 'entitlements', '2019-07-04 02:55:10', '2019-07-04 02:55:10'),
(167, 'browse_salary_structure_entitlements', 'salary_structure_entitlements', '2019-07-04 03:21:48', '2019-07-04 03:21:48'),
(168, 'read_salary_structure_entitlements', 'salary_structure_entitlements', '2019-07-04 03:21:48', '2019-07-04 03:21:48'),
(169, 'edit_salary_structure_entitlements', 'salary_structure_entitlements', '2019-07-04 03:21:48', '2019-07-04 03:21:48'),
(170, 'add_salary_structure_entitlements', 'salary_structure_entitlements', '2019-07-04 03:21:48', '2019-07-04 03:21:48'),
(171, 'delete_salary_structure_entitlements', 'salary_structure_entitlements', '2019-07-04 03:21:48', '2019-07-04 03:21:48'),
(172, 'browse_salary_sturcture', 'salary_sturcture', '2019-07-04 03:21:58', '2019-07-04 03:21:58'),
(173, 'read_salary_sturcture', 'salary_sturcture', '2019-07-04 03:21:58', '2019-07-04 03:21:58'),
(174, 'edit_salary_sturcture', 'salary_sturcture', '2019-07-04 03:21:58', '2019-07-04 03:21:58'),
(175, 'add_salary_sturcture', 'salary_sturcture', '2019-07-04 03:21:58', '2019-07-04 03:21:58'),
(176, 'delete_salary_sturcture', 'salary_sturcture', '2019-07-04 03:21:58', '2019-07-04 03:21:58'),
(182, 'browse_salary_structures', 'salary_structures', '2019-07-04 23:47:25', '2019-07-04 23:47:25'),
(183, 'read_salary_structures', 'salary_structures', '2019-07-04 23:47:25', '2019-07-04 23:47:25'),
(184, 'edit_salary_structures', 'salary_structures', '2019-07-04 23:47:25', '2019-07-04 23:47:25'),
(185, 'add_salary_structures', 'salary_structures', '2019-07-04 23:47:26', '2019-07-04 23:47:26'),
(186, 'delete_salary_structures', 'salary_structures', '2019-07-04 23:47:26', '2019-07-04 23:47:26'),
(187, 'browse_employee_salary_structures', 'employee_salary_structures', '2019-07-05 01:39:18', '2019-07-05 01:39:18'),
(188, 'read_employee_salary_structures', 'employee_salary_structures', '2019-07-05 01:39:18', '2019-07-05 01:39:18'),
(189, 'edit_employee_salary_structures', 'employee_salary_structures', '2019-07-05 01:39:18', '2019-07-05 01:39:18'),
(190, 'add_employee_salary_structures', 'employee_salary_structures', '2019-07-05 01:39:18', '2019-07-05 01:39:18'),
(191, 'delete_employee_salary_structures', 'employee_salary_structures', '2019-07-05 01:39:18', '2019-07-05 01:39:18'),
(192, 'browse_employees', 'employees', '2019-07-05 01:49:53', '2019-07-05 01:49:53'),
(193, 'read_employees', 'employees', '2019-07-05 01:49:53', '2019-07-05 01:49:53'),
(194, 'edit_employees', 'employees', '2019-07-05 01:49:53', '2019-07-05 01:49:53'),
(195, 'add_employees', 'employees', '2019-07-05 01:49:53', '2019-07-05 01:49:53'),
(196, 'delete_employees', 'employees', '2019-07-05 01:49:53', '2019-07-05 01:49:53'),
(197, 'browse_deductions', 'deductions', '2019-07-10 00:40:44', '2019-07-10 00:40:44'),
(198, 'read_deductions', 'deductions', '2019-07-10 00:40:44', '2019-07-10 00:40:44'),
(199, 'edit_deductions', 'deductions', '2019-07-10 00:40:44', '2019-07-10 00:40:44'),
(200, 'add_deductions', 'deductions', '2019-07-10 00:40:44', '2019-07-10 00:40:44'),
(201, 'delete_deductions', 'deductions', '2019-07-10 00:40:44', '2019-07-10 00:40:44'),
(202, 'browse_bank_detials', 'bank_detials', '2019-07-16 00:39:24', '2019-07-16 00:39:24'),
(203, 'read_bank_detials', 'bank_detials', '2019-07-16 00:39:24', '2019-07-16 00:39:24'),
(204, 'edit_bank_detials', 'bank_detials', '2019-07-16 00:39:24', '2019-07-16 00:39:24'),
(205, 'add_bank_detials', 'bank_detials', '2019-07-16 00:39:24', '2019-07-16 00:39:24'),
(206, 'delete_bank_detials', 'bank_detials', '2019-07-16 00:39:24', '2019-07-16 00:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1);

-- --------------------------------------------------------

--
-- Table structure for table `punch_types`
--

CREATE TABLE `punch_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `punch_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `punch_types`
--

INSERT INTO `punch_types` (`id`, `punch_type`, `created_at`, `updated_at`) VALUES
(1, 'Check In', '2019-06-27 05:38:44', '2019-06-27 05:38:44'),
(2, 'Check Out', '2019-06-27 05:38:58', '2019-06-27 05:38:58'),
(3, 'Lunch In', '2019-06-27 05:39:08', '2019-06-27 05:39:08'),
(4, 'Lunch Out', '2019-06-27 05:39:19', '2019-06-27 05:39:19');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-06-14 06:06:46', '2019-06-14 06:06:46'),
(2, 'user', 'Normal User', '2019-06-14 06:06:46', '2019-06-14 06:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `salary_structures`
--

CREATE TABLE `salary_structures` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `basic_salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_structures`
--

INSERT INTO `salary_structures` (`id`, `designation`, `created_at`, `updated_at`, `basic_salary`) VALUES
(1, 'Senior Web Developer', '2019-07-05 01:31:14', '2019-07-05 01:31:14', 50000),
(3, 'Junior Web Developer', '2019-07-05 01:31:37', '2019-07-05 01:31:37', 20000),
(4, 'Marketing Officer', '2019-07-05 01:31:52', '2019-07-05 01:31:52', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `salary_structure_entitlements`
--

CREATE TABLE `salary_structure_entitlements` (
  `id` int(10) UNSIGNED NOT NULL,
  `salary_structure_id` int(11) NOT NULL,
  `entitlement_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daily` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `taxable` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_structure_entitlements`
--

INSERT INTO `salary_structure_entitlements` (`id`, `salary_structure_id`, `entitlement_id`, `created_at`, `updated_at`, `symbol`, `formula`, `daily`, `amount`, `taxable`) VALUES
(3, 4, 7, '2019-07-05 01:44:48', '2019-07-05 01:44:48', 'EA', '(BS * 10) / 100', '', 5, 'Yes'),
(4, 1, 6, '2019-07-05 04:15:00', '2019-07-08 02:25:38', 'LA', '(BS * 10) / 100', NULL, 5, 'Yes'),
(5, 1, 8, '2019-07-05 06:21:00', '2019-07-08 02:22:01', 'MA', NULL, 'Yes', 100, 'Yes'),
(6, 1, 7, '2019-07-08 05:31:28', '2019-07-08 05:31:28', 'EA', NULL, NULL, 500, 'Yes'),
(7, 1, 9, '2019-07-08 05:32:08', '2019-07-08 05:32:08', 'PF', '(5 / 100) * BS', NULL, 5, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2019\\VGldPlQQbYiNK9sZ3wm6.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'ELIT PAYROLL', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'All in a single platform', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `shift` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` time DEFAULT NULL,
  `finish` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `shift`, `start`, `finish`, `created_at`, `updated_at`) VALUES
(1, 'Day', '08:00:00', '14:00:00', '2019-06-17 04:10:00', '2019-06-17 04:38:18'),
(2, 'Night', '14:00:00', '23:00:00', '2019-06-17 04:10:00', '2019-06-17 04:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sonam Sherpa', 'sonam.sherpa1980@gmail.com', 'users/default.png', NULL, '$2y$10$P8ZZoJL320NHQdzO/Xvq2uZkThmylgIt8M1VnoJvlRqxy5WNot4Oi', NULL, '{\"locale\":\"en\"}', '2019-06-14 06:08:43', '2019-06-18 02:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_details_attendance_id_foreign` (`attendance_id`);

--
-- Indexes for table `bank_detials`
--
ALTER TABLE `bank_detials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`) USING BTREE;

--
-- Indexes for table `employee_salary_structures`
--
ALTER TABLE `employee_salary_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entitlements`
--
ALTER TABLE `entitlements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `punch_types`
--
ALTER TABLE `punch_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `salary_structures`
--
ALTER TABLE `salary_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_structure_entitlements`
--
ALTER TABLE `salary_structure_entitlements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `attendance_details`
--
ALTER TABLE `attendance_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `bank_detials`
--
ALTER TABLE `bank_detials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee_salary_structures`
--
ALTER TABLE `employee_salary_structures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `entitlements`
--
ALTER TABLE `entitlements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `punch_types`
--
ALTER TABLE `punch_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salary_structures`
--
ALTER TABLE `salary_structures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary_structure_entitlements`
--
ALTER TABLE `salary_structure_entitlements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD CONSTRAINT `attendance_details_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`);

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
