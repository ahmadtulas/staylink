-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 08:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staylink`
--

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
-- Table structure for table `guest_infos`
--

CREATE TABLE `guest_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pId` bigint(20) NOT NULL,
  `groupId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `check_in_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `roomIds` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roomIds`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_infos`
--

INSERT INTO `guest_infos` (`id`, `pId`, `groupId`, `name`, `contact_number`, `age`, `city`, `country`, `pincode`, `gst_number`, `check_in_date`, `check_out_date`, `roomIds`, `created_at`, `updated_at`) VALUES
(1, 2, '6faa1803-ad1a-4c37-89a5-75b404d712ec', 'Desirae Mclaughlin', 'Atque libero in mole', 34, 'Voluptate quod digni', 'Eum id iure quidem', 'Dicta nesciunt arch', 'Harum lorem in ea qu', '2024-01-10 15:41:00', '2024-01-18 15:41:00', '\"[\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 04:59:17', '2024-01-22 04:59:17'),
(2, 2, '6faa1803-ad1a-4c37-89a5-75b404d712ec', 'May Mccormick', 'Ut aliquip aspernatu', 45, 'Accusantium tenetur', 'Et laudantium qui a', 'Qui nesciunt quam e', 'Pariatur Sit elit', '2024-01-10 15:41:00', '2024-01-18 15:41:00', '\"[\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 04:59:17', '2024-01-22 04:59:17'),
(3, 2, '8573c5bc-b1bc-44d1-a02a-e18afb5fed87', 'Oren Howe', 'Ea illum dolor a cu', 23, 'Esse ut sit saepe qu', 'Sed quam dolore magn', 'Dolore expedita sunt', 'Qui fuga Nihil quas', '2024-01-10 15:41:00', '2024-01-18 15:41:00', '\"[\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 05:03:03', '2024-01-22 05:03:03'),
(4, 2, '5c46f12f-eb3e-4b83-bf0b-e0d326a9240a', 'Penelope Holmes', 'Tempore doloremque', 1, 'Qui et assumenda tem', 'Et magnam dolor aliq', 'Est temporibus dicta', 'Vero ex vitae nihil', '2024-01-10 15:41:00', '2024-01-18 15:41:00', '\"[\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 05:04:43', '2024-01-22 05:04:43'),
(5, 2, '5c46f12f-eb3e-4b83-bf0b-e0d326a9240a', 'Nita David', 'Culpa et dolor repel', 2, 'Minima reprehenderit', 'Provident dicta exp', 'Corporis reprehender', 'Duis quis ullam dign', '2024-01-10 15:41:00', '2024-01-18 15:41:00', '\"[\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 05:04:43', '2024-01-22 05:04:43'),
(6, 2, '5c46f12f-eb3e-4b83-bf0b-e0d326a9240a', 'Ursa Mcgowan', 'Optio consectetur m', 3, 'Harum ut ipsum iste', 'Expedita voluptatem', 'Eum aute est culpa', 'Qui et cumque molest', '2024-01-10 15:41:00', '2024-01-18 15:41:00', '\"[\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 05:04:43', '2024-01-22 05:04:43'),
(7, 2, '5c46f12f-eb3e-4b83-bf0b-e0d326a9240a', 'Robert Bryant', 'Id sed tenetur aute', 2, 'Aspernatur eos rerum', 'Dolore deserunt inci', 'Quis assumenda paria', 'Qui enim recusandae', '2024-01-10 15:41:00', '2024-01-18 15:41:00', '\"[\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 05:04:43', '2024-01-22 05:04:43'),
(8, 2, '8cfd1a07-4b03-48ca-8879-4e9690b10d90', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:37:48', '2024-01-22 07:37:48'),
(9, 2, '8cfd1a07-4b03-48ca-8879-4e9690b10d90', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:37:48', '2024-01-22 07:37:48'),
(10, 2, '0774ea7a-46f0-4f92-b4dd-45cf18178b75', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:39:06', '2024-01-22 07:39:06'),
(11, 2, '0774ea7a-46f0-4f92-b4dd-45cf18178b75', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:39:06', '2024-01-22 07:39:06'),
(12, 2, '3ac5c2fb-3c29-424d-943f-2ebd6e37459a', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:41:15', '2024-01-22 07:41:15'),
(13, 2, '3ac5c2fb-3c29-424d-943f-2ebd6e37459a', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:41:15', '2024-01-22 07:41:15'),
(14, 2, '456442e7-2cf6-498e-88d3-69a4e702d7f2', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:41:54', '2024-01-22 07:41:54'),
(15, 2, '456442e7-2cf6-498e-88d3-69a4e702d7f2', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:41:55', '2024-01-22 07:41:55'),
(16, 2, 'c56544d0-6c7a-4e40-8336-a274b4836c1d', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:42:42', '2024-01-22 07:42:42'),
(17, 2, 'c56544d0-6c7a-4e40-8336-a274b4836c1d', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:42:42', '2024-01-22 07:42:42'),
(18, 2, 'd1906416-21e6-4b01-93c3-6e8aac21fa16', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:43:34', '2024-01-22 07:43:34'),
(19, 2, 'd1906416-21e6-4b01-93c3-6e8aac21fa16', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:43:34', '2024-01-22 07:43:34'),
(20, 2, '7a3b2432-13cc-40e1-98a2-c1bc005356b6', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:55:03', '2024-01-22 07:55:03'),
(21, 2, '7a3b2432-13cc-40e1-98a2-c1bc005356b6', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:55:03', '2024-01-22 07:55:03'),
(22, 2, '3c51a8b6-604a-4b73-8318-de93bfb1d354', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:58:07', '2024-01-22 07:58:07'),
(23, 2, '3c51a8b6-604a-4b73-8318-de93bfb1d354', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:58:07', '2024-01-22 07:58:07'),
(24, 2, 'fce5dbe7-009e-4807-ae86-dc02aaa0e49f', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:58:19', '2024-01-22 07:58:19'),
(25, 2, 'fce5dbe7-009e-4807-ae86-dc02aaa0e49f', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:58:19', '2024-01-22 07:58:19'),
(26, 2, '3ae321c8-4882-408f-b7d2-54b9f19db1e3', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:58:42', '2024-01-22 07:58:42'),
(27, 2, '3ae321c8-4882-408f-b7d2-54b9f19db1e3', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:58:42', '2024-01-22 07:58:42'),
(28, 2, '49db502c-e6c1-46f1-9dae-2fc7a4573eea', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:59:28', '2024-01-22 07:59:28'),
(29, 2, '49db502c-e6c1-46f1-9dae-2fc7a4573eea', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:59:28', '2024-01-22 07:59:28'),
(30, 2, '0c370502-e277-4933-9154-72ef75714056', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:59:56', '2024-01-22 07:59:56'),
(31, 2, '0c370502-e277-4933-9154-72ef75714056', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 07:59:56', '2024-01-22 07:59:56'),
(32, 2, 'fd22a4bc-34b2-4ab5-b53a-3d596cc8da7d', 'Aizaz Ahmad', '9758837313', 32, 'Dehradun', 'India', '248001', 'GST-23434', '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 08:00:12', '2024-01-22 08:00:12'),
(33, 2, 'fd22a4bc-34b2-4ab5-b53a-3d596cc8da7d', 'Aizaz Ahmad', '9412304015', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-09 18:36:00', '2024-01-18 18:36:00', '\"[\\\"3\\\",\\\"4\\\",\\\"5\\\"]\"', '2024-01-22 08:00:12', '2024-01-22 08:00:12'),
(34, 2, '52a7122b-b1a7-48a1-8e01-f74b09ff36ba', 'Aizaz Ahmad', '9758837313', 21, 'Dehradun', 'India', '248001', NULL, '2024-01-18 22:42:00', '2024-01-27 22:42:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-22 11:42:55', '2024-01-22 11:42:55'),
(35, 2, 'e4a25b14-5ab7-4c17-94c7-b983a4971326', 'Aizaz Ahmad', '9758837313', 21, 'Dehradun', 'India', '248001', NULL, '2024-01-18 22:42:00', '2024-01-27 22:42:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-22 11:45:46', '2024-01-22 11:45:46'),
(36, 2, '8de79d65-fb32-47af-b2a4-1bebf6606f8c', 'Aizaz Ahmad', '9758837313', 21, 'Dehradun', 'India', '248001', NULL, '2024-01-18 22:42:00', '2024-01-27 22:42:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-22 11:46:02', '2024-01-22 11:46:02'),
(37, 2, '85948b95-de11-45d3-8172-dbbbef6a55db', 'Aizaz Ahmad', '9758837313', 21, 'Dehradun', 'India', '248001', NULL, '2024-01-18 22:42:00', '2024-01-27 22:42:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-22 11:46:18', '2024-01-22 11:46:18'),
(38, 2, '598a297e-624e-4376-ac89-b66754c2047f', 'Aizaz Ahmad', '9758837313', 21, 'Dehradun', 'India', '248001', NULL, '2024-01-18 22:42:00', '2024-01-27 22:42:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-22 12:18:35', '2024-01-22 12:18:35'),
(39, 2, '0d7ead0a-ad23-4e5c-a429-0092875ea9f0', 'Ahmad Jamal', '7253820400', NULL, NULL, NULL, NULL, NULL, '2024-01-24 11:04:00', '2024-01-25 11:04:00', '\"[\\\"2\\\"]\"', '2024-01-23 00:05:20', '2024-01-23 00:05:20'),
(40, 2, 'def1a405-4c07-4b0e-83d7-cd5d1ec91149', 'GIrish', '9758837313', 35, 'Dehradun', 'India', '248001', 'GST-0034', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 01:47:01', '2024-01-23 01:47:01'),
(41, 2, '6dea87fc-b169-4ced-9325-952309182c2c', 'GIrish', '9758837313', 35, 'Dehradun', 'India', '248001', 'GST-0034', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 01:50:54', '2024-01-23 01:50:54'),
(42, 2, 'd9612725-3a4d-4c93-a06f-7e4df96b4cc1', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:35:06', '2024-01-23 03:35:06'),
(43, 2, 'ff81045a-e446-45e1-85e7-718c71153f12', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:46:53', '2024-01-23 03:46:53'),
(44, 2, 'bcc2445e-d1bf-4358-9055-bd5ceae104df', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:51:46', '2024-01-23 03:51:46'),
(45, 2, '99e276a1-7a82-4c48-8e6a-b25b4b5ef57a', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:52:05', '2024-01-23 03:52:05'),
(46, 2, 'a1813606-2ea7-4e7d-888c-2a2b90135644', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:54:36', '2024-01-23 03:54:36'),
(47, 2, 'b4776409-51b1-41cc-b6ae-9bfde7926f98', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:55:05', '2024-01-23 03:55:05'),
(48, 2, 'd2d83e73-bf79-4b33-b611-f2de54308df8', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:55:14', '2024-01-23 03:55:14'),
(49, 2, 'd300a5ff-9645-4974-9645-bf0e5dcc48a8', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:55:28', '2024-01-23 03:55:28'),
(50, 2, 'ad774a3f-b01a-4240-861c-4de6e6beddc8', 'Heather Kim', 'Non asperiores cumqu', 45, 'Est et et consequunt', 'Non in quia ab quo l', 'Beatae laboriosam q', 'Ut sequi libero erro', '2024-01-17 12:29:00', '2024-01-26 12:29:00', '\"[\\\"3\\\",\\\"4\\\"]\"', '2024-01-23 03:55:37', '2024-01-23 03:55:37'),
(51, 2, '3e8c9b37-558e-4457-b4ce-48634aff30e7', 'Aizaz Ahmad', '9758837313', 45, 'Dehradun', 'India', '248001', NULL, '2024-01-03 15:46:00', '2024-01-18 15:46:00', '\"[\\\"1\\\",\\\"4\\\",\\\"5\\\",\\\"6\\\"]\"', '2024-01-23 09:18:42', '2024-01-23 09:18:42'),
(52, 2, '1502ba3e-87f1-4b02-b1e8-7301cf9023f6', 'Aizaz Ahmad', '9758837313', 21, 'Dehradun', 'India', '248001', NULL, '2024-01-11 21:45:00', '2024-01-18 21:45:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-23 10:45:44', '2024-01-23 10:45:44'),
(53, 2, '3ef2ba9e-534e-43b4-a574-1c623bac4548', 'Lysandra Cote', 'Ut est nisi voluptat', 55, 'Sunt dolore non ut t', 'Voluptatem quibusda', 'Rerum dicta consequa', 'Nihil adipisci quis', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 10:26:58', '2024-01-24 10:26:58'),
(54, 2, '31bd5348-d52b-4afc-a7c3-bada80fe703a', 'Lysandra Cote', 'Ut est nisi voluptat', 55, 'Sunt dolore non ut t', 'Voluptatem quibusda', 'Rerum dicta consequa', 'Nihil adipisci quis', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 10:27:44', '2024-01-24 10:27:44'),
(55, 2, '13be6e6c-5991-41e9-a468-3ba5a477f2cb', 'Lysandra Cote', 'Ut est nisi voluptat', 55, 'Sunt dolore non ut t', 'Voluptatem quibusda', 'Rerum dicta consequa', 'Nihil adipisci quis', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 10:28:49', '2024-01-24 10:28:49'),
(56, 2, '92ff6dc8-bb42-43d3-a89f-a5c094597969', 'Lysandra Cote', 'Ut est nisi voluptat', 55, 'Sunt dolore non ut t', 'Voluptatem quibusda', 'Rerum dicta consequa', 'Nihil adipisci quis', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 10:29:16', '2024-01-24 10:29:16'),
(57, 2, '3fb0c3e7-606b-4e5e-ad4d-0dbbef8d2ec4', 'Lysandra Cote', 'Ut est nisi voluptat', 55, 'Sunt dolore non ut t', 'Voluptatem quibusda', 'Rerum dicta consequa', 'Nihil adipisci quis', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 10:29:20', '2024-01-24 10:29:20'),
(58, 2, '7674740a-d522-4d52-b55c-2b963a5b7754', 'Lysandra Cote', 'Ut est nisi voluptat', 101, 'Sunt dolore non ut t', 'Voluptatem quibusda', 'Rerum dicta consequa', 'Nihil adipisci quis', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 10:32:41', '2024-01-24 10:32:41'),
(59, 2, '473a9136-0503-461e-80ba-ab17611edc33', 'Lysandra Cote', 'Ut est nisi voluptat', 101, 'Sunt dolore non ut t', 'Voluptatem quibusda', 'Rerum dicta consequa', 'Nihil adipisci quis', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 12:14:04', '2024-01-24 12:14:04'),
(60, 2, '844fd160-8e5b-4c0a-8679-3c57acf9e0c8', 'Aizaz Ahmad', '9758837313', 25, 'Dehradun', 'India', '248001', '5466858', '2024-01-11 21:26:00', '2024-01-25 21:26:00', '\"[\\\"1\\\",\\\"4\\\"]\"', '2024-01-24 12:15:18', '2024-01-24 12:15:18'),
(61, 2, 'ebb0fc03-524e-414a-ad0c-df72fcd70402', 'Doris Tate', 'Voluptatem nihil qui', 88, 'Ad molestiae quia di', 'Doloribus illo volup', 'Omnis ab tempor lore', 'Molestias labore et', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"3\\\"]\"', '2024-01-24 13:08:14', '2024-01-24 13:08:14'),
(62, 2, '37fa842e-184d-4a63-8bf5-7dfd7e97711a', 'Doris Tate', 'Voluptatem nihil qui', 88, 'Ad molestiae quia di', 'Doloribus illo volup', 'Omnis ab tempor lore', 'Molestias labore et', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"3\\\"]\"', '2024-01-24 13:09:57', '2024-01-24 13:09:57'),
(63, 2, 'b6601926-d80f-4615-a2d4-2d9e56dab781', 'Doris Tate', 'Voluptatem nihil qui', 88, 'Ad molestiae quia di', 'Doloribus illo volup', 'Omnis ab tempor lore', 'Molestias labore et', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"3\\\"]\"', '2024-01-24 13:10:40', '2024-01-24 13:10:40'),
(64, 2, '072a7479-4e35-47a7-a1be-3d21289723ed', 'Doris Tate', 'Voluptatem nihil qui', 88, 'Ad molestiae quia di', 'Doloribus illo volup', 'Omnis ab tempor lore', 'Molestias labore et', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"3\\\"]\"', '2024-01-24 13:11:02', '2024-01-24 13:11:02'),
(65, 2, 'fd4babdd-8b44-49fd-b922-ea69f2575f43', 'Doris Tate', 'Voluptatem nihil qui', 88, 'Ad molestiae quia di', 'Doloribus illo volup', 'Omnis ab tempor lore', 'Molestias labore et', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"3\\\"]\"', '2024-01-24 13:11:16', '2024-01-24 13:11:16'),
(66, 2, '4581f647-138a-4c46-aca5-c36477490b1d', 'Ishmael Harvey', 'Dignissimos quibusda', 12, 'Et consequatur null', 'Dolor deserunt corru', 'Aut totam praesentiu', 'Laboris exercitation', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"5\\\"]\"', '2024-01-24 13:12:56', '2024-01-24 13:12:56'),
(67, 2, '7e6929df-1b7d-4e64-bf71-02de234d207b', 'Ishmael Harvey', 'Dignissimos quibusda', 12, 'Et consequatur null', 'Dolor deserunt corru', 'Aut totam praesentiu', 'Laboris exercitation', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"5\\\"]\"', '2024-01-24 13:13:14', '2024-01-24 13:13:14'),
(68, 2, 'c086c705-5875-416f-ba29-a3e69b6b9db8', 'Ishmael Harvey', 'Dignissimos quibusda', 12, 'Et consequatur null', 'Dolor deserunt corru', 'Aut totam praesentiu', 'Laboris exercitation', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"5\\\"]\"', '2024-01-24 13:13:35', '2024-01-24 13:13:35'),
(69, 2, '20629706-8911-4ae5-a39e-fb26cb45990b', 'Ishmael Harvey', 'Dignissimos quibusda', 12, 'Et consequatur null', 'Dolor deserunt corru', 'Aut totam praesentiu', 'Laboris exercitation', '2024-01-17 23:51:00', '2024-01-18 00:07:00', '\"[\\\"5\\\"]\"', '2024-01-24 13:14:36', '2024-01-24 13:14:36'),
(70, 2, '0d05722f-619f-486b-ab04-1a1f0034203f', 'Quincy Flowers', 'Minim voluptate plac', 1, 'Qui cupidatat sit u', 'Accusamus necessitat', 'Elit enim aut beata', 'Non labore qui dolor', '2024-01-10 00:32:00', '2024-01-30 00:32:00', '\"[\\\"1\\\"]\"', '2024-01-24 13:51:46', '2024-01-24 13:51:46'),
(71, 2, '57f888c5-2078-4dae-b990-38c762730645', 'Tatiana Carr', 'Fuga Ad dolor sed v', 23, 'Nulla ratione nostru', 'Laudantium dolore e', 'Fugiat earum et labo', 'Molestiae ex ut quis', '2024-03-06 00:52:00', '2024-03-10 00:52:00', '\"[\\\"2\\\",\\\"3\\\",\\\"6\\\"]\"', '2024-01-24 13:53:09', '2024-01-24 13:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `meal_plans`
--

CREATE TABLE `meal_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cost` bigint(20) NOT NULL,
  `isActive` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2024_01_16_090219_create_rooms_table', 2),
(13, '2024_01_16_091837_create_properties_table', 2),
(14, '2024_01_16_092120_create_room_categories_table', 2),
(15, '2024_01_16_092305_create_meal_plans_table', 2),
(16, '2024_01_16_092531_create_transections_table', 2),
(17, '2024_01_20_120511_create_room_infos_table', 3),
(22, '2024_01_21_202437_create_guest_infos_table', 4);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `extra` varchar(255) NOT NULL,
  `isActive` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `propertyId` bigint(20) NOT NULL,
  `catId` bigint(20) DEFAULT NULL,
  `room_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`room_id`)),
  `checkInDateTime` datetime NOT NULL,
  `checkOutDateTime` datetime NOT NULL,
  `isActive` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `propertyId`, `catId`, `room_id`, `checkInDateTime`, `checkOutDateTime`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 2, 5, '\"[\\\"2\\\"]\"', '2024-01-01 10:59:53', '2024-01-25 10:59:53', 1, NULL, NULL),
