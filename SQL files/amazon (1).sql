-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 08:02 AM
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
-- Database: `amazon`
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

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(9, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-12-04 07:30:35', '2020-12-04 07:30:35', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1607067035;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1607067035;}', 0, 1, '2020-12-04 07:31:30', '2020-12-04 07:31:30', 0, NULL);

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

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(10, 9, 'action created', '2020-12-04 07:30:35', '2020-12-04 07:30:35'),
(11, 9, 'action started via Async Request', '2020-12-04 07:31:30', '2020-12-04 07:31:30'),
(12, 9, 'action complete via Async Request', '2020-12-04 07:31:30', '2020-12-04 07:31:30');

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-10-30 14:36:50', '2020-10-30 14:36:50', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
(1, 'siteurl', 'http://127.0.0.1/Amazon', 'yes'),
(2, 'home', 'http://127.0.0.1/Amazon', 'yes'),
(3, 'blogname', 'Amazon', 'yes'),
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
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:162:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:57:\"C:\\xampp\\htdocs\\Amazon/wp-content/themes/astrid/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'buzz-ecommerce', 'yes'),
(41, 'stylesheet', 'buzz-ecommerce', 'yes'),
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
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1619620595', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:17:{i:1607508633;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1607510215;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607510545;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607510561;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607512191;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1607524613;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607524615;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607524652;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607524656;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607524946;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607524952;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607535736;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607546536;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607558400;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607783814;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1607956996;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
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
(117, 'theme_mods_twentytwenty', 'a:4:{s:11:\"custom_logo\";i:18;s:16:\"background_color\";s:3:\"fff\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604078754;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(148, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(149, 'schema-ActionScheduler_StoreSchema', '3.0.1604068892', 'yes'),
(150, 'schema-ActionScheduler_LoggerSchema', '2.0.1604068893', 'yes'),
(153, 'woocommerce_schema_version', '430', 'yes'),
(154, 'woocommerce_store_address', 'd/805 Amarjeet building CHS Kandivali west', 'yes'),
(155, 'woocommerce_store_address_2', '', 'yes'),
(156, 'woocommerce_store_city', 'Mumbai', 'yes'),
(157, 'woocommerce_default_country', 'IN:MH', 'yes'),
(158, 'woocommerce_store_postcode', '400067', 'yes'),
(159, 'woocommerce_allowed_countries', 'all', 'yes'),
(160, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(161, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(162, 'woocommerce_ship_to_countries', '', 'yes'),
(163, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_default_customer_address', 'base', 'yes'),
(165, 'woocommerce_calc_taxes', 'yes', 'yes'),
(166, 'woocommerce_enable_coupons', 'yes', 'yes'),
(167, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(168, 'woocommerce_currency', 'INR', 'yes'),
(169, 'woocommerce_currency_pos', 'left', 'yes'),
(170, 'woocommerce_price_thousand_sep', ',', 'yes'),
(171, 'woocommerce_price_decimal_sep', '.', 'yes'),
(172, 'woocommerce_price_num_decimals', '2', 'yes'),
(173, 'woocommerce_shop_page_id', '7', 'yes'),
(174, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(175, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(176, 'woocommerce_placeholder_image', '6', 'yes'),
(177, 'woocommerce_weight_unit', 'kg', 'yes'),
(178, 'woocommerce_dimension_unit', 'cm', 'yes'),
(179, 'woocommerce_enable_reviews', 'yes', 'yes'),
(180, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(181, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(182, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(183, 'woocommerce_review_rating_required', 'yes', 'no'),
(184, 'woocommerce_manage_stock', 'yes', 'yes'),
(185, 'woocommerce_hold_stock_minutes', '60', 'no'),
(186, 'woocommerce_notify_low_stock', 'yes', 'no'),
(187, 'woocommerce_notify_no_stock', 'yes', 'no'),
(188, 'woocommerce_stock_email_recipient', 'anujatendulkar5@gmail.com', 'no'),
(189, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(190, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(191, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(192, 'woocommerce_stock_format', '', 'yes'),
(193, 'woocommerce_file_download_method', 'force', 'no'),
(194, 'woocommerce_downloads_require_login', 'no', 'no'),
(195, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(196, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(197, 'woocommerce_prices_include_tax', 'no', 'yes'),
(198, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(199, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(200, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(201, 'woocommerce_tax_classes', '', 'yes'),
(202, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(203, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(204, 'woocommerce_price_display_suffix', '', 'yes'),
(205, 'woocommerce_tax_total_display', 'itemized', 'no'),
(206, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(207, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(208, 'woocommerce_ship_to_destination', 'billing', 'no'),
(209, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(210, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(211, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(212, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(213, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(214, 'woocommerce_registration_generate_username', 'yes', 'no'),
(215, 'woocommerce_registration_generate_password', 'yes', 'no'),
(216, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(217, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(218, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(219, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(220, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(221, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(222, 'woocommerce_trash_pending_orders', '', 'no'),
(223, 'woocommerce_trash_failed_orders', '', 'no'),
(224, 'woocommerce_trash_cancelled_orders', '', 'no'),
(225, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(226, 'woocommerce_email_from_name', 'Amazon', 'no'),
(227, 'woocommerce_email_from_address', 'anujatendulkar5@gmail.com', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(230, 'woocommerce_email_base_color', '#96588a', 'no'),
(231, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(232, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(233, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(234, 'woocommerce_cart_page_id', '8', 'no'),
(235, 'woocommerce_checkout_page_id', '9', 'no'),
(236, 'woocommerce_myaccount_page_id', '10', 'no'),
(237, 'woocommerce_terms_page_id', '', 'no'),
(238, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(239, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(240, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(241, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(242, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(243, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(244, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(245, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(246, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(247, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(248, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(249, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(250, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(251, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(252, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(253, 'woocommerce_api_enabled', 'no', 'yes'),
(254, 'woocommerce_allow_tracking', 'no', 'no'),
(255, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(256, 'woocommerce_single_image_width', '600', 'yes'),
(257, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(258, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(259, 'woocommerce_demo_store', 'no', 'no'),
(260, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(261, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(262, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(263, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(265, 'default_product_cat', '15', 'yes'),
(268, 'woocommerce_version', '4.6.1', 'yes'),
(269, 'woocommerce_db_version', '4.6.1', 'yes'),
(272, 'action_scheduler_lock_async-request-runner', '1607504281', 'yes'),
(273, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(274, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"M2FqsewP4e1QUiLesXknZqJh0lobVZXw\";}', 'yes'),
(275, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(276, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(280, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(282, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'woocommerce_admin_version', '1.6.2', 'yes'),
(291, 'woocommerce_admin_install_timestamp', '1604068953', 'yes'),
(295, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1604068954', 'yes'),
(297, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(298, 'wc_blocks_db_schema_version', '260', 'yes'),
(299, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'yes'),
(301, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(305, 'wc_remote_inbox_notifications_specs', 'a:5:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:26:\"WooCommerce Shipping & Tax\";s:7:\"content\";s:255:\"WooCommerce Shipping & Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:84:\"https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:19:\"wcpay-promo-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:19:\"wcpay-promo-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:856:\"<a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br/><br/><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-01-01 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:26:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CO\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DE\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"FL\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"HI\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ID\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IN\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KS\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"KY\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"LA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MA\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MN\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MT\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NE\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NV\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NH\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NM\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ND\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OH\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OR\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"PA\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SD\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TN\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"TX\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VA\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WA\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WI\";}}}}}s:27:\"wcpay-subscriptions-2020-11\";O:8:\"stdClass\":8:{s:4:\"slug\";s:27:\"wcpay-subscriptions-2020-11\";s:4:\"type\";s:9:\"marketing\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:54:\"Manage subscriber payments from your store\'s dashboard\";s:7:\"content\";s:643:\"Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br/><br/><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&utm_source=product&utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:11:\"install-now\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:11:\"Install now\";}}s:3:\"url\";s:57:\"admin.php?page=wc-admin&action=setup-woocommerce-payments\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:9:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:17:\"woocommerce-admin\";}}i:1;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:17:\"woocommerce-admin\";s:8:\"operator\";s:2:\">=\";s:7:\"version\";s:5:\"1.7.0\";}i:2;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:2:{i:0;s:20:\"woocommerce-payments\";i:1;s:26:\"woocommerce-gateway-stripe\";}}}i:3;O:8:\"stdClass\":2:{s:4:\"type\";s:3:\"not\";s:7:\"operand\";O:8:\"stdClass\":4:{s:4:\"type\";s:18:\"onboarding_profile\";s:5:\"index\";s:8:\"industry\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";}}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:11:\"order_count\";s:9:\"operation\";s:2:\">=\";s:5:\"value\";i:10;}i:5;O:8:\"stdClass\":2:{s:4:\"type\";s:18:\"publish_after_time\";s:13:\"publish_after\";s:19:\"2020-11-18 14:00:00\";}i:6;O:8:\"stdClass\":2:{s:4:\"type\";s:19:\"publish_before_time\";s:14:\"publish_before\";s:19:\"2021-01-01 00:00:00\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"US\";}i:8;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:24:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AL\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AK\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AZ\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"AR\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CA\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"CT\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"DC\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IL\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"IA\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"ME\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MD\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MI\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MS\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"MO\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NJ\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NY\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"NC\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"OK\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"RI\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"SC\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"UT\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"VT\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WV\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:19:\"base_location_state\";s:9:\"operation\";s:1:\"=\";s:5:\"value\";s:2:\"WY\";}}}}}}', 'yes'),
(307, '_transient_woocommerce_reports-transient-version', '1604077944', 'yes'),
(327, 'action_scheduler_migration_status', 'complete', 'yes'),
(346, 'woocommerce_onboarding_profile', 'a:9:{s:7:\"skipped\";b:1;s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:21:\"electronics-computers\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:6:\"11-100\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:7:\"plugins\";s:7:\"skipped\";s:9:\"completed\";b:1;}', 'yes'),
(353, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(354, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"anujatendulkar5@gmail.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1604131191;}', 'no'),
(364, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1607067090;}', 'no'),
(377, 'product_cat_children', 'a:0:{}', 'yes'),
(379, '_transient_product_query-transient-version', '1607067320', 'yes'),
(380, '_transient_product-transient-version', '1607067320', 'yes'),
(391, 'woocommerce_task_list_tracked_completed_tasks', 'a:6:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:8:\"payments\";i:3;s:3:\"tax\";i:4;s:8:\"shipping\";i:5;s:10:\"appearance\";}', 'yes'),
(394, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(411, '_transient_shipping-transient-version', '1604077530', 'yes'),
(417, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:0:\"\";s:10:\"min_amount\";s:1:\"0\";s:16:\"ignore_discounts\";s:2:\"no\";}', 'yes'),
(423, 'woocommerce_onboarding_homepage_post_id', '13', 'yes'),
(434, 'woocommerce_task_list_appearance_complete', '1', 'yes'),
(435, 'woocommerce_demo_store_notice', '', 'yes'),
(443, 'woocommerce_task_list_complete', 'yes', 'yes'),
(472, 'theme_mods_seos-social', 'a:4:{s:16:\"background_color\";s:3:\"fff\";s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604226156;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(473, 'current_theme', 'Buzz Ecommerce', 'yes'),
(474, 'theme_switched', '', 'yes'),
(475, 'theme_switched_via_customizer', '', 'yes'),
(476, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(477, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(536, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1607504203;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(913, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":10,\"critical\":0}', 'yes'),
(1325, 'theme_mods_versatile-business-dark', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604224566;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}}}}', 'yes'),
(1333, 'theme_mods_astrid', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:13:\"primary_color\";s:7:\"#000000\";s:16:\"site_description\";s:7:\"#000000\";s:15:\"body_text_color\";s:7:\"#000000\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604225796;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}}}}', 'yes'),
(1334, 'widget_atframework_social_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1335, 'elementor_disable_color_schemes', 'yes', 'yes'),
(1336, 'elementor_disable_typography_schemes', 'yes', 'yes'),
(1338, 'widget_atframework-recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1339, 'widget_atframework_video', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1340, 'widget_atframework_clients', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1341, 'widget_atframework_employees', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1342, 'widget_atframework_facts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1343, 'widget_atframework_posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1344, 'widget_atframework_projects', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1345, 'widget_atframework_services', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1346, 'widget_atframework_skills', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1347, 'widget_atframework_testimonials', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1351, 'category_children', 'a:0:{}', 'yes'),
(1390, 'theme_mods_ecommerce-storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604226715;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:8:\"page-top\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:19:\"sidebar-woocommerce\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}s:11:\"home-blog-1\";a:0:{}}}}', 'yes'),
(1391, 'widget_new_york_business_lite_latest_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1392, 'widget_new_york_business_product_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1393, 'widget_new_york_business_product_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1395, 'theme_mods_new-york-business', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604226103;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:19:\"sidebar-woocommerce\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}s:11:\"home-blog-1\";a:0:{}}}}', 'yes'),
(1398, 'theme_mods_classic-ecommerce', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604226017;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(1429, 'theme_mods_business-ecommerce', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604226843;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:21:\"woocommerce-sidebar-1\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}}}}', 'yes'),
(1434, 'theme_mods_perfect-ecommerce-store', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604226906;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:16:\"homepage-sidebar\";a:0:{}}}}', 'yes'),
(1438, 'theme_mods_ecommerce-market', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604226967;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:14:\"recent-posts-2\";i:1;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:8:\"search-2\";}s:25:\"home-page-section-sidebar\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:12:\"sidebar-shop\";a:0:{}}}}', 'yes'),
(1439, 'widget_ecommerce_market_categories_collection', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1440, 'widget_ecommerce_marke_product_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1441, 'widget_ecommerce_market_featured_product', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1442, 'widget_ecommerce_market_latest_blog', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1443, 'widget_ecommerce_market_testimonial', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1444, 'widget_ecommerce-market', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1445, 'widget_ecommerce_market_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1448, 'theme_mods_buzz-ecommerce', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:23:\"homepage_slider_section\";a:1:{i:0;a:4:{s:11:\"slider_text\";s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";s:12:\"slider_links\";s:1:\"#\";s:15:\"slider_btn_text\";s:8:\"Shop Now\";s:12:\"slider_image\";s:86:\"http://127.0.0.1/Amazon/wp-content/themes/buzz-ecommerce/assets/images/slider-item.jpg\";}}s:28:\"homepage_service_box_section\";a:1:{i:0;a:3:{s:13:\"service_icons\";s:15:\"fa fa-ambulance\";s:13:\"service_title\";s:13:\"FREE DELIVERY\";s:18:\"service_short_desc\";s:11:\"From $59.89\";}}s:30:\"buzz_ecommerce_homepage_banner\";a:1:{i:0;a:2:{s:12:\"banner_image\";s:82:\"http://127.0.0.1/Amazon/wp-content/themes/buzz-ecommerce/assets/images/mac-add.jpg\";s:12:\"banner_links\";s:1:\"#\";}}}', 'yes'),
(1450, 'Buzz_Ecommerce_admin_notice_welcome', '1', 'yes'),
(1463, '_transient_timeout_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', '1609648516', 'no'),
(1464, '_transient_wc_blocks_query_8ead99c4e93e453aac77df5171d13640', 'a:2:{s:7:\"version\";s:10:\"1607055709\";s:5:\"value\";a:9:{i:0;i:188;i:1;i:184;i:2;i:182;i:3;i:180;i:4;i:178;i:5;i:176;i:6;i:172;i:7;i:170;i:8;i:168;}}', 'no'),
(1488, '_transient_timeout_wc_shipping_method_count_legacy', '1609659012', 'no'),
(1489, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1604077530\";s:5:\"value\";i:1;}', 'no'),
(1490, '_site_transient_timeout_browser_2d6330f380f44ac20f3a02eed0958f66', '1607671824', 'no'),
(1491, '_site_transient_browser_2d6330f380f44ac20f3a02eed0958f66', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"87.0.4280.88\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1492, '_site_transient_timeout_php_check_6a93f292d9a273c004fc36e1f86d97b3', '1607671825', 'no'),
(1493, '_site_transient_php_check_6a93f292d9a273c004fc36e1f86d97b3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1517, '_transient_timeout_orders-all-statuses', '1607671837', 'no'),
(1518, '_transient_orders-all-statuses', 'a:2:{s:7:\"version\";s:10:\"1604077944\";s:5:\"value\";a:0:{}}', 'no'),
(1548, '_transient_timeout_wc_term_counts', '1609659451', 'no'),
(1549, '_transient_wc_term_counts', 'a:2:{i:16;s:2:\"37\";i:17;s:2:\"35\";}', 'no'),
(1635, '_transient_timeout__woocommerce_helper_subscriptions', '1607505107', 'no'),
(1636, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(1637, '_site_transient_timeout_theme_roots', '1607506007', 'no'),
(1638, '_site_transient_theme_roots', 'a:14:{s:6:\"astrid\";s:7:\"/themes\";s:18:\"business-ecommerce\";s:7:\"/themes\";s:14:\"buzz-ecommerce\";s:7:\"/themes\";s:17:\"classic-ecommerce\";s:7:\"/themes\";s:16:\"ecommerce-market\";s:7:\"/themes\";s:20:\"ecommerce-storefront\";s:7:\"/themes\";s:17:\"new-york-business\";s:7:\"/themes\";s:23:\"perfect-ecommerce-store\";s:7:\"/themes\";s:11:\"seos-social\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:23:\"versatile-business-dark\";s:7:\"/themes\";s:18:\"versatile-business\";s:7:\"/themes\";}', 'no'),
(1639, '_transient_timeout__woocommerce_helper_updates', '1607547407', 'no'),
(1640, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1607504207;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1641, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607504211;s:7:\"checked\";a:14:{s:6:\"astrid\";s:4:\"1.18\";s:18:\"business-ecommerce\";s:5:\"1.2.3\";s:14:\"buzz-ecommerce\";s:5:\"1.1.6\";s:17:\"classic-ecommerce\";s:3:\"0.3\";s:16:\"ecommerce-market\";s:5:\"2.0.4\";s:20:\"ecommerce-storefront\";s:5:\"1.2.1\";s:17:\"new-york-business\";s:5:\"1.3.7\";s:23:\"perfect-ecommerce-store\";s:3:\"0.5\";s:11:\"seos-social\";s:5:\"1.1.5\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";s:23:\"versatile-business-dark\";s:5:\"1.0.3\";s:18:\"versatile-business\";s:5:\"1.0.7\";}s:8:\"response\";a:8:{s:18:\"business-ecommerce\";a:6:{s:5:\"theme\";s:18:\"business-ecommerce\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:48:\"https://wordpress.org/themes/business-ecommerce/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/theme/business-ecommerce.1.2.4.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"classic-ecommerce\";a:6:{s:5:\"theme\";s:17:\"classic-ecommerce\";s:11:\"new_version\";s:5:\"0.3.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/classic-ecommerce/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/classic-ecommerce.0.3.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:20:\"ecommerce-storefront\";a:6:{s:5:\"theme\";s:20:\"ecommerce-storefront\";s:11:\"new_version\";s:5:\"1.2.2\";s:3:\"url\";s:50:\"https://wordpress.org/themes/ecommerce-storefront/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/theme/ecommerce-storefront.1.2.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:23:\"perfect-ecommerce-store\";a:6:{s:5:\"theme\";s:23:\"perfect-ecommerce-store\";s:11:\"new_version\";s:5:\"0.5.1\";s:3:\"url\";s:53:\"https://wordpress.org/themes/perfect-ecommerce-store/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/theme/perfect-ecommerce-store.0.5.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.8.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:23:\"versatile-business-dark\";a:6:{s:5:\"theme\";s:23:\"versatile-business-dark\";s:11:\"new_version\";s:5:\"1.0.4\";s:3:\"url\";s:53:\"https://wordpress.org/themes/versatile-business-dark/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/theme/versatile-business-dark.1.0.4.zip\";s:8:\"requires\";s:3:\"5.2\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:6:{s:6:\"astrid\";a:6:{s:5:\"theme\";s:6:\"astrid\";s:11:\"new_version\";s:4:\"1.18\";s:3:\"url\";s:36:\"https://wordpress.org/themes/astrid/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/theme/astrid.1.18.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}s:14:\"buzz-ecommerce\";a:6:{s:5:\"theme\";s:14:\"buzz-ecommerce\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/buzz-ecommerce/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/buzz-ecommerce.1.1.6.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:5:\"5.2.4\";}s:16:\"ecommerce-market\";a:6:{s:5:\"theme\";s:16:\"ecommerce-market\";s:11:\"new_version\";s:5:\"2.0.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/ecommerce-market/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/theme/ecommerce-market.2.0.4.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";b:0;}s:17:\"new-york-business\";a:6:{s:5:\"theme\";s:17:\"new-york-business\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:47:\"https://wordpress.org/themes/new-york-business/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/new-york-business.1.3.7.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:11:\"seos-social\";a:6:{s:5:\"theme\";s:11:\"seos-social\";s:11:\"new_version\";s:5:\"1.1.5\";s:3:\"url\";s:41:\"https://wordpress.org/themes/seos-social/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/seos-social.1.1.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:18:\"versatile-business\";a:6:{s:5:\"theme\";s:18:\"versatile-business\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:48:\"https://wordpress.org/themes/versatile-business/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/theme/versatile-business.1.0.7.zip\";s:8:\"requires\";s:3:\"5.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1642, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607504213;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.6.1\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1647, '_transient_timeout_wc_related_38', '1607590671', 'no'),
(1648, '_transient_wc_related_38', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=38\";a:23:{i:0;s:2:\"11\";i:1;s:2:\"25\";i:2;s:2:\"28\";i:3;s:2:\"30\";i:4;s:2:\"32\";i:5;s:2:\"40\";i:6;s:2:\"42\";i:7;s:2:\"43\";i:8;s:2:\"46\";i:9;s:2:\"48\";i:10;s:2:\"50\";i:11;s:2:\"52\";i:12;s:2:\"55\";i:13;s:2:\"57\";i:14;s:2:\"59\";i:15;s:2:\"61\";i:16;s:2:\"64\";i:17;s:2:\"67\";i:18;s:2:\"69\";i:19;s:2:\"72\";i:20;s:2:\"74\";i:21;s:2:\"76\";i:22;s:2:\"78\";}}', 'no'),
(1650, '_transient_timeout_wc_related_25', '1607592121', 'no'),
(1651, '_transient_wc_related_25', 'a:1:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=25\";a:23:{i:0;s:2:\"11\";i:1;s:2:\"28\";i:2;s:2:\"30\";i:3;s:2:\"32\";i:4;s:2:\"38\";i:5;s:2:\"40\";i:6;s:2:\"42\";i:7;s:2:\"43\";i:8;s:2:\"46\";i:9;s:2:\"48\";i:10;s:2:\"50\";i:11;s:2:\"52\";i:12;s:2:\"55\";i:13;s:2:\"57\";i:14;s:2:\"59\";i:15;s:2:\"61\";i:16;s:2:\"64\";i:17;s:2:\"67\";i:18;s:2:\"69\";i:19;s:2:\"72\";i:20;s:2:\"74\";i:21;s:2:\"76\";i:22;s:2:\"78\";}}', 'no');

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
(5, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 11, '_edit_last', '1'),
(8, 11, '_edit_lock', '1607067014:1'),
(9, 12, '_wp_attached_file', '2020/10/iphone-7.jpg'),
(10, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:343;s:6:\"height\";i:606;s:4:\"file\";s:20:\"2020/10/iphone-7.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"iphone-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"iphone-7-170x300.jpg\";s:5:\"width\";i:170;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"iphone-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"iphone-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:20:\"iphone-7-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 11, '_thumbnail_id', '12'),
(12, 11, '_regular_price', '24999'),
(13, 11, '_sale_price', '22599'),
(16, 11, 'total_sales', '0'),
(17, 11, '_tax_status', 'taxable'),
(18, 11, '_tax_class', ''),
(19, 11, '_manage_stock', 'no'),
(20, 11, '_backorders', 'no'),
(21, 11, '_sold_individually', 'no'),
(22, 11, '_virtual', 'no'),
(23, 11, '_downloadable', 'no'),
(24, 11, '_download_limit', '-1'),
(25, 11, '_download_expiry', '-1'),
(26, 11, '_stock', NULL),
(27, 11, '_stock_status', 'instock'),
(28, 11, '_wc_average_rating', '0'),
(29, 11, '_wc_review_count', '0'),
(30, 11, '_product_version', '4.6.1'),
(31, 11, '_price', '22599'),
(32, 14, '_wp_attached_file', '2020/10/other-small.jpg'),
(33, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2020/10/other-small.jpg\";s:5:\"sizes\";a:12:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"other-small-1200x800.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 14, '_source_url', 'http://127.0.0.1/Amazon/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg'),
(35, 13, '_edit_lock', '1604077684:1'),
(36, 18, '_wp_attached_file', '2020/10/A.jpg'),
(37, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:242;s:6:\"height\";i:208;s:4:\"file\";s:13:\"2020/10/A.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"A-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"A-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"A-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 25, '_edit_last', '1'),
(71, 25, '_edit_lock', '1607067402:1'),
(72, 26, '_wp_attached_file', '2020/10/Iphone-8.jpg'),
(73, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/10/Iphone-8.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Iphone-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 25, '_thumbnail_id', '26'),
(75, 25, '_regular_price', '35800'),
(76, 25, '_sale_price', '32789'),
(77, 25, 'total_sales', '0'),
(78, 25, '_tax_status', 'taxable'),
(79, 25, '_tax_class', ''),
(80, 25, '_manage_stock', 'no'),
(81, 25, '_backorders', 'no'),
(82, 25, '_sold_individually', 'no'),
(83, 25, '_virtual', 'no'),
(84, 25, '_downloadable', 'no'),
(85, 25, '_download_limit', '-1'),
(86, 25, '_download_expiry', '-1'),
(87, 25, '_stock', NULL),
(88, 25, '_stock_status', 'instock'),
(89, 25, '_wc_average_rating', '0'),
(90, 25, '_wc_review_count', '0'),
(91, 25, '_product_version', '4.6.1'),
(92, 25, '_price', '32789'),
(95, 28, '_edit_last', '1'),
(96, 28, '_edit_lock', '1607067241:1'),
(97, 29, '_wp_attached_file', '2020/10/Iphone-XR.jpg'),
(98, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:441;s:6:\"height\";i:529;s:4:\"file\";s:21:\"2020/10/Iphone-XR.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-250x300.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Iphone-XR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Iphone-XR-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 28, '_thumbnail_id', '29'),
(100, 28, '_regular_price', '47900'),
(101, 28, '_sale_price', '45789'),
(104, 28, 'total_sales', '0'),
(105, 28, '_tax_status', 'taxable'),
(106, 28, '_tax_class', ''),
(107, 28, '_manage_stock', 'no'),
(108, 28, '_backorders', 'no'),
(109, 28, '_sold_individually', 'no'),
(110, 28, '_virtual', 'no'),
(111, 28, '_downloadable', 'no'),
(112, 28, '_download_limit', '-1'),
(113, 28, '_download_expiry', '-1'),
(114, 28, '_stock', NULL),
(115, 28, '_stock_status', 'instock'),
(116, 28, '_wc_average_rating', '0'),
(117, 28, '_wc_review_count', '0'),
(118, 28, '_product_version', '4.6.1'),
(119, 28, '_price', '45789'),
(120, 30, '_edit_last', '1'),
(121, 30, '_edit_lock', '1607067269:1'),
(122, 31, '_wp_attached_file', '2020/10/iPhone_11.png'),
(123, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:220;s:6:\"height\";i:335;s:4:\"file\";s:21:\"2020/10/iPhone_11.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"iPhone_11-197x300.png\";s:5:\"width\";i:197;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"iPhone_11-220x300.png\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"iPhone_11-220x300.png\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"iPhone_11-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 30, '_thumbnail_id', '31'),
(125, 30, '_regular_price', '64900'),
(126, 30, '_sale_price', '55789'),
(129, 30, 'total_sales', '0'),
(130, 30, '_tax_status', 'taxable'),
(131, 30, '_tax_class', ''),
(132, 30, '_manage_stock', 'no'),
(133, 30, '_backorders', 'no'),
(134, 30, '_sold_individually', 'no'),
(135, 30, '_virtual', 'no'),
(136, 30, '_downloadable', 'no'),
(137, 30, '_download_limit', '-1'),
(138, 30, '_download_expiry', '-1'),
(139, 30, '_stock', NULL),
(140, 30, '_stock_status', 'instock'),
(141, 30, '_wc_average_rating', '0'),
(142, 30, '_wc_review_count', '0'),
(143, 30, '_product_version', '4.6.1'),
(144, 30, '_price', '55789'),
(145, 32, '_edit_last', '1'),
(146, 32, '_edit_lock', '1607067255:1'),
(147, 33, '_wp_attached_file', '2020/10/Iphone-11-Pro-1.jpg'),
(148, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1481;s:4:\"file\";s:27:\"2020/10/Iphone-11-Pro-1.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-243x300.jpg\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Iphone-11-Pro-1-830x1024.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-768x948.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:948;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-600x741.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:741;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-600x741.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:741;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Iphone-11-Pro-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 32, '_thumbnail_id', '33'),
(150, 32, '_regular_price', '106600'),
(151, 32, '_sale_price', '99255'),
(154, 32, 'total_sales', '0'),
(155, 32, '_tax_status', 'taxable'),
(156, 32, '_tax_class', ''),
(157, 32, '_manage_stock', 'no'),
(158, 32, '_backorders', 'no'),
(159, 32, '_sold_individually', 'no'),
(160, 32, '_virtual', 'no'),
(161, 32, '_downloadable', 'no'),
(162, 32, '_download_limit', '-1'),
(163, 32, '_download_expiry', '-1'),
(164, 32, '_stock', NULL),
(165, 32, '_stock_status', 'instock'),
(166, 32, '_wc_average_rating', '0'),
(167, 32, '_wc_review_count', '0'),
(168, 32, '_product_version', '4.6.1'),
(169, 32, '_price', '99255'),
(173, 38, '_edit_last', '1'),
(174, 38, '_edit_lock', '1607067402:1'),
(175, 39, '_wp_attached_file', '2020/10/iphone-12-Pro-Max.jpg'),
(176, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:29:\"2020/10/iphone-12-Pro-Max.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"iphone-12-Pro-Max-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 38, '_thumbnail_id', '39'),
(178, 38, '_regular_price', '129700'),
(179, 38, '_sale_price', '119600'),
(182, 38, 'total_sales', '0'),
(183, 38, '_tax_status', 'taxable'),
(184, 38, '_tax_class', ''),
(185, 38, '_manage_stock', 'no'),
(186, 38, '_backorders', 'no'),
(187, 38, '_sold_individually', 'no'),
(188, 38, '_virtual', 'no'),
(189, 38, '_downloadable', 'no'),
(190, 38, '_download_limit', '-1'),
(191, 38, '_download_expiry', '-1'),
(192, 38, '_stock', NULL),
(193, 38, '_stock_status', 'instock'),
(194, 38, '_wc_average_rating', '0'),
(195, 38, '_wc_review_count', '0'),
(196, 38, '_product_version', '4.6.1'),
(197, 38, '_price', '119600'),
(198, 40, '_edit_last', '1'),
(199, 40, '_edit_lock', '1607067403:1'),
(200, 41, '_wp_attached_file', '2020/10/OnePlus-6T.jpg'),
(201, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:350;s:4:\"file\";s:22:\"2020/10/OnePlus-6T.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-6T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 40, '_thumbnail_id', '41'),
(203, 40, '_regular_price', '39999'),
(204, 40, '_sale_price', '35789'),
(207, 40, 'total_sales', '0'),
(208, 40, '_tax_status', 'taxable'),
(209, 40, '_tax_class', ''),
(210, 40, '_manage_stock', 'no'),
(211, 40, '_backorders', 'no'),
(212, 40, '_sold_individually', 'no'),
(213, 40, '_virtual', 'no'),
(214, 40, '_downloadable', 'no'),
(215, 40, '_download_limit', '-1'),
(216, 40, '_download_expiry', '-1'),
(217, 40, '_stock', NULL),
(218, 40, '_stock_status', 'instock'),
(219, 40, '_wc_average_rating', '0'),
(220, 40, '_wc_review_count', '0'),
(221, 40, '_product_version', '4.6.1'),
(222, 40, '_price', '35789'),
(223, 42, '_edit_last', '1'),
(224, 42, '_edit_lock', '1607067402:1'),
(225, 42, '_thumbnail_id', '45'),
(226, 42, '_regular_price', '52999'),
(227, 42, '_sale_price', '51259'),
(230, 42, 'total_sales', '0'),
(231, 42, '_tax_status', 'taxable'),
(232, 42, '_tax_class', ''),
(233, 42, '_manage_stock', 'no'),
(234, 42, '_backorders', 'no'),
(235, 42, '_sold_individually', 'no'),
(236, 42, '_virtual', 'no'),
(237, 42, '_downloadable', 'no'),
(238, 42, '_download_limit', '-1'),
(239, 42, '_download_expiry', '-1'),
(240, 42, '_stock', NULL),
(241, 42, '_stock_status', 'instock'),
(242, 42, '_wc_average_rating', '0'),
(243, 42, '_wc_review_count', '0'),
(244, 42, '_product_version', '4.6.1'),
(245, 42, '_price', '51259'),
(246, 43, '_edit_last', '1'),
(247, 43, '_edit_lock', '1604140511:1'),
(248, 44, '_wp_attached_file', '2020/10/OnePlus-7T.jpg'),
(249, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:670;s:4:\"file\";s:22:\"2020/10/OnePlus-7T.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"OnePlus-7T-1024x536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"OnePlus-7T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-600x314.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-600x314.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:314;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-7T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(250, 45, '_wp_attached_file', '2020/10/OnePlus-7-Pro.jpg'),
(251, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:972;s:6:\"height\";i:1004;s:4:\"file\";s:25:\"2020/10/OnePlus-7-Pro.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-290x300.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-768x793.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:793;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"OnePlus-7-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-600x620.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-600x620.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"OnePlus-7-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 43, '_thumbnail_id', '44'),
(253, 43, '_regular_price', '39999'),
(254, 43, '_sale_price', '38123'),
(255, 43, 'total_sales', '0'),
(256, 43, '_tax_status', 'taxable'),
(257, 43, '_tax_class', ''),
(258, 43, '_manage_stock', 'no'),
(259, 43, '_backorders', 'no'),
(260, 43, '_sold_individually', 'no'),
(261, 43, '_virtual', 'no'),
(262, 43, '_downloadable', 'no'),
(263, 43, '_download_limit', '-1'),
(264, 43, '_download_expiry', '-1'),
(265, 43, '_stock', NULL),
(266, 43, '_stock_status', 'instock'),
(267, 43, '_wc_average_rating', '0'),
(268, 43, '_wc_review_count', '0'),
(269, 43, '_product_version', '4.6.1'),
(270, 43, '_price', '38123'),
(271, 46, '_edit_last', '1'),
(272, 46, '_edit_lock', '1604140790:1'),
(273, 47, '_wp_attached_file', '2020/10/OnePlus-8T.jpg'),
(274, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2020/10/OnePlus-8T.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"OnePlus-8T-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 46, '_thumbnail_id', '47'),
(276, 46, '_regular_price', '45999'),
(277, 46, '_sale_price', '42799'),
(278, 46, 'total_sales', '0'),
(279, 46, '_tax_status', 'taxable'),
(280, 46, '_tax_class', ''),
(281, 46, '_manage_stock', 'no'),
(282, 46, '_backorders', 'no'),
(283, 46, '_sold_individually', 'no'),
(284, 46, '_virtual', 'no'),
(285, 46, '_downloadable', 'no'),
(286, 46, '_download_limit', '-1'),
(287, 46, '_download_expiry', '-1'),
(288, 46, '_stock', NULL),
(289, 46, '_stock_status', 'instock'),
(290, 46, '_wc_average_rating', '0'),
(291, 46, '_wc_review_count', '0'),
(292, 46, '_product_version', '4.6.1'),
(293, 46, '_price', '42799'),
(294, 48, '_edit_last', '1'),
(295, 48, '_edit_lock', '1604141038:1'),
(296, 49, '_wp_attached_file', '2020/10/OnePlus-8.jpg'),
(297, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:21:\"2020/10/OnePlus-8.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"OnePlus-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"OnePlus-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(298, 48, '_thumbnail_id', '49'),
(299, 48, '_regular_price', '49999'),
(300, 48, '_sale_price', '47468'),
(301, 48, 'total_sales', '0'),
(302, 48, '_tax_status', 'taxable'),
(303, 48, '_tax_class', ''),
(304, 48, '_manage_stock', 'no'),
(305, 48, '_backorders', 'no'),
(306, 48, '_sold_individually', 'no'),
(307, 48, '_virtual', 'no'),
(308, 48, '_downloadable', 'no'),
(309, 48, '_download_limit', '-1'),
(310, 48, '_download_expiry', '-1'),
(311, 48, '_stock', NULL),
(312, 48, '_stock_status', 'instock'),
(313, 48, '_wc_average_rating', '0'),
(314, 48, '_wc_review_count', '0'),
(315, 48, '_product_version', '4.6.1'),
(316, 48, '_price', '47468'),
(317, 50, '_edit_last', '1'),
(318, 50, '_edit_lock', '1604141417:1'),
(319, 51, '_wp_attached_file', '2020/10/Oneplus-8-Pro.jpg'),
(320, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:25:\"2020/10/Oneplus-8-Pro.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Oneplus-8-Pro-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 50, '_thumbnail_id', '51'),
(322, 50, '_regular_price', '59999'),
(323, 50, '_sale_price', '58978'),
(324, 50, 'total_sales', '0'),
(325, 50, '_tax_status', 'taxable'),
(326, 50, '_tax_class', ''),
(327, 50, '_manage_stock', 'no'),
(328, 50, '_backorders', 'no'),
(329, 50, '_sold_individually', 'no'),
(330, 50, '_virtual', 'no'),
(331, 50, '_downloadable', 'no'),
(332, 50, '_download_limit', '-1'),
(333, 50, '_download_expiry', '-1'),
(334, 50, '_stock', NULL),
(335, 50, '_stock_status', 'instock'),
(336, 50, '_wc_average_rating', '0'),
(337, 50, '_wc_review_count', '0'),
(338, 50, '_product_version', '4.6.1'),
(339, 50, '_price', '58978'),
(340, 52, '_edit_last', '1'),
(341, 52, '_edit_lock', '1604142003:1'),
(342, 53, '_wp_attached_file', '2020/10/OnePlus-Nord-Blue.jpeg'),
(343, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:30:\"2020/10/OnePlus-Nord-Blue.jpeg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"OnePlus-Nord-Blue-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 52, '_thumbnail_id', '53'),
(345, 52, '_regular_price', '29999'),
(346, 52, '_sale_price', '28999'),
(347, 52, 'total_sales', '0'),
(348, 52, '_tax_status', 'taxable'),
(349, 52, '_tax_class', ''),
(350, 52, '_manage_stock', 'no'),
(351, 52, '_backorders', 'no'),
(352, 52, '_sold_individually', 'no'),
(353, 52, '_virtual', 'no'),
(354, 52, '_downloadable', 'no'),
(355, 52, '_download_limit', '-1'),
(356, 52, '_download_expiry', '-1'),
(357, 52, '_stock', NULL),
(358, 52, '_stock_status', 'instock'),
(359, 52, '_wc_average_rating', '0'),
(360, 52, '_wc_review_count', '0'),
(361, 52, '_product_version', '4.6.1'),
(362, 52, '_price', '28999'),
(363, 55, '_edit_last', '1'),
(364, 55, '_edit_lock', '1604142333:1'),
(365, 56, '_wp_attached_file', '2020/10/OnePlus-Nord.jpg'),
(366, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:24:\"2020/10/OnePlus-Nord.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"OnePlus-Nord-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 55, '_thumbnail_id', '56'),
(368, 55, '_regular_price', '29999'),
(369, 55, '_sale_price', '28750'),
(370, 55, 'total_sales', '0'),
(371, 55, '_tax_status', 'taxable'),
(372, 55, '_tax_class', ''),
(373, 55, '_manage_stock', 'no'),
(374, 55, '_backorders', 'no'),
(375, 55, '_sold_individually', 'no'),
(376, 55, '_virtual', 'no'),
(377, 55, '_downloadable', 'no'),
(378, 55, '_download_limit', '-1'),
(379, 55, '_download_expiry', '-1'),
(380, 55, '_stock', NULL),
(381, 55, '_stock_status', 'instock'),
(382, 55, '_wc_average_rating', '0'),
(383, 55, '_wc_review_count', '0'),
(384, 55, '_product_version', '4.6.1'),
(385, 55, '_price', '28750'),
(386, 57, '_edit_last', '1'),
(387, 57, '_edit_lock', '1604149897:1'),
(388, 58, '_wp_attached_file', '2020/10/Oppo-A5.png'),
(389, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:995;s:4:\"file\";s:19:\"2020/10/Oppo-A5.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-256x300.png\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-768x899.png\";s:5:\"width\";i:768;s:6:\"height\";i:899;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Oppo-A5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-600x702.png\";s:5:\"width\";i:600;s:6:\"height\";i:702;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-600x702.png\";s:5:\"width\";i:600;s:6:\"height\";i:702;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Oppo-A5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 57, '_thumbnail_id', '58'),
(391, 57, '_regular_price', '15990'),
(392, 57, '_sale_price', '13269'),
(393, 57, 'total_sales', '0'),
(394, 57, '_tax_status', 'taxable'),
(395, 57, '_tax_class', ''),
(396, 57, '_manage_stock', 'no'),
(397, 57, '_backorders', 'no'),
(398, 57, '_sold_individually', 'no'),
(399, 57, '_virtual', 'no'),
(400, 57, '_downloadable', 'no'),
(401, 57, '_download_limit', '-1'),
(402, 57, '_download_expiry', '-1'),
(403, 57, '_stock', NULL),
(404, 57, '_stock_status', 'instock'),
(405, 57, '_wc_average_rating', '0'),
(406, 57, '_wc_review_count', '0'),
(407, 57, '_product_version', '4.6.1'),
(408, 57, '_price', '13269'),
(409, 59, '_edit_last', '1'),
(410, 59, '_edit_lock', '1604150170:1'),
(411, 60, '_wp_attached_file', '2020/10/Oppo-A12.jpg'),
(412, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:679;s:4:\"file\";s:20:\"2020/10/Oppo-A12.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(413, 59, '_thumbnail_id', '60'),
(414, 59, '_regular_price', '12999'),
(415, 59, '_sale_price', '12000'),
(416, 59, 'total_sales', '0'),
(417, 59, '_tax_status', 'taxable'),
(418, 59, '_tax_class', ''),
(419, 59, '_manage_stock', 'no'),
(420, 59, '_backorders', 'no'),
(421, 59, '_sold_individually', 'no'),
(422, 59, '_virtual', 'no'),
(423, 59, '_downloadable', 'no'),
(424, 59, '_download_limit', '-1'),
(425, 59, '_download_expiry', '-1'),
(426, 59, '_stock', NULL),
(427, 59, '_stock_status', 'instock'),
(428, 59, '_wc_average_rating', '0'),
(429, 59, '_wc_review_count', '0'),
(430, 59, '_product_version', '4.6.1'),
(431, 59, '_price', '12000'),
(432, 61, '_edit_last', '1'),
(433, 61, '_edit_lock', '1604150414:1'),
(434, 62, '_wp_attached_file', '2020/10/Oppo-A31.jpg'),
(435, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:20:\"2020/10/Oppo-A31.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Oppo-A31-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(436, 61, '_thumbnail_id', '62'),
(437, 61, '_regular_price', '12480'),
(438, 61, '_sale_price', '11459'),
(439, 61, 'total_sales', '0'),
(440, 61, '_tax_status', 'taxable'),
(441, 61, '_tax_class', ''),
(442, 61, '_manage_stock', 'no'),
(443, 61, '_backorders', 'no'),
(444, 61, '_sold_individually', 'no'),
(445, 61, '_virtual', 'no'),
(446, 61, '_downloadable', 'no'),
(447, 61, '_download_limit', '-1'),
(448, 61, '_download_expiry', '-1'),
(449, 61, '_stock', NULL),
(450, 61, '_stock_status', 'instock'),
(451, 61, '_wc_average_rating', '0'),
(452, 61, '_wc_review_count', '0'),
(453, 61, '_product_version', '4.6.1'),
(454, 61, '_price', '11459'),
(455, 64, '_edit_last', '1'),
(456, 64, '_edit_lock', '1604150632:1'),
(457, 65, '_wp_attached_file', '2020/10/Oppo-A52.jpg'),
(458, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/10/Oppo-A52.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-A52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(459, 64, '_thumbnail_id', '65'),
(460, 64, '_regular_price', '13990'),
(461, 64, '_sale_price', '13000'),
(462, 64, 'total_sales', '0'),
(463, 64, '_tax_status', 'taxable'),
(464, 64, '_tax_class', ''),
(465, 64, '_manage_stock', 'no'),
(466, 64, '_backorders', 'no'),
(467, 64, '_sold_individually', 'no'),
(468, 64, '_virtual', 'no'),
(469, 64, '_downloadable', 'no'),
(470, 64, '_download_limit', '-1'),
(471, 64, '_download_expiry', '-1'),
(472, 64, '_stock', NULL),
(473, 64, '_stock_status', 'instock'),
(474, 64, '_wc_average_rating', '0'),
(475, 64, '_wc_review_count', '0'),
(476, 64, '_product_version', '4.6.1'),
(477, 64, '_price', '13000'),
(478, 67, '_edit_last', '1'),
(479, 67, '_edit_lock', '1604150884:1'),
(480, 68, '_wp_attached_file', '2020/10/Oppo-F15.jpg'),
(481, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/10/Oppo-F15.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Oppo-F15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(482, 67, '_thumbnail_id', '68'),
(483, 67, '_regular_price', '15950'),
(484, 67, '_sale_price', '14444'),
(485, 67, 'total_sales', '0'),
(486, 67, '_tax_status', 'taxable'),
(487, 67, '_tax_class', ''),
(488, 67, '_manage_stock', 'no'),
(489, 67, '_backorders', 'no'),
(490, 67, '_sold_individually', 'no'),
(491, 67, '_virtual', 'no'),
(492, 67, '_downloadable', 'no'),
(493, 67, '_download_limit', '-1'),
(494, 67, '_download_expiry', '-1'),
(495, 67, '_stock', NULL),
(496, 67, '_stock_status', 'instock'),
(497, 67, '_wc_average_rating', '0'),
(498, 67, '_wc_review_count', '0'),
(499, 67, '_product_version', '4.6.1'),
(500, 67, '_price', '14444'),
(501, 69, '_edit_last', '1'),
(502, 69, '_edit_lock', '1604151057:1'),
(503, 70, '_wp_attached_file', '2020/10/Oppo-Reno-2.jpg'),
(504, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:23:\"2020/10/Oppo-Reno-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Oppo-Reno-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(505, 69, '_thumbnail_id', '70'),
(506, 69, '_regular_price', '19920'),
(507, 69, '_sale_price', '17920'),
(508, 69, 'total_sales', '0'),
(509, 69, '_tax_status', 'taxable'),
(510, 69, '_tax_class', ''),
(511, 69, '_manage_stock', 'no'),
(512, 69, '_backorders', 'no'),
(513, 69, '_sold_individually', 'no'),
(514, 69, '_virtual', 'no'),
(515, 69, '_downloadable', 'no'),
(516, 69, '_download_limit', '-1'),
(517, 69, '_download_expiry', '-1'),
(518, 69, '_stock', NULL),
(519, 69, '_stock_status', 'instock'),
(520, 69, '_wc_average_rating', '0'),
(521, 69, '_wc_review_count', '0'),
(522, 69, '_product_version', '4.6.1'),
(523, 69, '_price', '17920'),
(524, 72, '_edit_last', '1'),
(525, 72, '_edit_lock', '1604151256:1'),
(526, 73, '_wp_attached_file', '2020/10/Oppo-Reno-2F.jpg'),
(527, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/10/Oppo-Reno-2F.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Oppo-Reno-2F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Oppo-Reno-2F-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(528, 72, '_thumbnail_id', '73');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(529, 72, '_regular_price', '21580'),
(530, 72, '_sale_price', '20145'),
(531, 72, 'total_sales', '0'),
(532, 72, '_tax_status', 'taxable'),
(533, 72, '_tax_class', ''),
(534, 72, '_manage_stock', 'no'),
(535, 72, '_backorders', 'no'),
(536, 72, '_sold_individually', 'no'),
(537, 72, '_virtual', 'no'),
(538, 72, '_downloadable', 'no'),
(539, 72, '_download_limit', '-1'),
(540, 72, '_download_expiry', '-1'),
(541, 72, '_stock', NULL),
(542, 72, '_stock_status', 'instock'),
(543, 72, '_wc_average_rating', '0'),
(544, 72, '_wc_review_count', '0'),
(545, 72, '_product_version', '4.6.1'),
(546, 72, '_price', '20145'),
(547, 75, '_wp_attached_file', '2020/10/Mi-10.png'),
(548, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2020/10/Mi-10.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Mi-10-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"Mi-10-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"Mi-10-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"Mi-10-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"Mi-10-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(549, 74, '_edit_last', '1'),
(550, 74, '_thumbnail_id', '75'),
(551, 74, '_regular_price', '54999'),
(552, 74, '_sale_price', '52999'),
(553, 74, 'total_sales', '0'),
(554, 74, '_tax_status', 'taxable'),
(555, 74, '_tax_class', ''),
(556, 74, '_manage_stock', 'no'),
(557, 74, '_backorders', 'no'),
(558, 74, '_sold_individually', 'no'),
(559, 74, '_virtual', 'no'),
(560, 74, '_downloadable', 'no'),
(561, 74, '_download_limit', '-1'),
(562, 74, '_download_expiry', '-1'),
(563, 74, '_stock', NULL),
(564, 74, '_stock_status', 'instock'),
(565, 74, '_wc_average_rating', '0'),
(566, 74, '_wc_review_count', '0'),
(567, 74, '_product_version', '4.6.1'),
(568, 74, '_price', '52999'),
(569, 74, '_edit_lock', '1604151459:1'),
(570, 76, '_edit_last', '1'),
(571, 76, '_edit_lock', '1604151782:1'),
(572, 77, '_wp_attached_file', '2020/10/Redmi-Note-7-pro.png'),
(573, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/10/Redmi-Note-7-pro.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Redmi-Note-7-pro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(574, 76, '_thumbnail_id', '77'),
(575, 76, '_regular_price', '11999'),
(576, 76, '_sale_price', '11459'),
(577, 76, 'total_sales', '0'),
(578, 76, '_tax_status', 'taxable'),
(579, 76, '_tax_class', ''),
(580, 76, '_manage_stock', 'no'),
(581, 76, '_backorders', 'no'),
(582, 76, '_sold_individually', 'no'),
(583, 76, '_virtual', 'no'),
(584, 76, '_downloadable', 'no'),
(585, 76, '_download_limit', '-1'),
(586, 76, '_download_expiry', '-1'),
(587, 76, '_stock', NULL),
(588, 76, '_stock_status', 'instock'),
(589, 76, '_wc_average_rating', '0'),
(590, 76, '_wc_review_count', '0'),
(591, 76, '_product_version', '4.6.1'),
(592, 76, '_price', '11459'),
(593, 78, '_edit_last', '1'),
(594, 78, '_edit_lock', '1604151954:1'),
(595, 79, '_wp_attached_file', '2020/10/Xiaomi-Mi-Note-10.jpg'),
(596, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1123;s:6:\"height\";i:1500;s:4:\"file\";s:29:\"2020/10/Xiaomi-Mi-Note-10.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Xiaomi-Mi-Note-10-767x1024.jpg\";s:5:\"width\";i:767;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Xiaomi-Mi-Note-10-768x1026.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-600x801.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-600x801.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"Xiaomi-Mi-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 78, '_thumbnail_id', '79'),
(598, 78, '_regular_price', '48999'),
(599, 78, '_sale_price', '47899'),
(600, 78, 'total_sales', '0'),
(601, 78, '_tax_status', 'taxable'),
(602, 78, '_tax_class', ''),
(603, 78, '_manage_stock', 'no'),
(604, 78, '_backorders', 'no'),
(605, 78, '_sold_individually', 'no'),
(606, 78, '_virtual', 'no'),
(607, 78, '_downloadable', 'no'),
(608, 78, '_download_limit', '-1'),
(609, 78, '_download_expiry', '-1'),
(610, 78, '_stock', NULL),
(611, 78, '_stock_status', 'instock'),
(612, 78, '_wc_average_rating', '0'),
(613, 78, '_wc_review_count', '0'),
(614, 78, '_product_version', '4.6.1'),
(615, 78, '_price', '47899'),
(616, 80, '_edit_last', '1'),
(617, 80, '_edit_lock', '1604152272:1'),
(618, 81, '_wp_attached_file', '2020/10/Xiaomi-Mi-A3.jpg'),
(619, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/10/Xiaomi-Mi-A3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Xiaomi-Mi-A3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(620, 80, '_thumbnail_id', '81'),
(621, 80, '_regular_price', '17899'),
(622, 80, '_sale_price', '16899'),
(623, 80, 'total_sales', '0'),
(624, 80, '_tax_status', 'taxable'),
(625, 80, '_tax_class', ''),
(626, 80, '_manage_stock', 'no'),
(627, 80, '_backorders', 'no'),
(628, 80, '_sold_individually', 'no'),
(629, 80, '_virtual', 'no'),
(630, 80, '_downloadable', 'no'),
(631, 80, '_download_limit', '-1'),
(632, 80, '_download_expiry', '-1'),
(633, 80, '_stock', NULL),
(634, 80, '_stock_status', 'instock'),
(635, 80, '_wc_average_rating', '0'),
(636, 80, '_wc_review_count', '0'),
(637, 80, '_product_version', '4.6.1'),
(638, 80, '_price', '16899'),
(639, 82, '_edit_last', '1'),
(640, 82, '_edit_lock', '1604152457:1'),
(641, 83, '_wp_attached_file', '2020/10/Vivo-Y12.jpg'),
(642, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/10/Vivo-Y12.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y12-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(643, 82, '_thumbnail_id', '83'),
(644, 82, '_regular_price', '10990'),
(645, 82, '_sale_price', '9999'),
(646, 82, 'total_sales', '0'),
(647, 82, '_tax_status', 'taxable'),
(648, 82, '_tax_class', ''),
(649, 82, '_manage_stock', 'no'),
(650, 82, '_backorders', 'no'),
(651, 82, '_sold_individually', 'no'),
(652, 82, '_virtual', 'no'),
(653, 82, '_downloadable', 'no'),
(654, 82, '_download_limit', '-1'),
(655, 82, '_download_expiry', '-1'),
(656, 82, '_stock', NULL),
(657, 82, '_stock_status', 'instock'),
(658, 82, '_wc_average_rating', '0'),
(659, 82, '_wc_review_count', '0'),
(660, 82, '_product_version', '4.6.1'),
(661, 82, '_price', '9999'),
(662, 84, '_edit_last', '1'),
(663, 84, '_edit_lock', '1604153236:1'),
(664, 85, '_wp_attached_file', '2020/10/Vivo-Y20.jpg'),
(665, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:826;s:6:\"height\";i:1176;s:4:\"file\";s:20:\"2020/10/Vivo-Y20.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-211x300.jpg\";s:5:\"width\";i:211;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Vivo-Y20-719x1024.jpg\";s:5:\"width\";i:719;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Vivo-Y20-768x1093.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1093;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Y20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-600x854.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-600x854.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:854;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Y20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 84, '_thumbnail_id', '85'),
(667, 84, '_regular_price', '16699'),
(668, 84, '_sale_price', '15899'),
(669, 84, 'total_sales', '0'),
(670, 84, '_tax_status', 'taxable'),
(671, 84, '_tax_class', ''),
(672, 84, '_manage_stock', 'no'),
(673, 84, '_backorders', 'no'),
(674, 84, '_sold_individually', 'no'),
(675, 84, '_virtual', 'no'),
(676, 84, '_downloadable', 'no'),
(677, 84, '_download_limit', '-1'),
(678, 84, '_download_expiry', '-1'),
(679, 84, '_stock', NULL),
(680, 84, '_stock_status', 'instock'),
(681, 84, '_wc_average_rating', '0'),
(682, 84, '_wc_review_count', '0'),
(683, 84, '_product_version', '4.6.1'),
(684, 84, '_price', '15899'),
(685, 86, '_edit_last', '1'),
(686, 86, '_edit_lock', '1604154786:1'),
(687, 87, '_wp_attached_file', '2020/10/Vivo-Z5i.jpg'),
(688, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:317;s:6:\"height\";i:300;s:4:\"file\";s:20:\"2020/10/Vivo-Z5i.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Z5i-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z5i-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(689, 86, '_thumbnail_id', '87'),
(690, 86, '_regular_price', '17989'),
(691, 86, '_sale_price', '17256'),
(692, 86, 'total_sales', '0'),
(693, 86, '_tax_status', 'taxable'),
(694, 86, '_tax_class', ''),
(695, 86, '_manage_stock', 'no'),
(696, 86, '_backorders', 'no'),
(697, 86, '_sold_individually', 'no'),
(698, 86, '_virtual', 'no'),
(699, 86, '_downloadable', 'no'),
(700, 86, '_download_limit', '-1'),
(701, 86, '_download_expiry', '-1'),
(702, 86, '_stock', NULL),
(703, 86, '_stock_status', 'instock'),
(704, 86, '_wc_average_rating', '0'),
(705, 86, '_wc_review_count', '0'),
(706, 86, '_product_version', '4.6.1'),
(707, 86, '_price', '17256'),
(708, 88, '_edit_last', '1'),
(709, 88, '_edit_lock', '1604155000:1'),
(710, 89, '_wp_attached_file', '2020/10/Vivo-Z1x.jpg'),
(711, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:330;s:4:\"file\";s:20:\"2020/10/Vivo-Z1x.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Vivo-Z1x-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-248x300.jpg\";s:5:\"width\";i:248;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Vivo-Z1x-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(712, 88, '_thumbnail_id', '89'),
(713, 88, '_regular_price', '16789'),
(714, 88, '_sale_price', '14899'),
(715, 88, 'total_sales', '0'),
(716, 88, '_tax_status', 'taxable'),
(717, 88, '_tax_class', ''),
(718, 88, '_manage_stock', 'no'),
(719, 88, '_backorders', 'no'),
(720, 88, '_sold_individually', 'no'),
(721, 88, '_virtual', 'no'),
(722, 88, '_downloadable', 'no'),
(723, 88, '_download_limit', '-1'),
(724, 88, '_download_expiry', '-1'),
(725, 88, '_stock', NULL),
(726, 88, '_stock_status', 'instock'),
(727, 88, '_wc_average_rating', '0'),
(728, 88, '_wc_review_count', '0'),
(729, 88, '_product_version', '4.6.1'),
(730, 88, '_price', '14899'),
(731, 90, '_edit_last', '1'),
(732, 90, '_edit_lock', '1604155485:1'),
(733, 91, '_wp_attached_file', '2020/10/Samsung-Galaxy-A10s.jpg'),
(734, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2020/10/Samsung-Galaxy-A10s.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-A10s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(735, 90, '_thumbnail_id', '91'),
(736, 90, '_regular_price', '10599'),
(737, 90, '_sale_price', '9897'),
(738, 90, 'total_sales', '0'),
(739, 90, '_tax_status', 'taxable'),
(740, 90, '_tax_class', ''),
(741, 90, '_manage_stock', 'no'),
(742, 90, '_backorders', 'no'),
(743, 90, '_sold_individually', 'no'),
(744, 90, '_virtual', 'no'),
(745, 90, '_downloadable', 'no'),
(746, 90, '_download_limit', '-1'),
(747, 90, '_download_expiry', '-1'),
(748, 90, '_stock', NULL),
(749, 90, '_stock_status', 'instock'),
(750, 90, '_wc_average_rating', '0'),
(751, 90, '_wc_review_count', '0'),
(752, 90, '_product_version', '4.6.1'),
(753, 90, '_price', '9897'),
(754, 93, '_edit_last', '1'),
(755, 93, '_edit_lock', '1604156862:1'),
(756, 94, '_wp_attached_file', '2020/10/Samsung-Galaxy-M01s.jpg'),
(757, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:31:\"2020/10/Samsung-Galaxy-M01s.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Samsung-Galaxy-M01s-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Samsung-Galaxy-M01s-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(758, 93, '_thumbnail_id', '94'),
(759, 93, '_regular_price', '10890'),
(760, 93, '_sale_price', '10460'),
(761, 93, 'total_sales', '0'),
(762, 93, '_tax_status', 'taxable'),
(763, 93, '_tax_class', ''),
(764, 93, '_manage_stock', 'no'),
(765, 93, '_backorders', 'no'),
(766, 93, '_sold_individually', 'no'),
(767, 93, '_virtual', 'no'),
(768, 93, '_downloadable', 'no'),
(769, 93, '_download_limit', '-1'),
(770, 93, '_download_expiry', '-1'),
(771, 93, '_stock', NULL),
(772, 93, '_stock_status', 'instock'),
(773, 93, '_wc_average_rating', '0'),
(774, 93, '_wc_review_count', '0'),
(775, 93, '_product_version', '4.6.1'),
(776, 93, '_price', '10460'),
(777, 95, '_edit_last', '1'),
(778, 95, '_edit_lock', '1604157438:1'),
(779, 96, '_wp_attached_file', '2020/10/Samsung-Galaxy-A51.jpg'),
(780, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:522;s:6:\"height\";i:540;s:4:\"file\";s:30:\"2020/10/Samsung-Galaxy-A51.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-290x300.jpg\";s:5:\"width\";i:290;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(781, 95, '_thumbnail_id', '96'),
(782, 95, '_regular_price', '22456'),
(783, 95, '_sale_price', '21789'),
(784, 95, 'total_sales', '0'),
(785, 95, '_tax_status', 'taxable'),
(786, 95, '_tax_class', ''),
(787, 95, '_manage_stock', 'no'),
(788, 95, '_backorders', 'no'),
(789, 95, '_sold_individually', 'no'),
(790, 95, '_virtual', 'no'),
(791, 95, '_downloadable', 'no'),
(792, 95, '_download_limit', '-1'),
(793, 95, '_download_expiry', '-1'),
(794, 95, '_stock', NULL),
(795, 95, '_stock_status', 'instock'),
(796, 95, '_wc_average_rating', '0'),
(797, 95, '_wc_review_count', '0'),
(798, 95, '_product_version', '4.6.1'),
(799, 95, '_price', '21789'),
(800, 97, '_edit_last', '1'),
(801, 97, '_edit_lock', '1604157581:1'),
(802, 98, '_wp_attached_file', '2020/10/Samsung-Galaxy-A71.jpg'),
(803, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:224;s:4:\"file\";s:30:\"2020/10/Samsung-Galaxy-A71.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-A71-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(804, 97, '_thumbnail_id', '98'),
(805, 97, '_regular_price', '29899'),
(806, 97, '_sale_price', '28799'),
(807, 97, 'total_sales', '0'),
(808, 97, '_tax_status', 'taxable'),
(809, 97, '_tax_class', ''),
(810, 97, '_manage_stock', 'no'),
(811, 97, '_backorders', 'no'),
(812, 97, '_sold_individually', 'no'),
(813, 97, '_virtual', 'no'),
(814, 97, '_downloadable', 'no'),
(815, 97, '_download_limit', '-1'),
(816, 97, '_download_expiry', '-1'),
(817, 97, '_stock', NULL),
(818, 97, '_stock_status', 'instock'),
(819, 97, '_wc_average_rating', '0'),
(820, 97, '_wc_review_count', '0'),
(821, 97, '_product_version', '4.6.1'),
(822, 97, '_price', '28799'),
(825, 100, '_wp_attached_file', '2020/10/Samsung-Galaxy-M31.jpg'),
(826, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:197;s:4:\"file\";s:30:\"2020/10/Samsung-Galaxy-M31.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-M31-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(846, 101, '_edit_last', '1'),
(847, 101, '_edit_lock', '1604158636:1'),
(848, 102, '_wp_attached_file', '2020/10/Samsung-Galaxy-M31-1.jpg'),
(849, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:197;s:4:\"file\";s:32:\"2020/10/Samsung-Galaxy-M31-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Samsung-Galaxy-M31-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Samsung-Galaxy-M31-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Samsung-Galaxy-M31-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(850, 101, '_thumbnail_id', '102'),
(851, 101, '_regular_price', '15780'),
(852, 101, '_sale_price', '15400'),
(853, 101, 'total_sales', '0'),
(854, 101, '_tax_status', 'taxable'),
(855, 101, '_tax_class', ''),
(856, 101, '_manage_stock', 'no'),
(857, 101, '_backorders', 'no'),
(858, 101, '_sold_individually', 'no'),
(859, 101, '_virtual', 'no'),
(860, 101, '_downloadable', 'no'),
(861, 101, '_download_limit', '-1'),
(862, 101, '_download_expiry', '-1'),
(863, 101, '_stock', NULL),
(864, 101, '_stock_status', 'instock'),
(865, 101, '_wc_average_rating', '0'),
(866, 101, '_wc_review_count', '0'),
(867, 101, '_product_version', '4.6.1'),
(868, 101, '_price', '15400'),
(872, 103, '_edit_last', '1'),
(873, 103, '_edit_lock', '1604158955:1'),
(874, 104, '_wp_attached_file', '2020/10/Samsung-Galaxy-Note-10.jpg'),
(875, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1436;s:6:\"height\";i:1500;s:4:\"file\";s:34:\"2020/10/Samsung-Galaxy-Note-10.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-287x300.jpg\";s:5:\"width\";i:287;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Samsung-Galaxy-Note-10-980x1024.jpg\";s:5:\"width\";i:980;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-768x802.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:802;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-600x627.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:627;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-600x627.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:627;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(876, 103, '_thumbnail_id', '104'),
(877, 103, '_regular_price', '82499'),
(878, 103, '_sale_price', '81599'),
(879, 103, 'total_sales', '0'),
(880, 103, '_tax_status', 'taxable'),
(881, 103, '_tax_class', ''),
(882, 103, '_manage_stock', 'no'),
(883, 103, '_backorders', 'no'),
(884, 103, '_sold_individually', 'no'),
(885, 103, '_virtual', 'no'),
(886, 103, '_downloadable', 'no'),
(887, 103, '_download_limit', '-1'),
(888, 103, '_download_expiry', '-1'),
(889, 103, '_stock', NULL),
(890, 103, '_stock_status', 'instock'),
(891, 103, '_wc_average_rating', '0'),
(892, 103, '_wc_review_count', '0'),
(893, 103, '_product_version', '4.6.1'),
(894, 103, '_price', '81599'),
(895, 105, '_edit_last', '1'),
(896, 105, '_edit_lock', '1604158969:1'),
(897, 106, '_wp_attached_file', '2020/10/Samsung-Galaxy-S10.jpg'),
(898, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1304;s:6:\"height\";i:1322;s:4:\"file\";s:30:\"2020/10/Samsung-Galaxy-S10.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-296x300.jpg\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Samsung-Galaxy-S10-1010x1024.jpg\";s:5:\"width\";i:1010;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-768x779.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:779;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-600x608.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-600x608.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Samsung-Galaxy-S10-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(899, 105, '_thumbnail_id', '106'),
(900, 105, '_regular_price', '71000'),
(901, 105, '_sale_price', '70000'),
(902, 105, 'total_sales', '0'),
(903, 105, '_tax_status', 'taxable'),
(904, 105, '_tax_class', ''),
(905, 105, '_manage_stock', 'no'),
(906, 105, '_backorders', 'no'),
(907, 105, '_sold_individually', 'no'),
(908, 105, '_virtual', 'no'),
(909, 105, '_downloadable', 'no'),
(910, 105, '_download_limit', '-1'),
(911, 105, '_download_expiry', '-1'),
(912, 105, '_stock', NULL),
(913, 105, '_stock_status', 'instock'),
(914, 105, '_wc_average_rating', '0'),
(915, 105, '_wc_review_count', '0'),
(916, 105, '_product_version', '4.6.1'),
(917, 105, '_price', '70000'),
(918, 107, '_edit_last', '1'),
(919, 107, '_edit_lock', '1604159310:1'),
(920, 108, '_wp_attached_file', '2020/10/Samsung-Galaxy-Note-20.jpg'),
(921, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:679;s:6:\"height\";i:693;s:4:\"file\";s:34:\"2020/10/Samsung-Galaxy-Note-20.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-294x300.jpg\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-600x612.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-600x612.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:612;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Samsung-Galaxy-Note-20-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(922, 107, '_thumbnail_id', '108'),
(923, 107, '_regular_price', '76899'),
(924, 107, '_sale_price', '76123'),
(925, 107, 'total_sales', '0'),
(926, 107, '_tax_status', 'taxable'),
(927, 107, '_tax_class', ''),
(928, 107, '_manage_stock', 'no'),
(929, 107, '_backorders', 'no'),
(930, 107, '_sold_individually', 'no'),
(931, 107, '_virtual', 'no'),
(932, 107, '_downloadable', 'no'),
(933, 107, '_download_limit', '-1'),
(934, 107, '_download_expiry', '-1'),
(935, 107, '_stock', NULL),
(936, 107, '_stock_status', 'instock'),
(937, 107, '_wc_average_rating', '0'),
(938, 107, '_wc_review_count', '0'),
(939, 107, '_product_version', '4.6.1'),
(940, 107, '_price', '76123'),
(941, 109, '_edit_last', '1'),
(942, 109, '_edit_lock', '1604159508:1'),
(943, 110, '_wp_attached_file', '2020/10/Apple-watch-series-3.jpg'),
(944, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:466;s:4:\"file\";s:32:\"2020/10/Apple-watch-series-3.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(945, 109, '_thumbnail_id', '110'),
(946, 109, '_regular_price', '16800'),
(947, 109, '_sale_price', '16400'),
(948, 109, 'total_sales', '0'),
(949, 109, '_tax_status', 'taxable'),
(950, 109, '_tax_class', ''),
(951, 109, '_manage_stock', 'no'),
(952, 109, '_backorders', 'no'),
(953, 109, '_sold_individually', 'no'),
(954, 109, '_virtual', 'no'),
(955, 109, '_downloadable', 'no'),
(956, 109, '_download_limit', '-1'),
(957, 109, '_download_expiry', '-1'),
(958, 109, '_stock', NULL),
(959, 109, '_stock_status', 'instock'),
(960, 109, '_wc_average_rating', '0'),
(961, 109, '_wc_review_count', '0'),
(962, 109, '_product_version', '4.6.1'),
(963, 109, '_price', '16400'),
(964, 111, '_edit_last', '1'),
(965, 111, '_edit_lock', '1604159705:1'),
(966, 112, '_wp_attached_file', '2020/10/Apple-watch-series-4.jpg'),
(967, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:321;s:6:\"height\";i:550;s:4:\"file\";s:32:\"2020/10/Apple-watch-series-4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-175x300.jpg\";s:5:\"width\";i:175;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(968, 111, '_thumbnail_id', '112'),
(969, 111, '_regular_price', '67900'),
(970, 111, '_sale_price', '66900'),
(971, 111, 'total_sales', '0'),
(972, 111, '_tax_status', 'taxable'),
(973, 111, '_tax_class', ''),
(974, 111, '_manage_stock', 'no'),
(975, 111, '_backorders', 'no'),
(976, 111, '_sold_individually', 'no'),
(977, 111, '_virtual', 'no'),
(978, 111, '_downloadable', 'no'),
(979, 111, '_download_limit', '-1'),
(980, 111, '_download_expiry', '-1'),
(981, 111, '_stock', NULL),
(982, 111, '_stock_status', 'instock'),
(983, 111, '_wc_average_rating', '0'),
(984, 111, '_wc_review_count', '0'),
(985, 111, '_product_version', '4.6.1'),
(986, 111, '_price', '66900'),
(987, 113, '_edit_last', '1'),
(988, 113, '_edit_lock', '1604159788:1'),
(989, 114, '_wp_attached_file', '2020/10/Apple-watch-series-5.jpg'),
(990, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:32:\"2020/10/Apple-watch-series-5.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Apple-watch-series-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(991, 113, '_thumbnail_id', '114'),
(992, 113, '_regular_price', '51600'),
(993, 113, '_sale_price', '50980'),
(994, 113, 'total_sales', '0'),
(995, 113, '_tax_status', 'taxable'),
(996, 113, '_tax_class', ''),
(997, 113, '_manage_stock', 'no'),
(998, 113, '_backorders', 'no'),
(999, 113, '_sold_individually', 'no'),
(1000, 113, '_virtual', 'no'),
(1001, 113, '_downloadable', 'no'),
(1002, 113, '_download_limit', '-1'),
(1003, 113, '_download_expiry', '-1'),
(1004, 113, '_stock', NULL),
(1005, 113, '_stock_status', 'instock'),
(1006, 113, '_wc_average_rating', '0'),
(1007, 113, '_wc_review_count', '0'),
(1008, 113, '_product_version', '4.6.1'),
(1009, 113, '_price', '50980'),
(1010, 116, '_edit_last', '1'),
(1011, 116, '_edit_lock', '1604159873:1'),
(1012, 117, '_wp_attached_file', '2020/10/Apple-watch-series-6.jpg'),
(1013, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:630;s:4:\"file\";s:32:\"2020/10/Apple-watch-series-6.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Apple-watch-series-6-1024x538.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-600x315.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-600x315.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Apple-watch-series-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1014, 116, '_thumbnail_id', '117');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1015, 116, '_regular_price', '42600'),
(1016, 116, '_sale_price', '41899'),
(1017, 116, 'total_sales', '0'),
(1018, 116, '_tax_status', 'taxable'),
(1019, 116, '_tax_class', ''),
(1020, 116, '_manage_stock', 'no'),
(1021, 116, '_backorders', 'no'),
(1022, 116, '_sold_individually', 'no'),
(1023, 116, '_virtual', 'no'),
(1024, 116, '_downloadable', 'no'),
(1025, 116, '_download_limit', '-1'),
(1026, 116, '_download_expiry', '-1'),
(1027, 116, '_stock', NULL),
(1028, 116, '_stock_status', 'instock'),
(1029, 116, '_wc_average_rating', '0'),
(1030, 116, '_wc_review_count', '0'),
(1031, 116, '_product_version', '4.6.1'),
(1032, 116, '_price', '41899'),
(1033, 118, '_edit_last', '1'),
(1034, 118, '_edit_lock', '1604162606:1'),
(1035, 119, '_wp_attached_file', '2020/10/Fastrack-Analog-digital-watch-.jpeg'),
(1036, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:313;s:6:\"height\";i:500;s:4:\"file\";s:43:\"2020/10/Fastrack-Analog-digital-watch-.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--188x300.jpeg\";s:5:\"width\";i:188;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Analog-digital-watch--100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1037, 118, '_thumbnail_id', '119'),
(1038, 118, '_regular_price', '3255'),
(1039, 118, '_sale_price', '3155'),
(1040, 118, 'total_sales', '0'),
(1041, 118, '_tax_status', 'taxable'),
(1042, 118, '_tax_class', ''),
(1043, 118, '_manage_stock', 'no'),
(1044, 118, '_backorders', 'no'),
(1045, 118, '_sold_individually', 'no'),
(1046, 118, '_virtual', 'no'),
(1047, 118, '_downloadable', 'no'),
(1048, 118, '_download_limit', '-1'),
(1049, 118, '_download_expiry', '-1'),
(1050, 118, '_stock', NULL),
(1051, 118, '_stock_status', 'instock'),
(1052, 118, '_wc_average_rating', '0'),
(1053, 118, '_wc_review_count', '0'),
(1054, 118, '_product_version', '4.6.1'),
(1055, 118, '_price', '3155'),
(1056, 120, '_edit_last', '1'),
(1057, 120, '_edit_lock', '1604162927:1'),
(1058, 121, '_wp_attached_file', '2020/10/Fastrack-black-watch.jpg'),
(1059, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:303;s:6:\"height\";i:500;s:4:\"file\";s:32:\"2020/10/Fastrack-black-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-182x300.jpg\";s:5:\"width\";i:182;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"Fastrack-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"Fastrack-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1060, 120, '_thumbnail_id', '121'),
(1061, 120, '_regular_price', '3899'),
(1062, 120, '_sale_price', '3566'),
(1063, 120, 'total_sales', '0'),
(1064, 120, '_tax_status', 'taxable'),
(1065, 120, '_tax_class', ''),
(1066, 120, '_manage_stock', 'no'),
(1067, 120, '_backorders', 'no'),
(1068, 120, '_sold_individually', 'no'),
(1069, 120, '_virtual', 'no'),
(1070, 120, '_downloadable', 'no'),
(1071, 120, '_download_limit', '-1'),
(1072, 120, '_download_expiry', '-1'),
(1073, 120, '_stock', NULL),
(1074, 120, '_stock_status', 'instock'),
(1075, 120, '_wc_average_rating', '0'),
(1076, 120, '_wc_review_count', '0'),
(1077, 120, '_product_version', '4.6.1'),
(1078, 120, '_price', '3566'),
(1079, 122, '_edit_last', '1'),
(1080, 122, '_edit_lock', '1604163278:1'),
(1081, 123, '_wp_attached_file', '2020/10/Fastrack-Casual-Analog-watch.jpg'),
(1082, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:339;s:6:\"height\";i:550;s:4:\"file\";s:40:\"2020/10/Fastrack-Casual-Analog-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-185x300.jpg\";s:5:\"width\";i:185;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"Fastrack-Casual-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1083, 122, '_thumbnail_id', '123'),
(1084, 122, '_regular_price', '1580'),
(1085, 122, '_sale_price', '1356'),
(1086, 122, 'total_sales', '0'),
(1087, 122, '_tax_status', 'taxable'),
(1088, 122, '_tax_class', ''),
(1089, 122, '_manage_stock', 'no'),
(1090, 122, '_backorders', 'no'),
(1091, 122, '_sold_individually', 'no'),
(1092, 122, '_virtual', 'no'),
(1093, 122, '_downloadable', 'no'),
(1094, 122, '_download_limit', '-1'),
(1095, 122, '_download_expiry', '-1'),
(1096, 122, '_stock', NULL),
(1097, 122, '_stock_status', 'instock'),
(1098, 122, '_wc_average_rating', '0'),
(1099, 122, '_wc_review_count', '0'),
(1100, 122, '_product_version', '4.6.1'),
(1101, 122, '_price', '1356'),
(1102, 124, '_edit_last', '1'),
(1103, 124, '_edit_lock', '1604163562:1'),
(1104, 125, '_wp_attached_file', '2020/10/Fastrack-Navy-Blue-Casual-watch.jpg'),
(1105, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:824;s:6:\"height\";i:1099;s:4:\"file\";s:43:\"2020/10/Fastrack-Navy-Blue-Casual-watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Fastrack-Navy-Blue-Casual-watch-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"Fastrack-Navy-Blue-Casual-watch-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"Fastrack-Navy-Blue-Casual-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1106, 124, '_thumbnail_id', '125'),
(1107, 124, '_regular_price', '1396'),
(1108, 124, '_sale_price', '1378'),
(1109, 124, 'total_sales', '0'),
(1110, 124, '_tax_status', 'taxable'),
(1111, 124, '_tax_class', ''),
(1112, 124, '_manage_stock', 'no'),
(1113, 124, '_backorders', 'no'),
(1114, 124, '_sold_individually', 'no'),
(1115, 124, '_virtual', 'no'),
(1116, 124, '_downloadable', 'no'),
(1117, 124, '_download_limit', '-1'),
(1118, 124, '_download_expiry', '-1'),
(1119, 124, '_stock', NULL),
(1120, 124, '_stock_status', 'instock'),
(1121, 124, '_wc_average_rating', '0'),
(1122, 124, '_wc_review_count', '0'),
(1123, 124, '_product_version', '4.6.1'),
(1124, 124, '_price', '1378'),
(1125, 126, '_edit_last', '1'),
(1126, 126, '_edit_lock', '1604163750:1'),
(1127, 127, '_wp_attached_file', '2020/10/Fastrack-silver-watch.jpg'),
(1128, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:303;s:6:\"height\";i:550;s:4:\"file\";s:33:\"2020/10/Fastrack-silver-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-165x300.jpg\";s:5:\"width\";i:165;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"Fastrack-silver-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"Fastrack-silver-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1129, 126, '_thumbnail_id', '127'),
(1130, 126, '_regular_price', '2569'),
(1131, 126, '_sale_price', '2469'),
(1132, 126, 'total_sales', '0'),
(1133, 126, '_tax_status', 'taxable'),
(1134, 126, '_tax_class', ''),
(1135, 126, '_manage_stock', 'no'),
(1136, 126, '_backorders', 'no'),
(1137, 126, '_sold_individually', 'no'),
(1138, 126, '_virtual', 'no'),
(1139, 126, '_downloadable', 'no'),
(1140, 126, '_download_limit', '-1'),
(1141, 126, '_download_expiry', '-1'),
(1142, 126, '_stock', NULL),
(1143, 126, '_stock_status', 'instock'),
(1144, 126, '_wc_average_rating', '0'),
(1145, 126, '_wc_review_count', '0'),
(1146, 126, '_product_version', '4.6.1'),
(1147, 126, '_price', '2469'),
(1148, 128, '_edit_last', '1'),
(1149, 128, '_edit_lock', '1604164086:1'),
(1150, 129, '_wp_attached_file', '2020/10/Fastrack-watch.jpg'),
(1151, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:26:\"2020/10/Fastrack-watch.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Fastrack-watch-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Fastrack-watch-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"Fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1152, 128, '_thumbnail_id', '129'),
(1153, 128, '_regular_price', '1236'),
(1154, 128, '_sale_price', '1169'),
(1155, 128, 'total_sales', '0'),
(1156, 128, '_tax_status', 'taxable'),
(1157, 128, '_tax_class', ''),
(1158, 128, '_manage_stock', 'no'),
(1159, 128, '_backorders', 'no'),
(1160, 128, '_sold_individually', 'no'),
(1161, 128, '_virtual', 'no'),
(1162, 128, '_downloadable', 'no'),
(1163, 128, '_download_limit', '-1'),
(1164, 128, '_download_expiry', '-1'),
(1165, 128, '_stock', NULL),
(1166, 128, '_stock_status', 'instock'),
(1167, 128, '_wc_average_rating', '0'),
(1168, 128, '_wc_review_count', '0'),
(1169, 128, '_product_version', '4.6.1'),
(1170, 128, '_price', '1169'),
(1171, 131, '_edit_last', '1'),
(1172, 131, '_edit_lock', '1604164360:1'),
(1173, 132, '_wp_attached_file', '2020/10/Fastrack-black-magic-analog-black-dial-watch.jpg'),
(1174, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:836;s:6:\"height\";i:1500;s:4:\"file\";s:56:\"2020/10/Fastrack-black-magic-analog-black-dial-watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-167x300.jpg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-571x1024.jpg\";s:5:\"width\";i:571;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-768x1378.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1378;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-600x1077.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1077;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:57:\"Fastrack-black-magic-analog-black-dial-watch-600x1077.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1077;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:56:\"Fastrack-black-magic-analog-black-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1175, 131, '_thumbnail_id', '132'),
(1176, 131, '_regular_price', '3050'),
(1177, 131, '_sale_price', '3000'),
(1178, 131, 'total_sales', '0'),
(1179, 131, '_tax_status', 'taxable'),
(1180, 131, '_tax_class', ''),
(1181, 131, '_manage_stock', 'no'),
(1182, 131, '_backorders', 'no'),
(1183, 131, '_sold_individually', 'no'),
(1184, 131, '_virtual', 'no'),
(1185, 131, '_downloadable', 'no'),
(1186, 131, '_download_limit', '-1'),
(1187, 131, '_download_expiry', '-1'),
(1188, 131, '_stock', NULL),
(1189, 131, '_stock_status', 'instock'),
(1190, 131, '_wc_average_rating', '0'),
(1191, 131, '_wc_review_count', '0'),
(1192, 131, '_product_version', '4.6.1'),
(1193, 131, '_price', '3000'),
(1194, 133, '_edit_last', '1'),
(1195, 133, '_edit_lock', '1604164686:1'),
(1196, 134, '_wp_attached_file', '2020/10/Fastrack-DIGITAL.jpg'),
(1197, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:620;s:6:\"height\";i:726;s:4:\"file\";s:28:\"2020/10/Fastrack-DIGITAL.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-256x300.jpg\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-600x703.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-600x703.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:703;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fastrack-DIGITAL-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1198, 133, '_thumbnail_id', '134'),
(1199, 133, '_regular_price', '3450'),
(1200, 133, '_sale_price', '3255'),
(1201, 133, 'total_sales', '0'),
(1202, 133, '_tax_status', 'taxable'),
(1203, 133, '_tax_class', ''),
(1204, 133, '_manage_stock', 'no'),
(1205, 133, '_backorders', 'no'),
(1206, 133, '_sold_individually', 'no'),
(1207, 133, '_virtual', 'no'),
(1208, 133, '_downloadable', 'no'),
(1209, 133, '_download_limit', '-1'),
(1210, 133, '_download_expiry', '-1'),
(1211, 133, '_stock', NULL),
(1212, 133, '_stock_status', 'instock'),
(1213, 133, '_wc_average_rating', '0'),
(1214, 133, '_wc_review_count', '0'),
(1215, 133, '_product_version', '4.6.1'),
(1216, 133, '_price', '3255'),
(1217, 135, '_edit_last', '1'),
(1218, 135, '_edit_lock', '1604165809:1'),
(1219, 136, '_wp_attached_file', '2020/10/Fitbit-Charge-2.jpg'),
(1220, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:425;s:6:\"height\";i:592;s:4:\"file\";s:27:\"2020/10/Fitbit-Charge-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1221, 135, '_thumbnail_id', '136'),
(1222, 135, '_regular_price', '30999'),
(1223, 135, '_sale_price', '29599'),
(1224, 135, 'total_sales', '0'),
(1225, 135, '_tax_status', 'taxable'),
(1226, 135, '_tax_class', ''),
(1227, 135, '_manage_stock', 'no'),
(1228, 135, '_backorders', 'no'),
(1229, 135, '_sold_individually', 'no'),
(1230, 135, '_virtual', 'no'),
(1231, 135, '_downloadable', 'no'),
(1232, 135, '_download_limit', '-1'),
(1233, 135, '_download_expiry', '-1'),
(1234, 135, '_stock', NULL),
(1235, 135, '_stock_status', 'instock'),
(1236, 135, '_wc_average_rating', '0'),
(1237, 135, '_wc_review_count', '0'),
(1238, 135, '_product_version', '4.6.1'),
(1239, 135, '_price', '29599'),
(1240, 137, '_edit_last', '1'),
(1241, 137, '_edit_lock', '1604165662:1'),
(1242, 138, '_wp_attached_file', '2020/10/Fitbit-Charge-4.jpg'),
(1243, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:887;s:4:\"file\";s:27:\"2020/10/Fitbit-Charge-4.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x266.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-768x681.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-600x532.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-600x532.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Fitbit-Charge-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1244, 137, '_thumbnail_id', '138'),
(1245, 137, '_regular_price', '14569'),
(1246, 137, '_sale_price', '14222'),
(1247, 137, 'total_sales', '0'),
(1248, 137, '_tax_status', 'taxable'),
(1249, 137, '_tax_class', ''),
(1250, 137, '_manage_stock', 'no'),
(1251, 137, '_backorders', 'no'),
(1252, 137, '_sold_individually', 'no'),
(1253, 137, '_virtual', 'no'),
(1254, 137, '_downloadable', 'no'),
(1255, 137, '_download_limit', '-1'),
(1256, 137, '_download_expiry', '-1'),
(1257, 137, '_stock', NULL),
(1258, 137, '_stock_status', 'instock'),
(1259, 137, '_wc_average_rating', '0'),
(1260, 137, '_wc_review_count', '0'),
(1261, 137, '_product_version', '4.6.1'),
(1262, 137, '_price', '14222'),
(1265, 140, '_edit_last', '1'),
(1266, 140, '_edit_lock', '1604165300:1'),
(1267, 141, '_wp_attached_file', '2020/10/Fitbit-Iconic-Watch.jpg'),
(1268, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1262;s:6:\"height\";i:1500;s:4:\"file\";s:31:\"2020/10/Fitbit-Iconic-Watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-252x300.jpg\";s:5:\"width\";i:252;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"Fitbit-Iconic-Watch-862x1024.jpg\";s:5:\"width\";i:862;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-768x913.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:913;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-600x713.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:713;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-600x713.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:713;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Fitbit-Iconic-Watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1269, 140, '_thumbnail_id', '141'),
(1270, 140, '_regular_price', '26899'),
(1271, 140, '_sale_price', '26156'),
(1272, 140, 'total_sales', '0'),
(1273, 140, '_tax_status', 'taxable'),
(1274, 140, '_tax_class', ''),
(1275, 140, '_manage_stock', 'no'),
(1276, 140, '_backorders', 'no'),
(1277, 140, '_sold_individually', 'no'),
(1278, 140, '_virtual', 'no'),
(1279, 140, '_downloadable', 'no'),
(1280, 140, '_download_limit', '-1'),
(1281, 140, '_download_expiry', '-1'),
(1282, 140, '_stock', NULL),
(1283, 140, '_stock_status', 'instock'),
(1284, 140, '_wc_average_rating', '0'),
(1285, 140, '_wc_review_count', '0'),
(1286, 140, '_product_version', '4.6.1'),
(1287, 140, '_price', '26156'),
(1288, 142, '_edit_last', '1'),
(1289, 142, '_edit_lock', '1604165844:1'),
(1293, 143, '_wp_attached_file', '2020/10/Fitbit-Inspire-2.png'),
(1294, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1572;s:6:\"height\";i:1572;s:4:\"file\";s:28:\"2020/10/Fitbit-Inspire-2.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Fitbit-Inspire-2-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"Fitbit-Inspire-2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Fitbit-Inspire-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1295, 142, '_thumbnail_id', '143'),
(1296, 142, '_regular_price', '29459'),
(1297, 142, '_sale_price', '28456'),
(1298, 142, 'total_sales', '0'),
(1299, 142, '_tax_status', 'taxable'),
(1300, 142, '_tax_class', ''),
(1301, 142, '_manage_stock', 'no'),
(1302, 142, '_backorders', 'no'),
(1303, 142, '_sold_individually', 'no'),
(1304, 142, '_virtual', 'no'),
(1305, 142, '_downloadable', 'no'),
(1306, 142, '_download_limit', '-1'),
(1307, 142, '_download_expiry', '-1'),
(1308, 142, '_stock', NULL),
(1309, 142, '_stock_status', 'instock'),
(1310, 142, '_wc_average_rating', '0'),
(1311, 142, '_wc_review_count', '0'),
(1312, 142, '_product_version', '4.6.1'),
(1313, 142, '_price', '28456'),
(1314, 144, '_edit_last', '1'),
(1315, 144, '_edit_lock', '1604165673:1'),
(1316, 146, '_wp_attached_file', '2020/10/Fitbit-Sense.jpg'),
(1317, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:312;s:6:\"height\";i:500;s:4:\"file\";s:24:\"2020/10/Fitbit-Sense.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-187x300.jpg\";s:5:\"width\";i:187;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Fitbit-Sense-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Fitbit-Sense-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1318, 144, '_thumbnail_id', '146'),
(1319, 144, '_regular_price', '49899'),
(1320, 144, '_sale_price', '49780'),
(1321, 144, 'total_sales', '0'),
(1322, 144, '_tax_status', 'taxable'),
(1323, 144, '_tax_class', ''),
(1324, 144, '_manage_stock', 'no'),
(1325, 144, '_backorders', 'no'),
(1326, 144, '_sold_individually', 'no'),
(1327, 144, '_virtual', 'no'),
(1328, 144, '_downloadable', 'no'),
(1329, 144, '_download_limit', '-1'),
(1330, 144, '_download_expiry', '-1'),
(1331, 144, '_stock', NULL),
(1332, 144, '_stock_status', 'instock'),
(1333, 144, '_wc_average_rating', '0'),
(1334, 144, '_wc_review_count', '0'),
(1335, 144, '_product_version', '4.6.1'),
(1336, 144, '_price', '49780'),
(1337, 148, '_edit_last', '1'),
(1338, 148, '_edit_lock', '1604165783:1'),
(1339, 149, '_wp_attached_file', '2020/10/Fitbit-Versa-2.png'),
(1340, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1572;s:6:\"height\";i:1572;s:4:\"file\";s:26:\"2020/10/Fitbit-Versa-2.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Fitbit-Versa-2-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"Fitbit-Versa-2-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"Fitbit-Versa-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1341, 148, '_thumbnail_id', '149'),
(1342, 148, '_regular_price', '21599'),
(1343, 148, '_sale_price', '21200'),
(1344, 148, 'total_sales', '0'),
(1345, 148, '_tax_status', 'taxable'),
(1346, 148, '_tax_class', ''),
(1347, 148, '_manage_stock', 'no'),
(1348, 148, '_backorders', 'no'),
(1349, 148, '_sold_individually', 'no'),
(1350, 148, '_virtual', 'no'),
(1351, 148, '_downloadable', 'no'),
(1352, 148, '_download_limit', '-1'),
(1353, 148, '_download_expiry', '-1'),
(1354, 148, '_stock', NULL),
(1355, 148, '_stock_status', 'instock'),
(1356, 148, '_wc_average_rating', '0'),
(1357, 148, '_wc_review_count', '0'),
(1358, 148, '_product_version', '4.6.1'),
(1359, 148, '_price', '21200'),
(1360, 151, '_edit_last', '1'),
(1361, 151, '_edit_lock', '1604166109:1'),
(1362, 152, '_wp_attached_file', '2020/10/Gshock-black-watch.jpg'),
(1363, 152, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2020/10/Gshock-black-watch.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Gshock-black-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1364, 151, '_thumbnail_id', '152'),
(1365, 151, '_regular_price', '7890'),
(1366, 151, '_sale_price', '7333'),
(1367, 151, 'total_sales', '0'),
(1368, 151, '_tax_status', 'taxable'),
(1369, 151, '_tax_class', ''),
(1370, 151, '_manage_stock', 'no'),
(1371, 151, '_backorders', 'no'),
(1372, 151, '_sold_individually', 'no'),
(1373, 151, '_virtual', 'no'),
(1374, 151, '_downloadable', 'no'),
(1375, 151, '_download_limit', '-1'),
(1376, 151, '_download_expiry', '-1'),
(1377, 151, '_stock', NULL),
(1378, 151, '_stock_status', 'instock'),
(1379, 151, '_wc_average_rating', '0'),
(1380, 151, '_wc_review_count', '0'),
(1381, 151, '_product_version', '4.6.1'),
(1382, 151, '_price', '7333'),
(1383, 153, '_edit_last', '1'),
(1384, 153, '_edit_lock', '1604166256:1'),
(1385, 154, '_wp_attached_file', '2020/10/G-Shock-steel-watch.jpg'),
(1386, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:197;s:6:\"height\";i:256;s:4:\"file\";s:31:\"2020/10/G-Shock-steel-watch.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"G-Shock-steel-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1387, 153, '_thumbnail_id', '154'),
(1388, 153, '_regular_price', '21456'),
(1389, 153, '_sale_price', '20333'),
(1390, 153, 'total_sales', '0'),
(1391, 153, '_tax_status', 'taxable'),
(1392, 153, '_tax_class', ''),
(1393, 153, '_manage_stock', 'no'),
(1394, 153, '_backorders', 'no'),
(1395, 153, '_sold_individually', 'no'),
(1396, 153, '_virtual', 'no'),
(1397, 153, '_downloadable', 'no'),
(1398, 153, '_download_limit', '-1'),
(1399, 153, '_download_expiry', '-1'),
(1400, 153, '_stock', NULL),
(1401, 153, '_stock_status', 'instock'),
(1402, 153, '_wc_average_rating', '0'),
(1403, 153, '_wc_review_count', '0'),
(1404, 153, '_product_version', '4.6.1'),
(1405, 153, '_price', '20333'),
(1406, 155, '_edit_last', '1'),
(1407, 155, '_edit_lock', '1604166262:1'),
(1408, 156, '_wp_attached_file', '2020/10/G-Shock-casio-mud-master-watch.jpg'),
(1409, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:1100;s:4:\"file\";s:42:\"2020/10/G-Shock-casio-mud-master-watch.jpg\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"G-Shock-casio-mud-master-watch-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"G-Shock-casio-mud-master-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1410, 155, '_thumbnail_id', '156'),
(1411, 155, '_regular_price', '8999'),
(1412, 155, '_sale_price', '8456'),
(1413, 155, 'total_sales', '0'),
(1414, 155, '_tax_status', 'taxable'),
(1415, 155, '_tax_class', ''),
(1416, 155, '_manage_stock', 'no'),
(1417, 155, '_backorders', 'no'),
(1418, 155, '_sold_individually', 'no'),
(1419, 155, '_virtual', 'no'),
(1420, 155, '_downloadable', 'no'),
(1421, 155, '_download_limit', '-1'),
(1422, 155, '_download_expiry', '-1'),
(1423, 155, '_stock', NULL),
(1424, 155, '_stock_status', 'instock'),
(1425, 155, '_wc_average_rating', '0'),
(1426, 155, '_wc_review_count', '0'),
(1427, 155, '_product_version', '4.6.1'),
(1428, 155, '_price', '8456'),
(1429, 157, '_edit_last', '1'),
(1430, 157, '_edit_lock', '1604166515:1'),
(1431, 158, '_wp_attached_file', '2020/10/Mi-smart-band-4.jpg'),
(1432, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:355;s:6:\"height\";i:355;s:4:\"file\";s:27:\"2020/10/Mi-smart-band-4.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Mi-smart-band-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1433, 157, '_thumbnail_id', '158'),
(1434, 157, '_regular_price', '2998'),
(1435, 157, '_sale_price', '2569'),
(1436, 157, 'total_sales', '0'),
(1437, 157, '_tax_status', 'taxable'),
(1438, 157, '_tax_class', ''),
(1439, 157, '_manage_stock', 'no'),
(1440, 157, '_backorders', 'no'),
(1441, 157, '_sold_individually', 'no'),
(1442, 157, '_virtual', 'no'),
(1443, 157, '_downloadable', 'no'),
(1444, 157, '_download_limit', '-1'),
(1445, 157, '_download_expiry', '-1'),
(1446, 157, '_stock', NULL),
(1447, 157, '_stock_status', 'instock'),
(1448, 157, '_wc_average_rating', '0'),
(1449, 157, '_wc_review_count', '0'),
(1450, 157, '_product_version', '4.6.1'),
(1451, 157, '_price', '2569'),
(1452, 159, '_edit_last', '1'),
(1453, 159, '_edit_lock', '1604168188:1'),
(1454, 160, '_wp_attached_file', '2020/10/Rolex-Oyster.jpg'),
(1455, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:185;s:4:\"file\";s:24:\"2020/10/Rolex-Oyster.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Rolex-Oyster-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1456, 159, '_thumbnail_id', '160'),
(1457, 159, '_regular_price', '8885'),
(1458, 159, '_sale_price', '8775'),
(1459, 159, 'total_sales', '0'),
(1460, 159, '_tax_status', 'taxable'),
(1461, 159, '_tax_class', ''),
(1462, 159, '_manage_stock', 'no'),
(1463, 159, '_backorders', 'no'),
(1464, 159, '_sold_individually', 'no'),
(1465, 159, '_virtual', 'no');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1466, 159, '_downloadable', 'no'),
(1467, 159, '_download_limit', '-1'),
(1468, 159, '_download_expiry', '-1'),
(1469, 159, '_stock', NULL),
(1470, 159, '_stock_status', 'instock'),
(1471, 159, '_wc_average_rating', '0'),
(1472, 159, '_wc_review_count', '0'),
(1473, 159, '_product_version', '4.6.1'),
(1474, 159, '_price', '8775'),
(1475, 162, '_edit_last', '1'),
(1476, 162, '_edit_lock', '1604168206:1'),
(1477, 163, '_wp_attached_file', '2020/10/Rolex-rose-gold.jpg'),
(1478, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2304;s:4:\"file\";s:27:\"2020/10/Rolex-rose-gold.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"Rolex-rose-gold-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"Rolex-rose-gold-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"Rolex-rose-gold-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:29:\"Rolex-rose-gold-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Rolex-rose-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Rolex-rose-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1479, 162, '_thumbnail_id', '163'),
(1480, 162, '_regular_price', '21459'),
(1481, 162, '_sale_price', '21123'),
(1482, 162, 'total_sales', '0'),
(1483, 162, '_tax_status', 'taxable'),
(1484, 162, '_tax_class', ''),
(1485, 162, '_manage_stock', 'no'),
(1486, 162, '_backorders', 'no'),
(1487, 162, '_sold_individually', 'no'),
(1488, 162, '_virtual', 'no'),
(1489, 162, '_downloadable', 'no'),
(1490, 162, '_download_limit', '-1'),
(1491, 162, '_download_expiry', '-1'),
(1492, 162, '_stock', NULL),
(1493, 162, '_stock_status', 'instock'),
(1494, 162, '_wc_average_rating', '0'),
(1495, 162, '_wc_review_count', '0'),
(1496, 162, '_product_version', '4.6.1'),
(1497, 162, '_price', '21123'),
(1498, 164, '_edit_last', '1'),
(1499, 164, '_edit_lock', '1604225032:1'),
(1500, 164, 'total_sales', '0'),
(1501, 164, '_tax_status', 'taxable'),
(1502, 164, '_tax_class', ''),
(1503, 164, '_manage_stock', 'no'),
(1504, 164, '_backorders', 'no'),
(1505, 164, '_sold_individually', 'no'),
(1506, 164, '_virtual', 'no'),
(1507, 164, '_downloadable', 'no'),
(1508, 164, '_download_limit', '-1'),
(1509, 164, '_download_expiry', '-1'),
(1510, 164, '_stock', NULL),
(1511, 164, '_stock_status', 'instock'),
(1512, 164, '_wc_average_rating', '0'),
(1513, 164, '_wc_review_count', '0'),
(1514, 164, '_product_version', '4.6.1'),
(1515, 165, '_wp_attached_file', '2020/10/Rolex-Submariner-Black.jpg'),
(1516, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:331;s:4:\"file\";s:34:\"2020/10/Rolex-Submariner-Black.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"Rolex-Submariner-Black-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1517, 164, '_thumbnail_id', '165'),
(1518, 164, '_regular_price', '97566'),
(1519, 164, '_sale_price', '97200'),
(1520, 164, '_price', '97200'),
(1521, 166, '_edit_last', '1'),
(1522, 166, '_edit_lock', '1604167626:1'),
(1523, 167, '_wp_attached_file', '2020/10/Sonata-steel-analog-blue-dial-watch.jpg'),
(1524, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:715;s:6:\"height\";i:1500;s:4:\"file\";s:47:\"2020/10/Sonata-steel-analog-blue-dial-watch.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-143x300.jpg\";s:5:\"width\";i:143;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-488x1024.jpg\";s:5:\"width\";i:488;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-600x1259.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"Sonata-steel-analog-blue-dial-watch-600x1259.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1259;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"Sonata-steel-analog-blue-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1525, 166, '_thumbnail_id', '167'),
(1526, 166, '_regular_price', '1298'),
(1527, 166, '_sale_price', '1198'),
(1528, 166, 'total_sales', '0'),
(1529, 166, '_tax_status', 'taxable'),
(1530, 166, '_tax_class', ''),
(1531, 166, '_manage_stock', 'no'),
(1532, 166, '_backorders', 'no'),
(1533, 166, '_sold_individually', 'no'),
(1534, 166, '_virtual', 'no'),
(1535, 166, '_downloadable', 'no'),
(1536, 166, '_download_limit', '-1'),
(1537, 166, '_download_expiry', '-1'),
(1538, 166, '_stock', NULL),
(1539, 166, '_stock_status', 'instock'),
(1540, 166, '_wc_average_rating', '0'),
(1541, 166, '_wc_review_count', '0'),
(1542, 166, '_product_version', '4.6.1'),
(1543, 166, '_price', '1198'),
(1544, 168, '_edit_last', '1'),
(1545, 168, '_edit_lock', '1604168120:1'),
(1546, 169, '_wp_attached_file', '2020/10/Sonata-wedding-analog-blue-watch.jpg'),
(1547, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:342;s:4:\"file\";s:44:\"2020/10/Sonata-wedding-analog-blue-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"Sonata-wedding-analog-blue-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1548, 168, '_thumbnail_id', '169'),
(1549, 168, '_regular_price', '2569'),
(1550, 168, '_sale_price', '2459'),
(1551, 168, 'total_sales', '0'),
(1552, 168, '_tax_status', 'taxable'),
(1553, 168, '_tax_class', ''),
(1554, 168, '_manage_stock', 'no'),
(1555, 168, '_backorders', 'no'),
(1556, 168, '_sold_individually', 'no'),
(1557, 168, '_virtual', 'no'),
(1558, 168, '_downloadable', 'no'),
(1559, 168, '_download_limit', '-1'),
(1560, 168, '_download_expiry', '-1'),
(1561, 168, '_stock', NULL),
(1562, 168, '_stock_status', 'instock'),
(1563, 168, '_wc_average_rating', '0'),
(1564, 168, '_wc_review_count', '0'),
(1565, 168, '_product_version', '4.6.1'),
(1566, 168, '_price', '2459'),
(1567, 170, '_edit_last', '1'),
(1568, 170, '_edit_lock', '1604168265:1'),
(1569, 171, '_wp_attached_file', '2020/10/Square-dial-fastrack-watch.jpg'),
(1570, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2020/10/Square-dial-fastrack-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:38:\"Square-dial-fastrack-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1571, 170, '_thumbnail_id', '171'),
(1572, 170, '_regular_price', '3126'),
(1573, 170, '_sale_price', '2994'),
(1574, 170, 'total_sales', '0'),
(1575, 170, '_tax_status', 'taxable'),
(1576, 170, '_tax_class', ''),
(1577, 170, '_manage_stock', 'no'),
(1578, 170, '_backorders', 'no'),
(1579, 170, '_sold_individually', 'no'),
(1580, 170, '_virtual', 'no'),
(1581, 170, '_downloadable', 'no'),
(1582, 170, '_download_limit', '-1'),
(1583, 170, '_download_expiry', '-1'),
(1584, 170, '_stock', NULL),
(1585, 170, '_stock_status', 'instock'),
(1586, 170, '_wc_average_rating', '0'),
(1587, 170, '_wc_review_count', '0'),
(1588, 170, '_product_version', '4.6.1'),
(1589, 170, '_price', '2994'),
(1590, 172, '_edit_last', '1'),
(1591, 172, '_edit_lock', '1604168470:1'),
(1592, 175, '_wp_attached_file', '2020/10/Titan-Analog-watch-gold.jpeg'),
(1593, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:222;s:6:\"height\";i:400;s:4:\"file\";s:36:\"2020/10/Titan-Analog-watch-gold.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-167x300.jpeg\";s:5:\"width\";i:167;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-222x300.jpeg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-222x300.jpeg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Analog-watch-gold-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1594, 172, '_thumbnail_id', '175'),
(1595, 172, '_regular_price', '2856'),
(1596, 172, '_sale_price', '2569'),
(1597, 172, 'total_sales', '0'),
(1598, 172, '_tax_status', 'taxable'),
(1599, 172, '_tax_class', ''),
(1600, 172, '_manage_stock', 'no'),
(1601, 172, '_backorders', 'no'),
(1602, 172, '_sold_individually', 'no'),
(1603, 172, '_virtual', 'no'),
(1604, 172, '_downloadable', 'no'),
(1605, 172, '_download_limit', '-1'),
(1606, 172, '_download_expiry', '-1'),
(1607, 172, '_stock', NULL),
(1608, 172, '_stock_status', 'instock'),
(1609, 172, '_wc_average_rating', '0'),
(1610, 172, '_wc_review_count', '0'),
(1611, 172, '_product_version', '4.6.1'),
(1612, 172, '_price', '2569'),
(1613, 176, '_edit_last', '1'),
(1614, 176, '_edit_lock', '1604168746:1'),
(1615, 177, '_wp_attached_file', '2020/10/Titan-analog-watch.jpg'),
(1616, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:427;s:6:\"height\";i:500;s:4:\"file\";s:30:\"2020/10/Titan-analog-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-256x300.jpg\";s:5:\"width\";i:256;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"Titan-analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1617, 176, '_thumbnail_id', '177'),
(1618, 176, '_regular_price', '2595'),
(1619, 176, '_sale_price', '2594'),
(1620, 176, 'total_sales', '0'),
(1621, 176, '_tax_status', 'taxable'),
(1622, 176, '_tax_class', ''),
(1623, 176, '_manage_stock', 'no'),
(1624, 176, '_backorders', 'no'),
(1625, 176, '_sold_individually', 'no'),
(1626, 176, '_virtual', 'no'),
(1627, 176, '_downloadable', 'no'),
(1628, 176, '_download_limit', '-1'),
(1629, 176, '_download_expiry', '-1'),
(1630, 176, '_stock', NULL),
(1631, 176, '_stock_status', 'instock'),
(1632, 176, '_wc_average_rating', '0'),
(1633, 176, '_wc_review_count', '0'),
(1634, 176, '_product_version', '4.6.1'),
(1635, 176, '_price', '2594'),
(1636, 178, '_edit_last', '1'),
(1637, 178, '_edit_lock', '1604168915:1'),
(1638, 179, '_wp_attached_file', '2020/10/Titan-Edge-Ceramic.jpg'),
(1639, 179, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:224;s:6:\"height\";i:224;s:4:\"file\";s:30:\"2020/10/Titan-Edge-Ceramic.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Titan-Edge-Ceramic-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1640, 178, '_thumbnail_id', '179'),
(1641, 178, '_regular_price', '24689'),
(1642, 178, '_sale_price', '24126'),
(1643, 178, 'total_sales', '0'),
(1644, 178, '_tax_status', 'taxable'),
(1645, 178, '_tax_class', ''),
(1646, 178, '_manage_stock', 'no'),
(1647, 178, '_backorders', 'no'),
(1648, 178, '_sold_individually', 'no'),
(1649, 178, '_virtual', 'no'),
(1650, 178, '_downloadable', 'no'),
(1651, 178, '_download_limit', '-1'),
(1652, 178, '_download_expiry', '-1'),
(1653, 178, '_stock', NULL),
(1654, 178, '_stock_status', 'instock'),
(1655, 178, '_wc_average_rating', '0'),
(1656, 178, '_wc_review_count', '0'),
(1657, 178, '_product_version', '4.6.1'),
(1658, 178, '_price', '24126'),
(1659, 180, '_edit_last', '1'),
(1660, 180, '_edit_lock', '1604169141:1'),
(1661, 181, '_wp_attached_file', '2020/10/Titan-gold.jpg'),
(1662, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:731;s:6:\"height\";i:1500;s:4:\"file\";s:22:\"2020/10/Titan-gold.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Titan-gold-146x300.jpg\";s:5:\"width\";i:146;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"Titan-gold-499x1024.jpg\";s:5:\"width\";i:499;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"Titan-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"Titan-gold-600x1231.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"Titan-gold-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"Titan-gold-600x1231.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:1231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Titan-gold-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1663, 180, '_thumbnail_id', '181'),
(1664, 180, '_regular_price', '2065'),
(1665, 180, '_sale_price', '2000'),
(1666, 180, 'total_sales', '0'),
(1667, 180, '_tax_status', 'taxable'),
(1668, 180, '_tax_class', ''),
(1669, 180, '_manage_stock', 'no'),
(1670, 180, '_backorders', 'no'),
(1671, 180, '_sold_individually', 'no'),
(1672, 180, '_virtual', 'no'),
(1673, 180, '_downloadable', 'no'),
(1674, 180, '_download_limit', '-1'),
(1675, 180, '_download_expiry', '-1'),
(1676, 180, '_stock', NULL),
(1677, 180, '_stock_status', 'instock'),
(1678, 180, '_wc_average_rating', '0'),
(1679, 180, '_wc_review_count', '0'),
(1680, 180, '_product_version', '4.6.1'),
(1681, 180, '_price', '2000'),
(1682, 182, '_edit_last', '1'),
(1683, 182, '_edit_lock', '1604169287:1'),
(1684, 183, '_wp_attached_file', '2020/10/Titan-Maritime-Analog-Green-dial-watch.jpg'),
(1685, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:50:\"2020/10/Titan-Maritime-Analog-Green-dial-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"Titan-Maritime-Analog-Green-dial-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1686, 182, '_thumbnail_id', '183'),
(1687, 182, '_regular_price', '16869'),
(1688, 182, '_sale_price', '16750'),
(1689, 182, 'total_sales', '0'),
(1690, 182, '_tax_status', 'taxable'),
(1691, 182, '_tax_class', ''),
(1692, 182, '_manage_stock', 'no'),
(1693, 182, '_backorders', 'no'),
(1694, 182, '_sold_individually', 'no'),
(1695, 182, '_virtual', 'no'),
(1696, 182, '_downloadable', 'no'),
(1697, 182, '_download_limit', '-1'),
(1698, 182, '_download_expiry', '-1'),
(1699, 182, '_stock', NULL),
(1700, 182, '_stock_status', 'instock'),
(1701, 182, '_wc_average_rating', '0'),
(1702, 182, '_wc_review_count', '0'),
(1703, 182, '_product_version', '4.6.1'),
(1704, 182, '_price', '16750'),
(1705, 184, '_edit_last', '1'),
(1706, 184, '_edit_lock', '1604169513:1'),
(1707, 186, '_wp_attached_file', '2020/10/Titan-Royal-Analog-watch.jpg'),
(1708, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:328;s:6:\"height\";i:328;s:4:\"file\";s:36:\"2020/10/Titan-Royal-Analog-watch.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Titan-Royal-Analog-watch-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1709, 184, '_thumbnail_id', '186'),
(1710, 184, '_regular_price', '3599'),
(1711, 184, '_sale_price', '3299'),
(1712, 184, 'total_sales', '0'),
(1713, 184, '_tax_status', 'taxable'),
(1714, 184, '_tax_class', ''),
(1715, 184, '_manage_stock', 'no'),
(1716, 184, '_backorders', 'no'),
(1717, 184, '_sold_individually', 'no'),
(1718, 184, '_virtual', 'no'),
(1719, 184, '_downloadable', 'no'),
(1720, 184, '_download_limit', '-1'),
(1721, 184, '_download_expiry', '-1'),
(1722, 184, '_stock', NULL),
(1723, 184, '_stock_status', 'instock'),
(1724, 184, '_wc_average_rating', '0'),
(1725, 184, '_wc_review_count', '0'),
(1726, 184, '_product_version', '4.6.1'),
(1727, 184, '_price', '3299'),
(1728, 188, '_edit_last', '1'),
(1729, 188, '_edit_lock', '1604169959:1'),
(1730, 189, '_wp_attached_file', '2020/10/Xiaomi-watch-4G-LTE.jpg'),
(1731, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:31:\"2020/10/Xiaomi-watch-4G-LTE.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"Xiaomi-watch-4G-LTE-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1732, 188, '_thumbnail_id', '189'),
(1733, 188, '_regular_price', '19168'),
(1734, 188, '_sale_price', '18955'),
(1735, 188, 'total_sales', '0'),
(1736, 188, '_tax_status', 'taxable'),
(1737, 188, '_tax_class', ''),
(1738, 188, '_manage_stock', 'no'),
(1739, 188, '_backorders', 'no'),
(1740, 188, '_sold_individually', 'no'),
(1741, 188, '_virtual', 'no'),
(1742, 188, '_downloadable', 'no'),
(1743, 188, '_download_limit', '-1'),
(1744, 188, '_download_expiry', '-1'),
(1745, 188, '_stock', NULL),
(1746, 188, '_stock_status', 'instock'),
(1747, 188, '_wc_average_rating', '0'),
(1748, 188, '_wc_review_count', '0'),
(1749, 188, '_product_version', '4.6.1'),
(1750, 188, '_price', '18955');

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
(1, 1, '2020-10-30 14:36:50', '2020-10-30 14:36:50', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-10-30 14:36:50', '2020-10-30 14:36:50', '', 0, 'http://127.0.0.1/Amazon/?p=1', 0, 'post', '', 1),
(3, 1, '2020-10-30 14:36:50', '2020-10-30 14:36:50', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://127.0.0.1/Amazon.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-10-30 14:36:50', '2020-10-30 14:36:50', '', 0, 'http://127.0.0.1/Amazon/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-10-30 14:42:16', '2020-10-30 14:42:16', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-10-30 14:42:16', '2020-10-30 14:42:16', '', 0, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-10-30 14:42:18', '2020-10-30 14:42:18', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-10-30 14:42:18', '2020-10-30 14:42:18', '', 0, 'http://127.0.0.1/Amazon/shop/', 0, 'page', '', 0),
(8, 1, '2020-10-30 14:42:19', '2020-10-30 14:42:19', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-10-30 14:42:19', '2020-10-30 14:42:19', '', 0, 'http://127.0.0.1/Amazon/cart/', 0, 'page', '', 0),
(9, 1, '2020-10-30 14:42:19', '2020-10-30 14:42:19', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-10-30 14:42:19', '2020-10-30 14:42:19', '', 0, 'http://127.0.0.1/Amazon/checkout/', 0, 'page', '', 0),
(10, 1, '2020-10-30 14:42:19', '2020-10-30 14:42:19', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-10-30 14:42:19', '2020-10-30 14:42:19', '', 0, 'http://127.0.0.1/Amazon/my-account/', 0, 'page', '', 0),
(11, 1, '2020-10-30 16:58:14', '2020-10-30 16:58:14', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">4.7-inch Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (1 meter for up to 30 minutes, IP67)</span></li>\r\n 	<li><span class=\"a-list-item\">Single 12MP Wide camera with Auto HDR and 4K video up to 30fps</span></li>\r\n 	<li><span class=\"a-list-item\">7MP FaceTime HD camera with 1080p video</span></li>\r\n 	<li><span class=\"a-list-item\">Touch ID for secure authentication and Apple Pay</span></li>\r\n 	<li><span class=\"a-list-item\">A10 Fusion chip</span></li>\r\n 	<li><span class=\"a-list-item\">iOS 13 with Dark Mode, new tools for editing photos and video, and brand new privacy features</span></li>\r\n</ul>', 'Apple iPhone 7', '', 'publish', 'open', 'closed', '', 'apple-iphone-7', '', '', '2020-12-04 07:32:29', '2020-12-04 07:32:29', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=11', 0, 'product', '', 0),
(12, 1, '2020-10-30 16:54:41', '2020-10-30 16:54:41', '', 'iphone 7', '', 'inherit', 'open', 'closed', '', 'iphone-7', '', '', '2020-10-30 16:54:41', '2020-10-30 16:54:41', '', 11, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/iphone-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2020-10-30 17:05:44', '2020-10-30 17:05:44', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\",\"id\":14,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color has-large-font-size\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color\"><p class=\"has-text-color has-text-align-center\">Welcome to our website</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://127.0.0.1/Amazon/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2020-10-30 17:10:16', '2020-10-30 17:10:16', '', 0, 'http://127.0.0.1/Amazon/homepage/', 0, 'page', '', 0),
(14, 1, '2020-10-30 17:05:44', '2020-10-30 17:05:44', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2020-10-30 17:05:44', '2020-10-30 17:05:44', '', 13, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-10-30 17:05:50', '2020-10-30 17:05:50', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\",\"id\":14,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:button {\"align\":\"center\"} -->\n			<div class=\"wp-block-button aligncenter\"><a href=\"http://127.0.0.1/Amazon/shop/\" class=\"wp-block-button__link\">Go shopping</a></div>\n			<!-- /wp:button --></div></div>\n			<!-- /wp:cover -->\n		<!-- wp:heading {\"align\":\"center\"} -->\n		<h2 style=\"text-align:center\">New Products</h2>\n		<!-- /wp:heading -->\n\n		<!-- wp:woocommerce/product-new /--> <!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaId\":14,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text -->\n\n		<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-10-30 17:05:50', '2020-10-30 17:05:50', '', 13, 'http://127.0.0.1/Amazon/2020/10/30/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-10-30 17:08:23', '2020-10-30 17:08:23', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\",\"id\":14,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color has-large-font-size\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color\"><p class=\"has-text-color has-text-align-center\">Welcome to our website</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://127.0.0.1/Amazon/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '13-autosave-v1', '', '', '2020-10-30 17:08:23', '2020-10-30 17:08:23', '', 13, 'http://127.0.0.1/Amazon/2020/10/30/13-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2020-10-30 17:10:16', '2020-10-30 17:10:16', '<!-- wp:cover {\"url\":\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\",\"id\":14,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image:url(http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color has-large-font-size\"><p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-align-center has-white-color has-text-color\"><p class=\"has-text-color has-text-align-center\">Welcome to our website</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://127.0.0.1/Amazon/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 class=\"has-text-align-center\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":14,\"mediaType\":\"image\",\"isStackedOnMobile\":false,\"className\":\"alignwide\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\"><figure class=\"wp-block-media-text__media\"><img src=\"http://127.0.0.1/Amazon/wp-content/uploads/2020/10/other-small.jpg\" alt=\"\" class=\"wp-image-14\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-10-30 17:10:16', '2020-10-30 17:10:16', '', 13, 'http://127.0.0.1/Amazon/2020/10/30/13-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-10-30 17:11:52', '2020-10-30 17:11:52', '', 'A', '', 'inherit', 'open', 'closed', '', 'a', '', '', '2020-10-30 17:11:52', '2020-10-30 17:11:52', '', 0, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/A.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-10-31 09:18:40', '2020-10-31 09:18:40', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">4.7-inch Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (1 meter for up to 30 minutes, IP67)</span></li>\r\n 	<li><span class=\"a-list-item\">Single 12MP Wide camera with Auto HDR and 4K video up to 60fps</span></li>\r\n 	<li><span class=\"a-list-item\">7MP FaceTime HD camera with 1080p video recording</span></li>\r\n 	<li><span class=\"a-list-item\">Touch ID for secure authentication and Apple Pay</span></li>\r\n 	<li><span class=\"a-list-item\">A11 Bionic with Neural Engine</span></li>\r\n 	<li><span class=\"a-list-item\">Fast-charge capable</span></li>\r\n 	<li><span class=\"a-list-item\">Wireless charging</span></li>\r\n</ul>', 'Apple iPhone 8', '', 'publish', 'open', 'closed', '', 'apple-iphone-8', '', '', '2020-12-04 07:34:40', '2020-12-04 07:34:40', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=25', 0, 'product', '', 0),
(26, 1, '2020-10-31 08:04:24', '2020-10-31 08:04:24', '', 'Iphone 8', '', 'inherit', 'open', 'closed', '', 'iphone-8', '', '', '2020-10-31 08:04:24', '2020-10-31 08:04:24', '', 25, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Iphone-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-10-31 08:15:15', '2020-10-31 08:15:15', '<div class=\"col_6\">iOS v12.0 Operating System</div>\r\n<div class=\"col_6\">Hexa Core Processor</div>\r\n<div class=\"col_6\">6.1 (15.49 cm) Display Size</div>\r\n<div class=\"col_6\">64 GB Internal Memory</div>\r\n<div class=\"col_6\">12 MP Primary Camera</div>\r\n<div class=\"col_6\">7 MP Front Camera</div>', 'Apple iPhone XR', '', 'publish', 'open', 'closed', '', 'apple-iphone-xr', '', '', '2020-12-04 07:34:00', '2020-12-04 07:34:00', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=28', 0, 'product', '', 0),
(29, 1, '2020-10-31 08:14:36', '2020-10-31 08:14:36', '', 'Iphone XR', '', 'inherit', 'open', 'closed', '', 'iphone-xr', '', '', '2020-10-31 08:14:36', '2020-10-31 08:14:36', '', 28, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Iphone-XR.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2020-10-31 09:18:27', '2020-10-31 09:18:27', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6.1-inch (15.5 cm) Liquid Retina HD LCD display</span></li>\r\n 	<li><span class=\"a-list-item\">Water and dust resistant (2 meters for up to 30 minutes, IP68)</span></li>\r\n 	<li><span class=\"a-list-item\">Dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Portrait mode, and 4K video up to 60fps</span></li>\r\n 	<li><span class=\"a-list-item\">12MP TrueDepth front camera with Portrait mode, 4K video, and Slo-Mo</span></li>\r\n 	<li><span class=\"a-list-item\">Face ID for secure authentication</span></li>\r\n 	<li><span class=\"a-list-item\">A13 Bionic chip with third-generation Neural Engine</span></li>\r\n 	<li><span class=\"a-list-item\">Fast-charge capable</span></li>\r\n</ul>', 'Apple iPhone 11', '', 'publish', 'open', 'closed', '', 'apple-iphone-11', '', '', '2020-12-04 07:34:28', '2020-12-04 07:34:28', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=30', 0, 'product', '', 0),
(31, 1, '2020-10-31 08:18:33', '2020-10-31 08:18:33', '', 'iPhone_11', '', 'inherit', 'open', 'closed', '', 'iphone_11', '', '', '2020-10-31 08:18:33', '2020-10-31 08:18:33', '', 30, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/iPhone_11.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-10-31 09:14:36', '2020-10-31 09:14:36', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">14.73 cm (5.8 inch) Super Retina XDR 2436 x 1125 display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">12 MP + 12 MP + 12 MP triple primary camera</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">12 MP selfie camera, iOS 13 operating system</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">A13 Bionic chip, splash, water &amp; dust resistant</li>\r\n</ul>', 'Apple iPhone 11 Pro', '', 'publish', 'open', 'closed', '', 'apple-iphone-11-pro', '', '', '2020-12-04 07:34:14', '2020-12-04 07:34:14', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=32', 0, 'product', '', 0),
(33, 1, '2020-10-31 08:24:42', '2020-10-31 08:24:42', '', 'Iphone 11 Pro', '', 'inherit', 'open', 'closed', '', 'iphone-11-pro-2', '', '', '2020-10-31 08:24:42', '2020-10-31 08:24:42', '', 32, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Iphone-11-Pro-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-10-31 09:49:20', '2020-10-31 09:49:20', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Super Retina XDR Display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">5G Enabled Phone</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">All‑screen OLED Display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Fingerprint-resistant Oleophobic Coating Scree</li>\r\n</ul>', 'Apple iPhone 12 Pro', '', 'publish', 'open', 'closed', '', 'apple-iphone-12-pro', '', '', '2020-12-04 07:34:52', '2020-12-04 07:34:52', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=38', 0, 'product', '', 0),
(39, 1, '2020-10-31 09:49:08', '2020-10-31 09:49:08', '', 'iphone 12 Pro Max', '', 'inherit', 'open', 'closed', '', 'iphone-12-pro-max', '', '', '2020-10-31 09:49:08', '2020-10-31 09:49:08', '', 38, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/iphone-12-Pro-Max.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-10-31 10:18:22', '2020-10-31 10:18:22', '<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">Camera: 16+20 MP Dual rear camera with Optical Image Stabilization, Super slow motion, Nightscape and Studio Lighting | 16 MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">Display: 6.41-inch(16.2 cms) Full HD+ Optic AMOLED display with 2340 x 1080 pixels resolution and an 86% screen-to-body ratio</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB storage | Dual nano SIM with dual standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Screen Unlock: In-screen fingerprint sensor. The OnePlus 6T unlocks in 0.34s for a seamless and intuitive unlock experience</span></li>\r\n 	<li><span class=\"a-list-item\">Operating System and Processor: OxygenOS based on Android 9.0 Pie with 2.8GHz Qualcomm Snapdragon 845 octa-core processor</span></li>\r\n 	<li><span class=\"a-list-item\">Battery : 3700 mAh lithium-polymer battery with Fast Charge technology</span></li>\r\n</ul>', 'OnePlus 6T', '', 'publish', 'open', 'closed', '', 'oneplus-6t', '', '', '2020-12-04 07:35:05', '2020-12-04 07:35:05', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=40', 0, 'product', '', 0),
(41, 1, '2020-10-31 10:17:51', '2020-10-31 10:17:51', '', 'OnePlus 6T', '', 'inherit', 'open', 'closed', '', 'oneplus-6t', '', '', '2020-10-31 10:17:51', '2020-10-31 10:17:51', '', 40, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/OnePlus-6T.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-10-31 10:26:23', '2020-10-31 10:26:23', '<div class=\"_1S5dn32I2J26I1dVtf9xRn\">8 GB RAM and 256 GB ROM</div>\r\n<div class=\"_1S5dn32I2J26I1dVtf9xRn\">6.67 inch (16.94 cm) Fluid AMOLED Display</div>\r\n<div class=\"_1S5dn32I2J26I1dVtf9xRn\">16 MP Front Camera and 48 MP + 16 MP + 8 MP Primary Camera</div>\r\n<div class=\"_1S5dn32I2J26I1dVtf9xRn\">4000 mAh</div>', 'OnePlus 7 Pro', '', 'publish', 'open', 'closed', '', 'oneplus-7-pro', '', '', '2020-12-04 07:35:20', '2020-12-04 07:35:20', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2020-10-31 10:37:14', '2020-10-31 10:37:14', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image</span></li>\r\n 	<li><span class=\"a-list-item\">16.63 centimeters (6.55 inch) 90Hz fluid AMOLED with 2400 x 1080 pixels resolution and 402 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.96GHz Qualcomm Snapdragon 855 Plus AI Engine octa-core, 7nm processor, Adreno 640</span></li>\r\n 	<li><span class=\"a-list-item\">3800mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 7T', '', 'publish', 'open', 'closed', '', 'oneplus-7t', '', '', '2020-10-31 10:37:22', '2020-10-31 10:37:22', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2020-10-31 10:30:31', '2020-10-31 10:30:31', '', 'OnePlus 7T', '', 'inherit', 'open', 'closed', '', 'oneplus-7t', '', '', '2020-10-31 10:30:31', '2020-10-31 10:30:31', '', 43, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/OnePlus-7T.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-10-31 10:32:55', '2020-10-31 10:32:55', '', 'OnePlus 7 Pro', '', 'inherit', 'open', 'closed', '', 'oneplus-7-pro-2', '', '', '2020-10-31 10:32:55', '2020-10-31 10:32:55', '', 42, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/OnePlus-7-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-10-31 10:41:21', '2020-10-31 10:41:21', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Rear Quad Camera with 48 MP Sony IMX586 Sensor, 16 MP Ultra Wide Angle, 5 MP macro lens and 2 MP monochrome lens | Front Camera with 16 MP Sony IMX471 Sensor</span></li>\r\n 	<li><span class=\"a-list-item\">6.55 inch ( 16.63 centimeters) 120 Hz Fluid AMOLED Display with 2400 X 1080 Pixels resolution, 402 PPI density</span></li>\r\n 	<li><span class=\"a-list-item\">2.86 GHz Qualcomm Snapdragon 865 Octa-core Processor + Adreno 650 GPU ,Oxygen OS based on Android 11 Operating system</span></li>\r\n 	<li><span class=\"a-list-item\">12 GB RAM | 256 GB ROM</span></li>\r\n 	<li><span class=\"a-list-item\">4500 mAH Lithium-ion battery with 65 W “Warp charge”</span></li>\r\n 	<li><span class=\"a-list-item\">1 year Manufacturer warranty for Device</span></li>\r\n</ul>', 'OnePlus 8T', '', 'publish', 'open', 'closed', '', 'oneplus-8t', '', '', '2020-10-31 10:41:24', '2020-10-31 10:41:24', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=46', 0, 'product', '', 0),
(47, 1, '2020-10-31 10:40:10', '2020-10-31 10:40:10', '', 'OnePlus 8T', '', 'inherit', 'open', 'closed', '', 'oneplus-8t', '', '', '2020-10-31 10:40:10', '2020-10-31 10:40:10', '', 46, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/OnePlus-8T.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-10-31 10:46:08', '2020-10-31 10:46:08', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP rear camera with 4K video at 30/60 fps, 1080P video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080P 30fps, 4k 30fps, CINE aspect ratio video recording, ultrashot HDR, nightscape, micro, portrait, pro mode, panorama, cat&amp;dog face detection&amp;focus, AI scene detection, RAW image | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.637 centimeters (6.55-inch) 90Hz fluid display with 2400 x 1080 pixels resolution, 402 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865 powered by Kryo 585 CPU octa core processor, Adreno 650</span></li>\r\n 	<li><span class=\"a-list-item\">4300mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 8', '', 'publish', 'open', 'closed', '', 'oneplus-8', '', '', '2020-10-31 10:46:10', '2020-10-31 10:46:10', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2020-10-31 10:43:50', '2020-10-31 10:43:50', '', 'OnePlus 8', '', 'inherit', 'open', 'closed', '', 'oneplus-8', '', '', '2020-10-31 10:43:50', '2020-10-31 10:43:50', '', 48, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/OnePlus-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-10-31 10:51:54', '2020-10-31 10:51:54', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP rear camera with 4k video at 30/60 fps, 1080p video at 30/60 fps, super slow motion: 720p video at 480 fps, 1080p video at 240fps, time-lapse: 1080p 30fps, 4k 30fps, cine aspect ratio video recording, video hdr, cat&amp;dog face detect &amp; focus, ultrashot hdr, nightscape, super micro, portrait, pro mode, panorama, ai scene detection, raw image, audio zoom, audio 3d, infrared photography camera | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.22 centimeters (6.78-inch) 120Hz fluid display with 3168 x 1440 pixels resolution, 513 ppi pixel density and vibrant color effect color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) dual-standby (5G+5G)</span></li>\r\n 	<li><span class=\"a-list-item\">Oxygen OS based on Android v10 operating system with 2.86GHz of clock speed with Qualcomm Snapdragon 865, powered by Kryo 585 CPU octa core processor, Adreno 650</span></li>\r\n 	<li><span class=\"a-list-item\">4510mAH lithium-ion battery</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n</ul>', 'OnePlus 8 Pro', '', 'publish', 'open', 'closed', '', 'oneplus-8-pro', '', '', '2020-10-31 10:52:01', '2020-10-31 10:52:01', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2020-10-31 10:50:59', '2020-10-31 10:50:59', '', 'Oneplus 8 Pro', '', 'inherit', 'open', 'closed', '', 'oneplus-8-pro', '', '', '2020-10-31 10:50:59', '2020-10-31 10:50:59', '', 50, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oneplus-8-Pro.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2020-10-31 11:01:35', '2020-10-31 11:01:35', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</span></li>\r\n 	<li><span class=\"a-list-item\">6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date.</span></li>\r\n 	<li><span class=\"a-list-item\">OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4115mAH lithium-ion battery | In-Display fingerprint sensor</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device </span></li>\r\n</ul>', 'OnePlus Nord 5G (Blue)', '', 'publish', 'open', 'closed', '', 'oneplus-nord-5g-blue', '', '', '2020-10-31 11:01:38', '2020-10-31 11:01:38', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2020-10-31 11:00:15', '2020-10-31 11:00:15', '', 'OnePlus Nord Blue', '', 'inherit', 'open', 'closed', '', 'oneplus-nord-blue', '', '', '2020-10-31 11:00:15', '2020-10-31 11:00:15', '', 52, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/OnePlus-Nord-Blue.jpeg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-10-31 11:06:36', '2020-10-31 11:06:36', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP+8MP+5MP+2MP quad rear camera with 1080P Video at 30/60 fps, 4k 30fps | 32MP+8MP front dual camera with 4K video capture at 30/60 fps and 1080 video capture at 30/60 fps</span></li>\r\n 	<li><span class=\"a-list-item\">6.44-inch 90Hz fluid Amoled display with 2400 x 1080 pixels resolution | 408ppi</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory | Dual SIM (nano+nano) | OnePlus Nord currently support dual 4G SIM Cards or a Single 5G SIM. 5G+4G support will be available via OTA update at a future date</span></li>\r\n 	<li><span class=\"a-list-item\">OxygenOS based on Android 10 operating system with 2.4GHz Kryo 475 Prime + 2.2GHz Kryo 475 Gold + 6x1.8GHz Kryo 475 Silver Qualcomm Snapdragon 765G 5G mobile platform octa core processor, Adreno 620 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4115mAH lithium-ion battery | In-Display fingerprint sensor</span></li>\r\n 	<li><span class=\"a-list-item\">1 year manufacturer warranty for device</span></li>\r\n 	<li><span class=\"a-list-item\">Corning Gorilla Glass 5 | 12GB GB LPDDR4X, 256GB UFS 2.1</span></li>\r\n</ul>', 'OnePlus Nord 5G (Gray)', '', 'publish', 'open', 'closed', '', 'oneplus-nord-5g-gray', '', '', '2020-10-31 11:06:38', '2020-10-31 11:06:38', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=55', 0, 'product', '', 0),
(56, 1, '2020-10-31 11:05:16', '2020-10-31 11:05:16', '', 'OnePlus Nord', '', 'inherit', 'open', 'closed', '', 'oneplus-nord', '', '', '2020-10-31 11:05:16', '2020-10-31 11:05:16', '', 55, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/OnePlus-Nord.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-10-31 13:13:44', '2020-10-31 13:13:44', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12+8+2+2MP rear camera with 119 degree ultra wide, ultra night mode, video EIS anti-shake, portrait | 8MP AI front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.5 centimeters (6.5-inch) with 1600 x 720 pixels resolution and waterdrop screen | Corning Gorilla 3+ screen, sunlight screen, night shield with blue light filter</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v9.0 based on Color OS 6.1 operating system with 2.0GHz SM6125 Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-polymer battery | reverse charging supported</span></li>\r\n</ul>', 'Oppo A5', '', 'publish', 'open', 'closed', '', 'oppo-a5', '', '', '2020-10-31 13:13:48', '2020-10-31 13:13:48', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=57', 0, 'product', '', 0),
(58, 1, '2020-10-31 13:12:55', '2020-10-31 13:12:55', '', 'Oppo A5', '', 'inherit', 'open', 'closed', '', 'oppo-a5', '', '', '2020-10-31 13:12:55', '2020-10-31 13:12:55', '', 57, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oppo-A5.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-10-31 13:16:58', '2020-10-31 13:16:58', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP+2MP AI rear dual camera with filters, AI beautification, bokeh, HDR, dazzle color mode | 5MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) HD+ waterdrop screen display with 1520 x 720 pixels resolution, 270 ppi pixel density and 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Color OS 6.1 based on Android Pie v9.0 operating system with 2.3GHz MediaTek Helio P35 octa core processor, GPU IMG GE8320</span></li>\r\n 	<li><span class=\"a-list-item\">4230mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours.</span></li>\r\n</ul>', 'Oppo A12', '', 'publish', 'open', 'closed', '', 'oppo-a12', '', '', '2020-10-31 13:18:00', '2020-10-31 13:18:00', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2020-10-31 13:16:09', '2020-10-31 13:16:09', '', 'Oppo A12', '', 'inherit', 'open', 'closed', '', 'oppo-a12', '', '', '2020-10-31 13:16:09', '2020-10-31 13:16:09', '', 59, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oppo-A12.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-10-31 13:20:03', '2020-10-31 13:20:03', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12+2+2MP triple rear camera (12MP main camera+2MP macro lens+2MP depth camera) with Portrait bokeh, macro lens and dazzle color mode. 8MP front camera with AI beautification</span></li>\r\n 	<li><span class=\"a-list-item\">16.5 centimeters (6.5-inch) waterdrop multi touch screen with an 89% screen to body ratio , 1600 x 720 pixels resolution, 269 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM , 64GB internal memory expandable up to 256GB , Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">ColorOS 6.1 operating system based on Android Pie v9.0 with 2.3GHz Mediatek P35 Octa-core processor, IMG GE8320 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4230 mAH lithium-polymer battery providing talk-time of 45 hours and standby time of 450 hours</span></li>\r\n</ul>', 'Oppo A31', '', 'publish', 'open', 'closed', '', 'oppo-a31', '', '', '2020-10-31 13:20:11', '2020-10-31 13:20:11', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=61', 0, 'product', '', 0),
(62, 1, '2020-10-31 13:19:44', '2020-10-31 13:19:44', '', 'Oppo A31', '', 'inherit', 'open', 'closed', '', 'oppo-a31', '', '', '2020-10-31 13:19:44', '2020-10-31 13:19:44', '', 61, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oppo-A31.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-10-31 13:22:39', '2020-10-31 13:22:39', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">12MP+8MP+2MP+2MP AI quad rear camera, 4K video, AI beautification | 16MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.51 centimeters (6.5-inch) FHD+ punch-hole display with 2400 x 1080 pixels resolution, 405 ppi pixel density | 90.5% screen to body ratio| Eye care</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Color OS 7.1 based on Android v10.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-polymer battery providing talk-time of 34 hours and standby time of 500 hours with 18W fast charge</span></li>\r\n</ul>', 'Oppo A52', '', 'publish', 'open', 'closed', '', 'oppo-a52', '', '', '2020-10-31 13:22:45', '2020-10-31 13:22:45', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2020-10-31 13:22:12', '2020-10-31 13:22:12', '', 'Oppo A52', '', 'inherit', 'open', 'closed', '', 'oppo-a52', '', '', '2020-10-31 13:22:12', '2020-10-31 13:22:12', '', 64, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oppo-A52.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-10-31 13:22:55', '2020-10-31 13:22:55', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">12MP+8MP+2MP+2MP AI quad rear camera, 4K video, AI beautification | 16MP front camera</span></li>\n 	<li><span class=\"a-list-item\">16.51 centimeters (6.5-inch) FHD+ punch-hole display with 2400 x 1080 pixels resolution, 405 ppi pixel density | 90.5% screen to body ratio| Eye care</span></li>\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\n 	<li><span class=\"a-list-item\">Color OS 7.1 based on Android v10.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\n 	<li><span class=\"a-list-item\">5000mAH lithium-polymer battery providing talk-time of 34 hours and standby time of 500 hours with 18W fast charge</span></li>\n</ul>', 'Oppo A52', '', 'inherit', 'closed', 'closed', '', '64-autosave-v1', '', '', '2020-10-31 13:22:55', '2020-10-31 13:22:55', '', 64, 'http://127.0.0.1/Amazon/2020/10/31/64-autosave-v1/', 0, 'revision', '', 0),
(67, 1, '2020-10-31 13:28:53', '2020-10-31 13:28:53', '<ul>\r\n 	<li class=\"_2-riNZ\">4 GB RAM | 128 GB ROM | Expandable Upto 256 GB</li>\r\n 	<li class=\"_2-riNZ\">16.26 cm (6.4 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">VOOC Flash Charge 3.0 with 20W Fast Charging</li>\r\n 	<li class=\"_2-riNZ\">In-display Fingerprint 3.0 with 0.32 Second Unlock</li>\r\n</ul>', 'Oppo F15', '', 'publish', 'open', 'closed', '', 'oppo-f15', '', '', '2020-10-31 13:29:00', '2020-10-31 13:29:00', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2020-10-31 13:28:45', '2020-10-31 13:28:45', '', 'Oppo F15', '', 'inherit', 'open', 'closed', '', 'oppo-f15', '', '', '2020-10-31 13:28:45', '2020-10-31 13:28:45', '', 67, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oppo-F15.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2020-10-31 13:32:08', '2020-10-31 13:32:08', '<ul>\r\n 	<li class=\"_2-riNZ\">4 GB RAM | 128 GB ROM | Expandable Upto 256 GB</li>\r\n 	<li class=\"_2-riNZ\">16.26 cm (6.4 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">VOOC Flash Charge 3.0 with 20W Fast Charging</li>\r\n 	<li class=\"_2-riNZ\">In-display Fingerprint 3.0 with 0.32 Second Unlock</li>\r\n</ul>', 'Oppo Reno 2', '', 'publish', 'open', 'closed', '', 'oppo-reno-2', '', '', '2020-10-31 13:33:09', '2020-10-31 13:33:09', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2020-10-31 13:31:57', '2020-10-31 13:31:57', '', 'Oppo Reno 2', '', 'inherit', 'open', 'closed', '', 'oppo-reno-2', '', '', '2020-10-31 13:31:57', '2020-10-31 13:31:57', '', 69, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oppo-Reno-2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2020-10-31 13:35:50', '2020-10-31 13:35:50', '<ul>\r\n 	<li class=\"_2-riNZ\">6 GB RAM | 256 GB ROM</li>\r\n 	<li class=\"_2-riNZ\">16.51 cm (6.5 inch) Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP + 2MP | 16MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4000 mAh Battery</li>\r\n 	<li class=\"_2-riNZ\">MediaTek Helio P70 Processor</li>\r\n 	<li class=\"_2-riNZ\">Ultra Night Mode 2.0</li>\r\n</ul>', 'Oppo Reno 2F', '', 'publish', 'open', 'closed', '', 'oppo-reno-2f', '', '', '2020-10-31 13:35:55', '2020-10-31 13:35:55', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2020-10-31 13:35:36', '2020-10-31 13:35:36', '', 'Oppo Reno 2F', '', 'inherit', 'open', 'closed', '', 'oppo-reno-2f', '', '', '2020-10-31 13:35:36', '2020-10-31 13:35:36', '', 72, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Oppo-Reno-2F.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2020-10-31 13:38:20', '2020-10-31 13:38:20', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">108MP quad rear camera with OIS, ultra-wide, macro, portrait, night mode, AI scene recognition, HDR, pro mode | 20MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.94 centimeters (6.67-inch) FHD+ AMOLED capacitive multi-touch touchscreen with 2340 x 1080 pixels resolution, 386 ppi pixel density and 19.5:9 aspect ratio | 3D Curved glass</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) with support for 5G</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10 operating system with 2.84GHz Qualcomm Snapdragon 865 with 7nm octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4780mAH lithium-polymer battery with 30W wired fast charger in-box &amp; support for up to 30W wireless charging</span></li>\r\n</ul>', 'Mi 10', '', 'publish', 'open', 'closed', '', 'mi-10', '', '', '2020-10-31 13:38:24', '2020-10-31 13:38:24', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2020-10-31 13:38:04', '2020-10-31 13:38:04', '', 'Mi 10', '', 'inherit', 'open', 'closed', '', 'mi-10', '', '', '2020-10-31 13:38:04', '2020-10-31 13:38:04', '', 74, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Mi-10.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2020-10-31 13:44:21', '2020-10-31 13:44:21', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6 GB RAM | 64 GB ROM | Expandable Upto 256 GB</span></li>\r\n 	<li><span class=\"a-list-item\">16.0 cm (6.3 inch) FHD+ Display</span></li>\r\n 	<li><span class=\"a-list-item\">48MP + 5MP | 13MP Front Camera</span></li>\r\n 	<li><span class=\"a-list-item\">Qualcomm Snapdragon 675 Processor</span></li>\r\n 	<li><span class=\"a-list-item\">Quick Charge 4.0 Support</span></li>\r\n</ul>', 'Redmi Note 7 Pro', '', 'publish', 'open', 'closed', '', 'redmi-note-7-pro', '', '', '2020-10-31 13:44:26', '2020-10-31 13:44:26', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=76', 0, 'product', '', 0),
(77, 1, '2020-10-31 13:43:35', '2020-10-31 13:43:35', '', 'Redmi Note 7 pro', '', 'inherit', 'open', 'closed', '', 'redmi-note-7-pro', '', '', '2020-10-31 13:43:35', '2020-10-31 13:43:35', '', 76, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Redmi-Note-7-pro.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2020-10-31 13:48:01', '2020-10-31 13:48:01', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">6.47\"3D curved AMOLED display Corning Gorilla glass front and back, 1080x2340 pixels 398 PPI - HDR 10 - Responsive in-screen fingerprint sensor - TÜV Rheinland low blue light mode</span></li>\r\n 	<li><span class=\"a-list-item\">Flash storage: 128 GB phone storage + 6GB RAM - Qualcomm Snapdragon 730G - 5260mAh (typ) high-capacity battery - Multifunctional NFC</span></li>\r\n 	<li><span class=\"a-list-item\">Main camera: 108MP ultra high-resolution camera + 12MP portrait camera + 5MP telephoto camera + 20MP ultra wide-angle camera + 2MP macro camera - Front Camera: 32MP selfie camera - 4K recording - 1080P slow motion recording - Vlog mode &amp; Night mode 2.0</span></li>\r\n</ul>', 'Xiaomi Mi Note 10', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-note-10', '', '', '2020-10-31 13:48:08', '2020-10-31 13:48:08', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=78', 0, 'product', '', 0),
(79, 1, '2020-10-31 13:47:36', '2020-10-31 13:47:36', '', 'Xiaomi Mi Note 10', '', 'inherit', 'open', 'closed', '', 'xiaomi-mi-note-10', '', '', '2020-10-31 13:47:36', '2020-10-31 13:47:36', '', 78, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Xiaomi-Mi-Note-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2020-10-31 13:51:16', '2020-10-31 13:51:16', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48+8+2MP AI triple rear camera with portrait mode, HDR, PDAF supported | 32MP front camera with f2.0, 1/2.8 inch pixel size, portrait mode, HDR supported</span></li>\r\n 	<li><span class=\"a-list-item\">15.46 centimeters (6.088-inch) AMOLED multi-touch capacitive touchscreen with 1520 x 720 pixels resolution, 282 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.0GHz Qualcomm Snapdragon 665 octa core processor, Adreno 610 GPU</span></li>\r\n 	<li><span class=\"a-list-item\">4030mAH lithium-ion battery, AI scene detection: Detects up to 27 different scenes</span></li>\r\n</ul>', 'Xiaomi Mi A3', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-a3', '', '', '2020-10-31 13:51:20', '2020-10-31 13:51:20', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2020-10-31 13:50:42', '2020-10-31 13:50:42', '', 'Xiaomi-Mi A3', '', 'inherit', 'open', 'closed', '', 'xiaomi-mi-a3', '', '', '2020-10-31 13:50:42', '2020-10-31 13:50:42', '', 80, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Xiaomi-Mi-A3.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2020-10-31 13:56:25', '2020-10-31 13:56:25', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13+8+2MP AI triple rear camera with HDR mode and portrait mode | 8MP front camera with face beauty, portrait bokeh</span></li>\r\n 	<li><span class=\"a-list-item\">16.15 centimeters (6.35-inch) halo fullview display with 720 x 1544 pixels resolution</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with MediaTek Helio P22 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-ion massive battery</span></li>\r\n</ul>', 'Vivo Y12', '', 'publish', 'open', 'closed', '', 'vivo-y12', '', '', '2020-10-31 13:56:29', '2020-10-31 13:56:29', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2020-10-31 13:56:16', '2020-10-31 13:56:16', '', 'Vivo Y12', '', 'inherit', 'open', 'closed', '', 'vivo-y12', '', '', '2020-10-31 13:56:16', '2020-10-31 13:56:16', '', 82, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Vivo-Y12.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2020-10-31 13:59:59', '2020-10-31 13:59:59', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13+2+2MP rear camera | 8MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.55 centimeters (6.51 inch) HD+ display with 720 x 1600 pixels resolution</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 4GB RAM | 64GB internal memory expandable up to 256GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Funtouch OS 10.5 based on Android v10 operating system with Qualcomm Snapdragon 460 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">5000mAH lithium-ion battery</span></li>\r\n</ul>', 'Vivo Y20', '', 'publish', 'open', 'closed', '', 'vivo-y20', '', '', '2020-10-31 14:00:05', '2020-10-31 14:00:05', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2020-10-31 13:59:46', '2020-10-31 13:59:46', '', 'Vivo-Y20', '', 'inherit', 'open', 'closed', '', 'vivo-y20', '', '', '2020-10-31 13:59:46', '2020-10-31 13:59:46', '', 84, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Vivo-Y20.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2020-10-31 14:30:15', '2020-10-31 14:30:15', 'Vivo Z5i  is powered by the Qualcomm SDM675 Snapdragon 675 Octa-core (2×2.0 GHz Kryo 460 Gold + 6×1.7 GHz Kryo 460 Silver) processor. The smartphone comes with a 6.53 inches IPS LCD capacitive touchscreen and 1080 x 2340 pixels resolution.\r\n\r\nThe rear camera consists of a 16 MP (wide) + 8 MP (ultrawide) + 2 MP macro camera lenses.\r\n\r\nThe front camera has a 16 MP sensor. The phone’s sensors include Fingerprint (rear-mounted), accelerometer, proximity, and compass\r\n\r\nThe smartphone is fueled by a Non-removable Li-Po 5000 mAh battery + Fast battery charging 18W.\r\n\r\nThe phone runs on Android 9.0 (Pie) + Funtouch 9.2.', 'Vivo Z5i', '', 'publish', 'open', 'closed', '', 'vivo-z5i', '', '', '2020-10-31 14:30:20', '2020-10-31 14:30:20', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=86', 0, 'product', '', 0),
(87, 1, '2020-10-31 14:29:13', '2020-10-31 14:29:13', '', 'Vivo Z5i', '', 'inherit', 'open', 'closed', '', 'vivo-z5i', '', '', '2020-10-31 14:29:13', '2020-10-31 14:29:13', '', 86, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Vivo-Z5i.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-10-31 14:38:46', '2020-10-31 14:38:46', '<ul>\r\n 	<li class=\"_2-riNZ\">6 GB RAM | 64 GB ROM</li>\r\n 	<li class=\"_2-riNZ\">16.21 cm (6.38 inch) Full HD+ Display</li>\r\n 	<li class=\"_2-riNZ\">48MP + 8MP + 2MP | 32MP Front Camera</li>\r\n 	<li class=\"_2-riNZ\">4500 mAh Li-ion Battery</li>\r\n 	<li class=\"_2-riNZ\">Qualcomm Snapdragon 712 AIE Processor</li>\r\n 	<li class=\"_2-riNZ\">22.5 W Vivo Flash Charge</li>\r\n</ul>', 'Vivo Z1x', '', 'publish', 'open', 'closed', '', 'vivo-z1x', '', '', '2020-10-31 14:38:51', '2020-10-31 14:38:51', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2020-10-31 14:38:36', '2020-10-31 14:38:36', '', 'Vivo-Z1x', '', 'inherit', 'open', 'closed', '', 'vivo-z1x', '', '', '2020-10-31 14:38:36', '2020-10-31 14:38:36', '', 88, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Vivo-Z1x.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2020-10-31 14:44:29', '2020-10-31 14:44:29', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP + 2MP rear camera | 8MP front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) HD+ capacitive touchscreen with 720 x 1560 pixels resolution 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 32GB storage expandable up to 512GB | Dual nano SIM with dual standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v9 Pie operating system with 2GHz + 1.5GHz MediaTek MT6762 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A10s', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a10s', '', '', '2020-10-31 14:44:35', '2020-10-31 14:44:35', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2020-10-31 14:44:15', '2020-10-31 14:44:15', '', 'Samsung Galaxy A10s', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a10s', '', '', '2020-10-31 14:44:15', '2020-10-31 14:44:15', '', 90, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-A10s.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2020-10-31 14:44:45', '2020-10-31 14:44:45', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">13MP + 2MP rear camera | 8MP front facing camera</span></li>\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) HD+ capacitive touchscreen with 720 x 1560 pixels resolution 16M color support</span></li>\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 32GB storage expandable up to 512GB | Dual nano SIM with dual standby (4G+4G)</span></li>\n 	<li><span class=\"a-list-item\">Android v9 Pie operating system with 2GHz + 1.5GHz MediaTek MT6762 octa core processor</span></li>\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\n</ul>', 'Samsung Galaxy A10s', '', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2020-10-31 14:44:45', '2020-10-31 14:44:45', '', 90, 'http://127.0.0.1/Amazon/2020/10/31/90-autosave-v1/', 0, 'revision', '', 0),
(93, 1, '2020-10-31 14:55:45', '2020-10-31 14:55:45', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">13MP+2MP dual rear camera setup-13MP (F1.8) main camera + 2MP (F2.4) depth camera| 8MP (F2.0) front camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.79 centimeters (6.2-inch) PLS TFT LCD - infinity v-cut display, HD+ resolution with 720 x 1520 pixels resolution, 270 PPI with 16M colours</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 3GB RAM | 32GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2GHz MediaTek | MT6762 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy M01s', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-m01s', '', '', '2020-10-31 14:55:49', '2020-10-31 14:55:49', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 1, '2020-10-31 14:55:19', '2020-10-31 14:55:19', '', 'Samsung Galaxy M01s', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-m01s', '', '', '2020-10-31 14:55:19', '2020-10-31 14:55:19', '', 93, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-M01s.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2020-10-31 15:17:14', '2020-10-31 15:17:14', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">48MP (F1.8)+12MP (F2.2)+5MP(F2.2)+5MP(F2.4) rear camera | 32MP front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">16.40 centimeters (6.5-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10.0 operating system with 2.3GHz+1.7GHz Exynos 9611 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4000mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A51', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a51', '', '', '2020-10-31 15:17:18', '2020-10-31 15:17:18', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2020-10-31 15:17:05', '2020-10-31 15:17:05', '', 'Samsung Galaxy A51', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a51', '', '', '2020-10-31 15:17:05', '2020-10-31 15:17:05', '', 95, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-A51.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-10-31 15:19:35', '2020-10-31 15:19:35', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">64MP (F1.8)+12MP (F2.2)+5MP (F2.2)+5MP (F2.4) camera | 32 front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.04 centimeters (6.7-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android 10 operating system with 2.3GHz+1.7GHz Qualcomm | SM7150 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">4500mAH lithium-ion battery</span></li>\r\n</ul>', 'Samsung Galaxy A71', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-a71', '', '', '2020-10-31 15:19:41', '2020-10-31 15:19:41', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2020-10-31 15:19:27', '2020-10-31 15:19:27', '', 'Samsung Galaxy A71', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-a71', '', '', '2020-10-31 15:19:27', '2020-10-31 15:19:27', '', 97, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-A71.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2020-10-31 15:21:08', '2020-10-31 15:21:08', '', 'Samsung Galaxy M31', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-m31', '', '', '2020-10-31 15:21:08', '2020-10-31 15:21:08', '', 0, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-M31.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-10-31 15:37:54', '2020-10-31 15:37:54', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Quad Camera Setup - 64MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera +5MP(F2.4) Macro Camera and 32MP (F2.0) front facing Camera</span></li>\r\n 	<li><span class=\"a-list-item\">6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support</span></li>\r\n 	<li><span class=\"a-list-item\">Android v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor , 6GB RAM, 64GB internal memory expandable up to 512GB and dual SIM</span></li>\r\n 	<li><span class=\"a-list-item\">6000 mAh Battery</span></li>\r\n</ul>', 'Samsung Galaxy M31', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-m31-2', '', '', '2020-10-31 15:37:59', '2020-10-31 15:37:59', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2020-10-31 15:37:41', '2020-10-31 15:37:41', '', 'Samsung Galaxy M31', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-m31-2', '', '', '2020-10-31 15:37:41', '2020-10-31 15:37:41', '', 101, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-M31-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2020-10-31 15:42:29', '2020-10-31 15:42:29', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Quad Rear Camera - 16MP (Ultra wide) + 12MP (Dual Aperture - F 1.5/2.4)+ 12MP (Telephoto) + ToF (DepthVision Camera) with Flash | 10MP front camera</span></li>\r\n 	<li><span class=\"a-list-item\">17.16 centimeters (6.8-inch) Dynamic AMOLED Infinity O Display  with QHD+ resolution 3040 X 1440 (498 ppi), HDR10+ Certified</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage &amp; SIM: 12GB RAM | 256GB internal memory expandable up to 1TB | Dual SIM dual-standby (4G+4G) - Hybrid Sim slot</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.7GHz Exynos 9825 octa core processor, S Pen Support: Yes (Gesture/Remote Control)</span></li>\r\n 	<li><span class=\"a-list-item\">4300mAH lithium-ion battery | Fast charging with 25W charger (included in the box)</span></li>\r\n 	<li><span class=\"a-list-item\">Other Features :- Ultrasonic in-display fingerprint sensor, Bluetooth enabled Air Actions for S Pen, Dex mode with Usb cable</span></li>\r\n</ul>', 'Samsung Galaxy Note 10 Plus', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-10-plus', '', '', '2020-10-31 15:42:34', '2020-10-31 15:42:34', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 1, '2020-10-31 15:40:53', '2020-10-31 15:40:53', '', 'Samsung Galaxy Note 10+', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-note-10', '', '', '2020-10-31 15:40:53', '2020-10-31 15:40:53', '', 103, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-Note-10.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-10-31 15:44:40', '2020-10-31 15:44:40', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Triple rear camera setup: 16MP with f2.2 aperture ultra wide + 12MP with f1.5 and f2.4 aperture wide + 12MP f2.4 tele| 10MP f1.9 front facing camera</span></li>\r\n 	<li><span class=\"a-list-item\">15.51 centimeters (6.1-inch) Dynamic AMOLED multi-touch capacitive touchscreen with 3040 x 1440 pixels resolution, 550 ppi pixel density</span></li>\r\n 	<li><span class=\"a-list-item\">Memory, Storage and SIM: 8GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM (nano+nano) dual stand by (4G+4G)</span></li>\r\n 	<li><span class=\"a-list-item\">Android Pie v9.0 operating system with 2.7GHz + 2.3GHz + 1.9GHz Exynos 9820 octa core processor</span></li>\r\n 	<li><span class=\"a-list-item\">3400mAH lithium-ion battery, The large, notch-free display is a visual treat on the eyes</span></li>\r\n</ul>', 'Samsung Galaxy S10', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-s10', '', '', '2020-10-31 15:44:45', '2020-10-31 15:44:45', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=105', 0, 'product', '', 0),
(106, 1, '2020-10-31 15:44:23', '2020-10-31 15:44:23', '', 'Samsung Galaxy S10', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-s10', '', '', '2020-10-31 15:44:23', '2020-10-31 15:44:23', '', 105, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-S10.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-10-31 15:50:25', '2020-10-31 15:50:25', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Ip68 Water And Dust Resistance</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Bixby Your Personal Voice Assistant</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Bixby Vision Next-Gen Camera Intelligence</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Biometric Authentication</li>\r\n</ul>', 'Samsung Galaxy Note 20', '', 'publish', 'open', 'closed', '', 'samsung-galaxy-note-20', '', '', '2020-10-31 15:50:31', '2020-10-31 15:50:31', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=107', 0, 'product', '', 0),
(108, 1, '2020-10-31 15:48:22', '2020-10-31 15:48:22', '', 'Samsung Galaxy Note 20', '', 'inherit', 'open', 'closed', '', 'samsung-galaxy-note-20', '', '', '2020-10-31 15:48:22', '2020-10-31 15:48:22', '', 107, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Samsung-Galaxy-Note-20.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2020-10-31 15:53:17', '2020-10-31 15:53:17', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">GPS</span></li>\r\n 	<li><span class=\"a-list-item\">Retina display</span></li>\r\n 	<li><span class=\"a-list-item\">Swimproof</span></li>\r\n 	<li><span class=\"a-list-item\">Optical heart sensor</span></li>\r\n 	<li><span class=\"a-list-item\">Store and stream music, podcasts and audiobooks</span></li>\r\n 	<li><span class=\"a-list-item\">Elevation</span></li>\r\n 	<li><span class=\"a-list-item\">Emergency SOS</span></li>\r\n</ul>\r\n<div class=\"a-row a-expander-container a-expander-inline-container\" aria-live=\"polite\">\r\n<div class=\"a-expander-content a-expander-extend-content a-expander-content-expanded\" aria-expanded=\"true\">\r\n<ul class=\"a-unordered-list a-vertical a-spacing-none\">\r\n 	<li><span class=\"a-list-item\">S3 chip with dual-core processor</span></li>\r\n 	<li><span class=\"a-list-item\">watchOS 6 with Activity trends, cycle tracking, loud noise notifications and the App Store on your wrist</span></li>\r\n 	<li><span class=\"a-list-item\">Aluminium case</span></li>\r\n</ul>\r\n</div>\r\n</div>', 'Apple Watch Series 3', '', 'publish', 'open', 'closed', '', 'apple-watch-series-3', '', '', '2020-10-31 15:53:22', '2020-10-31 15:53:22', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=109', 0, 'product', '', 0),
(110, 1, '2020-10-31 15:53:09', '2020-10-31 15:53:09', '', 'Apple watch series 3', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-3', '', '', '2020-10-31 15:53:09', '2020-10-31 15:53:09', '', 109, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Apple-watch-series-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2020-10-31 15:57:10', '2020-10-31 15:57:10', '<ul>\r\n 	<li>GPS</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">64-bit Dual-core S4 Processor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Electrical Heart Sensor, Optical Heart Sensor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Fall Detection, Ambient Light Sensor</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">LTPO OLED Retina display with Force Touch</li>\r\n</ul>', 'Apple Watch Series 4', '', 'publish', 'open', 'closed', '', 'apple-watch-series-4', '', '', '2020-10-31 15:57:14', '2020-10-31 15:57:14', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=111', 0, 'product', '', 0),
(112, 1, '2020-10-31 15:56:52', '2020-10-31 15:56:52', '', 'Apple watch series 4', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-4', '', '', '2020-10-31 15:56:52', '2020-10-31 15:56:52', '', 111, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Apple-watch-series-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2020-10-31 15:58:31', '2020-10-31 15:58:31', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\r\n 	<li class=\"sc-hSdWYo dyRtxx\">GPS + Cellular, Always-On Retina display</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">30% larger screen, Swimproof, ECG app</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Electrical and optical heart sensors</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Store and stream music, podcasts, and audiobooks</li>\r\n</ul>', 'Apple Watch Series 5', '', 'publish', 'open', 'closed', '', 'apple-watch-series-5', '', '', '2020-10-31 15:58:35', '2020-10-31 15:58:35', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=113', 0, 'product', '', 0),
(114, 1, '2020-10-31 15:58:16', '2020-10-31 15:58:16', '', 'Apple watch series 5', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-5', '', '', '2020-10-31 15:58:16', '2020-10-31 15:58:16', '', 113, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Apple-watch-series-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2020-10-31 15:58:46', '2020-10-31 15:58:46', '<ul class=\"p__5 sc-iAyFgw fmSzfV\">\n 	<li class=\"sc-hSdWYo dyRtxx\">GPS + Cellular, Always-On Retina display</li>\n 	<li class=\"sc-hSdWYo dyRtxx\">30% larger screen, Swimproof, ECG app</li>\n 	<li class=\"sc-hSdWYo dyRtxx\">Electrical and optical heart sensors</li>\n 	<li class=\"sc-hSdWYo dyRtxx\">Store and stream music, podcasts, and audiobooks</li>\n</ul>', 'Apple Watch Series 5', '', 'inherit', 'closed', 'closed', '', '113-autosave-v1', '', '', '2020-10-31 15:58:46', '2020-10-31 15:58:46', '', 113, 'http://127.0.0.1/Amazon/2020/10/31/113-autosave-v1/', 0, 'revision', '', 0),
(116, 1, '2020-10-31 16:00:02', '2020-10-31 16:00:02', '<ul>\r\n 	<li>GPS</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Measure your Blood Oxygen Level</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">Take an ECG Anytime, Anywhere</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">The New Sleep App</li>\r\n 	<li class=\"sc-hSdWYo dyRtxx\">The Always-On Retina LTPO OLED Display</li>\r\n</ul>', 'Apple Watch Series 6', '', 'publish', 'open', 'closed', '', 'apple-watch-series-6', '', '', '2020-10-31 16:00:07', '2020-10-31 16:00:07', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2020-10-31 15:59:50', '2020-10-31 15:59:50', '', 'Apple-watch-series 6', '', 'inherit', 'open', 'closed', '', 'apple-watch-series-6', '', '', '2020-10-31 15:59:50', '2020-10-31 15:59:50', '', 116, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Apple-watch-series-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2020-10-31 16:43:20', '2020-10-31 16:43:20', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Blue, Band Material: Fabric</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog-Digital</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47.3 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters</span></li>\r\n 	<li><span class=\"a-list-item\">24 Months Manufacturer Warranty on manufacturing defects</span></li>\r\n</ul>', 'Fastrack Denim Analog Watch', '', 'publish', 'open', 'closed', '', 'fastrack-denim-analog-watch', '', '', '2020-10-31 16:43:24', '2020-10-31 16:43:24', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2020-10-31 16:42:58', '2020-10-31 16:42:58', '', 'Fastrack Analog-digital-watch-', '', 'inherit', 'open', 'closed', '', 'fastrack-analog-digital-watch', '', '', '2020-10-31 16:42:58', '2020-10-31 16:42:58', '', 118, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-Analog-digital-watch-.jpeg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2020-10-31 16:50:45', '2020-10-31 16:50:45', '<ul>\r\n 	<li>Recommended for customers looking for a large dial size watches</li>\r\n</ul>', 'Fastrack Analog Black Watch', '', 'publish', 'open', 'closed', '', 'fastrack-analog-black-watch', '', '', '2020-10-31 16:50:51', '2020-10-31 16:50:51', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2020-10-31 16:48:00', '2020-10-31 16:48:00', '', 'Fastrack black watch', '', 'inherit', 'open', 'closed', '', 'fastrack-black-watch', '', '', '2020-10-31 16:48:00', '2020-10-31 16:48:00', '', 120, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-black-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2020-10-31 16:54:30', '2020-10-31 16:54:30', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Silicone, GENDER: Guys, LOCK MECHANISM: Buckle</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 54.7mm x 46.2mm x 12.8mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n</ul>', 'Fastrack Casual Analog White Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-white-watch', '', '', '2020-10-31 16:54:34', '2020-10-31 16:54:34', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2020-10-31 16:54:07', '2020-10-31 16:54:07', '', 'Fastrack Casual Analog watch', '', 'inherit', 'open', 'closed', '', 'fastrack-casual-analog-watch', '', '', '2020-10-31 16:54:07', '2020-10-31 16:54:07', '', 122, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-Casual-Analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2020-10-31 16:59:15', '2020-10-31 16:59:15', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Navy Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 51mm x 49.5mm x 12.3mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">24 months manufacturer warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n</ul>', 'Fastrack Casual Analog Navy Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-navy-blue-dial-watch', '', '', '2020-10-31 16:59:22', '2020-10-31 16:59:22', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=124', 0, 'product', '', 0),
(125, 1, '2020-10-31 16:58:41', '2020-10-31 16:58:41', '', 'Fastrack Navy Blue Casual watch', '', 'inherit', 'open', 'closed', '', 'fastrack-navy-blue-casual-watch', '', '', '2020-10-31 16:58:41', '2020-10-31 16:58:41', '', 124, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-Navy-Blue-Casual-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2020-10-31 17:04:29', '2020-10-31 17:04:29', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 52mm x 45mm x 11.8mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">24 months manufacturer warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n 	<li><span class=\"a-list-item\">Recommended for customers looking for a large dial sized watches</span></li>\r\n</ul>', 'Fastrack Casual Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-casual-analog-black-dial-watch', '', '', '2020-10-31 17:04:33', '2020-10-31 17:04:33', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=126', 0, 'product', '', 0),
(127, 1, '2020-10-31 17:02:15', '2020-10-31 17:02:15', '', 'Fastrack silver watch', '', 'inherit', 'open', 'closed', '', 'fastrack-silver-watch', '', '', '2020-10-31 17:02:15', '2020-10-31 17:02:15', '', 126, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-silver-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2020-10-31 17:10:11', '2020-10-31 17:10:11', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Square, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Bluish Grey, Band Material: Leather</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 45 x 39.3 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">1 Year Manufacturing Warranty and 6 Months Battery Warranty</span></li>\r\n</ul>', 'Fastrack Analog White Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-analog-white-dial-watch', '', '', '2020-10-31 17:10:15', '2020-10-31 17:10:15', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2020-10-31 17:09:32', '2020-10-31 17:09:32', '', 'Fastrack watch', '', 'inherit', 'open', 'closed', '', 'fastrack-watch', '', '', '2020-10-31 17:09:32', '2020-10-31 17:09:32', '', 128, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2020-10-31 17:10:25', '2020-10-31 17:10:25', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Dial Color: White, Case Shape: Square, Dial Glass Material: Acrylic</span></li>\n 	<li><span class=\"a-list-item\">Band Color: Bluish Grey, Band Material: Leather</span></li>\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 45 x 39.3 millimeters</span></li>\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Buckle Clasp</span></li>\n 	<li><span class=\"a-list-item\">1 Year Manufacturing Warranty and 6 Months Battery Warranty</span></li>\n</ul>', 'Fastrack Analog White Dial Watch', '', 'inherit', 'closed', 'closed', '', '128-autosave-v1', '', '', '2020-10-31 17:10:25', '2020-10-31 17:10:25', '', 128, 'http://127.0.0.1/Amazon/2020/10/31/128-autosave-v1/', 0, 'revision', '', 0),
(131, 1, '2020-10-31 17:14:29', '2020-10-31 17:14:29', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47 x 40 millimeters. Case Thickness -13.00 mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters, Deployment Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">1 Year Manufacturing Warranty and 6 Months Battery Warranty</span></li>\r\n</ul>', 'Fastrack Black Magic Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-black-magic-analog-black-dial-watch', '', '', '2020-10-31 17:14:34', '2020-10-31 17:14:34', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=131', 0, 'product', '', 0),
(132, 1, '2020-10-31 17:13:40', '2020-10-31 17:13:40', '', 'Fastrack-black-magic-analog-black-dial watch', '', 'inherit', 'open', 'closed', '', 'fastrack-black-magic-analog-black-dial-watch', '', '', '2020-10-31 17:13:40', '2020-10-31 17:13:40', '', 131, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-black-magic-analog-black-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2020-10-31 17:20:06', '2020-10-31 17:20:06', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Grey, Case Shape: Round, Dial Glass Material: Acrylic</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Plastic</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Plastic, Case Diameter: 50 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 100 meters</span></li>\r\n</ul>', 'Fastrack Digital Watch', '', 'publish', 'open', 'closed', '', 'fastrack-digital-watch', '', '', '2020-10-31 17:20:10', '2020-10-31 17:20:10', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=133', 0, 'product', '', 0),
(134, 1, '2020-10-31 17:18:19', '2020-10-31 17:18:19', '', 'Fastrack-DIGITAL', '', 'inherit', 'open', 'closed', '', 'fastrack-digital', '', '', '2020-10-31 17:18:19', '2020-10-31 17:18:19', '', 133, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fastrack-DIGITAL.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-10-31 17:24:43', '2020-10-31 17:24:43', '<table class=\"a-normal a-spacing-micro\">\r\n<tbody>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Brand</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">Fitbit</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Material</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">Metal</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Dimensions LxWxH</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">21.8 x 2.3 x 1.3 Centimeters</span></td>\r\n</tr>\r\n<tr class=\"a-spacing-small\">\r\n<td class=\"a-span3\"><span class=\"a-size-base a-text-bold\">Item Weight</span></td>\r\n<td class=\"a-span9\"><span class=\"a-size-base\">149 Grams</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Fitbit Charge 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-charge-2', '', '', '2020-10-31 17:36:48', '2020-10-31 17:36:48', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=135', 0, 'product', '', 0),
(136, 1, '2020-10-31 17:23:41', '2020-10-31 17:23:41', '', 'Fitbit Charge 2', '', 'inherit', 'open', 'closed', '', 'fitbit-charge-2', '', '', '2020-10-31 17:23:41', '2020-10-31 17:23:41', '', 135, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fitbit-Charge-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2020-10-31 17:26:55', '2020-10-31 17:26:55', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Use 24/7 heart rate to track resting heart rate &amp; better measure calorie burn</span></li>\r\n 	<li><span class=\"a-list-item\">Active Zone Minutes alert you when you\'re in your personalised Fat Burn, Cardio or Peak heart rate zones</span></li>\r\n 	<li><span class=\"a-list-item\">After outdoor workouts, see a workout intensity map in the app that shows your heart rate changes along your route</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS to see your pace and distance on screen during outdoor runs, cycles, hikes and more</span></li>\r\n 	<li><span class=\"a-list-item\">Track sleep stages &amp; review your in-app Sleep Score for an easy way to see how well you slept</span></li>\r\n 	<li><span class=\"a-list-item\">Get call, text and smartphone app notifications on your wrist. Plus, send quick replies to texts (Android only). Available when your phone is nearby</span></li>\r\n 	<li><span class=\"a-list-item\">Multi-day battery lasts up to 7 days and up to 5 hours when using built-in GPS. Varies with use &amp; other factors</span></li>\r\n</ul>', 'Fitbit Charge 4 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-charge-4', '', '', '2020-10-31 17:34:21', '2020-10-31 17:34:21', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=137', 0, 'product', '', 0),
(138, 1, '2020-10-31 17:26:46', '2020-10-31 17:26:46', '', 'Fitbit Charge 4', '', 'inherit', 'open', 'closed', '', 'fitbit-charge-4', '', '', '2020-10-31 17:26:46', '2020-10-31 17:26:46', '', 137, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fitbit-Charge-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2020-10-31 17:30:04', '2020-10-31 17:30:04', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Start dynamic personalized workouts on your wrist with step-by-step coaching. The GPS battery life lasts upto 10 hours</span></li>\r\n 	<li><span class=\"a-list-item\">Store and play 300 plus songs, plus download playlists from Pandora</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS/Glonass to track pace, distance and routes and get Pure Pulse continuous heart rate tracking and real-time zones</span></li>\r\n 	<li><span class=\"a-list-item\">Package includes both large and small size bands for the perfect, comfortable fit for all-day and all-night wear</span></li>\r\n 	<li><span class=\"a-list-item\">Access your favorite apps for sports, weather and more and make payments on the go with a built-in NFC chip</span></li>\r\n 	<li><span class=\"a-list-item\">Track runs, swims, rides, workouts, all day activity and sleep with 4 plus day battery life (varies with use and other factors)</span></li>\r\n 	<li><span class=\"a-list-item\">Increased pixels and amplified brightness up to 1000 nits, operating temperature: 4 degree to 113 degree Fahrenheit, maximum operating altitude: 30,000 feet</span></li>\r\n</ul>', 'Fitbit Ionic SmartWatch', '', 'publish', 'open', 'closed', '', 'fitbit-ionic-smartwatch', '', '', '2020-10-31 17:30:09', '2020-10-31 17:30:09', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=140', 0, 'product', '', 0),
(141, 1, '2020-10-31 17:29:46', '2020-10-31 17:29:46', '', 'Fitbit Iconic Watch', '', 'inherit', 'open', 'closed', '', 'fitbit-iconic-watch', '', '', '2020-10-31 17:29:46', '2020-10-31 17:29:46', '', 140, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fitbit-Iconic-Watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2020-10-31 17:33:21', '2020-10-31 17:33:21', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Free 1-year Fitbit Premium trial for new Premium users (Free trial may only be activated with device activation &amp; within 60 days of device activation. Valid payment method required. New users only. Cancel before free trial ends to avoid subscription fees)</span></li>\r\n 	<li><span class=\"a-list-item\">Earn Active Zone Minutes as you progress toward your weekly 150 minutes of heart-pumping activity and use 20+ exercise modes to track goals like distance, calories burned and more</span></li>\r\n 	<li><span class=\"a-list-item\">Track all-day activity: your steps, distance, hourly activity and calories burned</span></li>\r\n 	<li><span class=\"a-list-item\">Use 24/7 heart rate to track resting heart rate &amp; better measure calorie burn</span></li>\r\n 	<li><span class=\"a-list-item\">Enjoy 10 days of battery life for daily progress without constant charging. Varies with use and other factors</span></li>\r\n 	<li><span class=\"a-list-item\">Track your time in light, deep and REM sleep, then get a Sleep Score to better understand your sleep quality each night</span></li>\r\n 	<li><span class=\"a-list-item\">Stay inspired from the shower to the pool with this swimproof tracker (water resistant to 50 meters) and motivated by connecting with friends, competing in challenges, earning badges and celebrating goal milestones</span></li>\r\n 	<li><span class=\"a-list-item\">Get call, text, calendar and smartphone app notifications right on your wrist. Notifications and app alerts are available on-device when your phone is nearby</span></li>\r\n</ul>', 'Fitbit Inspire 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-inspire-2', '', '', '2020-10-31 17:37:24', '2020-10-31 17:37:24', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=142', 0, 'product', '', 0),
(143, 1, '2020-10-31 17:32:42', '2020-10-31 17:32:42', '', 'Fitbit Inspire 2', '', 'inherit', 'open', 'closed', '', 'fitbit-inspire-2', '', '', '2020-10-31 17:32:42', '2020-10-31 17:32:42', '', 142, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fitbit-Inspire-2.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2020-10-31 17:36:35', '2020-10-31 17:36:35', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">EDA Scan app detects electrodermal activity which may indicate your body\'s response to stress and a built-in skin temperature sensor logs yours each night so you can see when it varies</span></li>\r\n 	<li><span class=\"a-list-item\">The Fitbit ECG app has received FDA clearance and is available in the U.S. Availability in other countries pending applicable regulatory clearances. Not intended for use by people under 22 years old. See fitbit.com/ecg for additional details</span></li>\r\n 	<li><span class=\"a-list-item\">An on-wrist skin temperature sensor tracks yours each night so you can see how it varies</span></li>\r\n 	<li><span class=\"a-list-item\">Free 6-month Fitbit Premium trial for new Premium users (Free trial may only be activated with device activation &amp; within 60 days of device activation. Valid payment method required. New users only. Cancel before free trial ends to avoid subscription fees)</span></li>\r\n 	<li><span class=\"a-list-item\">High &amp; low heart rate notifications alert you if yours seems above or below your average</span></li>\r\n 	<li><span class=\"a-list-item\">Battery lasts 6+ days—plus, fast charging gives you a full day’s charge in just 12 minutes (Varies with use and other factors; up to 12 hours with continuous GPS)</span></li>\r\n 	<li><span class=\"a-list-item\">Use built-in GPS during runs, hikes, rides and more to see pace &amp; distance without your phone</span></li>\r\n 	<li><span class=\"a-list-item\">Use your voice with Amazon Alexa Built-in to check the weather, set reminders, control smart home appliances and more from your watch (Voice assistant availability and features may vary)</span></li>\r\n</ul>', 'Fitbit Sense Watch', '', 'publish', 'open', 'closed', '', 'fitbit-sense-watch', '', '', '2020-10-31 17:36:41', '2020-10-31 17:36:41', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=144', 0, 'product', '', 0),
(146, 1, '2020-10-31 17:35:05', '2020-10-31 17:35:05', '', 'Fitbit Sense', '', 'inherit', 'open', 'closed', '', 'fitbit-sense', '', '', '2020-10-31 17:35:05', '2020-10-31 17:35:05', '', 144, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fitbit-Sense.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(147, 1, '2020-10-31 17:36:51', '2020-10-31 17:36:51', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">EDA Scan app detects electrodermal activity which may indicate your body\'s response to stress and a built-in skin temperature sensor logs yours each night so you can see when it varies</span></li>\n 	<li><span class=\"a-list-item\">The Fitbit ECG app has received FDA clearance and is available in the U.S. Availability in other countries pending applicable regulatory clearances. Not intended for use by people under 22 years old. See fitbit.com/ecg for additional details</span></li>\n 	<li><span class=\"a-list-item\">An on-wrist skin temperature sensor tracks yours each night so you can see how it varies</span></li>\n 	<li><span class=\"a-list-item\">Free 6-month Fitbit Premium trial for new Premium users (Free trial may only be activated with device activation &amp; within 60 days of device activation. Valid payment method required. New users only. Cancel before free trial ends to avoid subscription fees)</span></li>\n 	<li><span class=\"a-list-item\">High &amp; low heart rate notifications alert you if yours seems above or below your average</span></li>\n 	<li><span class=\"a-list-item\">Battery lasts 6+ days—plus, fast charging gives you a full day’s charge in just 12 minutes (Varies with use and other factors; up to 12 hours with continuous GPS)</span></li>\n 	<li><span class=\"a-list-item\">Use built-in GPS during runs, hikes, rides and more to see pace &amp; distance without your phone</span></li>\n 	<li><span class=\"a-list-item\">Use your voice with Amazon Alexa Built-in to check the weather, set reminders, control smart home appliances and more from your watch (Voice assistant availability and features may vary)</span></li>\n</ul>', 'Fitbit Sense Watch', '', 'inherit', 'closed', 'closed', '', '144-autosave-v1', '', '', '2020-10-31 17:36:51', '2020-10-31 17:36:51', '', 144, 'http://127.0.0.1/Amazon/2020/10/31/144-autosave-v1/', 0, 'revision', '', 0),
(148, 1, '2020-10-31 17:38:28', '2020-10-31 17:38:28', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">ALL-DAY ACTIVITY TRACKING: Fitbit Versa 2 tracks all-day activity like steps, distance, active minutes and calories burned to show how every part of your day gets you closer to your goals.</span></li>\r\n 	<li><span class=\"a-list-item\">WATER RESISTANCE: Fitbit Versa 2 is water-resistant to 50 meters, which means you’re free to wear it in the pool, in the shower, at the beach and beyond.</span></li>\r\n 	<li><span class=\"a-list-item\">5+ DAY BATTERY LIFE: A day lasts 24 hours. Versa 2 gives you much more than that. With 5+ day battery life, Fitbit Versa 2 tracks your morning, night &amp; everything in between without needing to stop for a charge. Varies with use &amp; other factors.</span></li>\r\n 	<li><span class=\"a-list-item\">FITBIT PAY: Pay without your wallet by uploading your credit card and making secure purchases from your wrist.</span></li>\r\n</ul>', 'Fitbit Versa 2 Watch', '', 'publish', 'open', 'closed', '', 'fitbit-versa-2-watch', '', '', '2020-10-31 17:38:33', '2020-10-31 17:38:33', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2020-10-31 17:38:08', '2020-10-31 17:38:08', '', 'Fitbit Versa 2', '', 'inherit', 'open', 'closed', '', 'fitbit-versa-2', '', '', '2020-10-31 17:38:08', '2020-10-31 17:38:08', '', 148, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Fitbit-Versa-2.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2020-10-31 17:38:43', '2020-10-31 17:38:43', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">ALL-DAY ACTIVITY TRACKING: Fitbit Versa 2 tracks all-day activity like steps, distance, active minutes and calories burned to show how every part of your day gets you closer to your goals.</span></li>\n 	<li><span class=\"a-list-item\">WATER RESISTANCE: Fitbit Versa 2 is water-resistant to 50 meters, which means you’re free to wear it in the pool, in the shower, at the beach and beyond.</span></li>\n 	<li><span class=\"a-list-item\">5+ DAY BATTERY LIFE: A day lasts 24 hours. Versa 2 gives you much more than that. With 5+ day battery life, Fitbit Versa 2 tracks your morning, night &amp; everything in between without needing to stop for a charge. Varies with use &amp; other factors.</span></li>\n 	<li><span class=\"a-list-item\">FITBIT PAY: Pay without your wallet by uploading your credit card and making secure purchases from your wrist.</span></li>\n</ul>', 'Fitbit Versa 2 Watch', '', 'inherit', 'closed', 'closed', '', '148-autosave-v1', '', '', '2020-10-31 17:38:43', '2020-10-31 17:38:43', '', 148, 'http://127.0.0.1/Amazon/2020/10/31/148-autosave-v1/', 0, 'revision', '', 0),
(151, 1, '2020-10-31 17:41:43', '2020-10-31 17:41:43', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Resin, Occasion: Sports</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog-Digital</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 51 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 200 meters, Buckle Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 2 Years Domestic Warranty</span></li>\r\n 	<li><span class=\"a-list-item\">Remove plastic at crown to start the watch</span></li>\r\n 	<li><span class=\"a-list-item\">5 daily alarms (with 1 snooze alarm) ; Countdown timer ; Countdown range: 24 hours ; Accuracy: ±15 seconds per month ; LED: Amber</span></li>\r\n</ul>', 'G-Shock Analog-Digital Black Dial Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-digital-black-dial-watch', '', '', '2020-10-31 17:41:49', '2020-10-31 17:41:49', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 1, '2020-10-31 17:41:16', '2020-10-31 17:41:16', '', 'Gshock black watch', '', 'inherit', 'open', 'closed', '', 'gshock-black-watch', '', '', '2020-10-31 17:41:16', '2020-10-31 17:41:16', '', 151, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Gshock-black-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2020-10-31 17:43:43', '2020-10-31 17:43:43', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial color: black, case shape: round, dial glass material: mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band color: silver, band material: stainless steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch movement type: quartz, watch display type: analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case material: resin ; case diameter: 53.8 Millimeters and total Size of case : 58.1×53.8×14.1mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water resistance depth: 200 meters, fold-over clasp with safety</span></li>\r\n 	<li><span class=\"a-list-item\">Dual time</span></li>\r\n 	<li><span class=\"a-list-item\">Solar powered</span></li>\r\n</ul>', 'G-Shock Analog Steel Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-black-dial-watch', '', '', '2020-10-31 17:45:30', '2020-10-31 17:45:30', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=153', 0, 'product', '', 0),
(154, 1, '2020-10-31 17:43:04', '2020-10-31 17:43:04', '', 'G-Shock steel watch', '', 'inherit', 'open', 'closed', '', 'g-shock-steel-watch', '', '', '2020-10-31 17:43:04', '2020-10-31 17:43:04', '', 153, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/G-Shock-steel-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2020-10-31 17:46:21', '2020-10-31 17:46:21', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial color: black, case shape: round, dial glass material: mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band color: multi-colour, band material: resin, Measuring unit: 1/10 second, Full auto-calendar (to year 2099)</span></li>\r\n 	<li><span class=\"a-list-item\">Watch movement type: quartz, watch display type: analog-digital ; Accuracy: ±15 seconds per month and Approx. battery life: 5 years on CR2016</span></li>\r\n 	<li><span class=\"a-list-item\">Case material: resin, case diameter: 53.4 millimeters led light (super illuminator)- selectable illumination duration (1.5 seconds or 3 seconds), afterglow</span></li>\r\n 	<li><span class=\"a-list-item\">Water resistance depth: 200 meters, buckle clasp, Button operation tone on/off</span></li>\r\n 	<li><span class=\"a-list-item\">Stopwatch; dual time; countdown timer; light, Hourly time signal, Hand shift feature</span></li>\r\n 	<li><span class=\"a-list-item\">2 years manufacturer warranty on manufacturing defects</span></li>\r\n</ul>', 'G-Shock Analog-Digital Mud master Watch', '', 'publish', 'open', 'closed', '', 'g-shock-analog-digital-mud-master-watch', '', '', '2020-10-31 17:46:26', '2020-10-31 17:46:26', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 1, '2020-10-31 17:46:10', '2020-10-31 17:46:10', '', 'G-Shock casio mud master watch', '', 'inherit', 'open', 'closed', '', 'g-shock-casio-mud-master-watch', '', '', '2020-10-31 17:46:10', '2020-10-31 17:46:10', '', 155, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/G-Shock-casio-mud-master-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2020-10-31 17:49:35', '2020-10-31 17:49:35', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">1.1” Full touch AMOLED color display</span></li>\r\n 	<li><span class=\"a-list-item\">Battery runs up to 14 days on a single charge</span></li>\r\n 	<li><span class=\"a-list-item\">Magnetic charging – Hassle free charging</span></li>\r\n 	<li><span class=\"a-list-item\">PAI (Personal Activity Intelligence) – Single matrix to track your all fitness related activities</span></li>\r\n 	<li><span class=\"a-list-item\">Tracks 11 professional sports mode (including Yoga and Rope skipping)</span></li>\r\n 	<li><span class=\"a-list-item\">5ATM Water Resistant</span></li>\r\n 	<li><span class=\"a-list-item\">Run on the go with Automatic activity detection (Running and Walking)</span></li>\r\n</ul>', 'Mi Smart Band 4 Watch', '', 'publish', 'open', 'closed', '', 'mi-smart-band-4-watch', '', '', '2020-10-31 17:49:41', '2020-10-31 17:49:41', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=157', 0, 'product', '', 0),
(158, 1, '2020-10-31 17:49:24', '2020-10-31 17:49:24', '', 'Mi smart band 4', '', 'inherit', 'open', 'closed', '', 'mi-smart-band-4', '', '', '2020-10-31 17:49:24', '2020-10-31 17:49:24', '', 157, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Mi-smart-band-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2020-10-31 17:55:40', '2020-10-31 17:55:40', '<ul>\r\n 	<li>\r\n<h4 class=\"product-single__title\">ROLEX Chronograph Automatic Two-Tone Watch</h4>\r\n</li>\r\n</ul>', 'Rolex Steel Oyster Watch', '', 'publish', 'open', 'closed', '', 'rolex-oyster-watch', '', '', '2020-10-31 18:18:37', '2020-10-31 18:18:37', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=159', 0, 'product', '', 0),
(160, 1, '2020-10-31 17:55:13', '2020-10-31 17:55:13', '', 'Rolex Oyster', '', 'inherit', 'open', 'closed', '', 'rolex-oyster', '', '', '2020-10-31 17:55:13', '2020-10-31 17:55:13', '', 159, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Rolex-Oyster.jpg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2020-10-31 17:58:29', '2020-10-31 17:58:29', '<ul>\r\n 	<li>\r\n<h4 class=\"product_title entry-title\">Rolex Daytona Cosmograph Rose Gold watch</h4>\r\n</li>\r\n</ul>', 'Rolex Steel Rose Gold Watch', '', 'publish', 'open', 'closed', '', 'rolex-rose-gold-watch', '', '', '2020-10-31 18:18:51', '2020-10-31 18:18:51', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=162', 0, 'product', '', 0),
(163, 1, '2020-10-31 17:58:02', '2020-10-31 17:58:02', '', 'Rolex rose gold', '', 'inherit', 'open', 'closed', '', 'rolex-rose-gold', '', '', '2020-10-31 17:58:02', '2020-10-31 17:58:02', '', 162, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Rolex-rose-gold.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2020-10-31 18:03:44', '2020-10-31 18:03:44', '<ul>\r\n 	<li class=\"product-single__title\">ROLEX SUBMARINER FULL BLACK 45 (Refurbished)</li>\r\n 	<li>Stainless Steel Material</li>\r\n 	<li>Daytona Collection</li>\r\n 	<li>Dial size 45mm</li>\r\n 	<li>Sapphire Crystal Glass Material</li>\r\n</ul>', 'Rolex Steel Submariner Black Watch', '', 'publish', 'open', 'closed', '', 'rolex-submariner-black-watch', '', '', '2020-11-01 10:06:05', '2020-11-01 10:06:05', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=164', 0, 'product', '', 0),
(165, 1, '2020-10-31 18:03:20', '2020-10-31 18:03:20', '', 'Rolex Submariner Black', '', 'inherit', 'open', 'closed', '', 'rolex-submariner-black', '', '', '2020-10-31 18:03:20', '2020-10-31 18:03:20', '', 164, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Rolex-Submariner-Black.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2020-10-31 18:07:37', '2020-10-31 18:07:37', '<ul>\r\n 	<li>\r\n<h4 class=\"product-title text-white\"><span class=\"ng-binding\">BusyBees Blue Dial Analog Watch</span></h4>\r\n</li>\r\n</ul>', 'Sonata Steel Blue Dial Analog Watch', '', 'publish', 'open', 'closed', '', 'sonata-steel-blue-dial-analog-watch', '', '', '2020-10-31 18:07:43', '2020-10-31 18:07:43', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=166', 0, 'product', '', 0),
(167, 1, '2020-10-31 18:07:25', '2020-10-31 18:07:25', '', 'Sonata steel analog blue dial watch', '', 'inherit', 'open', 'closed', '', 'sonata-steel-analog-blue-dial-watch', '', '', '2020-10-31 18:07:25', '2020-10-31 18:07:25', '', 166, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Sonata-steel-analog-blue-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(168, 1, '2020-10-31 18:12:08', '2020-10-31 18:12:08', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Metal</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters</span></li>\r\n 	<li><span class=\"a-list-item\">24 Months manufacturer warranty on manufacturing defects</span></li>\r\n 	<li><span class=\"a-list-item\">Recommended for customers looking for a large dial sized watches</span></li>\r\n</ul>', 'Sonata Steel Analog Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'sonata-wedding-analog-blue-dial-watch', '', '', '2020-10-31 18:17:30', '2020-10-31 18:17:30', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=168', 0, 'product', '', 0),
(169, 1, '2020-10-31 18:11:54', '2020-10-31 18:11:54', '', 'Sonata wedding analog blue watch', '', 'inherit', 'open', 'closed', '', 'sonata-wedding-analog-blue-watch', '', '', '2020-10-31 18:11:54', '2020-10-31 18:11:54', '', 168, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Sonata-wedding-analog-blue-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(170, 1, '2020-10-31 18:14:30', '2020-10-31 18:14:30', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black; Case Shape: Asymmetrical; Dial Glass Material: Brass</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Multi-Color; Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz; Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass; Case Diameter: 45 x 36 millimeters; Case thickness:6.87mm</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters; Deployment Clasp Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty Details: This watch offers 24 months warranty on the Movement and 12 months warranty on the Battery from the date of purchase</span></li>\r\n</ul>', 'Fastrack Steel Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'fastrack-party-analog-black-dial-watch', '', '', '2020-10-31 18:17:44', '2020-10-31 18:17:44', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=170', 0, 'product', '', 0),
(171, 1, '2020-10-31 18:14:16', '2020-10-31 18:14:16', '', 'Square-dial-fastrack-watch', '', 'inherit', 'open', 'closed', '', 'square-dial-fastrack-watch', '', '', '2020-10-31 18:14:16', '2020-10-31 18:14:16', '', 170, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Square-dial-fastrack-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2020-10-31 18:21:05', '2020-10-31 18:21:05', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold, Band Material: Gold. Case Thickness 8.25 mm, Case Width(3H-9H) 38 mm</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">2 years warranty</span></li>\r\n</ul>', 'Titan Analog Steel Gold Watch', '', 'publish', 'open', 'closed', '', 'titan-analog-steel-gold-watch', '', '', '2020-10-31 18:21:09', '2020-10-31 18:21:09', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=172', 0, 'product', '', 0),
(173, 1, '2020-10-31 18:17:14', '2020-10-31 18:17:14', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Dial Color: Blue, Case Shape: Round, Dial Glass Material: Mineral</span></li>\n 	<li><span class=\"a-list-item\">Band Color: Silver, Band Material: Metal</span></li>\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\n 	<li><span class=\"a-list-item\">Case Material: Brass, Case Diameter: 47 millimeters</span></li>\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters</span></li>\n 	<li><span class=\"a-list-item\">24 Months manufacturer warranty on manufacturing defects</span></li>\n 	<li><span class=\"a-list-item\">Recommended for customers looking for a large dial sized watches</span></li>\n</ul>', 'Sonata Wedding Analog Blue Dial Watch', '', 'inherit', 'closed', 'closed', '', '168-autosave-v1', '', '', '2020-10-31 18:17:14', '2020-10-31 18:17:14', '', 168, 'http://127.0.0.1/Amazon/2020/10/31/168-autosave-v1/', 0, 'revision', '', 0),
(174, 1, '2020-10-31 18:18:09', '2020-10-31 18:18:09', '<ul>\n 	<li>\n<h4 class=\"product-single__title\">ROLEX Chronograph Automatic Two-Tone Watch</h4>\n</li>\n</ul>', 'Rolex Oyster Watch', '', 'inherit', 'closed', 'closed', '', '159-autosave-v1', '', '', '2020-10-31 18:18:09', '2020-10-31 18:18:09', '', 159, 'http://127.0.0.1/Amazon/2020/10/31/159-autosave-v1/', 0, 'revision', '', 0),
(175, 1, '2020-10-31 18:20:34', '2020-10-31 18:20:34', '', 'Titan Analog watch gold', '', 'inherit', 'open', 'closed', '', 'titan-analog-watch-gold', '', '', '2020-10-31 18:20:34', '2020-10-31 18:20:34', '', 172, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Titan-Analog-watch-gold.jpeg', 0, 'attachment', 'image/jpeg', 0),
(176, 1, '2020-10-31 18:25:39', '2020-10-31 18:25:39', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round, Dial Glass </span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Black, Band Material: Metal</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 51 millimeters. Case Width(3H-9H) 46 mm, Case Thickness 10.50 mm</span></li>\r\n 	<li><span class=\"a-list-item\">2 years warranty</span></li>\r\n</ul>', 'Titan Steel Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-steel-analog-black-dial-watch', '', '', '2020-10-31 18:25:45', '2020-10-31 18:25:45', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=176', 0, 'product', '', 0),
(177, 1, '2020-10-31 18:24:19', '2020-10-31 18:24:19', '', 'Titan analog watch', '', 'inherit', 'open', 'closed', '', 'titan-analog-watch', '', '', '2020-10-31 18:24:19', '2020-10-31 18:24:19', '', 176, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Titan-analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2020-10-31 18:28:29', '2020-10-31 18:28:29', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Blue, Case Shape: Round, Dial Glass Material: Sapphire</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Blue, Band Material: Ceramic, Lock Mechanism: Butterfly Clasp</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Ceramic, Case Diameter: 40.5 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 meters</span></li>\r\n</ul>', 'Titan Analog Blue Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-analog-blue-dial-watch', '', '', '2020-10-31 18:28:35', '2020-10-31 18:28:35', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=178', 0, 'product', '', 0),
(179, 1, '2020-10-31 18:27:49', '2020-10-31 18:27:49', '', 'Titan Edge Ceramic', '', 'inherit', 'open', 'closed', '', 'titan-edge-ceramic', '', '', '2020-10-31 18:27:49', '2020-10-31 18:27:49', '', 178, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Titan-Edge-Ceramic.jpg', 0, 'attachment', 'image/jpeg', 0),
(180, 1, '2020-10-31 18:32:12', '2020-10-31 18:32:12', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Gold-Color, Case Shape: Rectangular</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold, Band Material: Stainless Steel</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Brass</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 30 Meters</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 24 Months Manufacturer Warranty</span></li>\r\n</ul>', 'Titan Gold Analog White Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-gold-analog-white-dial-watch', '', '', '2020-10-31 18:32:20', '2020-10-31 18:32:20', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=180', 0, 'product', '', 0),
(181, 1, '2020-10-31 18:31:02', '2020-10-31 18:31:02', '', 'Titan gold', '', 'inherit', 'open', 'closed', '', 'titan-gold', '', '', '2020-10-31 18:31:02', '2020-10-31 18:31:02', '', 180, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Titan-gold.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2020-10-31 18:33:54', '2020-10-31 18:33:54', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Green, Case Shape: Round, Dial Glass Material: Mineral</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Brown, Band Material: Leather</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 49 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters</span></li>\r\n</ul>', 'Titan Maritime Analog Green Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-maritime-analog-green-dial-watch', '', '', '2020-10-31 18:33:58', '2020-10-31 18:33:58', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=182', 0, 'product', '', 0),
(183, 1, '2020-10-31 18:33:40', '2020-10-31 18:33:40', '', 'Titan Maritime Analog Green dial watch', '', 'inherit', 'open', 'closed', '', 'titan-maritime-analog-green-dial-watch', '', '', '2020-10-31 18:33:40', '2020-10-31 18:33:40', '', 182, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Titan-Maritime-Analog-Green-dial-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2020-10-31 18:40:38', '2020-10-31 18:40:38', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round</span></li>\r\n 	<li><span class=\"a-list-item\">Band Color: Gold</span></li>\r\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\r\n 	<li><span class=\"a-list-item\">Case Diameter: 33.03 millimeters</span></li>\r\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 24 months manufacturer Warranty</span></li>\r\n</ul>', 'Titan Gold Analog Black Dial Watch', '', 'publish', 'open', 'closed', '', 'titan-gold-analog-black-dial-watch', '', '', '2020-10-31 18:40:44', '2020-10-31 18:40:44', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=184', 0, 'product', '', 0),
(185, 1, '2020-10-31 18:37:09', '2020-10-31 18:37:09', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Dial Color: Green, Case Shape: Round, Dial Glass Material: Mineral</span></li>\n 	<li><span class=\"a-list-item\">Band Color: Brown, Band Material: Leather</span></li>\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\n 	<li><span class=\"a-list-item\">Case Material: Stainless Steel, Case Diameter: 49 millimeters</span></li>\n 	<li><span class=\"a-list-item\">Water Resistance Depth: 50 meters</span></li>\n</ul>', 'Titan Maritime Analog Green Dial Watch', '<p><br data-mce-bogus=\"1\"></p>', 'inherit', 'closed', 'closed', '', '182-autosave-v1', '', '', '2020-10-31 18:37:09', '2020-10-31 18:37:09', '', 182, 'http://127.0.0.1/Amazon/2020/10/31/182-autosave-v1/', 0, 'revision', '', 0),
(186, 1, '2020-10-31 18:40:25', '2020-10-31 18:40:25', '', 'Titan Royal Analog watch', '', 'inherit', 'open', 'closed', '', 'titan-royal-analog-watch', '', '', '2020-10-31 18:40:25', '2020-10-31 18:40:25', '', 184, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Titan-Royal-Analog-watch.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2020-10-31 18:40:53', '2020-10-31 18:40:53', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\n 	<li><span class=\"a-list-item\">Dial Color: Black, Case Shape: Round</span></li>\n 	<li><span class=\"a-list-item\">Band Color: Gold</span></li>\n 	<li><span class=\"a-list-item\">Watch Movement Type: Quartz, Watch Display Type: Analog</span></li>\n 	<li><span class=\"a-list-item\">Case Diameter: 33.03 millimeters</span></li>\n 	<li><span class=\"a-list-item\">Warranty type:Manufacturer; 24 months manufacturer Warranty</span></li>\n</ul>', 'Titan Gold Analog Black Dial Watch', '', 'inherit', 'closed', 'closed', '', '184-autosave-v1', '', '', '2020-10-31 18:40:53', '2020-10-31 18:40:53', '', 184, 'http://127.0.0.1/Amazon/2020/10/31/184-autosave-v1/', 0, 'revision', '', 0),
(188, 1, '2020-10-31 18:45:54', '2020-10-31 18:45:54', '<ul>\r\n 	<li>\r\n<h4><strong>Xiaomi Mi Watch </strong>It sports a 1.78-inch AMOLED display (326 ppi)  density and a 570mAh battery, 36 hours of use.</h4>\r\n</li>\r\n 	<li>\r\n<h4>It’s powered by a Qualcomm Snapdragon Wear 3100 processor and 1GB of RAM, and it comes with 8GB of internal storage.</h4>\r\n</li>\r\n 	<li>\r\n<h4>There’s also Wi-Fi, Bluetooth, and NFC functionality, a heart rate monitoring feature, and eSIM support for 4G connectivity.</h4>\r\n</li>\r\n 	<li>\r\n<h4><strong>eSIM 4G LTE</strong> It comes with a built-in microphone for making calls or recording voice notes, and there\'s a speaker for listening to incoming calls or music.</h4>\r\n</li>\r\n 	<li>\r\n<h4>There\'s a eSIM slot to support calls and 4G connectivity</h4>\r\n</li>\r\n</ul>', 'Xiaomi Mi 4G LTE Watch', '', 'publish', 'open', 'closed', '', 'xiaomi-mi-4g-lte-watch', '', '', '2020-10-31 18:45:58', '2020-10-31 18:45:58', '', 0, 'http://127.0.0.1/Amazon/?post_type=product&#038;p=188', 0, 'product', '', 0),
(189, 1, '2020-10-31 18:45:38', '2020-10-31 18:45:38', '', 'Xiaomi watch 4G LTE', '', 'inherit', 'open', 'closed', '', 'xiaomi-watch-4g-lte', '', '', '2020-10-31 18:45:38', '2020-10-31 18:45:38', '', 188, 'http://127.0.0.1/Amazon/wp-content/uploads/2020/10/Xiaomi-watch-4G-LTE.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2020-12-04 07:30:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-12-04 07:30:26', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/Amazon/?p=193', 0, 'post', '', 0);

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
(4, 15, 'product_count_product_cat', '0'),
(5, 17, 'product_count_product_cat', '35');

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
(11, 2, 0),
(11, 16, 0),
(25, 2, 0),
(25, 16, 0),
(28, 2, 0),
(28, 16, 0),
(30, 2, 0),
(30, 16, 0),
(32, 2, 0),
(32, 16, 0),
(38, 2, 0),
(38, 16, 0),
(40, 2, 0),
(40, 16, 0),
(42, 2, 0),
(42, 16, 0),
(43, 2, 0),
(43, 16, 0),
(46, 2, 0),
(46, 16, 0),
(48, 2, 0),
(48, 16, 0),
(50, 2, 0),
(50, 16, 0),
(52, 2, 0),
(52, 16, 0),
(55, 2, 0),
(55, 16, 0),
(57, 2, 0),
(57, 16, 0),
(59, 2, 0),
(59, 16, 0),
(61, 2, 0),
(61, 16, 0),
(64, 2, 0),
(64, 16, 0),
(67, 2, 0),
(67, 16, 0),
(69, 2, 0),
(69, 16, 0),
(72, 2, 0),
(72, 16, 0),
(74, 2, 0),
(74, 16, 0),
(76, 2, 0),
(76, 16, 0),
(78, 2, 0),
(78, 16, 0),
(80, 2, 0),
(80, 16, 0),
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
(93, 2, 0),
(93, 16, 0),
(95, 2, 0),
(95, 16, 0),
(97, 2, 0),
(97, 16, 0),
(101, 2, 0),
(101, 16, 0),
(103, 2, 0),
(103, 16, 0),
(105, 2, 0),
(105, 16, 0),
(107, 2, 0),
(107, 16, 0),
(109, 2, 0),
(109, 17, 0),
(111, 2, 0),
(111, 17, 0),
(113, 2, 0),
(113, 17, 0),
(116, 2, 0),
(116, 17, 0),
(118, 2, 0),
(118, 17, 0),
(120, 2, 0),
(120, 17, 0),
(122, 2, 0),
(122, 17, 0),
(124, 2, 0),
(124, 17, 0),
(126, 2, 0),
(126, 17, 0),
(128, 2, 0),
(128, 17, 0),
(131, 2, 0),
(131, 17, 0),
(133, 2, 0),
(133, 17, 0),
(135, 2, 0),
(135, 17, 0),
(137, 2, 0),
(137, 17, 0),
(140, 2, 0),
(140, 17, 0),
(142, 2, 0),
(142, 17, 0),
(144, 2, 0),
(144, 17, 0),
(148, 2, 0),
(148, 17, 0),
(151, 2, 0),
(151, 17, 0),
(153, 2, 0),
(153, 17, 0),
(155, 2, 0),
(155, 17, 0),
(157, 2, 0),
(157, 17, 0),
(159, 2, 0),
(159, 17, 0),
(162, 2, 0),
(162, 17, 0),
(164, 2, 0),
(164, 17, 0),
(166, 2, 0),
(166, 17, 0),
(168, 2, 0),
(168, 17, 0),
(170, 2, 0),
(170, 17, 0),
(172, 2, 0),
(172, 17, 0),
(176, 2, 0),
(176, 17, 0),
(178, 2, 0),
(178, 17, 0),
(180, 2, 0),
(180, 17, 0),
(182, 2, 0),
(182, 17, 0),
(184, 2, 0),
(184, 17, 0),
(188, 2, 0),
(188, 17, 0);

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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '193'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:lv4KCC5HONOBE2Y4y9dN05dp'),
(20, 1, 'last_update', '1604078116'),
(21, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1604078105384'),
(22, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:55:\"postexcerpt,woocommerce-product-data,postcustom,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_product', '2'),
(24, 1, 'wp_user-settings', 'libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1604159914'),
(26, 1, 'wc_last_active', '1607040000'),
(29, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"6512bd43d9caa6e02c990b0a82652dca\";a:6:{s:3:\"key\";s:32:\"6512bd43d9caa6e02c990b0a82652dca\";s:10:\"product_id\";i:11;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}'),
(33, 1, '_order_count', '0'),
(35, 1, 'closedpostboxes_product', 'a:0:{}'),
(36, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(38, 1, 'session_tokens', 'a:1:{s:64:\"d26d150b553e9f4dda60726c1374825458e33093af90348e255851b0b803f32b\";a:4:{s:10:\"expiration\";i:1607239811;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1607067011;}}');

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
(1, 'admin', '$P$BPsNwtQQzo/cQr3zSgaUjxnNIL3oeh1', 'admin', 'anujatendulkar5@gmail.com', 'http://127.0.0.1/Amazon', '2020-10-30 14:36:48', '', 0, 'admin');

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
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 14:42:36', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-10-30 14:42:37', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 14:42:39', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 14:42:39', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-10-30 14:42:40', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-10-30 14:42:40', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-10-30 14:42:40', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-draw-attention', 'info', 'en_US', 'How to draw attention to your online store', 'To get you started, here are seven ways to boost your sales and avoid getting drowned out by similar, mass-produced products competing for the same buyers.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 17:13:08', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-test-checkout', 'info', 'en_US', 'Don\'t forget to test your checkout', 'Make sure that your checkout is working properly before you launch your store. Go through your checkout process in its entirety: from adding a product to your cart, choosing a shipping location, and making a payment.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-30 17:15:07', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-admin-personalize-store', 'info', 'en_US', 'Personalize your store\'s homepage', 'The homepage is one of the most important entry points in your store. When done right it can lead to higher conversions and engagement. Don\'t forget to personalize the homepage that we created for your store during the onboarding.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-31 14:42:44', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-31 14:42:45', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:21:51', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://127.0.0.1/Amazon/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:21:51', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:21:51', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:21:51', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:21:51', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-customize-store-with-blocks', 'info', 'en_US', 'Customize your online store with WooCommerce blocks', 'With our blocks, you can select and display products, categories, filters, and more virtually anywhere on your site — no need to use shortcodes or edit lines of code. Learn more about how to use each one of them.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-04 04:21:51', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', '<a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Payments</a> now supports <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">WooCommerce Subscriptions</a>. <strong>Get 50% off transaction fees</strong> and make the most out of your holiday sales by adding WooCommerce Payments to your store. Limited-time offer. <br /><br /><em>By clicking \"Install now,\" you agree to our general <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and promotional <a href=\"https://woocommerce.com/terms-conditions/woocommerce-payments-promotion/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_exp20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-04 07:32:29', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wcpay-subscriptions-2020-11', 'marketing', 'en_US', 'Manage subscriber payments from your store\'s dashboard', 'Securely accept cards and manage transactions right from your dashboard with <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Payments</a>  – now supporting <a href=\"https://woocommerce.com/products/woocommerce-subscriptions/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">WooCommerce Subscriptions</a>! <br /><br /><em>By clicking \"Install now,\" you agree to our <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay_ctrl20\" target=\"_blank\">Terms of Service</a>.</em>', '{}', 'pending', 'woocommerce.com', '2020-12-04 07:32:29', NULL, 0, 'plain', '', 0, 'info');

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
(2, 2, 'continue-profiler', 'Continue Store Setup', 'http://127.0.0.1/Amazon/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'unactioned', 1, ''),
(3, 2, 'skip-profiler', 'Skip Setup', 'http://127.0.0.1/Amazon/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(4, 3, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(5, 4, 'open-marketing-hub', 'Open marketing hub', 'http://127.0.0.1/Amazon/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(15, 8, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/how-to-make-your-online-store-stand-out/?utm_source=inbox', 'actioned', 1, ''),
(19, 9, 'test-checkout', 'Test checkout', 'http://127.0.0.1/Amazon/shop/', 'actioned', 0, ''),
(125, 10, 'personalize-homepage', 'Personalize homepage', 'http://127.0.0.1/Amazon/wp-admin/post.php?post=13&action=edit', 'actioned', 1, ''),
(126, 11, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox', 'actioned', 0, ''),
(298, 12, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(299, 13, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1, ''),
(300, 14, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(301, 15, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(302, 15, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(303, 16, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, ''),
(304, 17, 'customize-store-with-blocks', 'Learn more', 'https://woocommerce.com/posts/how-to-customize-your-online-store-with-woocommerce-blocks/?utm_source=inbox', 'actioned', 1, ''),
(355, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(356, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, ''),
(357, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(358, 18, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, ''),
(359, 19, 'install-now', 'Install now', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '');

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
(11, '', 0, 0, '22599.0000', '22599.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(21, '', 0, 0, '99100.0000', '99100.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(25, '', 0, 0, '32789.0000', '32789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(28, '', 0, 0, '45789.0000', '45789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(30, '', 0, 0, '55789.0000', '55789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(32, '', 0, 0, '99255.0000', '99255.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(38, '', 0, 0, '119600.0000', '119600.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(40, '', 0, 0, '35789.0000', '35789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(42, '', 0, 0, '51259.0000', '51259.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(43, '', 0, 0, '38123.0000', '38123.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(46, '', 0, 0, '42799.0000', '42799.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(48, '', 0, 0, '47468.0000', '47468.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(50, '', 0, 0, '58978.0000', '58978.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(52, '', 0, 0, '28999.0000', '28999.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(55, '', 0, 0, '28750.0000', '28750.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(57, '', 0, 0, '13269.0000', '13269.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(59, '', 0, 0, '12000.0000', '12000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(61, '', 0, 0, '11459.0000', '11459.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(64, '', 0, 0, '13000.0000', '13000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(67, '', 0, 0, '14444.0000', '14444.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(69, '', 0, 0, '17920.0000', '17920.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(72, '', 0, 0, '20145.0000', '20145.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(74, '', 0, 0, '52999.0000', '52999.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(76, '', 0, 0, '11459.0000', '11459.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(78, '', 0, 0, '47899.0000', '47899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(80, '', 0, 0, '16899.0000', '16899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(82, '', 0, 0, '9999.0000', '9999.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(84, '', 0, 0, '15899.0000', '15899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(86, '', 0, 0, '17256.0000', '17256.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(88, '', 0, 0, '14899.0000', '14899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(90, '', 0, 0, '9897.0000', '9897.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(93, '', 0, 0, '10460.0000', '10460.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(95, '', 0, 0, '21789.0000', '21789.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(97, '', 0, 0, '28799.0000', '28799.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(99, '', 0, 0, '15299.0000', '15299.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(101, '', 0, 0, '15400.0000', '15400.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(103, '', 0, 0, '81599.0000', '81599.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(105, '', 0, 0, '70000.0000', '70000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(107, '', 0, 0, '76123.0000', '76123.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(109, '', 0, 0, '16400.0000', '16400.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(111, '', 0, 0, '66900.0000', '66900.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(113, '', 0, 0, '50980.0000', '50980.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(116, '', 0, 0, '41899.0000', '41899.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(118, '', 0, 0, '3155.0000', '3155.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(120, '', 0, 0, '3566.0000', '3566.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(122, '', 0, 0, '1356.0000', '1356.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(124, '', 0, 0, '1378.0000', '1378.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(126, '', 0, 0, '2469.0000', '2469.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(128, '', 0, 0, '1169.0000', '1169.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(131, '', 0, 0, '3000.0000', '3000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(133, '', 0, 0, '3255.0000', '3255.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(135, '', 0, 0, '29599.0000', '29599.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(137, '', 0, 0, '14222.0000', '14222.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(140, '', 0, 0, '26156.0000', '26156.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(142, '', 0, 0, '28456.0000', '28456.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(144, '', 0, 0, '49780.0000', '49780.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(148, '', 0, 0, '21200.0000', '21200.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(151, '', 0, 0, '7333.0000', '7333.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(153, '', 0, 0, '20333.0000', '20333.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(155, '', 0, 0, '8456.0000', '8456.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(157, '', 0, 0, '2569.0000', '2569.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(159, '', 0, 0, '8775.0000', '8775.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(162, '', 0, 0, '21123.0000', '21123.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(164, '', 0, 0, '97200.0000', '97200.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(166, '', 0, 0, '1198.0000', '1198.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(168, '', 0, 0, '2459.0000', '2459.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(170, '', 0, 0, '2994.0000', '2994.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(172, '', 0, 0, '2569.0000', '2569.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(176, '', 0, 0, '2594.0000', '2594.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(178, '', 0, 0, '24126.0000', '24126.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(180, '', 0, 0, '2000.0000', '2000.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(182, '', 0, 0, '16750.0000', '16750.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(184, '', 0, 0, '3299.0000', '3299.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(188, '', 0, 0, '18955.0000', '18955.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

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

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, '', '', '0.0000', 'Tax', 1, 0, 1, 0, '');

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
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1653;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1758;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
