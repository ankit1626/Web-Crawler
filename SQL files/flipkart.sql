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
-- Database: `flipkart`
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
(1, 'action-scheduler-migration');

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
(1, 'siteurl', 'http://127.0.0.1/Flipkart', 'yes'),
(2, 'home', 'http://127.0.0.1/Flipkart', 'yes'),
(3, 'blogname', 'Flipkart', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:162:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:17:\"index.php/shop/?$\";s:27:\"index.php?post_type=product\";s:47:\"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:42:\"index.php/shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"index.php/shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:58:\"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:53:\"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:\"C:\\xampp\\htdocs\\Flipkart/wp-content/themes/buzz-ecommerce/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'buzz-ecommerce', 'yes'),
(41, 'stylesheet', 'buzz-ecommerce', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1620191523', 'yes'),
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
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:17:{i:1607508616;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1607508741;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607511179;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607511192;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607512197;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1607514771;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607533942;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607558400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607577138;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607577175;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607577183;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607579581;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607579583;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607590371;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607749940;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1608530031;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
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
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604655576;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(129, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1607504246;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(130, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"anujatendulkar5@gmail.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1604639598;}', 'no'),
(133, 'finished_updating_comment_type', '1', 'yes'),
(134, 'recently_activated', 'a:0:{}', 'yes'),
(135, 'can_compress_scripts', '1', 'no'),
(140, 'action_scheduler_hybrid_store_demarkation', '6', 'yes'),
(141, 'schema-ActionScheduler_StoreSchema', '3.0.1604641936', 'yes'),
(142, 'schema-ActionScheduler_LoggerSchema', '2.0.1604641936', 'yes'),
(145, 'woocommerce_schema_version', '430', 'yes'),
(146, 'woocommerce_store_address', 'A/201 Aditya building CHS Kandivali west', 'yes'),
(147, 'woocommerce_store_address_2', '', 'yes'),
(148, 'woocommerce_store_city', 'Mumbai', 'yes'),
(149, 'woocommerce_default_country', 'IN:MH', 'yes'),
(150, 'woocommerce_store_postcode', '400067', 'yes'),
(151, 'woocommerce_allowed_countries', 'all', 'yes'),
(152, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(153, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(154, 'woocommerce_ship_to_countries', '', 'yes'),
(155, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(156, 'woocommerce_default_customer_address', 'base', 'yes'),
(157, 'woocommerce_calc_taxes', 'yes', 'yes'),
(158, 'woocommerce_enable_coupons', 'yes', 'yes'),
(159, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(160, 'woocommerce_currency', 'INR', 'yes'),
(161, 'woocommerce_currency_pos', 'left', 'yes'),
(162, 'woocommerce_price_thousand_sep', ',', 'yes'),
(163, 'woocommerce_price_decimal_sep', '.', 'yes'),
(164, 'woocommerce_price_num_decimals', '2', 'yes'),
(165, 'woocommerce_shop_page_id', '8', 'yes'),
(166, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(167, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(168, 'woocommerce_placeholder_image', '7', 'yes'),
(169, 'woocommerce_weight_unit', 'kg', 'yes'),
(170, 'woocommerce_dimension_unit', 'cm', 'yes'),
(171, 'woocommerce_enable_reviews', 'yes', 'yes'),
(172, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(173, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(174, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(175, 'woocommerce_review_rating_required', 'yes', 'no'),
(176, 'woocommerce_manage_stock', 'yes', 'yes'),
(177, 'woocommerce_hold_stock_minutes', '60', 'no'),
(178, 'woocommerce_notify_low_stock', 'yes', 'no'),
(179, 'woocommerce_notify_no_stock', 'yes', 'no'),
(180, 'woocommerce_stock_email_recipient', 'anujatendulkar5@gmail.com', 'no'),
(181, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(182, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(183, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(184, 'woocommerce_stock_format', '', 'yes'),
(185, 'woocommerce_file_download_method', 'force', 'no'),
(186, 'woocommerce_downloads_require_login', 'no', 'no'),
(187, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(188, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(189, 'woocommerce_prices_include_tax', 'no', 'yes'),
(190, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(191, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(192, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(193, 'woocommerce_tax_classes', '', 'yes'),
(194, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(195, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(196, 'woocommerce_price_display_suffix', '', 'yes'),
(197, 'woocommerce_tax_total_display', 'itemized', 'no'),
(198, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(199, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(200, 'woocommerce_ship_to_destination', 'billing', 'no'),
(201, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(202, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(203, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(204, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(205, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(206, 'woocommerce_registration_generate_username', 'yes', 'no'),
(207, 'woocommerce_registration_generate_password', 'yes', 'no'),
(208, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(209, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(210, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(211, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(212, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(213, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(214, 'woocommerce_trash_pending_orders', '', 'no'),
(215, 'woocommerce_trash_failed_orders', '', 'no'),
(216, 'woocommerce_trash_cancelled_orders', '', 'no'),
(217, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(218, 'woocommerce_email_from_name', 'Flipkart', 'no'),
(219, 'woocommerce_email_from_address', 'anujatendulkar5@gmail.com', 'no'),
(220, 'woocommerce_email_header_image', '', 'no'),
(221, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(222, 'woocommerce_email_base_color', '#96588a', 'no'),
(223, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(224, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(225, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(226, 'woocommerce_cart_page_id', '9', 'no'),
(227, 'woocommerce_checkout_page_id', '10', 'no'),
(228, 'woocommerce_myaccount_page_id', '11', 'no'),
(229, 'woocommerce_terms_page_id', '', 'no'),
(230, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(231, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(232, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(233, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(234, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(235, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(236, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(237, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(238, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(239, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(240, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(241, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(242, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(243, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(244, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(245, 'woocommerce_api_enabled', 'no', 'yes'),
(246, 'woocommerce_allow_tracking', 'no', 'no'),
(247, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(248, 'woocommerce_single_image_width', '600', 'yes'),
(249, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(250, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(251, 'woocommerce_demo_store', 'no', 'no'),
(252, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(253, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(254, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(255, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(257, 'default_product_cat', '15', 'yes'),
(260, 'woocommerce_version', '4.6.1', 'yes'),
(261, 'woocommerce_db_version', '4.6.1', 'yes'),
(264, 'action_scheduler_lock_async-request-runner', '1607504318', 'yes'),
(265, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(266, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"o6y1pDRmadiz7uxS5V4CiydIT4C0XOWl\";}', 'yes'),
(267, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(268, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'woocommerce_admin_version', '1.6.2', 'yes'),
(283, 'woocommerce_admin_install_timestamp', '1604641983', 'yes'),
(287, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1604641984', 'yes'),
(289, 'wc_blocks_db_schema_version', '260', 'yes'),
(290, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(291, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(297, 'wc_remote_inbox_notifications_specs', 'a:5:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:856:\"<a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br/><br/><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-01-01 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-01-01 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}}', 'yes'),
(298, '_transient_woocommerce_reports-transient-version', '1604660545', 'yes'),
(317, 'action_scheduler_migration_status', 'complete', 'yes'),
(328, '_transient_shipping-transient-version', '1604660575', 'yes'),
(349, 'current_theme', 'Buzz Ecommerce', 'yes'),
(350, 'theme_mods_di-ecommerce', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604655621;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"sidebar_page\";a:0:{}s:11:\"sidebar_woo\";a:0:{}s:14:\"sidebar_header\";a:0:{}s:19:\"sidebar_header_left\";a:0:{}}}}', 'yes'),
(351, 'theme_switched', '', 'yes'),
(352, 'widget_di_ecommerce_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(353, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(362, 'kirki_downloaded_font_files', 'a:19:{s:88:\"https://fonts.gstatic.com/s/lora/v16/0QI6MX1D_JOuGQbT0gvTJPa787weuxJMkqt8ndeYxZ2JTg.woff\";s:98:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/lora/0QI6MX1D_JOuGQbT0gvTJPa787weuxJMkqt8ndeYxZ2JTg.woff\";s:88:\"https://fonts.gstatic.com/s/lora/v16/0QI6MX1D_JOuGQbT0gvTJPa787weuxJFkqt8ndeYxZ2JTg.woff\";s:98:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/lora/0QI6MX1D_JOuGQbT0gvTJPa787weuxJFkqt8ndeYxZ2JTg.woff\";s:88:\"https://fonts.gstatic.com/s/lora/v16/0QI6MX1D_JOuGQbT0gvTJPa787weuxJOkqt8ndeYxZ2JTg.woff\";s:98:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/lora/0QI6MX1D_JOuGQbT0gvTJPa787weuxJOkqt8ndeYxZ2JTg.woff\";s:88:\"https://fonts.gstatic.com/s/lora/v16/0QI6MX1D_JOuGQbT0gvTJPa787weuxJPkqt8ndeYxZ2JTg.woff\";s:98:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/lora/0QI6MX1D_JOuGQbT0gvTJPa787weuxJPkqt8ndeYxZ2JTg.woff\";s:85:\"https://fonts.gstatic.com/s/lora/v16/0QI6MX1D_JOuGQbT0gvTJPa787weuxJBkqt8ndeYxZ0.woff\";s:95:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/lora/0QI6MX1D_JOuGQbT0gvTJPa787weuxJBkqt8ndeYxZ0.woff\";s:65:\"https://fonts.gstatic.com/s/arvo/v14/tDbD2oWUg0MKqScQ657o_vo.woff\";s:75:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/arvo/tDbD2oWUg0MKqScQ657o_vo.woff\";s:77:\"https://fonts.gstatic.com/s/faunaone/v8/wlpzgwTPBVpjpCuwkuEB0EZMQipeC8tU.woff\";s:89:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/fauna-one/wlpzgwTPBVpjpCuwkuEB0EZMQipeC8tU.woff\";s:75:\"https://fonts.gstatic.com/s/faunaone/v8/wlpzgwTPBVpjpCuwkuEB3kZMQipeCw.woff\";s:87:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/fauna-one/wlpzgwTPBVpjpCuwkuEB3kZMQipeCw.woff\";s:72:\"https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu72xMKTU1Kvnz.woff\";s:82:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/roboto/KFOmCnqEu92Fr1Mu72xMKTU1Kvnz.woff\";s:72:\"https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu5mxMKTU1Kvnz.woff\";s:82:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/roboto/KFOmCnqEu92Fr1Mu5mxMKTU1Kvnz.woff\";s:72:\"https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu7mxMKTU1Kvnz.woff\";s:82:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/roboto/KFOmCnqEu92Fr1Mu7mxMKTU1Kvnz.woff\";s:72:\"https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu4WxMKTU1Kvnz.woff\";s:82:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/roboto/KFOmCnqEu92Fr1Mu4WxMKTU1Kvnz.woff\";s:72:\"https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu7WxMKTU1Kvnz.woff\";s:82:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/roboto/KFOmCnqEu92Fr1Mu7WxMKTU1Kvnz.woff\";s:72:\"https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu7GxMKTU1Kvnz.woff\";s:82:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/roboto/KFOmCnqEu92Fr1Mu7GxMKTU1Kvnz.woff\";s:70:\"https://fonts.gstatic.com/s/roboto/v20/KFOmCnqEu92Fr1Mu4mxMKTU1Kg.woff\";s:80:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/roboto/KFOmCnqEu92Fr1Mu4mxMKTU1Kg.woff\";s:81:\"https://fonts.gstatic.com/s/rajdhani/v10/LDI2apCSOBg7S-QT7pb0EPOqeeHkkbIxyyg.woff\";s:91:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/rajdhani/LDI2apCSOBg7S-QT7pb0EPOqeeHkkbIxyyg.woff\";s:81:\"https://fonts.gstatic.com/s/rajdhani/v10/LDI2apCSOBg7S-QT7pb0EPOleeHkkbIxyyg.woff\";s:91:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/rajdhani/LDI2apCSOBg7S-QT7pb0EPOleeHkkbIxyyg.woff\";s:78:\"https://fonts.gstatic.com/s/rajdhani/v10/LDI2apCSOBg7S-QT7pb0EPOreeHkkbIx.woff\";s:88:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/rajdhani/LDI2apCSOBg7S-QT7pb0EPOreeHkkbIx.woff\";s:75:\"https://fonts.gstatic.com/s/fjordone/v9/zOL-4pbEnKBY_9S1jNKb7uRHkeJOiA.woff\";s:87:\"C:\\xampp\\htdocs\\Flipkart/wp-content/fonts/fjord-one/zOL-4pbEnKBY_9S1jNKb7uRHkeJOiA.woff\";}', 'yes'),
(364, 'theme_mods_newstore', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604655652;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:26:\"front-page-top-widget-area\";a:0:{}s:19:\"woocommerce-sidebar\";a:0:{}s:27:\"woocommerce-product-sidebar\";a:0:{}s:31:\"front-page-products-widget-area\";a:0:{}s:29:\"front-page-widget-area-column\";a:0:{}s:24:\"footer-widget-area-col-1\";a:0:{}s:24:\"footer-widget-area-col-2\";a:0:{}s:24:\"footer-widget-area-col-3\";a:0:{}s:24:\"footer-widget-area-col-4\";a:0:{}}}}', 'yes'),
(365, 'widget_newstore_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(368, 'theme_mods_ecommerce-hub', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604660103;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(388, 'theme_mods_newshop-ecommerce', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:20:\"newstore_header_type\";s:3:\"two\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604660714;s:4:\"data\";a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:0:{}s:26:\"front-page-top-widget-area\";a:0:{}s:19:\"woocommerce-sidebar\";a:0:{}s:27:\"woocommerce-product-sidebar\";a:0:{}s:31:\"front-page-products-widget-area\";a:0:{}s:29:\"front-page-widget-area-column\";a:0:{}s:24:\"footer-widget-area-col-1\";a:0:{}s:24:\"footer-widget-area-col-2\";a:0:{}s:24:\"footer-widget-area-col-3\";a:0:{}s:24:\"footer-widget-area-col-4\";a:0:{}}}}', 'yes'),
(404, 'woocommerce_onboarding_profile', 'a:8:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"electronics-computers\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:6:\"11-100\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:7:\"plugins\";s:7:\"skipped\";s:9:\"completed\";b:1;}', 'yes'),
(408, 'woocommerce_task_list_tracked_completed_tasks', 'a:3:{i:0;s:13:\"store_details\";i:1;s:8:\"payments\";i:2;s:8:\"shipping\";}', 'yes'),
(411, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(414, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1604660519;}', 'no'),
(415, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(421, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:0:\"\";s:10:\"min_amount\";s:1:\"0\";s:16:\"ignore_discounts\";s:2:\"no\";}', 'yes'),
(429, 'theme_mods_buzz-ecommerce', 'a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:6:\"ffffff\";s:23:\"homepage_slider_section\";a:1:{i:0;a:4:{s:11:\"slider_text\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";s:12:\"slider_links\";s:1:\"#\";s:15:\"slider_btn_text\";s:8:\"Shop Now\";s:12:\"slider_image\";s:88:\"http://127.0.0.1/Flipkart/wp-content/themes/buzz-ecommerce/assets/images/slider-item.jpg\";}}s:28:\"homepage_service_box_section\";a:1:{i:0;a:3:{s:13:\"service_icons\";s:15:\"fa fa-ambulance\";s:13:\"service_title\";s:13:\"FREE DELIVERY\";s:18:\"service_short_desc\";s:11:\"From $59.89\";}}s:30:\"buzz_ecommerce_homepage_banner\";a:1:{i:0;a:2:{s:12:\"banner_image\";s:84:\"http://127.0.0.1/Flipkart/wp-content/themes/buzz-ecommerce/assets/images/mac-add.jpg\";s:12:\"banner_links\";s:1:\"#\";}}s:16:\"background_color\";s:6:\"d3b087\";s:26:\"buzz_ecommerce_main_slider\";b:0;s:34:\"buzz_ecommerce_social_share_enable\";b:0;s:42:\"buzz_ecommerce_slider_category_list_enable\";b:0;s:19:\"products_tabs_title\";s:0:\"\";}', 'yes'),
(431, 'Buzz_Ecommerce_admin_notice_welcome', '1', 'yes'),
(436, 'woocommerce_demo_store_notice', '', 'yes'),
(439, 'category_children', 'a:0:{}', 'yes'),
(447, 'product_cat_children', 'a:0:{}', 'yes'),
(451, '_transient_product_query-transient-version', '1607504255', 'yes'),
(452, '_transient_product-transient-version', '1604671002', 'yes'),
(800, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":10,\"critical\":0}', 'yes'),
(853, '_site_transient_timeout_php_check_6a93f292d9a273c004fc36e1f86d97b3', '1607867353', 'no'),
(854, '_site_transient_php_check_6a93f292d9a273c004fc36e1f86d97b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(868, '_transient_timeout_wc_term_counts', '1610096245', 'no'),
(869, '_transient_wc_term_counts', 'a:2:{i:16;s:2:\"37\";i:17;s:2:\"35\";}', 'no'),
(871, '_transient_timeout__woocommerce_helper_subscriptions', '1607505149', 'no'),
(872, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(873, '_site_transient_timeout_theme_roots', '1607506049', 'no'),
(874, '_site_transient_theme_roots', 'a:8:{s:14:\"buzz-ecommerce\";s:7:\"/themes\";s:12:\"di-ecommerce\";s:7:\"/themes\";s:13:\"ecommerce-hub\";s:7:\"/themes\";s:17:\"newshop-ecommerce\";s:7:\"/themes\";s:8:\"newstore\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(875, '_transient_timeout__woocommerce_helper_updates', '1607547449', 'no'),
(876, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1607504249;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(877, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607504253;s:7:\"checked\";a:8:{s:14:\"buzz-ecommerce\";s:5:\"1.1.6\";s:12:\"di-ecommerce\";s:5:\"1.1.3\";s:13:\"ecommerce-hub\";s:5:\"0.4.1\";s:17:\"newshop-ecommerce\";s:3:\"0.5\";s:8:\"newstore\";s:6:\"1.3.17\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:4:{s:13:\"ecommerce-hub\";a:6:{s:5:\"theme\";s:13:\"ecommerce-hub\";s:11:\"new_version\";s:5:\"0.4.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/ecommerce-hub/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/ecommerce-hub.0.4.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:6:\"7.2.14\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.8.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:9:\"no_update\";a:4:{s:14:\"buzz-ecommerce\";a:6:{s:5:\"theme\";s:14:\"buzz-ecommerce\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/buzz-ecommerce/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/buzz-ecommerce.1.1.6.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"di-ecommerce\";a:6:{s:5:\"theme\";s:12:\"di-ecommerce\";s:11:\"new_version\";s:5:\"1.1.3\";s:3:\"url\";s:42:\"https://wordpress.org/themes/di-ecommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/di-ecommerce.1.1.3.zip\";s:8:\"requires\";s:3:\"4.9\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"newshop-ecommerce\";a:6:{s:5:\"theme\";s:17:\"newshop-ecommerce\";s:11:\"new_version\";s:3:\"0.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/newshop-ecommerce/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/newshop-ecommerce.0.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:8:\"newstore\";a:6:{s:5:\"theme\";s:8:\"newstore\";s:11:\"new_version\";s:6:\"1.3.17\";s:3:\"url\";s:38:\"https://wordpress.org/themes/newstore/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/newstore.1.3.17.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(878, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607504254;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.6.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(2, 3, '_wp_page_template', 'default'),
(7, 7, '_wp_attached_file', 'woocommerce-placeholder.png'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 20, '_edit_last', '1'),
(24, 20, '_edit_lock', '1604661546:1'),
(25, 21, '_wp_attached_file', '2020/11/iphone-7.jpg'),
(26, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:343;s:6:\"height\";i:606;s:4:\"file\";s:20:\"2020/11/iphone-7.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"iphone-7-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"iphone-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"iphone-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 20, '_thumbnail_id', '21'),
(28, 20, '_regular_price', '24999'),
(29, 20, '_sale_price', '24528'),
(30, 20, 'total_sales', '0'),
(31, 20, '_tax_status', 'taxable'),
(32, 20, '_tax_class', ''),
(33, 20, '_manage_stock', 'no'),
(34, 20, '_backorders', 'no'),
(35, 20, '_sold_individually', 'no'),
(36, 20, '_virtual', 'no'),
(37, 20, '_downloadable', 'no'),
(38, 20, '_download_limit', '-1'),
(39, 20, '_download_expiry', '-1'),
(40, 20, '_stock', NULL),
(41, 20, '_stock_status', 'instock'),
(42, 20, '_wc_average_rating', '0'),
(43, 20, '_wc_review_count', '0'),
(44, 20, '_product_version', '4.6.1'),
(45, 20, '_price', '24528'),
(46, 22, '_edit_last', '1'),
(47, 22, '_edit_lock', '1604661818:1'),
(48, 23, '_wp_attached_file', '2020/11/Iphone-XR.jpg'),
(49, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:441;s:6:\"height\";i:529;s:4:\"file\";s:21:\"2020/11/Iphone-XR.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-250x300.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Iphone-XR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 22, '_thumbnail_id', '23'),
(51, 22, '_regular_price', '47900'),
(52, 22, '_sale_price', '47130'),
(53, 22, 'total_sales', '0'),
(54, 22, '_tax_status', 'taxable'),
(55, 22, '_tax_class', ''),
(56, 22, '_manage_stock', 'no'),
(57, 22, '_backorders', 'no'),
(58, 22, '_sold_individually', 'no'),
(59, 22, '_virtual', 'no'),
(60, 22, '_downloadable', 'no'),
(61, 22, '_download_limit', '-1'),
(62, 22, '_download_expiry', '-1'),
(63, 22, '_stock', NULL),
(64, 22, '_stock_status', 'instock'),
(65, 22, '_wc_average_rating', '0'),
(66, 22, '_wc_review_count', '0'),
(67, 22, '_product_version', '4.6.1'),
(68, 22, '_price', '47130'),
(72, 25, '_edit_last', '1'),
(73, 25, '_edit_lock', '1604662138:1'),
(74, 26, '_wp_attached_file', '2020/11/Iphone-11-Pro.jpg'),
(75, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1481;s:4:\"file\";s:25:\"2020/11/Iphone-11-Pro.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-243x300.jpg\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Iphone-11-Pro-830x1024.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-768x948.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:948;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"Iphone-11-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-600x741.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:741;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-600x741.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:741;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Iphone-11-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 25, '_thumbnail_id', '26'),
(77, 25, '_regular_price', '106600'),
(78, 25, '_sale_price', '100000'),
(79, 25, 'total_sales', '0'),
(80, 25, '_tax_status', 'taxable'),
(81, 25, '_tax_class', ''),
(82, 25, '_manage_stock', 'no'),
(83, 25, '_backorders', 'no'),
(84, 25, '_sold_individually', 'no'),
(85, 25, '_virtual', 'no'),
(86, 25, '_downloadable', 'no'),
(87, 25, '_download_limit', '-1'),
(88, 25, '_download_expiry', '-1'),
(89, 25, '_stock', NULL),
(90, 25, '_stock_status', 'instock'),
(91, 25, '_wc_average_rating', '0'),
(92, 25, '_wc_review_count', '0'),
(93, 25, '_product_version', '4.6.1'),
(94, 25, '_price', '100000'),
(95, 27, '_edit_last', '1'),
(96, 27, '_edit_lock', '1604662283:1'),
(97, 28, '_wp_attached_file', '2020/11/iPhone_11.png'),
(98, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:335;s:4:\"file\";s:21:\"2020/11/iPhone_11.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"iPhone_11-197x300.png\";s:5:\"width\";i:197;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"iPhone_11-220x300.png\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"iPhone_11-220x300.png\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 27, '_thumbnail_id', '28'),
(100, 27, '_regular_price', '64900'),
(101, 27, '_sale_price', '62456'),
(102, 27, 'total_sales', '0'),
(103, 27, '_tax_status', 'taxable'),
(104, 27, '_tax_class', ''),
(105, 27, '_manage_stock', 'no'),
(106, 27, '_backorders', 'no'),
(107, 27, '_sold_individually', 'no'),
(108, 27, '_virtual', 'no'),
(109, 27, '_downloadable', 'no'),
(110, 27, '_download_limit', '-1'),
(111, 27, '_download_expiry', '-1'),
(112, 27, '_stock', NULL),
(113, 27, '_stock_status', 'instock'),
(114, 27, '_wc_average_rating', '0'),
(115, 27, '_wc_review_count', '0'),
(116, 27, '_product_version', '4.6.1'),
(117, 27, '_price', '62456'),
(118, 29, '_edit_last', '1'),
(119, 29, '_edit_lock', '1604662606:1'),
(120, 30, '_wp_attached_file', '2020/11/Iphone-8.jpg'),
(121, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/11/Iphone-8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 29, '_thumbnail_id', '30'),
(123, 29, '_regular_price', '35800'),
(124, 29, '_sale_price', '34123'),
(125, 29, 'total_sales', '0'),
(126, 29, '_tax_status', 'taxable'),
(127, 29, '_tax_class', ''),
(128, 29, '_manage_stock', 'no'),
(129, 29, '_backorders', 'no'),
(130, 29, '_sold_individually', 'no'),
(131, 29, '_virtual', 'no'),
(132, 29, '_downloadable', 'no'),
(133, 29, '_download_limit', '-1'),
(134, 29, '_download_expiry', '-1'),
(135, 29, '_stock', NULL),
(136, 29, '_stock_status', 'instock'),
(137, 29, '_wc_average_rating', '0'),
(138, 29, '_wc_review_count', '0'),
(139, 29, '_product_version', '4.6.1'),
(140, 29, '_price', '34123'),
(141, 31, '_edit_last', '1'),
(142, 31, '_edit_lock', '1604662831:1'),
(143, 32, '_wp_attached_file', '2020/11/Oppo-A52.jpg'),
(144, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/11/Oppo-A52.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 31, '_thumbnail_id', '32'),
(146, 31, '_regular_price', '13990'),
(147, 31, '_sale_price', '10750'),
(148, 31, 'total_sales', '0'),
(149, 31, '_tax_status', 'taxable'),
(150, 31, '_tax_class', ''),
(151, 31, '_manage_stock', 'no'),
(152, 31, '_backorders', 'no'),
(153, 31, '_sold_individually', 'no'),
(154, 31, '_virtual', 'no'),
(155, 31, '_downloadable', 'no'),
(156, 31, '_download_limit', '-1'),
(157, 31, '_download_expiry', '-1'),
(158, 31, '_stock', NULL),
(159, 31, '_stock_status', 'instock'),
(160, 31, '_wc_average_rating', '0'),
(161, 31, '_wc_review_count', '0'),
(162, 31, '_product_version', '4.6.1'),
(163, 31, '_price', '10750'),
(164, 33, '_edit_last', '1'),
(165, 33, '_edit_lock', '1604662785:1'),
(166, 34, '_wp_attached_file', '2020/11/Oppo-F15.jpg'),
(167, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/11/Oppo-F15.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 33, '_thumbnail_id', '34'),
(169, 33, '_regular_price', '15950'),
(170, 33, '_sale_price', '15000'),
(171, 33, 'total_sales', '0'),
(172, 33, '_tax_status', 'taxable'),
(173, 33, '_tax_class', ''),
(174, 33, '_manage_stock', 'no'),
(175, 33, '_backorders', 'no'),
(176, 33, '_sold_individually', 'no'),
(177, 33, '_virtual', 'no'),
(178, 33, '_downloadable', 'no'),
(179, 33, '_download_limit', '-1'),
(180, 33, '_download_expiry', '-1'),
(181, 33, '_stock', NULL),
(182, 33, '_stock_status', 'instock'),
(183, 33, '_wc_average_rating', '0'),
(184, 33, '_wc_review_count', '0'),
(185, 33, '_product_version', '4.6.1'),
(186, 33, '_price', '15000'),
(187, 35, '_edit_last', '1'),
(188, 35, '_edit_lock', '1604663087:1'),
(189, 36, '_wp_attached_file', '2020/11/Oppo-Reno-2.jpg'),
(190, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:23:\"2020/11/Oppo-Reno-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(191, 35, '_thumbnail_id', '36'),
(192, 35, '_regular_price', '19920'),
(193, 35, '_sale_price', '19000'),
(194, 35, 'total_sales', '0'),
(195, 35, '_tax_status', 'taxable'),
(196, 35, '_tax_class', ''),
(197, 35, '_manage_stock', 'no'),
(198, 35, '_backorders', 'no'),
(199, 35, '_sold_individually', 'no'),
(200, 35, '_virtual', 'no'),
(201, 35, '_downloadable', 'no'),
(202, 35, '_download_limit', '-1'),
(203, 35, '_download_expiry', '-1'),
(204, 35, '_stock', NULL),
(205, 35, '_stock_status', 'instock'),
(206, 35, '_wc_average_rating', '0'),
(207, 35, '_wc_review_count', '0'),
(208, 35, '_product_version', '4.6.1'),
(209, 35, '_price', '19000'),
(210, 37, '_edit_last', '1'),
(211, 37, '_edit_lock', '1604663043:1'),
(212, 38, '_wp_attached_file', '2020/11/iphone-12-Pro-Max.jpg'),
(213, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:29:\"2020/11/iphone-12-Pro-Max.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 37, '_thumbnail_id', '38'),
(215, 37, '_regular_price', '129700'),
(216, 37, '_sale_price', '124875'),
(217, 37, 'total_sales', '0'),
(218, 37, '_tax_status', 'taxable'),
(219, 37, '_tax_class', ''),
(220, 37, '_manage_stock', 'no'),
(221, 37, '_backorders', 'no'),
(222, 37, '_sold_individually', 'no'),
(223, 37, '_virtual', 'no'),
(224, 37, '_downloadable', 'no'),
(225, 37, '_download_limit', '-1'),
(226, 37, '_download_expiry', '-1'),
(227, 37, '_stock', NULL),
(228, 37, '_stock_status', 'instock'),
(229, 37, '_wc_average_rating', '0'),
(230, 37, '_wc_review_count', '0'),
(231, 37, '_product_version', '4.6.1'),
(232, 37, '_price', '124875'),
(233, 40, '_wp_attached_file', '2020/11/OnePlus-6T.jpg'),
(234, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:22:\"2020/11/OnePlus-6T.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(235, 39, '_edit_last', '1'),
(236, 39, '_thumbnail_id', '40'),
(237, 39, '_regular_price', '39999'),
(238, 39, '_sale_price', '36523'),
(239, 39, 'total_sales', '0'),
(240, 39, '_tax_status', 'taxable'),
(241, 39, '_tax_class', ''),
(242, 39, '_manage_stock', 'no'),
(243, 39, '_backorders', 'no'),
(244, 39, '_sold_individually', 'no'),
(245, 39, '_virtual', 'no'),
(246, 39, '_downloadable', 'no'),
(247, 39, '_download_limit', '-1'),
(248, 39, '_download_expiry', '-1'),
(249, 39, '_stock', NULL),
(250, 39, '_stock_status', 'instock'),
(251, 39, '_wc_average_rating', '0'),
(252, 39, '_wc_review_count', '0'),
(253, 39, '_product_version', '4.6.1'),
(254, 39, '_price', '36523'),
(255, 39, '_edit_lock', '1604663268:1'),
(256, 41, '_edit_last', '1'),
(257, 41, '_edit_lock', '1604663377:1'),
(258, 42, '_wp_attached_file', '2020/11/OnePlus-7-Pro.jpg'),
(259, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:972;s:6:\"height\";i:1004;s:4:\"file\";s:25:\"2020/11/OnePlus-7-Pro.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-290x300.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-768x793.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:793;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"OnePlus-7-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-600x620.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-600x620.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(260, 41, '_thumbnail_id', '42'),
(261, 41, '_regular_price', '52999'),
(262, 41, '_sale_price', '52000'),
(263, 41, 'total_sales', '0'),
(264, 41, '_tax_status', 'taxable'),
(265, 41, '_tax_class', ''),
(266, 41, '_manage_stock', 'no'),
(267, 41, '_backorders', 'no'),
(268, 41, '_sold_individually', 'no'),
(269, 41, '_virtual', 'no'),
(270, 41, '_downloadable', 'no'),
(271, 41, '_download_limit', '-1'),
(272, 41, '_download_expiry', '-1'),
(273, 41, '_stock', NULL),
(274, 41, '_stock_status', 'instock'),
(275, 41, '_wc_average_rating', '0'),
(276, 41, '_wc_review_count', '0'),
(277, 41, '_product_version', '4.6.1'),
(278, 41, '_price', '52000'),
(279, 43, '_edit_last', '1'),
(280, 43, '_edit_lock', '1604663317:1'),
(281, 44, '_wp_attached_file', '2020/11/OnePlus-7T.jpg'),
(282, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:670;s:4:\"file\";s:22:\"2020/11/OnePlus-7T.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"OnePlus-7T-1024x536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"OnePlus-7T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-600x314.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-600x314.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 43, '_thumbnail_id', '44'),
(284, 43, '_regular_price', '39999'),
(285, 43, '_sale_price', '37425'),
(286, 43, 'total_sales', '0'),
(287, 43, '_tax_status', 'taxable'),
(288, 43, '_tax_class', ''),
(289, 43, '_manage_stock', 'no'),
(290, 43, '_backorders', 'no'),
(291, 43, '_sold_individually', 'no'),
(292, 43, '_virtual', 'no'),
(293, 43, '_downloadable', 'no'),
(294, 43, '_download_limit', '-1'),
(295, 43, '_download_expiry', '-1'),
(296, 43, '_stock', NULL),
(297, 43, '_stock_status', 'instock'),
(298, 43, '_wc_average_rating', '0'),
(299, 43, '_wc_review_count', '0'),
(300, 43, '_product_version', '4.6.1'),
(301, 43, '_price', '37425'),
(302, 46, '_edit_last', '1'),
(303, 46, '_edit_lock', '1604663449:1'),
(306, 48, '_wp_attached_file', '2020/11/OnePlus-8T.jpg'),
(307, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2020/11/OnePlus-8T.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(308, 46, '_thumbnail_id', '48'),
(309, 46, '_regular_price', '45999'),
(310, 46, '_sale_price', '43889'),
(311, 46, 'total_sales', '0'),
(312, 46, '_tax_status', 'taxable'),
(313, 46, '_tax_class', ''),
(314, 46, '_manage_stock', 'no'),
(315, 46, '_backorders', 'no'),
(316, 46, '_sold_individually', 'no'),
(317, 46, '_virtual', 'no'),
(318, 46, '_downloadable', 'no'),
(319, 46, '_download_limit', '-1'),
(320, 46, '_download_expiry', '-1'),
(321, 46, '_stock', NULL),
(322, 46, '_stock_status', 'instock'),
(323, 46, '_wc_average_rating', '0'),
(324, 46, '_wc_review_count', '0'),
(325, 46, '_product_version', '4.6.1'),
(326, 46, '_price', '43889'),
(327, 49, '_edit_last', '1'),
(328, 49, '_edit_lock', '1604663539:1'),
(329, 50, '_wp_attached_file', '2020/11/OnePlus-8.jpg'),
(330, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2020/11/OnePlus-8.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"OnePlus-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 49, '_thumbnail_id', '50'),
(332, 49, '_regular_price', '49999'),
(333, 49, '_sale_price', '48666'),
(334, 49, 'total_sales', '0'),
(335, 49, '_tax_status', 'taxable'),
(336, 49, '_tax_class', ''),
(337, 49, '_manage_stock', 'no'),
(338, 49, '_backorders', 'no'),
(339, 49, '_sold_individually', 'no'),
(340, 49, '_virtual', 'no'),
(341, 49, '_downloadable', 'no'),
(342, 49, '_download_limit', '-1'),
(343, 49, '_download_expiry', '-1'),
(344, 49, '_stock', NULL),
(345, 49, '_stock_status', 'instock'),
(346, 49, '_wc_average_rating', '0'),
(347, 49, '_wc_review_count', '0'),
(348, 49, '_product_version', '4.6.1'),
(349, 49, '_price', '48666'),
(350, 51, '_edit_last', '1'),
(351, 51, '_edit_lock', '1604663614:1'),
(352, 52, '_wp_attached_file', '2020/11/Oneplus-8-Pro.jpg'),
(353, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:25:\"2020/11/Oneplus-8-Pro.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 51, '_thumbnail_id', '52'),
(355, 51, '_regular_price', '59999'),
(356, 51, '_sale_price', '58000'),
(357, 51, 'total_sales', '0'),
(358, 51, '_tax_status', 'taxable'),
(359, 51, '_tax_class', ''),
(360, 51, '_manage_stock', 'no'),
(361, 51, '_backorders', 'no'),
(362, 51, '_sold_individually', 'no'),
(363, 51, '_virtual', 'no'),
(364, 51, '_downloadable', 'no'),
(365, 51, '_download_limit', '-1'),
(366, 51, '_download_expiry', '-1'),
(367, 51, '_stock', NULL),
(368, 51, '_stock_status', 'instock'),
(369, 51, '_wc_average_rating', '0'),
(370, 51, '_wc_review_count', '0'),
(371, 51, '_product_version', '4.6.1'),
(372, 51, '_price', '58000'),
(373, 55, '_wp_attached_file', '2020/11/OnePlus-Nord-Blue.jpeg'),
(374, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:30:\"2020/11/OnePlus-Nord-Blue.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 54, '_edit_last', '1'),
(376, 54, '_thumbnail_id', '55'),
(377, 54, '_regular_price', '29999'),
(378, 54, '_sale_price', '27456'),
(379, 54, 'total_sales', '0'),
(380, 54, '_tax_status', 'taxable'),
(381, 54, '_tax_class', ''),
(382, 54, '_manage_stock', 'no'),
(383, 54, '_backorders', 'no'),
(384, 54, '_sold_individually', 'no'),
(385, 54, '_virtual', 'no'),
(386, 54, '_downloadable', 'no'),
(387, 54, '_download_limit', '-1'),
(388, 54, '_download_expiry', '-1'),
(389, 54, '_stock', NULL),
(390, 54, '_stock_status', 'instock'),
(391, 54, '_wc_average_rating', '0'),
(392, 54, '_wc_review_count', '0'),
(393, 54, '_product_version', '4.6.1'),
(394, 54, '_price', '27456'),
(395, 54, '_edit_lock', '1604663684:1'),
(396, 58, '_wp_attached_file', '2020/11/OnePlus-Nord.jpg'),
(397, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:24:\"2020/11/OnePlus-Nord.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(398, 57, '_edit_last', '1'),
(399, 57, '_thumbnail_id', '58'),
(400, 57, '_regular_price', '29999'),
(401, 57, '_sale_price', '27789'),
(402, 57, 'total_sales', '0'),
(403, 57, '_tax_status', 'taxable'),
(404, 57, '_tax_class', ''),
(405, 57, '_manage_stock', 'no'),
(406, 57, '_backorders', 'no'),
(407, 57, '_sold_individually', 'no'),
(408, 57, '_virtual', 'no'),
(409, 57, '_downloadable', 'no'),
(410, 57, '_download_limit', '-1'),
(411, 57, '_download_expiry', '-1'),
(412, 57, '_stock', NULL),
(413, 57, '_stock_status', 'instock'),
(414, 57, '_wc_average_rating', '0'),
(415, 57, '_wc_review_count', '0'),
(416, 57, '_product_version', '4.6.1'),
(417, 57, '_price', '27789'),
(418, 57, '_edit_lock', '1604663892:1'),
(419, 59, '_edit_last', '1'),
(420, 59, '_edit_lock', '1604663973:1'),
(421, 60, '_wp_attached_file', '2020/11/Oppo-A5.png'),
(422, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:995;s:4:\"file\";s:19:\"2020/11/Oppo-A5.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-256x300.png\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-768x899.png\";s:5:\"width\";i:768;s:6:\"height\";i:899;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Oppo-A5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-600x702.png\";s:5:\"width\";i:600;s:6:\"height\";i:702;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-600x702.png\";s:5:\"width\";i:600;s:6:\"height\";i:702;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(423, 59, '_thumbnail_id', '60'),
(424, 59, '_regular_price', '15990'),
(425, 59, '_sale_price', '14000'),
(426, 59, 'total_sales', '0'),
(427, 59, '_tax_status', 'taxable'),
(428, 59, '_tax_class', ''),
(429, 59, '_manage_stock', 'no'),
(430, 59, '_backorders', 'no'),
(431, 59, '_sold_individually', 'no'),
(432, 59, '_virtual', 'no'),
(433, 59, '_downloadable', 'no'),
(434, 59, '_download_limit', '-1'),
(435, 59, '_download_expiry', '-1'),
(436, 59, '_stock', NULL),
(437, 59, '_stock_status', 'instock'),
(438, 59, '_wc_average_rating', '0'),
(439, 59, '_wc_review_count', '0'),
(440, 59, '_product_version', '4.6.1'),
(441, 59, '_price', '14000'),
(442, 61, '_edit_last', '1'),
(443, 61, '_edit_lock', '1604664056:1'),
(444, 62, '_wp_attached_file', '2020/11/Oppo-A12.jpg'),
(445, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:679;s:4:\"file\";s:20:\"2020/11/Oppo-A12.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(446, 61, '_thumbnail_id', '62'),
(447, 61, '_regular_price', '12999'),
(448, 61, '_sale_price', '11667'),
(449, 61, 'total_sales', '0'),
(450, 61, '_tax_status', 'taxable'),
(451, 61, '_tax_class', ''),
(452, 61, '_manage_stock', 'no'),
(453, 61, '_backorders', 'no'),
(454, 61, '_sold_individually', 'no'),
(455, 61, '_virtual', 'no'),
(456, 61, '_downloadable', 'no'),
(457, 61, '_download_limit', '-1'),
(458, 61, '_download_expiry', '-1'),
(459, 61, '_stock', NULL),
(460, 61, '_stock_status', 'instock'),
(461, 61, '_wc_average_rating', '0'),
(462, 61, '_wc_review_count', '0'),
(463, 61, '_product_version', '4.6.1'),
(464, 61, '_price', '11667'),
(465, 64, '_wp_attached_file', '2020/11/Oppo-A31.jpg'),
(466, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/11/Oppo-A31.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Oppo-A31-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(467, 63, '_edit_last', '1'),
(468, 63, '_thumbnail_id', '64'),
(469, 63, '_regular_price', '12480'),
(470, 63, '_sale_price', '11450'),
(471, 63, 'total_sales', '0'),
(472, 63, '_tax_status', 'taxable'),
(473, 63, '_tax_class', ''),
(474, 63, '_manage_stock', 'no'),
(475, 63, '_backorders', 'no'),
(476, 63, '_sold_individually', 'no'),
(477, 63, '_virtual', 'no'),
(478, 63, '_downloadable', 'no'),
(479, 63, '_download_limit', '-1'),
(480, 63, '_download_expiry', '-1'),
(481, 63, '_stock', NULL),
(482, 63, '_stock_status', 'instock'),
(483, 63, '_wc_average_rating', '0'),
(484, 63, '_wc_review_count', '0'),
(485, 63, '_product_version', '4.6.1'),
(486, 63, '_price', '11450'),
(487, 63, '_edit_lock', '1604664009:1'),
(488, 65, '_edit_last', '1'),
(489, 65, '_edit_lock', '1604664274:1'),
(490, 66, '_wp_attached_file', '2020/11/Oppo-Reno-2F.jpg'),
(491, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/11/Oppo-Reno-2F.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Oppo-Reno-2F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(492, 65, '_thumbnail_id', '66'),
(493, 65, '_regular_price', '21580'),
(494, 65, '_sale_price', '20000'),
(495, 65, 'total_sales', '0'),
(496, 65, '_tax_status', 'taxable'),
(497, 65, '_tax_class', ''),
(498, 65, '_manage_stock', 'no'),
(499, 65, '_backorders', 'no'),
(500, 65, '_sold_individually', 'no'),
(501, 65, '_virtual', 'no'),
(502, 65, '_downloadable', 'no'),
(503, 65, '_download_limit', '-1'),
(504, 65, '_download_expiry', '-1'),
(505, 65, '_stock', NULL),
(506, 65, '_stock_status', 'instock'),
(507, 65, '_wc_average_rating', '0'),
(508, 65, '_wc_review_count', '0'),
(509, 65, '_product_version', '4.6.1'),
(510, 65, '_price', '20000'),
(511, 67, '_edit_last', '1'),
(512, 67, '_edit_lock', '1604664207:1'),
(513, 68, '_wp_attached_file', '2020/11/Mi-10.png'),
(514, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2020/11/Mi-10.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Mi-10-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"Mi-10-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"Mi-10-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(515, 67, '_thumbnail_id', '68'),
(516, 67, '_regular_price', '54999'),
(517, 67, '_sale_price', '52350'),
(518, 67, 'total_sales', '0'),
(519, 67, '_tax_status', 'taxable'),
(520, 67, '_tax_class', ''),
(521, 67, '_manage_stock', 'no'),
(522, 67, '_backorders', 'no'),
(523, 67, '_sold_individually', 'no'),
(524, 67, '_virtual', 'no'),
(525, 67, '_downloadable', 'no'),
(526, 67, '_download_limit', '-1'),
(527, 67, '_download_expiry', '-1'),
(528, 67, '_stock', NULL),
(529, 67, '_stock_status', 'instock'),
(530, 67, '_wc_average_rating', '0'),
(531, 67, '_wc_review_count', '0'),
(532, 67, '_product_version', '4.6.1'),
(533, 67, '_price', '52350'),
(534, 69, '_edit_last', '1'),
(535, 69, '_edit_lock', '1604664406:1'),
(536, 70, '_wp_attached_file', '2020/11/Redmi-Note-7-pro.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(537, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/11/Redmi-Note-7-pro.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 69, '_thumbnail_id', '70'),
(539, 69, '_regular_price', '11999'),
(540, 69, '_sale_price', '9889'),
(541, 69, 'total_sales', '0'),
(542, 69, '_tax_status', 'taxable'),
(543, 69, '_tax_class', ''),
(544, 69, '_manage_stock', 'no'),
(545, 69, '_backorders', 'no'),
(546, 69, '_sold_individually', 'no'),
(547, 69, '_virtual', 'no'),
(548, 69, '_downloadable', 'no'),
(549, 69, '_download_limit', '-1'),
(550, 69, '_download_expiry', '-1'),
(551, 69, '_stock', NULL),
(552, 69, '_stock_status', 'instock'),
(553, 69, '_wc_average_rating', '0'),
(554, 69, '_wc_review_count', '0'),
(555, 69, '_product_version', '4.6.1'),
(556, 69, '_price', '9889'),
(557, 71, '_edit_last', '1'),
(558, 71, '_edit_lock', '1604664504:1'),
(559, 72, '_wp_attached_file', '2020/11/Xiaomi-Mi-Note-10.jpg'),
(560, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1123;s:6:\"height\";i:1500;s:4:\"file\";s:29:\"2020/11/Xiaomi-Mi-Note-10.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Xiaomi-Mi-Note-10-767x1024.jpg\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Xiaomi-Mi-Note-10-768x1026.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-600x801.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-600x801.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(561, 71, '_thumbnail_id', '72'),
(562, 71, '_regular_price', '48999'),
(563, 71, '_sale_price', '47455'),
(564, 71, 'total_sales', '0'),
(565, 71, '_tax_status', 'taxable'),
(566, 71, '_tax_class', ''),
(567, 71, '_manage_stock', 'no'),
(568, 71, '_backorders', 'no'),
(569, 71, '_sold_individually', 'no'),
(570, 71, '_virtual', 'no'),
(571, 71, '_downloadable', 'no'),
(572, 71, '_download_limit', '-1'),
(573, 71, '_download_expiry', '-1'),
(574, 71, '_stock', NULL),
(575, 71, '_stock_status', 'instock'),
(576, 71, '_wc_average_rating', '0'),
(577, 71, '_wc_review_count', '0'),
(578, 71, '_product_version', '4.6.1'),
(579, 71, '_price', '47455'),
(580, 73, '_edit_last', '1'),
(581, 73, '_edit_lock', '1604664565:1'),
(582, 74, '_wp_attached_file', '2020/11/Xiaomi-Mi-A3.jpg'),
(583, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/11/Xiaomi-Mi-A3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(584, 73, '_thumbnail_id', '74'),
(585, 73, '_regular_price', '17899'),
(586, 73, '_sale_price', '16789'),
(587, 73, 'total_sales', '0'),
(588, 73, '_tax_status', 'taxable'),
(589, 73, '_tax_class', ''),
(590, 73, '_manage_stock', 'no'),
(591, 73, '_backorders', 'no'),
(592, 73, '_sold_individually', 'no'),
(593, 73, '_virtual', 'no'),
(594, 73, '_downloadable', 'no'),
(595, 73, '_download_limit', '-1'),
(596, 73, '_download_expiry', '-1'),
(597, 73, '_stock', NULL),
(598, 73, '_stock_status', 'instock'),
(599, 73, '_wc_average_rating', '0'),
(600, 73, '_wc_review_count', '0'),
(601, 73, '_product_version', '4.6.1'),
(602, 73, '_price', '16789'),
(603, 75, '_edit_last', '1'),
(604, 75, '_edit_lock', '1604664689:1'),
(605, 76, '_wp_attached_file', '2020/11/Vivo-Y12.jpg'),
(606, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/11/Vivo-Y12.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(607, 75, '_thumbnail_id', '76'),
(608, 75, '_regular_price', '10990'),
(609, 75, '_sale_price', '9000'),
(610, 75, 'total_sales', '0'),
(611, 75, '_tax_status', 'taxable'),
(612, 75, '_tax_class', ''),
(613, 75, '_manage_stock', 'no'),
(614, 75, '_backorders', 'no'),
(615, 75, '_sold_individually', 'no'),
(616, 75, '_virtual', 'no'),
(617, 75, '_downloadable', 'no'),
(618, 75, '_download_limit', '-1'),
(619, 75, '_download_expiry', '-1'),
(620, 75, '_stock', NULL),
(621, 75, '_stock_status', 'instock'),
(622, 75, '_wc_average_rating', '0'),
(623, 75, '_wc_review_count', '0'),
(624, 75, '_product_version', '4.6.1'),
(625, 75, '_price', '9000'),
(626, 78, '_wp_attached_file', '2020/11/Vivo-Y20.jpg'),
(627, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:826;s:6:\"height\";i:1176;s:4:\"file\";s:20:\"2020/11/Vivo-Y20.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Vivo-Y20-719x1024.jpg\";s:5:\"width\";i:719;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Vivo-Y20-768x1093.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1093;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Y20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-600x854.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-600x854.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(628, 77, '_edit_last', '1'),
(629, 77, '_thumbnail_id', '78'),
(630, 77, '_regular_price', '16699'),
(631, 77, '_sale_price', '14889'),
(632, 77, 'total_sales', '0'),
(633, 77, '_tax_status', 'taxable'),
(634, 77, '_tax_class', ''),
(635, 77, '_manage_stock', 'no'),
(636, 77, '_backorders', 'no'),
(637, 77, '_sold_individually', 'no'),
(638, 77, '_virtual', 'no'),
(639, 77, '_downloadable', 'no'),
(640, 77, '_download_limit', '-1'),
(641, 77, '_download_expiry', '-1'),
(642, 77, '_stock', NULL),
(643, 77, '_stock_status', 'instock'),
(644, 77, '_wc_average_rating', '0'),
(645, 77, '_wc_review_count', '0'),
(646, 77, '_product_version', '4.6.1'),
(647, 77, '_price', '14889'),
(648, 77, '_edit_lock', '1604664811:1'),
(649, 80, '_wp_attached_file', '2020/11/Vivo-Z5i.jpg'),
(650, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:317;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/11/Vivo-Z5i.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Z5i-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(651, 79, '_edit_last', '1'),
(652, 79, '_thumbnail_id', '80'),
(653, 79, '_regular_price', '17989'),
(654, 79, '_sale_price', '16550'),
(655, 79, 'total_sales', '0'),
(656, 79, '_tax_status', 'taxable'),
(657, 79, '_tax_class', ''),
(658, 79, '_manage_stock', 'no'),
(659, 79, '_backorders', 'no'),
(660, 79, '_sold_individually', 'no'),
(661, 79, '_virtual', 'no'),
(662, 79, '_downloadable', 'no'),
(663, 79, '_download_limit', '-1'),
(664, 79, '_download_expiry', '-1'),
(665, 79, '_stock', NULL),
(666, 79, '_stock_status', 'instock'),
(667, 79, '_wc_average_rating', '0'),
(668, 79, '_wc_review_count', '0'),
(669, 79, '_product_version', '4.6.1'),
(670, 79, '_price', '16550'),
(671, 79, '_edit_lock', '1604664903:1'),
(672, 82, '_edit_last', '1'),
(673, 82, '_edit_lock', '1604665055:1'),
(674, 83, '_wp_attached_file', '2020/11/Vivo-Z1x.jpg'),
(675, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:330;s:4:\"file\";s:20:\"2020/11/Vivo-Z1x.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Z1x-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(676, 82, '_thumbnail_id', '83'),
(677, 82, '_regular_price', '16789'),
(678, 82, '_sale_price', '15687'),
(679, 82, 'total_sales', '0'),
(680, 82, '_tax_status', 'taxable'),
(681, 82, '_tax_class', ''),
(682, 82, '_manage_stock', 'no'),
(683, 82, '_backorders', 'no'),
(684, 82, '_sold_individually', 'no'),
(685, 82, '_virtual', 'no'),
(686, 82, '_downloadable', 'no'),
(687, 82, '_download_limit', '-1'),
(688, 82, '_download_expiry', '-1'),
(689, 82, '_stock', NULL),
(690, 82, '_stock_status', 'instock'),
(691, 82, '_wc_average_rating', '0'),
(692, 82, '_wc_review_count', '0'),
(693, 82, '_product_version', '4.6.1'),
(694, 82, '_price', '15687'),
(695, 84, '_edit_last', '1'),
(696, 84, '_edit_lock', '1604665161:1'),
(697, 85, '_wp_attached_file', '2020/11/Samsung-Galaxy-A10s.jpg'),
(698, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2020/11/Samsung-Galaxy-A10s.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(699, 84, '_thumbnail_id', '85'),
(700, 84, '_regular_price', '10599'),
(701, 84, '_sale_price', '9456'),
(702, 84, 'total_sales', '0'),
(703, 84, '_tax_status', 'taxable'),
(704, 84, '_tax_class', ''),
(705, 84, '_manage_stock', 'no'),
(706, 84, '_backorders', 'no'),
(707, 84, '_sold_individually', 'no'),
(708, 84, '_virtual', 'no'),
(709, 84, '_downloadable', 'no'),
(710, 84, '_download_limit', '-1'),
(711, 84, '_download_expiry', '-1'),
(712, 84, '_stock', NULL),
(713, 84, '_stock_status', 'instock'),
(714, 84, '_wc_average_rating', '0'),
(715, 84, '_wc_review_count', '0'),
(716, 84, '_product_version', '4.6.1'),
(717, 84, '_price', '9456'),
(718, 87, '_wp_attached_file', '2020/11/Samsung-Galaxy-M01s.jpg'),
(719, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:31:\"2020/11/Samsung-Galaxy-M01s.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Samsung-Galaxy-M01s-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(720, 86, '_edit_last', '1'),
(721, 86, '_thumbnail_id', '87'),
(722, 86, '_regular_price', '10890'),
(723, 86, '_sale_price', '10000'),
(724, 86, 'total_sales', '0'),
(725, 86, '_tax_status', 'taxable'),
(726, 86, '_tax_class', ''),
(727, 86, '_manage_stock', 'no'),
(728, 86, '_backorders', 'no'),
(729, 86, '_sold_individually', 'no'),
(730, 86, '_virtual', 'no'),
(731, 86, '_downloadable', 'no'),
(732, 86, '_download_limit', '-1'),
(733, 86, '_download_expiry', '-1'),
(734, 86, '_stock', NULL),
(735, 86, '_stock_status', 'instock'),
(736, 86, '_wc_average_rating', '0'),
(737, 86, '_wc_review_count', '0'),
(738, 86, '_product_version', '4.6.1'),
(739, 86, '_price', '10000'),
(740, 86, '_edit_lock', '1604665370:1'),
(741, 88, '_edit_last', '1'),
(742, 88, '_edit_lock', '1604665432:1'),
(743, 89, '_wp_attached_file', '2020/11/Samsung-Galaxy-A51.jpg'),
(744, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:522;s:6:\"height\";i:540;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-A51.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-290x300.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(745, 88, '_thumbnail_id', '89'),
(746, 88, '_regular_price', '22456'),
(747, 88, '_sale_price', '21779'),
(748, 88, 'total_sales', '0'),
(749, 88, '_tax_status', 'taxable'),
(750, 88, '_tax_class', ''),
(751, 88, '_manage_stock', 'no'),
(752, 88, '_backorders', 'no'),
(753, 88, '_sold_individually', 'no'),
(754, 88, '_virtual', 'no'),
(755, 88, '_downloadable', 'no'),
(756, 88, '_download_limit', '-1'),
(757, 88, '_download_expiry', '-1'),
(758, 88, '_stock', NULL),
(759, 88, '_stock_status', 'instock'),
(760, 88, '_wc_average_rating', '0'),
(761, 88, '_wc_review_count', '0'),
(762, 88, '_product_version', '4.6.1'),
(763, 88, '_price', '21779'),
(764, 90, '_edit_last', '1'),
(765, 90, '_edit_lock', '1604665529:1'),
(766, 91, '_wp_attached_file', '2020/11/Samsung-Galaxy-A71.jpg'),
(767, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:224;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-A71.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(768, 90, '_thumbnail_id', '91'),
(769, 90, '_regular_price', '29899'),
(770, 90, '_sale_price', '28288'),
(771, 90, 'total_sales', '0'),
(772, 90, '_tax_status', 'taxable'),
(773, 90, '_tax_class', ''),
(774, 90, '_manage_stock', 'no'),
(775, 90, '_backorders', 'no'),
(776, 90, '_sold_individually', 'no'),
(777, 90, '_virtual', 'no'),
(778, 90, '_downloadable', 'no'),
(779, 90, '_download_limit', '-1'),
(780, 90, '_download_expiry', '-1'),
(781, 90, '_stock', NULL),
(782, 90, '_stock_status', 'instock'),
(783, 90, '_wc_average_rating', '0'),
(784, 90, '_wc_review_count', '0'),
(785, 90, '_product_version', '4.6.1'),
(786, 90, '_price', '28288'),
(787, 92, '_edit_last', '1'),
(788, 92, '_edit_lock', '1604665462:1'),
(789, 93, '_wp_attached_file', '2020/11/Samsung-Galaxy-M31.jpg'),
(790, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:197;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-M31.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(791, 92, '_thumbnail_id', '93'),
(792, 92, '_regular_price', '15780'),
(793, 92, '_sale_price', '15050'),
(794, 92, 'total_sales', '0'),
(795, 92, '_tax_status', 'taxable'),
(796, 92, '_tax_class', ''),
(797, 92, '_manage_stock', 'no'),
(798, 92, '_backorders', 'no'),
(799, 92, '_sold_individually', 'no'),
(800, 92, '_virtual', 'no'),
(801, 92, '_downloadable', 'no'),
(802, 92, '_download_limit', '-1'),
(803, 92, '_download_expiry', '-1'),
(804, 92, '_stock', NULL),
(805, 92, '_stock_status', 'instock'),
(806, 92, '_wc_average_rating', '0'),
(807, 92, '_wc_review_count', '0'),
(808, 92, '_product_version', '4.6.1'),
(809, 92, '_price', '15050'),
(810, 95, '_edit_last', '1'),
(811, 95, '_edit_lock', '1604665546:1'),
(812, 96, '_wp_attached_file', '2020/11/Samsung-Galaxy-Note-10.jpg'),
(813, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1436;s:6:\"height\";i:1500;s:4:\"file\";s:34:\"2020/11/Samsung-Galaxy-Note-10.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-287x300.jpg\";s:5:\"width\";i:287;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Samsung-Galaxy-Note-10-980x1024.jpg\";s:5:\"width\";i:980;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-768x802.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:802;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-600x627.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:627;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-600x627.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:627;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(814, 95, '_thumbnail_id', '96'),
(815, 95, '_regular_price', '82499'),
(816, 95, '_sale_price', '79899'),
(817, 95, 'total_sales', '0'),
(818, 95, '_tax_status', 'taxable'),
(819, 95, '_tax_class', ''),
(820, 95, '_manage_stock', 'no'),
(821, 95, '_backorders', 'no'),
(822, 95, '_sold_individually', 'no'),
(823, 95, '_virtual', 'no'),
(824, 95, '_downloadable', 'no'),
(825, 95, '_download_limit', '-1'),
(826, 95, '_download_expiry', '-1'),
(827, 95, '_stock', NULL),
(828, 95, '_stock_status', 'instock'),
(829, 95, '_wc_average_rating', '0'),
(830, 95, '_wc_review_count', '0'),
(831, 95, '_product_version', '4.6.1'),
(832, 95, '_price', '79899'),
(833, 98, '_wp_attached_file', '2020/11/Samsung-Galaxy-S10.jpg'),
(834, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1304;s:6:\"height\";i:1322;s:4:\"file\";s:30:\"2020/11/Samsung-Galaxy-S10.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-296x300.jpg\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Samsung-Galaxy-S10-1010x1024.jpg\";s:5:\"width\";i:1010;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-768x779.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:779;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-600x608.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-600x608.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(835, 97, '_edit_last', '1'),
(836, 97, '_thumbnail_id', '98'),
(837, 97, '_regular_price', '71000'),
(838, 97, '_sale_price', '69650'),
(839, 97, 'total_sales', '0'),
(840, 97, '_tax_status', 'taxable'),
(841, 97, '_tax_class', ''),
(842, 97, '_manage_stock', 'no'),
(843, 97, '_backorders', 'no'),
(844, 97, '_sold_individually', 'no'),
(845, 97, '_virtual', 'no'),
(846, 97, '_downloadable', 'no'),
(847, 97, '_download_limit', '-1'),
(848, 97, '_download_expiry', '-1'),
(849, 97, '_stock', NULL),
(850, 97, '_stock_status', 'instock'),
(851, 97, '_wc_average_rating', '0'),
(852, 97, '_wc_review_count', '0'),
(853, 97, '_product_version', '4.6.1'),
(854, 97, '_price', '69650'),
(855, 97, '_edit_lock', '1604665753:1'),
(856, 99, '_edit_last', '1'),
(857, 99, '_edit_lock', '1604665814:1'),
(858, 100, '_wp_attached_file', '2020/11/Samsung-Galaxy-Note-20.jpg'),
(859, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:693;s:4:\"file\";s:34:\"2020/11/Samsung-Galaxy-Note-20.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-294x300.jpg\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-600x612.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-600x612.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(860, 99, '_thumbnail_id', '100'),
(861, 99, '_regular_price', '76899'),
(862, 99, '_sale_price', '75645'),
(863, 99, 'total_sales', '0'),
(864, 99, '_tax_status', 'taxable'),
(865, 99, '_tax_class', ''),
(866, 99, '_manage_stock', 'no'),
(867, 99, '_backorders', 'no'),
(868, 99, '_sold_individually', 'no'),
(869, 99, '_virtual', 'no'),
(870, 99, '_downloadable', 'no'),
(871, 99, '_download_limit', '-1'),
(872, 99, '_download_expiry', '-1'),
(873, 99, '_stock', NULL),
(874, 99, '_stock_status', 'instock'),
(875, 99, '_wc_average_rating', '0'),
(876, 99, '_wc_review_count', '0'),
(877, 99, '_product_version', '4.6.1'),
(878, 99, '_price', '75645'),
(879, 101, '_edit_last', '1'),
(880, 101, '_edit_lock', '1604665952:1'),
(881, 102, '_wp_attached_file', '2020/11/Apple-watch-series-3.jpg'),
(882, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:466;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(883, 103, '_wp_attached_file', '2020/11/Apple-watch-series-4.jpg'),
(884, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:550;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(885, 104, '_wp_attached_file', '2020/11/Apple-watch-series-5.jpg'),
(886, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-5.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Apple-watch-series-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(887, 105, '_wp_attached_file', '2020/11/Apple-watch-series-6.jpg'),
(888, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:630;s:4:\"file\";s:32:\"2020/11/Apple-watch-series-6.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Apple-watch-series-6-1024x538.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-600x315.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-600x315.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(889, 106, '_wp_attached_file', '2020/11/Fastrack-Analog-digital-watch-.jpeg'),
(890, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:313;s:6:\"height\";i:500;s:4:\"file\";s:43:\"2020/11/Fastrack-Analog-digital-watch-.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--188x300.jpeg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(891, 107, '_wp_attached_file', '2020/11/Fastrack-black-watch.jpg'),
(892, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:303;s:6:\"height\";i:500;s:4:\"file\";s:32:\"2020/11/Fastrack-black-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-182x300.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Fastrack-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(893, 108, '_wp_attached_file', '2020/11/Fastrack-Casual-Analog-watch.jpg'),
(894, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:339;s:6:\"height\";i:550;s:4:\"file\";s:40:\"2020/11/Fastrack-Casual-Analog-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-185x300.jpg\";s:5:\"width\";i:185;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(895, 109, '_wp_attached_file', '2020/11/Fastrack-Navy-Blue-Casual-watch.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(896, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:824;s:6:\"height\";i:1099;s:4:\"file\";s:43:\"2020/11/Fastrack-Navy-Blue-Casual-watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Fastrack-Navy-Blue-Casual-watch-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Fastrack-Navy-Blue-Casual-watch-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(897, 110, '_wp_attached_file', '2020/11/Fastrack-silver-watch.jpg'),
(898, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:303;s:6:\"height\";i:550;s:4:\"file\";s:33:\"2020/11/Fastrack-silver-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-165x300.jpg\";s:5:\"width\";i:165;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"Fastrack-silver-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(899, 111, '_wp_attached_file', '2020/11/Fastrack-watch.jpg'),
(900, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:26:\"2020/11/Fastrack-watch.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Fastrack-watch-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Fastrack-watch-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"Fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(901, 112, '_wp_attached_file', '2020/11/Fastrack-black-magic-analog-black-dial-watch.jpg'),
(902, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:836;s:6:\"height\";i:1500;s:4:\"file\";s:56:\"2020/11/Fastrack-black-magic-analog-black-dial-watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-571x1024.jpg\";s:5:\"width\";i:571;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-768x1378.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1378;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-600x1077.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1077;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-600x1077.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1077;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(903, 113, '_wp_attached_file', '2020/11/Fastrack-DIGITAL.jpg'),
(904, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:726;s:4:\"file\";s:28:\"2020/11/Fastrack-DIGITAL.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-256x300.jpg\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-600x703.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-600x703.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(905, 114, '_wp_attached_file', '2020/11/Fitbit-Charge-2.jpg'),
(906, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:592;s:4:\"file\";s:27:\"2020/11/Fitbit-Charge-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(907, 115, '_wp_attached_file', '2020/11/Fitbit-Charge-4.jpg'),
(908, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:887;s:4:\"file\";s:27:\"2020/11/Fitbit-Charge-4.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x266.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-768x681.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-600x532.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-600x532.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(909, 116, '_wp_attached_file', '2020/11/Fitbit-Iconic-Watch.jpg'),
(910, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1262;s:6:\"height\";i:1500;s:4:\"file\";s:31:\"2020/11/Fitbit-Iconic-Watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-252x300.jpg\";s:5:\"width\";i:252;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Fitbit-Iconic-Watch-862x1024.jpg\";s:5:\"width\";i:862;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-768x913.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:913;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-600x713.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:713;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-600x713.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:713;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(911, 117, '_wp_attached_file', '2020/11/Fitbit-Inspire-2.png'),
(912, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1572;s:6:\"height\";i:1572;s:4:\"file\";s:28:\"2020/11/Fitbit-Inspire-2.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Fitbit-Inspire-2-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"Fitbit-Inspire-2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(913, 118, '_wp_attached_file', '2020/11/Fitbit-Sense.jpg'),
(914, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:312;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2020/11/Fitbit-Sense.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-187x300.jpg\";s:5:\"width\";i:187;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Fitbit-Sense-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(915, 119, '_wp_attached_file', '2020/11/Fitbit-Versa-2.png'),
(916, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1572;s:6:\"height\";i:1572;s:4:\"file\";s:26:\"2020/11/Fitbit-Versa-2.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Fitbit-Versa-2-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Fitbit-Versa-2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(917, 120, '_wp_attached_file', '2020/11/Gshock-black-watch.jpg'),
(918, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2020/11/Gshock-black-watch.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(919, 121, '_wp_attached_file', '2020/11/G-Shock-casio-mud-master-watch.jpg'),
(920, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:1100;s:4:\"file\";s:42:\"2020/11/G-Shock-casio-mud-master-watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"G-Shock-casio-mud-master-watch-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(921, 122, '_wp_attached_file', '2020/11/G-Shock-steel-watch.jpg'),
(922, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:197;s:6:\"height\";i:256;s:4:\"file\";s:31:\"2020/11/G-Shock-steel-watch.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(923, 123, '_wp_attached_file', '2020/11/Mi-smart-band-4.jpg'),
(924, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:355;s:6:\"height\";i:355;s:4:\"file\";s:27:\"2020/11/Mi-smart-band-4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(925, 124, '_wp_attached_file', '2020/11/Rolex-Oyster.jpg'),
(926, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:185;s:4:\"file\";s:24:\"2020/11/Rolex-Oyster.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(927, 125, '_wp_attached_file', '2020/11/Rolex-rose-gold.jpg'),
(928, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2304;s:4:\"file\";s:27:\"2020/11/Rolex-rose-gold.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Rolex-rose-gold-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Rolex-rose-gold-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"Rolex-rose-gold-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:29:\"Rolex-rose-gold-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Rolex-rose-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(929, 126, '_wp_attached_file', '2020/11/Rolex-Submariner-Black.jpg'),
(930, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:331;s:4:\"file\";s:34:\"2020/11/Rolex-Submariner-Black.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(931, 127, '_wp_attached_file', '2020/11/Sonata-steel-analog-blue-dial-watch.jpg'),
(932, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:715;s:6:\"height\";i:1500;s:4:\"file\";s:47:\"2020/11/Sonata-steel-analog-blue-dial-watch.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-143x300.jpg\";s:5:\"width\";i:143;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-488x1024.jpg\";s:5:\"width\";i:488;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-600x1259.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-600x1259.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(933, 128, '_wp_attached_file', '2020/11/Sonata-wedding-analog-blue-watch.jpg'),
(934, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:342;s:4:\"file\";s:44:\"2020/11/Sonata-wedding-analog-blue-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(935, 129, '_wp_attached_file', '2020/11/Square-dial-fastrack-watch.jpg'),
(936, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2020/11/Square-dial-fastrack-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(937, 130, '_wp_attached_file', '2020/11/Titan-Analog-watch-gold.jpeg'),
(938, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:400;s:4:\"file\";s:36:\"2020/11/Titan-Analog-watch-gold.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-167x300.jpeg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-222x300.jpeg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-222x300.jpeg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(939, 131, '_wp_attached_file', '2020/11/Titan-analog-watch.jpg'),
(940, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:427;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2020/11/Titan-analog-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-256x300.jpg\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Titan-analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(941, 132, '_wp_attached_file', '2020/11/Titan-Edge-Ceramic.jpg'),
(942, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:224;s:4:\"file\";s:30:\"2020/11/Titan-Edge-Ceramic.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(943, 133, '_wp_attached_file', '2020/11/Titan-gold.jpg'),
(944, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:731;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/11/Titan-gold.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Titan-gold-146x300.jpg\";s:5:\"width\";i:146;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Titan-gold-499x1024.jpg\";s:5:\"width\";i:499;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Titan-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"Titan-gold-600x1231.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"Titan-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"Titan-gold-600x1231.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(945, 134, '_wp_attached_file', '2020/11/Titan-Maritime-Analog-Green-dial-watch.jpg'),
(946, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:50:\"2020/11/Titan-Maritime-Analog-Green-dial-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(947, 135, '_wp_attached_file', '2020/11/Titan-Royal-Analog-watch.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(948, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:328;s:6:\"height\";i:328;s:4:\"file\";s:36:\"2020/11/Titan-Royal-Analog-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(949, 136, '_wp_attached_file', '2020/11/Xiaomi-watch-4G-LTE.jpg'),
(950, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2020/11/Xiaomi-watch-4G-LTE.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(951, 101, '_thumbnail_id', '102'),
(952, 101, '_regular_price', '16800'),
(953, 101, '_sale_price', '16240'),
(954, 101, 'total_sales', '0'),
(955, 101, '_tax_status', 'taxable'),
(956, 101, '_tax_class', ''),
(957, 101, '_manage_stock', 'no'),
(958, 101, '_backorders', 'no'),
(959, 101, '_sold_individually', 'no'),
(960, 101, '_virtual', 'no'),
(961, 101, '_downloadable', 'no'),
(962, 101, '_download_limit', '-1'),
(963, 101, '_download_expiry', '-1'),
(964, 101, '_stock', NULL),
(965, 101, '_stock_status', 'instock'),
(966, 101, '_wc_average_rating', '0'),
(967, 101, '_wc_review_count', '0'),
(968, 101, '_product_version', '4.6.1'),
(969, 101, '_price', '16240'),
(970, 137, '_edit_last', '1'),
(971, 137, '_thumbnail_id', '103'),
(972, 137, '_regular_price', '67900'),
(973, 137, '_sale_price', '66800'),
(974, 137, 'total_sales', '0'),
(975, 137, '_tax_status', 'taxable'),
(976, 137, '_tax_class', ''),
(977, 137, '_manage_stock', 'no'),
(978, 137, '_backorders', 'no'),
(979, 137, '_sold_individually', 'no'),
(980, 137, '_virtual', 'no'),
(981, 137, '_downloadable', 'no'),
(982, 137, '_download_limit', '-1'),
(983, 137, '_download_expiry', '-1'),
(984, 137, '_stock', NULL),
(985, 137, '_stock_status', 'instock'),
(986, 137, '_wc_average_rating', '0'),
(987, 137, '_wc_review_count', '0'),
(988, 137, '_product_version', '4.6.1'),
(989, 137, '_price', '66800'),
(990, 137, '_edit_lock', '1604666149:1'),
(991, 138, '_edit_last', '1'),
(992, 138, '_edit_lock', '1604666218:1'),
(993, 138, '_thumbnail_id', '104'),
(994, 138, '_regular_price', '51600'),
(995, 138, '_sale_price', '50000'),
(996, 138, 'total_sales', '0'),
(997, 138, '_tax_status', 'taxable'),
(998, 138, '_tax_class', ''),
(999, 138, '_manage_stock', 'no'),
(1000, 138, '_backorders', 'no'),
(1001, 138, '_sold_individually', 'no'),
(1002, 138, '_virtual', 'no'),
(1003, 138, '_downloadable', 'no'),
(1004, 138, '_download_limit', '-1'),
(1005, 138, '_download_expiry', '-1'),
(1006, 138, '_stock', NULL),
(1007, 138, '_stock_status', 'instock'),
(1008, 138, '_wc_average_rating', '0'),
(1009, 138, '_wc_review_count', '0'),
(1010, 138, '_product_version', '4.6.1'),
(1011, 138, '_price', '50000'),
(1012, 139, '_edit_last', '1'),
(1013, 139, '_edit_lock', '1604668387:1'),
(1014, 139, '_thumbnail_id', '105'),
(1015, 139, '_regular_price', '42600'),
(1016, 139, '_sale_price', '40799'),
(1017, 139, 'total_sales', '0'),
(1018, 139, '_tax_status', 'taxable'),
(1019, 139, '_tax_class', ''),
(1020, 139, '_manage_stock', 'no'),
(1021, 139, '_backorders', 'no'),
(1022, 139, '_sold_individually', 'no'),
(1023, 139, '_virtual', 'no'),
(1024, 139, '_downloadable', 'no'),
(1025, 139, '_download_limit', '-1'),
(1026, 139, '_download_expiry', '-1'),
(1027, 139, '_stock', NULL),
(1028, 139, '_stock_status', 'instock'),
(1029, 139, '_wc_average_rating', '0'),
(1030, 139, '_wc_review_count', '0'),
(1031, 139, '_product_version', '4.6.1'),
(1032, 139, '_price', '40799'),
(1033, 140, '_edit_last', '1'),
(1034, 140, '_edit_lock', '1604668449:1'),
(1035, 140, '_thumbnail_id', '106'),
(1036, 140, '_regular_price', '3255'),
(1037, 140, '_sale_price', '2990'),
(1038, 140, 'total_sales', '0'),
(1039, 140, '_tax_status', 'taxable'),
(1040, 140, '_tax_class', ''),
(1041, 140, '_manage_stock', 'no'),
(1042, 140, '_backorders', 'no'),
(1043, 140, '_sold_individually', 'no'),
(1044, 140, '_virtual', 'no'),
(1045, 140, '_downloadable', 'no'),
(1046, 140, '_download_limit', '-1'),
(1047, 140, '_download_expiry', '-1'),
(1048, 140, '_stock', NULL),
(1049, 140, '_stock_status', 'instock'),
(1050, 140, '_wc_average_rating', '0'),
(1051, 140, '_wc_review_count', '0'),
(1052, 140, '_product_version', '4.6.1'),
(1053, 140, '_price', '2990'),
(1054, 141, '_edit_last', '1'),
(1055, 141, '_edit_lock', '1604668398:1'),
(1056, 141, '_thumbnail_id', '107'),
(1057, 141, '_regular_price', '3899'),
(1058, 141, '_sale_price', '3215'),
(1059, 141, 'total_sales', '0'),
(1060, 141, '_tax_status', 'taxable'),
(1061, 141, '_tax_class', ''),
(1062, 141, '_manage_stock', 'no'),
(1063, 141, '_backorders', 'no'),
(1064, 141, '_sold_individually', 'no'),
(1065, 141, '_virtual', 'no'),
(1066, 141, '_downloadable', 'no'),
(1067, 141, '_download_limit', '-1'),
(1068, 141, '_download_expiry', '-1'),
(1069, 141, '_stock', NULL),
(1070, 141, '_stock_status', 'instock'),
(1071, 141, '_wc_average_rating', '0'),
(1072, 141, '_wc_review_count', '0'),
(1073, 141, '_product_version', '4.6.1'),
(1074, 141, '_price', '3215'),
(1075, 142, '_edit_last', '1'),
(1076, 142, '_edit_lock', '1604668486:1'),
(1077, 142, '_thumbnail_id', '108'),
(1078, 142, '_regular_price', '1580'),
(1079, 142, '_sale_price', '1356'),
(1080, 142, 'total_sales', '0'),
(1081, 142, '_tax_status', 'taxable'),
(1082, 142, '_tax_class', ''),
(1083, 142, '_manage_stock', 'no'),
(1084, 142, '_backorders', 'no'),
(1085, 142, '_sold_individually', 'no'),
(1086, 142, '_virtual', 'no'),
(1087, 142, '_downloadable', 'no'),
(1088, 142, '_download_limit', '-1'),
(1089, 142, '_download_expiry', '-1'),
(1090, 142, '_stock', NULL),
(1091, 142, '_stock_status', 'instock'),
(1092, 142, '_wc_average_rating', '0'),
(1093, 142, '_wc_review_count', '0'),
(1094, 142, '_product_version', '4.6.1'),
(1095, 142, '_price', '1356'),
(1096, 144, '_edit_last', '1'),
(1097, 144, '_thumbnail_id', '109'),
(1098, 144, '_regular_price', '1396'),
(1099, 144, '_sale_price', '1165'),
(1100, 144, 'total_sales', '0'),
(1101, 144, '_tax_status', 'taxable'),
(1102, 144, '_tax_class', ''),
(1103, 144, '_manage_stock', 'no'),
(1104, 144, '_backorders', 'no'),
(1105, 144, '_sold_individually', 'no'),
(1106, 144, '_virtual', 'no'),
(1107, 144, '_downloadable', 'no'),
(1108, 144, '_download_limit', '-1'),
(1109, 144, '_download_expiry', '-1'),
(1110, 144, '_stock', NULL),
(1111, 144, '_stock_status', 'instock'),
(1112, 144, '_wc_average_rating', '0'),
(1113, 144, '_wc_review_count', '0'),
(1114, 144, '_product_version', '4.6.1'),
(1115, 144, '_price', '1165'),
(1116, 144, '_edit_lock', '1604668568:1'),
(1117, 146, '_edit_last', '1'),
(1118, 146, '_edit_lock', '1604668645:1'),
(1119, 146, '_thumbnail_id', '110'),
(1120, 146, '_regular_price', '2569'),
(1121, 146, '_sale_price', '2289'),
(1122, 146, 'total_sales', '0'),
(1123, 146, '_tax_status', 'taxable'),
(1124, 146, '_tax_class', ''),
(1125, 146, '_manage_stock', 'no'),
(1126, 146, '_backorders', 'no'),
(1127, 146, '_sold_individually', 'no'),
(1128, 146, '_virtual', 'no'),
(1129, 146, '_downloadable', 'no'),
(1130, 146, '_download_limit', '-1'),
(1131, 146, '_download_expiry', '-1'),
(1132, 146, '_stock', NULL),
(1133, 146, '_stock_status', 'instock'),
(1134, 146, '_wc_average_rating', '0'),
(1135, 146, '_wc_review_count', '0'),
(1136, 146, '_product_version', '4.6.1'),
(1137, 146, '_price', '2289'),
(1138, 147, '_edit_last', '1'),
(1139, 147, '_edit_lock', '1604668727:1'),
(1140, 147, '_thumbnail_id', '111'),
(1141, 147, '_regular_price', '1236'),
(1142, 147, '_sale_price', '1100'),
(1143, 147, 'total_sales', '0'),
(1144, 147, '_tax_status', 'taxable'),
(1145, 147, '_tax_class', ''),
(1146, 147, '_manage_stock', 'no'),
(1147, 147, '_backorders', 'no'),
(1148, 147, '_sold_individually', 'no'),
(1149, 147, '_virtual', 'no'),
(1150, 147, '_downloadable', 'no'),
(1151, 147, '_download_limit', '-1'),
(1152, 147, '_download_expiry', '-1'),
(1153, 147, '_stock', NULL),
(1154, 147, '_stock_status', 'instock'),
(1155, 147, '_wc_average_rating', '0'),
(1156, 147, '_wc_review_count', '0'),
(1157, 147, '_product_version', '4.6.1'),
(1158, 147, '_price', '1100'),
(1159, 148, '_edit_last', '1'),
(1160, 148, '_edit_lock', '1604668851:1'),
(1161, 148, '_thumbnail_id', '112'),
(1162, 148, '_regular_price', '3050'),
(1163, 148, '_sale_price', '2750'),
(1164, 148, 'total_sales', '0'),
(1165, 148, '_tax_status', 'taxable'),
(1166, 148, '_tax_class', ''),
(1167, 148, '_manage_stock', 'no'),
(1168, 148, '_backorders', 'no'),
(1169, 148, '_sold_individually', 'no'),
(1170, 148, '_virtual', 'no'),
(1171, 148, '_downloadable', 'no'),
(1172, 148, '_download_limit', '-1'),
(1173, 148, '_download_expiry', '-1'),
(1174, 148, '_stock', NULL),
(1175, 148, '_stock_status', 'instock'),
(1176, 148, '_wc_average_rating', '0'),
(1177, 148, '_wc_review_count', '0'),
(1178, 148, '_product_version', '4.6.1'),
(1179, 148, '_price', '2750'),
(1180, 149, '_edit_last', '1'),
(1181, 149, '_edit_lock', '1604668923:1'),
(1182, 149, '_thumbnail_id', '113'),
(1183, 149, '_regular_price', '3450'),
(1184, 149, '_sale_price', '3000'),
(1185, 149, 'total_sales', '0'),
(1186, 149, '_tax_status', 'taxable'),
(1187, 149, '_tax_class', ''),
(1188, 149, '_manage_stock', 'no'),
(1189, 149, '_backorders', 'no'),
(1190, 149, '_sold_individually', 'no'),
(1191, 149, '_virtual', 'no'),
(1192, 149, '_downloadable', 'no'),
(1193, 149, '_download_limit', '-1'),
(1194, 149, '_download_expiry', '-1'),
(1195, 149, '_stock', NULL),
(1196, 149, '_stock_status', 'instock'),
(1197, 149, '_wc_average_rating', '0'),
(1198, 149, '_wc_review_count', '0'),
(1199, 149, '_product_version', '4.6.1'),
(1200, 149, '_price', '3000'),
(1201, 151, '_edit_last', '1'),
(1202, 151, '_edit_lock', '1604669038:1'),
(1203, 151, '_thumbnail_id', '114'),
(1204, 151, '_regular_price', '30999'),
(1205, 151, '_sale_price', '29899'),
(1206, 151, 'total_sales', '0'),
(1207, 151, '_tax_status', 'taxable'),
(1208, 151, '_tax_class', ''),
(1209, 151, '_manage_stock', 'no'),
(1210, 151, '_backorders', 'no'),
(1211, 151, '_sold_individually', 'no'),
(1212, 151, '_virtual', 'no'),
(1213, 151, '_downloadable', 'no'),
(1214, 151, '_download_limit', '-1'),
(1215, 151, '_download_expiry', '-1'),
(1216, 151, '_stock', NULL),
(1217, 151, '_stock_status', 'instock'),
(1218, 151, '_wc_average_rating', '0'),
(1219, 151, '_wc_review_count', '0'),
(1220, 151, '_product_version', '4.6.1'),
(1221, 151, '_price', '29899'),
(1222, 153, '_edit_last', '1'),
(1223, 153, '_thumbnail_id', '115'),
(1224, 153, '_regular_price', '14569'),
(1225, 153, '_sale_price', '13789'),
(1226, 153, 'total_sales', '0'),
(1227, 153, '_tax_status', 'taxable'),
(1228, 153, '_tax_class', ''),
(1229, 153, '_manage_stock', 'no'),
(1230, 153, '_backorders', 'no'),
(1231, 153, '_sold_individually', 'no'),
(1232, 153, '_virtual', 'no'),
(1233, 153, '_downloadable', 'no'),
(1234, 153, '_download_limit', '-1'),
(1235, 153, '_download_expiry', '-1'),
(1236, 153, '_stock', NULL),
(1237, 153, '_stock_status', 'instock'),
(1238, 153, '_wc_average_rating', '0'),
(1239, 153, '_wc_review_count', '0'),
(1240, 153, '_product_version', '4.6.1'),
(1241, 153, '_price', '13789'),
(1242, 153, '_edit_lock', '1604669122:1'),
(1243, 154, '_edit_last', '1'),
(1244, 154, '_thumbnail_id', '116'),
(1245, 154, '_regular_price', '26899'),
(1246, 154, '_sale_price', '26300'),
(1247, 154, 'total_sales', '0'),
(1248, 154, '_tax_status', 'taxable'),
(1249, 154, '_tax_class', ''),
(1250, 154, '_manage_stock', 'no'),
(1251, 154, '_backorders', 'no'),
(1252, 154, '_sold_individually', 'no'),
(1253, 154, '_virtual', 'no'),
(1254, 154, '_downloadable', 'no'),
(1255, 154, '_download_limit', '-1'),
(1256, 154, '_download_expiry', '-1'),
(1257, 154, '_stock', NULL),
(1258, 154, '_stock_status', 'instock'),
(1259, 154, '_wc_average_rating', '0'),
(1260, 154, '_wc_review_count', '0'),
(1261, 154, '_product_version', '4.6.1'),
(1262, 154, '_price', '26300'),
(1263, 154, '_edit_lock', '1604669333:1'),
(1264, 155, '_edit_last', '1'),
(1265, 155, '_edit_lock', '1604669324:1'),
(1266, 155, '_thumbnail_id', '117'),
(1267, 155, '_regular_price', '29459'),
(1268, 155, '_sale_price', '27320'),
(1269, 155, 'total_sales', '0'),
(1270, 155, '_tax_status', 'taxable'),
(1271, 155, '_tax_class', ''),
(1272, 155, '_manage_stock', 'no'),
(1273, 155, '_backorders', 'no'),
(1274, 155, '_sold_individually', 'no'),
(1275, 155, '_virtual', 'no'),
(1276, 155, '_downloadable', 'no'),
(1277, 155, '_download_limit', '-1'),
(1278, 155, '_download_expiry', '-1'),
(1279, 155, '_stock', NULL),
(1280, 155, '_stock_status', 'instock'),
(1281, 155, '_wc_average_rating', '0'),
(1282, 155, '_wc_review_count', '0'),
(1283, 155, '_product_version', '4.6.1'),
(1284, 155, '_price', '27320'),
(1285, 156, '_edit_last', '1'),
(1286, 156, '_thumbnail_id', '118'),
(1287, 156, '_regular_price', '49899'),
(1288, 156, '_sale_price', '48789'),
(1289, 156, 'total_sales', '0'),
(1290, 156, '_tax_status', 'taxable'),
(1291, 156, '_tax_class', ''),
(1292, 156, '_manage_stock', 'no'),
(1293, 156, '_backorders', 'no'),
(1294, 156, '_sold_individually', 'no'),
(1295, 156, '_virtual', 'no'),
(1296, 156, '_downloadable', 'no'),
(1297, 156, '_download_limit', '-1'),
(1298, 156, '_download_expiry', '-1'),
(1299, 156, '_stock', NULL),
(1300, 156, '_stock_status', 'instock'),
(1301, 156, '_wc_average_rating', '0'),
(1302, 156, '_wc_review_count', '0'),
(1303, 156, '_product_version', '4.6.1'),
(1304, 156, '_price', '48789'),
(1305, 156, '_edit_lock', '1604669454:1'),
(1306, 157, '_edit_last', '1'),
(1307, 157, '_edit_lock', '1604669558:1'),
(1308, 157, '_thumbnail_id', '119'),
(1309, 157, '_regular_price', '21599'),
(1310, 157, '_sale_price', '20000'),
(1311, 157, 'total_sales', '0'),
(1312, 157, '_tax_status', 'taxable'),
(1313, 157, '_tax_class', ''),
(1314, 157, '_manage_stock', 'no'),
(1315, 157, '_backorders', 'no'),
(1316, 157, '_sold_individually', 'no'),
(1317, 157, '_virtual', 'no'),
(1318, 157, '_downloadable', 'no'),
(1319, 157, '_download_limit', '-1'),
(1320, 157, '_download_expiry', '-1'),
(1321, 157, '_stock', NULL),
(1322, 157, '_stock_status', 'instock'),
(1323, 157, '_wc_average_rating', '0'),
(1324, 157, '_wc_review_count', '0'),
(1325, 157, '_product_version', '4.6.1'),
(1326, 157, '_price', '20000'),
(1327, 158, '_edit_last', '1'),
(1328, 158, '_edit_lock', '1604669697:1'),
(1329, 158, '_thumbnail_id', '120'),
(1330, 158, '_regular_price', '7890'),
(1331, 158, '_sale_price', '7000'),
(1332, 158, 'total_sales', '0'),
(1333, 158, '_tax_status', 'taxable'),
(1334, 158, '_tax_class', ''),
(1335, 158, '_manage_stock', 'no'),
(1336, 158, '_backorders', 'no'),
(1337, 158, '_sold_individually', 'no'),
(1338, 158, '_virtual', 'no'),
(1339, 158, '_downloadable', 'no'),
(1340, 158, '_download_limit', '-1'),
(1341, 158, '_download_expiry', '-1'),
(1342, 158, '_stock', NULL),
(1343, 158, '_stock_status', 'instock'),
(1344, 158, '_wc_average_rating', '0'),
(1345, 158, '_wc_review_count', '0'),
(1346, 158, '_product_version', '4.6.1'),
(1347, 158, '_price', '7000'),
(1348, 159, '_edit_last', '1'),
(1349, 159, '_edit_lock', '1604669809:1'),
(1350, 159, '_thumbnail_id', '122'),
(1351, 159, '_regular_price', '21456'),
(1352, 159, '_sale_price', '18980'),
(1353, 159, 'total_sales', '0'),
(1354, 159, '_tax_status', 'taxable'),
(1355, 159, '_tax_class', ''),
(1356, 159, '_manage_stock', 'no'),
(1357, 159, '_backorders', 'no'),
(1358, 159, '_sold_individually', 'no'),
(1359, 159, '_virtual', 'no'),
(1360, 159, '_downloadable', 'no'),
(1361, 159, '_download_limit', '-1'),
(1362, 159, '_download_expiry', '-1'),
(1363, 159, '_stock', NULL),
(1364, 159, '_stock_status', 'instock'),
(1365, 159, '_wc_average_rating', '0'),
(1366, 159, '_wc_review_count', '0'),
(1367, 159, '_product_version', '4.6.1'),
(1368, 159, '_price', '18980'),
(1369, 160, '_edit_last', '1'),
(1370, 160, '_edit_lock', '1604670036:1'),
(1371, 160, '_thumbnail_id', '121'),
(1372, 160, '_regular_price', '8999'),
(1373, 160, '_sale_price', '7890'),
(1374, 160, 'total_sales', '0'),
(1375, 160, '_tax_status', 'taxable'),
(1376, 160, '_tax_class', ''),
(1377, 160, '_manage_stock', 'no'),
(1378, 160, '_backorders', 'no'),
(1379, 160, '_sold_individually', 'no'),
(1380, 160, '_virtual', 'no'),
(1381, 160, '_downloadable', 'no'),
(1382, 160, '_download_limit', '-1'),
(1383, 160, '_download_expiry', '-1'),
(1384, 160, '_stock', NULL),
(1385, 160, '_stock_status', 'instock'),
(1386, 160, '_wc_average_rating', '0'),
(1387, 160, '_wc_review_count', '0'),
(1388, 160, '_product_version', '4.6.1'),
(1389, 160, '_price', '7890'),
(1390, 161, '_edit_last', '1'),
(1391, 161, '_edit_lock', '1604669969:1'),
(1392, 161, '_thumbnail_id', '123'),
(1393, 161, '_regular_price', '2998'),
(1394, 161, '_sale_price', '2568'),
(1395, 161, 'total_sales', '0'),
(1396, 161, '_tax_status', 'taxable'),
(1397, 161, '_tax_class', ''),
(1398, 161, '_manage_stock', 'no'),
(1399, 161, '_backorders', 'no'),
(1400, 161, '_sold_individually', 'no'),
(1401, 161, '_virtual', 'no'),
(1402, 161, '_downloadable', 'no'),
(1403, 161, '_download_limit', '-1'),
(1404, 161, '_download_expiry', '-1'),
(1405, 161, '_stock', NULL),
(1406, 161, '_stock_status', 'instock'),
(1407, 161, '_wc_average_rating', '0'),
(1408, 161, '_wc_review_count', '0'),
(1409, 161, '_product_version', '4.6.1'),
(1410, 161, '_price', '2568'),
(1411, 163, '_edit_last', '1'),
(1412, 163, '_edit_lock', '1604670171:1'),
(1413, 163, '_thumbnail_id', '124'),
(1414, 163, '_regular_price', '88885'),
(1415, 163, '_sale_price', '88123'),
(1416, 163, 'total_sales', '0'),
(1417, 163, '_tax_status', 'taxable'),
(1418, 163, '_tax_class', ''),
(1419, 163, '_manage_stock', 'no'),
(1420, 163, '_backorders', 'no'),
(1421, 163, '_sold_individually', 'no'),
(1422, 163, '_virtual', 'no'),
(1423, 163, '_downloadable', 'no'),
(1424, 163, '_download_limit', '-1'),
(1425, 163, '_download_expiry', '-1'),
(1426, 163, '_stock', NULL),
(1427, 163, '_stock_status', 'instock'),
(1428, 163, '_wc_average_rating', '0'),
(1429, 163, '_wc_review_count', '0'),
(1430, 163, '_product_version', '4.6.1'),
(1431, 163, '_price', '88123'),
(1432, 164, '_edit_last', '1'),
(1433, 164, '_edit_lock', '1604670246:1'),
(1434, 164, '_thumbnail_id', '125'),
(1435, 164, '_regular_price', '21459'),
(1436, 164, '_sale_price', '19789'),
(1437, 164, 'total_sales', '0'),
(1438, 164, '_tax_status', 'taxable'),
(1439, 164, '_tax_class', ''),
(1440, 164, '_manage_stock', 'no'),
(1441, 164, '_backorders', 'no'),
(1442, 164, '_sold_individually', 'no'),
(1443, 164, '_virtual', 'no'),
(1444, 164, '_downloadable', 'no'),
(1445, 164, '_download_limit', '-1'),
(1446, 164, '_download_expiry', '-1'),
(1447, 164, '_stock', NULL),
(1448, 164, '_stock_status', 'instock'),
(1449, 164, '_wc_average_rating', '0'),
(1450, 164, '_wc_review_count', '0'),
(1451, 164, '_product_version', '4.6.1'),
(1452, 164, '_price', '19789'),
(1453, 165, '_edit_last', '1'),
(1454, 165, '_edit_lock', '1604670318:1'),
(1455, 165, '_thumbnail_id', '126'),
(1456, 165, '_regular_price', '97566'),
(1457, 165, '_sale_price', '96678'),
(1458, 165, 'total_sales', '0'),
(1459, 165, '_tax_status', 'taxable'),
(1460, 165, '_tax_class', ''),
(1461, 165, '_manage_stock', 'no'),
(1462, 165, '_backorders', 'no'),
(1463, 165, '_sold_individually', 'no'),
(1464, 165, '_virtual', 'no'),
(1465, 165, '_downloadable', 'no'),
(1466, 165, '_download_limit', '-1'),
(1467, 165, '_download_expiry', '-1'),
(1468, 165, '_stock', NULL),
(1469, 165, '_stock_status', 'instock'),
(1470, 165, '_wc_average_rating', '0'),
(1471, 165, '_wc_review_count', '0'),
(1472, 165, '_product_version', '4.6.1'),
(1473, 165, '_price', '96678'),
(1474, 166, '_edit_last', '1'),
(1475, 166, '_edit_lock', '1604670393:1'),
(1476, 166, '_thumbnail_id', '127'),
(1477, 166, '_regular_price', '1298'),
(1478, 166, '_sale_price', '1100'),
(1479, 166, 'total_sales', '0'),
(1480, 166, '_tax_status', 'taxable'),
(1481, 166, '_tax_class', ''),
(1482, 166, '_manage_stock', 'no'),
(1483, 166, '_backorders', 'no'),
(1484, 166, '_sold_individually', 'no'),
(1485, 166, '_virtual', 'no'),
(1486, 166, '_downloadable', 'no'),
(1487, 166, '_download_limit', '-1'),
(1488, 166, '_download_expiry', '-1'),
(1489, 166, '_stock', NULL),
(1490, 166, '_stock_status', 'instock'),
(1491, 166, '_wc_average_rating', '0'),
(1492, 166, '_wc_review_count', '0'),
(1493, 166, '_product_version', '4.6.1'),
(1494, 166, '_price', '1100'),
(1495, 167, '_edit_last', '1'),
(1496, 167, '_edit_lock', '1604670462:1'),
(1497, 167, '_thumbnail_id', '128'),
(1498, 167, '_regular_price', '2569'),
(1499, 167, '_sale_price', '2365'),
(1500, 167, 'total_sales', '0'),
(1501, 167, '_tax_status', 'taxable'),
(1502, 167, '_tax_class', ''),
(1503, 167, '_manage_stock', 'no'),
(1504, 167, '_backorders', 'no'),
(1505, 167, '_sold_individually', 'no'),
(1506, 167, '_virtual', 'no'),
(1507, 167, '_downloadable', 'no'),
(1508, 167, '_download_limit', '-1'),
(1509, 167, '_download_expiry', '-1'),
(1510, 167, '_stock', NULL),
(1511, 167, '_stock_status', 'instock'),
(1512, 167, '_wc_average_rating', '0'),
(1513, 167, '_wc_review_count', '0'),
(1514, 167, '_product_version', '4.6.1'),
(1515, 167, '_price', '2365'),
(1516, 168, '_edit_last', '1'),
(1517, 168, '_edit_lock', '1604670424:1'),
(1518, 168, '_thumbnail_id', '129'),
(1519, 168, '_regular_price', '3126'),
(1520, 168, '_sale_price', '2856'),
(1521, 168, 'total_sales', '0'),
(1522, 168, '_tax_status', 'taxable'),
(1523, 168, '_tax_class', ''),
(1524, 168, '_manage_stock', 'no'),
(1525, 168, '_backorders', 'no'),
(1526, 168, '_sold_individually', 'no'),
(1527, 168, '_virtual', 'no'),
(1528, 168, '_downloadable', 'no'),
(1529, 168, '_download_limit', '-1'),
(1530, 168, '_download_expiry', '-1'),
(1531, 168, '_stock', NULL),
(1532, 168, '_stock_status', 'instock'),
(1533, 168, '_wc_average_rating', '0'),
(1534, 168, '_wc_review_count', '0'),
(1535, 168, '_product_version', '4.6.1'),
(1536, 168, '_price', '2856'),
(1537, 169, '_edit_last', '1'),
(1538, 169, '_thumbnail_id', '130'),
(1539, 169, '_regular_price', '2569'),
(1540, 169, '_sale_price', '2355'),
(1541, 169, 'total_sales', '0'),
(1542, 169, '_tax_status', 'taxable'),
(1543, 169, '_tax_class', ''),
(1544, 169, '_manage_stock', 'no'),
(1545, 169, '_backorders', 'no'),
(1546, 169, '_sold_individually', 'no'),
(1547, 169, '_virtual', 'no'),
(1548, 169, '_downloadable', 'no'),
(1549, 169, '_download_limit', '-1'),
(1550, 169, '_download_expiry', '-1'),
(1551, 169, '_stock', NULL),
(1552, 169, '_stock_status', 'instock'),
(1553, 169, '_wc_average_rating', '0'),
(1554, 169, '_wc_review_count', '0'),
(1555, 169, '_product_version', '4.6.1'),
(1556, 169, '_price', '2355'),
(1557, 169, '_edit_lock', '1604670622:1'),
(1558, 170, '_edit_last', '1'),
(1559, 170, '_edit_lock', '1604670688:1'),
(1560, 170, '_thumbnail_id', '131'),
(1561, 170, '_regular_price', '2594'),
(1562, 170, '_sale_price', '2278'),
(1563, 170, 'total_sales', '0'),
(1564, 170, '_tax_status', 'taxable'),
(1565, 170, '_tax_class', ''),
(1566, 170, '_manage_stock', 'no'),
(1567, 170, '_backorders', 'no'),
(1568, 170, '_sold_individually', 'no'),
(1569, 170, '_virtual', 'no'),
(1570, 170, '_downloadable', 'no'),
(1571, 170, '_download_limit', '-1'),
(1572, 170, '_download_expiry', '-1'),
(1573, 170, '_stock', NULL),
(1574, 170, '_stock_status', 'instock'),
(1575, 170, '_wc_average_rating', '0'),
(1576, 170, '_wc_review_count', '0'),
(1577, 170, '_product_version', '4.6.1'),
(1578, 170, '_price', '2278'),
(1579, 171, '_edit_last', '1'),
(1580, 171, '_edit_lock', '1604670744:1'),
(1581, 171, '_thumbnail_id', '132'),
(1582, 171, '_regular_price', '24126'),
(1583, 171, '_sale_price', '23666'),
(1584, 171, 'total_sales', '0'),
(1585, 171, '_tax_status', 'taxable'),
(1586, 171, '_tax_class', ''),
(1587, 171, '_manage_stock', 'no'),
(1588, 171, '_backorders', 'no'),
(1589, 171, '_sold_individually', 'no'),
(1590, 171, '_virtual', 'no'),
(1591, 171, '_downloadable', 'no'),
(1592, 171, '_download_limit', '-1'),
(1593, 171, '_download_expiry', '-1'),
(1594, 171, '_stock', NULL),
(1595, 171, '_stock_status', 'instock'),
(1596, 171, '_wc_average_rating', '0'),
(1597, 171, '_wc_review_count', '0'),
(1598, 171, '_product_version', '4.6.1'),
(1599, 171, '_price', '23666'),
(1600, 172, '_edit_last', '1'),
(1601, 172, '_edit_lock', '1604670668:1'),
(1602, 172, '_thumbnail_id', '133'),
(1603, 172, '_regular_price', '2000'),
(1604, 172, '_sale_price', '1778'),
(1605, 172, 'total_sales', '0'),
(1606, 172, '_tax_status', 'taxable'),
(1607, 172, '_tax_class', ''),
(1608, 172, '_manage_stock', 'no'),
(1609, 172, '_backorders', 'no'),
(1610, 172, '_sold_individually', 'no'),
(1611, 172, '_virtual', 'no'),
(1612, 172, '_downloadable', 'no'),
(1613, 172, '_download_limit', '-1'),
(1614, 172, '_download_expiry', '-1'),
(1615, 172, '_stock', NULL),
(1616, 172, '_stock_status', 'instock'),
(1617, 172, '_wc_average_rating', '0'),
(1618, 172, '_wc_review_count', '0'),
(1619, 172, '_product_version', '4.6.1'),
(1620, 172, '_price', '1778'),
(1621, 173, '_edit_last', '1'),
(1622, 173, '_edit_lock', '1604670740:1'),
(1623, 173, '_thumbnail_id', '134'),
(1624, 173, '_regular_price', '16750'),
(1625, 173, '_sale_price', '1598'),
(1626, 173, 'total_sales', '0'),
(1627, 173, '_tax_status', 'taxable'),
(1628, 173, '_tax_class', ''),
(1629, 173, '_manage_stock', 'no'),
(1630, 173, '_backorders', 'no'),
(1631, 173, '_sold_individually', 'no'),
(1632, 173, '_virtual', 'no'),
(1633, 173, '_downloadable', 'no'),
(1634, 173, '_download_limit', '-1'),
(1635, 173, '_download_expiry', '-1'),
(1636, 173, '_stock', NULL),
(1637, 173, '_stock_status', 'instock'),
(1638, 173, '_wc_average_rating', '0'),
(1639, 173, '_wc_review_count', '0'),
(1640, 173, '_product_version', '4.6.1'),
(1641, 173, '_price', '1598'),
(1642, 174, '_edit_last', '1'),
(1643, 174, '_edit_lock', '1604670802:1'),
(1644, 174, '_thumbnail_id', '135'),
(1645, 174, '_regular_price', '3299'),
(1646, 174, '_sale_price', '2896'),
(1647, 174, 'total_sales', '0'),
(1648, 174, '_tax_status', 'taxable'),
(1649, 174, '_tax_class', ''),
(1650, 174, '_manage_stock', 'no'),
(1651, 174, '_backorders', 'no'),
(1652, 174, '_sold_individually', 'no'),
(1653, 174, '_virtual', 'no'),
(1654, 174, '_downloadable', 'no'),
(1655, 174, '_download_limit', '-1'),
(1656, 174, '_download_expiry', '-1'),
(1657, 174, '_stock', NULL),
(1658, 174, '_stock_status', 'instock'),
(1659, 174, '_wc_average_rating', '0'),
(1660, 174, '_wc_review_count', '0'),
(1661, 174, '_product_version', '4.6.1'),
(1662, 174, '_price', '2896'),
(1663, 175, '_edit_last', '1'),
(1664, 175, '_thumbnail_id', '136'),
(1665, 175, '_regular_price', '19168'),
(1666, 175, '_sale_price', '18599'),
(1667, 175, 'total_sales', '0'),
(1668, 175, '_tax_status', 'taxable'),
(1669, 175, '_tax_class', ''),
(1670, 175, '_manage_stock', 'no'),
(1671, 175, '_backorders', 'no'),
(1672, 175, '_sold_individually', 'no'),
(1673, 175, '_virtual', 'no'),
(1674, 175, '_downloadable', 'no'),
(1675, 175, '_download_limit', '-1'),
(1676, 175, '_download_expiry', '-1'),
(1677, 175, '_stock', NULL),
(1678, 175, '_stock_status', 'instock'),
(1679, 175, '_wc_average_rating', '0'),
(1680, 175, '_wc_review_count', '0'),
(1681, 175, '_product_version', '4.6.1'),
(1682, 175, '_price', '18599'),
(1683, 175, '_edit_lock', '1604670874:1');

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
(3, 1, '2020-11-06 05:12:16', '2020-11-06 05:12:16', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://127.0.0.1/Flipkart.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-11-06 05:12:16', '2020-11-06 05:12:16', '', 0, 'http://127.0.0.1/Flipkart/?page_id=3', 0, 'page', '', 0),
(7, 1, '2020-11-06 05:52:51', '2020-11-06 05:52:51', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-11-06 05:52:51', '2020-11-06 05:52:51', '', 0, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2020-11-06 05:52:55', '2020-11-06 05:52:55', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-11-06 05:52:55', '2020-11-06 05:52:55', '', 0, 'http://127.0.0.1/Flipkart/index.php/shop/', 0, 'page', '', 0),
(9, 1, '2020-11-06 05:52:55', '2020-11-06 05:52:55', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-11-06 05:52:55', '2020-11-06 05:52:55', '', 0, 'http://127.0.0.1/Flipkart/index.php/cart/', 0, 'page', '', 0),
(10, 1, '2020-11-06 05:52:55', '2020-11-06 05:52:55', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-11-06 05:52:55', '2020-11-06 05:52:55', '', 0, 'http://127.0.0.1/Flipkart/index.php/checkout/', 0, 'page', '', 0),
(11, 1, '2020-11-06 05:52:56', '2020-11-06 05:52:56', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-11-06 05:52:56', '2020-11-06 05:52:56', '', 0, 'http://127.0.0.1/Flipkart/index.php/my-account/', 0, 'page', '', 0),
(20, 1, '2020-11-06 11:21:12', '2020-11-06 11:21:12', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">4.7-inch Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (1 meter for up to 30 minutes, IP67)</span></li>\r\n 	<li><span class=\"a-list-item\">Single 12MP Wide camera with Auto HDR and 4K video up to 30fps</span></li>\r\n 	<li><span class=\"a-list-item\">7MP FaceTime HD camera with 1080p video</span></li>\r\n 	<li><span class=\"a-list-item\">Touch ID for secure authentication and Apple Pay</span></li>\r\n 	<li><span class=\"a-list-item\">A10 Fusion chip</span></li>\r\n 	<li><span class=\"a-list-item\">iOS 13 with Dark Mode, new tools for editing photos and video, and brand new privacy features</span></li>\r\n</ul>', 'Apple iPhone 7', '', 'publish', 'open', 'closed', '', 'apple-iphone-7', '', '', '2020-11-06 11:21:16', '2020-11-06 11:21:16', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=20', 0, 'product', '', 0),
(21, 1, '2020-11-06 11:20:55', '2020-11-06 11:20:55', '', 'iphone 7', '', 'inherit', 'open', 'closed', '', 'iphone-7', '', '', '2020-11-06 11:20:55', '2020-11-06 11:20:55', '', 20, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/iphone-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-11-06 11:25:47', '2020-11-06 11:25:47', '<ul>\r\n 	<li class=\"col_6\">iOS v12.0 Operating System</li>\r\n 	<li class=\"col_6\">Hexa Core Processor</li>\r\n 	<li class=\"col_6\">6.1 (15.49 cm) Display Size</li>\r\n 	<li class=\"col_6\">64 GB Internal Memory</li>\r\n 	<li class=\"col_6\">12 MP Primary Camera</li>\r\n 	<li class=\"col_6\">7 MP Front Camera</li>\r\n</ul>', 'Apple iPhone XR', '', 'publish', 'open', 'closed', '', 'apple-iphone-xr', '', '', '2020-11-06 11:25:50', '2020-11-06 11:25:50', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=22', 0, 'product', '', 0),
(23, 1, '2020-11-06 11:22:04', '2020-11-06 11:22:04', '', 'Iphone XR', '', 'inherit', 'open', 'closed', '', 'iphone-xr', '', '', '2020-11-06 11:22:04', '2020-11-06 11:22:04', '', 22, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Iphone-XR.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-11-06 11:28:53', '2020-11-06 11:28:53', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">14.73 cm (5.8 inch) Super Retina XDR 2436 x 1125 display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">12 MP + 12 MP + 12 MP triple primary camera</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">12 MP selfie camera, iOS 13 operating system</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">A13 Bionic chip, splash, water &amp; dust resistant</li>\r\n</ul>', 'Apple iPhone 11 Pro', '', 'publish', 'open', 'closed', '', 'apple-iphone-11-pro', '', '', '2020-11-06 11:28:58', '2020-11-06 11:28:58', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=25', 0, 'product', '', 0),
(26, 1, '2020-11-06 11:26:48', '2020-11-06 11:26:48', '', 'Iphone 11 Pro', '', 'inherit', 'open', 'closed', '', 'iphone-11-pro', '', '', '2020-11-06 11:26:48', '2020-11-06 11:26:48', '', 25, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Iphone-11-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2020-11-06 11:31:17', '2020-11-06 11:31:17', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6.1-inch (15.5 cm) Liquid Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (2 meters for up to 30 minutes, IP68)</span></li>\r\n 	<li><span class=\"a-list-item\">Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps</span></li>\r\n 	<li><span class=\"a-list-item\">12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo</span></li>\r\n 	<li><span class=\"a-list-item\">Face ID for secure authentication</span></li>\r\n 	<li><span class=\"a-list-item\">A13 Bionic chip with third-generation Neural Engine</span></li>\r\n 	<li><span class=\"a-list-item\">Fast-charge capable</span></li>\r\n</ul>', 'Apple iPhone 11', '', 'publish', 'open', 'closed', '', 'apple-iphone-11', '', '', '2020-11-06 11:31:22', '2020-11-06 11:31:22', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=27', 0, 'product', '', 0),
(28, 1, '2020-11-06 11:31:01', '2020-11-06 11:31:01', '', 'iPhone_11', '', 'inherit', 'open', 'closed', '', 'iphone_11', '', '', '2020-11-06 11:31:01', '2020-11-06 11:31:01', '', 27, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/iPhone_11.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2020-11-06 11:37:06', '2020-11-06 11:37:06', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">4.7-inch Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (1 meter for up to 30 minutes, IP67)</span></li>\r\n 	<li><span class=\"a-list-item\">Single 12MP Wide camera with Auto HDR and 4K video up to 60fps</span></li>\r\n 	<li><span class=\"a-list-item\">7MP FaceTime HD camera with 1080p video recording</span></li>\r\n 	<li><span class=\"a-list-item\">Touch ID for secure authentication and Apple Pay</span></li>\r\n 	<li><span class=\"a-list-item\">A11 Bionic with Neural Engine</span></li>\r\n 	<li><span class=\"a-list-item\">Fast-charge capable</span></li>\r\n 	<li><span class=\"a-list-item\">Wireless charging</span></li>\r\n</ul>', 'Apple iPhone 8', '', 'publish', 'open', 'closed', '', 'apple-iphone-8', '', '', '2020-11-06 11:37:09', '2020-11-06 11:37:09', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=29', 0, 'product', '', 0),
(30, 1, '2020-11-06 11:36:31', '2020-11-06 11:36:31', '', 'Iphone 8', '', 'inherit', 'open', 'closed', '', 'iphone-8', '', '', '2020-11-06 11:36:31', '2020-11-06 11:36:31', '', 29, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Iphone-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-11-06 11:40:27', '2020-11-06 11:40:27', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12MP+8MP+2MP+2MP AI quad rear camera, 4K video, AI beautification | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.51 centimeters (6.5-inch) FHD+ punch-hole display with 2400 x 1080 pixels resolution, 405 ppi pixel density | 90.5% screen to body ratio| Eye care</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Color OS 7.1 based on Android v10.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-polymer battery providing talk-time of 34 hours and standby time of 500 hours with 18W fast charge</span></li>\r\n</ul>', 'Oppo A52', '', 'publish', 'open', 'closed', '', 'oppo-a52', '', '', '2020-11-06 11:40:31', '2020-11-06 11:40:31', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=31', 0, 'product', '', 0),
(32, 1, '2020-11-06 11:39:57', '2020-11-06 11:39:57', '', 'Oppo A52', '', 'inherit', 'open', 'closed', '', 'oppo-a52', '', '', '2020-11-06 11:39:57', '2020-11-06 11:39:57', '', 31, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oppo-A52.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-11-06 11:41:54', '2020-11-06 11:41:54', '<ul>\r\n 	<li class=\"_2-riNZ\">4 GB RAM | 128 GB ROM | Expandable Upto 256 GB</li>\r\n 	<li class=\"_2-riNZ\">16.26 cm (6.4 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">VOOC Flash Charge 3.0 with 20W Fast Charging</li>\r\n 	<li class=\"_2-riNZ\">In-display Fingerprint 3.0 with 0.32 Second Unlock</li>\r\n</ul>', 'Oppo F15', '', 'publish', 'open', 'closed', '', 'oppo-f15', '', '', '2020-11-06 11:41:58', '2020-11-06 11:41:58', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=33', 0, 'product', '', 0),
(34, 1, '2020-11-06 11:41:02', '2020-11-06 11:41:02', '', 'Oppo F15', '', 'inherit', 'open', 'closed', '', 'oppo-f15', '', '', '2020-11-06 11:41:02', '2020-11-06 11:41:02', '', 33, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oppo-F15.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-11-06 11:44:41', '2020-11-06 11:44:41', '<ul>\r\n 	<li class=\"_2-riNZ\">4 GB RAM | 128 GB ROM | Expandable Upto 256 GB</li>\r\n 	<li class=\"_2-riNZ\">16.26 cm (6.4 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">VOOC Flash Charge 3.0 with 20W Fast Charging</li>\r\n 	<li class=\"_2-riNZ\">In-display Fingerprint 3.0 with 0.32 Second Unlock</li>\r\n</ul>', 'Oppo Reno 2', '', 'publish', 'open', 'closed', '', 'oppo-reno-2', '', '', '2020-11-06 11:44:46', '2020-11-06 11:44:46', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2020-11-06 11:44:10', '2020-11-06 11:44:10', '', 'Oppo Reno 2', '', 'inherit', 'open', 'closed', '', 'oppo-reno-2', '', '', '2020-11-06 11:44:10', '2020-11-06 11:44:10', '', 35, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oppo-Reno-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-11-06 11:46:07', '2020-11-06 11:46:07', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Super Retina XDR Display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">5G Enabled Phone</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">All‑screen OLED Display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Fingerprint-resistant Oleophobic Coating Screen</li>\r\n</ul>', 'Apple iPhone 12 Pro', '', 'publish', 'open', 'closed', '', 'apple-iphone-12-pro', '', '', '2020-11-06 11:46:11', '2020-11-06 11:46:11', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2020-11-06 11:45:25', '2020-11-06 11:45:25', '', 'iphone 12 Pro Max', '', 'inherit', 'open', 'closed', '', 'iphone-12-pro-max', '', '', '2020-11-06 11:45:25', '2020-11-06 11:45:25', '', 37, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/iphone-12-Pro-Max.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-11-06 11:47:42', '2020-11-06 11:47:42', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Camera: 16+20 MP Dual rear camera with Optical Image Stabilization, Super slow motion, Nightscape and Studio Lighting | 16 MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">Display: 6.41-inch(16.2 cms) Full HD+ Optic AMOLED display with 2340 x 1080 pixels resolution and an 86% screen-to-body ratio</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB storage | Dual nano SIM with dual standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Screen Unlock: In-screen fingerprint sensor. The OnePlus 6T unlocks in 0.34s for a seamless and intuitive unlock experience</span></li>\r\n 	<li><span class=\"a-list-item\">Operating System and Processor: OxygenOS based on Android 9.0 Pie with 2.8GHz Qualcomm Snapdragon 845 octa-core processor</span></li>\r\n 	<li><span class=\"a-list-item\">Battery : 3700 mAh lithium-polymer battery with Fast Charge technology</span></li>\r\n</ul>', 'OnePlus 6T', '', 'publish', 'open', 'closed', '', 'oneplus-6t', '', '', '2020-11-06 11:47:46', '2020-11-06 11:47:46', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2020-11-06 11:47:09', '2020-11-06 11:47:09', '', 'OnePlus 6T', '', 'inherit', 'open', 'closed', '', 'oneplus-6t', '', '', '2020-11-06 11:47:09', '2020-11-06 11:47:09', '', 39, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/OnePlus-6T.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-11-06 11:49:34', '2020-11-06 11:49:34', '<ul>\r\n 	<li>8 GB RAM and 256 GB ROM</li>\r\n 	<li>6.67 inch (16.94 cm) Fluid AMOLED Display</li>\r\n 	<li>16 MP Front Camera and 48 MP + 16 MP + 8 MP Primary Camera</li>\r\n 	<li>4000 mAh</li>\r\n</ul>', 'OnePlus 7 Pro', '', 'publish', 'open', 'closed', '', 'oneplus-7-pro', '', '', '2020-11-06 11:49:37', '2020-11-06 11:49:37', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2020-11-06 11:49:21', '2020-11-06 11:49:21', '', 'OnePlus 7 Pro', '', 'inherit', 'open', 'closed', '', 'oneplus-7-pro', '', '', '2020-11-06 11:49:21', '2020-11-06 11:49:21', '', 41, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/OnePlus-7-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-11-06 11:50:47', '2020-11-06 11:50:47', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image</span></li>\r\n 	<li><span class=\"a-list-item\">16.63 centimeters (6.55 inch) 90Hz fluid AMOLED with 2400 x 1080 pixels resolution and 402 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.96GHz Qualcomm Snapdragon 855 Plus AI Engine octa-core, 7nm processor, Adreno 640</span></li>\r\n 	<li><span class=\"a-list-item\">3800mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 7T', '', 'publish', 'open', 'closed', '', 'oneplus-7t', '', '', '2020-11-06 11:50:50', '2020-11-06 11:50:50', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2020-11-06 11:50:20', '2020-11-06 11:50:20', '', 'OnePlus 7T', '', 'inherit', 'open', 'closed', '', 'oneplus-7t', '', '', '2020-11-06 11:50:20', '2020-11-06 11:50:20', '', 43, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/OnePlus-7T.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-11-06 11:50:58', '2020-11-06 11:50:58', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image</span></li>\n 	<li><span class=\"a-list-item\">16.63 centimeters (6.55 inch) 90Hz fluid AMOLED with 2400 x 1080 pixels resolution and 402 ppi pixel density</span></li>\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.96GHz Qualcomm Snapdragon 855 Plus AI Engine octa-core, 7nm processor, Adreno 640</span></li>\n 	<li><span class=\"a-list-item\">3800mAH lithium-ion battery</span></li>\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\n</ul>', 'OnePlus 7T', '', 'inherit', 'closed', 'closed', '', '43-autosave-v1', '', '', '2020-11-06 11:50:58', '2020-11-06 11:50:58', '', 43, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/43-autosave-v1/', 0, 'revision', '', 0),
(46, 1, '2020-11-06 11:53:01', '2020-11-06 11:53:01', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Rear Quad Camera with 48 MP Sony IMX586 Sensor, 16 MP Ultra Wide Angle, 5 MP macro lens and 2 MP monochrome lens | Front Camera with 16 MP Sony IMX471 Sensor</span></li>\r\n 	<li><span class=\"a-list-item\">6.55 inch ( 16.63 centimeters) 120 Hz Fluid AMOLED Display with 2400 X 1080 Pixels resolution, 402 PPI density</span></li>\r\n 	<li><span class=\"a-list-item\">2.86 GHz Qualcomm Snapdragon 865 Octa-core Processor + Adreno 650 GPU ,Oxygen OS based on Android 11 Operating system</span></li>\r\n 	<li><span class=\"a-list-item\">12 GB RAM | 256 GB ROM</span></li>\r\n 	<li><span class=\"a-list-item\">4500 mAH Lithium-ion battery with 65 W “Warp charge”</span></li>\r\n 	<li><span class=\"a-list-item\">1 year Manufacturer warranty for Device</span></li>\r\n</ul>', 'OnePlus 8T', '', 'publish', 'open', 'closed', '', 'oneplus-8t', '', '', '2020-11-06 11:53:05', '2020-11-06 11:53:05', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=46', 0, 'product', '', 0),
(48, 1, '2020-11-06 11:52:15', '2020-11-06 11:52:15', '', 'OnePlus 8T', '', 'inherit', 'open', 'closed', '', 'oneplus-8t', '', '', '2020-11-06 11:52:15', '2020-11-06 11:52:15', '', 46, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/OnePlus-8T.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2020-11-06 11:54:24', '2020-11-06 11:54:24', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP rear camera with 4K video at 30/60 fps, 1080P video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080P 30fps, 4k 30fps, CINE aspect ratio video recording, ultrashot HDR, nightscape, micro, portrait, pro mode, panorama, cat&amp;dog face detection&amp;focus, AI scene detection, RAW image | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.637 centimeters (6.55-inch) 90Hz fluid display with 2400 x 1080 pixels resolution, 402 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865 powered by Kryo 585 CPU octa core processor, Adreno 650</span></li>\r\n 	<li><span class=\"a-list-item\">4300mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 8', '', 'publish', 'open', 'closed', '', 'oneplus-8', '', '', '2020-11-06 11:54:28', '2020-11-06 11:54:28', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2020-11-06 11:53:47', '2020-11-06 11:53:47', '', 'OnePlus 8', '', 'inherit', 'open', 'closed', '', 'oneplus-8', '', '', '2020-11-06 11:53:47', '2020-11-06 11:53:47', '', 49, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/OnePlus-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-11-06 11:55:45', '2020-11-06 11:55:45', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP rear camera with 4k video at 30/60 fps, 1080p video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080p 30fps, 4k 30fps, cine aspect ratio video recording, video hdr, cat&amp;dog face detect &amp; focus, ultrashot hdr, nightscape, super micro, portrait, pro mode, panorama, ai scene detection, raw image, audio zoom, audio 3d, infrared photography camera | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.22 centimeters (6.78-inch) 120Hz fluid display with 3168 x 1440 pixels resolution, 513 ppi pixel density and vibrant color effect color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865, powered by Kryo 585 CPU octa core processor, Adreno 650</span></li>\r\n 	<li><span class=\"a-list-item\">4510mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 8 Pro', '', 'publish', 'open', 'closed', '', 'oneplus-8-pro', '', '', '2020-11-06 11:55:48', '2020-11-06 11:55:48', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2020-11-06 11:55:17', '2020-11-06 11:55:17', '', 'Oneplus 8 Pro', '', 'inherit', 'open', 'closed', '', 'oneplus-8-pro', '', '', '2020-11-06 11:55:17', '2020-11-06 11:55:17', '', 51, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oneplus-8-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-11-06 11:55:56', '2020-11-06 11:55:56', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">48MP rear camera with 4k video at 30/60 fps, 1080p video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080p 30fps, 4k 30fps, cine aspect ratio video recording, video hdr, cat&amp;dog face detect &amp; focus, ultrashot hdr, nightscape, super micro, portrait, pro mode, panorama, ai scene detection, raw image, audio zoom, audio 3d, infrared photography camera | 16MP front camera</span></li>\n 	<li><span class=\"a-list-item\">17.22 centimeters (6.78-inch) 120Hz fluid display with 3168 x 1440 pixels resolution, 513 ppi pixel density and vibrant color effect color support</span></li>\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li>\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865, powered by Kryo 585 CPU octa core processor, Adreno 650</span></li>\n 	<li><span class=\"a-list-item\">4510mAH lithium-ion battery</span></li>\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\n</ul>', 'OnePlus 8 Pro', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2020-11-06 11:55:56', '2020-11-06 11:55:56', '', 51, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/51-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2020-11-06 11:56:56', '2020-11-06 11:56:56', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</span></li>\r\n 	<li><span class=\"a-list-item\">6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date.</span></li>\r\n 	<li><span class=\"a-list-item\">OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4115mAH lithium-ion battery | In-Display fingerprint sensor</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device </span></li>\r\n</ul>', 'OnePlus Nord 5G (Blue)', '', 'publish', 'open', 'closed', '', 'oneplus-nord-5g-blue', '', '', '2020-11-06 11:57:00', '2020-11-06 11:57:00', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2020-11-06 11:56:27', '2020-11-06 11:56:27', '', 'OnePlus Nord Blue', '', 'inherit', 'open', 'closed', '', 'oneplus-nord-blue', '', '', '2020-11-06 11:56:27', '2020-11-06 11:56:27', '', 54, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/OnePlus-Nord-Blue.jpeg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-11-06 11:57:05', '2020-11-06 11:57:05', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</span></li>\n 	<li><span class=\"a-list-item\">6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</span></li>\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date.</span></li>\n 	<li><span class=\"a-list-item\">OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</span></li>\n 	<li><span class=\"a-list-item\">4115mAH lithium-ion battery | In-Display fingerprint sensor</span></li>\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device </span></li>\n</ul>', 'OnePlus Nord 5G (Blue)', '', 'inherit', 'closed', 'closed', '', '54-autosave-v1', '', '', '2020-11-06 11:57:05', '2020-11-06 11:57:05', '', 54, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/54-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2020-11-06 11:58:09', '2020-11-06 11:58:09', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</span></li>\r\n 	<li><span class=\"a-list-item\">6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date</span></li>\r\n 	<li><span class=\"a-list-item\">OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4115mAH lithium-ion battery | In-Display fingerprint sensor</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n 	<li><span class=\"a-list-item\">Corning Gorilla Glass 5 | 12GB GB LPDDR4X, 256GB UFS 2.1</span></li>\r\n</ul>', 'OnePlus Nord 5G (Gray)', '', 'publish', 'open', 'closed', '', 'oneplus-nord-5g-gray', '', '', '2020-11-06 11:58:12', '2020-11-06 11:58:12', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=57', 0, 'product', '', 0),
(58, 1, '2020-11-06 11:57:46', '2020-11-06 11:57:46', '', 'OnePlus Nord', '', 'inherit', 'open', 'closed', '', 'oneplus-nord', '', '', '2020-11-06 11:57:46', '2020-11-06 11:57:46', '', 57, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/OnePlus-Nord.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-11-06 11:59:28', '2020-11-06 11:59:28', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12+8+2+2MP rear camera with 119 degree ultra wide, ultra night mode, video EIS anti-shake, portrait | 8MP AI front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.5 centimeters (6.5-inch) with 1600 x 720 pixels resolution and waterdrop screen | Corning Gorilla 3+ screen, sunlight screen, night shield with blue light filter</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v9.0 based on Color OS 6.1 operating system with 2.0GHz SM6125 Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-polymer battery | reverse charging supported</span></li>\r\n</ul>', 'Oppo A5', '', 'publish', 'open', 'closed', '', 'oppo-a5', '', '', '2020-11-06 11:59:33', '2020-11-06 11:59:33', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2020-11-06 11:59:01', '2020-11-06 11:59:01', '', 'Oppo A5', '', 'inherit', 'open', 'closed', '', 'oppo-a5', '', '', '2020-11-06 11:59:01', '2020-11-06 11:59:01', '', 59, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oppo-A5.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2020-11-06 12:00:52', '2020-11-06 12:00:52', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP+2MP AI rear dual camera with filters, AI beautification, bokeh, HDR, dazzle color mode | 5MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) HD+ waterdrop screen display with 1520 x 720 pixels resolution, 270 ppi pixel density and 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Color OS 6.1 based on Android Pie v9.0 operating system with 2.3GHz MediaTek Helio P35 octa core processor, GPU IMG GE8320</span></li>\r\n 	<li><span class=\"a-list-item\">4230mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours.</span></li>\r\n</ul>', 'Oppo A12', '', 'publish', 'open', 'closed', '', 'oppo-a12', '', '', '2020-11-06 12:00:56', '2020-11-06 12:00:56', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=61', 0, 'product', '', 0),
(62, 1, '2020-11-06 12:00:10', '2020-11-06 12:00:10', '', 'Oppo A12', '', 'inherit', 'open', 'closed', '', 'oppo-a12', '', '', '2020-11-06 12:00:10', '2020-11-06 12:00:10', '', 61, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oppo-A12.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-11-06 12:02:08', '2020-11-06 12:02:08', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12+2+2MP triple rear camera (12MP main camera+2MP macro lens+2MP depth camera) with Portrait bokeh, macro lens and dazzle color mode. 8MP front camera with AI beautification</span></li>\r\n 	<li><span class=\"a-list-item\">16.5 centimeters (6.5-inch) waterdrop multi touch screen with an 89% screen to body ratio , 1600 x 720 pixels resolution, 269 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM , 64GB internal memory expandable up to 256GB , Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">ColorOS 6.1 operating system based on Android Pie v9.0 with 2.3GHz Mediatek P35 Octa-core processor, IMG GE8320 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4230 mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours</span></li>\r\n</ul>', 'Oppo A31', '', 'publish', 'open', 'closed', '', 'oppo-a31', '', '', '2020-11-06 12:02:12', '2020-11-06 12:02:12', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=63', 0, 'product', '', 0),
(64, 1, '2020-11-06 12:01:31', '2020-11-06 12:01:31', '', 'Oppo A31', '', 'inherit', 'open', 'closed', '', 'oppo-a31', '', '', '2020-11-06 12:01:31', '2020-11-06 12:01:31', '', 63, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oppo-A31.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-11-06 12:04:29', '2020-11-06 12:04:29', '<ul>\r\n 	<li class=\"_2-riNZ\">6 GB RAM | 256 GB ROM</li>\r\n 	<li class=\"_2-riNZ\">16.51 cm (6.5 inch) Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">Ultra Night Mode 2.0</li>\r\n</ul>', 'Oppo Reno 2F', '', 'publish', 'open', 'closed', '', 'oppo-reno-2f', '', '', '2020-11-06 12:04:34', '2020-11-06 12:04:34', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2020-11-06 12:04:04', '2020-11-06 12:04:04', '', 'Oppo Reno 2F', '', 'inherit', 'open', 'closed', '', 'oppo-reno-2f', '', '', '2020-11-06 12:04:04', '2020-11-06 12:04:04', '', 65, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Oppo-Reno-2F.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-11-06 12:05:39', '2020-11-06 12:05:39', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">108MP quad rear camera with OIS, ultra-wide, macro, portrait, night mode, AI scene recognition, HDR, pro mode | 20MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.94 centimeters (6.67-inch) FHD+ AMOLED capacitive multi-touch touchscreen with 2340 x 1080 pixels resolution, 386 ppi pixel density and 19.5:9 aspect ratio | 3D Curved glass</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) with support for 5G</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10 operating system with 2.84GHz Qualcomm Snapdragon 865 with 7nm octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4780mAH lithium-polymer battery with 30W wired fast charger in-box &amp; support for up to 30W wireless charging</span></li>\r\n</ul>', 'Mi 10', '', 'publish', 'open', 'closed', '', 'mi-10', '', '', '2020-11-06 12:05:42', '2020-11-06 12:05:42', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2020-11-06 12:05:10', '2020-11-06 12:05:10', '', 'Mi 10', '', 'inherit', 'open', 'closed', '', 'mi-10', '', '', '2020-11-06 12:05:10', '2020-11-06 12:05:10', '', 67, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Mi-10.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2020-11-06 12:06:42', '2020-11-06 12:06:42', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6 GB RAM | 64 GB ROM | Expandable Upto 256 GB</span></li>\r\n 	<li><span class=\"a-list-item\">16.0 cm (6.3 inch) FHD+ Display</span></li>\r\n 	<li><span class=\"a-list-item\">48MP + 5MP | 13MP Front Camera</span></li>\r\n 	<li><span class=\"a-list-item\">Qualcomm Snapdragon 675 Processor</span></li>\r\n 	<li><span class=\"a-list-item\">Quick Charge 4.0 Support</span></li>\r\n</ul>', 'Redmi Note 7 Pro', '', 'publish', 'open', 'closed', '', 'redmi-note-7-pro', '', '', '2020-11-06 12:06:45', '2020-11-06 12:06:45', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2020-11-06 12:06:16', '2020-11-06 12:06:16', '', 'Redmi Note 7 pro', '', 'inherit', 'open', 'closed', '', 'redmi-note-7-pro', '', '', '2020-11-06 12:06:16', '2020-11-06 12:06:16', '', 69, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Redmi-Note-7-pro.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-11-06 12:08:19', '2020-11-06 12:08:19', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6.47\"3D curved AMOLED display Corning Gorilla glass front and back, 1080x2340 pixels 398 PPI - HDR 10 - Responsive in-screen fingerprint sensor - TÜV Rheinland low blue light mode</span></li>\r\n 	<li><span class=\"a-list-item\">Flash storage: 128 GB phone storage + 6GB RAM - Qualcomm Snapdragon 730G - 5260mAh (typ) high-capacity battery - Multifunctional NFC</span></li>\r\n 	<li><span class=\"a-list-item\">Main camera: 108MP ultra high-resolution camera + 12MP portrait camera + 5MP telephoto camera + 20MP ultra wide-angle camera + 2MP macro camera - Front Camera: 32MP selfie camera - 4K recording - 1080P slow motion recording - Vlog mode &amp; Night mode 2.0</span></li>\r\n</ul>', 'Xiaomi Mi Note 10', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-note-10', '', '', '2020-11-06 12:08:23', '2020-11-06 12:08:23', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2020-11-06 12:07:51', '2020-11-06 12:07:51', '', 'Xiaomi Mi Note 10', '', 'inherit', 'open', 'closed', '', 'xiaomi-mi-note-10', '', '', '2020-11-06 12:07:51', '2020-11-06 12:07:51', '', 71, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Xiaomi-Mi-Note-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-11-06 12:09:20', '2020-11-06 12:09:20', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48+8+2MP AI triple rear camera with portrait mode, HDR, PDAF supported | 32MP front camera with f2.0, 1/2.8 inch pixel size, portrait mode, HDR supported</span></li>\r\n 	<li><span class=\"a-list-item\">15.46 centimeters (6.088-inch) AMOLED multi-touch capacitive touchscreen with 1520 x 720 pixels resolution, 282 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4030mAH lithium-ion battery, AI scene detection: Detects up to 27 different scenes</span></li>\r\n</ul>', 'Xiaomi Mi A3', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-a3', '', '', '2020-11-06 12:09:24', '2020-11-06 12:09:24', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2020-11-06 12:08:58', '2020-11-06 12:08:58', '', 'Xiaomi-Mi A3', '', 'inherit', 'open', 'closed', '', 'xiaomi-mi-a3', '', '', '2020-11-06 12:08:58', '2020-11-06 12:08:58', '', 73, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Xiaomi-Mi-A3.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-11-06 12:13:41', '2020-11-06 12:13:41', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13+8+2MP AI triple rear camera with HDR mode and portrait mode | 8MP front camera with face beauty, portrait bokeh</span></li>\r\n 	<li><span class=\"a-list-item\">16.15 centimeters (6.35-inch) halo fullview display with 720 x 1544 pixels resolution</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with MediaTek Helio P22 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-ion massive battery</span></li>\r\n</ul>', 'Vivo Y12', '', 'publish', 'open', 'closed', '', 'vivo-y12', '', '', '2020-11-06 12:13:44', '2020-11-06 12:13:44', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2020-11-06 12:13:32', '2020-11-06 12:13:32', '', 'Vivo Y12', '', 'inherit', 'open', 'closed', '', 'vivo-y12', '', '', '2020-11-06 12:13:32', '2020-11-06 12:13:32', '', 75, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Vivo-Y12.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2020-11-06 12:14:56', '2020-11-06 12:14:56', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13+2+2MP rear camera | 8MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.55 centimeters (6.51 inch) HD+ display with 720 x 1600 pixels resolution</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Funtouch OS 10.5 based on Android v10 operating system with Qualcomm Snapdragon 460 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-ion battery</span></li>\r\n</ul>', 'Vivo Y20', '', 'publish', 'open', 'closed', '', 'vivo-y20', '', '', '2020-11-06 12:14:59', '2020-11-06 12:14:59', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 1, '2020-11-06 12:14:24', '2020-11-06 12:14:24', '', 'Vivo-Y20', '', 'inherit', 'open', 'closed', '', 'vivo-y20', '', '', '2020-11-06 12:14:24', '2020-11-06 12:14:24', '', 77, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Vivo-Y20.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-11-06 12:17:16', '2020-11-06 12:17:16', '<ul>\r\n 	<li>Vivo Z5i  is powered by the Qualcomm SDM675 Snapdragon 675 Octa-core (2×2.0 GHz Kryo 460 Gold + 6×1.7 GHz Kryo 460 Silver) processor. The smartphone comes with a 6.53 inches IPS LCD capacitive touchscreen and 1080 x 2340 pixels resolution.</li>\r\n 	<li>The rear camera consists of a 16 MP (wide) + 8 MP (ultrawide) + 2 MP macro camera lenses.</li>\r\n 	<li>The front camera has a 16 MP sensor. The phone’s sensors include Fingerprint (rear-mounted), accelerometer, proximity, and compass</li>\r\n 	<li>The smartphone is fueled by a Non-removable Li-Po 5000 mAh battery + Fast battery charging 18W.</li>\r\n 	<li>The phone runs on Android 9.0 (Pie) + Funtouch 9.2.</li>\r\n</ul>', 'Vivo Z5i', '', 'publish', 'open', 'closed', '', 'vivo-z5i', '', '', '2020-11-06 12:17:18', '2020-11-06 12:17:18', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2020-11-06 12:16:39', '2020-11-06 12:16:39', '', 'Vivo Z5i', '', 'inherit', 'open', 'closed', '', 'vivo-z5i', '', '', '2020-11-06 12:16:39', '2020-11-06 12:16:39', '', 79, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Vivo-Z5i.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2020-11-06 12:17:24', '2020-11-06 12:17:24', '<ul>\n 	<li>Vivo Z5i  is powered by the Qualcomm SDM675 Snapdragon 675 Octa-core (2×2.0 GHz Kryo 460 Gold + 6×1.7 GHz Kryo 460 Silver) processor. The smartphone comes with a 6.53 inches IPS LCD capacitive touchscreen and 1080 x 2340 pixels resolution.</li>\n 	<li>The rear camera consists of a 16 MP (wide) + 8 MP (ultrawide) + 2 MP macro camera lenses.</li>\n 	<li>The front camera has a 16 MP sensor. The phone’s sensors include Fingerprint (rear-mounted), accelerometer, proximity, and compass</li>\n 	<li>The smartphone is fueled by a Non-removable Li-Po 5000 mAh battery + Fast battery charging 18W.</li>\n 	<li>The phone runs on Android 9.0 (Pie) + Funtouch 9.2.</li>\n</ul>', 'Vivo Z5i', '', 'inherit', 'closed', 'closed', '', '79-autosave-v1', '', '', '2020-11-06 12:17:24', '2020-11-06 12:17:24', '', 79, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/79-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(82, 1, '2020-11-06 12:18:55', '2020-11-06 12:18:55', '<ul>\r\n 	<li class=\"_2-riNZ\">6 GB RAM | 64 GB ROM</li>\r\n 	<li class=\"_2-riNZ\">16.21 cm (6.38 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP | 32MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4500 mAh Li-ion Battery</li>\r\n 	<li class=\"_2-riNZ\">Qualcomm Snapdragon 712 AIE Processor</li>\r\n 	<li class=\"_2-riNZ\">22.5 W Vivo Flash Charge</li>\r\n</ul>', 'Vivo Z1x', '', 'publish', 'open', 'closed', '', 'vivo-z1x', '', '', '2020-11-06 12:18:58', '2020-11-06 12:18:58', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2020-11-06 12:18:25', '2020-11-06 12:18:25', '', 'Vivo-Z1x', '', 'inherit', 'open', 'closed', '', 'vivo-z1x', '', '', '2020-11-06 12:18:25', '2020-11-06 12:18:25', '', 82, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Vivo-Z1x.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-11-06 12:21:33', '2020-11-06 12:21:33', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP + 2MP rear camera | 8MP front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) HD+ capacitive touchscreen with 720 x 1560 pixels resolution 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 32GB storage expandable up to 512GB | Dual nano SIM with dual standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v9 Pie operating system with 2GHz + 1.5GHz MediaTek MT6762 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A10s', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a10s', '', '', '2020-11-06 12:21:37', '2020-11-06 12:21:37', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2020-11-06 12:21:01', '2020-11-06 12:21:01', '', 'Samsung Galaxy A10s', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a10s', '', '', '2020-11-06 12:21:01', '2020-11-06 12:21:01', '', 84, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-A10s.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-11-06 12:22:45', '2020-11-06 12:22:45', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP+2MP dual rear camera setup-13MP (F1.8) main camera + 2MP (F2.4) depth camera| 8MP (F2.0) front camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) PLS TFT LCD - infinity v-cut display, HD+ resolution with 720 x 1520 pixels resolution, 270 PPI with 16M colours</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 32GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2GHz MediaTek | MT6762 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy M01s', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-m01s', '', '', '2020-11-06 12:22:50', '2020-11-06 12:22:50', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2020-11-06 12:22:20', '2020-11-06 12:22:20', '', 'Samsung Galaxy M01s', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-m01s', '', '', '2020-11-06 12:22:20', '2020-11-06 12:22:20', '', 86, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-M01s.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-11-06 12:23:46', '2020-11-06 12:23:46', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP (F1.8)+12MP (F2.2)+5MP(F2.2)+5MP(F2.4) rear camera | 32MP front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.40 centimeters (6.5-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10.0 operating system with 2.3GHz+1.7GHz Exynos 9611 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A51', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a51', '', '', '2020-11-06 12:23:50', '2020-11-06 12:23:50', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2020-11-06 12:23:26', '2020-11-06 12:23:26', '', 'Samsung Galaxy A51', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a51', '', '', '2020-11-06 12:23:26', '2020-11-06 12:23:26', '', 88, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-A51.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2020-11-06 12:25:24', '2020-11-06 12:25:24', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">64MP (F1.8)+12MP (F2.2)+5MP (F2.2)+5MP (F2.4) camera | 32 front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.04 centimeters (6.7-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android 10 operating system with 2.3GHz+1.7GHz Qualcomm | SM7150 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4500mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A71', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a71', '', '', '2020-11-06 12:25:28', '2020-11-06 12:25:28', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2020-11-06 12:24:46', '2020-11-06 12:24:46', '', 'Samsung Galaxy A71', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a71', '', '', '2020-11-06 12:24:46', '2020-11-06 12:24:46', '', 90, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-A71.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2020-11-06 12:26:34', '2020-11-06 12:26:34', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Quad Camera Setup - 64MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera +5MP(F2.4) Macro Camera and 32MP (F2.0) front facing Camera</span></li>\r\n 	<li><span class=\"a-list-item\">6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor , 6GB RAM, 64GB internal memory expandable up to 512GB and dual SIM</span></li>\r\n 	<li><span class=\"a-list-item\">6000 mAh Battery</span></li>\r\n</ul>', 'Samsung Galaxy M31', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-m31', '', '', '2020-11-06 12:26:39', '2020-11-06 12:26:39', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2020-11-06 12:26:04', '2020-11-06 12:26:04', '', 'Samsung Galaxy M31', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-m31', '', '', '2020-11-06 12:26:04', '2020-11-06 12:26:04', '', 92, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-M31.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2020-11-06 12:26:44', '2020-11-06 12:26:44', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Quad Camera Setup - 64MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera +5MP(F2.4) Macro Camera and 32MP (F2.0) front facing Camera</span></li>\n 	<li><span class=\"a-list-item\">6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support</span></li>\n 	<li><span class=\"a-list-item\">Android v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor , 6GB RAM, 64GB internal memory expandable up to 512GB and dual SIM</span></li>\n 	<li><span class=\"a-list-item\">6000 mAh Battery</span></li>\n</ul>', 'Samsung Galaxy M31', '', 'inherit', 'closed', 'closed', '', '92-autosave-v1', '', '', '2020-11-06 12:26:44', '2020-11-06 12:26:44', '', 92, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/92-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2020-11-06 12:27:39', '2020-11-06 12:27:39', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Quad Rear Camera - 16MP (Ultra wide) + 12MP (Dual Aperture - F 1.5/2.4)+ 12MP (Telephoto) + ToF (DepthVision Camera) with Flash | 10MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.16 centimeters (6.8-inch) Dynamic AMOLED Infinity O Display  with QHD+ resolution 3040 X 1440 (498 ppi), HDR10+ Certified</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory expandable up to 1TB | Dual SIM dual-standby (4G+4G) - Hybrid Sim slot</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.7GHz Exynos 9825 octa core processor, S Pen Support: Yes (Gesture/Remote Control)</span></li>\r\n 	<li><span class=\"a-list-item\">4300mAH lithium-ion battery | Fast charging with 25W charger (included in the box)</span></li>\r\n 	<li><span class=\"a-list-item\">Other Features :- Ultrasonic in-display fingerprint sensor, Bluetooth enabled Air Actions for S Pen, Dex mode with Usb cable</span></li>\r\n</ul>', 'Samsung Galaxy Note 10 Plus', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-10-plus', '', '', '2020-11-06 12:27:43', '2020-11-06 12:27:43', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2020-11-06 12:27:21', '2020-11-06 12:27:21', '', 'Samsung Galaxy Note 10+', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-note-10', '', '', '2020-11-06 12:27:21', '2020-11-06 12:27:21', '', 95, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-Note-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-11-06 12:29:08', '2020-11-06 12:29:08', '&nbsp;\r\n<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Triple rear camera setup: 16MP with f2.2 aperture ultra wide + 12MP with f1.5 and f2.4 aperture wide + 12MP f2.4 tele| 10MP f1.9 front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.51 centimeters (6.1-inch) Dynamic AMOLED multi-touch capacitive touchscreen with 3040 x 1440 pixels resolution, 550 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage and SIM: 8GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual stand by (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.7GHz + 2.3GHz + 1.9GHz Exynos 9820 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">3400mAH lithium-ion battery, The large, notch-free display is a visual treat on the eyes</span></li>\r\n</ul>', 'Samsung Galaxy S10', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-s10', '', '', '2020-11-06 12:29:12', '2020-11-06 12:29:12', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2020-11-06 12:28:44', '2020-11-06 12:28:44', '', 'Samsung Galaxy S10', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-s10', '', '', '2020-11-06 12:28:44', '2020-11-06 12:28:44', '', 97, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-S10.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2020-11-06 12:30:09', '2020-11-06 12:30:09', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Ip68 Water And Dust Resistance</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Bixby Your Personal Voice Assistant</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Bixby Vision Next-Gen Camera Intelligence</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Biometric Authentication</li>\r\n</ul>', 'Samsung Galaxy Note 20', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-20', '', '', '2020-11-06 12:30:13', '2020-11-06 12:30:13', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2020-11-06 12:29:47', '2020-11-06 12:29:47', '', 'Samsung Galaxy Note 20', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-note-20', '', '', '2020-11-06 12:29:47', '2020-11-06 12:29:47', '', 99, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Samsung-Galaxy-Note-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-11-06 12:34:42', '2020-11-06 12:34:42', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">GPS</span></li>\r\n 	<li><span class=\"a-list-item\">Retina display</span></li>\r\n 	<li><span class=\"a-list-item\">Swimproof</span></li>\r\n 	<li><span class=\"a-list-item\">Optical heart sensor</span></li>\r\n 	<li><span class=\"a-list-item\">Store and stream music, podcasts and audiobooks</span></li>\r\n 	<li><span class=\"a-list-item\">Elevation</span></li>\r\n 	<li><span class=\"a-list-item\">Emergency SOS </span><span class=\"a-list-item\">S3 chip with dual-core processor </span><span class=\"a-list-item\">watchOS 6 with Activity trends, cycle tracking, loud noise notifications and the App Store on your wrist</span></li>\r\n 	<li><span class=\"a-list-item\">Aluminium case</span></li>\r\n</ul>', 'Apple Watch Series 3', '', 'publish', 'open', 'closed', '', 'apple-watch-series-3', '', '', '2020-11-06 12:34:48', '2020-11-06 12:34:48', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2020-11-06 12:32:48', '2020-11-06 12:32:48', '', 'Apple watch series 3', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-3', '', '', '2020-11-06 12:32:48', '2020-11-06 12:32:48', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Apple-watch-series-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2020-11-06 12:32:49', '2020-11-06 12:32:49', '', 'Apple watch series 4', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-4', '', '', '2020-11-06 12:32:49', '2020-11-06 12:32:49', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Apple-watch-series-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2020-11-06 12:32:51', '2020-11-06 12:32:51', '', 'Apple watch series 5', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-5', '', '', '2020-11-06 12:32:51', '2020-11-06 12:32:51', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Apple-watch-series-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-11-06 12:32:56', '2020-11-06 12:32:56', '', 'Apple-watch-series 6', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-6', '', '', '2020-11-06 12:32:56', '2020-11-06 12:32:56', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Apple-watch-series-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2020-11-06 12:32:58', '2020-11-06 12:32:58', '', 'Fastrack Analog-digital-watch-', '', 'inherit', 'open', 'closed', '', 'fastrack-analog-digital-watch', '', '', '2020-11-06 12:32:58', '2020-11-06 12:32:58', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-Analog-digital-watch-.jpeg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-11-06 12:33:01', '2020-11-06 12:33:01', '', 'Fastrack black watch', '', 'inherit', 'open', 'closed', '', 'fastrack-black-watch', '', '', '2020-11-06 12:33:01', '2020-11-06 12:33:01', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-black-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2020-11-06 12:33:02', '2020-11-06 12:33:02', '', 'Fastrack Casual Analog watch', '', 'inherit', 'open', 'closed', '', 'fastrack-casual-analog-watch', '', '', '2020-11-06 12:33:02', '2020-11-06 12:33:02', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-Casual-Analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2020-11-06 12:33:05', '2020-11-06 12:33:05', '', 'Fastrack Navy Blue Casual watch', '', 'inherit', 'open', 'closed', '', 'fastrack-navy-blue-casual-watch', '', '', '2020-11-06 12:33:05', '2020-11-06 12:33:05', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-Navy-Blue-Casual-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2020-11-06 12:33:08', '2020-11-06 12:33:08', '', 'Fastrack silver watch', '', 'inherit', 'open', 'closed', '', 'fastrack-silver-watch', '', '', '2020-11-06 12:33:08', '2020-11-06 12:33:08', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-silver-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2020-11-06 12:33:10', '2020-11-06 12:33:10', '', 'Fastrack watch', '', 'inherit', 'open', 'closed', '', 'fastrack-watch', '', '', '2020-11-06 12:33:10', '2020-11-06 12:33:10', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2020-11-06 12:33:14', '2020-11-06 12:33:14', '', 'Fastrack-black-magic-analog-black-dial watch', '', 'inherit', 'open', 'closed', '', 'fastrack-black-magic-analog-black-dial-watch', '', '', '2020-11-06 12:33:14', '2020-11-06 12:33:14', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-black-magic-analog-black-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2020-11-06 12:33:19', '2020-11-06 12:33:19', '', 'Fastrack-DIGITAL', '', 'inherit', 'open', 'closed', '', 'fastrack-digital', '', '', '2020-11-06 12:33:19', '2020-11-06 12:33:19', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fastrack-DIGITAL.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2020-11-06 12:33:22', '2020-11-06 12:33:22', '', 'Fitbit Charge 2', '', 'inherit', 'open', 'closed', '', 'fitbit-charge-2', '', '', '2020-11-06 12:33:22', '2020-11-06 12:33:22', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fitbit-Charge-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2020-11-06 12:33:25', '2020-11-06 12:33:25', '', 'Fitbit Charge 4', '', 'inherit', 'open', 'closed', '', 'fitbit-charge-4', '', '', '2020-11-06 12:33:25', '2020-11-06 12:33:25', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fitbit-Charge-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2020-11-06 12:33:28', '2020-11-06 12:33:28', '', 'Fitbit Iconic Watch', '', 'inherit', 'open', 'closed', '', 'fitbit-iconic-watch', '', '', '2020-11-06 12:33:28', '2020-11-06 12:33:28', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fitbit-Iconic-Watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2020-11-06 12:33:32', '2020-11-06 12:33:32', '', 'Fitbit Inspire 2', '', 'inherit', 'open', 'closed', '', 'fitbit-inspire-2', '', '', '2020-11-06 12:33:32', '2020-11-06 12:33:32', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fitbit-Inspire-2.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2020-11-06 12:33:38', '2020-11-06 12:33:38', '', 'Fitbit Sense', '', 'inherit', 'open', 'closed', '', 'fitbit-sense', '', '', '2020-11-06 12:33:38', '2020-11-06 12:33:38', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fitbit-Sense.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2020-11-06 12:33:40', '2020-11-06 12:33:40', '', 'Fitbit Versa 2', '', 'inherit', 'open', 'closed', '', 'fitbit-versa-2', '', '', '2020-11-06 12:33:40', '2020-11-06 12:33:40', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Fitbit-Versa-2.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2020-11-06 12:33:48', '2020-11-06 12:33:48', '', 'Gshock black watch', '', 'inherit', 'open', 'closed', '', 'gshock-black-watch', '', '', '2020-11-06 12:33:48', '2020-11-06 12:33:48', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Gshock-black-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2020-11-06 12:33:52', '2020-11-06 12:33:52', '', 'G-Shock casio mud master watch', '', 'inherit', 'open', 'closed', '', 'g-shock-casio-mud-master-watch', '', '', '2020-11-06 12:33:52', '2020-11-06 12:33:52', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/G-Shock-casio-mud-master-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2020-11-06 12:33:56', '2020-11-06 12:33:56', '', 'G-Shock steel watch', '', 'inherit', 'open', 'closed', '', 'g-shock-steel-watch', '', '', '2020-11-06 12:33:56', '2020-11-06 12:33:56', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/G-Shock-steel-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2020-11-06 12:33:57', '2020-11-06 12:33:57', '', 'Mi smart band 4', '', 'inherit', 'open', 'closed', '', 'mi-smart-band-4', '', '', '2020-11-06 12:33:57', '2020-11-06 12:33:57', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Mi-smart-band-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2020-11-06 12:33:59', '2020-11-06 12:33:59', '', 'Rolex Oyster', '', 'inherit', 'open', 'closed', '', 'rolex-oyster', '', '', '2020-11-06 12:33:59', '2020-11-06 12:33:59', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Rolex-Oyster.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2020-11-06 12:34:01', '2020-11-06 12:34:01', '', 'Rolex rose gold', '', 'inherit', 'open', 'closed', '', 'rolex-rose-gold', '', '', '2020-11-06 12:34:01', '2020-11-06 12:34:01', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Rolex-rose-gold.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2020-11-06 12:34:08', '2020-11-06 12:34:08', '', 'Rolex Submariner Black', '', 'inherit', 'open', 'closed', '', 'rolex-submariner-black', '', '', '2020-11-06 12:34:08', '2020-11-06 12:34:08', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Rolex-Submariner-Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2020-11-06 12:34:10', '2020-11-06 12:34:10', '', 'Sonata steel analog blue dial watch', '', 'inherit', 'open', 'closed', '', 'sonata-steel-analog-blue-dial-watch', '', '', '2020-11-06 12:34:10', '2020-11-06 12:34:10', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Sonata-steel-analog-blue-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2020-11-06 12:34:14', '2020-11-06 12:34:14', '', 'Sonata wedding analog blue watch', '', 'inherit', 'open', 'closed', '', 'sonata-wedding-analog-blue-watch', '', '', '2020-11-06 12:34:14', '2020-11-06 12:34:14', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Sonata-wedding-analog-blue-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2020-11-06 12:34:17', '2020-11-06 12:34:17', '', 'Square-dial-fastrack-watch', '', 'inherit', 'open', 'closed', '', 'square-dial-fastrack-watch', '', '', '2020-11-06 12:34:17', '2020-11-06 12:34:17', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Square-dial-fastrack-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2020-11-06 12:34:22', '2020-11-06 12:34:22', '', 'Titan Analog watch gold', '', 'inherit', 'open', 'closed', '', 'titan-analog-watch-gold', '', '', '2020-11-06 12:34:22', '2020-11-06 12:34:22', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Titan-Analog-watch-gold.jpeg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2020-11-06 12:34:24', '2020-11-06 12:34:24', '', 'Titan analog watch', '', 'inherit', 'open', 'closed', '', 'titan-analog-watch', '', '', '2020-11-06 12:34:24', '2020-11-06 12:34:24', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Titan-analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2020-11-06 12:34:26', '2020-11-06 12:34:26', '', 'Titan Edge Ceramic', '', 'inherit', 'open', 'closed', '', 'titan-edge-ceramic', '', '', '2020-11-06 12:34:26', '2020-11-06 12:34:26', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Titan-Edge-Ceramic.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2020-11-06 12:34:28', '2020-11-06 12:34:28', '', 'Titan gold', '', 'inherit', 'open', 'closed', '', 'titan-gold', '', '', '2020-11-06 12:34:28', '2020-11-06 12:34:28', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Titan-gold.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2020-11-06 12:34:31', '2020-11-06 12:34:31', '', 'Titan Maritime Analog Green dial watch', '', 'inherit', 'open', 'closed', '', 'titan-maritime-analog-green-dial-watch', '', '', '2020-11-06 12:34:31', '2020-11-06 12:34:31', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Titan-Maritime-Analog-Green-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-11-06 12:34:33', '2020-11-06 12:34:33', '', 'Titan Royal Analog watch', '', 'inherit', 'open', 'closed', '', 'titan-royal-analog-watch', '', '', '2020-11-06 12:34:33', '2020-11-06 12:34:33', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Titan-Royal-Analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2020-11-06 12:34:36', '2020-11-06 12:34:36', '', 'Xiaomi watch 4G LTE', '', 'inherit', 'open', 'closed', '', 'xiaomi-watch-4g-lte', '', '', '2020-11-06 12:34:36', '2020-11-06 12:34:36', '', 101, 'http://127.0.0.1/Flipkart/wp-content/uploads/2020/11/Xiaomi-watch-4G-LTE.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2020-11-06 12:35:45', '2020-11-06 12:35:45', '<ul>\r\n 	<li>GPS</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">64-bit Dual-core S4 Processor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Electrical Heart Sensor, Optical Heart Sensor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Fall Detection, Ambient Light Sensor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">LTPO OLED Retina display with Force Touch</li>\r\n</ul>', 'Apple Watch Series 4', '', 'publish', 'open', 'closed', '', 'apple-watch-series-4', '', '', '2020-11-06 12:35:49', '2020-11-06 12:35:49', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=137', 0, 'product', '', 0),
(138, 1, '2020-11-06 12:36:53', '2020-11-06 12:36:53', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">GPS + Cellular, Always-On Retina display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">30% larger screen, Swimproof, ECG app</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Electrical and optical heart sensors</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Store and stream music, podcasts, and audiobooks</li>\r\n</ul>', 'Apple Watch Series 5', '', 'publish', 'open', 'closed', '', 'apple-watch-series-5', '', '', '2020-11-06 12:36:58', '2020-11-06 12:36:58', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=138', 0, 'product', '', 0),
(139, 1, '2020-11-06 13:13:03', '2020-11-06 13:13:03', '<ul>\r\n 	<li>GPS</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Measure your Blood Oxygen Level</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Take an ECG Anytime, Anywhere</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">The New Sleep App</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">The Always-On Retina LTPO OLED Display</li>\r\n</ul>', 'Apple Watch Series 6', '', 'publish', 'open', 'closed', '', 'apple-watch-series-6', '', '', '2020-11-06 13:13:07', '2020-11-06 13:13:07', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=139', 0, 'product', '', 0),
(140, 1, '2020-11-06 13:14:04', '2020-11-06 13:14:04', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Blue, Band Material: Fabric</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog-Digital</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47.3 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters</span></li>\r\n 	<li><span class=\"a-list-item\">24 Months Manufacturer Warranty on manufacturing defects</span></li>\r\n</ul>', 'Fastrack Denim Analog Watch', '', 'publish', 'open', 'closed', '', 'fastrack-denim-analog-watch', '', '', '2020-11-06 13:14:08', '2020-11-06 13:14:08', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=140', 0, 'product', '', 0),
(141, 1, '2020-11-06 13:15:31', '2020-11-06 13:15:31', '<ul>\r\n 	<li>Recommended for customers looking for a large dial size watches</li>\r\n</ul>', 'Fastrack Analog Black Watch', '', 'publish', 'open', 'closed', '', 'fastrack-analog-black-watch', '', '', '2020-11-06 13:15:33', '2020-11-06 13:15:33', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=141', 0, 'product', '', 0),
(142, 1, '2020-11-06 13:16:58', '2020-11-06 13:16:58', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Silicone, GENDER: Guys, LOCK MECHANISM: Buckle</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 54.7mm x 46.2mm x 12.8mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n</ul>', 'Fastrack Casual Analog White Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-white-watch', '', '', '2020-11-06 13:17:01', '2020-11-06 13:17:01', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=142', 0, 'product', '', 0),
(143, 1, '2020-11-06 13:17:07', '2020-11-06 13:17:07', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Silicone, GENDER: Guys, LOCK MECHANISM: Buckle</span></li>\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 54.7mm x 46.2mm x 12.8mm</span></li>\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters, Buckle Clasp</span></li>\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\n</ul>', 'Fastrack Casual Analog White Watch', '', 'inherit', 'closed', 'closed', '', '142-autosave-v1', '', '', '2020-11-06 13:17:07', '2020-11-06 13:17:07', '', 142, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/142-autosave-v1/', 0, 'revision', '', 0),
(144, 1, '2020-11-06 13:18:21', '2020-11-06 13:18:21', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Navy Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 51mm x 49.5mm x 12.3mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">24 months manufacturer warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n</ul>', 'Fastrack Casual Analog Navy Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-navy-blue-dial-watch', '', '', '2020-11-06 13:18:24', '2020-11-06 13:18:24', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=144', 0, 'product', '', 0),
(145, 1, '2020-11-06 13:18:30', '2020-11-06 13:18:30', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Dial Color: Navy Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Stainless Steel</span></li>\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 51mm x 49.5mm x 12.3mm</span></li>\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\n 	<li><span class=\"a-list-item\">24 months manufacturer warranty</span></li>\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\n</ul>', 'Fastrack Casual Analog Navy Blue Dial Watch', '', 'inherit', 'closed', 'closed', '', '144-autosave-v1', '', '', '2020-11-06 13:18:30', '2020-11-06 13:18:30', '', 144, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/144-autosave-v1/', 0, 'revision', '', 0),
(146, 1, '2020-11-06 13:19:36', '2020-11-06 13:19:36', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 52mm x 45mm x 11.8mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">24 months manufacturer warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n 	<li><span class=\"a-list-item\">Recommended for customers looking for a large dial sized watches</span></li>\r\n</ul>', 'Fastrack Casual Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-black-dial-watch', '', '', '2020-11-06 13:19:40', '2020-11-06 13:19:40', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=146', 0, 'product', '', 0),
(147, 1, '2020-11-06 13:21:01', '2020-11-06 13:21:01', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Square, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Bluish Grey, Band Material: Leather</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 45 x 39.3 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">1 Year Manufacturing Warranty and 6 Months Battery Warranty</span></li>\r\n</ul>', 'Fastrack Analog White Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-analog-white-dial-watch', '', '', '2020-11-06 13:21:04', '2020-11-06 13:21:04', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2020-11-06 13:23:04', '2020-11-06 13:23:04', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47 x 40 millimeters. Case Thickness -13.00 mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Deployment Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">1 Year Manufacturing Warranty and 6 Months Battery Warranty</span></li>\r\n</ul>', 'Fastrack Black Magic Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-black-magic-analog-black-dial-watch', '', '', '2020-11-06 13:23:07', '2020-11-06 13:23:07', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2020-11-06 13:24:16', '2020-11-06 13:24:16', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Grey, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Plastic</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 50 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 100 meters</span></li>\r\n</ul>', 'Fastrack Digital Watch', '', 'publish', 'open', 'closed', '', 'fastrack-digital-watch', '', '', '2020-11-06 13:24:19', '2020-11-06 13:24:19', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=149', 0, 'product', '', 0),
(150, 1, '2020-11-06 13:24:25', '2020-11-06 13:24:25', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Dial Color: Grey, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Plastic</span></li>\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 50 millimeters</span></li>\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 100 meters</span></li>\n</ul>', 'Fastrack Digital Watch', '', 'inherit', 'closed', 'closed', '', '149-autosave-v1', '', '', '2020-11-06 13:24:25', '2020-11-06 13:24:25', '', 149, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/149-autosave-v1/', 0, 'revision', '', 0),
(151, 1, '2020-11-06 13:26:10', '2020-11-06 13:26:10', '<table class=\"a-normal a-spacing-micro\" style=\"height: 199px;\" width=\"820\">\r\n<tbody>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Brand</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">Fitbit</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Material</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">Metal</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Dimensions LxWxH</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">21.8 x 2.3 x 1.3 Centimeters</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Weight</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">149 Grams</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Fitbit Charge 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-charge-2-watch', '', '', '2020-11-06 13:26:13', '2020-11-06 13:26:13', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 1, '2020-11-06 13:26:20', '2020-11-06 13:26:20', '<table class=\"a-normal a-spacing-micro\" style=\"height: 199px;\" width=\"820\">\n<tbody>\n<tr class=\"a-spacing-small\">\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Brand</span></td>\n<td class=\"a-span9\"><span class=\"a-size-base\">Fitbit</span></td>\n</tr>\n<tr class=\"a-spacing-small\">\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Material</span></td>\n<td class=\"a-span9\"><span class=\"a-size-base\">Metal</span></td>\n</tr>\n<tr class=\"a-spacing-small\">\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Dimensions LxWxH</span></td>\n<td class=\"a-span9\"><span class=\"a-size-base\">21.8 x 2.3 x 1.3 Centimeters</span></td>\n</tr>\n<tr class=\"a-spacing-small\">\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Weight</span></td>\n<td class=\"a-span9\"><span class=\"a-size-base\">149 Grams</span></td>\n</tr>\n</tbody>\n</table>', 'Fitbit Charge 2 Watch', '', 'inherit', 'closed', 'closed', '', '151-autosave-v1', '', '', '2020-11-06 13:26:20', '2020-11-06 13:26:20', '', 151, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/151-autosave-v1/', 0, 'revision', '', 0),
(153, 1, '2020-11-06 13:27:26', '2020-11-06 13:27:26', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Use 24/7 heart rate to track resting heart rate &amp; better measure calorie burn</span></li>\r\n 	<li><span class=\"a-list-item\">Active Zone Minutes alert you when you\'re in your personalised Fat Burn, Cardio or Peak heart rate zones</span></li>\r\n 	<li><span class=\"a-list-item\">After outdoor workouts, see a workout intensity map in the app that shows your heart rate changes along your route</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS to see your pace and distance on screen during outdoor runs, cycles, hikes and more</span></li>\r\n 	<li><span class=\"a-list-item\">Track sleep stages &amp; review your in-app Sleep Score for an easy way to see how well you slept</span></li>\r\n 	<li><span class=\"a-list-item\">Get call, text and smartphone app notifications on your wrist. Plus, send quick replies to texts (Android only). Available when your phone is nearby</span></li>\r\n 	<li><span class=\"a-list-item\">Multi-day battery lasts up to 7 days and up to 5 hours when using built-in GPS. Varies with use &amp; other factors</span></li>\r\n</ul>', 'Fitbit Charge 4 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-charge-4-watch', '', '', '2020-11-06 13:27:30', '2020-11-06 13:27:30', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=153', 0, 'product', '', 0),
(154, 1, '2020-11-06 13:28:49', '2020-11-06 13:28:49', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Start dynamic personalized workouts on your wrist with step-by-step coaching. The GPS battery life lasts upto 10 hours</span></li>\r\n 	<li><span class=\"a-list-item\">Store and play 300 plus songs, plus download playlists from Pandora</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS/Glonass to track pace, distance and routes and get Pure Pulse continuous heart rate tracking and real-time zones</span></li>\r\n 	<li><span class=\"a-list-item\">Package includes both large and small size bands for the perfect, comfortable fit for all-day and all-night wear</span></li>\r\n 	<li><span class=\"a-list-item\">Access your favorite apps for sports, weather and more and make payments on the go with a built-in NFC chip</span></li>\r\n 	<li><span class=\"a-list-item\">Track runs, swims, rides, workouts, all day activity and sleep with 4 plus day battery life (varies with use and other factors)</span></li>\r\n 	<li><span class=\"a-list-item\">Increased pixels and amplified brightness up to 1000 nits, operating temperature: 4 degree to 113 degree Fahrenheit, maximum operating altitude: 30,000 feet</span></li>\r\n</ul>', 'Fitbit Ionic SmartWatch', '', 'publish', 'open', 'closed', '', 'fitbit-ionic-smartwatch', '', '', '2020-11-06 13:28:53', '2020-11-06 13:28:53', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=154', 0, 'product', '', 0),
(155, 1, '2020-11-06 13:30:22', '2020-11-06 13:30:22', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Free 1-year Fitbit Premium trial for new Premium users (Free trial may only be activated with device activation &amp; within 60 days of device activation. Valid payment method required. New users only. Cancel before free trial ends to avoid subscription fees)</span></li>\r\n 	<li><span class=\"a-list-item\">Earn Active Zone Minutes as you progress toward your weekly 150 minutes of heart-pumping activity and use 20+ exercise modes to track goals like distance, calories burned and more</span></li>\r\n 	<li><span class=\"a-list-item\">Track all-day activity: your steps, distance, hourly activity and calories burned</span></li>\r\n 	<li><span class=\"a-list-item\">Use 24/7 heart rate to track resting heart rate &amp; better measure calorie burn</span></li>\r\n 	<li><span class=\"a-list-item\">Enjoy 10 days of battery life for daily progress without constant charging. Varies with use and other factors</span></li>\r\n 	<li><span class=\"a-list-item\">Track your time in light, deep and REM sleep, then get a Sleep Score to better understand your sleep quality each night</span></li>\r\n 	<li><span class=\"a-list-item\">Stay inspired from the shower to the pool with this swimproof tracker (water resistant to 50 meters) and motivated by connecting with friends, competing in challenges, earning badges and celebrating goal milestones</span></li>\r\n 	<li><span class=\"a-list-item\">Get call, text, calendar and smartphone app notifications right on your wrist. Notifications and app alerts are available on-device when your phone is nearby</span></li>\r\n</ul>', 'Fitbit Inspire 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-inspire-2-watch', '', '', '2020-11-06 13:30:26', '2020-11-06 13:30:26', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 1, '2020-11-06 13:33:03', '2020-11-06 13:33:03', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">EDA Scan app detects electrodermal activity which may indicate your body\'s response to stress and a built-in skin temperature sensor logs yours each night so you can see when it varies</span></li>\r\n 	<li><span class=\"a-list-item\">The Fitbit ECG app has received FDA clearance and is available in the U.S. Availability in other countries pending applicable regulatory clearances. Not intended for use by people under 22 years old. See fitbit.com/ecg for additional details</span></li>\r\n 	<li><span class=\"a-list-item\">An on-wrist skin temperature sensor tracks yours each night so you can see how it varies</span></li>\r\n 	<li><span class=\"a-list-item\">Free 6-month Fitbit Premium trial for new Premium users (Free trial may only be activated with device activation &amp; within 60 days of device activation. Valid payment method required. New users only. Cancel before free trial ends to avoid subscription fees)</span></li>\r\n 	<li><span class=\"a-list-item\">High &amp; low heart rate notifications alert you if yours seems above or below your average</span></li>\r\n 	<li><span class=\"a-list-item\">Battery lasts 6+ days—plus, fast charging gives you a full day’s charge in just 12 minutes (Varies with use and other factors; up to 12 hours with continuous GPS)</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS during runs, hikes, rides and more to see pace &amp; distance without your phone</span></li>\r\n 	<li><span class=\"a-list-item\">Use your voice with Amazon Alexa Built-in to check the weather, set reminders, control smart home appliances and more from your watch (Voice assistant availability and features may vary)</span></li>\r\n</ul>', 'Fitbit Sense Watch', '', 'publish', 'open', 'closed', '', 'fitbit-sense-watch', '', '', '2020-11-06 13:33:06', '2020-11-06 13:33:06', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=156', 0, 'product', '', 0),
(157, 1, '2020-11-06 13:34:38', '2020-11-06 13:34:38', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">ALL-DAY ACTIVITY TRACKING: Fitbit Versa 2 tracks all-day activity like steps, distance, active minutes and calories burned to show how every part of your day gets you closer to your goals.</span></li>\r\n 	<li><span class=\"a-list-item\">WATER RESISTANCE: Fitbit Versa 2 is water-resistant to 50 meters, which means you’re free to wear it in the pool, in the shower, at the beach and beyond.</span></li>\r\n 	<li><span class=\"a-list-item\">5+ DAY BATTERY LIFE: A day lasts 24 hours. Versa 2 gives you much more than that. With 5+ day battery life, Fitbit Versa 2 tracks your morning, night &amp; everything in between without needing to stop for a charge. Varies with use &amp; other factors.</span></li>\r\n 	<li><span class=\"a-list-item\">FITBIT PAY: Pay without your wallet by uploading your credit card and making secure purchases from your wrist.</span></li>\r\n</ul>', 'Fitbit Versa 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-versa-2-watch', '', '', '2020-11-06 13:34:41', '2020-11-06 13:34:41', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=157', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(158, 1, '2020-11-06 13:37:00', '2020-11-06 13:37:00', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Resin, Occasion: Sports</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog-Digital</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 51 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 200 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 2 Years Domestic Warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n 	<li><span class=\"a-list-item\">5 daily alarms (with 1 snooze alarm) ; Countdown timer ; Countdown range: 24 hours ; Accuracy: ±15 seconds per month ; LED: Amber</span></li>\r\n</ul>', 'G-Shock Analog-Digital Black Dial Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-digital-black-dial-watch', '', '', '2020-11-06 13:37:05', '2020-11-06 13:37:05', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=158', 0, 'product', '', 0),
(159, 1, '2020-11-06 13:38:40', '2020-11-06 13:38:40', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial color: black, case shape: round, dial glass material: mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band color: silver, band material: stainless steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch movement type: quartz, watch display type: analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case material: resin ; case diameter: 53.8 Millimeters and total Size of case : 58.1×53.8×14.1mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water resistance depth: 200 meters, fold-over clasp with safety</span></li>\r\n 	<li><span class=\"a-list-item\">Dual time</span></li>\r\n 	<li><span class=\"a-list-item\">Solar powered</span></li>\r\n</ul>', 'G-Shock Analog Steel Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-steel-watch', '', '', '2020-11-06 13:38:44', '2020-11-06 13:38:44', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=159', 0, 'product', '', 0),
(160, 1, '2020-11-06 13:40:32', '2020-11-06 13:40:32', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial color: black, case shape: round, dial glass material: mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band color: multi-colour, band material: resin, Measuring unit: 1/10 second, Full auto-calendar (to year 2099)</span></li>\r\n 	<li><span class=\"a-list-item\">Watch movement type: quartz, watch display type: analog-digital ; Accuracy: ±15 seconds per month and Approx. battery life: 5 years on CR2016</span></li>\r\n 	<li><span class=\"a-list-item\">Case material: resin, case diameter: 53.4 millimeters led light (super illuminator)- selectable illumination duration (1.5 seconds or 3 seconds), afterglow</span></li>\r\n 	<li><span class=\"a-list-item\">Water resistance depth: 200 meters, buckle clasp, Button operation tone on/off</span></li>\r\n 	<li><span class=\"a-list-item\">Stopwatch; dual time; countdown timer; light, Hourly time signal, Hand shift feature</span></li>\r\n 	<li><span class=\"a-list-item\">2 years manufacturer warranty on manufacturing defects</span></li>\r\n</ul>', 'G-Shock Analog-Digital Mud Master Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-digital-mud-master-watch', '', '', '2020-11-06 13:40:36', '2020-11-06 13:40:36', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=160', 0, 'product', '', 0),
(161, 1, '2020-11-06 13:41:41', '2020-11-06 13:41:41', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">1.1” Full touch AMOLED color display</span></li>\r\n 	<li><span class=\"a-list-item\">Battery runs up to 14 days on a single charge</span></li>\r\n 	<li><span class=\"a-list-item\">Magnetic charging – Hassle free charging</span></li>\r\n 	<li><span class=\"a-list-item\">PAI (Personal Activity Intelligence) – Single matrix to track your all fitness related activities</span></li>\r\n 	<li><span class=\"a-list-item\">Tracks 11 professional sports mode (including Yoga and Rope skipping)</span></li>\r\n 	<li><span class=\"a-list-item\">5ATM Water Resistant</span></li>\r\n 	<li><span class=\"a-list-item\">Run on the go with Automatic activity detection (Running and Walking)</span>\r\n<h4></h4>\r\n</li>\r\n</ul>', 'Mi Smart Band 4 Watch', '', 'publish', 'open', 'closed', '', 'mi-smart-band-4-watch', '', '', '2020-11-06 13:41:45', '2020-11-06 13:41:45', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=161', 0, 'product', '', 0),
(162, 1, '2020-11-06 13:41:50', '2020-11-06 13:41:50', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">1.1” Full touch AMOLED color display</span></li>\n 	<li><span class=\"a-list-item\">Battery runs up to 14 days on a single charge</span></li>\n 	<li><span class=\"a-list-item\">Magnetic charging – Hassle free charging</span></li>\n 	<li><span class=\"a-list-item\">PAI (Personal Activity Intelligence) – Single matrix to track your all fitness related activities</span></li>\n 	<li><span class=\"a-list-item\">Tracks 11 professional sports mode (including Yoga and Rope skipping)</span></li>\n 	<li><span class=\"a-list-item\">5ATM Water Resistant</span></li>\n 	<li><span class=\"a-list-item\">Run on the go with Automatic activity detection (Running and Walking)</span>\n<h4></h4>\n</li>\n</ul>', 'Mi Smart Band 4 Watch', '', 'inherit', 'closed', 'closed', '', '161-autosave-v1', '', '', '2020-11-06 13:41:50', '2020-11-06 13:41:50', '', 161, 'http://127.0.0.1/Flipkart/index.php/2020/11/06/161-autosave-v1/', 0, 'revision', '', 0),
(163, 1, '2020-11-06 13:42:48', '2020-11-06 13:42:48', '<ul>\r\n 	<li>\r\n<h4 class=\"product-single__title\">ROLEX Chronograph Automatic Two-Tone Watch</h4>\r\n</li>\r\n</ul>', 'Rolex Steel Oyster Watch', '', 'publish', 'open', 'closed', '', 'rolex-steel-oyster-watch', '', '', '2020-11-06 13:42:51', '2020-11-06 13:42:51', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=163', 0, 'product', '', 0),
(164, 1, '2020-11-06 13:44:02', '2020-11-06 13:44:02', '<ul>\r\n 	<li>\r\n<h4 class=\"product_title entry-title\"><strong>Rolex Daytona Cosmograph Rose Gold watch</strong></h4>\r\n</li>\r\n</ul>', 'Rolex Steel Rose Gold Watch', '', 'publish', 'open', 'closed', '', 'rolex-steel-rose-gold-watch', '', '', '2020-11-06 13:44:06', '2020-11-06 13:44:06', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=164', 0, 'product', '', 0),
(165, 1, '2020-11-06 13:45:14', '2020-11-06 13:45:14', '<ul>\r\n 	<li class=\"product-single__title\">ROLEX SUBMARINER FULL BLACK 45 (Refurbished)</li>\r\n 	<li>Stainless Steel Material</li>\r\n 	<li>Daytona Collection</li>\r\n 	<li>Dial size 45mm</li>\r\n 	<li>Sapphire Crystal Glass Material</li>\r\n</ul>', 'Rolex Steel Submariner Black Watch', '', 'publish', 'open', 'closed', '', 'rolex-steel-submariner-black-watch', '', '', '2020-11-06 13:45:18', '2020-11-06 13:45:18', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=165', 0, 'product', '', 0),
(166, 1, '2020-11-06 13:46:27', '2020-11-06 13:46:27', '<ul>\r\n 	<li>\r\n<h4><span class=\"ng-binding\">BusyBees Blue Dial Analog Watch</span></h4>\r\n</li>\r\n</ul>', 'Sonata Steel Blue Dial Analog Watch', '', 'publish', 'open', 'closed', '', 'sonata-steel-blue-dial-analog-watch', '', '', '2020-11-06 13:46:32', '2020-11-06 13:46:32', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=166', 0, 'product', '', 0),
(167, 1, '2020-11-06 13:47:38', '2020-11-06 13:47:38', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Metal</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters</span></li>\r\n 	<li><span class=\"a-list-item\">24 Months manufacturer warranty on manufacturing defects</span></li>\r\n 	<li><span class=\"a-list-item\">Recommended for customers looking for a large dial sized watches</span></li>\r\n</ul>', 'Sonata Steel Analog Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'sonata-steel-analog-blue-dial-watch', '', '', '2020-11-06 13:47:41', '2020-11-06 13:47:41', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=167', 0, 'product', '', 0),
(168, 1, '2020-11-06 13:48:49', '2020-11-06 13:48:49', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black; Case Shape: Asymmetrical; Dial Glass Material: Brass</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Multi-Color; Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz; Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass; Case Diameter: 45 x 36 millimeters; Case thickness:6.87mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters; Deployment Clasp Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty Details: This watch offers 24 months warranty on the Movement and 12 months warranty on the Battery from the date of purchase</span></li>\r\n</ul>', 'Fastrack Steel Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-steel-analog-black-dial-watch', '', '', '2020-11-06 13:48:52', '2020-11-06 13:48:52', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=168', 0, 'product', '', 0),
(169, 1, '2020-11-06 13:50:17', '2020-11-06 13:50:17', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold, Band Material: Gold. Case Thickness 8.25 mm, Case Width(3H-9H) 38 mm</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">2 years warranty</span></li>\r\n</ul>', 'Titan Analog Steel Gold Watch', '', 'publish', 'open', 'closed', '', 'titan-analog-steel-gold-watch', '', '', '2020-11-06 13:50:22', '2020-11-06 13:50:22', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=169', 0, 'product', '', 0),
(170, 1, '2020-11-06 13:51:23', '2020-11-06 13:51:23', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass </span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Metal</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 51 millimeters. Case Width(3H-9H) 46 mm, Case Thickness 10.50 mm</span></li>\r\n 	<li><span class=\"a-list-item\">2 years warranty</span></li>\r\n</ul>', 'Titan Steel Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-steel-analog-black-dial-watch', '', '', '2020-11-06 13:51:27', '2020-11-06 13:51:27', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=170', 0, 'product', '', 0),
(171, 1, '2020-11-06 13:52:20', '2020-11-06 13:52:20', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Blue, Case Shape: Round, Dial Glass Material: Sapphire</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Blue, Band Material: Ceramic, Lock Mechanism: Butterfly Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Ceramic, Case Diameter: 40.5 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters</span></li>\r\n</ul>', 'Titan Analog Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-analog-blue-dial-watch', '', '', '2020-11-06 13:52:24', '2020-11-06 13:52:24', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=171', 0, 'product', '', 0),
(172, 1, '2020-11-06 13:53:17', '2020-11-06 13:53:17', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Gold-Color, Case Shape: Rectangular</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 Meters</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 24 Months Manufacturer Warranty</span></li>\r\n</ul>', 'Titan Gold Analog White Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-gold-analog-white-dial-watch', '', '', '2020-11-06 13:53:20', '2020-11-06 13:53:20', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=172', 0, 'product', '', 0),
(173, 1, '2020-11-06 13:54:25', '2020-11-06 13:54:25', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Green, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Brown, Band Material: Leather</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 49 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters</span></li>\r\n</ul>', 'Titan Maritime Analog Green Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-maritime-analog-green-dial-watch', '', '', '2020-11-06 13:54:29', '2020-11-06 13:54:29', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=173', 0, 'product', '', 0),
(174, 1, '2020-11-06 13:55:34', '2020-11-06 13:55:34', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Diameter: 33.03 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 24 months manufacturer Warranty</span></li>\r\n</ul>', 'Titan Gold Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-gold-analog-black-dial-watch', '', '', '2020-11-06 13:55:37', '2020-11-06 13:55:37', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=174', 0, 'product', '', 0),
(175, 1, '2020-11-06 13:56:38', '2020-11-06 13:56:38', '<ul>\r\n 	<li>\r\n<h4>Xiaomi Mi Watch It sports a 1.78-inch AMOLED display (326 ppi)  density and a 570mAh battery, 36 hours of use.</h4>\r\n</li>\r\n 	<li>\r\n<h4>It’s powered by a Qualcomm Snapdragon Wear 3100 processor and 1GB of RAM, and it comes with 8GB of internal storage.</h4>\r\n</li>\r\n 	<li>\r\n<h4>There’s also Wi-Fi, Bluetooth, and NFC functionality, a heart rate monitoring feature, and eSIM support for 4G connectivity.</h4>\r\n</li>\r\n 	<li>\r\n<h4>eSIM 4G LTE It comes with a built-in microphone for making calls or recording voice notes, and there\'s a speaker for listening to incoming calls or music.</h4>\r\n</li>\r\n 	<li>\r\n<h4>There\'s a eSIM slot to support calls and 4G connectivity</h4>\r\n</li>\r\n</ul>', 'Xiaomi Mi 4G LTE Watch', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-4g-lte-watch', '', '', '2020-11-06 13:56:42', '2020-11-06 13:56:42', '', 0, 'http://127.0.0.1/Flipkart/?post_type=product&#038;p=175', 0, 'product', '', 0);

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
(3, 16, 'product_count_product_cat', '37'),
(4, 17, 'product_count_product_cat', '35');

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
(20, 2, 0),
(20, 16, 0),
(22, 2, 0),
(22, 16, 0),
(25, 2, 0),
(25, 16, 0),
(27, 2, 0),
(27, 16, 0),
(29, 2, 0),
(29, 16, 0),
(31, 2, 0),
(31, 16, 0),
(33, 2, 0),
(33, 16, 0),
(35, 2, 0),
(35, 16, 0),
(37, 2, 0),
(37, 16, 0),
(39, 2, 0),
(39, 16, 0),
(41, 2, 0),
(41, 16, 0),
(43, 2, 0),
(43, 16, 0),
(46, 2, 0),
(46, 16, 0),
(49, 2, 0),
(49, 16, 0),
(51, 2, 0),
(51, 16, 0),
(54, 2, 0),
(54, 16, 0),
(57, 2, 0),
(57, 16, 0),
(59, 2, 0),
(59, 16, 0),
(61, 2, 0),
(61, 16, 0),
(63, 2, 0),
(63, 16, 0),
(65, 2, 0),
(65, 16, 0),
(67, 2, 0),
(67, 16, 0),
(69, 2, 0),
(69, 16, 0),
(71, 2, 0),
(71, 16, 0),
(73, 2, 0),
(73, 16, 0),
(75, 2, 0),
(75, 16, 0),
(77, 2, 0),
(77, 16, 0),
(79, 2, 0),
(79, 16, 0),
(82, 2, 0),
(82, 16, 0),
(84, 2, 0),
(84, 16, 0),
(86, 2, 0),
(86, 16, 0),
(88, 2, 0),
(88, 16, 0),
(90, 2, 0),
(90, 16, 0),
(92, 2, 0),
(92, 16, 0),
(95, 2, 0),
(95, 16, 0),
(97, 2, 0),
(97, 16, 0),
(99, 2, 0),
(99, 16, 0),
(101, 2, 0),
(101, 17, 0),
(137, 2, 0),
(137, 17, 0),
(138, 2, 0),
(138, 17, 0),
(139, 2, 0),
(139, 17, 0),
(140, 2, 0),
(140, 17, 0),
(141, 2, 0),
(141, 17, 0),
(142, 2, 0),
(142, 17, 0),
(144, 2, 0),
(144, 17, 0),
(146, 2, 0),
(146, 17, 0),
(147, 2, 0),
(147, 17, 0),
(148, 2, 0),
(148, 17, 0),
(149, 2, 0),
(149, 17, 0),
(151, 2, 0),
(151, 17, 0),
(153, 2, 0),
(153, 17, 0),
(154, 2, 0),
(154, 17, 0),
(155, 2, 0),
(155, 17, 0),
(156, 2, 0),
(156, 17, 0),
(157, 2, 0),
(157, 17, 0),
(158, 2, 0),
(158, 17, 0),
(159, 2, 0),
(159, 17, 0),
(160, 2, 0),
(160, 17, 0),
(161, 2, 0),
(161, 17, 0),
(163, 2, 0),
(163, 17, 0),
(164, 2, 0),
(164, 17, 0),
(165, 2, 0),
(165, 17, 0),
(166, 2, 0),
(166, 17, 0),
(167, 2, 0),
(167, 17, 0),
(168, 2, 0),
(168, 17, 0),
(169, 2, 0),
(169, 17, 0),
(170, 2, 0),
(170, 17, 0),
(171, 2, 0),
(171, 17, 0),
(172, 2, 0),
(172, 17, 0),
(173, 2, 0),
(173, 17, 0),
(174, 2, 0),
(174, 17, 0),
(175, 2, 0),
(175, 17, 0);

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
(1, 1, 'category', '', 0, 0),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"16b53989254eabb070ca33157d5fa1b2b1912c162b8f7c52c4f1a77acc237b9a\";a:4:{s:10:\"expiration\";i:1604812374;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604639574;}s:64:\"869aead0870e22fbc0177500b1951865751c18001672dc6d8d2bf119711a38c1\";a:4:{s:10:\"expiration\";i:1604828112;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604655312;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:B+afjklkizUa+5/qBMBT2TKD'),
(19, 1, 'last_update', '1604660598'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1604660594971'),
(21, 1, 'wc_last_active', '1604620800'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(25, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,postimagediv,tagsdiv-product_tag,woocommerce-product-images\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_product', '2'),
(27, 1, 'wp_user-settings', 'libraryContent=browse'),
(28, 1, 'wp_user-settings-time', '1604661674'),
(29, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(30, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:21:\"dashboard_quick_press\";}'),
(31, 1, 'metaboxhidden_dashboard', 'a:0:{}');

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
(1, 'admin', '$P$B8b5fE8LE/eAngfRdTtXQrG/shMPNq.', 'admin', 'anujatendulkar5@gmail.com', 'http://127.0.0.1/Flipkart', '2020-11-06 05:12:13', '', 0, 'admin');

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
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-06 05:53:04', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-11-06 05:53:05', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-11-06 05:53:08', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-06 05:53:08', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-11-06 05:53:09', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-11-06 05:53:09', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-11-06 05:53:09', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-draw-attention', 'info', 'en_US', 'How to draw attention to your online store', 'To get you started, here are seven ways to boost your sales and avoid getting drowned out by similar, mass-produced products competing for the same buyers.', '{}', 'unactioned', 'woocommerce-admin', '2020-11-06 11:01:11', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:28:12', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://127.0.0.1/Flipkart/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:28:12', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:28:13', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:28:13', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:28:13', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-need-some-inspiration', 'info', 'en_US', 'Do you need some inspiration?', 'Check some of our favorite customer stories from entrepreneurs, agencies, and developers in our global community.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:28:13', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-customize-store-with-blocks', 'info', 'en_US', 'Customize your online store with WooCommerce blocks', 'With our blocks, you can select and display products, categories, filters, and more virtually anywhere on your site — no need to use shortcodes or edit lines of code. Learn more about how to use each one of them.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:28:13', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', '<a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br /><br /><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-04 07:37:49', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wcpay-subscriptions-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-04 07:37:49', NULL, 0, 'plain', '', 0, 'info');

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
(2, 2, 'continue-profiler', 'Continue Store Setup', 'http://127.0.0.1/Flipkart/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'unactioned', 1, ''),
(3, 2, 'skip-profiler', 'Skip Setup', 'http://127.0.0.1/Flipkart/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(4, 3, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(5, 4, 'open-marketing-hub', 'Open marketing hub', 'http://127.0.0.1/Flipkart/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(12, 8, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/how-to-make-your-online-store-stand-out/?utm_source=inbox', 'actioned', 1, ''),
(232, 9, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(233, 10, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1, ''),
(234, 11, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(235, 12, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(236, 12, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(237, 13, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, ''),
(238, 14, 'need-some-inspiration', 'See success stories', 'https://woocommerce.com/success-stories/?utm_source=inbox', 'actioned', 1, ''),
(239, 15, 'customize-store-with-blocks', 'Learn more', 'https://woocommerce.com/posts/how-to-customize-your-online-store-with-woocommerce-blocks/?utm_source=inbox', 'actioned', 1, ''),
(255, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(256, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(257, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(258, 16, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(259, 17, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '');

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
(20, '', 0, 0, '24528.0000', '24528.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(22, '', 0, 0, '47130.0000', '47130.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(25, '', 0, 0, '100000.0000', '100000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(27, '', 0, 0, '62456.0000', '62456.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(29, '', 0, 0, '34123.0000', '34123.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(31, '', 0, 0, '10750.0000', '10750.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(33, '', 0, 0, '15000.0000', '15000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(35, '', 0, 0, '19000.0000', '19000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(37, '', 0, 0, '124875.0000', '124875.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(39, '', 0, 0, '36523.0000', '36523.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(41, '', 0, 0, '52000.0000', '52000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(43, '', 0, 0, '37425.0000', '37425.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(46, '', 0, 0, '43889.0000', '43889.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(49, '', 0, 0, '48666.0000', '48666.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(51, '', 0, 0, '58000.0000', '58000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(54, '', 0, 0, '27456.0000', '27456.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(57, '', 0, 0, '27789.0000', '27789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(59, '', 0, 0, '14000.0000', '14000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(61, '', 0, 0, '11667.0000', '11667.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(63, '', 0, 0, '11450.0000', '11450.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(65, '', 0, 0, '20000.0000', '20000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(67, '', 0, 0, '52350.0000', '52350.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(69, '', 0, 0, '9889.0000', '9889.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(71, '', 0, 0, '47455.0000', '47455.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(73, '', 0, 0, '16789.0000', '16789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(75, '', 0, 0, '9000.0000', '9000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(77, '', 0, 0, '14889.0000', '14889.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(79, '', 0, 0, '16550.0000', '16550.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(82, '', 0, 0, '15687.0000', '15687.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(84, '', 0, 0, '9456.0000', '9456.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(86, '', 0, 0, '10000.0000', '10000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(88, '', 0, 0, '21779.0000', '21779.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(90, '', 0, 0, '28288.0000', '28288.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(92, '', 0, 0, '15050.0000', '15050.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(95, '', 0, 0, '79899.0000', '79899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(97, '', 0, 0, '69650.0000', '69650.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(99, '', 0, 0, '75645.0000', '75645.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(101, '', 0, 0, '16240.0000', '16240.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(137, '', 0, 0, '66800.0000', '66800.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(138, '', 0, 0, '50000.0000', '50000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(139, '', 0, 0, '40799.0000', '40799.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(140, '', 0, 0, '2990.0000', '2990.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(141, '', 0, 0, '3215.0000', '3215.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(142, '', 0, 0, '1356.0000', '1356.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(144, '', 0, 0, '1165.0000', '1165.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(146, '', 0, 0, '2289.0000', '2289.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(147, '', 0, 0, '1100.0000', '1100.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(148, '', 0, 0, '2750.0000', '2750.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(149, '', 0, 0, '3000.0000', '3000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(151, '', 0, 0, '29899.0000', '29899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(153, '', 0, 0, '13789.0000', '13789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(154, '', 0, 0, '26300.0000', '26300.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(155, '', 0, 0, '27320.0000', '27320.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(156, '', 0, 0, '48789.0000', '48789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(157, '', 0, 0, '20000.0000', '20000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(158, '', 0, 0, '7000.0000', '7000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(159, '', 0, 0, '18980.0000', '18980.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(160, '', 0, 0, '7890.0000', '7890.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(161, '', 0, 0, '2568.0000', '2568.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(163, '', 0, 0, '88123.0000', '88123.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(164, '', 0, 0, '19789.0000', '19789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(165, '', 0, 0, '96678.0000', '96678.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(166, '', 0, 0, '1100.0000', '1100.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(167, '', 0, 0, '2365.0000', '2365.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(168, '', 0, 0, '2856.0000', '2856.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(169, '', 0, 0, '2355.0000', '2355.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(170, '', 0, 0, '2278.0000', '2278.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(171, '', 0, 0, '23666.0000', '23666.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(172, '', 0, 0, '1778.0000', '1778.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(173, '', 0, 0, '1598.0000', '1598.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(174, '', 0, 0, '2896.0000', '2896.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(175, '', 0, 0, '18599.0000', '18599.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

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
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=885;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1699;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
