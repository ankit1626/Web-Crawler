-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 08:03 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `croma`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-11-02 07:00:53', '2020-11-02 07:00:53', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/Croma', 'yes'),
(2, 'home', 'http://127.0.0.1/Croma', 'yes'),
(3, 'blogname', 'Croma', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'anujatendulkar5@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:162:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:17:\"index.php/shop/?$\";s:27:\"index.php?post_type=product\";s:47:\"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:42:\"index.php/shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"index.php/shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:58:\"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:53:\"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=21&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:58:\"C:\\xampp\\htdocs\\Croma/wp-content/themes/boutique/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'ecommerce-zone', 'yes'),
(41, 'stylesheet', 'ecommerce-zone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '21', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1619852439', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:20:{i:1607508622;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1607508804;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607508814;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607508832;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607511661;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607512194;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1607519604;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607540461;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607540462;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607558400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607583658;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607583708;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607583709;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607583712;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607584414;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607584415;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607584421;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1608015659;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1608189265;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604302933;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1607504230;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(126, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"anujatendulkar5@gmail.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1604300495;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(158, 'action_scheduler_hybrid_store_demarkation', '11', 'yes'),
(159, 'schema-ActionScheduler_StoreSchema', '3.0.1604301142', 'yes'),
(160, 'schema-ActionScheduler_LoggerSchema', '2.0.1604301142', 'yes'),
(163, 'woocommerce_schema_version', '430', 'yes'),
(164, 'woocommerce_store_address', 'd/805 Amarjeet building CHS Kandivali west', 'yes'),
(165, 'woocommerce_store_address_2', '', 'yes'),
(166, 'woocommerce_store_city', 'Mumbai', 'yes'),
(167, 'woocommerce_default_country', 'IN:MH', 'yes'),
(168, 'woocommerce_store_postcode', '400067', 'yes'),
(169, 'woocommerce_allowed_countries', 'all', 'yes'),
(170, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(171, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(172, 'woocommerce_ship_to_countries', '', 'yes'),
(173, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(174, 'woocommerce_default_customer_address', 'base', 'yes'),
(175, 'woocommerce_calc_taxes', 'no', 'yes'),
(176, 'woocommerce_enable_coupons', 'yes', 'yes'),
(177, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(178, 'woocommerce_currency', 'INR', 'yes'),
(179, 'woocommerce_currency_pos', 'left', 'yes'),
(180, 'woocommerce_price_thousand_sep', ',', 'yes'),
(181, 'woocommerce_price_decimal_sep', '.', 'yes'),
(182, 'woocommerce_price_num_decimals', '2', 'yes'),
(183, 'woocommerce_shop_page_id', '13', 'yes'),
(184, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(185, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(186, 'woocommerce_placeholder_image', '12', 'yes'),
(187, 'woocommerce_weight_unit', 'kg', 'yes'),
(188, 'woocommerce_dimension_unit', 'cm', 'yes'),
(189, 'woocommerce_enable_reviews', 'yes', 'yes'),
(190, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(191, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(192, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(193, 'woocommerce_review_rating_required', 'yes', 'no'),
(194, 'woocommerce_manage_stock', 'yes', 'yes'),
(195, 'woocommerce_hold_stock_minutes', '60', 'no'),
(196, 'woocommerce_notify_low_stock', 'yes', 'no'),
(197, 'woocommerce_notify_no_stock', 'yes', 'no'),
(198, 'woocommerce_stock_email_recipient', 'anujatendulkar5@gmail.com', 'no'),
(199, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(200, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(201, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(202, 'woocommerce_stock_format', '', 'yes'),
(203, 'woocommerce_file_download_method', 'force', 'no'),
(204, 'woocommerce_downloads_require_login', 'no', 'no'),
(205, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(206, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(207, 'woocommerce_prices_include_tax', 'no', 'yes'),
(208, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(209, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(210, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(211, 'woocommerce_tax_classes', '', 'yes'),
(212, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(213, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(214, 'woocommerce_price_display_suffix', '', 'yes'),
(215, 'woocommerce_tax_total_display', 'itemized', 'no'),
(216, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(217, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(218, 'woocommerce_ship_to_destination', 'billing', 'no'),
(219, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(220, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(221, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(222, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(223, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(224, 'woocommerce_registration_generate_username', 'yes', 'no'),
(225, 'woocommerce_registration_generate_password', 'yes', 'no'),
(226, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(227, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(228, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(229, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(230, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(231, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(232, 'woocommerce_trash_pending_orders', '', 'no'),
(233, 'woocommerce_trash_failed_orders', '', 'no'),
(234, 'woocommerce_trash_cancelled_orders', '', 'no'),
(235, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(236, 'woocommerce_email_from_name', 'Croma', 'no'),
(237, 'woocommerce_email_from_address', 'anujatendulkar5@gmail.com', 'no'),
(238, 'woocommerce_email_header_image', '', 'no'),
(239, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(240, 'woocommerce_email_base_color', '#96588a', 'no'),
(241, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(242, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(243, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(244, 'woocommerce_cart_page_id', '14', 'no'),
(245, 'woocommerce_checkout_page_id', '15', 'no'),
(246, 'woocommerce_myaccount_page_id', '16', 'no'),
(247, 'woocommerce_terms_page_id', '', 'no'),
(248, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(249, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(250, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(251, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(252, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(253, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(254, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(255, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(256, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(257, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(258, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(259, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(260, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(261, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(262, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(263, 'woocommerce_api_enabled', 'no', 'yes'),
(264, 'woocommerce_allow_tracking', 'yes', 'no'),
(265, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(266, 'woocommerce_single_image_width', '600', 'yes'),
(267, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(268, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(269, 'woocommerce_demo_store', 'no', 'no'),
(270, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(271, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(272, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(273, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(275, 'default_product_cat', '15', 'yes'),
(278, 'woocommerce_version', '4.6.1', 'yes'),
(279, 'woocommerce_db_version', '4.6.1', 'yes'),
(282, 'recently_activated', 'a:1:{i:0;b:0;}', 'yes'),
(283, 'action_scheduler_lock_async-request-runner', '1607505688', 'yes'),
(284, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(285, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"ONFctEEHbdlgerebrkTzWODpvYXB62OY\";}', 'yes'),
(286, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(287, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'woocommerce_admin_version', '1.6.2', 'yes'),
(302, 'woocommerce_admin_install_timestamp', '1604301222', 'yes'),
(306, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1604301223', 'yes'),
(307, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(308, 'wc_blocks_db_schema_version', '260', 'yes'),
(310, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(312, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(314, 'wc_remote_inbox_notifications_specs', 'a:5:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:856:\"<a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br/><br/><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-01-01 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-01-01 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}}', 'yes'),
(317, '_transient_woocommerce_reports-transient-version', '1604302757', 'yes'),
(334, 'action_scheduler_migration_status', 'complete', 'yes'),
(347, 'woocommerce_onboarding_profile', 'a:10:{s:7:\"skipped\";b:1;s:12:\"setup_client\";b:0;s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"electronics-computers\";}}s:13:\"product_count\";s:6:\"11-100\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:8:\"boutique\";s:7:\"plugins\";s:7:\"skipped\";s:9:\"completed\";b:1;}', 'yes'),
(352, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(354, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(355, 'woocommerce_task_list_tracked_completed_tasks', 'a:4:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:8:\"payments\";i:3;s:8:\"shipping\";}', 'yes'),
(386, 'current_theme', 'Ecommerce Zone', 'yes'),
(387, 'theme_switched', '', 'yes'),
(388, 'theme_mods_boutique', 'a:3:{s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604335137;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(389, 'woocommerce_catalog_rows', '4', 'yes'),
(390, 'woocommerce_catalog_columns', '3', 'yes'),
(391, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(395, 'storefront_nux_fresh_site', '0', 'yes'),
(421, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1604302985;}', 'no'),
(424, 'storefront_nux_guided_tour', '1', 'yes'),
(440, 'product_cat_children', 'a:0:{}', 'yes'),
(452, '_transient_product_query-transient-version', '1604334959', 'yes'),
(453, '_transient_product-transient-version', '1604334959', 'yes'),
(475, '_transient_shipping-transient-version', '1604311795', 'yes'),
(490, 'category_children', 'a:0:{}', 'yes'),
(496, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:0:\"\";s:10:\"min_amount\";s:1:\"0\";s:16:\"ignore_discounts\";s:2:\"no\";}', 'yes'),
(815, 'storefront_nux_dismissed', '1', 'yes'),
(817, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604335744;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(832, 'theme_mods_beshop', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604336148;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:0:{}s:13:\"footer-widget\";a:0:{}s:12:\"shop-sidebar\";a:0:{}s:10:\"top-filter\";a:0:{}}}}', 'yes'),
(1002, 'theme_mods_ecommerce-star', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604336295;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}}}}', 'yes'),
(1003, 'widget_ecommerce_star_product_navigation_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1004, 'widget_ecommerce_star_product_carousal_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1015, 'theme_mods_global-ecommerce-store', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604336374;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(1026, 'theme_mods_ecommerce-zone', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1035, 'woocommerce_thumbnail_cropping', 'uncropped', 'yes'),
(1036, 'woocommerce_thumbnail_cropping_custom_width', '1', 'yes'),
(1037, 'woocommerce_thumbnail_cropping_custom_height', '3', 'yes'),
(1067, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":11,\"critical\":0}', 'yes'),
(1071, 'woocommerce_tracker_last_send', '1607056078', 'yes'),
(1139, '_transient_timeout_wc_term_counts', '1610097797', 'no'),
(1140, '_transient_wc_term_counts', 'a:2:{i:17;s:2:\"35\";i:16;s:2:\"37\";}', 'no'),
(1143, '_transient_timeout_wc_shipping_method_count_legacy', '1609854728', 'no'),
(1144, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1604311795\";s:5:\"value\";i:1;}', 'no'),
(1147, '_transient_timeout__woocommerce_helper_subscriptions', '1607505127', 'no'),
(1148, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1149, '_site_transient_timeout_theme_roots', '1607506027', 'no'),
(1150, '_site_transient_theme_roots', 'a:13:{s:6:\"beshop\";s:7:\"/themes\";s:8:\"boutique\";s:7:\"/themes\";s:14:\"ecommerce-star\";s:7:\"/themes\";s:20:\"ecommerce-storefront\";s:7:\"/themes\";s:14:\"ecommerce-zone\";s:7:\"/themes\";s:22:\"global-ecommerce-store\";s:7:\"/themes\";s:17:\"new-york-business\";s:7:\"/themes\";s:17:\"newshop-ecommerce\";s:7:\"/themes\";s:8:\"newstore\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1151, '_transient_timeout__woocommerce_helper_updates', '1607547427', 'no'),
(1152, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1607504227;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1154, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607504235;s:7:\"checked\";a:13:{s:6:\"beshop\";s:6:\"1.0.12\";s:8:\"boutique\";s:6:\"2.0.17\";s:14:\"ecommerce-star\";s:5:\"1.2.5\";s:20:\"ecommerce-storefront\";s:5:\"1.2.1\";s:14:\"ecommerce-zone\";s:5:\"0.3.2\";s:22:\"global-ecommerce-store\";s:5:\"1.2.4\";s:17:\"new-york-business\";s:5:\"1.3.7\";s:17:\"newshop-ecommerce\";s:3:\"0.5\";s:8:\"newstore\";s:6:\"1.3.17\";s:10:\"storefront\";s:5:\"2.8.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:8:{s:6:\"beshop\";a:6:{s:5:\"theme\";s:6:\"beshop\";s:11:\"new_version\";s:6:\"1.0.13\";s:3:\"url\";s:36:\"https://wordpress.org/themes/beshop/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/beshop.1.0.13.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"ecommerce-star\";a:6:{s:5:\"theme\";s:14:\"ecommerce-star\";s:11:\"new_version\";s:5:\"1.2.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/ecommerce-star/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/ecommerce-star.1.2.9.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:20:\"ecommerce-storefront\";a:6:{s:5:\"theme\";s:20:\"ecommerce-storefront\";s:11:\"new_version\";s:5:\"1.2.2\";s:3:\"url\";s:50:\"https://wordpress.org/themes/ecommerce-storefront/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/theme/ecommerce-storefront.1.2.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"ecommerce-zone\";a:6:{s:5:\"theme\";s:14:\"ecommerce-zone\";s:11:\"new_version\";s:5:\"0.3.3\";s:3:\"url\";s:44:\"https://wordpress.org/themes/ecommerce-zone/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/ecommerce-zone.0.3.3.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:10:\"storefront\";a:6:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.9.0\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.9.0.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.6.0\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.8.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:5:{s:8:\"boutique\";a:6:{s:5:\"theme\";s:8:\"boutique\";s:11:\"new_version\";s:6:\"2.0.17\";s:3:\"url\";s:38:\"https://wordpress.org/themes/boutique/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/boutique.2.0.17.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}s:22:\"global-ecommerce-store\";a:6:{s:5:\"theme\";s:22:\"global-ecommerce-store\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:52:\"https://wordpress.org/themes/global-ecommerce-store/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/theme/global-ecommerce-store.1.2.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"new-york-business\";a:6:{s:5:\"theme\";s:17:\"new-york-business\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:47:\"https://wordpress.org/themes/new-york-business/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/new-york-business.1.3.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"newshop-ecommerce\";a:6:{s:5:\"theme\";s:17:\"newshop-ecommerce\";s:11:\"new_version\";s:3:\"0.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/newshop-ecommerce/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/newshop-ecommerce.0.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:8:\"newstore\";a:6:{s:5:\"theme\";s:8:\"newstore\";s:11:\"new_version\";s:6:\"1.3.17\";s:3:\"url\";s:38:\"https://wordpress.org/themes/newstore/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/newstore.1.3.17.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(1155, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1607504235;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1159, '_site_transient_timeout_php_check_6a93f292d9a273c004fc36e1f86d97b3', '1608109040', 'no'),
(1160, '_site_transient_php_check_6a93f292d9a273c004fc36e1f86d97b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1161, '_transient_timeout_wc_onboarding_product_data', '1607590644', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1162, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Wed, 09 Dec 2020 08:57:24 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11566\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:15:\"bom1 89 84 3090\";s:3:\"age\";s:2:\"24\";s:7:\"x-cache\";s:3:\"hit\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48331:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"Groups for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/06\\/groups-woocommerce-product-image-1870x960-1.png\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48331:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"Groups for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/06\\/groups-woocommerce-product-image-1870x960-1.png\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602}]}\";s:3:\"raw\";s:48948:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Wed, 09 Dec 2020 08:57:24 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11566\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: bom1 89 84 3090\r\nAge: 24\r\nX-Cache: hit\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site that includes all popular payment methods (Pay Now, Pay Later, Financing, Installments).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"WooCommerce Product Search\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2014\\/10\\/woocommerce-product-search-product-image-1870x960-1-jvsljj.png\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"Coupon Shortcodes\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/09\\/woocommerce-coupon-shortcodes-product-image-1870x960-1-vc5gux.png\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"WooCommerce Order Barcodes\",\"image\":\"\",\"excerpt\":\"Generates a unique barcode for each order on your site - perfect for e-tickets, packing slips, reservations and a variety of other uses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-barcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"889835bb29ee3400923653e1e44a3779\",\"slug\":\"woocommerce-order-barcodes\",\"id\":391708},{\"title\":\"Groups for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/06\\/groups-woocommerce-product-image-1870x960-1.png\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"WooCommerce 360\\u00ba Image\",\"image\":\"\",\"excerpt\":\"An easy way to add a dynamic, controllable 360\\u00ba image rotation to your WooCommerce site, by adding a group of images to a product\\u2019s gallery.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-360-image\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"24eb2cfa3738a66bf3b2587876668cd2\",\"slug\":\"woocommerce-360-image\",\"id\":512186},{\"title\":\"WooCommerce Photography\",\"image\":\"\",\"excerpt\":\"Sell photos in the blink of an eye using this simple as dragging &amp; dropping interface.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-photography\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ee76e8b9daf1d97ca4d3874cc9e35687\",\"slug\":\"woocommerce-photography\",\"id\":583602}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Wed, 09 Dec 2020 08:57:24 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11566\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:15:\"bom1 89 84 3090\";}s:3:\"age\";a:1:{i:0;s:2:\"24\";}s:7:\"x-cache\";a:1:{i:0;s:3:\"hit\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.1;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1166, '_transient_timeout_wc_related_161', '1607592197', 'no'),
(1167, '_transient_wc_related_161', 'a:1:{s:51:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=161\";a:24:{i:0;s:2:\"95\";i:1;s:2:\"97\";i:2;s:2:\"99\";i:3;s:3:\"101\";i:4;s:3:\"103\";i:5;s:3:\"105\";i:6;s:3:\"107\";i:7;s:3:\"109\";i:8;s:3:\"111\";i:9;s:3:\"113\";i:10;s:3:\"115\";i:11;s:3:\"118\";i:12;s:3:\"120\";i:13;s:3:\"122\";i:14;s:3:\"124\";i:15;s:3:\"126\";i:16;s:3:\"128\";i:17;s:3:\"131\";i:18;s:3:\"133\";i:19;s:3:\"135\";i:20;s:3:\"137\";i:21;s:3:\"139\";i:22;s:3:\"141\";i:23;s:3:\"143\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(18, 12, '_wp_attached_file', 'woocommerce-placeholder.png'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 19, '_wp_attached_file', '2020/11/Xiaomi-watch-4G-LTE.jpg'),
(24, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2020/11/Xiaomi-watch-4G-LTE.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 18, '_edit_last', '1'),
(26, 18, '_thumbnail_id', '19'),
(27, 18, '_regular_price', '19168'),
(28, 18, '_sale_price', '19000'),
(29, 18, 'total_sales', '0'),
(30, 18, '_tax_status', 'taxable'),
(31, 18, '_tax_class', ''),
(32, 18, '_manage_stock', 'no'),
(33, 18, '_backorders', 'no'),
(34, 18, '_sold_individually', 'no'),
(35, 18, '_virtual', 'no'),
(36, 18, '_downloadable', 'no'),
(37, 18, '_download_limit', '-1'),
(38, 18, '_download_expiry', '-1'),
(39, 18, '_stock', NULL),
(40, 18, '_stock_status', 'instock'),
(41, 18, '_wc_average_rating', '0'),
(42, 18, '_wc_review_count', '0'),
(43, 18, '_product_version', '4.6.1'),
(44, 18, '_price', '19000'),
(45, 18, '_edit_lock', '1604306768:1'),
(48, 22, '_wp_attached_file', '2020/11/other-small.jpg'),
(49, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2020/11/other-small.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 22, '_source_url', 'http://127.0.0.1/Croma/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg'),
(55, 27, '_wp_attached_file', '2020/11/Titan-Royal-Analog-watch.jpg'),
(56, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:328;s:6:\"height\";i:328;s:4:\"file\";s:36:\"2020/11/Titan-Royal-Analog-watch.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 25, '_edit_last', '1'),
(58, 25, '_thumbnail_id', '27'),
(59, 25, '_regular_price', '3299'),
(60, 25, '_sale_price', '3000'),
(61, 25, 'total_sales', '0'),
(62, 25, '_tax_status', 'taxable'),
(63, 25, '_tax_class', ''),
(64, 25, '_manage_stock', 'no'),
(65, 25, '_backorders', 'no'),
(66, 25, '_sold_individually', 'no'),
(67, 25, '_virtual', 'no'),
(68, 25, '_downloadable', 'no'),
(69, 25, '_download_limit', '-1'),
(70, 25, '_download_expiry', '-1'),
(71, 25, '_stock', NULL),
(72, 25, '_stock_status', 'instock'),
(73, 25, '_wc_average_rating', '0'),
(74, 25, '_wc_review_count', '0'),
(75, 25, '_product_version', '4.6.1'),
(76, 25, '_price', '3000'),
(77, 25, '_edit_lock', '1604315182:1'),
(78, 29, '_wp_attached_file', '2020/11/Titan-Maritime-Analog-Green-dial-watch.jpg'),
(79, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:50:\"2020/11/Titan-Maritime-Analog-Green-dial-watch.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 28, '_edit_last', '1'),
(81, 28, '_thumbnail_id', '29'),
(82, 28, '_regular_price', '16750'),
(83, 28, '_sale_price', '16258'),
(84, 28, 'total_sales', '0'),
(85, 28, '_tax_status', 'taxable'),
(86, 28, '_tax_class', ''),
(87, 28, '_manage_stock', 'no'),
(88, 28, '_backorders', 'no'),
(89, 28, '_sold_individually', 'no'),
(90, 28, '_virtual', 'no'),
(91, 28, '_downloadable', 'no'),
(92, 28, '_download_limit', '-1'),
(93, 28, '_download_expiry', '-1'),
(94, 28, '_stock', NULL),
(95, 28, '_stock_status', 'instock'),
(96, 28, '_wc_average_rating', '0'),
(97, 28, '_wc_review_count', '0'),
(98, 28, '_product_version', '4.6.1'),
(99, 28, '_price', '16258'),
(100, 28, '_edit_lock', '1604315786:1'),
(101, 31, '_wp_attached_file', '2020/11/Titan-gold.jpg'),
(102, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:731;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/11/Titan-gold.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Titan-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"Titan-gold-600x1231.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Titan-gold-146x300.jpg\";s:5:\"width\";i:146;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Titan-gold-499x1024.jpg\";s:5:\"width\";i:499;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"Titan-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"Titan-gold-600x1231.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 30, '_edit_last', '1'),
(104, 30, '_thumbnail_id', '31'),
(105, 30, '_regular_price', '2000'),
(106, 30, '_sale_price', '1800'),
(107, 30, 'total_sales', '0'),
(108, 30, '_tax_status', 'taxable'),
(109, 30, '_tax_class', ''),
(110, 30, '_manage_stock', 'no'),
(111, 30, '_backorders', 'no'),
(112, 30, '_sold_individually', 'no'),
(113, 30, '_virtual', 'no'),
(114, 30, '_downloadable', 'no'),
(115, 30, '_download_limit', '-1'),
(116, 30, '_download_expiry', '-1'),
(117, 30, '_stock', NULL),
(118, 30, '_stock_status', 'instock'),
(119, 30, '_wc_average_rating', '0'),
(120, 30, '_wc_review_count', '0'),
(121, 30, '_product_version', '4.6.1'),
(122, 30, '_price', '1800'),
(123, 30, '_edit_lock', '1604322148:1'),
(124, 33, '_wp_attached_file', '2020/11/Titan-Edge-Ceramic.jpg'),
(125, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:224;s:4:\"file\";s:30:\"2020/11/Titan-Edge-Ceramic.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 32, '_edit_last', '1'),
(127, 32, '_thumbnail_id', '33'),
(128, 32, '_regular_price', '24126'),
(129, 32, '_sale_price', '23226'),
(130, 32, 'total_sales', '0'),
(131, 32, '_tax_status', 'taxable'),
(132, 32, '_tax_class', ''),
(133, 32, '_manage_stock', 'no'),
(134, 32, '_backorders', 'no'),
(135, 32, '_sold_individually', 'no'),
(136, 32, '_virtual', 'no'),
(137, 32, '_downloadable', 'no'),
(138, 32, '_download_limit', '-1'),
(139, 32, '_download_expiry', '-1'),
(140, 32, '_stock', NULL),
(141, 32, '_stock_status', 'instock'),
(142, 32, '_wc_average_rating', '0'),
(143, 32, '_wc_review_count', '0'),
(144, 32, '_product_version', '4.6.1'),
(145, 32, '_price', '23226'),
(146, 32, '_edit_lock', '1604322242:1'),
(147, 35, '_wp_attached_file', '2020/11/Titan-analog-watch.jpg'),
(148, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:427;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2020/11/Titan-analog-watch.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Titan-analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-256x300.jpg\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-416x487.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:487;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"Titan-analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-416x487.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:487;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 34, '_edit_last', '1'),
(150, 34, '_thumbnail_id', '35'),
(151, 34, '_regular_price', '2594'),
(152, 34, '_sale_price', '2126'),
(153, 34, 'total_sales', '0'),
(154, 34, '_tax_status', 'taxable'),
(155, 34, '_tax_class', ''),
(156, 34, '_manage_stock', 'no'),
(157, 34, '_backorders', 'no'),
(158, 34, '_sold_individually', 'no'),
(159, 34, '_virtual', 'no'),
(160, 34, '_downloadable', 'no'),
(161, 34, '_download_limit', '-1'),
(162, 34, '_download_expiry', '-1'),
(163, 34, '_stock', NULL),
(164, 34, '_stock_status', 'instock'),
(165, 34, '_wc_average_rating', '0'),
(166, 34, '_wc_review_count', '0'),
(167, 34, '_product_version', '4.6.1'),
(168, 34, '_price', '2126'),
(169, 34, '_edit_lock', '1604322331:1'),
(170, 37, '_wp_attached_file', '2020/11/Titan-Analog-watch-gold.jpeg'),
(171, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:400;s:4:\"file\";s:36:\"2020/11/Titan-Analog-watch-gold.jpeg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-222x300.jpeg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-167x300.jpeg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-222x300.jpeg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 36, '_edit_last', '1'),
(173, 36, '_thumbnail_id', '37'),
(174, 36, '_regular_price', '2569'),
(175, 36, '_sale_price', '2269'),
(176, 36, 'total_sales', '0'),
(177, 36, '_tax_status', 'taxable'),
(178, 36, '_tax_class', ''),
(179, 36, '_manage_stock', 'no'),
(180, 36, '_backorders', 'no'),
(181, 36, '_sold_individually', 'no'),
(182, 36, '_virtual', 'no'),
(183, 36, '_downloadable', 'no'),
(184, 36, '_download_limit', '-1'),
(185, 36, '_download_expiry', '-1'),
(186, 36, '_stock', NULL),
(187, 36, '_stock_status', 'instock'),
(188, 36, '_wc_average_rating', '0'),
(189, 36, '_wc_review_count', '0'),
(190, 36, '_product_version', '4.6.1'),
(191, 36, '_price', '2269'),
(192, 36, '_edit_lock', '1604322454:1'),
(193, 39, '_wp_attached_file', '2020/11/Square-dial-fastrack-watch.jpg'),
(194, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2020/11/Square-dial-fastrack-watch.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 38, '_edit_last', '1'),
(196, 38, '_thumbnail_id', '39'),
(197, 38, '_regular_price', '3126'),
(198, 38, '_sale_price', '2787'),
(199, 38, 'total_sales', '0'),
(200, 38, '_tax_status', 'taxable'),
(201, 38, '_tax_class', ''),
(202, 38, '_manage_stock', 'no'),
(203, 38, '_backorders', 'no'),
(204, 38, '_sold_individually', 'no'),
(205, 38, '_virtual', 'no'),
(206, 38, '_downloadable', 'no'),
(207, 38, '_download_limit', '-1'),
(208, 38, '_download_expiry', '-1'),
(209, 38, '_stock', NULL),
(210, 38, '_stock_status', 'instock'),
(211, 38, '_wc_average_rating', '0'),
(212, 38, '_wc_review_count', '0'),
(213, 38, '_product_version', '4.6.1'),
(214, 38, '_price', '2787'),
(215, 38, '_edit_lock', '1604322602:1'),
(216, 41, '_wp_attached_file', '2020/11/Sonata-wedding-analog-blue-watch.jpg'),
(217, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:342;s:4:\"file\";s:44:\"2020/11/Sonata-wedding-analog-blue-watch.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 40, '_edit_last', '1'),
(219, 40, '_thumbnail_id', '41'),
(220, 40, '_regular_price', '2569'),
(221, 40, '_sale_price', '2451'),
(222, 40, 'total_sales', '0'),
(223, 40, '_tax_status', 'taxable'),
(224, 40, '_tax_class', ''),
(225, 40, '_manage_stock', 'no'),
(226, 40, '_backorders', 'no'),
(227, 40, '_sold_individually', 'no'),
(228, 40, '_virtual', 'no'),
(229, 40, '_downloadable', 'no'),
(230, 40, '_download_limit', '-1'),
(231, 40, '_download_expiry', '-1'),
(232, 40, '_stock', NULL),
(233, 40, '_stock_status', 'instock'),
(234, 40, '_wc_average_rating', '0'),
(235, 40, '_wc_review_count', '0'),
(236, 40, '_product_version', '4.6.1'),
(237, 40, '_price', '2451'),
(238, 40, '_edit_lock', '1604322753:1'),
(239, 43, '_wp_attached_file', '2020/11/Sonata-steel-analog-blue-dial-watch.jpg'),
(240, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:715;s:6:\"height\";i:1500;s:4:\"file\";s:47:\"2020/11/Sonata-steel-analog-blue-dial-watch.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-600x1259.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-143x300.jpg\";s:5:\"width\";i:143;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-488x1024.jpg\";s:5:\"width\";i:488;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-600x1259.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 42, '_edit_last', '1'),
(242, 42, '_thumbnail_id', '43'),
(243, 42, '_regular_price', '1298'),
(244, 42, '_sale_price', '1150'),
(245, 42, 'total_sales', '0'),
(246, 42, '_tax_status', 'taxable'),
(247, 42, '_tax_class', ''),
(248, 42, '_manage_stock', 'no'),
(249, 42, '_backorders', 'no'),
(250, 42, '_sold_individually', 'no'),
(251, 42, '_virtual', 'no'),
(252, 42, '_downloadable', 'no'),
(253, 42, '_download_limit', '-1'),
(254, 42, '_download_expiry', '-1'),
(255, 42, '_stock', NULL),
(256, 42, '_stock_status', 'instock'),
(257, 42, '_wc_average_rating', '0'),
(258, 42, '_wc_review_count', '0'),
(259, 42, '_product_version', '4.6.1'),
(260, 42, '_price', '1150'),
(261, 42, '_edit_lock', '1604322860:1'),
(262, 45, '_wp_attached_file', '2020/11/Rolex-Submariner-Black.jpg'),
(263, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:331;s:4:\"file\";s:34:\"2020/11/Rolex-Submariner-Black.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-416x306.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-416x306.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:306;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 44, '_edit_last', '1'),
(265, 44, '_thumbnail_id', '45'),
(266, 44, '_regular_price', '97566'),
(267, 44, '_sale_price', '97400'),
(268, 44, 'total_sales', '0'),
(269, 44, '_tax_status', 'taxable'),
(270, 44, '_tax_class', ''),
(271, 44, '_manage_stock', 'no'),
(272, 44, '_backorders', 'no'),
(273, 44, '_sold_individually', 'no'),
(274, 44, '_virtual', 'no'),
(275, 44, '_downloadable', 'no'),
(276, 44, '_download_limit', '-1'),
(277, 44, '_download_expiry', '-1'),
(278, 44, '_stock', NULL),
(279, 44, '_stock_status', 'instock'),
(280, 44, '_wc_average_rating', '0'),
(281, 44, '_wc_review_count', '0'),
(282, 44, '_product_version', '4.6.1'),
(283, 44, '_price', '97400'),
(284, 44, '_edit_lock', '1604322960:1'),
(285, 47, '_wp_attached_file', '2020/11/Rolex-rose-gold.jpg'),
(286, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2304;s:4:\"file\";s:27:\"2020/11/Rolex-rose-gold.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Rolex-rose-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Rolex-rose-gold-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Rolex-rose-gold-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"Rolex-rose-gold-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:29:\"Rolex-rose-gold-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"Rolex-rose-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(287, 46, '_edit_last', '1'),
(288, 46, '_thumbnail_id', '47'),
(289, 46, '_regular_price', '21459'),
(290, 46, '_sale_price', '20000'),
(291, 46, 'total_sales', '0'),
(292, 46, '_tax_status', 'taxable'),
(293, 46, '_tax_class', ''),
(294, 46, '_manage_stock', 'no'),
(295, 46, '_backorders', 'no'),
(296, 46, '_sold_individually', 'no'),
(297, 46, '_virtual', 'no'),
(298, 46, '_downloadable', 'no'),
(299, 46, '_download_limit', '-1'),
(300, 46, '_download_expiry', '-1'),
(301, 46, '_stock', NULL),
(302, 46, '_stock_status', 'instock'),
(303, 46, '_wc_average_rating', '0'),
(304, 46, '_wc_review_count', '0'),
(305, 46, '_product_version', '4.6.1'),
(306, 46, '_price', '20000'),
(307, 46, '_edit_lock', '1604323096:1'),
(308, 49, '_wp_attached_file', '2020/11/Rolex-Oyster.jpg'),
(309, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:185;s:4:\"file\";s:24:\"2020/11/Rolex-Oyster.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 48, '_edit_last', '1'),
(311, 48, '_thumbnail_id', '49'),
(312, 48, '_regular_price', '88885'),
(313, 48, '_sale_price', '88500'),
(314, 48, 'total_sales', '0'),
(315, 48, '_tax_status', 'taxable'),
(316, 48, '_tax_class', ''),
(317, 48, '_manage_stock', 'no'),
(318, 48, '_backorders', 'no'),
(319, 48, '_sold_individually', 'no'),
(320, 48, '_virtual', 'no'),
(321, 48, '_downloadable', 'no'),
(322, 48, '_download_limit', '-1'),
(323, 48, '_download_expiry', '-1'),
(324, 48, '_stock', NULL),
(325, 48, '_stock_status', 'instock'),
(326, 48, '_wc_average_rating', '0'),
(327, 48, '_wc_review_count', '0'),
(328, 48, '_product_version', '4.6.1'),
(329, 48, '_price', '88500'),
(330, 48, '_edit_lock', '1604323337:1'),
(331, 51, '_wp_attached_file', '2020/11/Mi-smart-band-4.jpg'),
(332, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:355;s:6:\"height\";i:355;s:4:\"file\";s:27:\"2020/11/Mi-smart-band-4.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(333, 50, '_edit_last', '1'),
(334, 50, '_thumbnail_id', '51'),
(335, 50, '_regular_price', '2998'),
(336, 50, '_sale_price', '2898'),
(337, 50, 'total_sales', '0'),
(338, 50, '_tax_status', 'taxable'),
(339, 50, '_tax_class', ''),
(340, 50, '_manage_stock', 'no'),
(341, 50, '_backorders', 'no'),
(342, 50, '_sold_individually', 'no'),
(343, 50, '_virtual', 'no'),
(344, 50, '_downloadable', 'no'),
(345, 50, '_download_limit', '-1'),
(346, 50, '_download_expiry', '-1'),
(347, 50, '_stock', NULL),
(348, 50, '_stock_status', 'instock'),
(349, 50, '_wc_average_rating', '0'),
(350, 50, '_wc_review_count', '0'),
(351, 50, '_product_version', '4.6.1'),
(352, 50, '_price', '2898'),
(353, 50, '_edit_lock', '1604323436:1'),
(354, 53, '_wp_attached_file', '2020/11/G-Shock-casio-mud-master-watch.jpg'),
(355, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:1100;s:4:\"file\";s:42:\"2020/11/G-Shock-casio-mud-master-watch.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"G-Shock-casio-mud-master-watch-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 52, '_edit_last', '1'),
(357, 52, '_thumbnail_id', '53'),
(358, 52, '_regular_price', '8999'),
(359, 52, '_sale_price', '8820'),
(360, 52, 'total_sales', '0'),
(361, 52, '_tax_status', 'taxable'),
(362, 52, '_tax_class', ''),
(363, 52, '_manage_stock', 'no'),
(364, 52, '_backorders', 'no'),
(365, 52, '_sold_individually', 'no'),
(366, 52, '_virtual', 'no'),
(367, 52, '_downloadable', 'no'),
(368, 52, '_download_limit', '-1'),
(369, 52, '_download_expiry', '-1'),
(370, 52, '_stock', NULL),
(371, 52, '_stock_status', 'instock'),
(372, 52, '_wc_average_rating', '0'),
(373, 52, '_wc_review_count', '0'),
(374, 52, '_product_version', '4.6.1'),
(375, 52, '_price', '8820'),
(376, 52, '_edit_lock', '1604323559:1'),
(377, 55, '_wp_attached_file', '2020/11/G-Shock-steel-watch.jpg'),
(378, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:197;s:6:\"height\";i:256;s:4:\"file\";s:31:\"2020/11/G-Shock-steel-watch.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 54, '_edit_last', '1'),
(380, 54, '_thumbnail_id', '55'),
(381, 54, '_regular_price', '21456'),
(382, 54, '_sale_price', '19800'),
(383, 54, 'total_sales', '0'),
(384, 54, '_tax_status', 'taxable'),
(385, 54, '_tax_class', ''),
(386, 54, '_manage_stock', 'no'),
(387, 54, '_backorders', 'no'),
(388, 54, '_sold_individually', 'no'),
(389, 54, '_virtual', 'no'),
(390, 54, '_downloadable', 'no'),
(391, 54, '_download_limit', '-1'),
(392, 54, '_download_expiry', '-1'),
(393, 54, '_stock', NULL),
(394, 54, '_stock_status', 'instock'),
(395, 54, '_wc_average_rating', '0'),
(396, 54, '_wc_review_count', '0'),
(397, 54, '_product_version', '4.6.1'),
(398, 54, '_price', '19800'),
(399, 54, '_edit_lock', '1604323653:1'),
(400, 57, '_wp_attached_file', '2020/11/Gshock-black-watch.jpg'),
(401, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2020/11/Gshock-black-watch.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(402, 56, '_edit_last', '1'),
(403, 56, '_thumbnail_id', '57'),
(404, 56, '_regular_price', '7890'),
(405, 56, '_sale_price', '7600'),
(406, 56, 'total_sales', '0'),
(407, 56, '_tax_status', 'taxable'),
(408, 56, '_tax_class', ''),
(409, 56, '_manage_stock', 'no'),
(410, 56, '_backorders', 'no'),
(411, 56, '_sold_individually', 'no'),
(412, 56, '_virtual', 'no'),
(413, 56, '_downloadable', 'no'),
(414, 56, '_download_limit', '-1'),
(415, 56, '_download_expiry', '-1'),
(416, 56, '_stock', NULL),
(417, 56, '_stock_status', 'instock'),
(418, 56, '_wc_average_rating', '0'),
(419, 56, '_wc_review_count', '0'),
(420, 56, '_product_version', '4.6.1'),
(421, 56, '_price', '7600'),
(422, 56, '_edit_lock', '1604323744:1'),
(423, 59, '_wp_attached_file', '2020/11/Fitbit-Versa-2.png'),
(424, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1572;s:6:\"height\";i:1572;s:4:\"file\";s:26:\"2020/11/Fitbit-Versa-2.png\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Fitbit-Versa-2-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Fitbit-Versa-2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 58, '_edit_last', '1'),
(426, 58, '_thumbnail_id', '59'),
(427, 58, '_regular_price', '21599'),
(428, 58, '_sale_price', '21300'),
(429, 58, 'total_sales', '0'),
(430, 58, '_tax_status', 'taxable'),
(431, 58, '_tax_class', ''),
(432, 58, '_manage_stock', 'no'),
(433, 58, '_backorders', 'no'),
(434, 58, '_sold_individually', 'no'),
(435, 58, '_virtual', 'no'),
(436, 58, '_downloadable', 'no'),
(437, 58, '_download_limit', '-1'),
(438, 58, '_download_expiry', '-1'),
(439, 58, '_stock', NULL),
(440, 58, '_stock_status', 'instock'),
(441, 58, '_wc_average_rating', '0'),
(442, 58, '_wc_review_count', '0'),
(443, 58, '_product_version', '4.6.1'),
(444, 58, '_price', '21300'),
(445, 58, '_edit_lock', '1604323864:1'),
(446, 61, '_wp_attached_file', '2020/11/Fitbit-Sense.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(447, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:312;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2020/11/Fitbit-Sense.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Fitbit-Sense-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-187x300.jpg\";s:5:\"width\";i:187;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"Fitbit-Sense-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(448, 60, '_edit_last', '1'),
(449, 60, '_thumbnail_id', '61'),
(450, 60, '_regular_price', '49899'),
(451, 60, '_sale_price', '49658'),
(452, 60, 'total_sales', '0'),
(453, 60, '_tax_status', 'taxable'),
(454, 60, '_tax_class', ''),
(455, 60, '_manage_stock', 'no'),
(456, 60, '_backorders', 'no'),
(457, 60, '_sold_individually', 'no'),
(458, 60, '_virtual', 'no'),
(459, 60, '_downloadable', 'no'),
(460, 60, '_download_limit', '-1'),
(461, 60, '_download_expiry', '-1'),
(462, 60, '_stock', NULL),
(463, 60, '_stock_status', 'instock'),
(464, 60, '_wc_average_rating', '0'),
(465, 60, '_wc_review_count', '0'),
(466, 60, '_product_version', '4.6.1'),
(467, 60, '_price', '49658'),
(468, 60, '_edit_lock', '1604323979:1'),
(469, 63, '_wp_attached_file', '2020/11/Fitbit-Inspire-2.png'),
(470, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1572;s:6:\"height\";i:1572;s:4:\"file\";s:28:\"2020/11/Fitbit-Inspire-2.png\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Fitbit-Inspire-2-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"Fitbit-Inspire-2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(471, 62, '_edit_last', '1'),
(472, 62, '_thumbnail_id', '63'),
(473, 62, '_regular_price', '29459'),
(474, 62, '_sale_price', '27645'),
(475, 62, 'total_sales', '0'),
(476, 62, '_tax_status', 'taxable'),
(477, 62, '_tax_class', ''),
(478, 62, '_manage_stock', 'no'),
(479, 62, '_backorders', 'no'),
(480, 62, '_sold_individually', 'no'),
(481, 62, '_virtual', 'no'),
(482, 62, '_downloadable', 'no'),
(483, 62, '_download_limit', '-1'),
(484, 62, '_download_expiry', '-1'),
(485, 62, '_stock', NULL),
(486, 62, '_stock_status', 'instock'),
(487, 62, '_wc_average_rating', '0'),
(488, 62, '_wc_review_count', '0'),
(489, 62, '_product_version', '4.6.1'),
(490, 62, '_price', '27645'),
(491, 62, '_edit_lock', '1604324089:1'),
(492, 65, '_wp_attached_file', '2020/11/Fitbit-Iconic-Watch.jpg'),
(493, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1262;s:6:\"height\";i:1500;s:4:\"file\";s:31:\"2020/11/Fitbit-Iconic-Watch.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-600x713.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:713;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-252x300.jpg\";s:5:\"width\";i:252;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Fitbit-Iconic-Watch-862x1024.jpg\";s:5:\"width\";i:862;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-768x913.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:913;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-600x713.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:713;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(494, 64, '_edit_last', '1'),
(495, 64, '_thumbnail_id', '65'),
(496, 64, '_regular_price', '26899'),
(497, 64, '_sale_price', '26500'),
(498, 64, 'total_sales', '0'),
(499, 64, '_tax_status', 'taxable'),
(500, 64, '_tax_class', ''),
(501, 64, '_manage_stock', 'no'),
(502, 64, '_backorders', 'no'),
(503, 64, '_sold_individually', 'no'),
(504, 64, '_virtual', 'no'),
(505, 64, '_downloadable', 'no'),
(506, 64, '_download_limit', '-1'),
(507, 64, '_download_expiry', '-1'),
(508, 64, '_stock', NULL),
(509, 64, '_stock_status', 'instock'),
(510, 64, '_wc_average_rating', '0'),
(511, 64, '_wc_review_count', '0'),
(512, 64, '_product_version', '4.6.1'),
(513, 64, '_price', '26500'),
(514, 64, '_edit_lock', '1604324191:1'),
(515, 67, '_wp_attached_file', '2020/11/Fitbit-Charge-4.jpg'),
(516, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:887;s:4:\"file\";s:27:\"2020/11/Fitbit-Charge-4.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-600x532.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x266.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-768x681.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-600x532.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(517, 66, '_edit_last', '1'),
(518, 66, '_thumbnail_id', '67'),
(519, 66, '_regular_price', '14569'),
(520, 66, '_sale_price', '14400'),
(521, 66, 'total_sales', '0'),
(522, 66, '_tax_status', 'taxable'),
(523, 66, '_tax_class', ''),
(524, 66, '_manage_stock', 'no'),
(525, 66, '_backorders', 'no'),
(526, 66, '_sold_individually', 'no'),
(527, 66, '_virtual', 'no'),
(528, 66, '_downloadable', 'no'),
(529, 66, '_download_limit', '-1'),
(530, 66, '_download_expiry', '-1'),
(531, 66, '_stock', NULL),
(532, 66, '_stock_status', 'instock'),
(533, 66, '_wc_average_rating', '0'),
(534, 66, '_wc_review_count', '0'),
(535, 66, '_product_version', '4.6.1'),
(536, 66, '_price', '14400'),
(537, 66, '_edit_lock', '1604324312:1'),
(538, 69, '_wp_attached_file', '2020/11/Fitbit-Charge-2.jpg'),
(539, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:592;s:4:\"file\";s:27:\"2020/11/Fitbit-Charge-2.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-416x579.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:579;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-416x579.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:579;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(540, 68, '_edit_last', '1'),
(541, 68, '_thumbnail_id', '69'),
(542, 68, '_regular_price', '30999'),
(543, 68, '_sale_price', '30000'),
(544, 68, 'total_sales', '0'),
(545, 68, '_tax_status', 'taxable'),
(546, 68, '_tax_class', ''),
(547, 68, '_manage_stock', 'no'),
(548, 68, '_backorders', 'no'),
(549, 68, '_sold_individually', 'no'),
(550, 68, '_virtual', 'no'),
(551, 68, '_downloadable', 'no'),
(552, 68, '_download_limit', '-1'),
(553, 68, '_download_expiry', '-1'),
(554, 68, '_stock', NULL),
(555, 68, '_stock_status', 'instock'),
(556, 68, '_wc_average_rating', '0'),
(557, 68, '_wc_review_count', '0'),
(558, 68, '_product_version', '4.6.1'),
(559, 68, '_price', '30000'),
(560, 68, '_edit_lock', '1604324406:1'),
(561, 71, '_wp_attached_file', '2020/11/Fastrack-DIGITAL.jpg'),
(562, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:726;s:4:\"file\";s:28:\"2020/11/Fastrack-DIGITAL.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-600x703.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-256x300.jpg\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-600x703.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(563, 70, '_edit_last', '1'),
(564, 70, '_thumbnail_id', '71'),
(565, 70, '_regular_price', '3450'),
(566, 70, '_sale_price', '3155'),
(567, 70, 'total_sales', '0'),
(568, 70, '_tax_status', 'taxable'),
(569, 70, '_tax_class', ''),
(570, 70, '_manage_stock', 'no'),
(571, 70, '_backorders', 'no'),
(572, 70, '_sold_individually', 'no'),
(573, 70, '_virtual', 'no'),
(574, 70, '_downloadable', 'no'),
(575, 70, '_download_limit', '-1'),
(576, 70, '_download_expiry', '-1'),
(577, 70, '_stock', NULL),
(578, 70, '_stock_status', 'instock'),
(579, 70, '_wc_average_rating', '0'),
(580, 70, '_wc_review_count', '0'),
(581, 70, '_product_version', '4.6.1'),
(582, 70, '_price', '3155'),
(583, 70, '_edit_lock', '1604324512:1'),
(584, 73, '_wp_attached_file', '2020/11/Fastrack-black-magic-analog-black-dial-watch.jpg'),
(585, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:836;s:6:\"height\";i:1500;s:4:\"file\";s:56:\"2020/11/Fastrack-black-magic-analog-black-dial-watch.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-600x1077.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1077;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-571x1024.jpg\";s:5:\"width\";i:571;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-768x1378.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1378;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-600x1077.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1077;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(586, 72, '_edit_last', '1'),
(587, 72, '_thumbnail_id', '73'),
(588, 72, '_regular_price', '3050'),
(589, 72, '_sale_price', '2990'),
(590, 72, 'total_sales', '0'),
(591, 72, '_tax_status', 'taxable'),
(592, 72, '_tax_class', ''),
(593, 72, '_manage_stock', 'no'),
(594, 72, '_backorders', 'no'),
(595, 72, '_sold_individually', 'no'),
(596, 72, '_virtual', 'no'),
(597, 72, '_downloadable', 'no'),
(598, 72, '_download_limit', '-1'),
(599, 72, '_download_expiry', '-1'),
(600, 72, '_stock', NULL),
(601, 72, '_stock_status', 'instock'),
(602, 72, '_wc_average_rating', '0'),
(603, 72, '_wc_review_count', '0'),
(604, 72, '_product_version', '4.6.1'),
(605, 72, '_price', '2990'),
(606, 72, '_edit_lock', '1604324590:1'),
(607, 75, '_wp_attached_file', '2020/11/Fastrack-watch.jpg'),
(608, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:26:\"2020/11/Fastrack-watch.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"Fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Fastrack-watch-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Fastrack-watch-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"Fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-300x900.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(609, 74, '_edit_last', '1'),
(610, 74, '_thumbnail_id', '75'),
(611, 74, '_regular_price', '1236'),
(612, 74, '_sale_price', '1128'),
(613, 74, 'total_sales', '0'),
(614, 74, '_tax_status', 'taxable'),
(615, 74, '_tax_class', ''),
(616, 74, '_manage_stock', 'no'),
(617, 74, '_backorders', 'no'),
(618, 74, '_sold_individually', 'no'),
(619, 74, '_virtual', 'no'),
(620, 74, '_downloadable', 'no'),
(621, 74, '_download_limit', '-1'),
(622, 74, '_download_expiry', '-1'),
(623, 74, '_stock', NULL),
(624, 74, '_stock_status', 'instock'),
(625, 74, '_wc_average_rating', '0'),
(626, 74, '_wc_review_count', '0'),
(627, 74, '_product_version', '4.6.1'),
(628, 74, '_price', '1128'),
(629, 74, '_edit_lock', '1604324684:1'),
(630, 77, '_wp_attached_file', '2020/11/Fastrack-silver-watch.jpg'),
(631, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:303;s:6:\"height\";i:550;s:4:\"file\";s:33:\"2020/11/Fastrack-silver-watch.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"Fastrack-silver-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-165x300.jpg\";s:5:\"width\";i:165;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"Fastrack-silver-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 76, '_edit_last', '1'),
(633, 76, '_thumbnail_id', '77'),
(634, 76, '_regular_price', '2569'),
(635, 76, '_sale_price', '2364'),
(636, 76, 'total_sales', '0'),
(637, 76, '_tax_status', 'taxable'),
(638, 76, '_tax_class', ''),
(639, 76, '_manage_stock', 'no'),
(640, 76, '_backorders', 'no'),
(641, 76, '_sold_individually', 'no'),
(642, 76, '_virtual', 'no'),
(643, 76, '_downloadable', 'no'),
(644, 76, '_download_limit', '-1'),
(645, 76, '_download_expiry', '-1'),
(646, 76, '_stock', NULL),
(647, 76, '_stock_status', 'instock'),
(648, 76, '_wc_average_rating', '0'),
(649, 76, '_wc_review_count', '0'),
(650, 76, '_product_version', '4.6.1'),
(651, 76, '_price', '2364'),
(652, 76, '_edit_lock', '1604324758:1'),
(653, 79, '_wp_attached_file', '2020/11/Fastrack-Navy-Blue-Casual-watch.jpg'),
(654, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:824;s:6:\"height\";i:1099;s:4:\"file\";s:43:\"2020/11/Fastrack-Navy-Blue-Casual-watch.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Fastrack-Navy-Blue-Casual-watch-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Fastrack-Navy-Blue-Casual-watch-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(655, 78, '_edit_last', '1'),
(656, 78, '_thumbnail_id', '79'),
(657, 78, '_regular_price', '1396'),
(658, 78, '_sale_price', '1358'),
(659, 78, 'total_sales', '0'),
(660, 78, '_tax_status', 'taxable'),
(661, 78, '_tax_class', ''),
(662, 78, '_manage_stock', 'no'),
(663, 78, '_backorders', 'no'),
(664, 78, '_sold_individually', 'no'),
(665, 78, '_virtual', 'no'),
(666, 78, '_downloadable', 'no'),
(667, 78, '_download_limit', '-1'),
(668, 78, '_download_expiry', '-1'),
(669, 78, '_stock', NULL),
(670, 78, '_stock_status', 'instock'),
(671, 78, '_wc_average_rating', '0'),
(672, 78, '_wc_review_count', '0'),
(673, 78, '_product_version', '4.6.1'),
(674, 78, '_price', '1358'),
(675, 78, '_edit_lock', '1604324885:1'),
(676, 81, '_wp_attached_file', '2020/11/Fastrack-Casual-Analog-watch.jpg'),
(677, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:339;s:6:\"height\";i:550;s:4:\"file\";s:40:\"2020/11/Fastrack-Casual-Analog-watch.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-185x300.jpg\";s:5:\"width\";i:185;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(678, 80, '_edit_last', '1'),
(679, 80, '_thumbnail_id', '81'),
(680, 80, '_regular_price', '1580'),
(681, 80, '_sale_price', '1432'),
(682, 80, 'total_sales', '0'),
(683, 80, '_tax_status', 'taxable'),
(684, 80, '_tax_class', ''),
(685, 80, '_manage_stock', 'no'),
(686, 80, '_backorders', 'no'),
(687, 80, '_sold_individually', 'no'),
(688, 80, '_virtual', 'no'),
(689, 80, '_downloadable', 'no'),
(690, 80, '_download_limit', '-1'),
(691, 80, '_download_expiry', '-1'),
(692, 80, '_stock', NULL),
(693, 80, '_stock_status', 'instock'),
(694, 80, '_wc_average_rating', '0'),
(695, 80, '_wc_review_count', '0'),
(696, 80, '_product_version', '4.6.1'),
(697, 80, '_price', '1432'),
(698, 80, '_edit_lock', '1604324991:1'),
(699, 83, '_wp_attached_file', '2020/11/Fastrack-black-watch.jpg'),
(700, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:303;s:6:\"height\";i:500;s:4:\"file\";s:32:\"2020/11/Fastrack-black-watch.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Fastrack-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-182x300.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"Fastrack-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-300x450.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(701, 82, '_edit_last', '1'),
(702, 82, '_thumbnail_id', '83'),
(703, 82, '_regular_price', '3899'),
(704, 82, '_sale_price', '3655'),
(705, 82, 'total_sales', '0'),
(706, 82, '_tax_status', 'taxable'),
(707, 82, '_tax_class', ''),
(708, 82, '_manage_stock', 'no'),
(709, 82, '_backorders', 'no'),
(710, 82, '_sold_individually', 'no'),
(711, 82, '_virtual', 'no'),
(712, 82, '_downloadable', 'no'),
(713, 82, '_download_limit', '-1'),
(714, 82, '_download_expiry', '-1'),
(715, 82, '_stock', NULL),
(716, 82, '_stock_status', 'instock'),
(717, 82, '_wc_average_rating', '0'),
(718, 82, '_wc_review_count', '0'),
(719, 82, '_product_version', '4.6.1'),
(720, 82, '_price', '3655'),
(721, 82, '_edit_lock', '1604325107:1'),
(722, 85, '_wp_attached_file', '2020/11/Fastrack-Analog-digital-watch-.jpeg'),
(723, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:313;s:6:\"height\";i:500;s:4:\"file\";s:43:\"2020/11/Fastrack-Analog-digital-watch-.jpeg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--188x300.jpeg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(724, 84, '_edit_last', '1'),
(725, 84, '_thumbnail_id', '85'),
(726, 84, '_regular_price', '3255'),
(727, 84, '_sale_price', '3000'),
(728, 84, 'total_sales', '0'),
(729, 84, '_tax_status', 'taxable'),
(730, 84, '_tax_class', ''),
(731, 84, '_manage_stock', 'no'),
(732, 84, '_backorders', 'no'),
(733, 84, '_sold_individually', 'no'),
(734, 84, '_virtual', 'no'),
(735, 84, '_downloadable', 'no'),
(736, 84, '_download_limit', '-1'),
(737, 84, '_download_expiry', '-1'),
(738, 84, '_stock', NULL),
(739, 84, '_stock_status', 'instock'),
(740, 84, '_wc_average_rating', '0'),
(741, 84, '_wc_review_count', '0'),
(742, 84, '_product_version', '4.6.1'),
(743, 84, '_price', '3000'),
(744, 84, '_edit_lock', '1604325174:1'),
(745, 87, '_wp_attached_file', '2020/11/Apple-watch-series-6.jpg'),
(746, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:630;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-6.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-600x315.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Apple-watch-series-6-1024x538.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-600x315.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x600.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(747, 86, '_edit_last', '1'),
(748, 86, '_thumbnail_id', '87'),
(749, 86, '_regular_price', '42600'),
(750, 86, '_sale_price', '41600'),
(751, 86, 'total_sales', '0'),
(752, 86, '_tax_status', 'taxable'),
(753, 86, '_tax_class', ''),
(754, 86, '_manage_stock', 'no'),
(755, 86, '_backorders', 'no'),
(756, 86, '_sold_individually', 'no'),
(757, 86, '_virtual', 'no'),
(758, 86, '_downloadable', 'no'),
(759, 86, '_download_limit', '-1'),
(760, 86, '_download_expiry', '-1'),
(761, 86, '_stock', NULL),
(762, 86, '_stock_status', 'instock'),
(763, 86, '_wc_average_rating', '0'),
(764, 86, '_wc_review_count', '0'),
(765, 86, '_product_version', '4.6.1'),
(766, 86, '_price', '41600'),
(767, 86, '_edit_lock', '1604325249:1'),
(768, 90, '_wp_attached_file', '2020/11/Apple-watch-series-5.jpg'),
(769, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-5.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Apple-watch-series-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x900.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(770, 89, '_edit_last', '1'),
(771, 89, '_thumbnail_id', '90'),
(772, 89, '_regular_price', '51600'),
(773, 89, '_sale_price', '50580'),
(774, 89, 'total_sales', '0'),
(775, 89, '_tax_status', 'taxable'),
(776, 89, '_tax_class', ''),
(777, 89, '_manage_stock', 'no'),
(778, 89, '_backorders', 'no'),
(779, 89, '_sold_individually', 'no'),
(780, 89, '_virtual', 'no'),
(781, 89, '_downloadable', 'no'),
(782, 89, '_download_limit', '-1'),
(783, 89, '_download_expiry', '-1'),
(784, 89, '_stock', NULL),
(785, 89, '_stock_status', 'instock'),
(786, 89, '_wc_average_rating', '0'),
(787, 89, '_wc_review_count', '0'),
(788, 89, '_product_version', '4.6.1'),
(789, 89, '_price', '50580'),
(790, 89, '_edit_lock', '1604325338:1'),
(791, 92, '_wp_attached_file', '2020/11/Apple-watch-series-4.jpg'),
(792, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:550;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-4.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(793, 91, '_edit_last', '1'),
(794, 91, '_thumbnail_id', '92'),
(795, 91, '_regular_price', '67900'),
(796, 91, '_sale_price', '67000'),
(797, 91, 'total_sales', '0'),
(798, 91, '_tax_status', 'taxable'),
(799, 91, '_tax_class', ''),
(800, 91, '_manage_stock', 'no'),
(801, 91, '_backorders', 'no'),
(802, 91, '_sold_individually', 'no'),
(803, 91, '_virtual', 'no'),
(804, 91, '_downloadable', 'no'),
(805, 91, '_download_limit', '-1'),
(806, 91, '_download_expiry', '-1'),
(807, 91, '_stock', NULL),
(808, 91, '_stock_status', 'instock'),
(809, 91, '_wc_average_rating', '0'),
(810, 91, '_wc_review_count', '0'),
(811, 91, '_product_version', '4.6.1'),
(812, 91, '_price', '67000'),
(813, 91, '_edit_lock', '1604325406:1'),
(814, 94, '_wp_attached_file', '2020/11/Apple-watch-series-3.jpg'),
(815, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:466;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-3.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(816, 93, '_edit_last', '1'),
(817, 93, '_thumbnail_id', '94'),
(818, 93, '_regular_price', '16800'),
(819, 93, '_sale_price', '16600'),
(820, 93, 'total_sales', '0'),
(821, 93, '_tax_status', 'taxable'),
(822, 93, '_tax_class', ''),
(823, 93, '_manage_stock', 'no'),
(824, 93, '_backorders', 'no'),
(825, 93, '_sold_individually', 'no'),
(826, 93, '_virtual', 'no'),
(827, 93, '_downloadable', 'no'),
(828, 93, '_download_limit', '-1'),
(829, 93, '_download_expiry', '-1'),
(830, 93, '_stock', NULL),
(831, 93, '_stock_status', 'instock'),
(832, 93, '_wc_average_rating', '0'),
(833, 93, '_wc_review_count', '0'),
(834, 93, '_product_version', '4.6.1'),
(835, 93, '_price', '16600'),
(836, 93, '_edit_lock', '1604325477:1'),
(837, 96, '_wp_attached_file', '2020/11/Samsung-Galaxy-Note-20.jpg'),
(838, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:693;s:4:\"file\";s:34:\"2020/11/Samsung-Galaxy-Note-20.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-600x612.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-294x300.jpg\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-600x612.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(839, 95, '_edit_last', '1'),
(840, 95, '_thumbnail_id', '96'),
(841, 95, '_regular_price', '76899'),
(842, 95, '_sale_price', '76499'),
(843, 95, 'total_sales', '0'),
(844, 95, '_tax_status', 'taxable'),
(845, 95, '_tax_class', ''),
(846, 95, '_manage_stock', 'no'),
(847, 95, '_backorders', 'no'),
(848, 95, '_sold_individually', 'no'),
(849, 95, '_virtual', 'no'),
(850, 95, '_downloadable', 'no'),
(851, 95, '_download_limit', '-1'),
(852, 95, '_download_expiry', '-1'),
(853, 95, '_stock', NULL),
(854, 95, '_stock_status', 'instock'),
(855, 95, '_wc_average_rating', '0'),
(856, 95, '_wc_review_count', '0'),
(857, 95, '_product_version', '4.6.1'),
(858, 95, '_price', '76499'),
(859, 95, '_edit_lock', '1604325577:1'),
(860, 98, '_wp_attached_file', '2020/11/Samsung-Galaxy-S10.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(861, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1304;s:6:\"height\";i:1322;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-S10.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-600x608.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-296x300.jpg\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Samsung-Galaxy-S10-1010x1024.jpg\";s:5:\"width\";i:1010;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-768x779.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:779;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-600x608.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(862, 97, '_edit_last', '1'),
(863, 97, '_thumbnail_id', '98'),
(864, 97, '_regular_price', '71000'),
(865, 97, '_sale_price', '70899'),
(866, 97, 'total_sales', '0'),
(867, 97, '_tax_status', 'taxable'),
(868, 97, '_tax_class', ''),
(869, 97, '_manage_stock', 'no'),
(870, 97, '_backorders', 'no'),
(871, 97, '_sold_individually', 'no'),
(872, 97, '_virtual', 'no'),
(873, 97, '_downloadable', 'no'),
(874, 97, '_download_limit', '-1'),
(875, 97, '_download_expiry', '-1'),
(876, 97, '_stock', NULL),
(877, 97, '_stock_status', 'instock'),
(878, 97, '_wc_average_rating', '0'),
(879, 97, '_wc_review_count', '0'),
(880, 97, '_product_version', '4.6.1'),
(881, 97, '_price', '70899'),
(882, 97, '_edit_lock', '1604325695:1'),
(883, 100, '_wp_attached_file', '2020/11/Samsung-Galaxy-Note-10.jpg'),
(884, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1436;s:6:\"height\";i:1500;s:4:\"file\";s:34:\"2020/11/Samsung-Galaxy-Note-10.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-600x627.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:627;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-287x300.jpg\";s:5:\"width\";i:287;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Samsung-Galaxy-Note-10-980x1024.jpg\";s:5:\"width\";i:980;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-768x802.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:802;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-600x627.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:627;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(885, 99, '_edit_last', '1'),
(886, 99, '_thumbnail_id', '100'),
(887, 99, '_regular_price', '82499'),
(888, 99, '_sale_price', '81700'),
(889, 99, 'total_sales', '0'),
(890, 99, '_tax_status', 'taxable'),
(891, 99, '_tax_class', ''),
(892, 99, '_manage_stock', 'no'),
(893, 99, '_backorders', 'no'),
(894, 99, '_sold_individually', 'no'),
(895, 99, '_virtual', 'no'),
(896, 99, '_downloadable', 'no'),
(897, 99, '_download_limit', '-1'),
(898, 99, '_download_expiry', '-1'),
(899, 99, '_stock', NULL),
(900, 99, '_stock_status', 'instock'),
(901, 99, '_wc_average_rating', '0'),
(902, 99, '_wc_review_count', '0'),
(903, 99, '_product_version', '4.6.1'),
(904, 99, '_price', '81700'),
(905, 99, '_edit_lock', '1604325822:1'),
(906, 102, '_wp_attached_file', '2020/11/Samsung-Galaxy-M31.jpg'),
(907, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:197;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-M31.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(908, 101, '_edit_last', '1'),
(909, 101, '_thumbnail_id', '102'),
(910, 101, '_regular_price', '15780'),
(911, 101, '_sale_price', '15300'),
(912, 101, 'total_sales', '0'),
(913, 101, '_tax_status', 'taxable'),
(914, 101, '_tax_class', ''),
(915, 101, '_manage_stock', 'no'),
(916, 101, '_backorders', 'no'),
(917, 101, '_sold_individually', 'no'),
(918, 101, '_virtual', 'no'),
(919, 101, '_downloadable', 'no'),
(920, 101, '_download_limit', '-1'),
(921, 101, '_download_expiry', '-1'),
(922, 101, '_stock', NULL),
(923, 101, '_stock_status', 'instock'),
(924, 101, '_wc_average_rating', '0'),
(925, 101, '_wc_review_count', '0'),
(926, 101, '_product_version', '4.6.1'),
(927, 101, '_price', '15300'),
(928, 101, '_edit_lock', '1604325918:1'),
(929, 104, '_wp_attached_file', '2020/11/Samsung-Galaxy-A71.jpg'),
(930, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:224;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-A71.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(931, 103, '_edit_last', '1'),
(932, 103, '_thumbnail_id', '104'),
(933, 103, '_regular_price', '29899'),
(934, 103, '_sale_price', '29600'),
(935, 103, 'total_sales', '0'),
(936, 103, '_tax_status', 'taxable'),
(937, 103, '_tax_class', ''),
(938, 103, '_manage_stock', 'no'),
(939, 103, '_backorders', 'no'),
(940, 103, '_sold_individually', 'no'),
(941, 103, '_virtual', 'no'),
(942, 103, '_downloadable', 'no'),
(943, 103, '_download_limit', '-1'),
(944, 103, '_download_expiry', '-1'),
(945, 103, '_stock', NULL),
(946, 103, '_stock_status', 'instock'),
(947, 103, '_wc_average_rating', '0'),
(948, 103, '_wc_review_count', '0'),
(949, 103, '_product_version', '4.6.1'),
(950, 103, '_price', '29600'),
(951, 103, '_edit_lock', '1604326030:1'),
(952, 106, '_wp_attached_file', '2020/11/Samsung-Galaxy-A51.jpg'),
(953, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:522;s:6:\"height\";i:540;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-A51.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-290x300.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-416x430.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-416x430.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(954, 105, '_edit_last', '1'),
(955, 105, '_thumbnail_id', '106'),
(956, 105, '_regular_price', '22456'),
(957, 105, '_sale_price', '20689'),
(958, 105, 'total_sales', '0'),
(959, 105, '_tax_status', 'taxable'),
(960, 105, '_tax_class', ''),
(961, 105, '_manage_stock', 'no'),
(962, 105, '_backorders', 'no'),
(963, 105, '_sold_individually', 'no'),
(964, 105, '_virtual', 'no'),
(965, 105, '_downloadable', 'no'),
(966, 105, '_download_limit', '-1'),
(967, 105, '_download_expiry', '-1'),
(968, 105, '_stock', NULL),
(969, 105, '_stock_status', 'instock'),
(970, 105, '_wc_average_rating', '0'),
(971, 105, '_wc_review_count', '0'),
(972, 105, '_product_version', '4.6.1'),
(973, 105, '_price', '20689'),
(974, 105, '_edit_lock', '1604330017:1'),
(975, 108, '_wp_attached_file', '2020/11/Samsung-Galaxy-M01s.jpg'),
(976, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:31:\"2020/11/Samsung-Galaxy-M01s.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Samsung-Galaxy-M01s-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(977, 107, '_edit_last', '1'),
(978, 107, '_thumbnail_id', '108'),
(979, 107, '_regular_price', '10890'),
(980, 107, '_sale_price', '10758'),
(981, 107, 'total_sales', '0'),
(982, 107, '_tax_status', 'taxable'),
(983, 107, '_tax_class', ''),
(984, 107, '_manage_stock', 'no'),
(985, 107, '_backorders', 'no'),
(986, 107, '_sold_individually', 'no'),
(987, 107, '_virtual', 'no'),
(988, 107, '_downloadable', 'no'),
(989, 107, '_download_limit', '-1'),
(990, 107, '_download_expiry', '-1'),
(991, 107, '_stock', NULL),
(992, 107, '_stock_status', 'instock'),
(993, 107, '_wc_average_rating', '0'),
(994, 107, '_wc_review_count', '0'),
(995, 107, '_product_version', '4.6.1'),
(996, 107, '_price', '10758'),
(997, 107, '_edit_lock', '1604330128:1'),
(998, 110, '_wp_attached_file', '2020/11/Samsung-Galaxy-A10s.jpg'),
(999, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2020/11/Samsung-Galaxy-A10s.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1000, 109, '_edit_last', '1'),
(1001, 109, '_thumbnail_id', '110'),
(1002, 109, '_regular_price', '10599'),
(1003, 109, '_sale_price', '10000'),
(1004, 109, 'total_sales', '0'),
(1005, 109, '_tax_status', 'taxable'),
(1006, 109, '_tax_class', ''),
(1007, 109, '_manage_stock', 'no'),
(1008, 109, '_backorders', 'no'),
(1009, 109, '_sold_individually', 'no'),
(1010, 109, '_virtual', 'no'),
(1011, 109, '_downloadable', 'no'),
(1012, 109, '_download_limit', '-1'),
(1013, 109, '_download_expiry', '-1'),
(1014, 109, '_stock', NULL),
(1015, 109, '_stock_status', 'instock'),
(1016, 109, '_wc_average_rating', '0'),
(1017, 109, '_wc_review_count', '0'),
(1018, 109, '_product_version', '4.6.1'),
(1019, 109, '_price', '10000'),
(1020, 109, '_edit_lock', '1604330207:1'),
(1021, 112, '_wp_attached_file', '2020/11/Vivo-Z1x.jpg'),
(1022, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:330;s:4:\"file\";s:20:\"2020/11/Vivo-Z1x.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Z1x-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"Vivo-Z1x-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1023, 111, '_edit_last', '1'),
(1024, 111, '_thumbnail_id', '112'),
(1025, 111, '_regular_price', '16789'),
(1026, 111, '_sale_price', '15456'),
(1027, 111, 'total_sales', '0'),
(1028, 111, '_tax_status', 'taxable'),
(1029, 111, '_tax_class', ''),
(1030, 111, '_manage_stock', 'no'),
(1031, 111, '_backorders', 'no'),
(1032, 111, '_sold_individually', 'no'),
(1033, 111, '_virtual', 'no'),
(1034, 111, '_downloadable', 'no'),
(1035, 111, '_download_limit', '-1'),
(1036, 111, '_download_expiry', '-1'),
(1037, 111, '_stock', NULL),
(1038, 111, '_stock_status', 'instock'),
(1039, 111, '_wc_average_rating', '0'),
(1040, 111, '_wc_review_count', '0'),
(1041, 111, '_product_version', '4.6.1'),
(1042, 111, '_price', '15456'),
(1043, 111, '_edit_lock', '1604330300:1'),
(1044, 114, '_wp_attached_file', '2020/11/Vivo-Z5i.jpg'),
(1045, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:317;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/11/Vivo-Z5i.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Z5i-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1046, 113, '_edit_last', '1'),
(1047, 113, '_thumbnail_id', '114'),
(1048, 113, '_regular_price', '17989'),
(1049, 113, '_sale_price', '17000'),
(1050, 113, 'total_sales', '0'),
(1051, 113, '_tax_status', 'taxable'),
(1052, 113, '_tax_class', ''),
(1053, 113, '_manage_stock', 'no'),
(1054, 113, '_backorders', 'no'),
(1055, 113, '_sold_individually', 'no'),
(1056, 113, '_virtual', 'no'),
(1057, 113, '_downloadable', 'no'),
(1058, 113, '_download_limit', '-1'),
(1059, 113, '_download_expiry', '-1'),
(1060, 113, '_stock', NULL),
(1061, 113, '_stock_status', 'instock'),
(1062, 113, '_wc_average_rating', '0'),
(1063, 113, '_wc_review_count', '0'),
(1064, 113, '_product_version', '4.6.1'),
(1065, 113, '_price', '17000'),
(1066, 113, '_edit_lock', '1604330380:1'),
(1067, 116, '_wp_attached_file', '2020/11/Vivo-Y20.jpg'),
(1068, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:826;s:6:\"height\";i:1176;s:4:\"file\";s:20:\"2020/11/Vivo-Y20.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Y20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-600x854.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Vivo-Y20-719x1024.jpg\";s:5:\"width\";i:719;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Vivo-Y20-768x1093.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1093;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"Vivo-Y20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-600x854.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1069, 115, '_edit_last', '1'),
(1070, 115, '_thumbnail_id', '116'),
(1071, 115, '_regular_price', '16699'),
(1072, 115, '_sale_price', '15990'),
(1073, 115, 'total_sales', '0'),
(1074, 115, '_tax_status', 'taxable'),
(1075, 115, '_tax_class', ''),
(1076, 115, '_manage_stock', 'no'),
(1077, 115, '_backorders', 'no'),
(1078, 115, '_sold_individually', 'no'),
(1079, 115, '_virtual', 'no'),
(1080, 115, '_downloadable', 'no'),
(1081, 115, '_download_limit', '-1'),
(1082, 115, '_download_expiry', '-1'),
(1083, 115, '_stock', NULL),
(1084, 115, '_stock_status', 'instock'),
(1085, 115, '_wc_average_rating', '0'),
(1086, 115, '_wc_review_count', '0'),
(1087, 115, '_product_version', '4.6.1'),
(1088, 115, '_price', '15990'),
(1089, 115, '_edit_lock', '1604330469:1'),
(1090, 119, '_wp_attached_file', '2020/11/Vivo-Y12.jpg'),
(1091, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/11/Vivo-Y12.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1092, 118, '_edit_last', '1'),
(1093, 118, '_thumbnail_id', '119'),
(1094, 118, '_regular_price', '10990'),
(1095, 118, '_sale_price', '9500'),
(1096, 118, 'total_sales', '0'),
(1097, 118, '_tax_status', 'taxable'),
(1098, 118, '_tax_class', ''),
(1099, 118, '_manage_stock', 'no'),
(1100, 118, '_backorders', 'no'),
(1101, 118, '_sold_individually', 'no'),
(1102, 118, '_virtual', 'no'),
(1103, 118, '_downloadable', 'no'),
(1104, 118, '_download_limit', '-1'),
(1105, 118, '_download_expiry', '-1'),
(1106, 118, '_stock', NULL),
(1107, 118, '_stock_status', 'instock'),
(1108, 118, '_wc_average_rating', '0'),
(1109, 118, '_wc_review_count', '0'),
(1110, 118, '_product_version', '4.6.1'),
(1111, 118, '_price', '9500'),
(1112, 118, '_edit_lock', '1604330553:1'),
(1113, 121, '_wp_attached_file', '2020/11/Xiaomi-Mi-A3.jpg'),
(1114, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/11/Xiaomi-Mi-A3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1115, 120, '_edit_last', '1'),
(1116, 120, '_thumbnail_id', '121'),
(1117, 120, '_regular_price', '17899'),
(1118, 120, '_sale_price', '17000'),
(1119, 120, 'total_sales', '0'),
(1120, 120, '_tax_status', 'taxable'),
(1121, 120, '_tax_class', ''),
(1122, 120, '_manage_stock', 'no'),
(1123, 120, '_backorders', 'no'),
(1124, 120, '_sold_individually', 'no'),
(1125, 120, '_virtual', 'no'),
(1126, 120, '_downloadable', 'no'),
(1127, 120, '_download_limit', '-1'),
(1128, 120, '_download_expiry', '-1'),
(1129, 120, '_stock', NULL),
(1130, 120, '_stock_status', 'instock'),
(1131, 120, '_wc_average_rating', '0'),
(1132, 120, '_wc_review_count', '0'),
(1133, 120, '_product_version', '4.6.1'),
(1134, 120, '_price', '17000'),
(1135, 120, '_edit_lock', '1604330654:1'),
(1136, 123, '_wp_attached_file', '2020/11/Xiaomi-Mi-Note-10.jpg'),
(1137, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1123;s:6:\"height\";i:1500;s:4:\"file\";s:29:\"2020/11/Xiaomi-Mi-Note-10.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-600x801.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Xiaomi-Mi-Note-10-767x1024.jpg\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Xiaomi-Mi-Note-10-768x1026.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-600x801.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1138, 122, '_edit_last', '1'),
(1139, 122, '_thumbnail_id', '123'),
(1140, 122, '_regular_price', '48999'),
(1141, 122, '_sale_price', '47000'),
(1142, 122, 'total_sales', '0'),
(1143, 122, '_tax_status', 'taxable'),
(1144, 122, '_tax_class', ''),
(1145, 122, '_manage_stock', 'no'),
(1146, 122, '_backorders', 'no'),
(1147, 122, '_sold_individually', 'no'),
(1148, 122, '_virtual', 'no'),
(1149, 122, '_downloadable', 'no'),
(1150, 122, '_download_limit', '-1'),
(1151, 122, '_download_expiry', '-1'),
(1152, 122, '_stock', NULL),
(1153, 122, '_stock_status', 'instock'),
(1154, 122, '_wc_average_rating', '0'),
(1155, 122, '_wc_review_count', '0'),
(1156, 122, '_product_version', '4.6.1'),
(1157, 122, '_price', '47000'),
(1158, 122, '_edit_lock', '1604330777:1'),
(1159, 125, '_wp_attached_file', '2020/11/Redmi-Note-7-pro.png'),
(1160, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/11/Redmi-Note-7-pro.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1161, 124, '_edit_last', '1'),
(1162, 124, '_thumbnail_id', '125'),
(1163, 124, '_regular_price', '11999'),
(1164, 124, '_sale_price', '11688'),
(1165, 124, 'total_sales', '0'),
(1166, 124, '_tax_status', 'taxable'),
(1167, 124, '_tax_class', ''),
(1168, 124, '_manage_stock', 'no'),
(1169, 124, '_backorders', 'no'),
(1170, 124, '_sold_individually', 'no'),
(1171, 124, '_virtual', 'no'),
(1172, 124, '_downloadable', 'no'),
(1173, 124, '_download_limit', '-1'),
(1174, 124, '_download_expiry', '-1'),
(1175, 124, '_stock', NULL),
(1176, 124, '_stock_status', 'instock'),
(1177, 124, '_wc_average_rating', '0'),
(1178, 124, '_wc_review_count', '0'),
(1179, 124, '_product_version', '4.6.1'),
(1180, 124, '_price', '11688'),
(1181, 124, '_edit_lock', '1604330879:1'),
(1182, 127, '_wp_attached_file', '2020/11/Mi-10.png'),
(1183, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2020/11/Mi-10.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"Mi-10-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Mi-10-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"Mi-10-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1184, 126, '_edit_last', '1'),
(1185, 126, '_thumbnail_id', '127'),
(1186, 126, '_regular_price', '54999'),
(1187, 126, '_sale_price', '53456'),
(1188, 126, 'total_sales', '0'),
(1189, 126, '_tax_status', 'taxable'),
(1190, 126, '_tax_class', ''),
(1191, 126, '_manage_stock', 'no'),
(1192, 126, '_backorders', 'no'),
(1193, 126, '_sold_individually', 'no'),
(1194, 126, '_virtual', 'no'),
(1195, 126, '_downloadable', 'no'),
(1196, 126, '_download_limit', '-1'),
(1197, 126, '_download_expiry', '-1'),
(1198, 126, '_stock', NULL),
(1199, 126, '_stock_status', 'instock'),
(1200, 126, '_wc_average_rating', '0'),
(1201, 126, '_wc_review_count', '0'),
(1202, 126, '_product_version', '4.6.1'),
(1203, 126, '_price', '53456'),
(1204, 126, '_edit_lock', '1604330976:1'),
(1205, 129, '_wp_attached_file', '2020/11/Oppo-Reno-2F.jpg'),
(1206, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/11/Oppo-Reno-2F.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Oppo-Reno-2F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"Oppo-Reno-2F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1207, 128, '_edit_last', '1'),
(1208, 128, '_thumbnail_id', '129'),
(1209, 128, '_regular_price', '21580'),
(1210, 128, '_sale_price', '20356'),
(1211, 128, 'total_sales', '0'),
(1212, 128, '_tax_status', 'taxable'),
(1213, 128, '_tax_class', ''),
(1214, 128, '_manage_stock', 'no'),
(1215, 128, '_backorders', 'no'),
(1216, 128, '_sold_individually', 'no'),
(1217, 128, '_virtual', 'no'),
(1218, 128, '_downloadable', 'no'),
(1219, 128, '_download_limit', '-1'),
(1220, 128, '_download_expiry', '-1'),
(1221, 128, '_stock', NULL),
(1222, 128, '_stock_status', 'instock'),
(1223, 128, '_wc_average_rating', '0'),
(1224, 128, '_wc_review_count', '0'),
(1225, 128, '_product_version', '4.6.1'),
(1226, 128, '_price', '20356'),
(1227, 128, '_edit_lock', '1604331088:1'),
(1228, 132, '_wp_attached_file', '2020/11/Oppo-Reno-2.jpg'),
(1229, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:23:\"2020/11/Oppo-Reno-2.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1230, 131, '_edit_last', '1'),
(1231, 131, '_thumbnail_id', '132'),
(1232, 131, '_regular_price', '19920'),
(1233, 131, '_sale_price', '18759'),
(1234, 131, 'total_sales', '0'),
(1235, 131, '_tax_status', 'taxable'),
(1236, 131, '_tax_class', ''),
(1237, 131, '_manage_stock', 'no'),
(1238, 131, '_backorders', 'no'),
(1239, 131, '_sold_individually', 'no'),
(1240, 131, '_virtual', 'no'),
(1241, 131, '_downloadable', 'no'),
(1242, 131, '_download_limit', '-1'),
(1243, 131, '_download_expiry', '-1'),
(1244, 131, '_stock', NULL),
(1245, 131, '_stock_status', 'instock'),
(1246, 131, '_wc_average_rating', '0'),
(1247, 131, '_wc_review_count', '0'),
(1248, 131, '_product_version', '4.6.1'),
(1249, 131, '_price', '18759'),
(1250, 131, '_edit_lock', '1604331165:1'),
(1251, 134, '_wp_attached_file', '2020/11/Oppo-F15.jpg'),
(1252, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/11/Oppo-F15.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1253, 133, '_edit_last', '1'),
(1254, 133, '_thumbnail_id', '134'),
(1255, 133, '_regular_price', '15950'),
(1256, 133, '_sale_price', '14236'),
(1257, 133, 'total_sales', '0'),
(1258, 133, '_tax_status', 'taxable'),
(1259, 133, '_tax_class', ''),
(1260, 133, '_manage_stock', 'no'),
(1261, 133, '_backorders', 'no'),
(1262, 133, '_sold_individually', 'no'),
(1263, 133, '_virtual', 'no'),
(1264, 133, '_downloadable', 'no'),
(1265, 133, '_download_limit', '-1'),
(1266, 133, '_download_expiry', '-1'),
(1267, 133, '_stock', NULL),
(1268, 133, '_stock_status', 'instock'),
(1269, 133, '_wc_average_rating', '0'),
(1270, 133, '_wc_review_count', '0'),
(1271, 133, '_product_version', '4.6.1'),
(1272, 133, '_price', '14236'),
(1273, 133, '_edit_lock', '1604331258:1'),
(1274, 136, '_wp_attached_file', '2020/11/Oppo-A52.jpg'),
(1275, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/11/Oppo-A52.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1276, 135, '_edit_last', '1'),
(1277, 135, '_thumbnail_id', '136'),
(1278, 135, '_regular_price', '13990'),
(1279, 135, '_sale_price', '12750'),
(1280, 135, 'total_sales', '0'),
(1281, 135, '_tax_status', 'taxable'),
(1282, 135, '_tax_class', ''),
(1283, 135, '_manage_stock', 'no'),
(1284, 135, '_backorders', 'no'),
(1285, 135, '_sold_individually', 'no'),
(1286, 135, '_virtual', 'no'),
(1287, 135, '_downloadable', 'no'),
(1288, 135, '_download_limit', '-1'),
(1289, 135, '_download_expiry', '-1'),
(1290, 135, '_stock', NULL),
(1291, 135, '_stock_status', 'instock'),
(1292, 135, '_wc_average_rating', '0'),
(1293, 135, '_wc_review_count', '0'),
(1294, 135, '_product_version', '4.6.1'),
(1295, 135, '_price', '12750'),
(1296, 135, '_edit_lock', '1604331342:1'),
(1297, 138, '_wp_attached_file', '2020/11/Oppo-A31.jpg'),
(1298, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/11/Oppo-A31.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Oppo-A31-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1299, 137, '_edit_last', '1'),
(1300, 137, '_thumbnail_id', '138'),
(1301, 137, '_regular_price', '12480'),
(1302, 137, '_sale_price', '11789'),
(1303, 137, 'total_sales', '0'),
(1304, 137, '_tax_status', 'taxable'),
(1305, 137, '_tax_class', ''),
(1306, 137, '_manage_stock', 'no'),
(1307, 137, '_backorders', 'no'),
(1308, 137, '_sold_individually', 'no'),
(1309, 137, '_virtual', 'no'),
(1310, 137, '_downloadable', 'no'),
(1311, 137, '_download_limit', '-1'),
(1312, 137, '_download_expiry', '-1'),
(1313, 137, '_stock', NULL),
(1314, 137, '_stock_status', 'instock'),
(1315, 137, '_wc_average_rating', '0'),
(1316, 137, '_wc_review_count', '0'),
(1317, 137, '_product_version', '4.6.1'),
(1318, 137, '_price', '11789'),
(1319, 137, '_edit_lock', '1604331432:1'),
(1320, 140, '_wp_attached_file', '2020/11/Oppo-A12.jpg'),
(1321, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:679;s:4:\"file\";s:20:\"2020/11/Oppo-A12.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1322, 139, '_edit_last', '1'),
(1323, 139, '_thumbnail_id', '140'),
(1324, 139, '_regular_price', '12999'),
(1325, 139, '_sale_price', '12050'),
(1326, 139, 'total_sales', '0'),
(1327, 139, '_tax_status', 'taxable'),
(1328, 139, '_tax_class', ''),
(1329, 139, '_manage_stock', 'no'),
(1330, 139, '_backorders', 'no'),
(1331, 139, '_sold_individually', 'no'),
(1332, 139, '_virtual', 'no'),
(1333, 139, '_downloadable', 'no'),
(1334, 139, '_download_limit', '-1'),
(1335, 139, '_download_expiry', '-1'),
(1336, 139, '_stock', NULL),
(1337, 139, '_stock_status', 'instock'),
(1338, 139, '_wc_average_rating', '0'),
(1339, 139, '_wc_review_count', '0'),
(1340, 139, '_product_version', '4.6.1'),
(1341, 139, '_price', '12050'),
(1342, 139, '_edit_lock', '1604331554:1'),
(1343, 142, '_wp_attached_file', '2020/11/Oppo-A5.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1344, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:995;s:4:\"file\";s:19:\"2020/11/Oppo-A5.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Oppo-A5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-600x702.png\";s:5:\"width\";i:600;s:6:\"height\";i:702;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-256x300.png\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-768x899.png\";s:5:\"width\";i:768;s:6:\"height\";i:899;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"Oppo-A5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-600x702.png\";s:5:\"width\";i:600;s:6:\"height\";i:702;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1345, 141, '_edit_last', '1'),
(1346, 141, '_thumbnail_id', '142'),
(1347, 141, '_regular_price', '15990'),
(1348, 141, '_sale_price', '14126'),
(1349, 141, 'total_sales', '0'),
(1350, 141, '_tax_status', 'taxable'),
(1351, 141, '_tax_class', ''),
(1352, 141, '_manage_stock', 'no'),
(1353, 141, '_backorders', 'no'),
(1354, 141, '_sold_individually', 'no'),
(1355, 141, '_virtual', 'no'),
(1356, 141, '_downloadable', 'no'),
(1357, 141, '_download_limit', '-1'),
(1358, 141, '_download_expiry', '-1'),
(1359, 141, '_stock', NULL),
(1360, 141, '_stock_status', 'instock'),
(1361, 141, '_wc_average_rating', '0'),
(1362, 141, '_wc_review_count', '0'),
(1363, 141, '_product_version', '4.6.1'),
(1364, 141, '_price', '14126'),
(1365, 141, '_edit_lock', '1604331663:1'),
(1366, 144, '_wp_attached_file', '2020/11/OnePlus-Nord.jpg'),
(1367, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:24:\"2020/11/OnePlus-Nord.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1368, 143, '_edit_last', '1'),
(1369, 143, '_thumbnail_id', '144'),
(1370, 143, '_regular_price', '29999'),
(1371, 143, '_sale_price', '28999'),
(1372, 143, 'total_sales', '0'),
(1373, 143, '_tax_status', 'taxable'),
(1374, 143, '_tax_class', ''),
(1375, 143, '_manage_stock', 'no'),
(1376, 143, '_backorders', 'no'),
(1377, 143, '_sold_individually', 'no'),
(1378, 143, '_virtual', 'no'),
(1379, 143, '_downloadable', 'no'),
(1380, 143, '_download_limit', '-1'),
(1381, 143, '_download_expiry', '-1'),
(1382, 143, '_stock', NULL),
(1383, 143, '_stock_status', 'instock'),
(1384, 143, '_wc_average_rating', '0'),
(1385, 143, '_wc_review_count', '0'),
(1386, 143, '_product_version', '4.6.1'),
(1387, 143, '_price', '28999'),
(1388, 143, '_edit_lock', '1604331779:1'),
(1389, 146, '_wp_attached_file', '2020/11/OnePlus-Nord-Blue.jpeg'),
(1390, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:30:\"2020/11/OnePlus-Nord-Blue.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1391, 145, '_edit_last', '1'),
(1392, 145, '_thumbnail_id', '146'),
(1393, 145, '_regular_price', '29999'),
(1394, 145, '_sale_price', '28566'),
(1395, 145, 'total_sales', '0'),
(1396, 145, '_tax_status', 'taxable'),
(1397, 145, '_tax_class', ''),
(1398, 145, '_manage_stock', 'no'),
(1399, 145, '_backorders', 'no'),
(1400, 145, '_sold_individually', 'no'),
(1401, 145, '_virtual', 'no'),
(1402, 145, '_downloadable', 'no'),
(1403, 145, '_download_limit', '-1'),
(1404, 145, '_download_expiry', '-1'),
(1405, 145, '_stock', NULL),
(1406, 145, '_stock_status', 'instock'),
(1407, 145, '_wc_average_rating', '0'),
(1408, 145, '_wc_review_count', '0'),
(1409, 145, '_product_version', '4.6.1'),
(1410, 145, '_price', '28566'),
(1411, 145, '_edit_lock', '1604331872:1'),
(1412, 148, '_wp_attached_file', '2020/11/Oneplus-8-Pro.jpg'),
(1413, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:25:\"2020/11/Oneplus-8-Pro.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1414, 147, '_edit_last', '1'),
(1415, 147, '_thumbnail_id', '148'),
(1416, 147, '_regular_price', '59999'),
(1417, 147, '_sale_price', '58742'),
(1418, 147, 'total_sales', '0'),
(1419, 147, '_tax_status', 'taxable'),
(1420, 147, '_tax_class', ''),
(1421, 147, '_manage_stock', 'no'),
(1422, 147, '_backorders', 'no'),
(1423, 147, '_sold_individually', 'no'),
(1424, 147, '_virtual', 'no'),
(1425, 147, '_downloadable', 'no'),
(1426, 147, '_download_limit', '-1'),
(1427, 147, '_download_expiry', '-1'),
(1428, 147, '_stock', NULL),
(1429, 147, '_stock_status', 'instock'),
(1430, 147, '_wc_average_rating', '0'),
(1431, 147, '_wc_review_count', '0'),
(1432, 147, '_product_version', '4.6.1'),
(1433, 147, '_price', '58742'),
(1434, 147, '_edit_lock', '1604331972:1'),
(1435, 150, '_wp_attached_file', '2020/11/OnePlus-8.jpg'),
(1436, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2020/11/OnePlus-8.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"OnePlus-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"OnePlus-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1437, 149, '_edit_last', '1'),
(1438, 149, '_thumbnail_id', '150'),
(1439, 149, '_regular_price', '49999'),
(1440, 149, '_sale_price', '48239'),
(1441, 149, 'total_sales', '0'),
(1442, 149, '_tax_status', 'taxable'),
(1443, 149, '_tax_class', ''),
(1444, 149, '_manage_stock', 'no'),
(1445, 149, '_backorders', 'no'),
(1446, 149, '_sold_individually', 'no'),
(1447, 149, '_virtual', 'no'),
(1448, 149, '_downloadable', 'no'),
(1449, 149, '_download_limit', '-1'),
(1450, 149, '_download_expiry', '-1'),
(1451, 149, '_stock', NULL),
(1452, 149, '_stock_status', 'instock'),
(1453, 149, '_wc_average_rating', '0'),
(1454, 149, '_wc_review_count', '0'),
(1455, 149, '_product_version', '4.6.1'),
(1456, 149, '_price', '48239'),
(1457, 149, '_edit_lock', '1604332049:1'),
(1458, 152, '_wp_attached_file', '2020/11/OnePlus-8T.jpg'),
(1459, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2020/11/OnePlus-8T.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1460, 151, '_edit_last', '1'),
(1461, 151, '_thumbnail_id', '152'),
(1462, 151, '_regular_price', '45999'),
(1463, 151, '_sale_price', '44567'),
(1464, 151, 'total_sales', '0'),
(1465, 151, '_tax_status', 'taxable'),
(1466, 151, '_tax_class', ''),
(1467, 151, '_manage_stock', 'no'),
(1468, 151, '_backorders', 'no'),
(1469, 151, '_sold_individually', 'no'),
(1470, 151, '_virtual', 'no'),
(1471, 151, '_downloadable', 'no'),
(1472, 151, '_download_limit', '-1'),
(1473, 151, '_download_expiry', '-1'),
(1474, 151, '_stock', NULL),
(1475, 151, '_stock_status', 'instock'),
(1476, 151, '_wc_average_rating', '0'),
(1477, 151, '_wc_review_count', '0'),
(1478, 151, '_product_version', '4.6.1'),
(1479, 151, '_price', '44567'),
(1480, 151, '_edit_lock', '1604334009:1'),
(1481, 154, '_wp_attached_file', '2020/11/OnePlus-7T.jpg'),
(1482, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:670;s:4:\"file\";s:22:\"2020/11/OnePlus-7T.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"OnePlus-7T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-600x314.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"OnePlus-7T-1024x536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"OnePlus-7T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-600x314.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1483, 153, '_edit_last', '1'),
(1484, 153, '_thumbnail_id', '154'),
(1485, 153, '_regular_price', '39999'),
(1486, 153, '_sale_price', '38789'),
(1487, 153, 'total_sales', '0'),
(1488, 153, '_tax_status', 'taxable'),
(1489, 153, '_tax_class', ''),
(1490, 153, '_manage_stock', 'no'),
(1491, 153, '_backorders', 'no'),
(1492, 153, '_sold_individually', 'no'),
(1493, 153, '_virtual', 'no'),
(1494, 153, '_downloadable', 'no'),
(1495, 153, '_download_limit', '-1'),
(1496, 153, '_download_expiry', '-1'),
(1497, 153, '_stock', NULL),
(1498, 153, '_stock_status', 'instock'),
(1499, 153, '_wc_average_rating', '0'),
(1500, 153, '_wc_review_count', '0'),
(1501, 153, '_product_version', '4.6.1'),
(1502, 153, '_price', '38789'),
(1503, 153, '_edit_lock', '1604334094:1'),
(1504, 156, '_wp_attached_file', '2020/11/OnePlus-7-Pro.jpg'),
(1505, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:972;s:6:\"height\";i:1004;s:4:\"file\";s:25:\"2020/11/OnePlus-7-Pro.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"OnePlus-7-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-600x620.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-290x300.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-768x793.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:793;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"OnePlus-7-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-600x620.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1506, 155, '_edit_last', '1'),
(1507, 155, '_thumbnail_id', '156'),
(1508, 155, '_regular_price', '52999'),
(1509, 155, '_sale_price', '51264'),
(1510, 155, 'total_sales', '0'),
(1511, 155, '_tax_status', 'taxable'),
(1512, 155, '_tax_class', ''),
(1513, 155, '_manage_stock', 'no'),
(1514, 155, '_backorders', 'no'),
(1515, 155, '_sold_individually', 'no'),
(1516, 155, '_virtual', 'no'),
(1517, 155, '_downloadable', 'no'),
(1518, 155, '_download_limit', '-1'),
(1519, 155, '_download_expiry', '-1'),
(1520, 155, '_stock', NULL),
(1521, 155, '_stock_status', 'instock'),
(1522, 155, '_wc_average_rating', '0'),
(1523, 155, '_wc_review_count', '0'),
(1524, 155, '_product_version', '4.6.1'),
(1525, 155, '_price', '51264'),
(1526, 155, '_edit_lock', '1604334200:1'),
(1527, 158, '_wp_attached_file', '2020/11/OnePlus-6T.jpg'),
(1528, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:22:\"2020/11/OnePlus-6T.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1529, 157, '_edit_last', '1'),
(1530, 157, '_thumbnail_id', '158'),
(1531, 157, '_regular_price', '39999'),
(1532, 157, '_sale_price', '37239'),
(1533, 157, 'total_sales', '0'),
(1534, 157, '_tax_status', 'taxable'),
(1535, 157, '_tax_class', ''),
(1536, 157, '_manage_stock', 'no'),
(1537, 157, '_backorders', 'no'),
(1538, 157, '_sold_individually', 'no'),
(1539, 157, '_virtual', 'no'),
(1540, 157, '_downloadable', 'no'),
(1541, 157, '_download_limit', '-1'),
(1542, 157, '_download_expiry', '-1'),
(1543, 157, '_stock', NULL),
(1544, 157, '_stock_status', 'instock'),
(1545, 157, '_wc_average_rating', '0'),
(1546, 157, '_wc_review_count', '0'),
(1547, 157, '_product_version', '4.6.1'),
(1548, 157, '_price', '37239'),
(1549, 157, '_edit_lock', '1604334285:1'),
(1550, 160, '_wp_attached_file', '2020/11/iphone-12-Pro-Max.jpg'),
(1551, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:29:\"2020/11/iphone-12-Pro-Max.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-259x150.jpg\";s:5:\"width\";i:259;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1552, 159, '_edit_last', '1'),
(1553, 159, '_thumbnail_id', '160'),
(1554, 159, '_regular_price', '129700'),
(1555, 159, '_sale_price', '122346'),
(1556, 159, 'total_sales', '0'),
(1557, 159, '_tax_status', 'taxable'),
(1558, 159, '_tax_class', ''),
(1559, 159, '_manage_stock', 'no'),
(1560, 159, '_backorders', 'no'),
(1561, 159, '_sold_individually', 'no'),
(1562, 159, '_virtual', 'no'),
(1563, 159, '_downloadable', 'no'),
(1564, 159, '_download_limit', '-1'),
(1565, 159, '_download_expiry', '-1'),
(1566, 159, '_stock', NULL),
(1567, 159, '_stock_status', 'instock'),
(1568, 159, '_wc_average_rating', '0'),
(1569, 159, '_wc_review_count', '0'),
(1570, 159, '_product_version', '4.6.1'),
(1571, 159, '_price', '122346'),
(1572, 159, '_edit_lock', '1604334442:1'),
(1573, 162, '_wp_attached_file', '2020/11/Iphone-8.jpg'),
(1574, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/11/Iphone-8.jpg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:20:\"Iphone-8-225x150.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1575, 161, '_edit_last', '1'),
(1576, 161, '_thumbnail_id', '162'),
(1577, 161, '_regular_price', '35800'),
(1578, 161, '_sale_price', '33543'),
(1579, 161, 'total_sales', '0'),
(1580, 161, '_tax_status', 'taxable'),
(1581, 161, '_tax_class', ''),
(1582, 161, '_manage_stock', 'no'),
(1583, 161, '_backorders', 'no'),
(1584, 161, '_sold_individually', 'no'),
(1585, 161, '_virtual', 'no'),
(1586, 161, '_downloadable', 'no'),
(1587, 161, '_download_limit', '-1'),
(1588, 161, '_download_expiry', '-1'),
(1589, 161, '_stock', NULL),
(1590, 161, '_stock_status', 'instock'),
(1591, 161, '_wc_average_rating', '0'),
(1592, 161, '_wc_review_count', '0'),
(1593, 161, '_product_version', '4.6.1'),
(1594, 161, '_price', '33543'),
(1595, 161, '_edit_lock', '1604334545:1'),
(1596, 164, '_wp_attached_file', '2020/11/iPhone_11.png'),
(1597, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:335;s:4:\"file\";s:21:\"2020/11/iPhone_11.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"iPhone_11-220x300.png\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"iPhone_11-197x300.png\";s:5:\"width\";i:197;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"iPhone_11-220x300.png\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"iPhone_11-220x150.png\";s:5:\"width\";i:220;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1598, 163, '_edit_last', '1'),
(1599, 163, '_thumbnail_id', '164'),
(1600, 163, '_regular_price', '64900'),
(1601, 163, '_sale_price', '60000'),
(1602, 163, 'total_sales', '0'),
(1603, 163, '_tax_status', 'taxable'),
(1604, 163, '_tax_class', ''),
(1605, 163, '_manage_stock', 'no'),
(1606, 163, '_backorders', 'no'),
(1607, 163, '_sold_individually', 'no'),
(1608, 163, '_virtual', 'no'),
(1609, 163, '_downloadable', 'no'),
(1610, 163, '_download_limit', '-1'),
(1611, 163, '_download_expiry', '-1'),
(1612, 163, '_stock', NULL),
(1613, 163, '_stock_status', 'instock'),
(1614, 163, '_wc_average_rating', '0'),
(1615, 163, '_wc_review_count', '0'),
(1616, 163, '_product_version', '4.6.1'),
(1617, 163, '_price', '60000'),
(1618, 163, '_edit_lock', '1604334614:1'),
(1619, 166, '_wp_attached_file', '2020/11/Iphone-11-Pro.jpg'),
(1620, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1481;s:4:\"file\";s:25:\"2020/11/Iphone-11-Pro.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Iphone-11-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-600x741.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:741;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-243x300.jpg\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Iphone-11-Pro-830x1024.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-768x948.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:948;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"Iphone-11-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-600x741.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:741;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:26:\"Iphone-11-Pro-300x1200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1621, 165, '_edit_last', '1'),
(1622, 165, '_thumbnail_id', '166'),
(1623, 165, '_regular_price', '106600'),
(1624, 165, '_sale_price', '98967'),
(1625, 165, 'total_sales', '0'),
(1626, 165, '_tax_status', 'taxable'),
(1627, 165, '_tax_class', ''),
(1628, 165, '_manage_stock', 'no'),
(1629, 165, '_backorders', 'no'),
(1630, 165, '_sold_individually', 'no'),
(1631, 165, '_virtual', 'no'),
(1632, 165, '_downloadable', 'no'),
(1633, 165, '_download_limit', '-1'),
(1634, 165, '_download_expiry', '-1'),
(1635, 165, '_stock', NULL),
(1636, 165, '_stock_status', 'instock'),
(1637, 165, '_wc_average_rating', '0'),
(1638, 165, '_wc_review_count', '0'),
(1639, 165, '_product_version', '4.6.1'),
(1640, 165, '_price', '98967'),
(1641, 165, '_edit_lock', '1604334719:1'),
(1642, 168, '_wp_attached_file', '2020/11/Iphone-XR.jpg'),
(1643, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:441;s:6:\"height\";i:529;s:4:\"file\";s:21:\"2020/11/Iphone-XR.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Iphone-XR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-250x300.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-416x499.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"Iphone-XR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-416x499.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1644, 167, '_edit_last', '1'),
(1645, 167, '_thumbnail_id', '168'),
(1646, 167, '_regular_price', '47900'),
(1647, 167, '_sale_price', '46588'),
(1648, 167, 'total_sales', '0'),
(1649, 167, '_tax_status', 'taxable'),
(1650, 167, '_tax_class', ''),
(1651, 167, '_manage_stock', 'no'),
(1652, 167, '_backorders', 'no'),
(1653, 167, '_sold_individually', 'no'),
(1654, 167, '_virtual', 'no'),
(1655, 167, '_downloadable', 'no'),
(1656, 167, '_download_limit', '-1'),
(1657, 167, '_download_expiry', '-1'),
(1658, 167, '_stock', NULL),
(1659, 167, '_stock_status', 'instock'),
(1660, 167, '_wc_average_rating', '0'),
(1661, 167, '_wc_review_count', '0'),
(1662, 167, '_product_version', '4.6.1'),
(1663, 167, '_price', '46588'),
(1664, 167, '_edit_lock', '1604334842:1'),
(1665, 170, '_wp_attached_file', '2020/11/iphone-7.jpg'),
(1666, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:343;s:6:\"height\";i:606;s:4:\"file\";s:20:\"2020/11/iphone-7.jpg\";s:5:\"sizes\";a:7:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"iphone-7-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"iphone-7-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"iphone-7-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:20:\"iphone-7-300x600.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1667, 169, '_edit_last', '1'),
(1668, 169, '_thumbnail_id', '170'),
(1669, 169, '_regular_price', '24999'),
(1670, 169, '_sale_price', '23322'),
(1671, 169, 'total_sales', '0'),
(1672, 169, '_tax_status', 'taxable'),
(1673, 169, '_tax_class', ''),
(1674, 169, '_manage_stock', 'no'),
(1675, 169, '_backorders', 'no'),
(1676, 169, '_sold_individually', 'no'),
(1677, 169, '_virtual', 'no'),
(1678, 169, '_downloadable', 'no'),
(1679, 169, '_download_limit', '-1'),
(1680, 169, '_download_expiry', '-1'),
(1681, 169, '_stock', NULL),
(1682, 169, '_stock_status', 'instock'),
(1683, 169, '_wc_average_rating', '0'),
(1684, 169, '_wc_review_count', '0'),
(1685, 169, '_product_version', '4.6.1'),
(1686, 169, '_price', '23322'),
(1687, 169, '_edit_lock', '1604334962:1'),
(1688, 21, '_edit_lock', '1604337381:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-11-02 07:00:53', '2020-11-02 07:00:53', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-11-02 07:00:53', '2020-11-02 07:00:53', '', 0, 'http://127.0.0.1/Croma/?p=1', 0, 'post', '', 1),
(12, 1, '2020-11-02 07:13:25', '2020-11-02 07:13:25', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-11-02 07:13:25', '2020-11-02 07:13:25', '', 0, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-11-02 07:13:27', '2020-11-02 07:13:27', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-11-02 07:13:27', '2020-11-02 07:13:27', '', 0, 'http://127.0.0.1/Croma/index.php/shop/', 0, 'page', '', 0),
(14, 1, '2020-11-02 07:13:28', '2020-11-02 07:13:28', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-11-02 07:13:28', '2020-11-02 07:13:28', '', 0, 'http://127.0.0.1/Croma/index.php/cart/', 0, 'page', '', 0),
(15, 1, '2020-11-02 07:13:28', '2020-11-02 07:13:28', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-11-02 07:13:28', '2020-11-02 07:13:28', '', 0, 'http://127.0.0.1/Croma/index.php/checkout/', 0, 'page', '', 0),
(16, 1, '2020-11-02 07:13:28', '2020-11-02 07:13:28', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-11-02 07:13:28', '2020-11-02 07:13:28', '', 0, 'http://127.0.0.1/Croma/index.php/my-account/', 0, 'page', '', 0),
(18, 1, '2020-11-02 08:46:01', '2020-11-02 08:46:01', '<ul>\r\n 	<li>\r\n<h4>Xiaomi Mi Watch It sports a 1.78-inch AMOLED display (326 ppi)  density and a 570mAh battery, 36 hours of use.</h4>\r\n</li>\r\n 	<li>\r\n<h4>It’s powered by a Qualcomm Snapdragon Wear 3100 processor and 1GB of RAM, and it comes with 8GB of internal storage.</h4>\r\n</li>\r\n 	<li>\r\n<h4>There’s also Wi-Fi, Bluetooth, and NFC functionality, a heart rate monitoring feature, and eSIM support for 4G connectivity.</h4>\r\n</li>\r\n 	<li>\r\n<h4>eSIM 4G LTE It comes with a built-in microphone for making calls or recording voice notes, and there\'s a speaker for listening to incoming calls or music.</h4>\r\n</li>\r\n 	<li>\r\n<h4>There\'s a eSIM slot to support calls and 4G connectivity</h4>\r\n</li>\r\n</ul>', 'Xiaomi Mi 4G LTE Watch', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-4g-lte-watch', '', '', '2020-11-02 08:46:06', '2020-11-02 08:46:06', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2020-11-02 08:45:24', '2020-11-02 08:45:24', '', 'Xiaomi watch 4G LTE', '', 'inherit', 'open', 'closed', '', 'xiaomi-watch-4g-lte', '', '', '2020-11-02 08:45:24', '2020-11-02 08:45:24', '', 18, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Xiaomi-watch-4G-LTE.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-11-02 10:10:01', '2020-11-02 10:10:01', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\",\"id\":22,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:freeform -->\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n<!-- /wp:freeform -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://127.0.0.1/Croma/index.php/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false} -->\n<div class=\"wp-block-media-text alignwide\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2020-11-02 17:18:39', '2020-11-02 17:18:39', '', 0, 'http://127.0.0.1/Croma/index.php/homepage/', 0, 'page', '', 0),
(22, 1, '2020-11-02 10:10:02', '2020-11-02 10:10:02', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2020-11-02 10:10:02', '2020-11-02 10:10:02', '', 21, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-11-02 10:10:06', '2020-11-02 10:10:06', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\",\"id\":22,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:button {\"align\":\"center\"} -->\n			<div class=\"wp-block-button aligncenter\"><a href=\"http://127.0.0.1/Croma/index.php/shop/\" class=\"wp-block-button__link\">Go shopping</a></div>\n			<!-- /wp:button --></div></div>\n			<!-- /wp:cover -->\n		<!-- wp:heading {\"align\":\"center\"} -->\n		<h2 style=\"text-align:center\">New Products</h2>\n		<!-- /wp:heading -->\n\n		<!-- wp:woocommerce/product-new /--> <!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaId\":22,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text -->\n\n		<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-11-02 10:10:06', '2020-11-02 10:10:06', '', 21, 'http://127.0.0.1/Croma/index.php/2020/11/02/21-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-11-02 10:56:27', '2020-11-02 10:56:27', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Diameter: 33.03 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 24 months manufacturer Warranty</span></li>\r\n</ul>', 'Titan Gold Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-gold-analog-black-dial-watch', '', '', '2020-11-02 11:06:22', '2020-11-02 11:06:22', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=25', 0, 'product', '', 0),
(27, 1, '2020-11-02 10:56:09', '2020-11-02 10:56:09', '', 'Titan Royal Analog watch', '', 'inherit', 'open', 'closed', '', 'titan-royal-analog-watch', '', '', '2020-11-02 10:56:09', '2020-11-02 10:56:09', '', 25, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Titan-Royal-Analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-11-02 11:16:11', '2020-11-02 11:16:11', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Green, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Brown, Band Material: Leather</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 49 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters</span></li>\r\n</ul>', 'Titan Maritime Analog Green Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-maritime-analog-green-dial-watch', '', '', '2020-11-02 11:16:23', '2020-11-02 11:16:23', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2020-11-02 11:09:19', '2020-11-02 11:09:19', '', 'Titan Maritime Analog Green dial watch', '', 'inherit', 'open', 'closed', '', 'titan-maritime-analog-green-dial-watch', '', '', '2020-11-02 11:09:19', '2020-11-02 11:09:19', '', 28, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Titan-Maritime-Analog-Green-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2020-11-02 13:02:20', '2020-11-02 13:02:20', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Gold-Color, Case Shape: Rectangular</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 Meters</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 24 Months Manufacturer Warranty</span></li>\r\n</ul>', 'Titan Gold Analog White Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-gold-analog-white-dial-watch', '', '', '2020-11-02 13:02:27', '2020-11-02 13:02:27', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=30', 0, 'product', '', 0),
(31, 1, '2020-11-02 13:02:05', '2020-11-02 13:02:05', '', 'Titan gold', '', 'inherit', 'open', 'closed', '', 'titan-gold', '', '', '2020-11-02 13:02:05', '2020-11-02 13:02:05', '', 30, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Titan-gold.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-11-02 13:03:55', '2020-11-02 13:03:55', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Blue, Case Shape: Round, Dial Glass Material: Sapphire</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Blue, Band Material: Ceramic, Lock Mechanism: Butterfly Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Ceramic, Case Diameter: 40.5 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters</span></li>\r\n</ul>', 'Titan Analog Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-analog-blue-dial-watch', '', '', '2020-11-02 13:04:01', '2020-11-02 13:04:01', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2020-11-02 13:03:45', '2020-11-02 13:03:45', '', 'Titan Edge Ceramic', '', 'inherit', 'open', 'closed', '', 'titan-edge-ceramic', '', '', '2020-11-02 13:03:45', '2020-11-02 13:03:45', '', 32, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Titan-Edge-Ceramic.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-11-02 13:05:24', '2020-11-02 13:05:24', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass </span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Metal</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 51 millimeters. Case Width(3H-9H) 46 mm, Case Thickness 10.50 mm</span></li>\r\n 	<li><span class=\"a-list-item\">2 years warranty</span></li>\r\n</ul>', 'Titan Steel Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-steel-analog-black-dial-watch', '', '', '2020-11-02 13:05:29', '2020-11-02 13:05:29', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=34', 0, 'product', '', 0),
(35, 1, '2020-11-02 13:05:13', '2020-11-02 13:05:13', '', 'Titan analog watch', '', 'inherit', 'open', 'closed', '', 'titan-analog-watch', '', '', '2020-11-02 13:05:13', '2020-11-02 13:05:13', '', 34, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Titan-analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-11-02 13:07:26', '2020-11-02 13:07:26', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold, Band Material: Gold. Case Thickness 8.25 mm, Case Width(3H-9H) 38 mm</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">2 years warranty</span></li>\r\n</ul>', 'Titan Analog Steel Gold Watch', '', 'publish', 'open', 'closed', '', 'titan-analog-steel-gold-watch', '', '', '2020-11-02 13:07:32', '2020-11-02 13:07:32', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=36', 0, 'product', '', 0),
(37, 1, '2020-11-02 13:07:16', '2020-11-02 13:07:16', '', 'Titan Analog watch gold', '', 'inherit', 'open', 'closed', '', 'titan-analog-watch-gold', '', '', '2020-11-02 13:07:16', '2020-11-02 13:07:16', '', 36, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Titan-Analog-watch-gold.jpeg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-11-02 13:09:56', '2020-11-02 13:09:56', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black; Case Shape: Asymmetrical; Dial Glass Material: Brass</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Multi-Color; Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz; Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass; Case Diameter: 45 x 36 millimeters; Case thickness:6.87mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters; Deployment Clasp Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty Details: This watch offers 24 months warranty on the Movement and 12 months warranty on the Battery from the date of purchase</span></li>\r\n</ul>', 'Fastrack Steel Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-steel-analog-black-dial-watch', '', '', '2020-11-02 13:10:01', '2020-11-02 13:10:01', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=38', 0, 'product', '', 0),
(39, 1, '2020-11-02 13:09:21', '2020-11-02 13:09:21', '', 'Square-dial-fastrack-watch', '', 'inherit', 'open', 'closed', '', 'square-dial-fastrack-watch', '', '', '2020-11-02 13:09:21', '2020-11-02 13:09:21', '', 38, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Square-dial-fastrack-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-11-02 13:12:26', '2020-11-02 13:12:26', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Metal</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters</span></li>\r\n 	<li><span class=\"a-list-item\">24 Months manufacturer warranty on manufacturing defects</span></li>\r\n 	<li><span class=\"a-list-item\">Recommended for customers looking for a large dial sized watches</span></li>\r\n</ul>', 'Sonata Steel Analog Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'sonata-steel-analog-blue-dial-watch', '', '', '2020-11-02 13:12:31', '2020-11-02 13:12:31', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=40', 0, 'product', '', 0),
(41, 1, '2020-11-02 13:12:15', '2020-11-02 13:12:15', '', 'Sonata wedding analog blue watch', '', 'inherit', 'open', 'closed', '', 'sonata-wedding-analog-blue-watch', '', '', '2020-11-02 13:12:15', '2020-11-02 13:12:15', '', 40, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Sonata-wedding-analog-blue-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-11-02 13:14:15', '2020-11-02 13:14:15', '<ul>\r\n 	<li class=\"product-title text-white\">\r\n<h4><span class=\"ng-binding\">BusyBees Blue Dial Analog Watch</span></h4>\r\n</li>\r\n</ul>', 'Sonata Steel Blue Dial Analog Watch', '', 'publish', 'open', 'closed', '', 'sonata-steel-blue-dial-analog-watch', '', '', '2020-11-02 13:14:20', '2020-11-02 13:14:20', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2020-11-02 13:14:04', '2020-11-02 13:14:04', '', 'Sonata steel analog blue dial watch', '', 'inherit', 'open', 'closed', '', 'sonata-steel-analog-blue-dial-watch-2', '', '', '2020-11-02 13:14:04', '2020-11-02 13:14:04', '', 42, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Sonata-steel-analog-blue-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-11-02 13:15:52', '2020-11-02 13:15:52', '<ul>\r\n 	<li class=\"product-single__title\">ROLEX SUBMARINER FULL BLACK 45 (Refurbished)</li>\r\n 	<li>Stainless Steel Material</li>\r\n 	<li>Daytona Collection</li>\r\n 	<li>Dial size 45mm</li>\r\n 	<li>Sapphire Crystal Glass Material</li>\r\n</ul>', 'Rolex Steel Submariner Black Watch', '', 'publish', 'open', 'closed', '', 'rolex-steel-submariner-black-watch', '', '', '2020-11-02 13:15:56', '2020-11-02 13:15:56', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=44', 0, 'product', '', 0),
(45, 1, '2020-11-02 13:15:40', '2020-11-02 13:15:40', '', 'Rolex Submariner Black', '', 'inherit', 'open', 'closed', '', 'rolex-submariner-black', '', '', '2020-11-02 13:15:40', '2020-11-02 13:15:40', '', 44, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Rolex-Submariner-Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-11-02 13:18:08', '2020-11-02 13:18:08', '<ul>\r\n 	<li>\r\n<h4 class=\"product_title entry-title\"><strong>Rolex Daytona Cosmograph Rose Gold watch</strong></h4>\r\n</li>\r\n</ul>', 'Rolex Steel Rose Gold Watch', '', 'publish', 'open', 'closed', '', 'rolex-steel-rose-gold-watch', '', '', '2020-11-02 13:18:13', '2020-11-02 13:18:13', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=46', 0, 'product', '', 0),
(47, 1, '2020-11-02 13:17:36', '2020-11-02 13:17:36', '', 'Rolex rose gold', '', 'inherit', 'open', 'closed', '', 'rolex-rose-gold', '', '', '2020-11-02 13:17:36', '2020-11-02 13:17:36', '', 46, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Rolex-rose-gold.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-11-02 13:22:10', '2020-11-02 13:22:10', '<ul>\r\n 	<li>\r\n<h4 class=\"product-single__title\">ROLEX Chronograph Automatic Two-Tone Watch</h4>\r\n</li>\r\n</ul>', 'Rolex Steel Oyster Watch', '', 'publish', 'open', 'closed', '', 'rolex-steel-oyster-watch', '', '', '2020-11-02 13:22:16', '2020-11-02 13:22:16', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2020-11-02 13:20:43', '2020-11-02 13:20:43', '', 'Rolex Oyster', '', 'inherit', 'open', 'closed', '', 'rolex-oyster', '', '', '2020-11-02 13:20:43', '2020-11-02 13:20:43', '', 48, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Rolex-Oyster.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-11-02 13:23:48', '2020-11-02 13:23:48', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">1.1” Full touch AMOLED color display</span></li>\r\n 	<li><span class=\"a-list-item\">Battery runs up to 14 days on a single charge</span></li>\r\n 	<li><span class=\"a-list-item\">Magnetic charging – Hassle free charging</span></li>\r\n 	<li><span class=\"a-list-item\">PAI (Personal Activity Intelligence) – Single matrix to track your all fitness related activities</span></li>\r\n 	<li><span class=\"a-list-item\">Tracks 11 professional sports mode (including Yoga and Rope skipping)</span></li>\r\n 	<li><span class=\"a-list-item\">5ATM Water Resistant</span></li>\r\n 	<li><span class=\"a-list-item\">Run on the go with Automatic activity detection (Running and Walking)</span>\r\n<h4></h4>\r\n</li>\r\n</ul>', 'Mi Smart Band 4 Watch', '', 'publish', 'open', 'closed', '', 'mi-smart-band-4-watch', '', '', '2020-11-02 13:23:53', '2020-11-02 13:23:53', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2020-11-02 13:23:40', '2020-11-02 13:23:40', '', 'Mi smart band 4', '', 'inherit', 'open', 'closed', '', 'mi-smart-band-4', '', '', '2020-11-02 13:23:40', '2020-11-02 13:23:40', '', 50, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Mi-smart-band-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2020-11-02 13:25:52', '2020-11-02 13:25:52', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial color: black, case shape: round, dial glass material: mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band color: multi-colour, band material: resin, Measuring unit: 1/10 second, Full auto-calendar (to year 2099)</span></li>\r\n 	<li><span class=\"a-list-item\">Watch movement type: quartz, watch display type: analog-digital ; Accuracy: ±15 seconds per month and Approx. battery life: 5 years on CR2016</span></li>\r\n 	<li><span class=\"a-list-item\">Case material: resin, case diameter: 53.4 millimeters led light (super illuminator)- selectable illumination duration (1.5 seconds or 3 seconds), afterglow</span></li>\r\n 	<li><span class=\"a-list-item\">Water resistance depth: 200 meters, buckle clasp, Button operation tone on/off</span></li>\r\n 	<li><span class=\"a-list-item\">Stopwatch; dual time; countdown timer; light, Hourly time signal, Hand shift feature</span></li>\r\n 	<li><span class=\"a-list-item\">2 years manufacturer warranty on manufacturing defects</span></li>\r\n</ul>', 'G-Shock Analog-Digital Mud master Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-digital-mud-master-watch', '', '', '2020-11-02 13:25:58', '2020-11-02 13:25:58', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2020-11-02 13:25:42', '2020-11-02 13:25:42', '', 'G-Shock casio mud master watch', '', 'inherit', 'open', 'closed', '', 'g-shock-casio-mud-master-watch', '', '', '2020-11-02 13:25:42', '2020-11-02 13:25:42', '', 52, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/G-Shock-casio-mud-master-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-11-02 13:27:26', '2020-11-02 13:27:26', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial color: black, case shape: round, dial glass material: mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band color: silver, band material: stainless steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch movement type: quartz, watch display type: analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case material: resin ; case diameter: 53.8 Millimeters and total Size of case : 58.1×53.8×14.1mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water resistance depth: 200 meters, fold-over clasp with safety</span></li>\r\n 	<li><span class=\"a-list-item\">Dual time</span></li>\r\n 	<li><span class=\"a-list-item\">Solar powered</span></li>\r\n</ul>', 'G-Shock Analog Steel Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-steel-watch', '', '', '2020-11-02 13:27:31', '2020-11-02 13:27:31', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2020-11-02 13:27:17', '2020-11-02 13:27:17', '', 'G-Shock steel watch', '', 'inherit', 'open', 'closed', '', 'g-shock-steel-watch', '', '', '2020-11-02 13:27:17', '2020-11-02 13:27:17', '', 54, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/G-Shock-steel-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-11-02 13:28:56', '2020-11-02 13:28:56', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Resin, Occasion: Sports</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog-Digital</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 51 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 200 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 2 Years Domestic Warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n 	<li><span class=\"a-list-item\">5 daily alarms (with 1 snooze alarm) ; Countdown timer ; Countdown range: 24 hours ; Accuracy: ±15 seconds per month ; LED: Amber</span></li>\r\n</ul>', 'G-Shock Analog-Digital Black Dial Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-digital-black-dial-watch', '', '', '2020-11-02 13:29:01', '2020-11-02 13:29:01', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2020-11-02 13:28:44', '2020-11-02 13:28:44', '', 'Gshock black watch', '', 'inherit', 'open', 'closed', '', 'gshock-black-watch', '', '', '2020-11-02 13:28:44', '2020-11-02 13:28:44', '', 56, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Gshock-black-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-11-02 13:30:59', '2020-11-02 13:30:59', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">ALL-DAY ACTIVITY TRACKING: Fitbit Versa 2 tracks all-day activity like steps, distance, active minutes and calories burned to show how every part of your day gets you closer to your goals.</span></li>\r\n 	<li><span class=\"a-list-item\">WATER RESISTANCE: Fitbit Versa 2 is water-resistant to 50 meters, which means you’re free to wear it in the pool, in the shower, at the beach and beyond.</span></li>\r\n 	<li><span class=\"a-list-item\">5+ DAY BATTERY LIFE: A day lasts 24 hours. Versa 2 gives you much more than that. With 5+ day battery life, Fitbit Versa 2 tracks your morning, night &amp; everything in between without needing to stop for a charge. Varies with use &amp; other factors.</span></li>\r\n 	<li><span class=\"a-list-item\">FITBIT PAY: Pay without your wallet by uploading your credit card and making secure purchases from your wrist.</span></li>\r\n</ul>', 'Fitbit Versa 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-versa-2-watch', '', '', '2020-11-02 13:31:04', '2020-11-02 13:31:04', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 1, '2020-11-02 13:30:36', '2020-11-02 13:30:36', '', 'Fitbit Versa 2', '', 'inherit', 'open', 'closed', '', 'fitbit-versa-2', '', '', '2020-11-02 13:30:36', '2020-11-02 13:30:36', '', 58, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fitbit-Versa-2.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2020-11-02 13:32:51', '2020-11-02 13:32:51', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">EDA Scan app detects electrodermal activity which may indicate your body\'s response to stress and a built-in skin temperature sensor logs yours each night so you can see when it varies</span></li>\r\n 	<li><span class=\"a-list-item\">The Fitbit ECG app has received FDA clearance and is available in the U.S. Availability in other countries pending applicable regulatory clearances. Not intended for use by people under 22 years old. See fitbit.com/ecg for additional details</span></li>\r\n 	<li><span class=\"a-list-item\">An on-wrist skin temperature sensor tracks yours each night so you can see how it varies</span></li>\r\n 	<li><span class=\"a-list-item\">Free 6-month Fitbit Premium trial for new Premium users (Free trial may only be activated with device activation &amp; within 60 days of device activation. Valid payment method required. New users only. Cancel before free trial ends to avoid subscription fees)</span></li>\r\n 	<li><span class=\"a-list-item\">High &amp; low heart rate notifications alert you if yours seems above or below your average</span></li>\r\n 	<li><span class=\"a-list-item\">Battery lasts 6+ days—plus, fast charging gives you a full day’s charge in just 12 minutes (Varies with use and other factors; up to 12 hours with continuous GPS)</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS during runs, hikes, rides and more to see pace &amp; distance without your phone</span></li>\r\n 	<li><span class=\"a-list-item\">Use your voice with Amazon Alexa Built-in to check the weather, set reminders, control smart home appliances and more from your watch (Voice assistant availability and features may vary)</span></li>\r\n</ul>', 'Fitbit Sense Watch', '', 'publish', 'open', 'closed', '', 'fitbit-sense-watch', '', '', '2020-11-02 13:32:56', '2020-11-02 13:32:56', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=60', 0, 'product', '', 0),
(61, 1, '2020-11-02 13:32:21', '2020-11-02 13:32:21', '', 'Fitbit Sense', '', 'inherit', 'open', 'closed', '', 'fitbit-sense', '', '', '2020-11-02 13:32:21', '2020-11-02 13:32:21', '', 60, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fitbit-Sense.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-11-02 13:34:44', '2020-11-02 13:34:44', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Free 1-year Fitbit Premium trial for new Premium users (Free trial may only be activated with device activation &amp; within 60 days of device activation. Valid payment method required. New users only. Cancel before free trial ends to avoid subscription fees)</span></li>\r\n 	<li><span class=\"a-list-item\">Earn Active Zone Minutes as you progress toward your weekly 150 minutes of heart-pumping activity and use 20+ exercise modes to track goals like distance, calories burned and more</span></li>\r\n 	<li><span class=\"a-list-item\">Track all-day activity: your steps, distance, hourly activity and calories burned</span></li>\r\n 	<li><span class=\"a-list-item\">Use 24/7 heart rate to track resting heart rate &amp; better measure calorie burn</span></li>\r\n 	<li><span class=\"a-list-item\">Enjoy 10 days of battery life for daily progress without constant charging. Varies with use and other factors</span></li>\r\n 	<li><span class=\"a-list-item\">Track your time in light, deep and REM sleep, then get a Sleep Score to better understand your sleep quality each night</span></li>\r\n 	<li><span class=\"a-list-item\">Stay inspired from the shower to the pool with this swimproof tracker (water resistant to 50 meters) and motivated by connecting with friends, competing in challenges, earning badges and celebrating goal milestones</span></li>\r\n 	<li><span class=\"a-list-item\">Get call, text, calendar and smartphone app notifications right on your wrist. Notifications and app alerts are available on-device when your phone is nearby</span></li>\r\n</ul>', 'Fitbit Inspire 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-inspire-2-watch', '', '', '2020-11-02 13:34:49', '2020-11-02 13:34:49', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2020-11-02 13:34:17', '2020-11-02 13:34:17', '', 'Fitbit Inspire 2', '', 'inherit', 'open', 'closed', '', 'fitbit-inspire-2', '', '', '2020-11-02 13:34:17', '2020-11-02 13:34:17', '', 62, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fitbit-Inspire-2.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2020-11-02 13:36:24', '2020-11-02 13:36:24', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Start dynamic personalized workouts on your wrist with step-by-step coaching. The GPS battery life lasts upto 10 hours</span></li>\r\n 	<li><span class=\"a-list-item\">Store and play 300 plus songs, plus download playlists from Pandora</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS/Glonass to track pace, distance and routes and get Pure Pulse continuous heart rate tracking and real-time zones</span></li>\r\n 	<li><span class=\"a-list-item\">Package includes both large and small size bands for the perfect, comfortable fit for all-day and all-night wear</span></li>\r\n 	<li><span class=\"a-list-item\">Access your favorite apps for sports, weather and more and make payments on the go with a built-in NFC chip</span></li>\r\n 	<li><span class=\"a-list-item\">Track runs, swims, rides, workouts, all day activity and sleep with 4 plus day battery life (varies with use and other factors)</span></li>\r\n 	<li><span class=\"a-list-item\">Increased pixels and amplified brightness up to 1000 nits, operating temperature: 4 degree to 113 degree Fahrenheit, maximum operating altitude: 30,000 feet</span></li>\r\n</ul>', 'Fitbit Ionic SmartWatch', '', 'publish', 'open', 'closed', '', 'fitbit-ionic-smartwatch', '', '', '2020-11-02 13:36:30', '2020-11-02 13:36:30', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2020-11-02 13:36:11', '2020-11-02 13:36:11', '', 'Fitbit Iconic Watch', '', 'inherit', 'open', 'closed', '', 'fitbit-iconic-watch', '', '', '2020-11-02 13:36:11', '2020-11-02 13:36:11', '', 64, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fitbit-Iconic-Watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-11-02 13:38:27', '2020-11-02 13:38:27', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Use 24/7 heart rate to track resting heart rate &amp; better measure calorie burn</span></li>\r\n 	<li><span class=\"a-list-item\">Active Zone Minutes alert you when you\'re in your personalised Fat Burn, Cardio or Peak heart rate zones</span></li>\r\n 	<li><span class=\"a-list-item\">After outdoor workouts, see a workout intensity map in the app that shows your heart rate changes along your route</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS to see your pace and distance on screen during outdoor runs, cycles, hikes and more</span></li>\r\n 	<li><span class=\"a-list-item\">Track sleep stages &amp; review your in-app Sleep Score for an easy way to see how well you slept</span></li>\r\n 	<li><span class=\"a-list-item\">Get call, text and smartphone app notifications on your wrist. Plus, send quick replies to texts (Android only). Available when your phone is nearby</span></li>\r\n 	<li><span class=\"a-list-item\">Multi-day battery lasts up to 7 days and up to 5 hours when using built-in GPS. Varies with use &amp; other factors</span></li>\r\n</ul>', 'Fitbit Charge 4 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-charge-4-watch', '', '', '2020-11-02 13:38:31', '2020-11-02 13:38:31', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=66', 0, 'product', '', 0),
(67, 1, '2020-11-02 13:38:05', '2020-11-02 13:38:05', '', 'Fitbit Charge 4', '', 'inherit', 'open', 'closed', '', 'fitbit-charge-4', '', '', '2020-11-02 13:38:05', '2020-11-02 13:38:05', '', 66, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fitbit-Charge-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-11-02 13:39:59', '2020-11-02 13:39:59', '<table class=\"a-normal a-spacing-micro\" style=\"height: 199px;\" width=\"820\">\r\n<tbody>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Brand</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">Fitbit</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Material</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">Metal</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Dimensions LxWxH</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">21.8 x 2.3 x 1.3 Centimeters</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Weight</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">149 Grams</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Fitbit Charge 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-charge-2-watch', '', '', '2020-11-02 13:40:06', '2020-11-02 13:40:06', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2020-11-02 13:39:49', '2020-11-02 13:39:49', '', 'Fitbit Charge 2', '', 'inherit', 'open', 'closed', '', 'fitbit-charge-2', '', '', '2020-11-02 13:39:49', '2020-11-02 13:39:49', '', 68, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fitbit-Charge-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-11-02 13:41:45', '2020-11-02 13:41:45', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Grey, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Plastic</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 50 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 100 meters</span></li>\r\n</ul>', 'Fastrack Digital Watch', '', 'publish', 'open', 'closed', '', 'fastrack-digital-watch', '', '', '2020-11-02 13:41:51', '2020-11-02 13:41:51', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=70', 0, 'product', '', 0),
(71, 1, '2020-11-02 13:41:28', '2020-11-02 13:41:28', '', 'Fastrack-DIGITAL', '', 'inherit', 'open', 'closed', '', 'fastrack-digital', '', '', '2020-11-02 13:41:28', '2020-11-02 13:41:28', '', 70, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-DIGITAL.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-11-02 13:43:03', '2020-11-02 13:43:03', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47 x 40 millimeters. Case Thickness -13.00 mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Deployment Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">1 Year Manufacturing Warranty and 6 Months Battery Warranty</span></li>\r\n</ul>', 'Fastrack Black Magic Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-black-magic-analog-black-dial-watch', '', '', '2020-11-02 13:43:07', '2020-11-02 13:43:07', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2020-11-02 13:42:52', '2020-11-02 13:42:52', '', 'Fastrack-black-magic-analog-black-dial watch', '', 'inherit', 'open', 'closed', '', 'fastrack-black-magic-analog-black-dial-watch', '', '', '2020-11-02 13:42:52', '2020-11-02 13:42:52', '', 72, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-black-magic-analog-black-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-11-02 13:44:35', '2020-11-02 13:44:35', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Square, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Bluish Grey, Band Material: Leather</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 45 x 39.3 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">1 Year Manufacturing Warranty and 6 Months Battery Warranty</span></li>\r\n</ul>', 'Fastrack Analog White Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-analog-white-dial-watch', '', '', '2020-11-02 13:44:42', '2020-11-02 13:44:42', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2020-11-02 13:44:18', '2020-11-02 13:44:18', '', 'Fastrack watch', '', 'inherit', 'open', 'closed', '', 'fastrack-watch', '', '', '2020-11-02 13:44:18', '2020-11-02 13:44:18', '', 74, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-11-02 13:45:51', '2020-11-02 13:45:51', '&nbsp;\r\n<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 52mm x 45mm x 11.8mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">24 months manufacturer warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n 	<li><span class=\"a-list-item\">Recommended for customers looking for a large dial sized watches</span></li>\r\n</ul>', 'Fastrack Casual Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-black-dial-watch', '', '', '2020-11-02 13:45:56', '2020-11-02 13:45:56', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2020-11-02 13:45:43', '2020-11-02 13:45:43', '', 'Fastrack silver watch', '', 'inherit', 'open', 'closed', '', 'fastrack-silver-watch', '', '', '2020-11-02 13:45:43', '2020-11-02 13:45:43', '', 76, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-silver-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-11-02 13:47:58', '2020-11-02 13:47:58', '&nbsp;\r\n<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Navy Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 51mm x 49.5mm x 12.3mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">24 months manufacturer warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n</ul>', 'Fastrack Casual Analog Navy Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-navy-blue-dial-watch', '', '', '2020-11-02 13:48:02', '2020-11-02 13:48:02', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2020-11-02 13:47:47', '2020-11-02 13:47:47', '', 'Fastrack Navy Blue Casual watch', '', 'inherit', 'open', 'closed', '', 'fastrack-navy-blue-casual-watch', '', '', '2020-11-02 13:47:47', '2020-11-02 13:47:47', '', 78, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-Navy-Blue-Casual-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-11-02 13:49:44', '2020-11-02 13:49:44', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Silicone, GENDER: Guys, LOCK MECHANISM: Buckle</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 54.7mm x 46.2mm x 12.8mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n</ul>', 'Fastrack Casual Analog White Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-white-watch', '', '', '2020-11-02 13:49:49', '2020-11-02 13:49:49', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2020-11-02 13:49:32', '2020-11-02 13:49:32', '', 'Fastrack Casual Analog watch', '', 'inherit', 'open', 'closed', '', 'fastrack-casual-analog-watch', '', '', '2020-11-02 13:49:32', '2020-11-02 13:49:32', '', 80, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-Casual-Analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-11-02 13:51:41', '2020-11-02 13:51:41', '<ul>\r\n 	<li>Recommended for customers looking for a large dial size watches</li>\r\n</ul>', 'Fastrack Analog Black Watch', '', 'publish', 'open', 'closed', '', 'fastrack-analog-black-watch', '', '', '2020-11-02 13:51:47', '2020-11-02 13:51:47', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2020-11-02 13:51:21', '2020-11-02 13:51:21', '', 'Fastrack black watch', '', 'inherit', 'open', 'closed', '', 'fastrack-black-watch', '', '', '2020-11-02 13:51:21', '2020-11-02 13:51:21', '', 82, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-black-watch.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(84, 1, '2020-11-02 13:52:48', '2020-11-02 13:52:48', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Blue, Band Material: Fabric</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog-Digital</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47.3 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters</span></li>\r\n 	<li><span class=\"a-list-item\">24 Months Manufacturer Warranty on manufacturing defects</span></li>\r\n</ul>', 'Fastrack Denim Analog Watch', '', 'publish', 'open', 'closed', '', 'fastrack-denim-analog-watch', '', '', '2020-11-02 13:52:54', '2020-11-02 13:52:54', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2020-11-02 13:52:34', '2020-11-02 13:52:34', '', 'Fastrack Analog-digital-watch-', '', 'inherit', 'open', 'closed', '', 'fastrack-analog-digital-watch', '', '', '2020-11-02 13:52:34', '2020-11-02 13:52:34', '', 84, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Fastrack-Analog-digital-watch-.jpeg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-11-02 13:54:02', '2020-11-02 13:54:02', '<ul>\r\n 	<li>GPS</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Measure your Blood Oxygen Level</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Take an ECG Anytime, Anywhere</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">The New Sleep App</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">The Always-On Retina LTPO OLED Display</li>\r\n</ul>', 'Apple Watch Series 6', '', 'publish', 'open', 'closed', '', 'apple-watch-series-6', '', '', '2020-11-02 13:54:08', '2020-11-02 13:54:08', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2020-11-02 13:53:42', '2020-11-02 13:53:42', '', 'Apple-watch-series 6', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-6', '', '', '2020-11-02 13:53:42', '2020-11-02 13:53:42', '', 86, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Apple-watch-series-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2020-11-02 13:55:32', '2020-11-02 13:55:32', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">GPS + Cellular, Always-On Retina display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">30% larger screen, Swimproof, ECG app</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Electrical and optical heart sensors</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Store and stream music, podcasts, and audiobooks</li>\r\n</ul>', 'Apple Watch Series 5', '', 'publish', 'open', 'closed', '', 'apple-watch-series-5', '', '', '2020-11-02 13:55:38', '2020-11-02 13:55:38', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 1, '2020-11-02 13:55:15', '2020-11-02 13:55:15', '', 'Apple watch series 5', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-5', '', '', '2020-11-02 13:55:15', '2020-11-02 13:55:15', '', 89, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Apple-watch-series-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2020-11-02 13:56:38', '2020-11-02 13:56:38', '<ul>\r\n 	<li>GPS</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">64-bit Dual-core S4 Processor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Electrical Heart Sensor, Optical Heart Sensor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Fall Detection, Ambient Light Sensor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">LTPO OLED Retina display with Force Touch</li>\r\n</ul>', 'Apple Watch Series 4', '', 'publish', 'open', 'closed', '', 'apple-watch-series-4', '', '', '2020-11-02 13:56:43', '2020-11-02 13:56:43', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2020-11-02 13:56:31', '2020-11-02 13:56:31', '', 'Apple watch series 4', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-4', '', '', '2020-11-02 13:56:31', '2020-11-02 13:56:31', '', 91, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Apple-watch-series-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2020-11-02 13:57:50', '2020-11-02 13:57:50', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">GPS</span></li>\r\n 	<li><span class=\"a-list-item\">Retina display</span></li>\r\n 	<li><span class=\"a-list-item\">Swimproof</span></li>\r\n 	<li><span class=\"a-list-item\">Optical heart sensor</span></li>\r\n 	<li><span class=\"a-list-item\">Store and stream music, podcasts and audiobooks</span></li>\r\n 	<li><span class=\"a-list-item\">Elevation</span></li>\r\n 	<li><span class=\"a-list-item\">Emergency SOS</span></li>\r\n</ul>\r\n<div class=\"a-row a-expander-container a-expander-inline-container\" aria-live=\"polite\">\r\n<div class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" aria-expanded=\"true\">\r\n<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">S3 chip with dual-core processor</span></li>\r\n 	<li><span class=\"a-list-item\">watchOS 6 with Activity trends, cycle tracking, loud noise notifications and the App Store on your wrist</span></li>\r\n 	<li><span class=\"a-list-item\">Aluminium case</span></li>\r\n</ul>\r\n</div>\r\n</div>', 'Apple Watch Series 3', '', 'publish', 'open', 'closed', '', 'apple-watch-series-3', '', '', '2020-11-02 13:57:56', '2020-11-02 13:57:56', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 1, '2020-11-02 13:57:41', '2020-11-02 13:57:41', '', 'Apple watch series 3', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-3', '', '', '2020-11-02 13:57:41', '2020-11-02 13:57:41', '', 93, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Apple-watch-series-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2020-11-02 13:59:30', '2020-11-02 13:59:30', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Ip68 Water And Dust Resistance</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Bixby Your Personal Voice Assistant</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Bixby Vision Next-Gen Camera Intelligence</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Biometric Authentication</li>\r\n</ul>', 'Samsung Galaxy Note 20', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-20', '', '', '2020-11-02 13:59:35', '2020-11-02 13:59:35', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2020-11-02 13:59:21', '2020-11-02 13:59:21', '', 'Samsung Galaxy Note 20', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-note-20', '', '', '2020-11-02 13:59:21', '2020-11-02 13:59:21', '', 95, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-Note-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-11-02 14:01:28', '2020-11-02 14:01:28', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Triple rear camera setup: 16MP with f2.2 aperture ultra wide + 12MP with f1.5 and f2.4 aperture wide + 12MP f2.4 tele| 10MP f1.9 front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.51 centimeters (6.1-inch) Dynamic AMOLED multi-touch capacitive touchscreen with 3040 x 1440 pixels resolution, 550 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage and SIM: 8GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual stand by (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.7GHz + 2.3GHz + 1.9GHz Exynos 9820 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">3400mAH lithium-ion battery, The large, notch-free display is a visual treat on the eyes</span></li>\r\n</ul>', 'Samsung Galaxy S10', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-s10', '', '', '2020-11-02 14:01:35', '2020-11-02 14:01:35', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2020-11-02 14:00:25', '2020-11-02 14:00:25', '', 'Samsung Galaxy S10', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-s10', '', '', '2020-11-02 14:00:25', '2020-11-02 14:00:25', '', 97, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-S10.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2020-11-02 14:03:33', '2020-11-02 14:03:33', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Quad Rear Camera - 16MP (Ultra wide) + 12MP (Dual Aperture - F 1.5/2.4)+ 12MP (Telephoto) + ToF (DepthVision Camera) with Flash | 10MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.16 centimeters (6.8-inch) Dynamic AMOLED Infinity O Display  with QHD+ resolution 3040 X 1440 (498 ppi), HDR10+ Certified</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory expandable up to 1TB | Dual SIM dual-standby (4G+4G) - Hybrid Sim slot</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.7GHz Exynos 9825 octa core processor, S Pen Support: Yes (Gesture/Remote Control)</span></li>\r\n 	<li><span class=\"a-list-item\">4300mAH lithium-ion battery | Fast charging with 25W charger (included in the box)</span></li>\r\n 	<li><span class=\"a-list-item\">Other Features :- Ultrasonic in-display fingerprint sensor, Bluetooth enabled Air Actions for S Pen, Dex mode with Usb cable</span></li>\r\n</ul>', 'Samsung Galaxy Note 10 Plus', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-10-plus', '', '', '2020-11-02 14:03:39', '2020-11-02 14:03:39', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2020-11-02 14:02:28', '2020-11-02 14:02:28', '', 'Samsung Galaxy Note 10+', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-note-10', '', '', '2020-11-02 14:02:28', '2020-11-02 14:02:28', '', 99, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-Note-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-11-02 14:05:13', '2020-11-02 14:05:13', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Quad Camera Setup - 64MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera +5MP(F2.4) Macro Camera and 32MP (F2.0) front facing Camera</span></li>\r\n 	<li><span class=\"a-list-item\">6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor , 6GB RAM, 64GB internal memory expandable up to 512GB and dual SIM</span></li>\r\n 	<li><span class=\"a-list-item\">6000 mAh Battery</span></li>\r\n</ul>', 'Samsung Galaxy M31', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-m31', '', '', '2020-11-02 14:05:18', '2020-11-02 14:05:18', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2020-11-02 14:04:57', '2020-11-02 14:04:57', '', 'Samsung Galaxy M31', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-m31', '', '', '2020-11-02 14:04:57', '2020-11-02 14:04:57', '', 101, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-M31.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2020-11-02 14:07:04', '2020-11-02 14:07:04', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">64MP (F1.8)+12MP (F2.2)+5MP (F2.2)+5MP (F2.4) camera | 32 front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.04 centimeters (6.7-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android 10 operating system with 2.3GHz+1.7GHz Qualcomm | SM7150 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4500mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A71', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a71', '', '', '2020-11-02 14:07:10', '2020-11-02 14:07:10', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 1, '2020-11-02 14:06:46', '2020-11-02 14:06:46', '', 'Samsung Galaxy A71', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a71', '', '', '2020-11-02 14:06:46', '2020-11-02 14:06:46', '', 103, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-A71.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-11-02 15:13:29', '2020-11-02 15:13:29', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP (F1.8)+12MP (F2.2)+5MP(F2.2)+5MP(F2.4) rear camera | 32MP front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.40 centimeters (6.5-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10.0 operating system with 2.3GHz+1.7GHz Exynos 9611 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A51', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a51', '', '', '2020-11-02 15:13:34', '2020-11-02 15:13:34', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=105', 0, 'product', '', 0),
(106, 1, '2020-11-02 15:13:02', '2020-11-02 15:13:02', '', 'Samsung Galaxy A51', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a51', '', '', '2020-11-02 15:13:02', '2020-11-02 15:13:02', '', 105, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-A51.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-11-02 15:15:19', '2020-11-02 15:15:19', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP+2MP dual rear camera setup-13MP (F1.8) main camera + 2MP (F2.4) depth camera| 8MP (F2.0) front camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) PLS TFT LCD - infinity v-cut display, HD+ resolution with 720 x 1520 pixels resolution, 270 PPI with 16M colours</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 32GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2GHz MediaTek | MT6762 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy M01s', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-m01s', '', '', '2020-11-02 15:15:28', '2020-11-02 15:15:28', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=107', 0, 'product', '', 0),
(108, 1, '2020-11-02 15:14:38', '2020-11-02 15:14:38', '', 'Samsung Galaxy M01s', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-m01s', '', '', '2020-11-02 15:14:38', '2020-11-02 15:14:38', '', 107, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-M01s.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2020-11-02 15:16:38', '2020-11-02 15:16:38', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP + 2MP rear camera | 8MP front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) HD+ capacitive touchscreen with 720 x 1560 pixels resolution 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 32GB storage expandable up to 512GB | Dual nano SIM with dual standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v9 Pie operating system with 2GHz + 1.5GHz MediaTek MT6762 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A10s', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a10s', '', '', '2020-11-02 15:16:44', '2020-11-02 15:16:44', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=109', 0, 'product', '', 0),
(110, 1, '2020-11-02 15:16:05', '2020-11-02 15:16:05', '', 'Samsung Galaxy A10s', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a10s', '', '', '2020-11-02 15:16:05', '2020-11-02 15:16:05', '', 109, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Samsung-Galaxy-A10s.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2020-11-02 15:18:14', '2020-11-02 15:18:14', '<ul>\r\n 	<li class=\"_2-riNZ\">6 GB RAM | 64 GB ROM</li>\r\n 	<li class=\"_2-riNZ\">16.21 cm (6.38 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP | 32MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4500 mAh Li-ion Battery</li>\r\n 	<li class=\"_2-riNZ\">Qualcomm Snapdragon 712 AIE Processor</li>\r\n 	<li class=\"_2-riNZ\">22.5 W Vivo Flash Charge</li>\r\n</ul>', 'Vivo Z1x', '', 'publish', 'open', 'closed', '', 'vivo-z1x', '', '', '2020-11-02 15:18:17', '2020-11-02 15:18:17', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=111', 0, 'product', '', 0),
(112, 1, '2020-11-02 15:17:51', '2020-11-02 15:17:51', '', 'Vivo-Z1x', '', 'inherit', 'open', 'closed', '', 'vivo-z1x', '', '', '2020-11-02 15:17:51', '2020-11-02 15:17:51', '', 111, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Vivo-Z1x.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2020-11-02 15:19:32', '2020-11-02 15:19:32', 'Vivo Z5i  is powered by the Qualcomm SDM675 Snapdragon 675 Octa-core (2×2.0 GHz Kryo 460 Gold + 6×1.7 GHz Kryo 460 Silver) processor. The smartphone comes with a 6.53 inches IPS LCD capacitive touchscreen and 1080 x 2340 pixels resolution.\r\n\r\nThe rear camera consists of a 16 MP (wide) + 8 MP (ultrawide) + 2 MP macro camera lenses.\r\n\r\nThe front camera has a 16 MP sensor. The phone’s sensors include Fingerprint (rear-mounted), accelerometer, proximity, and compass\r\n\r\nThe smartphone is fueled by a Non-removable Li-Po 5000 mAh battery + Fast battery charging 18W.\r\n\r\nThe phone runs on Android 9.0 (Pie) + Funtouch 9.2.', 'Vivo Z5i', '', 'publish', 'open', 'closed', '', 'vivo-z5i', '', '', '2020-11-02 15:19:39', '2020-11-02 15:19:39', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=113', 0, 'product', '', 0),
(114, 1, '2020-11-02 15:19:11', '2020-11-02 15:19:11', '', 'Vivo Z5i', '', 'inherit', 'open', 'closed', '', 'vivo-z5i', '', '', '2020-11-02 15:19:11', '2020-11-02 15:19:11', '', 113, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Vivo-Z5i.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2020-11-02 15:21:01', '2020-11-02 15:21:01', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13+2+2MP rear camera | 8MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.55 centimeters (6.51 inch) HD+ display with 720 x 1600 pixels resolution</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Funtouch OS 10.5 based on Android v10 operating system with Qualcomm Snapdragon 460 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-ion battery</span></li>\r\n</ul>', 'Vivo Y20', '', 'publish', 'open', 'closed', '', 'vivo-y20', '', '', '2020-11-02 15:21:07', '2020-11-02 15:21:07', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=115', 0, 'product', '', 0),
(116, 1, '2020-11-02 15:20:20', '2020-11-02 15:20:20', '', 'Vivo-Y20', '', 'inherit', 'open', 'closed', '', 'vivo-y20', '', '', '2020-11-02 15:20:20', '2020-11-02 15:20:20', '', 115, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Vivo-Y20.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2020-11-02 15:22:25', '2020-11-02 15:22:25', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13+8+2MP AI triple rear camera with HDR mode and portrait mode | 8MP front camera with face beauty, portrait bokeh</span></li>\r\n 	<li><span class=\"a-list-item\">16.15 centimeters (6.35-inch) halo fullview display with 720 x 1544 pixels resolution</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with MediaTek Helio P22 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-ion massive battery</span></li>\r\n</ul>', 'Vivo Y12', '', 'publish', 'open', 'closed', '', 'vivo-y12', '', '', '2020-11-02 15:22:31', '2020-11-02 15:22:31', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2020-11-02 15:21:58', '2020-11-02 15:21:58', '', 'Vivo Y12', '', 'inherit', 'open', 'closed', '', 'vivo-y12', '', '', '2020-11-02 15:21:58', '2020-11-02 15:21:58', '', 118, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Vivo-Y12.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2020-11-02 15:24:07', '2020-11-02 15:24:07', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48+8+2MP AI triple rear camera with portrait mode, HDR, PDAF supported | 32MP front camera with f2.0, 1/2.8 inch pixel size, portrait mode, HDR supported</span></li>\r\n 	<li><span class=\"a-list-item\">15.46 centimeters (6.088-inch) AMOLED multi-touch capacitive touchscreen with 1520 x 720 pixels resolution, 282 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4030mAH lithium-ion battery, AI scene detection: Detects up to 27 different scenes</span></li>\r\n</ul>', 'Xiaomi Mi A3', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-a3', '', '', '2020-11-02 15:24:12', '2020-11-02 15:24:12', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2020-11-02 15:23:33', '2020-11-02 15:23:33', '', 'Xiaomi-Mi A3', '', 'inherit', 'open', 'closed', '', 'xiaomi-mi-a3', '', '', '2020-11-02 15:23:33', '2020-11-02 15:23:33', '', 120, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Xiaomi-Mi-A3.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2020-11-02 15:26:10', '2020-11-02 15:26:10', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6.47\"3D curved AMOLED display Corning Gorilla glass front and back, 1080x2340 pixels 398 PPI - HDR 10 - Responsive in-screen fingerprint sensor - TÜV Rheinland low blue light mode</span></li>\r\n 	<li><span class=\"a-list-item\">Flash storage: 128 GB phone storage + 6GB RAM - Qualcomm Snapdragon 730G - 5260mAh (typ) high-capacity battery - Multifunctional NFC</span></li>\r\n 	<li><span class=\"a-list-item\">Main camera: 108MP ultra high-resolution camera + 12MP portrait camera + 5MP telephoto camera + 20MP ultra wide-angle camera + 2MP macro camera - Front Camera: 32MP selfie camera - 4K recording - 1080P slow motion recording - Vlog mode &amp; Night mode 2.0</span></li>\r\n</ul>', 'Xiaomi Mi Note 10', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-note-10', '', '', '2020-11-02 15:26:14', '2020-11-02 15:26:14', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2020-11-02 15:25:29', '2020-11-02 15:25:29', '', 'Xiaomi Mi Note 10', '', 'inherit', 'open', 'closed', '', 'xiaomi-mi-note-10', '', '', '2020-11-02 15:25:29', '2020-11-02 15:25:29', '', 122, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Xiaomi-Mi-Note-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2020-11-02 15:27:52', '2020-11-02 15:27:52', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6 GB RAM | 64 GB ROM | Expandable Upto 256 GB</span></li>\r\n 	<li><span class=\"a-list-item\">16.0 cm (6.3 inch) FHD+ Display</span></li>\r\n 	<li><span class=\"a-list-item\">48MP + 5MP | 13MP Front Camera</span></li>\r\n 	<li><span class=\"a-list-item\">Qualcomm Snapdragon 675 Processor</span></li>\r\n 	<li><span class=\"a-list-item\">Quick Charge 4.0 Support</span></li>\r\n</ul>', 'Redmi Note 7 Pro', '', 'publish', 'open', 'closed', '', 'redmi-note-7-pro', '', '', '2020-11-02 15:27:57', '2020-11-02 15:27:57', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=124', 0, 'product', '', 0),
(125, 1, '2020-11-02 15:27:11', '2020-11-02 15:27:11', '', 'Redmi Note 7 pro', '', 'inherit', 'open', 'closed', '', 'redmi-note-7-pro', '', '', '2020-11-02 15:27:11', '2020-11-02 15:27:11', '', 124, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Redmi-Note-7-pro.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2020-11-02 15:29:28', '2020-11-02 15:29:28', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">108MP quad rear camera with OIS, ultra-wide, macro, portrait, night mode, AI scene recognition, HDR, pro mode | 20MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.94 centimeters (6.67-inch) FHD+ AMOLED capacitive multi-touch touchscreen with 2340 x 1080 pixels resolution, 386 ppi pixel density and 19.5:9 aspect ratio | 3D Curved glass</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) with support for 5G</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10 operating system with 2.84GHz Qualcomm Snapdragon 865 with 7nm octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4780mAH lithium-polymer battery with 30W wired fast charger in-box &amp; support for up to 30W wireless charging</span></li>\r\n</ul>', 'Mi 10', '', 'publish', 'open', 'closed', '', 'mi-10', '', '', '2020-11-02 15:29:33', '2020-11-02 15:29:33', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=126', 0, 'product', '', 0),
(127, 1, '2020-11-02 15:28:51', '2020-11-02 15:28:51', '', 'Mi 10', '', 'inherit', 'open', 'closed', '', 'mi-10', '', '', '2020-11-02 15:28:51', '2020-11-02 15:28:51', '', 126, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Mi-10.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2020-11-02 15:31:19', '2020-11-02 15:31:19', '<ul>\r\n 	<li class=\"_2-riNZ\">6 GB RAM | 256 GB ROM</li>\r\n 	<li class=\"_2-riNZ\">16.51 cm (6.5 inch) Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">Ultra Night Mode 2.0</li>\r\n</ul>', 'Oppo Reno 2F', '', 'publish', 'open', 'closed', '', 'oppo-reno-2f', '', '', '2020-11-02 15:31:24', '2020-11-02 15:31:24', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2020-11-02 15:30:39', '2020-11-02 15:30:39', '', 'Oppo Reno 2F', '', 'inherit', 'open', 'closed', '', 'oppo-reno-2f', '', '', '2020-11-02 15:30:39', '2020-11-02 15:30:39', '', 128, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oppo-Reno-2F.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2020-11-02 15:32:38', '2020-11-02 15:32:38', '<ul>\r\n 	<li class=\"_2-riNZ\">4 GB RAM | 128 GB ROM | Expandable Upto 256 GB</li>\r\n 	<li class=\"_2-riNZ\">16.26 cm (6.4 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">VOOC Flash Charge 3.0 with 20W Fast Charging</li>\r\n 	<li class=\"_2-riNZ\">In-display Fingerprint 3.0 with 0.32 Second Unlock</li>\r\n</ul>', 'Oppo Reno 2', '', 'publish', 'open', 'closed', '', 'oppo-reno-2', '', '', '2020-11-02 15:32:45', '2020-11-02 15:32:45', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=131', 0, 'product', '', 0),
(132, 1, '2020-11-02 15:32:11', '2020-11-02 15:32:11', '', 'Oppo Reno 2', '', 'inherit', 'open', 'closed', '', 'oppo-reno-2', '', '', '2020-11-02 15:32:11', '2020-11-02 15:32:11', '', 131, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oppo-Reno-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2020-11-02 15:34:11', '2020-11-02 15:34:11', '<ul>\r\n 	<li class=\"_2-riNZ\">4 GB RAM | 128 GB ROM | Expandable Upto 256 GB</li>\r\n 	<li class=\"_2-riNZ\">16.26 cm (6.4 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">VOOC Flash Charge 3.0 with 20W Fast Charging</li>\r\n 	<li class=\"_2-riNZ\">In-display Fingerprint 3.0 with 0.32 Second Unlock</li>\r\n</ul>', 'Oppo F15', '', 'publish', 'open', 'closed', '', 'oppo-f15', '', '', '2020-11-02 15:34:16', '2020-11-02 15:34:16', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 1, '2020-11-02 15:33:33', '2020-11-02 15:33:33', '', 'Oppo F15', '', 'inherit', 'open', 'closed', '', 'oppo-f15', '', '', '2020-11-02 15:33:33', '2020-11-02 15:33:33', '', 133, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oppo-F15.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-11-02 15:35:35', '2020-11-02 15:35:35', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12MP+8MP+2MP+2MP AI quad rear camera, 4K video, AI beautification | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.51 centimeters (6.5-inch) FHD+ punch-hole display with 2400 x 1080 pixels resolution, 405 ppi pixel density | 90.5% screen to body ratio| Eye care</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Color OS 7.1 based on Android v10.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-polymer battery providing talk-time of 34 hours and standby time of 500 hours with 18W fast charge</span></li>\r\n</ul>', 'Oppo A52', '', 'publish', 'open', 'closed', '', 'oppo-a52', '', '', '2020-11-02 15:35:40', '2020-11-02 15:35:40', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=135', 0, 'product', '', 0),
(136, 1, '2020-11-02 15:35:12', '2020-11-02 15:35:12', '', 'Oppo A52', '', 'inherit', 'open', 'closed', '', 'oppo-a52', '', '', '2020-11-02 15:35:12', '2020-11-02 15:35:12', '', 135, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oppo-A52.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2020-11-02 15:37:03', '2020-11-02 15:37:03', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12+2+2MP triple rear camera (12MP main camera+2MP macro lens+2MP depth camera) with Portrait bokeh, macro lens and dazzle color mode. 8MP front camera with AI beautification</span></li>\r\n 	<li><span class=\"a-list-item\">16.5 centimeters (6.5-inch) waterdrop multi touch screen with an 89% screen to body ratio , 1600 x 720 pixels resolution, 269 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM , 64GB internal memory expandable up to 256GB , Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">ColorOS 6.1 operating system based on Android Pie v9.0 with 2.3GHz Mediatek P35 Octa-core processor, IMG GE8320 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4230 mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours</span></li>\r\n</ul>', 'Oppo A31', '', 'publish', 'open', 'closed', '', 'oppo-a31', '', '', '2020-11-02 15:37:09', '2020-11-02 15:37:09', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=137', 0, 'product', '', 0),
(138, 1, '2020-11-02 15:36:38', '2020-11-02 15:36:38', '', 'Oppo A31', '', 'inherit', 'open', 'closed', '', 'oppo-a31', '', '', '2020-11-02 15:36:38', '2020-11-02 15:36:38', '', 137, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oppo-A31.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2020-11-02 15:39:08', '2020-11-02 15:39:08', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP+2MP AI rear dual camera with filters, AI beautification, bokeh, HDR, dazzle color mode | 5MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) HD+ waterdrop screen display with 1520 x 720 pixels resolution, 270 ppi pixel density and 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Color OS 6.1 based on Android Pie v9.0 operating system with 2.3GHz MediaTek Helio P35 octa core processor, GPU IMG GE8320</span></li>\r\n 	<li><span class=\"a-list-item\">4230mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours.</span></li>\r\n</ul>', 'Oppo A12', '', 'publish', 'open', 'closed', '', 'oppo-a12', '', '', '2020-11-02 15:39:12', '2020-11-02 15:39:12', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=139', 0, 'product', '', 0),
(140, 1, '2020-11-02 15:38:15', '2020-11-02 15:38:15', '', 'Oppo A12', '', 'inherit', 'open', 'closed', '', 'oppo-a12', '', '', '2020-11-02 15:38:15', '2020-11-02 15:38:15', '', 139, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oppo-A12.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2020-11-02 15:40:57', '2020-11-02 15:40:57', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12+8+2+2MP rear camera with 119 degree ultra wide, ultra night mode, video EIS anti-shake, portrait | 8MP AI front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.5 centimeters (6.5-inch) with 1600 x 720 pixels resolution and waterdrop screen | Corning Gorilla 3+ screen, sunlight screen, night shield with blue light filter</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v9.0 based on Color OS 6.1 operating system with 2.0GHz SM6125 Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-polymer battery | reverse charging supported</span></li>\r\n</ul>', 'Oppo A5', '', 'publish', 'open', 'closed', '', 'oppo-a5', '', '', '2020-11-02 15:41:01', '2020-11-02 15:41:01', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=141', 0, 'product', '', 0),
(142, 1, '2020-11-02 15:40:32', '2020-11-02 15:40:32', '', 'Oppo A5', '', 'inherit', 'open', 'closed', '', 'oppo-a5', '', '', '2020-11-02 15:40:32', '2020-11-02 15:40:32', '', 141, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oppo-A5.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2020-11-02 15:42:51', '2020-11-02 15:42:51', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</span></li>\r\n 	<li><span class=\"a-list-item\">6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date</span></li>\r\n 	<li><span class=\"a-list-item\">OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4115mAH lithium-ion battery | In-Display fingerprint sensor</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n 	<li><span class=\"a-list-item\">Corning Gorilla Glass 5 | 12GB GB LPDDR4X, 256GB UFS 2.1</span></li>\r\n</ul>', 'OnePlus Nord 5G (Gray)', '', 'publish', 'open', 'closed', '', 'oneplus-nord-5g-gray', '', '', '2020-11-02 15:42:57', '2020-11-02 15:42:57', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=143', 0, 'product', '', 0),
(144, 1, '2020-11-02 15:42:16', '2020-11-02 15:42:16', '', 'OnePlus Nord', '', 'inherit', 'open', 'closed', '', 'oneplus-nord', '', '', '2020-11-02 15:42:16', '2020-11-02 15:42:16', '', 143, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/OnePlus-Nord.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2020-11-02 15:44:26', '2020-11-02 15:44:26', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</span></li>\r\n 	<li><span class=\"a-list-item\">6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date.</span></li>\r\n 	<li><span class=\"a-list-item\">OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4115mAH lithium-ion battery | In-Display fingerprint sensor</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device </span></li>\r\n</ul>', 'OnePlus Nord 5G (Blue)', '', 'publish', 'open', 'closed', '', 'oneplus-nord-5g-blue', '', '', '2020-11-02 15:44:31', '2020-11-02 15:44:31', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, '2020-11-02 15:44:00', '2020-11-02 15:44:00', '', 'OnePlus Nord Blue', '', 'inherit', 'open', 'closed', '', 'oneplus-nord-blue', '', '', '2020-11-02 15:44:00', '2020-11-02 15:44:00', '', 145, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/OnePlus-Nord-Blue.jpeg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2020-11-02 15:46:04', '2020-11-02 15:46:04', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP rear camera with 4k video at 30/60 fps, 1080p video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080p 30fps, 4k 30fps, cine aspect ratio video recording, video hdr, cat&amp;dog face detect &amp; focus, ultrashot hdr, nightscape, super micro, portrait, pro mode, panorama, ai scene detection, raw image, audio zoom, audio 3d, infrared photography camera | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.22 centimeters (6.78-inch) 120Hz fluid display with 3168 x 1440 pixels resolution, 513 ppi pixel density and vibrant color effect color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865, powered by Kryo 585 CPU octa core processor, Adreno 650</span></li>\r\n 	<li><span class=\"a-list-item\">4510mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 8 Pro', '', 'publish', 'open', 'closed', '', 'oneplus-8-pro', '', '', '2020-11-02 15:46:10', '2020-11-02 15:46:10', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2020-11-02 15:45:36', '2020-11-02 15:45:36', '', 'Oneplus 8 Pro', '', 'inherit', 'open', 'closed', '', 'oneplus-8-pro', '', '', '2020-11-02 15:45:36', '2020-11-02 15:45:36', '', 147, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Oneplus-8-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2020-11-02 15:47:21', '2020-11-02 15:47:21', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP rear camera with 4K video at 30/60 fps, 1080P video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080P 30fps, 4k 30fps, CINE aspect ratio video recording, ultrashot HDR, nightscape, micro, portrait, pro mode, panorama, cat&amp;dog face detection&amp;focus, AI scene detection, RAW image | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.637 centimeters (6.55-inch) 90Hz fluid display with 2400 x 1080 pixels resolution, 402 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865 powered by Kryo 585 CPU octa core processor, Adreno 650</span></li>\r\n 	<li><span class=\"a-list-item\">4300mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 8', '', 'publish', 'open', 'closed', '', 'oneplus-8', '', '', '2020-11-02 15:47:26', '2020-11-02 15:47:26', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=149', 0, 'product', '', 0),
(150, 1, '2020-11-02 15:46:56', '2020-11-02 15:46:56', '', 'OnePlus 8', '', 'inherit', 'open', 'closed', '', 'oneplus-8', '', '', '2020-11-02 15:46:56', '2020-11-02 15:46:56', '', 149, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/OnePlus-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2020-11-02 16:20:02', '2020-11-02 16:20:02', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Rear Quad Camera with 48 MP Sony IMX586 Sensor, 16 MP Ultra Wide Angle, 5 MP macro lens and 2 MP monochrome lens | Front Camera with 16 MP Sony IMX471 Sensor</span></li>\r\n 	<li><span class=\"a-list-item\">6.55 inch ( 16.63 centimeters) 120 Hz Fluid AMOLED Display with 2400 X 1080 Pixels resolution, 402 PPI density</span></li>\r\n 	<li><span class=\"a-list-item\">2.86 GHz Qualcomm Snapdragon 865 Octa-core Processor + Adreno 650 GPU ,Oxygen OS based on Android 11 Operating system</span></li>\r\n 	<li><span class=\"a-list-item\">12 GB RAM | 256 GB ROM</span></li>\r\n 	<li><span class=\"a-list-item\">4500 mAH Lithium-ion battery with 65 W “Warp charge”</span></li>\r\n 	<li><span class=\"a-list-item\">1 year Manufacturer warranty for Device</span></li>\r\n</ul>', 'OnePlus 8T', '', 'publish', 'open', 'closed', '', 'oneplus-8t', '', '', '2020-11-02 16:20:06', '2020-11-02 16:20:06', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 1, '2020-11-02 16:19:33', '2020-11-02 16:19:33', '', 'OnePlus 8T', '', 'inherit', 'open', 'closed', '', 'oneplus-8t', '', '', '2020-11-02 16:19:33', '2020-11-02 16:19:33', '', 151, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/OnePlus-8T.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2020-11-02 16:21:27', '2020-11-02 16:21:27', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image</span></li>\r\n 	<li><span class=\"a-list-item\">16.63 centimeters (6.55 inch) 90Hz fluid AMOLED with 2400 x 1080 pixels resolution and 402 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.96GHz Qualcomm Snapdragon 855 Plus AI Engine octa-core, 7nm processor, Adreno 640</span></li>\r\n 	<li><span class=\"a-list-item\">3800mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 7T', '', 'publish', 'open', 'closed', '', 'oneplus-7t', '', '', '2020-11-02 16:21:32', '2020-11-02 16:21:32', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=153', 0, 'product', '', 0),
(154, 1, '2020-11-02 16:20:56', '2020-11-02 16:20:56', '', 'OnePlus 7T', '', 'inherit', 'open', 'closed', '', 'oneplus-7t', '', '', '2020-11-02 16:20:56', '2020-11-02 16:20:56', '', 153, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/OnePlus-7T.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2020-11-02 16:23:11', '2020-11-02 16:23:11', '8 GB RAM and 256 GB ROM\r\n\r\n6.67 inch (16.94 cm) Fluid AMOLED Display\r\n\r\n16 MP Front Camera and 48 MP + 16 MP + 8 MP Primary Camera\r\n\r\n4000 mAh', 'OnePlus 7 Pro', '', 'publish', 'open', 'closed', '', 'oneplus-7-pro', '', '', '2020-11-02 16:23:17', '2020-11-02 16:23:17', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 1, '2020-11-02 16:22:49', '2020-11-02 16:22:49', '', 'OnePlus 7 Pro', '', 'inherit', 'open', 'closed', '', 'oneplus-7-pro', '', '', '2020-11-02 16:22:49', '2020-11-02 16:22:49', '', 155, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/OnePlus-7-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2020-11-02 16:24:36', '2020-11-02 16:24:36', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Camera: 16+20 MP Dual rear camera with Optical Image Stabilization, Super slow motion, Nightscape and Studio Lighting | 16 MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">Display: 6.41-inch(16.2 cms) Full HD+ Optic AMOLED display with 2340 x 1080 pixels resolution and an 86% screen-to-body ratio</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB storage | Dual nano SIM with dual standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Screen Unlock: In-screen fingerprint sensor. The OnePlus 6T unlocks in 0.34s for a seamless and intuitive unlock experience</span></li>\r\n 	<li><span class=\"a-list-item\">Operating System and Processor: OxygenOS based on Android 9.0 Pie with 2.8GHz Qualcomm Snapdragon 845 octa-core processor</span></li>\r\n 	<li><span class=\"a-list-item\">Battery : 3700 mAh lithium-polymer battery with Fast Charge technology</span></li>\r\n</ul>', 'OnePlus 6T', '', 'publish', 'open', 'closed', '', 'oneplus-6t', '', '', '2020-11-02 16:24:44', '2020-11-02 16:24:44', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=157', 0, 'product', '', 0),
(158, 1, '2020-11-02 16:24:06', '2020-11-02 16:24:06', '', 'OnePlus 6T', '', 'inherit', 'open', 'closed', '', 'oneplus-6t', '', '', '2020-11-02 16:24:06', '2020-11-02 16:24:06', '', 157, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/OnePlus-6T.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2020-11-02 16:27:14', '2020-11-02 16:27:14', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Super Retina XDR Display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">5G Enabled Phone</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">All‑screen OLED Display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Fingerprint-resistant Oleophobic Coating Screen</li>\r\n</ul>', 'Apple iPhone 12 Pro', '', 'publish', 'open', 'closed', '', 'apple-iphone-12-pro', '', '', '2020-11-02 16:27:21', '2020-11-02 16:27:21', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=159', 0, 'product', '', 0),
(160, 1, '2020-11-02 16:25:49', '2020-11-02 16:25:49', '', 'iphone 12 Pro Max', '', 'inherit', 'open', 'closed', '', 'iphone-12-pro-max', '', '', '2020-11-02 16:25:49', '2020-11-02 16:25:49', '', 159, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/iphone-12-Pro-Max.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(161, 1, '2020-11-02 16:28:56', '2020-11-02 16:28:56', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">4.7-inch Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (1 meter for up to 30 minutes, IP67)</span></li>\r\n 	<li><span class=\"a-list-item\">Single 12MP Wide camera with Auto HDR and 4K video up to 60fps</span></li>\r\n 	<li><span class=\"a-list-item\">7MP FaceTime HD camera with 1080p video recording</span></li>\r\n 	<li><span class=\"a-list-item\">Touch ID for secure authentication and Apple Pay</span></li>\r\n 	<li><span class=\"a-list-item\">A11 Bionic with Neural Engine</span></li>\r\n 	<li><span class=\"a-list-item\">Fast-charge capable</span></li>\r\n 	<li><span class=\"a-list-item\">Wireless charging</span></li>\r\n</ul>', 'Apple iPhone 8', '', 'publish', 'open', 'closed', '', 'apple-iphone-8', '', '', '2020-11-02 16:29:01', '2020-11-02 16:29:01', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=161', 0, 'product', '', 0),
(162, 1, '2020-11-02 16:28:19', '2020-11-02 16:28:19', '', 'Iphone 8', '', 'inherit', 'open', 'closed', '', 'iphone-8', '', '', '2020-11-02 16:28:19', '2020-11-02 16:28:19', '', 161, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Iphone-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2020-11-02 16:30:09', '2020-11-02 16:30:09', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6.1-inch (15.5 cm) Liquid Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (2 meters for up to 30 minutes, IP68)</span></li>\r\n 	<li><span class=\"a-list-item\">Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps</span></li>\r\n 	<li><span class=\"a-list-item\">12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo</span></li>\r\n 	<li><span class=\"a-list-item\">Face ID for secure authentication</span></li>\r\n 	<li><span class=\"a-list-item\">A13 Bionic chip with third-generation Neural Engine</span></li>\r\n 	<li><span class=\"a-list-item\">Fast-charge capable</span></li>\r\n</ul>', 'Apple iPhone 11', '', 'publish', 'open', 'closed', '', 'apple-iphone-11', '', '', '2020-11-02 16:30:13', '2020-11-02 16:30:13', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=163', 0, 'product', '', 0),
(164, 1, '2020-11-02 16:29:40', '2020-11-02 16:29:40', '', 'iPhone_11', '', 'inherit', 'open', 'closed', '', 'iphone_11', '', '', '2020-11-02 16:29:40', '2020-11-02 16:29:40', '', 163, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/iPhone_11.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2020-11-02 16:31:51', '2020-11-02 16:31:51', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">14.73 cm (5.8 inch) Super Retina XDR 2436 x 1125 display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">12 MP + 12 MP + 12 MP triple primary camera</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">12 MP selfie camera, iOS 13 operating system</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">A13 Bionic chip, splash, water &amp; dust resistant</li>\r\n</ul>', 'Apple iPhone 11 Pro', '', 'publish', 'open', 'closed', '', 'apple-iphone-11-pro', '', '', '2020-11-02 16:31:56', '2020-11-02 16:31:56', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=165', 0, 'product', '', 0),
(166, 1, '2020-11-02 16:31:02', '2020-11-02 16:31:02', '', 'Iphone 11 Pro', '', 'inherit', 'open', 'closed', '', 'iphone-11-pro', '', '', '2020-11-02 16:31:02', '2020-11-02 16:31:02', '', 165, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Iphone-11-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2020-11-02 16:33:54', '2020-11-02 16:33:54', '<ul>\r\n 	<li class=\"col_6\">iOS v12.0 Operating System</li>\r\n 	<li class=\"col_6\">Hexa Core Processor</li>\r\n 	<li class=\"col_6\">6.1 (15.49 cm) Display Size</li>\r\n 	<li class=\"col_6\">64 GB Internal Memory</li>\r\n 	<li class=\"col_6\">12 MP Primary Camera</li>\r\n 	<li class=\"col_6\">7 MP Front Camera</li>\r\n</ul>', 'Apple iPhone XR', '', 'publish', 'open', 'closed', '', 'apple-iphone-xr', '', '', '2020-11-02 16:34:01', '2020-11-02 16:34:01', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=167', 0, 'product', '', 0),
(168, 1, '2020-11-02 16:33:12', '2020-11-02 16:33:12', '', 'Iphone XR', '', 'inherit', 'open', 'closed', '', 'iphone-xr', '', '', '2020-11-02 16:33:12', '2020-11-02 16:33:12', '', 167, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/Iphone-XR.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2020-11-02 16:35:55', '2020-11-02 16:35:55', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">4.7-inch Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (1 meter for up to 30 minutes, IP67)</span></li>\r\n 	<li><span class=\"a-list-item\">Single 12MP Wide camera with Auto HDR and 4K video up to 30fps</span></li>\r\n 	<li><span class=\"a-list-item\">7MP FaceTime HD camera with 1080p video</span></li>\r\n 	<li><span class=\"a-list-item\">Touch ID for secure authentication and Apple Pay</span></li>\r\n 	<li><span class=\"a-list-item\">A10 Fusion chip</span></li>\r\n 	<li><span class=\"a-list-item\">iOS 13 with Dark Mode, new tools for editing photos and video, and brand new privacy features</span></li>\r\n</ul>', 'Apple iPhone 7', '', 'publish', 'open', 'closed', '', 'apple-iphone-7', '', '', '2020-11-02 16:35:59', '2020-11-02 16:35:59', '', 0, 'http://127.0.0.1/Croma/?post_type=product&#038;p=169', 0, 'product', '', 0),
(170, 1, '2020-11-02 16:34:46', '2020-11-02 16:34:46', '', 'iphone 7', '', 'inherit', 'open', 'closed', '', 'iphone-7', '', '', '2020-11-02 16:34:46', '2020-11-02 16:34:46', '', 169, 'http://127.0.0.1/Croma/wp-content/uploads/2020/11/iphone-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2020-11-02 16:37:17', '2020-11-02 16:37:17', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\",\"id\":22,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color has-large-font-size\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color\"><p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://127.0.0.1/Croma/index.php/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-11-02 16:37:17', '2020-11-02 16:37:17', '', 21, 'http://127.0.0.1/Croma/index.php/2020/11/02/21-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2020-11-02 17:18:39', '2020-11-02 17:18:39', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\",\"id\":22,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:freeform -->\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n<!-- /wp:freeform -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://127.0.0.1/Croma/index.php/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false} -->\n<div class=\"wp-block-media-text alignwide\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":22,\"mediaType\":\"image\",\"isStackedOnMobile\":false} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Croma/wp-content/uploads/2020/11/other-small.jpg\" alt=\"\" class=\"wp-image-22\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-11-02 17:18:39', '2020-11-02 17:18:39', '', 21, 'http://127.0.0.1/Croma/index.php/2020/11/02/21-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 17, 'order', '0'),
(3, 17, 'product_count_product_cat', '35'),
(4, 16, 'product_count_product_cat', '37');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Phones', 'phones', 0),
(17, 'Watches', 'watches', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(18, 17, 0),
(25, 2, 0),
(25, 17, 0),
(28, 2, 0),
(28, 17, 0),
(30, 2, 0),
(30, 17, 0),
(32, 2, 0),
(32, 17, 0),
(34, 2, 0),
(34, 17, 0),
(36, 2, 0),
(36, 17, 0),
(38, 2, 0),
(38, 17, 0),
(40, 2, 0),
(40, 17, 0),
(42, 2, 0),
(42, 17, 0),
(44, 2, 0),
(44, 17, 0),
(46, 2, 0),
(46, 17, 0),
(48, 2, 0),
(48, 17, 0),
(50, 2, 0),
(50, 17, 0),
(52, 2, 0),
(52, 17, 0),
(54, 2, 0),
(54, 17, 0),
(56, 2, 0),
(56, 17, 0),
(58, 2, 0),
(58, 17, 0),
(60, 2, 0),
(60, 17, 0),
(62, 2, 0),
(62, 17, 0),
(64, 2, 0),
(64, 17, 0),
(66, 2, 0),
(66, 17, 0),
(68, 2, 0),
(68, 17, 0),
(70, 2, 0),
(70, 17, 0),
(72, 2, 0),
(72, 17, 0),
(74, 2, 0),
(74, 17, 0),
(76, 2, 0),
(76, 17, 0),
(78, 2, 0),
(78, 17, 0),
(80, 2, 0),
(80, 17, 0),
(82, 2, 0),
(82, 17, 0),
(84, 2, 0),
(84, 17, 0),
(86, 2, 0),
(86, 17, 0),
(89, 2, 0),
(89, 17, 0),
(91, 2, 0),
(91, 17, 0),
(93, 2, 0),
(93, 17, 0),
(95, 2, 0),
(95, 16, 0),
(97, 2, 0),
(97, 16, 0),
(99, 2, 0),
(99, 16, 0),
(101, 2, 0),
(101, 16, 0),
(103, 2, 0),
(103, 16, 0),
(105, 2, 0),
(105, 16, 0),
(107, 2, 0),
(107, 16, 0),
(109, 2, 0),
(109, 16, 0),
(111, 2, 0),
(111, 16, 0),
(113, 2, 0),
(113, 16, 0),
(115, 2, 0),
(115, 16, 0),
(118, 2, 0),
(118, 16, 0),
(120, 2, 0),
(120, 16, 0),
(122, 2, 0),
(122, 16, 0),
(124, 2, 0),
(124, 16, 0),
(126, 2, 0),
(126, 16, 0),
(128, 2, 0),
(128, 16, 0),
(131, 2, 0),
(131, 16, 0),
(133, 2, 0),
(133, 16, 0),
(135, 2, 0),
(135, 16, 0),
(137, 2, 0),
(137, 16, 0),
(139, 2, 0),
(139, 16, 0),
(141, 2, 0),
(141, 16, 0),
(143, 2, 0),
(143, 16, 0),
(145, 2, 0),
(145, 16, 0),
(147, 2, 0),
(147, 16, 0),
(149, 2, 0),
(149, 16, 0),
(151, 2, 0),
(151, 16, 0),
(153, 2, 0),
(153, 16, 0),
(155, 2, 0),
(155, 16, 0),
(157, 2, 0),
(157, 16, 0),
(159, 2, 0),
(159, 16, 0),
(161, 2, 0),
(161, 16, 0),
(163, 2, 0),
(163, 16, 0),
(165, 2, 0),
(165, 16, 0),
(167, 2, 0),
(167, 16, 0),
(169, 2, 0),
(169, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 72),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 37),
(17, 17, 'product_cat', '', 0, 35);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9170d1c923dbfa6cf556ae59137de3896edbaea95915ab8ace189ea301472c24\";a:4:{s:10:\"expiration\";i:1604473308;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604300508;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:bo1Z+AYq+Ekd1Fv8d58oWgJp'),
(20, 1, 'last_update', '1604311816'),
(21, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1604311813824'),
(22, 1, 'wc_last_active', '1604275200'),
(23, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1604306765'),
(25, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,postimagediv,tagsdiv-product_tag,woocommerce-product-images\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_product', '2'),
(27, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"5878a7ab84fb43402106c575658472fa\";a:11:{s:3:\"key\";s:32:\"5878a7ab84fb43402106c575658472fa\";s:10:\"product_id\";i:167;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:46588;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:46588;s:8:\"line_tax\";i:0;}s:32:\"9766527f2b5d3e95d4a733fcfb77bd7e\";a:6:{s:3:\"key\";s:32:\"9766527f2b5d3e95d4a733fcfb77bd7e\";s:10:\"product_id\";i:165;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJVedNOWN99QPHHgcmIBWkC8OIHgP/.', 'admin', 'anujatendulkar5@gmail.com', 'http://127.0.0.1/Croma', '2020-11-02 07:00:50', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-02 07:13:47', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-11-02 07:13:48', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-11-02 07:13:51', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-02 07:13:51', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-11-02 07:13:52', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-11-02 07:13:52', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-11-02 07:13:52', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-draw-attention', 'info', 'en_US', 'How to draw attention to your online store', 'To get you started, here are seven ways to boost your sales and avoid getting drowned out by similar, mass-produced products competing for the same buyers.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-02 07:41:15', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:27:59', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:27:59', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:27:59', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:27:59', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-customize-store-with-blocks', 'info', 'en_US', 'Customize your online store with WooCommerce blocks', 'With our blocks, you can select and display products, categories, filters, and more virtually anywhere on your site — no need to use shortcodes or edit lines of code. Learn more about how to use each one of them.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:27:59', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', '<a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br /><br /><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-04 07:37:46', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wcpay-subscriptions-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-04 07:37:46', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(2, 2, 'continue-profiler', 'Continue Store Setup', 'http://127.0.0.1/Croma/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'unactioned', 1, ''),
(3, 2, 'skip-profiler', 'Skip Setup', 'http://127.0.0.1/Croma/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(4, 3, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(5, 4, 'open-marketing-hub', 'Open marketing hub', 'http://127.0.0.1/Croma/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(12, 8, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/how-to-make-your-online-store-stand-out/?utm_source=inbox', 'actioned', 1, ''),
(235, 9, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(236, 10, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(237, 11, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(238, 11, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(239, 12, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, ''),
(240, 13, 'customize-store-with-blocks', 'Learn more', 'https://woocommerce.com/posts/how-to-customize-your-online-store-with-woocommerce-blocks/?utm_source=inbox', 'actioned', 1, ''),
(261, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(262, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(263, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(264, 14, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(265, 15, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(18, '', 0, 0, '19000.0000', '19000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(25, '', 0, 0, '3000.0000', '3000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(28, '', 0, 0, '16258.0000', '16258.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(30, '', 0, 0, '1800.0000', '1800.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(32, '', 0, 0, '23226.0000', '23226.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(34, '', 0, 0, '2126.0000', '2126.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(36, '', 0, 0, '2269.0000', '2269.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(38, '', 0, 0, '2787.0000', '2787.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(40, '', 0, 0, '2451.0000', '2451.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(42, '', 0, 0, '1150.0000', '1150.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(44, '', 0, 0, '97400.0000', '97400.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(46, '', 0, 0, '20000.0000', '20000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(48, '', 0, 0, '88500.0000', '88500.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(50, '', 0, 0, '2898.0000', '2898.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(52, '', 0, 0, '8820.0000', '8820.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(54, '', 0, 0, '19800.0000', '19800.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(56, '', 0, 0, '7600.0000', '7600.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(58, '', 0, 0, '21300.0000', '21300.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(60, '', 0, 0, '49658.0000', '49658.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(62, '', 0, 0, '27645.0000', '27645.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(64, '', 0, 0, '26500.0000', '26500.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(66, '', 0, 0, '14400.0000', '14400.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(68, '', 0, 0, '30000.0000', '30000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(70, '', 0, 0, '3155.0000', '3155.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(72, '', 0, 0, '2990.0000', '2990.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(74, '', 0, 0, '1128.0000', '1128.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(76, '', 0, 0, '2364.0000', '2364.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(78, '', 0, 0, '1358.0000', '1358.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(80, '', 0, 0, '1432.0000', '1432.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(82, '', 0, 0, '3655.0000', '3655.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(84, '', 0, 0, '3000.0000', '3000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(86, '', 0, 0, '41600.0000', '41600.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(89, '', 0, 0, '50580.0000', '50580.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(91, '', 0, 0, '67000.0000', '67000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(93, '', 0, 0, '16600.0000', '16600.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(95, '', 0, 0, '76499.0000', '76499.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(97, '', 0, 0, '70899.0000', '70899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(99, '', 0, 0, '81700.0000', '81700.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(101, '', 0, 0, '15300.0000', '15300.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(103, '', 0, 0, '29600.0000', '29600.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(105, '', 0, 0, '20689.0000', '20689.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(107, '', 0, 0, '10758.0000', '10758.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(109, '', 0, 0, '10000.0000', '10000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(111, '', 0, 0, '15456.0000', '15456.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(113, '', 0, 0, '17000.0000', '17000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(115, '', 0, 0, '15990.0000', '15990.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(118, '', 0, 0, '9500.0000', '9500.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(120, '', 0, 0, '17000.0000', '17000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(122, '', 0, 0, '47000.0000', '47000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(124, '', 0, 0, '11688.0000', '11688.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(126, '', 0, 0, '53456.0000', '53456.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(128, '', 0, 0, '20356.0000', '20356.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(131, '', 0, 0, '18759.0000', '18759.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(133, '', 0, 0, '14236.0000', '14236.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(135, '', 0, 0, '12750.0000', '12750.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(137, '', 0, 0, '11789.0000', '11789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(139, '', 0, 0, '12050.0000', '12050.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(141, '', 0, 0, '14126.0000', '14126.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(143, '', 0, 0, '28999.0000', '28999.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(145, '', 0, 0, '28566.0000', '28566.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(147, '', 0, 0, '58742.0000', '58742.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(149, '', 0, 0, '48239.0000', '48239.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(151, '', 0, 0, '44567.0000', '44567.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(153, '', 0, 0, '38789.0000', '38789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(155, '', 0, 0, '51264.0000', '51264.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(157, '', 0, 0, '37239.0000', '37239.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(159, '', 0, 0, '122346.0000', '122346.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(161, '', 0, 0, '33543.0000', '33543.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(163, '', 0, 0, '60000.0000', '60000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(165, '', 0, 0, '98967.0000', '98967.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(167, '', 0, 0, '46588.0000', '46588.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(169, '', 0, 0, '23322.0000', '23322.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'India', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'IN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1169;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1705;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
