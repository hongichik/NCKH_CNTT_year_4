-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 20, 2023 lúc 10:01 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nckhwebkhoacntt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_homes`
--

CREATE TABLE `banner_homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner_homes`
--

INSERT INTO `banner_homes` (`id`, `img`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'banner-homes\\November2022\\2CNzWtiaomPQtNewORiw.png', 'banner của khoa công nghệ thông tin trường đại học hạ long', 1, '2022-11-12 20:06:20', '2022-11-12 20:06:20'),
(4, 'banner-homes\\November2022\\amoKC8KgDzZ2O5nAfS40.png', 'banner 20/11 khoa công nghệ thông tin đại học hạ long', 1, '2022-11-12 20:06:00', '2022-11-12 20:07:02'),
(5, 'banner-homes\\November2022\\rFzJW7AqvBynTQxKL7qg.gif', 'banner của khoa công nghệ thông tin trường đại học hạ long', 1, '2022-11-12 20:06:56', '2022-11-12 20:06:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `author_id`, `title`, `body`, `image`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(24, NULL, 'dsdd', '<p>dddddd</p>', 'blogs\\November2022\\arNK7uaQ0xu8fDutWry7.png', 'dsdd', 'ddddddđ', '2022-11-26 19:47:04', '2022-11-26 19:47:04'),
(25, 1, 'ggggggg', '<p>gggggggggg</p>', 'blogs\\November2022\\jh17qgbjKLDGRHoceiyK.png', 'ggggggg', 'gggggggg', '2022-11-26 20:04:00', '2022-11-26 20:04:52'),
(26, 1, 'nội dung', '<p>dddd</p>', 'blogs\\November2022\\MWVNiSTMg9aT6s7exPsC.png', 'noi-dung', 'ddddđ', '2022-11-26 20:23:10', '2022-11-26 20:23:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Giới thiệu', 'Gioi-thieu', '2022-11-03 23:00:02', '2022-11-09 02:08:27'),
(2, NULL, 1, 'Tin tức', 'tin-tuc', '2022-11-03 23:00:02', '2022-11-09 02:09:37'),
(3, 2, 1, 'Hoạt động chuyên môn', 'hoat-dong-chuyen-mon', '2022-11-14 18:14:35', '2022-11-14 18:14:35'),
(4, 2, 1, 'Hoạt động liên chi đoàn', 'hoat-dong-lien-chi-doan', '2022-11-15 10:01:33', '2022-11-15 10:01:48'),
(5, NULL, 1, 'Sự kiện nổi bật', 'su-kien-noi-bat', '2022-11-16 01:34:09', '2022-11-16 01:34:09'),
(6, NULL, 1, 'Ý kiến chỉ đạo', 'y-kien-chi-dao', '2022-11-16 01:34:23', '2022-11-16 01:34:23'),
(7, NULL, 1, 'Tuyển sinh', 'tuyen-sinh', '2022-11-23 07:53:18', '2022-11-23 07:53:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `body`, `parent_id`, `page_id`, `post_id`, `created_at`, `updated_at`, `blog_id`) VALUES
(1, 2, 'Khoa công nghệ thông tin là một khoa đáng để học', NULL, 2, NULL, '2022-11-08 23:57:47', '2022-11-08 23:57:47', NULL),
(2, 2, 'Đúng vậy', 1, 2, NULL, '2022-11-08 23:58:43', '2022-11-08 23:58:43', NULL),
(3, 2, 'bạn nói đúng', 1, 2, NULL, '2022-11-09 00:14:05', '2022-11-09 00:14:05', NULL),
(7, 1, 'nói hay lắm', 4, 2, NULL, '2022-11-09 01:32:06', '2022-11-09 01:32:06', NULL),
(12, 1, 'đúng vl', 11, 2, NULL, '2022-11-10 21:12:06', '2022-11-10 21:12:06', NULL),
(13, 1, 'clm', NULL, 2, NULL, '2022-11-11 00:19:17', '2022-11-11 00:19:17', NULL),
(14, 1, 'tin nhắn', NULL, 2, NULL, '2022-11-12 20:07:45', '2022-11-12 20:07:45', NULL),
(15, 1, 'trả lời tin nhắn', 14, 2, NULL, '2022-11-12 20:07:57', '2022-11-12 20:07:57', NULL),
(16, 1, 'dá', NULL, 2, NULL, '2022-11-15 09:07:31', '2022-11-15 09:07:31', NULL),
(17, 1, 'dá', 16, 2, NULL, '2022-11-15 09:08:35', '2022-11-15 09:08:35', NULL),
(18, 1, 'nội dung 1', NULL, NULL, 1, '2022-11-15 09:57:31', '2022-11-15 09:57:31', NULL),
(19, 1, 'đây là thử nghiệm', NULL, NULL, NULL, '2022-11-27 00:48:15', '2022-11-27 00:48:15', 26),
(20, 1, 'bình luận thứ 2', NULL, NULL, NULL, '2022-11-27 00:52:25', '2022-11-27 00:52:25', 26),
(21, 1, 'cái mới', 1, 2, NULL, '2022-11-27 00:53:58', '2022-11-27 00:53:58', NULL),
(22, 1, 'đúng lắm', 20, NULL, 26, '2022-11-27 00:57:54', '2022-11-27 00:57:54', NULL),
(23, 1, 'đúng lắm', 18, NULL, NULL, '2022-11-27 00:58:09', '2022-11-27 00:58:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_rows`
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
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Danh mục chính', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"100\",\"height\":\"null\"}}', 4),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 5),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 6),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 7),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 8),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 9),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"Ph\\u00e1t h\\u00e0nh\",\"options\":{\"PUBLISHED\":\"N\\u1ed5i b\\u1eadt\",\"DRAFT\":\"Ph\\u00e1t h\\u00e0nh\",\"PENDING\":\"D\\u1ef1 th\\u1ea3o\"}}', 10),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 0, '{}', 11),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 12),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"\\u1ea8n\",\"1\":\"hi\\u1ec7n\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(57, 7, 'img', 'image', 'Ảnh banner (1915px X 750px))', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text', 'Mô tả', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"\\u1ea8n\",\"1\":\"Hi\\u1ec7n\"}}', 4),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(62, 8, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(63, 8, 'img', 'image', 'Icon của công ty (700px X 700px png)', 1, 1, 1, 1, 1, 1, '{}', 2),
(64, 8, 'nameCompany', 'text', 'Tên công ty', 1, 1, 1, 1, 1, 1, '{}', 3),
(65, 8, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"\\u1ea8n\",\"1\":\"Hi\\u1ec7n\"}}', 4),
(66, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(67, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 6, 'page_belongstomany_category_relationship', 'relationship', 'categories', 1, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"page_category\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(70, 9, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(71, 9, 'user_id', 'select_dropdown', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(72, 9, 'body', 'text_area', 'Bình luận', 1, 1, 1, 1, 1, 1, '{}', 5),
(73, 9, 'parent_id', 'select_dropdown', 'Comment cha', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 9, 'page_id', 'select_dropdown', 'Page Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(78, 9, 'comment_belongsto_user_relationship', 'relationship', 'Người dùng', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banner_homes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(79, 9, 'comment_belongsto_comment_relationship', 'relationship', 'comment cha', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Comment\",\"table\":\"comments\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"banner_homes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(80, 9, 'comment_belongsto_page_relationship', 'relationship', 'Bình luận trong trang', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Page\",\"table\":\"pages\",\"type\":\"belongsTo\",\"column\":\"page_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banner_homes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(81, 9, 'comment_belongsto_post_relationship', 'relationship', 'Bình luận trong bài viết', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"belongsTo\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banner_homes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(82, 9, 'post_id', 'select_dropdown', 'Post Id', 0, 1, 1, 1, 1, 1, '{}', 7),
(84, 5, 'post_belongstomany_category_relationship', 'relationship', 'Danh mục phụ', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"post_category\",\"pivot\":\"1\",\"taggable\":\"0\"}', 14),
(85, 5, 'excerpt', 'text', 'Tóm tắt', 0, 0, 0, 0, 0, 0, '{}', 14),
(93, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 11, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 2),
(95, 11, 'description', 'text_area', 'Mô tả', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 4),
(96, 11, 'status', 'checkbox', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"on\":\"Hi\\u1ec3n th\\u1ecb\",\"off\":\"\\u1ea8n\",\"checked\":true}', 5),
(97, 11, 'url_post', 'text', 'Đường dẫn bài viết', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 6),
(98, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(99, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(100, 11, 'image', 'image', 'Ảnh', 1, 1, 1, 1, 1, 1, '{}', 3),
(101, 13, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(102, 13, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\"}}', 2),
(103, 13, 'url_post', 'text', 'Đường dẫn bài viết', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 3),
(104, 13, 'image', 'image', 'Ảnh', 0, 1, 1, 1, 1, 1, '{}', 4),
(105, 13, 'status', 'checkbox', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"on\":\"Hi\\u1ec3n th\\u1ecb\",\"off\":\"\\u1ea8n\",\"checked\":true}', 5),
(106, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 6),
(107, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(108, 14, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(109, 14, 'author_id', 'text', 'Tác giả', 0, 0, 0, 0, 1, 0, '{}', 2),
(110, 14, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(111, 14, 'body', 'rich_text_box', 'Nội dung', 1, 0, 1, 1, 1, 1, '{}', 4),
(112, 14, 'image', 'image', 'Ảnh hiển thị chính', 1, 1, 1, 1, 1, 1, '{}', 5),
(113, 14, 'slug', 'text', 'Slug', 1, 0, 0, 1, 1, 0, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(114, 14, 'description', 'text_area', 'Mô tả', 1, 1, 1, 1, 1, 1, '{}', 7),
(115, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(116, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(117, 9, 'comment_belongsto_blog_relationship', 'relationship', 'blogs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Blog\",\"table\":\"blogs\",\"type\":\"belongsTo\",\"column\":\"blog_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banner_homes\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(118, 9, 'blog_id', 'text', 'Blog Id', 0, 1, 1, 1, 1, 1, '{}', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-11-03 22:59:55', '2022-11-03 22:59:55'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-11-03 22:59:55', '2022-11-03 22:59:55'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-11-03 22:59:55', '2022-11-03 22:59:55'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-11-03 23:00:01', '2022-11-03 23:00:01'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-11-03 23:00:03', '2022-11-16 01:38:53'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-11-03 23:00:04', '2022-11-26 00:43:02'),
(7, 'banner_homes', 'banner-homes', 'Banner Home', 'Banner Homes', 'voyager-photo', 'App\\BannerHome', NULL, NULL, 'Quản lý banner trang chủ', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-03 23:05:01', '2022-11-03 23:43:02'),
(8, 'support_companies', 'support-companies', 'Công ty liên kết', 'Công ty liên kết', 'voyager-company', 'App\\SupportCompany', NULL, 'App\\Http\\Controllers\\Voyager\\SupportCompaniesController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-03 23:11:30', '2022-11-07 01:26:54'),
(9, 'comments', 'comments', 'Comment', 'Comments', 'voyager-chat', 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-11-08 23:41:58', '2022-11-27 00:47:32'),
(11, 'haot_dongs', 'haot-dongs', 'Hoạt động', 'Hoạt động', 'voyager-new', 'App\\HaotDong', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-23 19:06:14', '2022-11-23 19:54:27'),
(13, 'events', 'events', 'Event', 'Events', 'voyager-megaphone', 'App\\Event', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-24 01:34:27', '2022-11-24 01:36:47'),
(14, 'blogs', 'blogs', 'Bài viết sinh viên', 'bài viết sinh viên', 'voyager-credit-cards', 'App\\Blog', NULL, 'App\\Http\\Controllers\\Voyager\\BlogController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"title\",\"scope\":null}', '2022-11-26 00:54:45', '2022-11-26 20:41:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `title`, `url_post`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mừng mày 20/10', '#', NULL, 1, '2022-10-20 08:37:00', '2022-11-24 01:37:50'),
(2, 'mừng ngày 20/11', '#', NULL, 1, '2022-11-20 08:38:00', '2022-11-24 01:38:19'),
(3, 'Chào mừng ngày tết nguyên đán', '#', 'events\\November2022\\1m5Ih8mwfxtih6oBaVjK.jpg', 1, '2023-01-01 08:38:00', '2022-11-24 01:40:24'),
(4, 'Đại hội đoàn khoa công nghệ thông tin', '#', NULL, 1, '2022-10-12 08:54:00', '2022-11-24 01:55:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `haot_dongs`
--

CREATE TABLE `haot_dongs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `url_post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `haot_dongs`
--

INSERT INTO `haot_dongs` (`id`, `title`, `description`, `status`, `url_post`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Chương trình giao lưu ký kết hợp tác', 'Chương trình giao lưu ký kết hợp tác giữa khoa Công Nghệ Thông Tin trường Đại Học Hạ Long và công ty cổ phần và công nghệ teky', 1, '#', '2022-11-23 19:57:36', '2022-11-23 19:57:36', 'haot-dongs\\November2022\\tNvJJ8u1x2u03feTTPAX.jpg'),
(2, 'Giải bóng đá nam sinh viên lần thứ 2', 'Giải bóng đá nam sinh viên của khoa Công Nghệ Thông Tin trường Đại học Hạ Long tổ chức diễn ra vào ngày 07/11/2020 đến 15/11/2020', 1, '#', '2022-11-23 19:59:51', '2022-11-23 19:59:51', 'haot-dongs\\November2022\\9pQ2k8kdD5Rupt2Pl6Ba.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-11-03 22:59:57', '2022-11-03 22:59:57'),
(2, 'user_home', '2022-11-03 22:59:57', '2022-11-03 22:59:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`, `permission`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-11-03 22:59:57', '2022-11-03 23:06:11', 'voyager.dashboard', NULL, NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2022-11-03 22:59:57', '2022-11-28 11:37:57', 'voyager.media.index', NULL, NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2022-11-03 22:59:57', '2022-11-28 11:37:57', 'voyager.users.index', NULL, NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2022-11-03 22:59:57', '2022-11-28 11:37:57', 'voyager.roles.index', NULL, NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2022-11-03 22:59:57', '2022-11-28 11:38:40', NULL, NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 15, 5, '2022-11-03 22:59:57', '2022-11-28 11:38:42', 'voyager.menus.index', NULL, NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 1, '2022-11-03 22:59:57', '2022-11-03 23:07:16', 'voyager.database.index', NULL, NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2022-11-03 22:59:57', '2022-11-03 23:07:16', 'voyager.compass.index', NULL, NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2022-11-03 22:59:57', '2022-11-03 23:07:16', 'voyager.bread.index', NULL, NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2022-11-03 22:59:57', '2022-11-28 11:38:40', 'voyager.settings.index', NULL, NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2022-11-03 23:00:02', '2022-11-28 11:38:40', 'voyager.categories.index', NULL, NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2022-11-03 23:00:04', '2022-11-28 11:37:57', 'voyager.posts.index', NULL, NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2022-11-03 23:00:05', '2022-11-28 11:38:40', 'voyager.pages.index', NULL, NULL),
(14, 1, 'banner Home', '', '_self', 'voyager-photo', '#000000', 15, 1, '2022-11-03 23:05:02', '2022-11-03 23:07:47', 'voyager.banner-homes.index', 'null', NULL),
(15, 1, 'Trang chủ', '', '_self', 'voyager-home', '#000000', NULL, 4, '2022-11-03 23:05:24', '2022-11-28 11:37:56', NULL, '', NULL),
(16, 1, 'Công ty liên kết', '', '_self', 'voyager-company', '#000000', 15, 2, '2022-11-03 23:11:31', '2022-11-28 11:38:15', 'voyager.support-companies.index', 'null', NULL),
(17, 2, 'Lịch sử hình thành khoa', 'page/lich-su-hinh-thanh-khoa', '_self', NULL, '#000000', 19, 1, '2022-11-04 00:25:30', '2022-11-04 00:27:54', NULL, '', NULL),
(18, 2, 'Trang chủ', 'home', '_self', NULL, '#000000', NULL, 1, '2022-11-04 00:27:32', '2022-11-04 00:32:20', NULL, '', NULL),
(19, 2, 'Giới thiệu', '', '_self', NULL, '#000000', NULL, 2, '2022-11-04 00:27:49', '2022-11-04 00:27:52', NULL, '', NULL),
(20, 2, 'Sứ mệnh tầm nhìn', '', '_self', NULL, '#000000', 19, 2, '2022-11-04 00:34:53', '2022-11-04 00:34:57', NULL, '', NULL),
(21, 2, 'Cơ cấu tổ chức', '', '_self', NULL, '#000000', 19, 3, '2022-11-04 00:35:04', '2022-11-04 00:35:08', NULL, '', NULL),
(22, 2, 'Tin tức', '', '_self', NULL, '#000000', NULL, 3, '2022-11-04 00:35:20', '2022-11-04 00:36:25', NULL, '', NULL),
(23, 2, 'Hoạt động chuyên môn', 'post/hoat-dong-chuyen-mon', '_self', NULL, '#000000', 22, 1, '2022-11-04 00:35:31', '2022-11-14 18:44:20', NULL, '', NULL),
(24, 2, 'Hoạt động liên chi đoàn', 'post/hoat-dong-lien-chi-doan', '_self', NULL, '#000000', 22, 2, '2022-11-04 00:35:57', '2022-11-15 10:02:10', NULL, '', NULL),
(25, 2, 'Lịch công tác', '', '_self', NULL, '#000000', 22, 3, '2022-11-04 00:36:39', '2022-11-04 00:36:44', NULL, '', NULL),
(26, 2, 'Đào tạo -  Nghiên cứu khoa học', '', '_self', NULL, '#000000', NULL, 4, '2022-11-04 00:37:03', '2022-11-04 00:38:18', NULL, '', NULL),
(27, 2, 'Trương trình đào tạo trình độ đại học', '', '_self', NULL, '#000000', 26, 1, '2022-11-04 00:37:24', '2022-11-04 00:38:18', NULL, '', NULL),
(28, 2, 'Chương trình đào tạo trình độ thạc sĩ', '', '_self', NULL, '#000000', 26, 2, '2022-11-04 00:37:44', '2022-11-04 00:38:19', NULL, '', NULL),
(29, 2, 'Các công bố', '', '_self', NULL, '#000000', 26, 3, '2022-11-04 00:37:54', '2022-11-04 00:38:20', NULL, '', NULL),
(30, 2, 'Biểu mẫu văn bản', '', '_self', NULL, '#000000', 26, 4, '2022-11-04 00:38:05', '2022-11-04 00:38:21', NULL, '', NULL),
(31, 2, 'Thông tin tuyển sinh', 'post/tuyen-sinh', '_self', NULL, '#000000', NULL, 5, '2022-11-04 00:38:32', '2022-11-27 20:16:19', NULL, '', NULL),
(32, 2, 'Sinh viên', '', '_self', NULL, '#000000', NULL, 6, '2022-11-04 00:38:41', '2022-11-04 00:39:28', NULL, '', NULL),
(33, 2, 'Các hoạt động năm học', '', '_self', NULL, '#000000', 32, 1, '2022-11-04 00:38:52', '2022-11-04 00:39:29', NULL, '', NULL),
(34, 2, 'Một số hình ảnh tiêu biểu của khoa', '', '_self', NULL, '#000000', 32, 2, '2022-11-04 00:39:05', '2022-11-04 00:39:29', NULL, '', NULL),
(36, 2, 'Liên hệ', '', '_self', NULL, '#000000', NULL, 7, '2022-11-04 00:39:25', '2022-11-04 00:39:30', NULL, '', NULL),
(37, 1, 'Comments', '', '_self', 'voyager-chat', NULL, NULL, 5, '2022-11-08 23:41:59', '2022-11-28 11:37:56', 'voyager.comments.index', NULL, NULL),
(39, 1, 'Hoạt động', '', '_self', 'voyager-new', '#000000', 15, 3, '2022-11-23 19:06:14', '2022-11-28 11:38:15', 'voyager.haot-dongs.index', 'null', NULL),
(41, 1, 'Sự kiện', '', '_self', 'voyager-megaphone', '#000000', 15, 4, '2022-11-24 01:34:27', '2022-11-28 11:38:13', 'voyager.events.index', 'null', NULL),
(42, 1, 'Blogs', '', '_self', 'voyager-credit-cards', NULL, NULL, 2, '2022-11-26 00:54:46', '2022-11-26 00:55:40', 'voyager.blogs.index', NULL, NULL),
(43, 2, 'Góc sinh viên', 'blog/', '_self', NULL, '#000000', 32, 3, '2022-11-26 23:44:58', '2022-11-27 20:18:01', NULL, '', NULL),
(44, 1, 'test', '', '_self', 'voyager-x', '#000000', NULL, 3, '2022-11-28 11:37:21', '2022-11-28 14:02:03', NULL, 'null', NULL),
(45, 1, 'test2', '', '_self', NULL, '#000000', 44, 1, '2022-11-28 11:38:35', '2023-02-20 00:58:30', 'login', 'null', 'browse_login');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Lịch sử hình thành khoa', 'Khoa công nghệ thông tin trường đại học hạ long là một trong những khoa đi cầu trong đào tạo công nghệ thông tin tại địa bàn tỉnh quảng ninh', '<p style=\"padding-left: 40px;\">Nội dung của khoa c&ocirc;ng nghệ th&ocirc;ng tin</p>\r\n<p style=\"text-align: center;\"><img src=\"http://localhost:8000/storage/pages/November2022/tintuc1.jpg\"></p>\r\n<p style=\"text-align: center;\">h&igrave;nh ảnh ch&agrave;o đ&oacute;n sinh vi&ecirc;n</p>', 'pages\\November2022\\6QJg6AQv5RmllVMyYZQ9.jpg', 'lich-su-hinh-thanh-khoa', 'Mô tả về lịch sử thình thành khoa công nghệ thông tin trường đại học hạ long', 'Lịch sử hình thành, công nghệ thông tin, đại học hạ long', 1, '2017-06-13 23:53:00', '2022-11-08 03:35:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_category`
--

CREATE TABLE `page_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_category`
--

INSERT INTO `page_category` (`category_id`, `page_id`, `id`) VALUES
(1, 2, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(2, 'browse_bread', NULL, '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(3, 'browse_database', NULL, '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(4, 'browse_media', NULL, '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(5, 'browse_compass', NULL, '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(6, 'browse_menus', 'menus', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(7, 'read_menus', 'menus', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(8, 'edit_menus', 'menus', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(9, 'add_menus', 'menus', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(10, 'delete_menus', 'menus', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(11, 'browse_roles', 'roles', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(12, 'read_roles', 'roles', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(13, 'edit_roles', 'roles', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(14, 'add_roles', 'roles', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(15, 'delete_roles', 'roles', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(16, 'browse_users', 'users', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(17, 'read_users', 'users', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(18, 'edit_users', 'users', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(19, 'add_users', 'users', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(20, 'delete_users', 'users', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(21, 'browse_settings', 'settings', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(22, 'read_settings', 'settings', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(23, 'edit_settings', 'settings', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(24, 'add_settings', 'settings', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(25, 'delete_settings', 'settings', '2022-11-03 22:59:59', '2022-11-03 22:59:59'),
(26, 'browse_categories', 'categories', '2022-11-03 23:00:02', '2022-11-03 23:00:02'),
(27, 'read_categories', 'categories', '2022-11-03 23:00:02', '2022-11-03 23:00:02'),
(28, 'edit_categories', 'categories', '2022-11-03 23:00:02', '2022-11-03 23:00:02'),
(29, 'add_categories', 'categories', '2022-11-03 23:00:02', '2022-11-03 23:00:02'),
(30, 'delete_categories', 'categories', '2022-11-03 23:00:02', '2022-11-03 23:00:02'),
(31, 'browse_posts', 'posts', '2022-11-03 23:00:04', '2022-11-03 23:00:04'),
(32, 'read_posts', 'posts', '2022-11-03 23:00:04', '2022-11-03 23:00:04'),
(33, 'edit_posts', 'posts', '2022-11-03 23:00:04', '2022-11-03 23:00:04'),
(34, 'add_posts', 'posts', '2022-11-03 23:00:04', '2022-11-03 23:00:04'),
(35, 'delete_posts', 'posts', '2022-11-03 23:00:04', '2022-11-03 23:00:04'),
(36, 'browse_pages', 'pages', '2022-11-03 23:00:05', '2022-11-03 23:00:05'),
(37, 'read_pages', 'pages', '2022-11-03 23:00:05', '2022-11-03 23:00:05'),
(38, 'edit_pages', 'pages', '2022-11-03 23:00:05', '2022-11-03 23:00:05'),
(39, 'add_pages', 'pages', '2022-11-03 23:00:05', '2022-11-03 23:00:05'),
(40, 'delete_pages', 'pages', '2022-11-03 23:00:05', '2022-11-03 23:00:05'),
(41, 'browse_banner_homes', 'banner_homes', '2022-11-03 23:05:02', '2022-11-03 23:05:02'),
(42, 'read_banner_homes', 'banner_homes', '2022-11-03 23:05:02', '2022-11-03 23:05:02'),
(43, 'edit_banner_homes', 'banner_homes', '2022-11-03 23:05:02', '2022-11-03 23:05:02'),
(44, 'add_banner_homes', 'banner_homes', '2022-11-03 23:05:02', '2022-11-03 23:05:02'),
(45, 'delete_banner_homes', 'banner_homes', '2022-11-03 23:05:02', '2022-11-03 23:05:02'),
(46, 'browse_support_companies', 'support_companies', '2022-11-03 23:11:31', '2022-11-03 23:11:31'),
(47, 'read_support_companies', 'support_companies', '2022-11-03 23:11:31', '2022-11-03 23:11:31'),
(48, 'edit_support_companies', 'support_companies', '2022-11-03 23:11:31', '2022-11-03 23:11:31'),
(49, 'add_support_companies', 'support_companies', '2022-11-03 23:11:31', '2022-11-03 23:11:31'),
(50, 'delete_support_companies', 'support_companies', '2022-11-03 23:11:31', '2022-11-03 23:11:31'),
(51, 'browse_comments', 'comments', '2022-11-08 23:41:59', '2022-11-08 23:41:59'),
(52, 'read_comments', 'comments', '2022-11-08 23:41:59', '2022-11-08 23:41:59'),
(53, 'edit_comments', 'comments', '2022-11-08 23:41:59', '2022-11-08 23:41:59'),
(54, 'add_comments', 'comments', '2022-11-08 23:41:59', '2022-11-08 23:41:59'),
(55, 'delete_comments', 'comments', '2022-11-08 23:41:59', '2022-11-08 23:41:59'),
(62, 'browse_haot_dongs', 'haot_dongs', '2022-11-23 19:06:14', '2022-11-23 19:06:14'),
(63, 'read_haot_dongs', 'haot_dongs', '2022-11-23 19:06:14', '2022-11-23 19:06:14'),
(64, 'edit_haot_dongs', 'haot_dongs', '2022-11-23 19:06:14', '2022-11-23 19:06:14'),
(65, 'add_haot_dongs', 'haot_dongs', '2022-11-23 19:06:14', '2022-11-23 19:06:14'),
(66, 'delete_haot_dongs', 'haot_dongs', '2022-11-23 19:06:14', '2022-11-23 19:06:14'),
(72, 'browse_events', 'events', '2022-11-24 01:34:27', '2022-11-24 01:34:27'),
(73, 'read_events', 'events', '2022-11-24 01:34:27', '2022-11-24 01:34:27'),
(74, 'edit_events', 'events', '2022-11-24 01:34:27', '2022-11-24 01:34:27'),
(75, 'add_events', 'events', '2022-11-24 01:34:27', '2022-11-24 01:34:27'),
(76, 'delete_events', 'events', '2022-11-24 01:34:27', '2022-11-24 01:34:27'),
(77, 'browse_blogs', 'blogs', '2022-11-26 00:54:46', '2022-11-26 00:54:46'),
(78, 'read_blogs', 'blogs', '2022-11-26 00:54:46', '2022-11-26 00:54:46'),
(79, 'edit_blogs', 'blogs', '2022-11-26 00:54:46', '2022-11-26 00:54:46'),
(80, 'add_blogs', 'blogs', '2022-11-26 00:54:46', '2022-11-26 00:54:46'),
(81, 'delete_blogs', 'blogs', '2022-11-26 00:54:46', '2022-11-26 00:54:46'),
(82, 'read_all_blogs', 'blogs', '2022-11-26 00:54:46', '2022-11-26 00:54:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(47, 1),
(47, 3),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(62, 1),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(72, 1),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Lorem Ipsum Post Lorem Ipsum Post Lorem Ipsum Post Lorem Ipsum Post', NULL, '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post-lorem-ipsum-post-lorem-ipsum-post-lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '2022-11-03 23:00:00', '2022-11-14 23:43:18'),
(2, 0, NULL, 'My Sample Post', NULL, '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', '2022-11-03 23:00:04', '2022-11-03 23:00:04'),
(3, 1, 3, 'Latest Post', NULL, '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', '2022-11-03 23:00:00', '2022-11-14 19:24:51'),
(4, 0, NULL, 'Yarr Post', NULL, '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', '2022-11-03 23:00:04', '2022-11-03 23:00:04'),
(5, 1, 4, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\MohroWPEdPxZW6cEoDWC.jpg', 'bai-viet-1', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'DRAFT', '2022-11-15 01:15:00', '2022-11-16 02:37:38'),
(8, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\86VHlA19LIZsLoXCDbyw.jpg', 'bai-viet-2', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-16 02:31:13'),
(9, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-3', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(10, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-4', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(11, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-5', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(12, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-6', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(13, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-7', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(14, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-8', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(15, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-9', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(16, 1, 3, 'bài viết 1', 'nội dung bài viết 1', '<p>nội dung b&agrave;i viết 1</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://localhost:8000/storage/posts/November2022/tintuc21.jpg\" alt=\"\" width=\"80%\" height=\"auto\"></p>', 'posts\\November2022\\FjhMx3W57VxsuYMLBCy0.jpg', 'bai-viet-10', 'nội dung bài viết 1', 'hoạt động chuyên môn', 'PUBLISHED', '2022-11-15 01:15:00', '2022-11-14 18:16:31'),
(17, 1, 2, 'THÔNG TIN TUYỂN SINH ĐẠI HỌC CHÍNH QUY NĂM 2022', 'THÔNG TIN TUYỂN SINH ĐẠI HỌC CHÍNH QUY NĂM 2022', '<div><strong>A. PHƯƠNG THỨC X&Eacute;T TUYỂN ĐẠI HỌC CH&Iacute;NH QUY NĂM 2022</strong></div>\r\n<div><strong>Phương thức 1</strong>&nbsp;(1% = 17 chỉ ti&ecirc;u): X&eacute;t tuyển thẳng theo quy định của Bộ GD&amp;ĐT (cập nhật chi tiết khi Bộ GD c&oacute; hướng dẫn).</div>\r\n<div><strong>Phương thức 2</strong>&nbsp;(50% = 835 chỉ ti&ecirc;u): X&eacute;t tuyển kết quả kỳ thi tốt nghiệp THPT năm 2022. Điểm x&eacute;t tuyển = M1+M2+M3 + điểm ƯT (nếu c&oacute;)</div>\r\n<div><strong>Phương thức 3</strong>&nbsp;(47% = 784 chỉ ti&ecirc;u): X&eacute;t tuyển kết quả học bạ THPT.</div>\r\n<div>Đối với tổ hợp kh&ocirc;ng c&oacute; m&ocirc;n năng khiếu: Điểm x&eacute;t tuyển (ĐXT) = M1+M2+M3 + điểm ƯT (nếu c&oacute;)</div>\r\n<div>M&ocirc;n 1 (M1) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\r\n<div>M&ocirc;n 2 (M2) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\r\n<div>M&ocirc;n 3 (M3) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\r\n<div>Đối với tổ hợp c&oacute; thi năng khiếu ng&agrave;nh Gi&aacute;o dục Mầm non: ĐXT = ĐTBCN lớp 12 m&ocirc;n Ngữ văn + Điểm năng khiếu 1 (Kể chuyện) + Điểm năng khiếu 2 (H&aacute;t) + Điểm ưu ti&ecirc;n (nếu c&oacute;)</div>\r\n<div><strong>Phương thức 4</strong>&nbsp;(2% = 34 chỉ ti&ecirc;u): X&eacute;t tuyển kết hợp (sử dụng điểm của 2 trong 3 m&ocirc;n thuộc tổ hợp x&eacute;t tuyển v&agrave; chứng chỉ ngoại ngữ hoặc chứng nhận học sinh giỏi cấp tỉnh hoặc học sinh giỏi THPT 3 năm liền (chi tiết tại đ&acirc;y)</div>\r\n<div><strong>B. TỔ HỢP, CHỈ TI&Ecirc;U X&Eacute;T TUYỂN V&Agrave; NGƯỠNG ĐIỂM NHẬN HỒ SƠ</strong></div>\r\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td rowspan=\"2\" width=\"4%\">\r\n<div><strong>TT</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"21%\">\r\n<div><strong>Ng&agrave;nh/chuy&ecirc;n ng&agrave;nh</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"10%\">\r\n<div><strong>M&atilde; ng&agrave;nh</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"25%\">\r\n<div><strong>Tổ hợp m&ocirc;n&nbsp;</strong></div>\r\n<div><strong>x&eacute;t tuyển</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"8%\">\r\n<div><strong>M&atilde;</strong></div>\r\n<div><strong>tổ hợp</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"6%\">\r\n<div><strong>Chỉ ti&ecirc;u</strong></div>\r\n</td>\r\n<td colspan=\"2\" width=\"23%\">\r\n<div><strong>Ngưỡng điểm nhận</strong></div>\r\n<div><strong>hồ sơ x&eacute;t tuyển</strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>X&eacute;t điểm thi THPT</strong></div>\r\n</td>\r\n<td width=\"11%\">\r\n<div><strong>X&eacute;t học</strong></div>\r\n<div><strong>bạ THPT</strong></div>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>1.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7810103</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D10</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>180</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>2.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị kh&aacute;ch sạn</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7810201</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>180</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>3.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị nh&agrave; h&agrave;ng v&agrave; dịch vụ ăn uống</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7810202</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; Sử &ndash; Địa</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>C00</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>180</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>4.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Khoa học m&aacute;y t&iacute;nh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7480101</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. To&aacute;n &ndash; H&oacute;a &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D07</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>5.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản l&yacute; văn h&oacute;a, gồm c&aacute;c CN:</div>\r\n<div><em>+ Văn h&oacute;a du lịch</em></div>\r\n<div><em>+ Tổ chức sự kiện</em></div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7229042</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. Văn &ndash; Sử &ndash; Địa</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>C00</div>\r\n<div>C04</div>\r\n<div>D01</div>\r\n<div>D15</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>6.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ Anh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220201</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. Văn &ndash; Địa &ndash;Anh</div>\r\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D15</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>200</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>20đ</div>\r\n<div>(Tiếng Anh nh&acirc;n hệ số 2)</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n Anh &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>7.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ Trung Quốc</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220204</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Trung</div>\r\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D04</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>150</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>8.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ Nhật</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220209</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Nhật</div>\r\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D06</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>60</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>9.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ H&agrave;n Quốc</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220210</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. To&aacute;n &ndash; Địa &ndash; H&agrave;n</div>\r\n<div>3. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>AH1</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>10.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Nu&ocirc;i trồng thủy sản</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7620301</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. To&aacute;n &ndash; H&oacute;a &ndash; Sinh</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>B00</div>\r\n<div>D01</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>50</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>11.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7850101</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>50</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>12.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Gi&aacute;o dục Mầm non</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7140201</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; Địa &ndash; GDCD</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; GDCD</div>\r\n<div>3. Văn &ndash; Địa &ndash; GDCD</div>\r\n<div>4. Văn &ndash; Kể chuyện &ndash; H&aacute;t</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A09</div>\r\n<div>C14</div>\r\n<div>C20</div>\r\n<div>M01</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>50 chỉ ti&ecirc;u</div>\r\n<div>(Tổng điểm của khối x&eacute;t &gt;=19đ)</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>50 chỉ ti&ecirc;u</div>\r\n<div>&ndash; Nếu x&eacute;t theo tổ hợp 4 (M01): điểm Văn &gt;=8 v&agrave; học lực lớp 12 giỏi v&agrave; tổng điểm&gt;=19đ</div>\r\n<div>&ndash; Nếu x&eacute;t theo tổ hợp 1,2,3: học lực lớp 12 giỏi v&agrave; tổng 3 m&ocirc;n x&eacute;t tuyển &gt;=24đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>13.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Gi&aacute;o dục Tiểu học</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7140202</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. To&aacute;n &ndash; Địa &ndash; Anh</div>\r\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>C04</div>\r\n<div>D01</div>\r\n<div>D10</div>\r\n<div>D15</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>19đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>24đ</div>\r\n<div>(học lực lớp 12 loại giỏi)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>14.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị kinh doanh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7340101</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D10</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>40</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>15.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Thiết kế đồ họa</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7210403</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; L&yacute;</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; GDCD</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>C01</div>\r\n<div>C14</div>\r\n<div>D01</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>40</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>16.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Văn học</div>\r\n<div><em>(chuy&ecirc;n ng&agrave;nh Văn b&aacute;o ch&iacute; truyền th&ocirc;ng)</em></div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7229030</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. Văn &ndash; Sử &ndash; Địa</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>C00</div>\r\n<div>C04</div>\r\n<div>D01</div>\r\n<div>D15</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>40</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div><em>Th&iacute; sinh cần li&ecirc;n hệ tư vấn tuyển sinh, xin vui l&ograve;ng li&ecirc;n hệ số điện thoại:&nbsp;<strong>0886.88.98.98</strong></em></div>\r\n<div><strong>C. QUY ĐỊNH HỒ SƠ V&Agrave; THỜI GIAN X&Eacute;T TUYỂN NĂM 2022</strong></div>\r\n<div><strong>1. X&eacute;t tuyển thẳng; x&eacute;t kết quả thi tốt nghiệp THPT 2022:</strong></div>\r\n<div>Đợt 1: Thực hiện theo thời gian quy định của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo.</div>\r\n<div>Đợt 2: Sau khi c&ocirc;ng bố kết quả x&eacute;t đợt 1. Th&iacute; sinh nộp phiếu điểm thi THPT v&agrave; phiếu đăng k&yacute; x&eacute;t tuyển (Biểu 1)</div>\r\n<div><strong>2. X&eacute;t học bạ THPT:</strong></div>\r\n<div><strong><em>a) Hồ sơ gồm:</em></strong></div>\r\n<div>- Phiếu đăng k&yacute; x&eacute;t tuyển theo học bạ: Hệ đại học (Biểu 2)</div>\r\n<div>- Học bạ THPT (bản ph&ocirc; t&ocirc;);</div>\r\n<div>- Bằng tốt nghiệp THPT hoặc giấy chứng nhận tốt nghiệp tạm thời đối với th&iacute; sinh tốt nghiệp năm 2022 (bản ph&ocirc; t&ocirc;). Th&iacute; sinh tốt nghiệp năm 2022, được ph&eacute;p nộp sau nếu tại thời điểm nộp hồ sơ chưa c&oacute;;</div>\r\n<div>- Lệ ph&iacute; x&eacute;t tuyển: 30.000đ/ 1 nguyện vọng x&eacute;t tuyển</div>\r\n<div>Ri&ecirc;ng đối với th&iacute; sinh đăng k&yacute; x&eacute;t tuyển đại học ng&agrave;nh Gi&aacute;o dục Mầm non, ngo&agrave;i c&aacute;c hồ sơ tr&ecirc;n phải nộp th&ecirc;m c&aacute;c hồ sơ sau:</div>\r\n<div>- Hai ảnh cỡ 3&times;4 cm kiểu chứng minh thư mới chụp trong v&ograve;ng 6 th&aacute;ng</div>\r\n<div>- Bản photocopy 2 mặt Giấy chứng minh nh&acirc;n d&acirc;n tr&ecirc;n 1 mặt giấy A4</div>\r\n<div>- Lệ ph&iacute; thi năng khiếu: 300.000đ/ hồ sơ</div>\r\n<div><strong><em>b) Thời gian nhận hồ sơ v&agrave; x&eacute;t tuyển</em></strong></div>\r\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt x&eacute;t</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div><strong>Tiếp nhận hồ sơ</strong></div>\r\n</td>\r\n<td width=\"12%\">\r\n<div><strong>X&eacute;t tuyển</strong></div>\r\n</td>\r\n<td width=\"16%\">\r\n<div><strong>C&ocirc;ng bố</strong></div>\r\n<div><strong>tr&uacute;ng tuyển</strong></div>\r\n</td>\r\n<td width=\"25%\">\r\n<div><strong>Th&iacute; sinh tr&uacute;ng tuyển nhập học</strong></div>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 1</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 15/02/2022 đến 17h00&rsquo; ng&agrave;y 30/4/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>09/5/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>10/5/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 2</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/5/2022 đến 17h00&rsquo; ng&agrave;y 31/5/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>08/6/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>09/6/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 3</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/6/2022 đến 17h00&rsquo; ng&agrave;y 30/6/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>08/7/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>09/7/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 4</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/7/2022 đến 17h00&rsquo; ng&agrave;y 31/7/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>05/8/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>06/8/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 5</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/8/2022 đến 17h00&rsquo; ng&agrave;y 31/8/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>06/9/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>07/9/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>16/9/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 6</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/9/2022 đến 17h00&rsquo; ng&agrave;y 30/9/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>07/10/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>08/10/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>14/10/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div><strong>3. X&eacute;t kết hợp:</strong>&nbsp;sử dụng điểm học bạ hoặc điểm thi THPT của 2 trong 3 m&ocirc;n thuộc tổ hợp x&eacute;t tuyển v&agrave; chứng chỉ ngoại ngữ/chứng nhận học sinh giỏi cấp tỉnh/học sinh giỏi THPT 3 năm liền.</div>\r\n<div><strong><em>a) Hồ sơ gồm:</em></strong></div>\r\n<div>- Phiếu đăng k&yacute; x&eacute;t tuyển theo h&igrave;nh thức x&eacute;t kết hợp (Biểu 3);</div>\r\n<div>- Bằng tốt nghiệp THPT hoặc giấy chứng nhận tốt nghiệp tạm thời năm 2022 (bản ph&ocirc; t&ocirc;). Th&iacute; sinh tốt nghiệp năm 2022, được ph&eacute;p nộp sau nếu tại thời điểm nộp hồ sơ chưa c&oacute;;</div>\r\n<div>- Chứng chỉ ngoại ngữ/chứng nhận học sinh giỏi cấp tỉnh/học sinh giỏi THPT 3 năm liền (bản c&ocirc;ng chứng);</div>\r\n<div>- Giấy chứng nhận điểm thi tốt nghiệp THPT năm 2021 (nếu dử dụng điểm thi THPT) hoặc học bạ THPT (bản ph&ocirc; t&ocirc;);</div>\r\n<div>- Lệ ph&iacute; x&eacute;t tuyển: 30.000đ/ 1 nguyện vọng x&eacute;t tuyển</div>\r\n<div><strong><em>b) Thời gian nhận hồ sơ v&agrave; x&eacute;t tuyển</em></strong></div>\r\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td width=\"12%\">\r\n<div><strong>Đợt x&eacute;t</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div><strong>Tiếp nhận hồ sơ</strong></div>\r\n</td>\r\n<td width=\"12%\">\r\n<div><strong>X&eacute;t tuyển</strong></div>\r\n</td>\r\n<td width=\"16%\">\r\n<div><strong>C&ocirc;ng bố</strong></div>\r\n<div><strong>tr&uacute;ng tuyển</strong></div>\r\n</td>\r\n<td width=\"25%\">\r\n<div><strong>Th&iacute; sinh tr&uacute;ng tuyển nhập học</strong></div>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td width=\"12%\">\r\n<div><strong>Đợt 1</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/7/2022 đến 17h00&rsquo; ng&agrave;y 31/7/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>05/8/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>06/8/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"12%\">\r\n<div><strong>Đợt 2</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/8/2022 đến 17h00&rsquo; ng&agrave;y 31/8/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>06/9/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>07/9/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>16/9/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div><strong>4. Hướng dẫn nộp hồ sơ x&eacute;t tuyển</strong></div>\r\n<div>Địa chỉ nhận hồ sơ x&eacute;t tuyển: Ph&ograve;ng Đ&agrave;o tạo - Trường Đại học Hạ Long Cơ sở 1: Số 258 Đường Bạch Đằng, P. Nam Kh&ecirc;, TP U&ocirc;ng B&iacute;, Quảng Ninh Điện thoại: 0386.173.838 (C&ocirc;: Nguyễn Thị Thu Hiền)</div>\r\n<div><strong><em>a. C&aacute;ch thức nộp hồ sơ:</em></strong></div>\r\n<div>C&aacute;ch 1: Th&iacute; sinh nộp hồ sơ trực tiếp tại Trường Đại học Hạ Long;</div>\r\n<div>C&aacute;ch 2: Th&iacute; sinh nộp hồ sơ qua đường chuyển ph&aacute;t nhanh;</div>\r\n<div>C&aacute;ch 3: Đăng k&yacute; trực tuyến tại đ&acirc;y</div>\r\n<div><strong><em>b. Địa chỉ nộp hồ sơ x&eacute;t tuyển nếu th&iacute; sinh kh&ocirc;ng đăng k&yacute; trực tuyến:</em></strong></div>\r\n<div><em>Cơ sở 1:</em></div>\r\n<div>Ph&ograve;ng Đ&agrave;o tạo &ndash; Trường Đại học Hạ Long<br>Số 258 Đường Bạch Đằng, P. Nam Kh&ecirc;, TP U&ocirc;ng B&iacute;, Quảng Ninh<br>Điện thoại: (0203) 3850.854 /0386.173.838 (Nguyễn Thị Thu Hiền)</div>\r\n<div>Hoặc</div>\r\n<div><em>Cơ sở 2:</em></div>\r\n<div>Ph&ograve;ng Đ&agrave;o tạo &ndash; Trường Đại học Hạ Long<br>Số 58 Đường Nguyễn Văn Cừ, P. Hồng Hải, TP Hạ Long, Quảng Ninh.<br>Điện thoại: (0203) 3659.232/0912.388.809 (Nguyễn Thị Thanh Thảo)</div>\r\n<div><strong><em>c. Số điện thoại tư vấn</em></strong>:&nbsp;<strong>0886.88.98.98</strong>, facebook: www.facebook.com/halonguniversity/</div>\r\n<div><strong>D. HỌC BỔNG, CH&Iacute;NH S&Aacute;CH HỖ TRỢ</strong></div>\r\n<div>Học bổng của tỉnh Quảng Ninh v&agrave; của Trường Đại học Hạ Long d&agrave;nh cho học sinh, sinh vi&ecirc;n năm 2022:</div>\r\n<div><strong>1. Học bổng của tỉnh Quảng Ninh</strong></div>\r\n<div>Đối tượng: Sinh vi&ecirc;n (SV) tr&uacute;ng tuyển nhập học 07 ng&agrave;nh ĐẠI HỌC được hưởng ch&iacute;nh s&aacute;ch theo Nghị quyết số 35/2021/NQ-HĐND ng&agrave;y 27/8/2021 của Hội đồng nh&acirc;n d&acirc;n tỉnh Quảng Ninh. Gồm c&aacute;c ng&agrave;nh:</div>\r\n<div>(1) Nu&ocirc;i trồng thủy sản;</div>\r\n<div>(2) Ng&ocirc;n ngữ H&agrave;n Quốc;</div>\r\n<div>(3) Ng&ocirc;n ngữ Nhật Bản;</div>\r\n<div>(4) Ng&ocirc;n ngữ Trung Quốc;</div>\r\n<div>(5) Quản trị kh&aacute;ch sạn;</div>\r\n<div>(6) Quản trị nh&agrave; h&agrave;ng v&agrave; dịch vụ ăn uống;</div>\r\n<div>(7) Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh.</div>\r\n<div>Nội dung hưởng v&agrave; mức hưởng:&nbsp;TỐI ĐA 250 TRIỆU/SV TRONG TO&Agrave;N KH&Oacute;A HỌC</div>\r\n<div><strong><em>Thưởng điểm tuyển sinh đầu v&agrave;o:</em></strong></div>\r\n<div>- Thưởng 15 triệu nếu c&oacute; điểm từ 21 đến dưới 24 điểm;</div>\r\n<div>- Thưởng 20 triệu nếu c&oacute; điểm từ 24 đến dưới 27 điểm hoặc đạt giải khuyến kh&iacute;ch HSG quốc gia hoặc giải khuyến kh&iacute;ch khoa học kỹ thuật quốc gia;</div>\r\n<div>- Thưởng 30 triệu nếu c&oacute; điểm từ 27 điểm trở l&ecirc;n hoặc đạt giải Ba HSG quốc gia hoặc giải Ba khoa học kỹ thuật quốc gia;</div>\r\n<div>- Thưởng 50 triệu nếu đạt giải Nh&igrave; HSG quốc gia hoặc giải nh&igrave; khoa học kỹ thuật quốc gia</div>\r\n<div><strong><em>Hỗ trợ:</em></strong></div>\r\n<div>- Hỗ trợ tiền mua đồ d&ugrave;ng học tập v&agrave; học ph&iacute;: 150.000 đồng/th&aacute;ng v&agrave; 100% học ph&iacute; phải đ&oacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; điểm r&egrave;n luyện trong học kỳ từ kh&aacute; trở l&ecirc;n (kh&ocirc;ng qu&aacute; 20% tổng sinh vi&ecirc;n từng ng&agrave;nh);</div>\r\n<div>- Hỗ trợ tiền ăn: Sinh vi&ecirc;n thuộc đối tượng được miễn giảm học ph&iacute; theo quy định của Nh&agrave; nước được hỗ trợ 600.000đ/th&aacute;ng;</div>\r\n<div>- Hỗ trợ chỗ ở: Sinh vi&ecirc;n c&oacute; khoảng c&aacute;ch từ nh&agrave; đến trường từ 15km trở l&ecirc;n v&agrave; c&oacute; điểm trung b&igrave;nh học tập, r&egrave;n luyện từ kh&aacute; trở l&ecirc;n được bố tr&iacute; chỗ ở miễn ph&iacute; tại k&yacute; t&uacute;c x&aacute;; trường hợp nh&agrave; trường kh&ocirc;ng bố tr&iacute; được chỗ ở, sinh vi&ecirc;n được hỗ trợ tiền thu&ecirc; nh&agrave; l&agrave; 300.000đ/th&aacute;ng;</div>\r\n<div>- Hỗ trợ học ph&iacute; + 600.000đ/th&aacute;ng tiền ăn + miễn ph&iacute; chỗ ở: D&agrave;nh cho đối tượng sinh vi&ecirc;n c&oacute; hộ khẩu thường tr&uacute; tại tỉnh Quảng Ninh thuộc một trong c&aacute;c đối tượng sau:</div>\r\n<div>+ Hộ ngh&egrave;o, cận ngh&egrave;o;</div>\r\n<div>+ Thuộc x&atilde; khu vực I v&ugrave;ng đồng b&agrave;o d&acirc;n tộc thiểu số, miền n&uacute;i;</div>\r\n<div>+ Tốt nghiệp c&aacute;c trường phổ th&ocirc;ng d&acirc;n tộc nội tr&uacute; của tỉnh Quảng Ninh;</div>\r\n<div>+ Người ho&agrave;n th&agrave;nh nghĩa vụ qu&acirc;n sự, c&ocirc;ng an.</div>\r\n<div><strong><em>Khuyến kh&iacute;ch học tập:</em></strong></div>\r\n<div>- Sinh vi&ecirc;n được thưởng 1,5 triệu/th&aacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; r&egrave;n luyện học kỳ đạt loại giỏi;</div>\r\n<div>- Sinh vi&ecirc;n được thưởng 2,2 triệu/th&aacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; r&egrave;n luyện học kỳ đạt loại xuất sắc;</div>\r\n<div><strong><em>Thưởng tốt nghiệp:</em></strong></div>\r\n<div>- Sinh vi&ecirc;n được thưởng 15 triệu đồng nếu tốt nghiệp loại giỏi; được doanh nghiệp tuyển dụng sau 12 th&aacute;ng; cam kết l&agrave;m việc ở Quảng Ninh đủ 36 th&aacute;ng;</div>\r\n<div>- Sinh vi&ecirc;n được thưởng 30 triệu đồng nếu tốt nghiệp loại xuất sắc; được doanh nghiệp tuyển dụng sau 12 th&aacute;ng; cam kết l&agrave;m việc ở Quảng Ninh đủ 36 th&aacute;ng;</div>\r\n<div>- Thời gian thực hiện: Sinh vi&ecirc;n tuyển sinh trước 31/12/2025, &aacute;p dụng cho cả kh&oacute;a học.</div>\r\n<div><strong>2. Học bổng đầu v&agrave;o của Trường Đại học Hạ Long</strong></div>\r\n<div><strong><em>Đối tượng</em></strong>: Sinh vi&ecirc;n tr&uacute;ng tuyển nhập học c&aacute;c ng&agrave;nh Quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường, Khoa học m&aacute;y t&iacute;nh, Quản l&yacute; văn h&oacute;a, Ng&ocirc;n ngữ Anh được nhận HỌC BỔNG ĐẦU V&Agrave;O của Trường Đại học Hạ Long.</div>\r\n<div><strong><em>Nội dung hưởng v&agrave; mức hưởng:</em></strong></div>\r\n<div>- Mức 1: 20 suất học bổng bằng 200% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 27 điểm trở l&ecirc;n.</div>\r\n<div>- Mức 2: 20 suất học bổng bằng 100% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 24 đến dưới 27 điểm trở l&ecirc;n.</div>\r\n<div>- Mức 3: 20 suất học bổng bằng 50% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 21 đến dưới 24 điểm trở l&ecirc;n.</div>\r\n<div>Học bổng trong qu&aacute; tr&igrave;nh học theo quy định của Nh&agrave; nước: thực hiện theo quy định.</div>\r\n<div>Học bổng được t&agrave;i trợ bởi c&aacute;c doanh nghiệp c&oacute; li&ecirc;n kết với Trường Đại học Hạ Long (nhiều loại)&nbsp;</div>', 'posts\\November2022\\fXkF7kXyFV6h7oRtFvUL.jpg', 'thong-tin-tuyen-sinh-dai-hoc-chinh-quy-nam-2022', 'Năm 2022, Trường đại học hạ long tuyển sinh 17 chỉ tiêu xét thẳng theo quy định, 835 xét tuyển kết quả kỳ thi tốt nghiệp THPT năm 2022, 784 xét tuyển kết quả học bạ THPT.', 'tuyển sinh ,đại học hạ long', 'PUBLISHED', '2022-11-23 15:01:00', '2022-11-23 08:11:29');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(18, 1, 2, 'TUYỂN SINH NGÀNH KHOA HỌC MÁY TÍNH 2022', 'TUYỂN SINH NGÀNH KHOA HỌC MÁY TÍNH 2022', '<div><strong>A. PHƯƠNG THỨC X&Eacute;T TUYỂN ĐẠI HỌC CH&Iacute;NH QUY NĂM 2022</strong></div>\r\n<div><strong>Phương thức 1</strong>&nbsp;(1% = 17 chỉ ti&ecirc;u): X&eacute;t tuyển thẳng theo quy định của Bộ GD&amp;ĐT (cập nhật chi tiết khi Bộ GD c&oacute; hướng dẫn).</div>\r\n<div><strong>Phương thức 2</strong>&nbsp;(50% = 835 chỉ ti&ecirc;u): X&eacute;t tuyển kết quả kỳ thi tốt nghiệp THPT năm 2022. Điểm x&eacute;t tuyển = M1+M2+M3 + điểm ƯT (nếu c&oacute;)</div>\r\n<div><strong>Phương thức 3</strong>&nbsp;(47% = 784 chỉ ti&ecirc;u): X&eacute;t tuyển kết quả học bạ THPT.</div>\r\n<div>Đối với tổ hợp kh&ocirc;ng c&oacute; m&ocirc;n năng khiếu: Điểm x&eacute;t tuyển (ĐXT) = M1+M2+M3 + điểm ƯT (nếu c&oacute;)</div>\r\n<div>M&ocirc;n 1 (M1) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\r\n<div>M&ocirc;n 2 (M2) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\r\n<div>M&ocirc;n 3 (M3) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\r\n<div>Đối với tổ hợp c&oacute; thi năng khiếu ng&agrave;nh Gi&aacute;o dục Mầm non: ĐXT = ĐTBCN lớp 12 m&ocirc;n Ngữ văn + Điểm năng khiếu 1 (Kể chuyện) + Điểm năng khiếu 2 (H&aacute;t) + Điểm ưu ti&ecirc;n (nếu c&oacute;)</div>\r\n<div><strong>Phương thức 4</strong>&nbsp;(2% = 34 chỉ ti&ecirc;u): X&eacute;t tuyển kết hợp (sử dụng điểm của 2 trong 3 m&ocirc;n thuộc tổ hợp x&eacute;t tuyển v&agrave; chứng chỉ ngoại ngữ hoặc chứng nhận học sinh giỏi cấp tỉnh hoặc học sinh giỏi THPT 3 năm liền (chi tiết tại đ&acirc;y)</div>\r\n<div><strong>B. TỔ HỢP, CHỈ TI&Ecirc;U X&Eacute;T TUYỂN V&Agrave; NGƯỠNG ĐIỂM NHẬN HỒ SƠ</strong></div>\r\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td rowspan=\"2\" width=\"4%\">\r\n<div><strong>TT</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"21%\">\r\n<div><strong>Ng&agrave;nh/chuy&ecirc;n ng&agrave;nh</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"10%\">\r\n<div><strong>M&atilde; ng&agrave;nh</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"25%\">\r\n<div><strong>Tổ hợp m&ocirc;n&nbsp;</strong></div>\r\n<div><strong>x&eacute;t tuyển</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"8%\">\r\n<div><strong>M&atilde;</strong></div>\r\n<div><strong>tổ hợp</strong></div>\r\n</td>\r\n<td rowspan=\"2\" width=\"6%\">\r\n<div><strong>Chỉ ti&ecirc;u</strong></div>\r\n</td>\r\n<td colspan=\"2\" width=\"23%\">\r\n<div><strong>Ngưỡng điểm nhận</strong></div>\r\n<div><strong>hồ sơ x&eacute;t tuyển</strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>X&eacute;t điểm thi THPT</strong></div>\r\n</td>\r\n<td width=\"11%\">\r\n<div><strong>X&eacute;t học</strong></div>\r\n<div><strong>bạ THPT</strong></div>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>1.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7810103</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D10</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>180</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>2.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị kh&aacute;ch sạn</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7810201</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>180</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>3.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị nh&agrave; h&agrave;ng v&agrave; dịch vụ ăn uống</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7810202</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; Sử &ndash; Địa</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>C00</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>180</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>4.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Khoa học m&aacute;y t&iacute;nh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7480101</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. To&aacute;n &ndash; H&oacute;a &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D07</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>5.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản l&yacute; văn h&oacute;a, gồm c&aacute;c CN:</div>\r\n<div><em>+ Văn h&oacute;a du lịch</em></div>\r\n<div><em>+ Tổ chức sự kiện</em></div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7229042</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. Văn &ndash; Sử &ndash; Địa</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>C00</div>\r\n<div>C04</div>\r\n<div>D01</div>\r\n<div>D15</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>6.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ Anh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220201</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. Văn &ndash; Địa &ndash;Anh</div>\r\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D15</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>200</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>20đ</div>\r\n<div>(Tiếng Anh nh&acirc;n hệ số 2)</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n Anh &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>7.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ Trung Quốc</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220204</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Trung</div>\r\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D04</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>150</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>8.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ Nhật</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220209</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Nhật</div>\r\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D06</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>60</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>9.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Ng&ocirc;n ngữ H&agrave;n Quốc</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7220210</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. To&aacute;n &ndash; Địa &ndash; H&agrave;n</div>\r\n<div>3. Văn &ndash; KHXH &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>AH1</div>\r\n<div>D78</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>21đ</div>\r\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>10.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Nu&ocirc;i trồng thủy sản</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7620301</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. To&aacute;n &ndash; H&oacute;a &ndash; Sinh</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n</td>\r\n<td rowspan=\"2\" width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>B00</div>\r\n<div>D01</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>50</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>11.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7850101</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>50</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>12.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Gi&aacute;o dục Mầm non</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7140201</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; Địa &ndash; GDCD</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; GDCD</div>\r\n<div>3. Văn &ndash; Địa &ndash; GDCD</div>\r\n<div>4. Văn &ndash; Kể chuyện &ndash; H&aacute;t</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A09</div>\r\n<div>C14</div>\r\n<div>C20</div>\r\n<div>M01</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>50 chỉ ti&ecirc;u</div>\r\n<div>(Tổng điểm của khối x&eacute;t &gt;=19đ)</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>50 chỉ ti&ecirc;u</div>\r\n<div>&ndash; Nếu x&eacute;t theo tổ hợp 4 (M01): điểm Văn &gt;=8 v&agrave; học lực lớp 12 giỏi v&agrave; tổng điểm&gt;=19đ</div>\r\n<div>&ndash; Nếu x&eacute;t theo tổ hợp 1,2,3: học lực lớp 12 giỏi v&agrave; tổng 3 m&ocirc;n x&eacute;t tuyển &gt;=24đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>13.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Gi&aacute;o dục Tiểu học</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7140202</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>3. To&aacute;n &ndash; Địa &ndash; Anh</div>\r\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>C04</div>\r\n<div>D01</div>\r\n<div>D10</div>\r\n<div>D15</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>100</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>19đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>24đ</div>\r\n<div>(học lực lớp 12 loại giỏi)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>14.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Quản trị kinh doanh</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7340101</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>A01</div>\r\n<div>D01</div>\r\n<div>D10</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>40</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>15.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Thiết kế đồ họa</div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7210403</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; L&yacute;</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; GDCD</div>\r\n<div>4. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>A00</div>\r\n<div>C01</div>\r\n<div>C14</div>\r\n<div>D01</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>40</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"4%\">\r\n<div>16.</div>\r\n</td>\r\n<td width=\"21%\">\r\n<div>Văn học</div>\r\n<div><em>(chuy&ecirc;n ng&agrave;nh Văn b&aacute;o ch&iacute; truyền th&ocirc;ng)</em></div>\r\n</td>\r\n<td width=\"10%\">\r\n<div>7229030</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>1. Văn &ndash; Sử &ndash; Địa</div>\r\n<div>2. Văn &ndash; To&aacute;n &ndash; Địa</div>\r\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\r\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\r\n</td>\r\n<td width=\"8%\">\r\n<div>C00</div>\r\n<div>C04</div>\r\n<div>D01</div>\r\n<div>D15</div>\r\n</td>\r\n<td width=\"6%\">\r\n<div>40</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>15đ</div>\r\n</td>\r\n<td width=\"11%\">\r\n<div>18đ</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div><em>Th&iacute; sinh cần li&ecirc;n hệ tư vấn tuyển sinh, xin vui l&ograve;ng li&ecirc;n hệ số điện thoại:&nbsp;<strong>0886.88.98.98</strong></em></div>\r\n<div><strong>C. QUY ĐỊNH HỒ SƠ V&Agrave; THỜI GIAN X&Eacute;T TUYỂN NĂM 2022</strong></div>\r\n<div><strong>1. X&eacute;t tuyển thẳng; x&eacute;t kết quả thi tốt nghiệp THPT 2022:</strong></div>\r\n<div>Đợt 1: Thực hiện theo thời gian quy định của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo.</div>\r\n<div>Đợt 2: Sau khi c&ocirc;ng bố kết quả x&eacute;t đợt 1. Th&iacute; sinh nộp phiếu điểm thi THPT v&agrave; phiếu đăng k&yacute; x&eacute;t tuyển (Biểu 1)</div>\r\n<div><strong>2. X&eacute;t học bạ THPT:</strong></div>\r\n<div><strong><em>a) Hồ sơ gồm:</em></strong></div>\r\n<div>- Phiếu đăng k&yacute; x&eacute;t tuyển theo học bạ: Hệ đại học (Biểu 2)</div>\r\n<div>- Học bạ THPT (bản ph&ocirc; t&ocirc;);</div>\r\n<div>- Bằng tốt nghiệp THPT hoặc giấy chứng nhận tốt nghiệp tạm thời đối với th&iacute; sinh tốt nghiệp năm 2022 (bản ph&ocirc; t&ocirc;). Th&iacute; sinh tốt nghiệp năm 2022, được ph&eacute;p nộp sau nếu tại thời điểm nộp hồ sơ chưa c&oacute;;</div>\r\n<div>- Lệ ph&iacute; x&eacute;t tuyển: 30.000đ/ 1 nguyện vọng x&eacute;t tuyển</div>\r\n<div>Ri&ecirc;ng đối với th&iacute; sinh đăng k&yacute; x&eacute;t tuyển đại học ng&agrave;nh Gi&aacute;o dục Mầm non, ngo&agrave;i c&aacute;c hồ sơ tr&ecirc;n phải nộp th&ecirc;m c&aacute;c hồ sơ sau:</div>\r\n<div>- Hai ảnh cỡ 3&times;4 cm kiểu chứng minh thư mới chụp trong v&ograve;ng 6 th&aacute;ng</div>\r\n<div>- Bản photocopy 2 mặt Giấy chứng minh nh&acirc;n d&acirc;n tr&ecirc;n 1 mặt giấy A4</div>\r\n<div>- Lệ ph&iacute; thi năng khiếu: 300.000đ/ hồ sơ</div>\r\n<div><strong><em>b) Thời gian nhận hồ sơ v&agrave; x&eacute;t tuyển</em></strong></div>\r\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt x&eacute;t</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div><strong>Tiếp nhận hồ sơ</strong></div>\r\n</td>\r\n<td width=\"12%\">\r\n<div><strong>X&eacute;t tuyển</strong></div>\r\n</td>\r\n<td width=\"16%\">\r\n<div><strong>C&ocirc;ng bố</strong></div>\r\n<div><strong>tr&uacute;ng tuyển</strong></div>\r\n</td>\r\n<td width=\"25%\">\r\n<div><strong>Th&iacute; sinh tr&uacute;ng tuyển nhập học</strong></div>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 1</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 15/02/2022 đến 17h00&rsquo; ng&agrave;y 30/4/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>09/5/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>10/5/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 2</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/5/2022 đến 17h00&rsquo; ng&agrave;y 31/5/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>08/6/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>09/6/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 3</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/6/2022 đến 17h00&rsquo; ng&agrave;y 30/6/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>08/7/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>09/7/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 4</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/7/2022 đến 17h00&rsquo; ng&agrave;y 31/7/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>05/8/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>06/8/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 5</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/8/2022 đến 17h00&rsquo; ng&agrave;y 31/8/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>06/9/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>07/9/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>16/9/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"11%\">\r\n<div><strong>Đợt 6</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/9/2022 đến 17h00&rsquo; ng&agrave;y 30/9/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>07/10/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>08/10/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>14/10/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div><strong>3. X&eacute;t kết hợp:</strong>&nbsp;sử dụng điểm học bạ hoặc điểm thi THPT của 2 trong 3 m&ocirc;n thuộc tổ hợp x&eacute;t tuyển v&agrave; chứng chỉ ngoại ngữ/chứng nhận học sinh giỏi cấp tỉnh/học sinh giỏi THPT 3 năm liền.</div>\r\n<div><strong><em>a) Hồ sơ gồm:</em></strong></div>\r\n<div>- Phiếu đăng k&yacute; x&eacute;t tuyển theo h&igrave;nh thức x&eacute;t kết hợp (Biểu 3);</div>\r\n<div>- Bằng tốt nghiệp THPT hoặc giấy chứng nhận tốt nghiệp tạm thời năm 2022 (bản ph&ocirc; t&ocirc;). Th&iacute; sinh tốt nghiệp năm 2022, được ph&eacute;p nộp sau nếu tại thời điểm nộp hồ sơ chưa c&oacute;;</div>\r\n<div>- Chứng chỉ ngoại ngữ/chứng nhận học sinh giỏi cấp tỉnh/học sinh giỏi THPT 3 năm liền (bản c&ocirc;ng chứng);</div>\r\n<div>- Giấy chứng nhận điểm thi tốt nghiệp THPT năm 2021 (nếu dử dụng điểm thi THPT) hoặc học bạ THPT (bản ph&ocirc; t&ocirc;);</div>\r\n<div>- Lệ ph&iacute; x&eacute;t tuyển: 30.000đ/ 1 nguyện vọng x&eacute;t tuyển</div>\r\n<div><strong><em>b) Thời gian nhận hồ sơ v&agrave; x&eacute;t tuyển</em></strong></div>\r\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<thead>\r\n<tr>\r\n<td width=\"12%\">\r\n<div><strong>Đợt x&eacute;t</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div><strong>Tiếp nhận hồ sơ</strong></div>\r\n</td>\r\n<td width=\"12%\">\r\n<div><strong>X&eacute;t tuyển</strong></div>\r\n</td>\r\n<td width=\"16%\">\r\n<div><strong>C&ocirc;ng bố</strong></div>\r\n<div><strong>tr&uacute;ng tuyển</strong></div>\r\n</td>\r\n<td width=\"25%\">\r\n<div><strong>Th&iacute; sinh tr&uacute;ng tuyển nhập học</strong></div>\r\n</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td width=\"12%\">\r\n<div><strong>Đợt 1</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/7/2022 đến 17h00&rsquo; ng&agrave;y 31/7/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>05/8/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>06/8/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>12/8/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"12%\">\r\n<div><strong>Đợt 2</strong></div>\r\n</td>\r\n<td width=\"33%\">\r\n<div>Từ ng&agrave;y 01/8/2022 đến 17h00&rsquo; ng&agrave;y 31/8/2022</div>\r\n</td>\r\n<td width=\"12%\">\r\n<div>06/9/2022</div>\r\n</td>\r\n<td width=\"16%\">\r\n<div>07/9/2022</div>\r\n</td>\r\n<td width=\"25%\">\r\n<div>16/9/2022 (dự kiến)</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div><strong>4. Hướng dẫn nộp hồ sơ x&eacute;t tuyển</strong></div>\r\n<div>Địa chỉ nhận hồ sơ x&eacute;t tuyển: Ph&ograve;ng Đ&agrave;o tạo - Trường Đại học Hạ Long Cơ sở 1: Số 258 Đường Bạch Đằng, P. Nam Kh&ecirc;, TP U&ocirc;ng B&iacute;, Quảng Ninh Điện thoại: 0386.173.838 (C&ocirc;: Nguyễn Thị Thu Hiền)</div>\r\n<div><strong><em>a. C&aacute;ch thức nộp hồ sơ:</em></strong></div>\r\n<div>C&aacute;ch 1: Th&iacute; sinh nộp hồ sơ trực tiếp tại Trường Đại học Hạ Long;</div>\r\n<div>C&aacute;ch 2: Th&iacute; sinh nộp hồ sơ qua đường chuyển ph&aacute;t nhanh;</div>\r\n<div>C&aacute;ch 3: Đăng k&yacute; trực tuyến tại đ&acirc;y</div>\r\n<div><strong><em>b. Địa chỉ nộp hồ sơ x&eacute;t tuyển nếu th&iacute; sinh kh&ocirc;ng đăng k&yacute; trực tuyến:</em></strong></div>\r\n<div><em>Cơ sở 1:</em></div>\r\n<div>Ph&ograve;ng Đ&agrave;o tạo &ndash; Trường Đại học Hạ Long<br>Số 258 Đường Bạch Đằng, P. Nam Kh&ecirc;, TP U&ocirc;ng B&iacute;, Quảng Ninh<br>Điện thoại: (0203) 3850.854 /0386.173.838 (Nguyễn Thị Thu Hiền)</div>\r\n<div>Hoặc</div>\r\n<div><em>Cơ sở 2:</em></div>\r\n<div>Ph&ograve;ng Đ&agrave;o tạo &ndash; Trường Đại học Hạ Long<br>Số 58 Đường Nguyễn Văn Cừ, P. Hồng Hải, TP Hạ Long, Quảng Ninh.<br>Điện thoại: (0203) 3659.232/0912.388.809 (Nguyễn Thị Thanh Thảo)</div>\r\n<div><strong><em>c. Số điện thoại tư vấn</em></strong>:&nbsp;<strong>0886.88.98.98</strong>, facebook: www.facebook.com/halonguniversity/</div>\r\n<div><strong>D. HỌC BỔNG, CH&Iacute;NH S&Aacute;CH HỖ TRỢ</strong></div>\r\n<div>Học bổng của tỉnh Quảng Ninh v&agrave; của Trường Đại học Hạ Long d&agrave;nh cho học sinh, sinh vi&ecirc;n năm 2022:</div>\r\n<div><strong>1. Học bổng của tỉnh Quảng Ninh</strong></div>\r\n<div>Đối tượng: Sinh vi&ecirc;n (SV) tr&uacute;ng tuyển nhập học 07 ng&agrave;nh ĐẠI HỌC được hưởng ch&iacute;nh s&aacute;ch theo Nghị quyết số 35/2021/NQ-HĐND ng&agrave;y 27/8/2021 của Hội đồng nh&acirc;n d&acirc;n tỉnh Quảng Ninh. Gồm c&aacute;c ng&agrave;nh:</div>\r\n<div>(1) Nu&ocirc;i trồng thủy sản;</div>\r\n<div>(2) Ng&ocirc;n ngữ H&agrave;n Quốc;</div>\r\n<div>(3) Ng&ocirc;n ngữ Nhật Bản;</div>\r\n<div>(4) Ng&ocirc;n ngữ Trung Quốc;</div>\r\n<div>(5) Quản trị kh&aacute;ch sạn;</div>\r\n<div>(6) Quản trị nh&agrave; h&agrave;ng v&agrave; dịch vụ ăn uống;</div>\r\n<div>(7) Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh.</div>\r\n<div>Nội dung hưởng v&agrave; mức hưởng:&nbsp;TỐI ĐA 250 TRIỆU/SV TRONG TO&Agrave;N KH&Oacute;A HỌC</div>\r\n<div><strong><em>Thưởng điểm tuyển sinh đầu v&agrave;o:</em></strong></div>\r\n<div>- Thưởng 15 triệu nếu c&oacute; điểm từ 21 đến dưới 24 điểm;</div>\r\n<div>- Thưởng 20 triệu nếu c&oacute; điểm từ 24 đến dưới 27 điểm hoặc đạt giải khuyến kh&iacute;ch HSG quốc gia hoặc giải khuyến kh&iacute;ch khoa học kỹ thuật quốc gia;</div>\r\n<div>- Thưởng 30 triệu nếu c&oacute; điểm từ 27 điểm trở l&ecirc;n hoặc đạt giải Ba HSG quốc gia hoặc giải Ba khoa học kỹ thuật quốc gia;</div>\r\n<div>- Thưởng 50 triệu nếu đạt giải Nh&igrave; HSG quốc gia hoặc giải nh&igrave; khoa học kỹ thuật quốc gia</div>\r\n<div><strong><em>Hỗ trợ:</em></strong></div>\r\n<div>- Hỗ trợ tiền mua đồ d&ugrave;ng học tập v&agrave; học ph&iacute;: 150.000 đồng/th&aacute;ng v&agrave; 100% học ph&iacute; phải đ&oacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; điểm r&egrave;n luyện trong học kỳ từ kh&aacute; trở l&ecirc;n (kh&ocirc;ng qu&aacute; 20% tổng sinh vi&ecirc;n từng ng&agrave;nh);</div>\r\n<div>- Hỗ trợ tiền ăn: Sinh vi&ecirc;n thuộc đối tượng được miễn giảm học ph&iacute; theo quy định của Nh&agrave; nước được hỗ trợ 600.000đ/th&aacute;ng;</div>\r\n<div>- Hỗ trợ chỗ ở: Sinh vi&ecirc;n c&oacute; khoảng c&aacute;ch từ nh&agrave; đến trường từ 15km trở l&ecirc;n v&agrave; c&oacute; điểm trung b&igrave;nh học tập, r&egrave;n luyện từ kh&aacute; trở l&ecirc;n được bố tr&iacute; chỗ ở miễn ph&iacute; tại k&yacute; t&uacute;c x&aacute;; trường hợp nh&agrave; trường kh&ocirc;ng bố tr&iacute; được chỗ ở, sinh vi&ecirc;n được hỗ trợ tiền thu&ecirc; nh&agrave; l&agrave; 300.000đ/th&aacute;ng;</div>\r\n<div>- Hỗ trợ học ph&iacute; + 600.000đ/th&aacute;ng tiền ăn + miễn ph&iacute; chỗ ở: D&agrave;nh cho đối tượng sinh vi&ecirc;n c&oacute; hộ khẩu thường tr&uacute; tại tỉnh Quảng Ninh thuộc một trong c&aacute;c đối tượng sau:</div>\r\n<div>+ Hộ ngh&egrave;o, cận ngh&egrave;o;</div>\r\n<div>+ Thuộc x&atilde; khu vực I v&ugrave;ng đồng b&agrave;o d&acirc;n tộc thiểu số, miền n&uacute;i;</div>\r\n<div>+ Tốt nghiệp c&aacute;c trường phổ th&ocirc;ng d&acirc;n tộc nội tr&uacute; của tỉnh Quảng Ninh;</div>\r\n<div>+ Người ho&agrave;n th&agrave;nh nghĩa vụ qu&acirc;n sự, c&ocirc;ng an.</div>\r\n<div><strong><em>Khuyến kh&iacute;ch học tập:</em></strong></div>\r\n<div>- Sinh vi&ecirc;n được thưởng 1,5 triệu/th&aacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; r&egrave;n luyện học kỳ đạt loại giỏi;</div>\r\n<div>- Sinh vi&ecirc;n được thưởng 2,2 triệu/th&aacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; r&egrave;n luyện học kỳ đạt loại xuất sắc;</div>\r\n<div><strong><em>Thưởng tốt nghiệp:</em></strong></div>\r\n<div>- Sinh vi&ecirc;n được thưởng 15 triệu đồng nếu tốt nghiệp loại giỏi; được doanh nghiệp tuyển dụng sau 12 th&aacute;ng; cam kết l&agrave;m việc ở Quảng Ninh đủ 36 th&aacute;ng;</div>\r\n<div>- Sinh vi&ecirc;n được thưởng 30 triệu đồng nếu tốt nghiệp loại xuất sắc; được doanh nghiệp tuyển dụng sau 12 th&aacute;ng; cam kết l&agrave;m việc ở Quảng Ninh đủ 36 th&aacute;ng;</div>\r\n<div>- Thời gian thực hiện: Sinh vi&ecirc;n tuyển sinh trước 31/12/2025, &aacute;p dụng cho cả kh&oacute;a học.</div>\r\n<div><strong>2. Học bổng đầu v&agrave;o của Trường Đại học Hạ Long</strong></div>\r\n<div><strong><em>Đối tượng</em></strong>: Sinh vi&ecirc;n tr&uacute;ng tuyển nhập học c&aacute;c ng&agrave;nh Quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường, Khoa học m&aacute;y t&iacute;nh, Quản l&yacute; văn h&oacute;a, Ng&ocirc;n ngữ Anh được nhận HỌC BỔNG ĐẦU V&Agrave;O của Trường Đại học Hạ Long.</div>\r\n<div><strong><em>Nội dung hưởng v&agrave; mức hưởng:</em></strong></div>\r\n<div>- Mức 1: 20 suất học bổng bằng 200% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 27 điểm trở l&ecirc;n.</div>\r\n<div>- Mức 2: 20 suất học bổng bằng 100% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 24 đến dưới 27 điểm trở l&ecirc;n.</div>\r\n<div>- Mức 3: 20 suất học bổng bằng 50% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 21 đến dưới 24 điểm trở l&ecirc;n.</div>\r\n<div>Học bổng trong qu&aacute; tr&igrave;nh học theo quy định của Nh&agrave; nước: thực hiện theo quy định.</div>\r\n<div>Học bổng được t&agrave;i trợ bởi c&aacute;c doanh nghiệp c&oacute; li&ecirc;n kết với Trường Đại học Hạ Long (nhiều loại)&nbsp;</div>', 'posts\\November2022\\CS8uVVEV8qa4QW3jOk6K.jpg', 'tuyen-sinh-nganh-khoa-hoc-may-tinh-2022', 'Trường đại học hạ long, tuyển 100 sinh viên ngành khoa học máy tính, xét tuyển bằng hai hình thức là xét tuyển bằng điểm trung học phổ thông, và xét tuyển theo điểm học bạ.', 'Khoa công nghệ thông tin ,Đại học hạ long, tuyển sinh , khoa học máy tính', 'PUBLISHED', '2022-11-24 01:22:00', '2022-11-23 18:27:54');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(19, 1, 2, 'TUYỂN SINH NGÀNH THIẾT KẾ ĐỒ HỌA 2022', 'TUYỂN SINH NGÀNH THIẾT KẾ ĐỒ HỌA 2022', '<div><strong>A. PHƯƠNG THỨC X&Eacute;T TUYỂN ĐẠI HỌC CH&Iacute;NH QUY NĂM 2022</strong></div>\n<div><strong>Phương thức 1</strong>&nbsp;(1% = 17 chỉ ti&ecirc;u): X&eacute;t tuyển thẳng theo quy định của Bộ GD&amp;ĐT (cập nhật chi tiết khi Bộ GD c&oacute; hướng dẫn).</div>\n<div><strong>Phương thức 2</strong>&nbsp;(50% = 835 chỉ ti&ecirc;u): X&eacute;t tuyển kết quả kỳ thi tốt nghiệp THPT năm 2022. Điểm x&eacute;t tuyển = M1+M2+M3 + điểm ƯT (nếu c&oacute;)</div>\n<div><strong>Phương thức 3</strong>&nbsp;(47% = 784 chỉ ti&ecirc;u): X&eacute;t tuyển kết quả học bạ THPT.</div>\n<div>Đối với tổ hợp kh&ocirc;ng c&oacute; m&ocirc;n năng khiếu: Điểm x&eacute;t tuyển (ĐXT) = M1+M2+M3 + điểm ƯT (nếu c&oacute;)</div>\n<div>M&ocirc;n 1 (M1) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\n<div>M&ocirc;n 2 (M2) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\n<div>M&ocirc;n 3 (M3) = [ĐTBCN lớp 11 + ĐTBHK 1 lớp 12]/2</div>\n<div>Đối với tổ hợp c&oacute; thi năng khiếu ng&agrave;nh Gi&aacute;o dục Mầm non: ĐXT = ĐTBCN lớp 12 m&ocirc;n Ngữ văn + Điểm năng khiếu 1 (Kể chuyện) + Điểm năng khiếu 2 (H&aacute;t) + Điểm ưu ti&ecirc;n (nếu c&oacute;)</div>\n<div><strong>Phương thức 4</strong>&nbsp;(2% = 34 chỉ ti&ecirc;u): X&eacute;t tuyển kết hợp (sử dụng điểm của 2 trong 3 m&ocirc;n thuộc tổ hợp x&eacute;t tuyển v&agrave; chứng chỉ ngoại ngữ hoặc chứng nhận học sinh giỏi cấp tỉnh hoặc học sinh giỏi THPT 3 năm liền (chi tiết tại đ&acirc;y)</div>\n<div><strong>B. TỔ HỢP, CHỈ TI&Ecirc;U X&Eacute;T TUYỂN V&Agrave; NGƯỠNG ĐIỂM NHẬN HỒ SƠ</strong></div>\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td rowspan=\"2\" width=\"4%\">\n<div><strong>TT</strong></div>\n</td>\n<td rowspan=\"2\" width=\"21%\">\n<div><strong>Ng&agrave;nh/chuy&ecirc;n ng&agrave;nh</strong></div>\n</td>\n<td rowspan=\"2\" width=\"10%\">\n<div><strong>M&atilde; ng&agrave;nh</strong></div>\n</td>\n<td rowspan=\"2\" width=\"25%\">\n<div><strong>Tổ hợp m&ocirc;n&nbsp;</strong></div>\n<div><strong>x&eacute;t tuyển</strong></div>\n</td>\n<td rowspan=\"2\" width=\"8%\">\n<div><strong>M&atilde;</strong></div>\n<div><strong>tổ hợp</strong></div>\n</td>\n<td rowspan=\"2\" width=\"6%\">\n<div><strong>Chỉ ti&ecirc;u</strong></div>\n</td>\n<td colspan=\"2\" width=\"23%\">\n<div><strong>Ngưỡng điểm nhận</strong></div>\n<div><strong>hồ sơ x&eacute;t tuyển</strong></div>\n</td>\n</tr>\n<tr>\n<td width=\"11%\">\n<div><strong>X&eacute;t điểm thi THPT</strong></div>\n</td>\n<td width=\"11%\">\n<div><strong>X&eacute;t học</strong></div>\n<div><strong>bạ THPT</strong></div>\n</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td width=\"4%\">\n<div>1.</div>\n</td>\n<td width=\"21%\">\n<div>Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh</div>\n</td>\n<td width=\"10%\">\n<div>7810103</div>\n</td>\n<td rowspan=\"2\" width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>4. Văn &ndash; To&aacute;n &ndash; Địa</div>\n</td>\n<td rowspan=\"2\" width=\"8%\">\n<div>A00</div>\n<div>A01</div>\n<div>D01</div>\n<div>D10</div>\n</td>\n<td width=\"6%\">\n<div>180</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>2.</div>\n</td>\n<td width=\"21%\">\n<div>Quản trị kh&aacute;ch sạn</div>\n</td>\n<td width=\"10%\">\n<div>7810201</div>\n</td>\n<td width=\"6%\">\n<div>180</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>3.</div>\n</td>\n<td width=\"21%\">\n<div>Quản trị nh&agrave; h&agrave;ng v&agrave; dịch vụ ăn uống</div>\n</td>\n<td width=\"10%\">\n<div>7810202</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>4. Văn &ndash; Sử &ndash; Địa</div>\n</td>\n<td width=\"8%\">\n<div>A00</div>\n<div>A01</div>\n<div>D01</div>\n<div>C00</div>\n</td>\n<td width=\"6%\">\n<div>180</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>4.</div>\n</td>\n<td width=\"21%\">\n<div>Khoa học m&aacute;y t&iacute;nh</div>\n</td>\n<td width=\"10%\">\n<div>7480101</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>4. To&aacute;n &ndash; H&oacute;a &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>A00</div>\n<div>A01</div>\n<div>D01</div>\n<div>D07</div>\n</td>\n<td width=\"6%\">\n<div>100</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>5.</div>\n</td>\n<td width=\"21%\">\n<div>Quản l&yacute; văn h&oacute;a, gồm c&aacute;c CN:</div>\n<div><em>+ Văn h&oacute;a du lịch</em></div>\n<div><em>+ Tổ chức sự kiện</em></div>\n</td>\n<td width=\"10%\">\n<div>7229042</div>\n</td>\n<td width=\"25%\">\n<div>1. Văn &ndash; Sử &ndash; Địa</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; Địa</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>C00</div>\n<div>C04</div>\n<div>D01</div>\n<div>D15</div>\n</td>\n<td width=\"6%\">\n<div>100</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>6.</div>\n</td>\n<td width=\"21%\">\n<div>Ng&ocirc;n ngữ Anh</div>\n</td>\n<td width=\"10%\">\n<div>7220201</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>3. Văn &ndash; Địa &ndash;Anh</div>\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>A01</div>\n<div>D01</div>\n<div>D15</div>\n<div>D78</div>\n</td>\n<td width=\"6%\">\n<div>200</div>\n</td>\n<td width=\"11%\">\n<div>20đ</div>\n<div>(Tiếng Anh nh&acirc;n hệ số 2)</div>\n</td>\n<td width=\"11%\">\n<div>21đ</div>\n<div>(điểm m&ocirc;n Anh &gt;=7)</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>7.</div>\n</td>\n<td width=\"21%\">\n<div>Ng&ocirc;n ngữ Trung Quốc</div>\n</td>\n<td width=\"10%\">\n<div>7220204</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Trung</div>\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>A01</div>\n<div>D01</div>\n<div>D04</div>\n<div>D78</div>\n</td>\n<td width=\"6%\">\n<div>150</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>21đ</div>\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>8.</div>\n</td>\n<td width=\"21%\">\n<div>Ng&ocirc;n ngữ Nhật</div>\n</td>\n<td width=\"10%\">\n<div>7220209</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Nhật</div>\n<div>4. Văn &ndash; KHXH &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>A01</div>\n<div>D01</div>\n<div>D06</div>\n<div>D78</div>\n</td>\n<td width=\"6%\">\n<div>60</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>21đ</div>\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>9.</div>\n</td>\n<td width=\"21%\">\n<div>Ng&ocirc;n ngữ H&agrave;n Quốc</div>\n</td>\n<td width=\"10%\">\n<div>7220210</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>4. To&aacute;n &ndash; Địa &ndash; H&agrave;n</div>\n<div>3. Văn &ndash; KHXH &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>A01</div>\n<div>D01</div>\n<div>AH1</div>\n<div>D78</div>\n</td>\n<td width=\"6%\">\n<div>100</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>21đ</div>\n<div>(điểm m&ocirc;n NGOẠI NGỮ &gt;=7)</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>10.</div>\n</td>\n<td width=\"21%\">\n<div>Nu&ocirc;i trồng thủy sản</div>\n</td>\n<td width=\"10%\">\n<div>7620301</div>\n</td>\n<td rowspan=\"2\" width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>3. To&aacute;n &ndash; H&oacute;a &ndash; Sinh</div>\n<div>4. Văn &ndash; To&aacute;n &ndash; Anh</div>\n</td>\n<td rowspan=\"2\" width=\"8%\">\n<div>A00</div>\n<div>A01</div>\n<div>B00</div>\n<div>D01</div>\n</td>\n<td width=\"6%\">\n<div>50</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>11.</div>\n</td>\n<td width=\"21%\">\n<div>Quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường</div>\n</td>\n<td width=\"10%\">\n<div>7850101</div>\n</td>\n<td width=\"6%\">\n<div>50</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>12.</div>\n</td>\n<td width=\"21%\">\n<div>Gi&aacute;o dục Mầm non</div>\n</td>\n<td width=\"10%\">\n<div>7140201</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; Địa &ndash; GDCD</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; GDCD</div>\n<div>3. Văn &ndash; Địa &ndash; GDCD</div>\n<div>4. Văn &ndash; Kể chuyện &ndash; H&aacute;t</div>\n</td>\n<td width=\"8%\">\n<div>A09</div>\n<div>C14</div>\n<div>C20</div>\n<div>M01</div>\n</td>\n<td width=\"6%\">\n<div>100</div>\n</td>\n<td width=\"11%\">\n<div>50 chỉ ti&ecirc;u</div>\n<div>(Tổng điểm của khối x&eacute;t &gt;=19đ)</div>\n</td>\n<td width=\"11%\">\n<div>50 chỉ ti&ecirc;u</div>\n<div>&ndash; Nếu x&eacute;t theo tổ hợp 4 (M01): điểm Văn &gt;=8 v&agrave; học lực lớp 12 giỏi v&agrave; tổng điểm&gt;=19đ</div>\n<div>&ndash; Nếu x&eacute;t theo tổ hợp 1,2,3: học lực lớp 12 giỏi v&agrave; tổng 3 m&ocirc;n x&eacute;t tuyển &gt;=24đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>13.</div>\n</td>\n<td width=\"21%\">\n<div>Gi&aacute;o dục Tiểu học</div>\n</td>\n<td width=\"10%\">\n<div>7140202</div>\n</td>\n<td width=\"25%\">\n<div>1. Văn &ndash; To&aacute;n &ndash; Địa</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>3. To&aacute;n &ndash; Địa &ndash; Anh</div>\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>C04</div>\n<div>D01</div>\n<div>D10</div>\n<div>D15</div>\n</td>\n<td width=\"6%\">\n<div>100</div>\n</td>\n<td width=\"11%\">\n<div>19đ</div>\n</td>\n<td width=\"11%\">\n<div>24đ</div>\n<div>(học lực lớp 12 loại giỏi)</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>14.</div>\n</td>\n<td width=\"21%\">\n<div>Quản trị kinh doanh</div>\n</td>\n<td width=\"10%\">\n<div>7340101</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\n<div>2. To&aacute;n &ndash; L&yacute; &ndash; Anh</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>4. Văn &ndash; To&aacute;n &ndash; Địa</div>\n</td>\n<td width=\"8%\">\n<div>A00</div>\n<div>A01</div>\n<div>D01</div>\n<div>D10</div>\n</td>\n<td width=\"6%\">\n<div>40</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>15.</div>\n</td>\n<td width=\"21%\">\n<div>Thiết kế đồ họa</div>\n</td>\n<td width=\"10%\">\n<div>7210403</div>\n</td>\n<td width=\"25%\">\n<div>1. To&aacute;n &ndash; L&yacute; &ndash; H&oacute;a</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; L&yacute;</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; GDCD</div>\n<div>4. Văn &ndash; To&aacute;n &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>A00</div>\n<div>C01</div>\n<div>C14</div>\n<div>D01</div>\n</td>\n<td width=\"6%\">\n<div>40</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n<tr>\n<td width=\"4%\">\n<div>16.</div>\n</td>\n<td width=\"21%\">\n<div>Văn học</div>\n<div><em>(chuy&ecirc;n ng&agrave;nh Văn b&aacute;o ch&iacute; truyền th&ocirc;ng)</em></div>\n</td>\n<td width=\"10%\">\n<div>7229030</div>\n</td>\n<td width=\"25%\">\n<div>1. Văn &ndash; Sử &ndash; Địa</div>\n<div>2. Văn &ndash; To&aacute;n &ndash; Địa</div>\n<div>3. Văn &ndash; To&aacute;n &ndash; Anh</div>\n<div>4. Văn &ndash; Địa &ndash; Anh</div>\n</td>\n<td width=\"8%\">\n<div>C00</div>\n<div>C04</div>\n<div>D01</div>\n<div>D15</div>\n</td>\n<td width=\"6%\">\n<div>40</div>\n</td>\n<td width=\"11%\">\n<div>15đ</div>\n</td>\n<td width=\"11%\">\n<div>18đ</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div><em>Th&iacute; sinh cần li&ecirc;n hệ tư vấn tuyển sinh, xin vui l&ograve;ng li&ecirc;n hệ số điện thoại:&nbsp;<strong>0886.88.98.98</strong></em></div>\n<div><strong>C. QUY ĐỊNH HỒ SƠ V&Agrave; THỜI GIAN X&Eacute;T TUYỂN NĂM 2022</strong></div>\n<div><strong>1. X&eacute;t tuyển thẳng; x&eacute;t kết quả thi tốt nghiệp THPT 2022:</strong></div>\n<div>Đợt 1: Thực hiện theo thời gian quy định của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo.</div>\n<div>Đợt 2: Sau khi c&ocirc;ng bố kết quả x&eacute;t đợt 1. Th&iacute; sinh nộp phiếu điểm thi THPT v&agrave; phiếu đăng k&yacute; x&eacute;t tuyển (Biểu 1)</div>\n<div><strong>2. X&eacute;t học bạ THPT:</strong></div>\n<div><strong><em>a) Hồ sơ gồm:</em></strong></div>\n<div>- Phiếu đăng k&yacute; x&eacute;t tuyển theo học bạ: Hệ đại học (Biểu 2)</div>\n<div>- Học bạ THPT (bản ph&ocirc; t&ocirc;);</div>\n<div>- Bằng tốt nghiệp THPT hoặc giấy chứng nhận tốt nghiệp tạm thời đối với th&iacute; sinh tốt nghiệp năm 2022 (bản ph&ocirc; t&ocirc;). Th&iacute; sinh tốt nghiệp năm 2022, được ph&eacute;p nộp sau nếu tại thời điểm nộp hồ sơ chưa c&oacute;;</div>\n<div>- Lệ ph&iacute; x&eacute;t tuyển: 30.000đ/ 1 nguyện vọng x&eacute;t tuyển</div>\n<div>Ri&ecirc;ng đối với th&iacute; sinh đăng k&yacute; x&eacute;t tuyển đại học ng&agrave;nh Gi&aacute;o dục Mầm non, ngo&agrave;i c&aacute;c hồ sơ tr&ecirc;n phải nộp th&ecirc;m c&aacute;c hồ sơ sau:</div>\n<div>- Hai ảnh cỡ 3&times;4 cm kiểu chứng minh thư mới chụp trong v&ograve;ng 6 th&aacute;ng</div>\n<div>- Bản photocopy 2 mặt Giấy chứng minh nh&acirc;n d&acirc;n tr&ecirc;n 1 mặt giấy A4</div>\n<div>- Lệ ph&iacute; thi năng khiếu: 300.000đ/ hồ sơ</div>\n<div><strong><em>b) Thời gian nhận hồ sơ v&agrave; x&eacute;t tuyển</em></strong></div>\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td width=\"11%\">\n<div><strong>Đợt x&eacute;t</strong></div>\n</td>\n<td width=\"33%\">\n<div><strong>Tiếp nhận hồ sơ</strong></div>\n</td>\n<td width=\"12%\">\n<div><strong>X&eacute;t tuyển</strong></div>\n</td>\n<td width=\"16%\">\n<div><strong>C&ocirc;ng bố</strong></div>\n<div><strong>tr&uacute;ng tuyển</strong></div>\n</td>\n<td width=\"25%\">\n<div><strong>Th&iacute; sinh tr&uacute;ng tuyển nhập học</strong></div>\n</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td width=\"11%\">\n<div><strong>Đợt 1</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 15/02/2022 đến 17h00&rsquo; ng&agrave;y 30/4/2022</div>\n</td>\n<td width=\"12%\">\n<div>09/5/2022</div>\n</td>\n<td width=\"16%\">\n<div>10/5/2022</div>\n</td>\n<td width=\"25%\">\n<div>12/8/2022 (dự kiến)</div>\n</td>\n</tr>\n<tr>\n<td width=\"11%\">\n<div><strong>Đợt 2</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 01/5/2022 đến 17h00&rsquo; ng&agrave;y 31/5/2022</div>\n</td>\n<td width=\"12%\">\n<div>08/6/2022</div>\n</td>\n<td width=\"16%\">\n<div>09/6/2022</div>\n</td>\n<td width=\"25%\">\n<div>12/8/2022 (dự kiến)</div>\n</td>\n</tr>\n<tr>\n<td width=\"11%\">\n<div><strong>Đợt 3</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 01/6/2022 đến 17h00&rsquo; ng&agrave;y 30/6/2022</div>\n</td>\n<td width=\"12%\">\n<div>08/7/2022</div>\n</td>\n<td width=\"16%\">\n<div>09/7/2022</div>\n</td>\n<td width=\"25%\">\n<div>12/8/2022 (dự kiến)</div>\n</td>\n</tr>\n<tr>\n<td width=\"11%\">\n<div><strong>Đợt 4</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 01/7/2022 đến 17h00&rsquo; ng&agrave;y 31/7/2022</div>\n</td>\n<td width=\"12%\">\n<div>05/8/2022</div>\n</td>\n<td width=\"16%\">\n<div>06/8/2022</div>\n</td>\n<td width=\"25%\">\n<div>12/8/2022 (dự kiến)</div>\n</td>\n</tr>\n<tr>\n<td width=\"11%\">\n<div><strong>Đợt 5</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 01/8/2022 đến 17h00&rsquo; ng&agrave;y 31/8/2022</div>\n</td>\n<td width=\"12%\">\n<div>06/9/2022</div>\n</td>\n<td width=\"16%\">\n<div>07/9/2022</div>\n</td>\n<td width=\"25%\">\n<div>16/9/2022 (dự kiến)</div>\n</td>\n</tr>\n<tr>\n<td width=\"11%\">\n<div><strong>Đợt 6</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 01/9/2022 đến 17h00&rsquo; ng&agrave;y 30/9/2022</div>\n</td>\n<td width=\"12%\">\n<div>07/10/2022</div>\n</td>\n<td width=\"16%\">\n<div>08/10/2022</div>\n</td>\n<td width=\"25%\">\n<div>14/10/2022 (dự kiến)</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div><strong>3. X&eacute;t kết hợp:</strong>&nbsp;sử dụng điểm học bạ hoặc điểm thi THPT của 2 trong 3 m&ocirc;n thuộc tổ hợp x&eacute;t tuyển v&agrave; chứng chỉ ngoại ngữ/chứng nhận học sinh giỏi cấp tỉnh/học sinh giỏi THPT 3 năm liền.</div>\n<div><strong><em>a) Hồ sơ gồm:</em></strong></div>\n<div>- Phiếu đăng k&yacute; x&eacute;t tuyển theo h&igrave;nh thức x&eacute;t kết hợp (Biểu 3);</div>\n<div>- Bằng tốt nghiệp THPT hoặc giấy chứng nhận tốt nghiệp tạm thời năm 2022 (bản ph&ocirc; t&ocirc;). Th&iacute; sinh tốt nghiệp năm 2022, được ph&eacute;p nộp sau nếu tại thời điểm nộp hồ sơ chưa c&oacute;;</div>\n<div>- Chứng chỉ ngoại ngữ/chứng nhận học sinh giỏi cấp tỉnh/học sinh giỏi THPT 3 năm liền (bản c&ocirc;ng chứng);</div>\n<div>- Giấy chứng nhận điểm thi tốt nghiệp THPT năm 2021 (nếu dử dụng điểm thi THPT) hoặc học bạ THPT (bản ph&ocirc; t&ocirc;);</div>\n<div>- Lệ ph&iacute; x&eacute;t tuyển: 30.000đ/ 1 nguyện vọng x&eacute;t tuyển</div>\n<div><strong><em>b) Thời gian nhận hồ sơ v&agrave; x&eacute;t tuyển</em></strong></div>\n<table class=\"MsoNormalTable\" border=\"1\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td width=\"12%\">\n<div><strong>Đợt x&eacute;t</strong></div>\n</td>\n<td width=\"33%\">\n<div><strong>Tiếp nhận hồ sơ</strong></div>\n</td>\n<td width=\"12%\">\n<div><strong>X&eacute;t tuyển</strong></div>\n</td>\n<td width=\"16%\">\n<div><strong>C&ocirc;ng bố</strong></div>\n<div><strong>tr&uacute;ng tuyển</strong></div>\n</td>\n<td width=\"25%\">\n<div><strong>Th&iacute; sinh tr&uacute;ng tuyển nhập học</strong></div>\n</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td width=\"12%\">\n<div><strong>Đợt 1</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 01/7/2022 đến 17h00&rsquo; ng&agrave;y 31/7/2022</div>\n</td>\n<td width=\"12%\">\n<div>05/8/2022</div>\n</td>\n<td width=\"16%\">\n<div>06/8/2022</div>\n</td>\n<td width=\"25%\">\n<div>12/8/2022 (dự kiến)</div>\n</td>\n</tr>\n<tr>\n<td width=\"12%\">\n<div><strong>Đợt 2</strong></div>\n</td>\n<td width=\"33%\">\n<div>Từ ng&agrave;y 01/8/2022 đến 17h00&rsquo; ng&agrave;y 31/8/2022</div>\n</td>\n<td width=\"12%\">\n<div>06/9/2022</div>\n</td>\n<td width=\"16%\">\n<div>07/9/2022</div>\n</td>\n<td width=\"25%\">\n<div>16/9/2022 (dự kiến)</div>\n</td>\n</tr>\n</tbody>\n</table>\n<div><strong>4. Hướng dẫn nộp hồ sơ x&eacute;t tuyển</strong></div>\n<div>Địa chỉ nhận hồ sơ x&eacute;t tuyển: Ph&ograve;ng Đ&agrave;o tạo - Trường Đại học Hạ Long Cơ sở 1: Số 258 Đường Bạch Đằng, P. Nam Kh&ecirc;, TP U&ocirc;ng B&iacute;, Quảng Ninh Điện thoại: 0386.173.838 (C&ocirc;: Nguyễn Thị Thu Hiền)</div>\n<div><strong><em>a. C&aacute;ch thức nộp hồ sơ:</em></strong></div>\n<div>C&aacute;ch 1: Th&iacute; sinh nộp hồ sơ trực tiếp tại Trường Đại học Hạ Long;</div>\n<div>C&aacute;ch 2: Th&iacute; sinh nộp hồ sơ qua đường chuyển ph&aacute;t nhanh;</div>\n<div>C&aacute;ch 3: Đăng k&yacute; trực tuyến tại đ&acirc;y</div>\n<div><strong><em>b. Địa chỉ nộp hồ sơ x&eacute;t tuyển nếu th&iacute; sinh kh&ocirc;ng đăng k&yacute; trực tuyến:</em></strong></div>\n<div><em>Cơ sở 1:</em></div>\n<div>Ph&ograve;ng Đ&agrave;o tạo &ndash; Trường Đại học Hạ Long<br>Số 258 Đường Bạch Đằng, P. Nam Kh&ecirc;, TP U&ocirc;ng B&iacute;, Quảng Ninh<br>Điện thoại: (0203) 3850.854 /0386.173.838 (Nguyễn Thị Thu Hiền)</div>\n<div>Hoặc</div>\n<div><em>Cơ sở 2:</em></div>\n<div>Ph&ograve;ng Đ&agrave;o tạo &ndash; Trường Đại học Hạ Long<br>Số 58 Đường Nguyễn Văn Cừ, P. Hồng Hải, TP Hạ Long, Quảng Ninh.<br>Điện thoại: (0203) 3659.232/0912.388.809 (Nguyễn Thị Thanh Thảo)</div>\n<div><strong><em>c. Số điện thoại tư vấn</em></strong>:&nbsp;<strong>0886.88.98.98</strong>, facebook: www.facebook.com/halonguniversity/</div>\n<div><strong>D. HỌC BỔNG, CH&Iacute;NH S&Aacute;CH HỖ TRỢ</strong></div>\n<div>Học bổng của tỉnh Quảng Ninh v&agrave; của Trường Đại học Hạ Long d&agrave;nh cho học sinh, sinh vi&ecirc;n năm 2022:</div>\n<div><strong>1. Học bổng của tỉnh Quảng Ninh</strong></div>\n<div>Đối tượng: Sinh vi&ecirc;n (SV) tr&uacute;ng tuyển nhập học 07 ng&agrave;nh ĐẠI HỌC được hưởng ch&iacute;nh s&aacute;ch theo Nghị quyết số 35/2021/NQ-HĐND ng&agrave;y 27/8/2021 của Hội đồng nh&acirc;n d&acirc;n tỉnh Quảng Ninh. Gồm c&aacute;c ng&agrave;nh:</div>\n<div>(1) Nu&ocirc;i trồng thủy sản;</div>\n<div>(2) Ng&ocirc;n ngữ H&agrave;n Quốc;</div>\n<div>(3) Ng&ocirc;n ngữ Nhật Bản;</div>\n<div>(4) Ng&ocirc;n ngữ Trung Quốc;</div>\n<div>(5) Quản trị kh&aacute;ch sạn;</div>\n<div>(6) Quản trị nh&agrave; h&agrave;ng v&agrave; dịch vụ ăn uống;</div>\n<div>(7) Quản trị dịch vụ du lịch v&agrave; lữ h&agrave;nh.</div>\n<div>Nội dung hưởng v&agrave; mức hưởng:&nbsp;TỐI ĐA 250 TRIỆU/SV TRONG TO&Agrave;N KH&Oacute;A HỌC</div>\n<div><strong><em>Thưởng điểm tuyển sinh đầu v&agrave;o:</em></strong></div>\n<div>- Thưởng 15 triệu nếu c&oacute; điểm từ 21 đến dưới 24 điểm;</div>\n<div>- Thưởng 20 triệu nếu c&oacute; điểm từ 24 đến dưới 27 điểm hoặc đạt giải khuyến kh&iacute;ch HSG quốc gia hoặc giải khuyến kh&iacute;ch khoa học kỹ thuật quốc gia;</div>\n<div>- Thưởng 30 triệu nếu c&oacute; điểm từ 27 điểm trở l&ecirc;n hoặc đạt giải Ba HSG quốc gia hoặc giải Ba khoa học kỹ thuật quốc gia;</div>\n<div>- Thưởng 50 triệu nếu đạt giải Nh&igrave; HSG quốc gia hoặc giải nh&igrave; khoa học kỹ thuật quốc gia</div>\n<div><strong><em>Hỗ trợ:</em></strong></div>\n<div>- Hỗ trợ tiền mua đồ d&ugrave;ng học tập v&agrave; học ph&iacute;: 150.000 đồng/th&aacute;ng v&agrave; 100% học ph&iacute; phải đ&oacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; điểm r&egrave;n luyện trong học kỳ từ kh&aacute; trở l&ecirc;n (kh&ocirc;ng qu&aacute; 20% tổng sinh vi&ecirc;n từng ng&agrave;nh);</div>\n<div>- Hỗ trợ tiền ăn: Sinh vi&ecirc;n thuộc đối tượng được miễn giảm học ph&iacute; theo quy định của Nh&agrave; nước được hỗ trợ 600.000đ/th&aacute;ng;</div>\n<div>- Hỗ trợ chỗ ở: Sinh vi&ecirc;n c&oacute; khoảng c&aacute;ch từ nh&agrave; đến trường từ 15km trở l&ecirc;n v&agrave; c&oacute; điểm trung b&igrave;nh học tập, r&egrave;n luyện từ kh&aacute; trở l&ecirc;n được bố tr&iacute; chỗ ở miễn ph&iacute; tại k&yacute; t&uacute;c x&aacute;; trường hợp nh&agrave; trường kh&ocirc;ng bố tr&iacute; được chỗ ở, sinh vi&ecirc;n được hỗ trợ tiền thu&ecirc; nh&agrave; l&agrave; 300.000đ/th&aacute;ng;</div>\n<div>- Hỗ trợ học ph&iacute; + 600.000đ/th&aacute;ng tiền ăn + miễn ph&iacute; chỗ ở: D&agrave;nh cho đối tượng sinh vi&ecirc;n c&oacute; hộ khẩu thường tr&uacute; tại tỉnh Quảng Ninh thuộc một trong c&aacute;c đối tượng sau:</div>\n<div>+ Hộ ngh&egrave;o, cận ngh&egrave;o;</div>\n<div>+ Thuộc x&atilde; khu vực I v&ugrave;ng đồng b&agrave;o d&acirc;n tộc thiểu số, miền n&uacute;i;</div>\n<div>+ Tốt nghiệp c&aacute;c trường phổ th&ocirc;ng d&acirc;n tộc nội tr&uacute; của tỉnh Quảng Ninh;</div>\n<div>+ Người ho&agrave;n th&agrave;nh nghĩa vụ qu&acirc;n sự, c&ocirc;ng an.</div>\n<div><strong><em>Khuyến kh&iacute;ch học tập:</em></strong></div>\n<div>- Sinh vi&ecirc;n được thưởng 1,5 triệu/th&aacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; r&egrave;n luyện học kỳ đạt loại giỏi;</div>\n<div>- Sinh vi&ecirc;n được thưởng 2,2 triệu/th&aacute;ng nếu c&oacute; điểm trung b&igrave;nh học tập v&agrave; r&egrave;n luyện học kỳ đạt loại xuất sắc;</div>\n<div><strong><em>Thưởng tốt nghiệp:</em></strong></div>\n<div>- Sinh vi&ecirc;n được thưởng 15 triệu đồng nếu tốt nghiệp loại giỏi; được doanh nghiệp tuyển dụng sau 12 th&aacute;ng; cam kết l&agrave;m việc ở Quảng Ninh đủ 36 th&aacute;ng;</div>\n<div>- Sinh vi&ecirc;n được thưởng 30 triệu đồng nếu tốt nghiệp loại xuất sắc; được doanh nghiệp tuyển dụng sau 12 th&aacute;ng; cam kết l&agrave;m việc ở Quảng Ninh đủ 36 th&aacute;ng;</div>\n<div>- Thời gian thực hiện: Sinh vi&ecirc;n tuyển sinh trước 31/12/2025, &aacute;p dụng cho cả kh&oacute;a học.</div>\n<div><strong>2. Học bổng đầu v&agrave;o của Trường Đại học Hạ Long</strong></div>\n<div><strong><em>Đối tượng</em></strong>: Sinh vi&ecirc;n tr&uacute;ng tuyển nhập học c&aacute;c ng&agrave;nh Quản l&yacute; t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường, Khoa học m&aacute;y t&iacute;nh, Quản l&yacute; văn h&oacute;a, Ng&ocirc;n ngữ Anh được nhận HỌC BỔNG ĐẦU V&Agrave;O của Trường Đại học Hạ Long.</div>\n<div><strong><em>Nội dung hưởng v&agrave; mức hưởng:</em></strong></div>\n<div>- Mức 1: 20 suất học bổng bằng 200% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 27 điểm trở l&ecirc;n.</div>\n<div>- Mức 2: 20 suất học bổng bằng 100% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 24 đến dưới 27 điểm trở l&ecirc;n.</div>\n<div>- Mức 3: 20 suất học bổng bằng 50% học ph&iacute; của học kỳ đầu ti&ecirc;n năm tr&uacute;ng tuyển cho sinh vi&ecirc;n c&oacute; điểm tr&uacute;ng tuyển (tổ hợp 3 m&ocirc;n, chưa nh&acirc;n hệ số) v&agrave;o ng&agrave;nh học từ 21 đến dưới 24 điểm trở l&ecirc;n.</div>\n<div>Học bổng trong qu&aacute; tr&igrave;nh học theo quy định của Nh&agrave; nước: thực hiện theo quy định.</div>\n<div>Học bổng được t&agrave;i trợ bởi c&aacute;c doanh nghiệp c&oacute; li&ecirc;n kết với Trường Đại học Hạ Long (nhiều loại)&nbsp;</div>', 'posts\\November2022\\iRZpFDPoxKRJalDWFk9G.webp', 'tuyen-sinh-nganh-thiet-ke-do-hoa-2022', 'Trường đại học hạ long, tuyển 40 chỉ tiêu ngành thiết kế đồ họa, xét tuyển bằng hai hình thức là xét tuyển bằng điểm trung học phổ thông, và xét tuyển theo điểm học bạ.', 'Khoa công nghệ thông tin ,Đại học hạ long, tuyển sinh , Thiết kế đồ họa', 'PUBLISHED', '2022-11-24 01:27:00', '2022-11-23 18:27:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`category_id`, `post_id`, `id`) VALUES
(5, 9, 3),
(6, 10, 4),
(6, 11, 5),
(5, 12, 6),
(7, 17, 17),
(5, 5, 18),
(5, 8, 19),
(7, 18, 20),
(7, 19, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(2, 'user', 'Normal User', '2022-11-03 22:59:58', '2022-11-03 22:59:58'),
(3, 'Quản trị viên phụ', 'Quản trị viên phụ', '2022-11-27 01:05:26', '2022-11-27 01:05:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\November2022\\sceDOsIYgvW6A2nz6sa1.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Quản trị website', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Chào mừng bạn đến với trang quản trị web của khoa công nghệ thông tin trường đại học Hạ Long', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\November2022\\0mTzQPJIqBqIXMUCcKNn.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\November2022\\ugsIL2u5DSb0d7QeIkZp.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'home.description', 'Mô tả (Seo trang chủ)', 'Khoa CNTT là địa chỉ duy nhất đào tạo CNTT trình độ Đại học trên địa bàn Tỉnh.', NULL, 'text_area', 6, 'home'),
(12, 'home.keyword', 'Từ khóa tìm kiếm (trang chủ)', 'Đại học hạ long, Công nghệ thông tin Đại học hạ long', NULL, 'text', 7, 'home'),
(13, 'home.title', 'Tiêu đề trang chủ', 'Đại học hạ long | khoa công nghệ thông tin', NULL, 'text', 8, 'home'),
(14, 'home.logo_Menu', 'Logo trường trên menu (png)', 'settings\\November2022\\4mecPZ9NYZqtIEd1dLP7.png', NULL, 'image', 9, 'home'),
(15, 'home.gmail', 'Gmail của khoa', 'congnghethongtin@gmail.com', NULL, 'text', 10, 'home'),
(16, 'home.phone_number', 'Số điện thoại khoa', '0985 863 555', NULL, 'text', 11, 'home'),
(17, 'home.name_logo', 'Tên Cạnh logo', 'Khoa Công Nghệ thông tin <br />Trường Đại học Hạ Long', NULL, 'text', 12, 'home'),
(18, 'home.address', 'địa chỉ', 'Địa chỉ : Địa chỉ: Số tầng 4, nhà Hiệu bộ,<br />\r\nSố 258, đường Bạch Đằng, phường Nam Khê - thành phố Uông Bí - tỉnh Quảng Ninh', NULL, 'text_area', 13, 'home'),
(19, 'home.logo', 'Logo trang người dùng', 'settings\\November2022\\OT8vNU1ybPLxOzocsfcC.png', NULL, 'image', 14, 'home'),
(20, 'home.map', 'Bản đồ', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.32733569637!2d106.81526021467778!3d21.019584593467968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a8a1d7c000001%3A0x1e5cff07e0fdf7cb!2zxJDhuqFpIGjhu41jIEjhuqEgTG9uZywgY8ahIHPhu58gMQ!5e0!3m2!1svi!2s!4v1667013920040!5m2!1svi!2s', NULL, 'text_area', 15, 'home'),
(21, 'home.ban_quyen', 'Bản quyền', 'Bản quyền thuộc về Đại học Hạ Long @2022', NULL, 'text', 16, 'home'),
(22, 'home.banner_under_logo', 'Banner dưới logo', 'settings\\November2022\\nruikURZGYEtWz4OBUb5.jpg', NULL, 'image', 17, 'home'),
(23, 'home.new_1', 'Tin tức hiển thị 1', 'su-kien-noi-bat', NULL, 'text', 18, 'home'),
(24, 'home.new_2', 'Tin tức hiển thị 2', 'y-kien-chi-dao', NULL, 'text', 19, 'home'),
(25, 'dao-tao.title_1', 'Tiêu đề 1', 'Đại học', NULL, 'text', 20, 'dao_tao'),
(26, 'dao-tao.description_1', 'Mô tả 1', 'Chương trình đạt chuẩn kiểm định quốc tế', NULL, 'text_area', 21, 'dao_tao'),
(27, 'dao-tao.bg_dt_1', 'Ảnh đào tạo 1', 'settings\\November2022\\SMODvoi41J4jl9El0xNM.jpg', NULL, 'image', 22, 'dao_tao'),
(28, 'dao-tao.url_1', 'Đường dẫn 1', '#', NULL, 'text', 23, 'dao_tao'),
(29, 'dao-tao.title_2', 'Tiêu đề 2', 'Thạc sĩ', NULL, 'text', 24, 'dao_tao'),
(30, 'dao-tao.description_2', 'Mô tả 2', 'Đào tạo tập trung kết hợp sử dụng công nghệ đào tạo trực tuyến gồm các phần kiến thức chung, kiến thức cơ sở ngành và chuyên ngành', NULL, 'text_area', 25, 'dao_tao'),
(31, 'dao-tao.bg_dt_2', 'Ảnh đào tạo 2', 'settings\\November2022\\lf2HdWZBU3ayyLVR75g0.jpg', NULL, 'image', 26, 'dao_tao'),
(32, 'dao-tao.url_2', 'Đường dẫn 2', '#', NULL, 'text', 27, 'dao_tao'),
(33, 'dao-tao.title_3', 'Tiêu đề 3', 'Tiến sĩ', NULL, 'text', 28, 'dao_tao'),
(34, 'dao-tao.description_3', 'Mô tả 3', 'Mục tiêu đào tạo tiến sĩ chuyên ngành Công nghệ thông tin là đào tạo nguồn nhân lực trong lĩnh vực công nghệ thông tin có trình độ chuyên môn cao', NULL, 'text_area', 29, 'dao_tao'),
(35, 'dao-tao.bg_dt_3', 'Ảnh đào tạo 3', 'settings\\November2022\\yz1qISERFbxfbOJkKy7h.jpg', NULL, 'image', 30, 'dao_tao'),
(36, 'dao-tao.url_3', 'Đường dẫn 3', '#', NULL, 'text', 31, 'dao_tao'),
(37, 'home.tuyen_sinh', 'Thông tin tuyển sinh', 'tuyen-sinh', NULL, 'text', 32, 'home');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `star_post_blogs`
--

CREATE TABLE `star_post_blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `star` tinyint(3) UNSIGNED NOT NULL DEFAULT 5,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `star_post_blogs`
--

INSERT INTO `star_post_blogs` (`id`, `post_id`, `blog_id`, `user_id`, `star`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, NULL, '2022-11-27 23:05:14'),
(2, 1, NULL, 2, 4, NULL, NULL),
(3, 3, NULL, 1, 4, '2022-11-15 21:46:56', '2022-11-16 01:17:17'),
(4, NULL, 25, 1, 5, '2022-11-27 00:40:16', '2022-11-27 00:43:28'),
(5, 11, NULL, 1, 4, '2022-11-27 23:02:32', '2022-11-27 23:02:32'),
(6, 10, NULL, 1, 5, '2022-11-27 23:03:12', '2022-11-27 23:03:12'),
(7, 12, NULL, 1, 3, '2022-11-27 23:03:21', '2022-11-27 23:03:21'),
(8, 14, NULL, 1, 4, '2022-11-27 23:03:34', '2022-11-27 23:03:34'),
(9, 9, NULL, 1, 4, '2022-11-27 23:03:47', '2022-11-27 23:03:47'),
(10, NULL, 24, 1, 4, '2022-11-28 00:35:04', '2022-11-28 00:35:04'),
(11, NULL, 26, 1, 4, '2022-11-28 00:35:12', '2022-11-28 00:35:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `support_companies`
--

CREATE TABLE `support_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameCompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `support_companies`
--

INSERT INTO `support_companies` (`id`, `img`, `nameCompany`, `status`, `created_at`, `updated_at`) VALUES
(1, 'support-companies\\November2022\\cRlxx1XZpHnaRcTHu2ry.png', 'Tên công ty cần hiển thị', 1, '2022-11-03 23:12:15', '2022-11-03 23:12:15'),
(2, 'support-companies\\November2022\\XnN5TehgtFZFwV6b23tG.png', 'Tên công ty cần hiển thị', 1, '2022-11-03 23:12:30', '2022-11-03 23:44:29'),
(3, 'support-companies\\November2022\\IoQmHNRnOeI0vlPnKOH6.png', 'Tên công ty cần hiển thị', 1, '2022-11-03 23:12:40', '2022-11-03 23:44:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-11-03 23:00:05', '2022-11-03 23:00:05'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-11-03 23:00:05', '2022-11-03 23:00:05'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-11-03 23:00:06', '2022-11-03 23:00:06'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-11-03 23:00:07', '2022-11-03 23:00:07'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-11-03 23:00:07', '2022-11-03 23:00:07'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-11-03 23:00:07', '2022-11-03 23:00:07'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-11-03 23:00:07', '2022-11-03 23:00:07'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-11-03 23:00:07', '2022-11-03 23:00:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin', 'users/default.png', NULL, '$2y$10$i/UopUZrpj47Ef/v7ODe7OymEqCEZ46fVwqDT.zzpK43evVlUQTxe', 'traEaMCdbnZWiQDuw1JgygXr0arGmGcW1xumaxwsxDm42mksf76AvMd0aeKk', '{\"locale\":\"vi\"}', '2022-11-03 23:00:02', '2022-11-03 23:02:05'),
(2, 2, 'Hồng', 'user', 'users/default.png', NULL, '$2y$10$UllWS/.uS3FKbaFTXTWwneBie1kYlQf7rIB1zIoFbcv.PcCF6Z2aK', NULL, '{\"locale\":\"vi\"}', '2022-11-07 21:10:53', '2022-11-08 23:24:41'),
(3, 3, 'quản trị viên cấp 2', 'admin2@gmail.com', 'users/default.png', NULL, '$2y$10$RRh9nju9kyhnyWAiDwLgpOv3O3QX6NTNmz2OnogN0NVZjxNIRak6G', NULL, '{\"locale\":\"vi\"}', '2022-11-27 01:05:59', '2022-11-27 01:05:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner_homes`
--
ALTER TABLE `banner_homes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_author_id_index` (`author_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_blog_id_index` (`blog_id`);

--
-- Chỉ mục cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Chỉ mục cho bảng `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `haot_dongs`
--
ALTER TABLE `haot_dongs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `page_category`
--
ALTER TABLE `page_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`page_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `page_category_category_id_index` (`category_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_post_id_index` (`post_id`),
  ADD KEY `post_category_category_id_index` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `star_post_blogs`
--
ALTER TABLE `star_post_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `support_companies`
--
ALTER TABLE `support_companies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner_homes`
--
ALTER TABLE `banner_homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `haot_dongs`
--
ALTER TABLE `haot_dongs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `page_category`
--
ALTER TABLE `page_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `star_post_blogs`
--
ALTER TABLE `star_post_blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `support_companies`
--
ALTER TABLE `support_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`id`) REFERENCES `page_category` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_category`
--
ALTER TABLE `page_category`
  ADD CONSTRAINT `page_category_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `page_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `post_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_category_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