(2, 2, 5, '\"[\\\"3\\\"]\"', '2024-01-10 12:32:06', '2024-01-15 12:32:06', 1, NULL, NULL),
(3, 2, 5, '\"[\\\"4\\\"]\"', '2024-02-01 12:32:06', '2024-02-06 12:32:06', 1, NULL, NULL),
(4, 2, NULL, '\"[\\\"5\\\"]\"', '2024-01-17 23:51:00', '2024-01-31 23:51:00', 1, '2024-01-24 13:16:34', '2024-01-24 13:16:34'),
(5, 2, NULL, '\"[\\\"1\\\"]\"', '2024-01-10 00:32:00', '2024-01-10 00:32:00', 1, '2024-01-24 13:52:01', '2024-01-24 13:52:01'),
(6, 2, NULL, '\"[\\\"2\\\",\\\"3\\\",\\\"6\\\"]\"', '2024-03-06 00:52:00', '2024-03-06 00:52:00', 1, '2024-01-24 13:53:23', '2024-01-24 13:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `isActive` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `name`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Family Room', 1, '2024-01-23 12:41:37', '2024-01-23 12:41:37'),
(2, 'Super Deluxe Room', 1, '2024-01-23 12:42:48', '2024-01-23 12:42:54'),
(3, 'Simple Room', 1, '2024-01-23 13:57:46', '2024-01-23 13:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `room_infos`
--

CREATE TABLE `room_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `propertyId` bigint(20) NOT NULL,
  `catId` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `capacity` bigint(20) NOT NULL,
  `isActive` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_infos`
--

INSERT INTO `room_infos` (`id`, `propertyId`, `catId`, `name`, `price`, `capacity`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Room 1', 3000, 2, 1, NULL, NULL),
(2, 2, 1, 'Room 2', 3000, 2, 1, NULL, NULL),
(3, 2, 1, 'Room 3', 3000, 2, 1, NULL, NULL),
(4, 2, 2, 'Room 4', 3000, 2, 1, NULL, NULL),
(5, 2, 2, 'Room 5', 3000, 2, 1, NULL, NULL),
(6, 2, 3, 'Room 6', 3000, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transections`
--

CREATE TABLE `transections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roomId` varchar(255) NOT NULL,
  `groupId` varchar(500) NOT NULL,
  `payment_type` text NOT NULL,
  `payment_status` text NOT NULL,
  `totalAmount` int(11) NOT NULL,
  `collectedAmount` int(11) NOT NULL,
  `checkInDateTime` datetime NOT NULL,
  `checkOutDateTime` datetime NOT NULL,
  `isActive` bigint(20) NOT NULL,
  `propertyId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transections`
--

INSERT INTO `transections` (`id`, `roomId`, `groupId`, `payment_type`, `payment_status`, `totalAmount`, `collectedAmount`, `checkInDateTime`, `checkOutDateTime`, `isActive`, `propertyId`, `created_at`, `updated_at`) VALUES
(1, '2', '844fd160-8e5b-4c0a-8679-3c57acf9e0c8', 'green', 'Prepaid', 6000, 58666, '2024-01-11 21:26:00', '2024-01-11 21:26:00', 1, 2, '2024-01-24 12:17:57', '2024-01-24 12:17:57'),
(2, '2', '844fd160-8e5b-4c0a-8679-3c57acf9e0c8', 'green', 'Prepaid', 6000, 58666, '2024-01-11 21:26:00', '2024-01-11 21:26:00', 1, 2, '2024-01-24 12:48:33', '2024-01-24 12:48:33'),
(3, '\"[\\\"5\\\"]\"', '20629706-8911-4ae5-a39e-fb26cb45990b', 'Online', 'Prepaid', 3000, 2000, '2024-01-17 23:51:00', '2024-01-17 23:51:00', 1, 2, '2024-01-24 13:14:51', '2024-01-24 13:14:51'),
(4, '\"[\\\"5\\\"]\"', '20629706-8911-4ae5-a39e-fb26cb45990b', 'Online', 'Prepaid', 3000, 2000, '2024-01-17 23:51:00', '2024-01-17 23:51:00', 1, 2, '2024-01-24 13:16:34', '2024-01-24 13:16:34'),
(5, '\"[\\\"1\\\"]\"', '0d05722f-619f-486b-ab04-1a1f0034203f', 'Cash', 'Prepaid', 3000, 58666, '2024-01-10 00:32:00', '2024-01-10 00:32:00', 1, 2, '2024-01-24 13:52:01', '2024-01-24 13:52:01'),
(6, '\"[\\\"2\\\",\\\"3\\\",\\\"6\\\"]\"', '57f888c5-2078-4dae-b990-38c762730645', 'Online', 'Prepaid', 9000, 6000, '2024-03-06 00:52:00', '2024-03-06 00:52:00', 1, 2, '2024-01-24 13:53:23', '2024-01-24 13:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `location`, `about`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@material.com', '2024-01-16 08:04:32', NULL, NULL, NULL, '$2y$10$9aqVYIIvDG36orn0DlftKu7LtabvZ7a7ocTgQK/c5qY11oNkjknw2', 'NrM5MJnCYbkQTAlrCQ25yc1pLTECof9REFRP5kQ5M1Ccx3Xnmy1OKerJyBRm', '2024-01-16 08:04:33', '2024-01-16 08:04:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guest_infos`
--
ALTER TABLE `guest_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_plans`
--
ALTER TABLE `meal_plans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_infos`
--
ALTER TABLE `room_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transections`
--
ALTER TABLE `transections`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_infos`
--
ALTER TABLE `guest_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `meal_plans`
--
ALTER TABLE `meal_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room_infos`
--
ALTER TABLE `room_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transections`
--
ALTER TABLE `transections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
