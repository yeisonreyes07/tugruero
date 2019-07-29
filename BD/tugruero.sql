-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2019 a las 00:00:44
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tugruero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-07 01:22:33', '2019-03-07 00:22:33', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 131, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-02 12:53:00', '2019-04-02 10:53:00', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 141, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-09 18:13:01', '2019-04-09 16:13:01', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 142, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-09 19:58:54', '2019-04-09 17:58:54', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 143, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-10 18:50:50', '2019-04-10 16:50:50', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 148, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-19 00:00:24', '2019-04-18 22:00:24', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 160, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-23 11:38:25', '2019-04-23 09:38:25', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 160, 'root', 'fidel.alejos@gmail.com', '', '', '2019-04-23 11:46:14', '2019-04-23 09:46:14', 'El estado del pedido cambió de En espera a Procesando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 163, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-23 11:51:42', '2019-04-23 09:51:42', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 169, 'WooCommerce', 'woocommerce@tugruero.dev.com', '', '', '2019-04-24 18:50:22', '2019-04-24 16:50:22', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(25, 178, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-05-05 16:40:07', '2019-05-05 14:40:07', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(26, 222, 'WooCommerce', 'woocommerce@67.205.188.242', '', '', '2019-05-08 19:55:47', '2019-05-08 17:55:47', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(27, 228, 'WooCommerce', 'woocommerce@67.205.188.242', '', '', '2019-05-08 21:18:15', '2019-05-08 19:18:15', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(28, 229, 'WooCommerce', 'woocommerce@67.205.188.242', '', '', '2019-05-09 01:16:30', '2019-05-08 23:16:30', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(29, 230, 'WooCommerce', 'woocommerce@67.205.188.242', '', '', '2019-05-09 16:57:10', '2019-05-09 14:57:10', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(36, 239, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-05-15 15:26:26', '2019-05-15 13:26:26', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(49, 239, 'root', 'fidel.alejos@gmail.com', '', '', '2019-06-02 00:30:10', '2019-06-01 22:30:10', 'El estado del pedido cambió de En espera a Completado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(57, 253, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-06-11 16:59:12', '2019-06-11 14:59:12', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(63, 255, 'ActionScheduler', '', '', '', '2019-06-19 19:24:05', '2019-06-19 17:24:05', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(66, 255, 'ActionScheduler', '', '', '', '2019-06-26 19:28:07', '2019-06-26 17:28:07', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(67, 255, 'ActionScheduler', '', '', '', '2019-06-26 19:28:08', '2019-06-26 17:28:08', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(68, 257, 'ActionScheduler', '', '', '', '2019-06-26 19:28:09', '2019-06-26 17:28:09', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(69, 257, 'ActionScheduler', '', '', '', '2019-07-04 15:58:32', '2019-07-04 13:58:32', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(70, 257, 'ActionScheduler', '', '', '', '2019-07-04 15:58:36', '2019-07-04 13:58:36', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(71, 259, 'ActionScheduler', '', '', '', '2019-07-04 15:58:36', '2019-07-04 13:58:36', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(72, 262, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-08 21:52:02', '2019-07-08 19:52:02', 'El estado del pedido cambió de Pendiente de pago a Procesando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(73, 263, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-08 22:16:37', '2019-07-08 20:16:37', 'El estado del pedido cambió de Pendiente de pago a Procesando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(74, 264, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-08 22:29:05', '2019-07-08 20:29:05', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(75, 265, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-09 17:29:57', '2019-07-09 15:29:57', 'El estado del pedido cambió de Pendiente de pago a Procesando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(76, 267, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-09 17:33:11', '2019-07-09 15:33:11', 'El estado del pedido cambió de Pendiente de pago a Procesando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(77, 268, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-10 22:21:32', '2019-07-10 20:21:32', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(78, 259, 'ActionScheduler', '', '', '', '2019-07-12 23:19:18', '2019-07-12 21:19:18', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(79, 269, 'ActionScheduler', '', '', '', '2019-07-12 23:19:26', '2019-07-12 21:19:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(80, 259, 'ActionScheduler', '', '', '', '2019-07-12 23:19:26', '2019-07-12 21:19:26', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(81, 270, 'ActionScheduler', '', '', '', '2019-07-12 23:19:26', '2019-07-12 21:19:26', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(82, 269, 'ActionScheduler', '', '', '', '2019-07-15 17:37:37', '2019-07-15 15:37:37', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(83, 269, 'ActionScheduler', '', '', '', '2019-07-15 17:37:41', '2019-07-15 15:37:41', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(84, 272, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-16 17:22:17', '2019-07-16 15:22:17', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(85, 273, 'WooCommerce', 'woocommerce@127.0.0.1', '', '', '2019-07-17 21:01:33', '2019-07-17 19:01:33', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(86, 272, 'root', 'fidel.alejos@gmail.com', '', '', '2019-07-17 21:06:22', '2019-07-17 19:06:22', 'El estado del pedido cambió de En espera a Completado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(87, 270, 'ActionScheduler', '', '', '', '2019-07-22 16:02:19', '2019-07-22 14:02:19', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(88, 270, 'ActionScheduler', '', '', '', '2019-07-22 16:02:21', '2019-07-22 14:02:21', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(89, 274, 'ActionScheduler', '', '', '', '2019-07-22 16:02:22', '2019-07-22 14:02:22', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/tugruero/', 'yes'),
(2, 'home', 'http://127.0.0.1/tugruero/', 'yes'),
(3, 'blogname', 'TuGruero.com', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'fidel.alejos@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '20', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '20', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:296:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:8:"login/?$";s:22:"index.php?action=login";s:9:"logout/?$";s:23:"index.php?action=logout";s:11:"register/?$";s:25:"index.php?action=register";s:15:"lostpassword/?$";s:29:"index.php?action=lostpassword";s:12:"resetpass/?$";s:26:"index.php?action=resetpass";s:16:"confirmaction/?$";s:30:"index.php?action=confirmaction";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:57:"categoria-producto/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:52:"categoria-producto/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:33:"categoria-producto/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:45:"categoria-producto/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:27:"categoria-producto/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:58:"etiqueta-producto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:53:"etiqueta-producto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:34:"etiqueta-producto/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:46:"etiqueta-producto/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:28:"etiqueta-producto/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:36:"producto/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"producto/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"producto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"producto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"producto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"producto/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"producto/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:29:"producto/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:37:"producto/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:44:"producto/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:34:"producto/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:40:"producto/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"producto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"producto/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:25:"producto/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"producto/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"producto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"producto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"producto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"producto/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"banner/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"banner/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"banner/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"banner/([^/]+)/embed/?$";s:39:"index.php?banner=$matches[1]&embed=true";s:27:"banner/([^/]+)/trackback/?$";s:33:"index.php?banner=$matches[1]&tb=1";s:35:"banner/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&paged=$matches[2]";s:42:"banner/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?banner=$matches[1]&cpage=$matches[2]";s:32:"banner/([^/]+)/wc-api(/(.*))?/?$";s:47:"index.php?banner=$matches[1]&wc-api=$matches[3]";s:38:"banner/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:49:"banner/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:31:"banner/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?banner=$matches[1]&page=$matches[2]";s:23:"banner/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"banner/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"banner/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"testimonios/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"testimonios/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"testimonios/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonios/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"testimonios/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"testimonios/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"testimonios/([^/]+)/embed/?$";s:44:"index.php?testimonios=$matches[1]&embed=true";s:32:"testimonios/([^/]+)/trackback/?$";s:38:"index.php?testimonios=$matches[1]&tb=1";s:40:"testimonios/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?testimonios=$matches[1]&paged=$matches[2]";s:47:"testimonios/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?testimonios=$matches[1]&cpage=$matches[2]";s:37:"testimonios/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?testimonios=$matches[1]&wc-api=$matches[3]";s:43:"testimonios/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"testimonios/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"testimonios/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?testimonios=$matches[1]&page=$matches[2]";s:28:"testimonios/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"testimonios/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"testimonios/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonios/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"testimonios/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"testimonios/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"referencia/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"referencia/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"referencia/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"referencia/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"referencia/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"referencia/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"referencia/([^/]+)/embed/?$";s:43:"index.php?referencia=$matches[1]&embed=true";s:31:"referencia/([^/]+)/trackback/?$";s:37:"index.php?referencia=$matches[1]&tb=1";s:39:"referencia/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?referencia=$matches[1]&paged=$matches[2]";s:46:"referencia/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?referencia=$matches[1]&cpage=$matches[2]";s:36:"referencia/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?referencia=$matches[1]&wc-api=$matches[3]";s:42:"referencia/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:53:"referencia/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:35:"referencia/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?referencia=$matches[1]&page=$matches[2]";s:27:"referencia/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"referencia/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"referencia/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"referencia/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"referencia/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"referencia/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"galeria/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"galeria/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"galeria/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"galeria/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"galeria/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"galeria/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"galeria/([^/]+)/embed/?$";s:40:"index.php?galeria=$matches[1]&embed=true";s:28:"galeria/([^/]+)/trackback/?$";s:34:"index.php?galeria=$matches[1]&tb=1";s:36:"galeria/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?galeria=$matches[1]&paged=$matches[2]";s:43:"galeria/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?galeria=$matches[1]&cpage=$matches[2]";s:33:"galeria/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?galeria=$matches[1]&wc-api=$matches[3]";s:39:"galeria/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"galeria/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"galeria/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?galeria=$matches[1]&page=$matches[2]";s:24:"galeria/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"galeria/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"galeria/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"galeria/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"galeria/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"galeria/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"servicios/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"servicios/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"servicios/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"servicios/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"servicios/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"servicios/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"servicios/([^/]+)/embed/?$";s:42:"index.php?servicios=$matches[1]&embed=true";s:30:"servicios/([^/]+)/trackback/?$";s:36:"index.php?servicios=$matches[1]&tb=1";s:38:"servicios/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?servicios=$matches[1]&paged=$matches[2]";s:45:"servicios/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?servicios=$matches[1]&cpage=$matches[2]";s:35:"servicios/([^/]+)/wc-api(/(.*))?/?$";s:50:"index.php?servicios=$matches[1]&wc-api=$matches[3]";s:41:"servicios/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"servicios/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"servicios/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?servicios=$matches[1]&page=$matches[2]";s:26:"servicios/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"servicios/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"servicios/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"servicios/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"servicios/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"servicios/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:39:"informacion/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"informacion/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"informacion/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"informacion/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"informacion/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"informacion/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"informacion/([^/]+)/embed/?$";s:44:"index.php?informacion=$matches[1]&embed=true";s:32:"informacion/([^/]+)/trackback/?$";s:38:"index.php?informacion=$matches[1]&tb=1";s:40:"informacion/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?informacion=$matches[1]&paged=$matches[2]";s:47:"informacion/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?informacion=$matches[1]&cpage=$matches[2]";s:37:"informacion/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?informacion=$matches[1]&wc-api=$matches[3]";s:43:"informacion/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"informacion/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"informacion/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?informacion=$matches[1]&page=$matches[2]";s:28:"informacion/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"informacion/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"informacion/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"informacion/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"informacion/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"informacion/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"preguntas/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"preguntas/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"preguntas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"preguntas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"preguntas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"preguntas/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"preguntas/([^/]+)/embed/?$";s:42:"index.php?preguntas=$matches[1]&embed=true";s:30:"preguntas/([^/]+)/trackback/?$";s:36:"index.php?preguntas=$matches[1]&tb=1";s:38:"preguntas/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?preguntas=$matches[1]&paged=$matches[2]";s:45:"preguntas/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?preguntas=$matches[1]&cpage=$matches[2]";s:35:"preguntas/([^/]+)/wc-api(/(.*))?/?$";s:50:"index.php?preguntas=$matches[1]&wc-api=$matches[3]";s:41:"preguntas/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"preguntas/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"preguntas/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?preguntas=$matches[1]&page=$matches[2]";s:26:"preguntas/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"preguntas/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"preguntas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"preguntas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"preguntas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"preguntas/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:16:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:33:"classic-editor/classic-editor.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:5;s:79:"custom-registration-form-builder-with-submission-manager/registration_magic.php";i:6;s:29:"easy-wp-smtp/easy-wp-smtp.php";i:7;s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";i:8;s:33:"theme-my-login/theme-my-login.php";i:9;s:19:"woo-doc/woo-doc.php";i:10;s:41:"woo-multi-currency/woo-multi-currency.php";i:11;s:47:"woo-order-export-lite/woo-order-export-lite.php";i:12;s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";i:13;s:27:"woocommerce/woocommerce.php";i:14;s:49:"wp-multi-step-checkout/wp-multi-step-checkout.php";i:15;s:41:"yith-woocommerce-uploads-premium/init.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tugruero', 'yes'),
(41, 'stylesheet', 'tugruero', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:47:"woo-order-export-lite/woo-order-export-lite.php";a:2:{i:0;s:21:"WC_Order_Export_Admin";i:1;s:9:"uninstall";}s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}s:29:"easy-wp-smtp/easy-wp-smtp.php";s:17:"swpsmtp_uninstall";}', 'no'),
(82, 'timezone_string', 'Europe/Madrid', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:1:{i:0;s:12:"wmc_widget-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'nonce_key', 'f@nk1SqV;OoM%M[dj /CS*Om!nB0@~h lt%<%Jmzm`Py>*A0%A5@jG},agLYD#E#', 'no'),
(110, 'nonce_salt', '(|WK&j7}Q74;FIl~~8npH]rwDP>AQL;%z3Nz.D#o|0!}.}Quy]0BevaW0JXNow2x', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'cron', 'a:14:{i:1564171090;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1564172554;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1564173486;a:1:{s:24:"rm_chronos_task_exe_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:22:"rm_automation_interval";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1564174679;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1564175602;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1564178400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1564186402;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1564186954;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1564186973;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1564187357;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1564251202;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1564251212;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1565092800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1551918407;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(120, 'auth_key', '-L`>~|E/hxxyY9j/R3*BN*h)@6e~LeD-{wquo/Ja.j{<[rEI{X[`PL<hSq_1xe3v', 'no'),
(121, 'auth_salt', 'zrqtA$>Lnt(J~SS^m~a|DjeCR=;B/oE([ zVF7u+=I$M],[#{qA`Ofye_)X;~.69', 'no'),
(122, 'logged_in_key', 'GkY:+WjTfW2^HF]WUub6>F|N%!UW!s!+xnm6hb[)v)BArn^Ir+t{0I[!3b8Lh]I2', 'no'),
(123, 'logged_in_salt', '^wzpY`b*%mY .TZIWChgFtH6me?nb#{fd7LB:_oOB_I,Fn0F@Ye]KlFi[C0K-gU$', 'no'),
(134, 'can_compress_scripts', '0', 'no'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";d:1551921783;s:7:"version";s:5:"5.1.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(153, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'woocommerce_store_address', 'Caracas', 'yes'),
(157, 'woocommerce_store_address_2', '', 'yes'),
(158, 'woocommerce_store_city', 'Barquisimeto', 'yes'),
(159, 'woocommerce_default_country', 'VE', 'yes'),
(160, 'woocommerce_store_postcode', '3001', 'yes'),
(161, 'woocommerce_allowed_countries', 'all', 'yes'),
(162, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(163, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(164, 'woocommerce_ship_to_countries', '', 'yes'),
(165, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(166, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(167, 'woocommerce_calc_taxes', 'no', 'yes'),
(168, 'woocommerce_enable_coupons', 'yes', 'yes'),
(169, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(170, 'woocommerce_currency', 'USD', 'yes'),
(171, 'woocommerce_currency_pos', 'left', 'yes'),
(172, 'woocommerce_price_thousand_sep', '.', 'yes'),
(173, 'woocommerce_price_decimal_sep', ',', 'yes'),
(174, 'woocommerce_price_num_decimals', '2', 'yes'),
(175, 'woocommerce_shop_page_id', '6', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(176, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(177, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(178, 'woocommerce_placeholder_image', '164', 'yes'),
(179, 'woocommerce_weight_unit', 'kg', 'yes'),
(180, 'woocommerce_dimension_unit', 'cm', 'yes'),
(181, 'woocommerce_enable_reviews', 'yes', 'yes'),
(182, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(183, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(184, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(185, 'woocommerce_review_rating_required', 'yes', 'no'),
(186, 'woocommerce_manage_stock', 'yes', 'yes'),
(187, 'woocommerce_hold_stock_minutes', '60', 'no'),
(188, 'woocommerce_notify_low_stock', 'yes', 'no'),
(189, 'woocommerce_notify_no_stock', 'yes', 'no'),
(190, 'woocommerce_stock_email_recipient', 'fidel.alejos@gmail.com', 'no'),
(191, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(192, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(193, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(194, 'woocommerce_stock_format', '', 'yes'),
(195, 'woocommerce_file_download_method', 'force', 'no'),
(196, 'woocommerce_downloads_require_login', 'no', 'no'),
(197, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(198, 'woocommerce_prices_include_tax', 'no', 'yes'),
(199, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(200, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(201, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(202, 'woocommerce_tax_classes', 'Tasa reducida\nTasa cero', 'yes'),
(203, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(204, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(205, 'woocommerce_price_display_suffix', '', 'yes'),
(206, 'woocommerce_tax_total_display', 'itemized', 'no'),
(207, 'woocommerce_enable_shipping_calc', 'no', 'no'),
(208, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(209, 'woocommerce_ship_to_destination', 'billing', 'no'),
(210, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(211, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(212, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(213, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(214, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(215, 'woocommerce_registration_generate_username', 'no', 'no'),
(216, 'woocommerce_registration_generate_password', 'no', 'no'),
(217, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(218, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(219, 'woocommerce_registration_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web, gestionar el acceso a tu cuenta y otros propósitos descritos en nuestra [privacy_policy].', 'yes'),
(220, 'woocommerce_checkout_privacy_policy_text', 'Tus datos personales se utilizarán para procesar tu pedido, mejorar tu experiencia en esta web y otros propósitos descritos en nuestra [privacy_policy].', 'yes'),
(221, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(222, 'woocommerce_trash_pending_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(223, 'woocommerce_trash_failed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(224, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:4:"days";}', 'no'),
(225, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(226, 'woocommerce_email_from_name', 'TuGruero.com', 'no'),
(227, 'woocommerce_email_from_address', 'fidel.alejos@gmail.com', 'no'),
(228, 'woocommerce_email_header_image', '', 'no'),
(229, 'woocommerce_email_footer_text', '<a href="http://tugruero.io/">TuGruero</a>', 'no'),
(230, 'woocommerce_email_base_color', '#fa693c', 'no'),
(231, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(232, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(233, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(234, 'woocommerce_cart_page_id', '7', 'yes'),
(235, 'woocommerce_checkout_page_id', '8', 'yes'),
(236, 'woocommerce_myaccount_page_id', '9', 'yes'),
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
(254, 'woocommerce_single_image_width', '600', 'yes'),
(255, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(256, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(257, 'woocommerce_demo_store', 'no', 'no'),
(258, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:9:"/producto";s:13:"category_base";s:18:"categoria-producto";s:8:"tag_base";s:17:"etiqueta-producto";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(259, 'current_theme_supports_woocommerce', 'no', 'yes'),
(260, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(262, 'product_cat_children', 'a:0:{}', 'yes'),
(263, 'default_product_cat', '15', 'yes'),
(268, 'woocommerce_admin_notices', 'a:3:{i:0;s:6:"update";i:1;s:20:"no_secure_connection";i:2;s:14:"template_files";}', 'yes'),
(269, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(270, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(271, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(272, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(273, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(292, 'woocommerce_product_type', 'both', 'yes'),
(293, 'woocommerce_allow_tracking', 'yes', 'yes'),
(294, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(295, 'woocommerce_bacs_settings', 'a:10:{s:7:"enabled";s:3:"yes";s:5:"title";s:30:"Transferencia bancaria directa";s:11:"description";s:202:"Realiza tu pago directamente en nuestra cuenta bancaria. Por favor, usa el número del pedido como referencia de pago. Tu pedido no se procesará hasta que se haya recibido el importe en nuestra cuenta.";s:12:"instructions";s:0:"";s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"sort_code";s:0:"";s:9:"bank_name";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}', 'yes'),
(296, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(297, 'woocommerce_tracker_last_send', '1563804159', 'yes'),
(299, 'woocommerce-order-export-activation-notice-shown', '1', 'no'),
(300, '_transient_shipping-transient-version', '1551964944', 'yes'),
(311, 'mailchimp_woocommerce_version', '2.1.13', 'no'),
(312, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(314, 'mailchimp-woocommerce-store_id', '5c8064f5ada64', 'yes'),
(317, 'woo_multi_currency_params', 'a:24:{s:6:"enable";s:1:"1";s:18:"enable_fixed_price";s:1:"1";s:14:"price_switcher";s:1:"3";s:15:"currency_hidden";a:2:{i:0;s:1:"0";i:1;s:1:"0";}s:8:"currency";a:2:{i:0;s:3:"VES";i:1;s:3:"USD";}s:12:"currency_pos";a:2:{i:0;s:4:"left";i:1;s:4:"left";}s:13:"currency_rate";a:2:{i:0;s:9:"248208.00";i:1;s:1:"1";}s:17:"currency_rate_fee";a:2:{i:0;s:1:"0";i:1;s:1:"0";}s:17:"currency_decimals";a:2:{i:0;s:1:"2";i:1;s:1:"2";}s:15:"currency_custom";a:2:{i:0;s:4:"Bs.S";i:1;s:0:"";}s:16:"currency_default";s:3:"USD";s:11:"auto_detect";s:1:"1";s:7:"geo_api";s:1:"0";s:13:"enable_design";s:1:"1";s:12:"design_title";s:20:"Select your currency";s:15:"design_position";s:1:"1";s:10:"text_color";s:7:"#ffffff";s:13:"sidebar_style";s:1:"0";s:10:"main_color";s:7:"#f78080";s:16:"background_color";s:7:"#212121";s:16:"conditional_tags";s:0:"";s:11:"flag_custom";s:0:"";s:10:"custom_css";s:0:"";s:20:"enable_multi_payment";s:1:"1";}', 'yes'),
(318, 'widget_wmc_widget', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"layout";s:0:"";s:9:"flag_size";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(319, 'widget_wmc_widget_rates', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(320, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(321, 'woo-multi-currency_start_use', '1', 'yes'),
(337, 'theme_mods_tugruero', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:16;}}', 'yes'),
(339, 'current_theme', 'tugruero', 'yes'),
(340, 'theme_switched', '', 'yes'),
(341, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(345, '_transient_product_query-transient-version', '1563981143', 'yes'),
(349, '_transient_product-transient-version', '1563290113', 'yes'),
(355, 'category_children', 'a:0:{}', 'yes'),
(369, 'rm_option_front_sub_page_id', '11', 'yes'),
(370, 'rm_option_front_login_page_id', '12', 'yes'),
(371, 'rm_option_inserted_sample_data', 'O:8:"stdClass":1:{s:5:"forms";a:2:{i:0;O:8:"stdClass":2:{s:7:"form_id";s:1:"2";s:9:"form_type";s:1:"1";}i:1;O:8:"stdClass":2:{s:7:"form_id";s:1:"1";s:9:"form_type";s:1:"0";}}}', 'no'),
(372, 'rm_option_install_date', '1551919089', 'no'),
(373, 'rm_option_install_type', 'basic', 'no'),
(374, 'rm_option_last_update_time', '1551919089', 'no'),
(375, 'rm_option_ex_chronos_db_version', '1', 'no'),
(376, 'rm_option_last_activation_time', '1551919090', 'no'),
(377, 'rm_option_db_version', '5.2', 'no'),
(378, 'widget_rm_otp_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(379, 'widget_rm_form_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(380, 'widget_rm_login_btn_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(384, 'rm_option_automation_intro_time', '1551919090', 'no'),
(386, 'rm_option_rm_version', '4.5.4.0', 'yes'),
(393, 'woocommerce_tracker_ua', 'a:11:{i:0;s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36";i:1;s:113:"Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36";i:2;s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36";i:3;s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36";i:4;s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36";i:5;s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36";i:6;s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36";i:7;s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36";i:8;s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36";i:9;s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36";i:10;s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36";}', 'yes'),
(400, 'rm_option_currency', 'USD', 'no'),
(401, 'rm_option_currency_symbol', '$', 'no'),
(402, 'rm_option_session_policy', 'db', 'no'),
(403, 'rm_option_payment_gateway', '', 'no'),
(404, 'rm_option_stripe_api_key', '', 'no'),
(405, 'rm_option_an_senders_email', '{{useremail}}', 'no'),
(406, 'rm_option_stripe_publish_key', '', 'no'),
(407, 'rm_option_paypal_email', '', 'no'),
(408, 'rm_option_paypal_test_mode', '', 'no'),
(409, 'rm_option_display_progress_bar', '', 'no'),
(410, 'rm_option_an_senders_display_name', '{{user}}', 'no'),
(411, 'rm_option_paypal_page_style', '', 'no'),
(412, 'rm_option_currency_symbol_position', 'before', 'no'),
(413, 'rm_option_enable_captcha', '', 'no'),
(414, 'rm_option_sub_limit_antispam', '20', 'no'),
(415, 'rm_option_edd_notice', '1', 'no'),
(416, 'rm_option_wc_notice', '1', 'no'),
(417, 'rm_option_php_notice', '0', 'no'),
(418, 'rm_option_public_key', '', 'no'),
(419, 'rm_option_private_key', '', 'no'),
(420, 'rm_option_auto_generated_password', '', 'no'),
(421, 'rm_option_user_auto_approval', 'yes', 'no'),
(422, 'rm_option_admin_email', 'fidel.alejos@gmail.com', 'no'),
(423, 'rm_option_admin_notification', '', 'no'),
(424, 'rm_option_senders_display_name', 'TuGruero.com', 'no'),
(425, 'rm_option_senders_email', 'fidel.alejos@gmail.com', 'no'),
(426, 'rm_option_enable_wordpress_default', '', 'no'),
(427, 'rm_option_wordpress_default_email_to', '', 'no'),
(428, 'rm_option_wordpress_default_email_message', '', 'no'),
(429, 'rm_option_user_notification_for_notes', 'yes', 'no'),
(430, 'rm_option_user_ip', 'yes', 'no'),
(431, 'rm_option_enable_smtp', '', 'no'),
(432, 'rm_option_smtp_host', '', 'no'),
(433, 'rm_option_smtp_encryption_type', 'enc_none', 'no'),
(434, 'rm_option_smtp_port', '', 'no'),
(435, 'rm_option_smtp_auth', '', 'no'),
(436, 'rm_option_smtp_user_name', '', 'no'),
(437, 'rm_option_smtp_password', 'vahWIrvbnxC8sUTzOBS0w82t0+Mg/2vVtr9dhukh+WU=', 'no'),
(438, 'rm_option_theme', 'matchmytheme', 'no'),
(439, 'rm_option_form_layout', 'label_left', 'no'),
(440, 'rm_option_enable_social', '', 'no'),
(441, 'rm_option_facebook_app_id', '', 'no'),
(442, 'rm_option_facebook_app_secret', '', 'no'),
(443, 'rm_option_enable_facebook', '', 'no'),
(444, 'rm_option_enable_twitter', '', 'no'),
(445, 'rm_option_consumer_key', '', 'no'),
(446, 'rm_option_consumer_secret', '', 'no'),
(447, 'rm_option_enable_mailchimp', '', 'no'),
(448, 'rm_option_mailchimp_key', '', 'no'),
(449, 'rm_option_google_map_key', '', 'no'),
(450, 'rm_option_send_password', 'yes', 'no'),
(451, 'rm_option_allowed_file_types', 'jpg|jpeg|png|gif|doc|pdf|docx|txt', 'no'),
(452, 'rm_option_allow_multiple_file_uploads', '', 'no'),
(453, 'rm_option_hide_toolbar', '', 'no'),
(454, 'rm_option_default_registration_url', '13', 'no'),
(455, 'rm_option_post_submission_redirection_url', '', 'no'),
(456, 'rm_option_done_with_review_banner', 'no', 'no'),
(457, 'rm_option_banned_ip', 'a:0:{}', 'no'),
(458, 'rm_option_banned_email', 'a:0:{}', 'no'),
(459, 'rm_option_enable_custom_pw_rests', '', 'no'),
(460, 'rm_option_custom_pw_rests', '', 'no'),
(461, 'rm_option_blacklisted_usernames', 'a:0:{}', 'no'),
(462, 'rm_option_default_form_id', '', 'no'),
(463, 'rm_option_display_floating_action_btn', '', 'no'),
(464, 'rm_option_floating_icon_bck_color', '008d7d', 'no'),
(465, 'rm_option_fab_color', '00aeff', 'no'),
(466, 'rm_option_fab_theme', 'Light', 'no'),
(467, 'rm_option_fab_icon', '', 'no'),
(468, 'rm_option_submission_on_card', 'all', 'no'),
(469, 'rm_option_review_events', 'a:3:{s:5:"event";i:0;s:6:"status";a:2:{s:4:"flag";i:0;s:4:"time";s:0:"";}s:6:"rating";i:0;}', 'no'),
(470, 'rm_option_show_asterix', 'yes', 'no'),
(471, 'rm_option_rm_option_default_forms', '', 'no'),
(472, 'rm_option_tour_state', 'a:4:{s:17:"form_manager_tour";b:0;s:17:"form_gensett_tour";b:0;s:27:"form_setting_dashboard_tour";b:0;s:16:"submissions_tour";b:0;}', 'no'),
(473, 'rm_option_post_logout_redirection_page_id', '', 'no'),
(474, 'rm_option_has_subbed_fb_page', 'no', 'no'),
(475, 'rm_option_one_time_actions', 'a:0:{}', 'no'),
(476, 'rm_option_redirect_admin_to_dashboard_post_login', 'yes', 'no'),
(477, 'rm_option_is_visit_welcome_page', 'no', 'no'),
(515, 'woocommerce_paypal_settings', 'a:23:{s:7:"enabled";s:3:"yes";s:5:"title";s:6:"PayPal";s:11:"description";s:92:"Pagar con PayPal; puedes pagar con tu tarjeta de crédito si no tienes una cuenta de PayPal.";s:5:"email";s:22:"fidel.alejos@gmail.com";s:8:"advanced";s:0:"";s:8:"testmode";s:3:"yes";s:5:"debug";s:2:"no";s:16:"ipn_notification";s:3:"yes";s:14:"receiver_email";s:22:"fidel.alejos@gmail.com";s:14:"identity_token";s:0:"";s:14:"invoice_prefix";s:3:"WC-";s:13:"send_shipping";s:3:"yes";s:16:"address_override";s:2:"no";s:13:"paymentaction";s:4:"sale";s:10:"page_style";s:0:"";s:9:"image_url";s:0:"";s:11:"api_details";s:0:"";s:12:"api_username";s:4:"root";s:12:"api_password";s:8:"garden86";s:13:"api_signature";s:0:"";s:20:"sandbox_api_username";s:0:"";s:20:"sandbox_api_password";s:0:"";s:21:"sandbox_api_signature";s:0:"";}', 'yes'),
(517, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(525, 'wmsc_activation_time', '1557011701', 'yes'),
(526, 'wmsc_version', '1.18', 'yes'),
(527, 'wmsc_options', 'a:27:{s:6:"label1";b:0;s:18:"show_shipping_step";b:0;s:22:"unite_billing_shipping";b:0;s:19:"unite_order_payment";b:0;s:6:"label3";b:0;s:19:"validation_per_step";b:0;s:15:"clickable_steps";b:0;s:12:"keyboard_nav";b:1;s:6:"label2";b:0;s:24:"show_back_to_cart_button";b:1;s:23:"registration_with_login";b:0;s:17:"review_thumbnails";b:0;s:10:"main_color";s:7:"#1e85be";s:8:"template";s:7:"default";s:12:"wpmc_buttons";b:0;s:7:"t_login";s:5:"Login";s:9:"t_billing";s:7:"Billing";s:10:"t_shipping";s:8:"Shipping";s:7:"t_order";s:5:"Order";s:9:"t_payment";s:7:"Payment";s:14:"t_back_to_cart";s:12:"Back to cart";s:12:"t_skip_login";s:10:"Skip Login";s:10:"t_previous";s:8:"Previous";s:6:"t_next";s:4:"Next";s:7:"t_error";s:65:"Please fix the errors on this step before moving to the next step";s:6:"c_sign";s:1:"&";s:6:"t_wpml";b:0;}', 'yes'),
(676, 'woocommerce_instapago_settings', 'a:11:{s:7:"enabled";s:3:"yes";s:5:"title";s:9:"Instapago";s:11:"description";s:40:"Puedes pagar con tu tarjeta de crédito.";s:11:"api_details";s:0:"";s:9:"api_keyId";s:0:"";s:15:"api_publicKeyId";s:0:"";s:9:"api_debug";s:0:"";s:5:"debug";s:3:"yes";s:13:"paymentaction";s:0:"";s:11:"mail_header";s:0:"";s:14:"mail_subheader";s:0:"";}', 'yes'),
(696, 'cptui_new_install', 'false', 'yes'),
(699, 'cptui_post_types', 'a:7:{s:6:"banner";a:29:{s:4:"name";s:6:"banner";s:5:"label";s:7:"Banners";s:14:"singular_label";s:6:"Banner";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:25:{s:9:"menu_name";s:7:"Banners";s:9:"all_items";s:11:"All Banners";s:12:"add_new_item";s:14:"Add New Banner";s:9:"edit_item";s:11:"Edit Banner";s:8:"new_item";s:10:"New Banner";s:9:"view_item";s:11:"View Banner";s:10:"view_items";s:12:"View Banners";s:12:"search_items";s:13:"Search Banner";s:9:"not_found";s:16:"No Banners Found";s:18:"not_found_in_trash";s:24:"No Banner found in Trash";s:6:"parent";s:13:"Parent Banner";s:7:"add_new";s:0:"";s:17:"parent_item_colon";s:13:"Parent Banner";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:11:"testimonios";a:29:{s:4:"name";s:11:"testimonios";s:5:"label";s:11:"Testimonios";s:14:"singular_label";s:10:"Testimonio";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:10:"referencia";a:29:{s:4:"name";s:10:"referencia";s:5:"label";s:11:"Referencias";s:14:"singular_label";s:10:"Referencia";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:7:"galeria";a:29:{s:4:"name";s:7:"galeria";s:5:"label";s:9:"Galerías";s:14:"singular_label";s:8:"Galería";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:9:"servicios";a:29:{s:4:"name";s:9:"servicios";s:5:"label";s:9:"Servicios";s:14:"singular_label";s:8:"Servicio";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:11:"informacion";a:29:{s:4:"name";s:11:"informacion";s:5:"label";s:20:"Informaciòn bàsica";s:14:"singular_label";s:20:"Informaciòn bàsica";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:9:"preguntas";a:29:{s:4:"name";s:9:"preguntas";s:5:"label";s:20:"Preguntas Frecuentes";s:14:"singular_label";s:18:"Pregunta Frecuente";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(710, 'woocommerce_db_version', '3.5.7', 'yes'),
(719, 'acf_version', '5.7.12', 'yes'),
(829, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(1789, '_transient_orders-transient-version', '1563390381', 'yes'),
(1817, 'wac_notices', 'a:1:{s:19:"premium_advertising";a:3:{s:7:"message";s:232:"You\'re using the free version of WooCommerce Ajax Cart. If you want more features and better support, please <a href=\'http://tugruero.dev.com/wp-admin/admin.php?page=woocommerce-ajax-cart&tab=tab-buy.php\'>check the premium page</a>.";s:4:"type";s:7:"success";s:11:"dismissDays";i:90;}}', 'yes'),
(1819, 'wac_settings', 'a:5:{s:16:"show_qty_buttons";s:3:"yes";s:13:"qty_as_select";s:2:"no";s:12:"select_items";i:5;s:21:"confirmation_zero_qty";s:2:"no";s:12:"ajax_timeout";i:800;}', 'yes'),
(1824, 'widget_theme-my-login', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1825, '_tml_installed_at', '1554175904', 'no'),
(1826, '_tml_updated_at', '1556024988', 'no'),
(1827, '_tml_version', '7.0.13', 'no'),
(1870, 'yith_wcms_enable_multistep', 'yes', 'yes'),
(2029, 'wcfe_settings', 'a:4:{s:7:"replace";a:1:{s:15:"add_information";s:22:"Additional Information";}s:7:"buttons";a:1:{i:0;a:2:{s:5:"label";s:13:"Example Label";s:11:"placeholder";s:19:"Example placeholder";}}s:9:"checkness";a:1:{s:9:"checkbox1";b:1;}s:7:"billing";a:3:{s:5:"label";s:5:"label";s:11:"placeholder";s:11:"placeholder";s:9:"attribute";s:9:"attribute";}}', 'yes'),
(2036, 'wooccm_update_notice', '0', 'yes'),
(2037, 'wccs_settings', 'a:2:{s:7:"buttons";a:0:{}s:9:"checkness";a:28:{s:12:"upload_title";s:0:"";s:25:"wooccm_notification_email";s:22:"fidel.alejos@gmail.com";s:17:"allow_file_upload";s:0:"";s:16:"deny_file_upload";s:0:"";s:21:"allow_file_upload_cat";s:0:"";s:20:"deny_file_upload_cat";s:0:"";s:15:"picture_success";s:14:"Picture Saved!";s:11:"file_delete";s:6:"Delete";s:10:"file_types";s:0:"";s:18:"file_upload_number";s:0:"";s:9:"upload_os";s:0:"";s:12:"productssave";s:0:"";s:10:"noteslabel";s:32:"Datos del propietario y Vehiculo";s:16:"notesplaceholder";s:0:"";s:16:"time_stamp_title";s:10:"Order Time";s:12:"set_timezone";s:0:"";s:10:"time_stamp";s:4:"true";s:16:"payment_method_d";s:14:"Payment Method";s:16:"payment_method_t";s:4:"true";s:17:"shipping_method_d";s:15:"Shipping Method";s:17:"shipping_method_t";s:4:"true";s:9:"per_state";s:0:"";s:12:"custom_css_w";s:0:"";s:9:"checkbox1";s:4:"true";s:5:"text1";s:0:"";s:9:"checkbox3";s:4:"true";s:5:"text2";s:0:"";s:8:"position";s:17:"after_order_notes";}}', 'yes'),
(2038, 'wccs_settings2', 'a:1:{s:16:"shipping_buttons";a:9:{i:0;a:6:{s:5:"label";s:7:"Country";s:3:"cow";s:7:"country";s:8:"checkbox";s:4:"true";s:5:"order";i:1;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:1;a:6:{s:5:"label";s:10:"First Name";s:3:"cow";s:10:"first_name";s:8:"checkbox";s:4:"true";s:5:"order";i:2;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:2;a:7:{s:5:"label";s:9:"Last Name";s:3:"cow";s:9:"last_name";s:8:"checkbox";s:4:"true";s:5:"order";i:3;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}i:3;a:6:{s:5:"label";s:12:"Company Name";s:3:"cow";s:7:"company";s:8:"checkbox";s:4:"true";s:5:"order";i:4;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:4;a:7:{s:5:"label";s:7:"Address";s:3:"cow";s:9:"address_1";s:8:"checkbox";s:4:"true";s:5:"order";i:5;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:14:"Street address";}i:5;a:7:{s:5:"label";s:0:"";s:3:"cow";s:9:"address_2";s:8:"checkbox";s:4:"true";s:5:"order";i:6;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";}i:6;a:7:{s:5:"label";s:10:"Town/ City";s:3:"cow";s:4:"city";s:8:"checkbox";s:4:"true";s:5:"order";i:7;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:11:"Town / City";}i:7;a:6:{s:5:"label";s:5:"State";s:3:"cow";s:5:"state";s:8:"checkbox";s:4:"true";s:5:"order";i:8;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:8;a:8:{s:5:"label";s:3:"Zip";s:3:"cow";s:8:"postcode";s:8:"checkbox";s:4:"true";s:5:"order";i:9;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:11:"placeholder";s:14:"Postcode / Zip";s:9:"clear_row";b:1;}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2039, 'wccs_settings3', 'a:1:{s:15:"billing_buttons";a:27:{i:0;a:35:{s:5:"order";s:1:"1";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:4:"Pais";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:13:"wooccmcountry";s:3:"cow";s:7:"country";}i:1;a:35:{s:5:"order";s:1:"2";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:6:"Nombre";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:10:"first_name";}i:2;a:36:{s:5:"order";s:1:"3";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:8:"Apellido";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"last_name";}i:3;a:34:{s:5:"order";s:1:"4";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-last";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:9:"Compañia";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:7:"company";}i:4;a:35:{s:5:"order";s:1:"5";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:10:"Dirección";s:11:"placeholder";s:14:"Street address";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_1";}i:5;a:35:{s:5:"order";s:1:"6";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:0:"";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"address_2";}i:6;a:35:{s:5:"order";s:1:"7";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:6:"Ciudad";s:11:"placeholder";s:11:"Town / City";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:4:"city";}i:7;a:35:{s:5:"order";s:1:"8";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:6:"Estado";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:11:"wooccmstate";s:3:"cow";s:5:"state";}i:8;a:36:{s:5:"order";s:1:"9";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:9:"clear_row";s:4:"true";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:14:"Código Postal";s:11:"placeholder";s:14:"Postcode / Zip";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:8:"postcode";}i:9;a:35:{s:5:"order";s:2:"10";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:19:"Correo Electrónico";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:0:"";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:5:"email";}i:10;a:35:{s:5:"order";s:2:"11";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:4:"Sexo";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:19:"Femenino||Masculino";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield11";}i:11;a:35:{s:5:"order";s:2:"12";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:7:"Celular";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:28:"0414||0424||0416||0426||0412";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield12";}i:12;a:35:{s:5:"order";s:2:"13";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:13:"Cédula / RIF";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:14:"V-||J-||G-||E-";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield13";}i:13;a:35:{s:5:"order";s:2:"14";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:14:"Identificacion";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"myfield14";}i:14;a:36:{s:5:"order";s:2:"15";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:9:"dd-mm-yyy";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:13:"days_disabler";s:4:"true";s:9:"single_yy";s:4:"1940";s:9:"single_mm";s:2:"01";s:9:"single_dd";s:2:"01";s:13:"single_max_yy";s:4:"2019";s:13:"single_max_mm";s:2:"04";s:13:"single_max_dd";s:2:"19";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:19:"Fecha de Nacimiento";s:11:"placeholder";s:10:"dd/mm/yyyy";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:4:"time";s:3:"cow";s:9:"myfield15";}i:15;a:35:{s:5:"order";s:2:"16";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:12:"Estado Civil";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:42:"Soltera/o||Casada/o||Divorciada/o||Viuda/o";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield16";}i:16;a:35:{s:5:"order";s:2:"17";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:55:"¿Desea adquirir RCV? (Responsabilidad Civil Vehicular)";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:6:"Si||No";s:4:"type";s:11:"wooccmradio";s:3:"cow";s:9:"myfield17";}i:17;a:35:{s:5:"order";s:2:"18";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"Clase";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:37:"Automóvil||Camioneta||Moto||Rústico";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield18";}i:18;a:35:{s:5:"order";s:2:"19";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:4:"Año";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:118:"2000||2001||2002||2003||2004||2005||2006||2007||2008||2009||2010||2011||2012||2013||2014||2015||2016||2017||2018||2019";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield19";}i:19;a:35:{s:5:"order";s:2:"20";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"Marca";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:822:"Acura||Alfa Romeo||Aprilia||Aston Martin||Audi||Bajaj||Bera||BMW||BMW||Buick||BYD||Cadillac||Can-Am||Chana||Changhe||Chery||Chevrolet||Chrysler||Citroën||Corvette||Daewoo||Daihatsu||Dodge||Dongfeng||Ducati||Empire||ENCAVA||Ferrari||Fiat||Ford||FREIGHTLINER||Geely||Gilera||Great Wall||Hafei||Haima||HAOJUE||Harley Davidson||Honda||Hummer||Husqvarna||Hyundai||Infiniti||Isuzu||IVECO||JAC||JACK||Jaguar||Jeep||JMC||Kawasaki||Keeway||KENWORTH||Kia||KTM||Lada||Land Rover||Lexus||Lifan||Lincoln||LML||MACK||Maserati||MD||Mercedes Benz||Mercury||Mini||Mitsubishi||Nissan||Otra||Peugeot||PIAGGIO||Polifit||Pontiac||Porsche||Renault||Saic Wuling||Saipa/Venirauto||Scion||Seat||Skoda||Skygo||Smart||Subaru||Suzuki||Tata||Toyota||Triumph||Tyanye||Unico||United Motors||Venirauto||Vespa||Volkswagen||VOLVO||Yamaha||Zhongxing||Zotye";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield20";}i:20;a:35:{s:5:"order";s:2:"21";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"Placa";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"myfield21";}i:21;a:35:{s:5:"order";s:2:"22";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:6:"Modelo";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:18:"Modelo 1||Modelo 2";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"myfield22";}i:22;a:35:{s:5:"order";s:2:"23";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:13:"form-row-last";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:5:"Color";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"myfield23";}i:23;a:35:{s:5:"order";s:2:"24";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"checkbox";s:4:"true";s:8:"position";s:14:"form-row-first";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:4:"Tipo";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:122:"Coupé||Cross Over||Furgón||Hatchback||Mini Van||Panel||Pick Up||Rústico||Sedán||Sport Wagon||Station Wagon||Techo Duro";s:4:"type";s:12:"wooccmselect";s:3:"cow";s:9:"myfield24";}i:24;a:34:{s:5:"order";s:2:"25";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:33:"¿Cómo te enteraste de nosotros?";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:9:"myfield25";}i:25;a:34:{s:5:"order";s:2:"26";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:14:"Canal de venta";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:5:"canal";}i:26;a:34:{s:5:"order";s:2:"27";s:8:"single_p";s:0:"";s:9:"single_px";s:0:"";s:12:"single_p_cat";s:0:"";s:13:"single_px_cat";s:0:"";s:10:"start_hour";s:0:"";s:8:"end_hour";s:0:"";s:12:"interval_min";s:0:"";s:10:"manual_min";s:0:"";s:11:"format_date";s:0:"";s:10:"min_before";s:0:"";s:9:"max_after";s:0:"";s:9:"single_yy";s:0:"";s:9:"single_mm";s:0:"";s:9:"single_dd";s:0:"";s:13:"single_max_yy";s:0:"";s:13:"single_max_mm";s:0:"";s:13:"single_max_dd";s:0:"";s:8:"position";s:13:"form-row-wide";s:8:"fee_name";s:0:"";s:16:"add_amount_field";s:0:"";s:5:"label";s:13:"Tipo de venta";s:11:"placeholder";s:0:"";s:11:"chosen_valt";s:0:"";s:15:"conditional_tie";s:0:"";s:12:"colorpickerd";s:7:"#000000";s:15:"colorpickertype";s:10:"farbtastic";s:12:"role_options";s:0:"";s:13:"role_options2";s:0:"";s:11:"extra_class";s:0:"";s:12:"force_title2";s:0:"";s:12:"option_array";s:0:"";s:4:"type";s:10:"wooccmtext";s:3:"cow";s:10:"tipovental";}}}', 'yes'),
(2202, '_tml_dismissed_notices', 'a:1:{i:0;s:23:"new_extension-favorites";}', 'no'),
(2203, 'wooccm_beta_notice', '1', 'yes'),
(2256, 'new_admin_email', 'fidel.alejos@gmail.com', 'yes'),
(2423, 'swpsmtp_options', 'a:8:{s:16:"from_email_field";s:22:"fidel.alejos@gmail.com";s:15:"from_name_field";s:8:"TUGRUERO";s:23:"force_from_name_replace";b:0;s:13:"smtp_settings";a:9:{s:4:"host";s:14:"smtp.gmail.com";s:15:"type_encryption";s:3:"ssl";s:4:"port";s:3:"465";s:13:"autentication";s:3:"yes";s:8:"username";s:22:"fidel.alejos@gmail.com";s:8:"password";s:20:"NTAzODMyMjE4MDg5Mg==";s:12:"enable_debug";b:0;s:12:"insecure_ssl";b:0;s:12:"encrypt_pass";b:0;}s:15:"allowed_domains";s:24:"dHVncnVlcm8uZGV2LmNvbQ==";s:14:"reply_to_email";s:0:"";s:17:"email_ignore_list";s:0:"";s:19:"enable_domain_check";b:0;}', 'yes'),
(2430, 'smtp_test_mail', 'a:3:{s:10:"swpsmtp_to";s:22:"fidel.alejos@gmail.com";s:15:"swpsmtp_subject";s:5:"asdas";s:15:"swpsmtp_message";s:4:"dads";}', 'yes'),
(3654, '_tml_previous_version', '7.0.11', 'no'),
(3656, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(3659, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(3660, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(3665, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:"suggestions";a:26:{i:0;a:4:{s:4:"slug";s:28:"product-edit-meta-tab-header";s:7:"context";s:28:"product-edit-meta-tab-header";s:5:"title";s:22:"Recommended extensions";s:13:"allow-dismiss";b:0;}i:1;a:6:{s:4:"slug";s:39:"product-edit-meta-tab-footer-browse-all";s:7:"context";s:28:"product-edit-meta-tab-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:2;a:9:{s:4:"slug";s:46:"product-edit-mailchimp-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-mailchimp";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg";s:5:"title";s:25:"Mailchimp for Memberships";s:4:"copy";s:79:"Completely automate your email lists by syncing membership changes to Mailchimp";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/mailchimp-woocommerce-memberships/";}i:3;a:9:{s:4:"slug";s:19:"product-edit-addons";s:7:"product";s:26:"woocommerce-product-addons";s:14:"show-if-active";a:2:{i:0;s:25:"woocommerce-subscriptions";i:1;s:20:"woocommerce-bookings";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg";s:5:"title";s:15:"Product Add-Ons";s:4:"copy";s:93:"Offer add-ons like gift wrapping, special messages or other special options for your products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-add-ons/";}i:4;a:9:{s:4:"slug";s:46:"product-edit-woocommerce-subscriptions-gifting";s:7:"product";s:33:"woocommerce-subscriptions-gifting";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:117:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg";s:5:"title";s:25:"Gifting for Subscriptions";s:4:"copy";s:70:"Let customers buy subscriptions for others - they\'re the ultimate gift";s:11:"button-text";s:10:"Learn More";s:3:"url";s:67:"https://woocommerce.com/products/woocommerce-subscriptions-gifting/";}i:5;a:9:{s:4:"slug";s:42:"product-edit-teams-woocommerce-memberships";s:7:"product";s:33:"woocommerce-memberships-for-teams";s:14:"show-if-active";a:1:{i:0;s:23:"woocommerce-memberships";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:113:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg";s:5:"title";s:21:"Teams for Memberships";s:4:"copy";s:123:"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/teams-woocommerce-memberships/";}i:6;a:8:{s:4:"slug";s:29:"product-edit-variation-images";s:7:"product";s:39:"woocommerce-additional-variation-images";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg";s:5:"title";s:27:"Additional Variation Images";s:4:"copy";s:72:"Showcase your products in the best light with a image for each variation";s:11:"button-text";s:10:"Learn More";s:3:"url";s:73:"https://woocommerce.com/products/woocommerce-additional-variation-images/";}i:7;a:9:{s:4:"slug";s:47:"product-edit-woocommerce-subscription-downloads";s:7:"product";s:34:"woocommerce-subscription-downloads";s:14:"show-if-active";a:1:{i:0;s:25:"woocommerce-subscriptions";}s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:114:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg";s:5:"title";s:22:"Subscription Downloads";s:4:"copy";s:57:"Give customers special downloads with their subscriptions";s:11:"button-text";s:10:"Learn More";s:3:"url";s:68:"https://woocommerce.com/products/woocommerce-subscription-downloads/";}i:8;a:8:{s:4:"slug";s:31:"product-edit-min-max-quantities";s:7:"product";s:30:"woocommerce-min-max-quantities";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:110:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg";s:5:"title";s:18:"Min/Max Quantities";s:4:"copy";s:81:"Specify minimum and maximum allowed product quantities for orders to be completed";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/min-max-quantities/";}i:9;a:8:{s:4:"slug";s:28:"product-edit-name-your-price";s:7:"product";s:27:"woocommerce-name-your-price";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg";s:5:"title";s:15:"Name Your Price";s:4:"copy";s:70:"Let customers pay what they want - useful for donations, tips and more";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/name-your-price/";}i:10;a:8:{s:4:"slug";s:42:"product-edit-woocommerce-one-page-checkout";s:7:"product";s:29:"woocommerce-one-page-checkout";s:7:"context";a:1:{i:0;s:26:"product-edit-meta-tab-body";}s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg";s:5:"title";s:17:"One Page Checkout";s:4:"copy";s:92:"Don\'t make customers click around - let them choose products, checkout & pay all on one page";s:11:"button-text";s:10:"Learn More";s:3:"url";s:63:"https://woocommerce.com/products/woocommerce-one-page-checkout/";}i:11;a:4:{s:4:"slug";s:19:"orders-empty-header";s:7:"context";s:24:"orders-list-empty-header";s:5:"title";s:20:"Tools for your store";s:13:"allow-dismiss";b:0;}i:12;a:6:{s:4:"slug";s:30:"orders-empty-footer-browse-all";s:7:"context";s:24:"orders-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:13;a:8:{s:4:"slug";s:19:"orders-empty-zapier";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:18:"woocommerce-zapier";s:4:"icon";s:98:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg";s:5:"title";s:6:"Zapier";s:4:"copy";s:88:"Save time and increase productivity by connecting your store to more than 1000+ services";s:11:"button-text";s:10:"Learn More";s:3:"url";s:52:"https://woocommerce.com/products/woocommerce-zapier/";}i:14;a:8:{s:4:"slug";s:30:"orders-empty-shipment-tracking";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:29:"woocommerce-shipment-tracking";s:4:"icon";s:109:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg";s:5:"title";s:17:"Shipment Tracking";s:4:"copy";s:86:"Let customers know when their orders will arrive by adding shipment tracking to emails";s:11:"button-text";s:10:"Learn More";s:3:"url";s:51:"https://woocommerce.com/products/shipment-tracking/";}i:15;a:8:{s:4:"slug";s:32:"orders-empty-table-rate-shipping";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:31:"woocommerce-table-rate-shipping";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg";s:5:"title";s:19:"Table Rate Shipping";s:4:"copy";s:122:"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/table-rate-shipping/";}i:16;a:8:{s:4:"slug";s:40:"orders-empty-shipping-carrier-extensions";s:7:"context";s:22:"orders-list-empty-body";s:4:"icon";s:119:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg";s:5:"title";s:27:"Shipping Carrier Extensions";s:4:"copy";s:116:"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again";s:11:"button-text";s:13:"Find Carriers";s:8:"promoted";s:26:"category-shipping-carriers";s:3:"url";s:99:"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/";}i:17;a:8:{s:4:"slug";s:32:"orders-empty-google-product-feed";s:7:"context";s:22:"orders-list-empty-body";s:7:"product";s:25:"woocommerce-product-feeds";s:4:"icon";s:111:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg";s:5:"title";s:19:"Google Product Feed";s:4:"copy";s:76:"Increase sales by letting customers find you when they\'re shopping on Google";s:11:"button-text";s:10:"Learn More";s:3:"url";s:53:"https://woocommerce.com/products/google-product-feed/";}i:18;a:4:{s:4:"slug";s:35:"products-empty-header-product-types";s:7:"context";s:26:"products-list-empty-header";s:5:"title";s:23:"Other types of products";s:13:"allow-dismiss";b:0;}i:19;a:6:{s:4:"slug";s:32:"products-empty-footer-browse-all";s:7:"context";s:26:"products-list-empty-footer";s:9:"link-text";s:21:"Browse all extensions";s:3:"url";s:64:"https://woocommerce.com/product-category/woocommerce-extensions/";s:8:"promoted";s:31:"category-woocommerce-extensions";s:13:"allow-dismiss";b:0;}i:20;a:8:{s:4:"slug";s:30:"products-empty-product-vendors";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-vendors";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg";s:5:"title";s:15:"Product Vendors";s:4:"copy";s:47:"Turn your store into a multi-vendor marketplace";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-vendors/";}i:21;a:8:{s:4:"slug";s:26:"products-empty-memberships";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:23:"woocommerce-memberships";s:4:"icon";s:103:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg";s:5:"title";s:11:"Memberships";s:4:"copy";s:76:"Give members access to restricted content or products, for a fee or for free";s:11:"button-text";s:10:"Learn More";s:3:"url";s:57:"https://woocommerce.com/products/woocommerce-memberships/";}i:22;a:9:{s:4:"slug";s:35:"products-empty-woocommerce-deposits";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-deposits";s:14:"show-if-active";a:1:{i:0;s:20:"woocommerce-bookings";}s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg";s:5:"title";s:8:"Deposits";s:4:"copy";s:75:"Make it easier for customers to pay by offering a deposit or a payment plan";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-deposits/";}i:23;a:8:{s:4:"slug";s:40:"products-empty-woocommerce-subscriptions";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:25:"woocommerce-subscriptions";s:4:"icon";s:105:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg";s:5:"title";s:13:"Subscriptions";s:4:"copy";s:97:"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis";s:11:"button-text";s:10:"Learn More";s:3:"url";s:59:"https://woocommerce.com/products/woocommerce-subscriptions/";}i:24;a:8:{s:4:"slug";s:35:"products-empty-woocommerce-bookings";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:20:"woocommerce-bookings";s:4:"icon";s:100:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg";s:5:"title";s:8:"Bookings";s:4:"copy";s:99:"Allow customers to book appointments, make reservations or rent equipment without leaving your site";s:11:"button-text";s:10:"Learn More";s:3:"url";s:54:"https://woocommerce.com/products/woocommerce-bookings/";}i:25;a:8:{s:4:"slug";s:30:"products-empty-product-bundles";s:7:"context";s:24:"products-list-empty-body";s:7:"product";s:27:"woocommerce-product-bundles";s:4:"icon";s:107:"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg";s:5:"title";s:15:"Product Bundles";s:4:"copy";s:49:"Offer customizable bundles and assembled products";s:11:"button-text";s:10:"Learn More";s:3:"url";s:49:"https://woocommerce.com/products/product-bundles/";}}s:7:"updated";i:1563804139;}', 'no'),
(3755, 'woo-multi-currency_dismiss_notices', '1', 'yes'),
(3812, 'woocommerce_version', '3.6.2', 'yes'),
(3814, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(3843, 'woocommerce_new_order_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:9:"recipient";s:22:"fidel.alejos@gmail.com";s:7:"subject";s:0:"";s:7:"heading";s:0:"";s:10:"email_type";s:4:"html";}', 'yes'),
(6317, '_transient_timeout_wc_shipping_method_count_legacy', '1564255345', 'no'),
(6318, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:"version";s:10:"1551964944";s:5:"value";i:0;}', 'no'),
(6922, 'yit_recently_activated', 'a:0:{}', 'yes'),
(6927, 'wbcr_dan_hidden_notices', 'a:0:{}', 'yes'),
(6928, 'ywau_thumbnail_width', '100', 'yes'),
(6929, 'ywau_thumbnail_height', '100', 'yes'),
(6930, 'ywau_thumbnail_quality', '100', 'yes'),
(6931, 'ywau_allow_upload_on_cart', 'yes', 'yes'),
(6932, 'ywau_allow_upload_on_checkout', 'yes', 'yes'),
(6933, 'ywau_allow_upload_on_thankyou', 'yes', 'yes'),
(6934, 'ywau_allow_upload_on_myaccount', 'yes', 'yes'),
(6935, 'ywau_allow_upload_wc-pending', 'yes', 'yes'),
(6936, 'ywau_allow_upload_wc-processing', 'yes', 'yes'),
(6937, 'ywau_allow_upload_wc-on-hold', 'yes', 'yes'),
(6938, 'ywau_allow_upload_wc-completed', 'yes', 'yes'),
(6939, 'ywau_allow_upload_wc-cancelled', 'yes', 'yes'),
(6940, 'ywau_allow_upload_wc-refunded', 'yes', 'yes'),
(6941, 'ywau_allow_upload_wc-failed', 'yes', 'yes'),
(6942, 'ywau_allow_file_deletion_wc-pending', 'yes', 'yes'),
(6943, 'ywau_allow_file_deletion_wc-processing', 'yes', 'yes'),
(6944, 'ywau_allow_file_deletion_wc-on-hold', 'yes', 'yes'),
(6945, 'ywau_allow_file_deletion_wc-completed', 'yes', 'yes'),
(6946, 'ywau_allow_file_deletion_wc-cancelled', 'yes', 'yes'),
(6947, 'ywau_allow_file_deletion_wc-refunded', 'yes', 'yes'),
(6948, 'ywau_allow_file_deletion_wc-failed', 'yes', 'yes'),
(6949, 'ywau_upload_folder', '', 'yes'),
(6950, 'ywau_folder_by_order_type', 'order_id', 'yes'),
(6951, 'ywau_split_products_on_cart', 'no', 'yes'),
(6952, 'ywau_enable_product_upload', 'yes', 'yes'),
(6953, 'ywau_enable_product_variations_upload', 'no', 'yes'),
(6954, 'ywau_enable_order_upload', 'no', 'yes'),
(6955, 'ywau_order_upload_text', 'Documentos de identidad', 'yes'),
(6956, 'ywau_accept_product_file_automatically', 'no', 'yes'),
(6957, 'ywau_accept_order_file_automatically', 'no', 'yes'),
(6958, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:41:"yith_woocommerce_additional_uploads_panel";b:1;}', 'yes'),
(6970, 'ywau_multi_upload_max_id', '7', 'yes'),
(6971, 'ywau_multi_upload_settings', 'a:3:{i:4;a:8:{s:7:"rule-id";s:1:"4";s:11:"upload-type";s:6:"global";s:7:"item_id";s:1:"0";s:6:"status";s:7:"visible";s:10:"rule-label";s:19:"Cedula de Identidad";s:14:"rule-extension";s:8:"jpg, png";s:9:"rule-note";i:0;s:13:"rule-max-size";s:1:"1";}i:5;a:8:{s:7:"rule-id";s:1:"5";s:11:"upload-type";s:6:"global";s:7:"item_id";s:1:"0";s:6:"status";s:7:"visible";s:10:"rule-label";s:22:"Carnet de circulación";s:14:"rule-extension";s:8:"jpg, png";s:9:"rule-note";i:0;s:13:"rule-max-size";s:1:"1";}i:6;a:8:{s:7:"rule-id";s:1:"6";s:11:"upload-type";s:6:"global";s:7:"item_id";s:1:"0";s:6:"status";s:7:"visible";s:10:"rule-label";s:24:"Soporte de transferencia";s:14:"rule-extension";s:8:"jpg, png";s:9:"rule-note";i:0;s:13:"rule-max-size";s:1:"1";}}', 'yes'),
(7006, 'yit_plugin_licence_activation', 'a:1:{s:35:"yith-woocommerce-additional-uploads";a:8:{s:5:"email";s:18:"infopvdi@gmail.com";s:11:"licence_key";s:36:"0ea4dadd-35aa-407a-b895-5d3a6a1af33b";s:15:"licence_expires";i:1594425600;s:7:"message";s:34:"29 out of 30 activations remaining";s:9:"activated";b:1;s:16:"activation_limit";s:2:"30";s:20:"activation_remaining";i:29;s:13:"is_membership";b:1;}}', 'yes'),
(7034, '_transient_timeout_wc_term_counts', '1565882343', 'no'),
(7035, '_transient_wc_term_counts', 'a:1:{i:15;s:1:"3";}', 'no'),
(7293, '_transient_timeout_external_ip_address_127.0.0.1', '1564408933', 'no'),
(7294, '_transient_external_ip_address_127.0.0.1', '200.84.5.4', 'no'),
(7325, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:17;s:3:"all";i:17;s:8:"approved";s:2:"17";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(7326, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(7327, '_site_transient_timeout_browser_3112a0b665e8abab58bc13ec209ed821', '1564413585', 'no'),
(7328, '_site_transient_browser_3112a0b665e8abab58bc13ec209ed821', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"75.0.3770.142";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(7329, '_site_transient_timeout_php_check_5cc86f05623c0c7aed403ca34b000981', '1564413587', 'no'),
(7330, '_site_transient_php_check_5cc86f05623c0c7aed403ca34b000981', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:1;}', 'no'),
(7406, '_transient_timeout_villatheme_call', '1564257480', 'no'),
(7407, '_transient_villatheme_call', 'woo-multi-currency', 'no'),
(7497, '_transient_timeout_villatheme_notices', '1564169734', 'no'),
(7498, '_transient_villatheme_notices', 'a:0:{}', 'no'),
(7655, '_transient_timeout_yith_register_02c91bc3530df7dd2b59074dbeaae707', '1564171333', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(7656, '_transient_yith_register_02c91bc3530df7dd2b59074dbeaae707', 'a:2:{s:6:"Latest";s:6:"1.2.10";s:9:"changelog";s:13283:"\n		\n        <h4>Version 1.2.10 - Released: May 29, 2019</h4>\n        <ul>\n            <li>New: Show link email for upload on orders</li>\n            <li>Tweak: Added a load animation when the file is uploaded</li>\n            <li>Tweak: Deleted all commented code</li>\n            <li>Update: Plugin-fw</li>\n            <li> Dev: Action ywau_after_order_upload_link</li>\n        </ul>\n		<h4>Version 1.2.9 - Released: Apr 11, 2019</h4>\n        <ul>\n            <li>Fix: fixed an issue with missed files on the orders</li>\n        </ul>\n		 <h4>Version 1.2.8 - Released: Apr 09, 2019</h4>\n        <ul>\n            <li>New: support to WooCommerce 3.6.0 RC 1</li>\n            <li>Update: updated plugin FW</li>\n            <li>Update: updated Dutch language</li>\n            <li>Update: updated Spanish language</li>\n            <li>Dev: check if files exist to rename the files</li>\n        </ul>\n\n		 <h4>Version 1.2.7 - Released: Feb 19, 2019</h4>\n        <ul>\n            <li>Update: updated plugin FW</li>\n            <li>Update: updated Dutch language</li>\n            <li>Update: updated Italian language</li>\n        </ul>\n\n		 <h4>Version 1.2.6 - Released: Dec 13, 2018</h4>\n        <ul>\n            <li>Update: updating plugin FW</li>\n            <li>Fix: fixing a possible issue with a new filter</li>\n        </ul>\n\n        <h4>Version 1.2.5 - Released: Dec 07, 2018</h4>\n        <ul>\n            <li>New: support to WordPress 5.0</li>\n            <li>Update: plugin core to version 3.1.6</li>\n            <li>Update: Italian language</li>\n            <li>Dev: new filter \'ywau_src_pretty_photo_script\'</li>\n        </ul>    \n\n		<h4>Version 1.2.4 - Released: Oct 23, 2018</h4>\n        <ul>\n            <li>Update: plugin framework</li>\n    		<li>Update: plugin description</li>\n    		<li>Update: plugin links</li>\n        </ul>\n\n		<h4>Version 1.2.3 - Released: Oct 17, 2018</h4>\n        <ul>\n            <li>New: Support to WooCommerce 3.5.0</li>\n    		<li>New: added a new option to enable the variation uploads by default</li>\n    		<li>New: Two options to automatically accept the the upload file or the order or upload file of the product on the order created</li>\n			<li>Tweak: new action links and plugin row meta in admin manage plugins page</li>\n			<li>Update: Dutch language</li>\n			<li>Update: Spanish language</li>\n			<li>Update: updated the official documentation url of the plugin</li>\n			<li>Update: updating the main rules settings name</li>\n			<li>Update: Updating Plugin FrameWork</li>\n			<li>Fix: Add uploaded file to the order when the option "Allow on cart" is not activated</li>\n			<li>Fix: Upload buttons for cart items after updating the cart by ajax</li>\n			<li>Fix: multiple uploads for variations</li>\n			<li>Dev: checking YITH_Privacy_Plugin_Abstract for old plugin-fw versions</li>\n			<li>Dev: commented code to allow the thank you message</li>\n			<li>Dev: added filter to the email rejected and accepted message</li>\n			<li>Dev: improve function get_instance()</li>\n			<li>Dev: added a class when file is accepted or rejected by admin</li>\n        </ul>\n\n		<h4>Version 1.2.2 - Released: May 29, 2018</h4>\n        <ul>\n            <li>New: Support to WooCommerce 3.4.0</li>\n    		<li>New: Support to GDPR compliance</li>\n    		<li>Tweak: filter to customize email admin after upload a file</li>\n			<li>Update: dutch language</li>\n			<li>Update: documentation link of the plugin</li>\n			<li>Fix: Wrong string domains</li>\n			<li>Dev: added an argument to a filter</li>\n        </ul>\n\n        <h4>Version 1.2.1 - Released: Jan 31, 2018</h4>\n        <ul>\n            <li>Update: plugin framweork 3.0.11</li>\n            <li>New: support to WooCommerce 3.3.x</li>\n        </ul>\n\n        <h4>Version 1.2.0 - Released: Jan 04, 2018</h4>\n        <ul>\n            <li>New: dutch translation</li>\n            <li>Update: plugin framework to the version 3.0.5</li>\n            <li>Dev: new filter \'yith_ywau_notes_frontend_label\'</li>\n        </ul>\n\n        <h4>Version 1.1.30 - Released: Aug 01, 2017</h4>\n        <ul>\n            <li>Dev: added filter \'ywau_link_class_message\' to change the class of upload link</li>\n            <li>Fix: prevent error for corrupted files</li>\n            <li>Fix: order upload text option not used</li>\n        </ul>\n\n        <h4>Version 1.1.29 - Released: July 19, 2017</h4>\n        <ul>\n            <li>Fix: accept/reject uploads issue</li>\n        </ul>\n\n        <h4>Version 1.1.28 - Released: July 18, 2017</h4>\n        <ul>\n            <li>Fix: subject and email heading fields not always getting the selected value</li>\n			<li>Update: plugin core framework</li>\n        </ul>\n\n        <h4>Version 1.1.27 - Released: July 06, 2017</h4>\n        <ul>\n            <li>New: support for WooCommerce 3.1</li>\n            <li>New: tested up to WordPress 4.8</li>\n            <li>Update: YITH Plugin Framework</li>\n        </ul>\n\n        <h4>Version 1.1.26 - Released: Jun 28, 2017</h4>\n        <ul>\n            <li>New: set the message to be shown in cart/checkout page when using the order upload</li>\n			<li>Update: language files</li>\n        </ul>\n\n        <h4>Version 1.1.25 - Released: May 19, 2017</h4>\n        <ul>\n            <li>Fix: Illegal string offset error when uploading a file to the cart</li>\n			<li>Fix: conflict with YITH Event Tickets</li>\n			<li>Tweak: prevent multiple emails notification for one order</li>\n        </ul>\n\n        <h4>Version 1.1.24 - Released: May 10, 2017</h4>\n        <ul>\n            <li>Fix: missing button for uploading files to the order</li>\n			<li>Fix: on cart page, upload status not updated after a successful upload</li>\n        </ul>\n\n        <h4>Version 1.1.23 - Released: May 04, 2017</h4>\n        <ul>\n            <li>Fix: uploaded images not flushed after a valid checkout</li>\n        </ul>\n\n        <h4>Version 1.1.22 - Released: Apr 26, 2017</h4>\n        <ul>\n            <li>Update: plugin-fw</li>\n            <li>unable to save variation rules.</li>\n        </ul>\n\n        <h4>Version 1.1.21 - Released: Apr 04, 2017</h4>\n        <ul>\n            <li>New: Support WooCommerce 3.0</li>\n            <li>Fix: YITH Plugin Framework initialization.</li>\n            <li>Fix: Unable to translate "Choose one of the following formats" string</li>\n        </ul>\n\n		 <h4>Version 1.1.20 - Released on Jan 02, 2017</h4>\n			<ul>\n				<li>Fixed: removed the upload link in emails</li>\n			</ul>\n         <h4>Version 1.1.19 - Released on Nov 23, 2016 </h4>\n            <ul>                \n				<li>Added: ready for WordPress 4.7</li>\n				<li>Added: two filters that let third party plugins or themes to choose if the upload is enabled for specific pages</li>\n            </ul>\n         <h4>Version 1.1.18 - Released on Nov 23, 2016 </h4>\n            <ul>                \n				<li>Tweaked: plugin scripts enqueued only in pages where the upload could be done, considering the plugin options and the product status</li>\n				<li>Fixed: upload button not visible in checkout page if cart visibility was set to false on plugin\'s options</li>\n            </ul>\n        <h4>Version 1.1.17 - Released on Aug 24, 2016 </h4>\n            <ul>\n                <li>Fixed: pop up in wrong position on checkout page</li>\n            </ul>\n        <h4>Version 1.1.16 - Released on Aug 23, 2016 </h4>\n            <ul>\n                <li>Fixed: duplicated uploaded files on orders now work fine</li>\n                <li>Fixed: action button for accepting or rejecting the uploaded file on orders now triggers the expected action</li>\n            </ul>\n        <h4>Version 1.1.15 - Released on July 04, 2016 </h4>\n            <ul>\n               <li>Fixed: do not shown empty div if the order do not have file uploaded</li>\n               <li>Fixed: do not show the old order as all file uploaded were accepted, if there isn\'t any file uploaded</li>\n            </ul>\n        <h4>Version 1.1.14 - Released on Jun 15, 2016 </h4>\n            <ul>\n               <li>Fixed: accept and reject button did not trigger the event</li>\n            </ul>\n        <h4>Version 1.1.13 - Released on Jun 13, 2016 </h4>\n            <ul>\n               <li>Added: WooCommerce 2.6 100% compatible</li>\n               <li>Added: spanish localization</li>\n            </ul>\n        <h4>Version 1.1.12 - Released on May 09, 2016 </h4>\n            <ul>\n                <li>Added: WPML compatibility for "disabled upload" for translated products</li>\n                <li>Fixed: the upload action based on the order status do not work for uploads associated to the order</li>\n            </ul>\n		<h4>Version 1.1.11 - Released on Apr 29, 2016 </h4>\n            <ul>\n                <li>Fixed: the uploaded files were not associated to the order is both order and product uploads option was set</li>\n                <li>Fixed: the upload button for orders was not displayed on thankyou page</li>\n            </ul>\n		<h4>Version 1.1.10 - Released on Apr 27, 2016 </h4>\n            <ul>\n                <li> Added: admin can choose if the upload rules have to be used only for products, only for orders or for both of them</li>\n                <li> Fixed: the upload rule for orders are shown on cart event if the related option is disabled</li>\n            </ul>\n		<h4>Version 1.1.9 - Released on Apr 26, 2016 </h4>\n            <ul>\n                <li>Fixed: the upload fails for some file extensions</li>\n                <li>Updated: yith-woocommerce-additional-uploads.pot file</li>\n            </ul>\n		<h4>Version 1.1.8 - Released on Apr 20, 2016 </h4>\n            <ul>\n                <li>Added: let your customer to upload files attached to the whole order</li>\n                <li>Updated: support to WP 4.5</li>\n                <li>Updated: YITH Plugin FW</li>\n            </ul>\n		<h4>Version 1.1.7 - Released on Mar 14, 2016 </h4>\n            <ul>\n                <li>Fixed: script syntax issues on long rule description</li>\n            </ul>\n		 <h4>Version 1.1.6 - Released on Mar 10, 2016 </h4>\n            <ul>\n                <li>Added: option that let the customer upload a file from my-account page</li>\n            </ul>\n		 <h4>Version 1.1.5 - Released on Mar 08, 2016 </h4>\n            <ul>\n                <li>Updated: sent email on file uploaded by the customer</li>\n                <li>Updated: yith-woocommerce-additional-uploads.pot file</li>\n                <li>Added: action yith_ywau_email_file_uploaded_order_item on email that notify file uploaded</li>\n            </ul>\n		<h4>Version 1.1.4 - Released on Feb 08, 2016 </h4>\n            <ul>\n                <li>Fixed: jQuery script that shows the upload rules on cart page</li>\n            </ul>\n		 <h4>Version 1.1.3 - Released on Jan 25, 2016 </h4>\n            <ul>\n                <li>Fixed: unable to modify a file if it was rejected</li>\n            </ul>\n		<h4>Version 1.1.2 - Released on Jan 22, 2016 </h4>\n            <ul>\n                <li>Fixed: upload fails when the option Storing mode is set to "order number"</li>\n            </ul>\n		<h4>Version 1.1.1 - Released on Jan 20, 2016 </h4>\n            <ul>\n                <li>Fixed: some layout issue</li>\n            </ul>\n		<h4>Version 1.1.0 - Released on Jan 18, 2016 </h4>\n            <ul>\n                <li>Updated: plugin ready for WooCommerce 2.5</li>\n                <li>Fixed: some method call fails with PHP prior than 5.6</li>\n            </ul>\n		<h4>Version 1.0.8 - Released on Dec 18, 2015 </h4>\n            <ul>\n                <li>Fixed: deleting uploaded file fails on simple products</li>\n            </ul>\n		<h4>Version 1.0.7 - Released on Nov 23, 2015 </h4>\n            <ul>\n                <li>Updated: script enqueue priority changed to 199 to ensure PrettyPhoto will be registered</li>\n                <li>Updated: changed action used for YITH Plugin FW loading from after_setup_theme to plugins_loaded</li>\n            </ul>\n		<h4>Version 1.0.6 - Released on Nov 03, 2015 </h4>\n            <ul>\n                <li>Fix: totals on checkout page doesn\'t update changing shipping methods</li>\n            </ul>\n		<h4>Version 1.0.5 - Released on Oct 29, 2015 </h4>\n            <ul>\n                <li>Added: Separated lines in cart for multiple items of same product</li>\n                <li>Update: YITH plugin framework</li>\n            </ul>\n		<h4>Version 1.0.4 - Released on Oct 26, 2015 </h4>\n            <ul>\n                <li>Fix: wrong file path used while including emogrifier.php file</li>\n            </ul>\n        <h4>Version 1.0.3 - Released on Oct 06, 2015 </h4>\n            <ul>\n                <li>Fix: files attached to variation not downloadable</li>\n            </ul>\n		<h4>VERSION 1.0.2 - Released: Sept 17, 2015</h4>\n        <ul>\n            <li>Added: new option to allow file upload from checkout page or thank you page</li>\n            <li>Added: you can add different upload rules for each variation instead of using the same rules for any product variations.</li>\n            <li>Added: users can edit uploaded files even from cart page.</li>\n        </ul>\n		<h4>VERSION 1.0.1 - Released: Sept 01, 2015</h4>\n        <ul>\n            <li>Fix: removed deprecated woocommerce_update_option_X hook.</li>\n        </ul>\n		<h4>VERSION 1.0.0 - Released: Aug 14, 2015</h4>\n        <ul>\n            <li>Initial Release</li>\n        </ul>\n		\n    ";}', 'no'),
(7659, '_site_transient_timeout_theme_roots', '1564168814', 'no'),
(7660, '_site_transient_theme_roots', 'a:4:{s:8:"tugruero";s:7:"/themes";s:14:"twentynineteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(7663, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:5:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip";s:6:"locale";s:5:"es_ES";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_ES/wordpress-5.2.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.2";s:7:"version";s:5:"5.2.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.2.1";s:7:"version";s:5:"5.2.1";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:4;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-5.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-5.2.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"5.2";s:7:"version";s:3:"5.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1564167021;s:15:"version_checked";s:5:"5.1.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-24 08:04:25";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/es_ES.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(7664, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1564167023;s:7:"checked";a:4:{s:8:"tugruero";s:5:"1.0.0";s:14:"twentynineteen";s:3:"1.3";s:15:"twentyseventeen";s:3:"2.1";s:13:"twentysixteen";s:3:"1.9";}s:8:"response";a:3:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.1.4.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentyseventeen";a:6:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.2";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:13:"twentysixteen";a:6:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip";s:8:"requires";s:3:"4.4";s:12:"requires_php";s:5:"5.2.4";}}s:12:"translations";a:0:{}}', 'no'),
(7665, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1564167024;s:7:"checked";a:19:{s:30:"advanced-custom-fields/acf.php";s:6:"5.7.12";s:47:"woo-order-export-lite/woo-order-export-lite.php";s:5:"2.1.1";s:19:"akismet/akismet.php";s:5:"4.1.1";s:56:"woo-checkout-field-editor-pro/checkout-form-designer.php";s:5:"1.3.2";s:33:"classic-editor/classic-editor.php";s:3:"1.4";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.1.1";s:19:"woo-doc/woo-doc.php";s:3:"0.3";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.6.1";s:29:"easy-wp-smtp/easy-wp-smtp.php";s:7:"1.3.9.1";s:53:"flexible-checkout-fields/flexible-checkout-fields.php";s:5:"1.9.2";s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";s:6:"2.1.15";s:41:"woo-multi-currency/woo-multi-currency.php";s:7:"2.1.3.3";s:79:"custom-registration-form-builder-with-submission-manager/registration_magic.php";s:7:"4.5.4.0";s:33:"theme-my-login/theme-my-login.php";s:6:"7.0.13";s:27:"woocommerce/woocommerce.php";s:5:"3.6.2";s:37:"woocommerce-ajax-cart/wooajaxcart.php";s:5:"1.3.1";s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";s:5:"4.2.6";s:49:"wp-multi-step-checkout/wp-multi-step-checkout.php";s:4:"1.18";s:41:"yith-woocommerce-uploads-premium/init.php";s:6:"1.2.10";}s:8:"response";a:16:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.8.2";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.2.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:3:"5.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:47:"woo-order-export-lite/woo-order-export-lite.php";O:8:"stdClass":12:{s:2:"id";s:35:"w.org/plugins/woo-order-export-lite";s:4:"slug";s:21:"woo-order-export-lite";s:6:"plugin";s:47:"woo-order-export-lite/woo-order-export-lite.php";s:11:"new_version";s:5:"3.0.1";s:3:"url";s:52:"https://wordpress.org/plugins/woo-order-export-lite/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woo-order-export-lite.3.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:74:"https://ps.w.org/woo-order-export-lite/assets/icon-256x256.png?rev=1365554";s:2:"1x";s:74:"https://ps.w.org/woo-order-export-lite/assets/icon-128x128.png?rev=1365560";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:5:"5.4.0";s:13:"compatibility";O:8:"stdClass":0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:56:"woo-checkout-field-editor-pro/checkout-form-designer.php";O:8:"stdClass":12:{s:2:"id";s:43:"w.org/plugins/woo-checkout-field-editor-pro";s:4:"slug";s:29:"woo-checkout-field-editor-pro";s:6:"plugin";s:56:"woo-checkout-field-editor-pro/checkout-form-designer.php";s:11:"new_version";s:5:"1.3.4";s:3:"url";s:60:"https://wordpress.org/plugins/woo-checkout-field-editor-pro/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/woo-checkout-field-editor-pro.zip";s:5:"icons";a:2:{s:2:"2x";s:82:"https://ps.w.org/woo-checkout-field-editor-pro/assets/icon-256x256.png?rev=1821155";s:2:"1x";s:82:"https://ps.w.org/woo-checkout-field-editor-pro/assets/icon-128x128.png?rev=1821155";}s:7:"banners";a:2:{s:2:"2x";s:85:"https://ps.w.org/woo-checkout-field-editor-pro/assets/banner-1544x500.png?rev=1975484";s:2:"1x";s:84:"https://ps.w.org/woo-checkout-field-editor-pro/assets/banner-772x250.png?rev=1975484";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"classic-editor/classic-editor.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:3:"1.5";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.1.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":12:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.6.2";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.2.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}s:53:"flexible-checkout-fields/flexible-checkout-fields.php";O:8:"stdClass":12:{s:2:"id";s:38:"w.org/plugins/flexible-checkout-fields";s:4:"slug";s:24:"flexible-checkout-fields";s:6:"plugin";s:53:"flexible-checkout-fields/flexible-checkout-fields.php";s:11:"new_version";s:5:"2.0.4";s:3:"url";s:55:"https://wordpress.org/plugins/flexible-checkout-fields/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/flexible-checkout-fields.2.0.4.zip";s:5:"icons";a:2:{s:2:"2x";s:77:"https://ps.w.org/flexible-checkout-fields/assets/icon-256x256.png?rev=1491617";s:2:"1x";s:77:"https://ps.w.org/flexible-checkout-fields/assets/icon-128x128.png?rev=1491617";}s:7:"banners";a:2:{s:2:"2x";s:80:"https://ps.w.org/flexible-checkout-fields/assets/banner-1544x500.png?rev=1491617";s:2:"1x";s:79:"https://ps.w.org/flexible-checkout-fields/assets/banner-772x250.png?rev=1491617";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:3:"5.6";s:13:"compatibility";O:8:"stdClass":0:{}}s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";O:8:"stdClass":12:{s:2:"id";s:39:"w.org/plugins/mailchimp-for-woocommerce";s:4:"slug";s:25:"mailchimp-for-woocommerce";s:6:"plugin";s:51:"mailchimp-for-woocommerce/mailchimp-woocommerce.php";s:11:"new_version";s:6:"2.1.17";s:3:"url";s:56:"https://wordpress.org/plugins/mailchimp-for-woocommerce/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.17.zip";s:5:"icons";a:2:{s:2:"2x";s:78:"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501";s:2:"1x";s:78:"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501";}s:7:"banners";a:2:{s:2:"2x";s:81:"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415";s:2:"1x";s:80:"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.1.1";s:12:"requires_php";s:3:"7.0";s:13:"compatibility";O:8:"stdClass":0:{}}s:41:"woo-multi-currency/woo-multi-currency.php";O:8:"stdClass":12:{s:2:"id";s:32:"w.org/plugins/woo-multi-currency";s:4:"slug";s:18:"woo-multi-currency";s:6:"plugin";s:41:"woo-multi-currency/woo-multi-currency.php";s:11:"new_version";s:7:"2.1.3.5";s:3:"url";s:49:"https://wordpress.org/plugins/woo-multi-currency/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woo-multi-currency.zip";s:5:"icons";a:2:{s:2:"2x";s:71:"https://ps.w.org/woo-multi-currency/assets/icon-256x256.jpg?rev=2094434";s:2:"1x";s:71:"https://ps.w.org/woo-multi-currency/assets/icon-128x128.jpg?rev=2094434";}s:7:"banners";a:2:{s:2:"2x";s:74:"https://ps.w.org/woo-multi-currency/assets/banner-1544x500.jpg?rev=2094434";s:2:"1x";s:73:"https://ps.w.org/woo-multi-currency/assets/banner-772x250.jpg?rev=2094434";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:79:"custom-registration-form-builder-with-submission-manager/registration_magic.php";O:8:"stdClass":13:{s:2:"id";s:70:"w.org/plugins/custom-registration-form-builder-with-submission-manager";s:4:"slug";s:56:"custom-registration-form-builder-with-submission-manager";s:6:"plugin";s:79:"custom-registration-form-builder-with-submission-manager/registration_magic.php";s:11:"new_version";s:7:"4.5.7.2";s:3:"url";s:87:"https://wordpress.org/plugins/custom-registration-form-builder-with-submission-manager/";s:7:"package";s:99:"https://downloads.wordpress.org/plugin/custom-registration-form-builder-with-submission-manager.zip";s:5:"icons";a:2:{s:2:"2x";s:109:"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/icon-256x256.png?rev=2049638";s:2:"1x";s:109:"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/icon-128x128.png?rev=2049638";}s:7:"banners";a:1:{s:2:"1x";s:111:"https://ps.w.org/custom-registration-form-builder-with-submission-manager/assets/banner-772x250.jpg?rev=2081490";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:118:"<ul>\n<li>UI Improvements in admin area</li>\n<li>Changes to sample form</li>\n<li>New eSignature field added!</li>\n</ul>";s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:3:"5.6";s:13:"compatibility";O:8:"stdClass":0:{}}s:33:"theme-my-login/theme-my-login.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/theme-my-login";s:4:"slug";s:14:"theme-my-login";s:6:"plugin";s:33:"theme-my-login/theme-my-login.php";s:11:"new_version";s:6:"7.0.14";s:3:"url";s:45:"https://wordpress.org/plugins/theme-my-login/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/theme-my-login.7.0.14.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/theme-my-login/assets/icon-256x256.png?rev=1891232";s:2:"1x";s:67:"https://ps.w.org/theme-my-login/assets/icon-128x128.png?rev=1891232";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/theme-my-login/assets/banner-1544x500.png?rev=1891232";s:2:"1x";s:69:"https://ps.w.org/theme-my-login/assets/banner-772x250.png?rev=1891232";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":12:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.6.5";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.6.5.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:37:"woocommerce-ajax-cart/wooajaxcart.php";O:8:"stdClass":12:{s:2:"id";s:35:"w.org/plugins/woocommerce-ajax-cart";s:4:"slug";s:21:"woocommerce-ajax-cart";s:6:"plugin";s:37:"woocommerce-ajax-cart/wooajaxcart.php";s:11:"new_version";s:5:"1.3.4";s:3:"url";s:52:"https://wordpress.org/plugins/woocommerce-ajax-cart/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-ajax-cart.1.3.4.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/woocommerce-ajax-cart/assets/icon-128x128.png?rev=1186993";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.4";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";O:8:"stdClass":13:{s:2:"id";s:42:"w.org/plugins/woocommerce-checkout-manager";s:4:"slug";s:28:"woocommerce-checkout-manager";s:6:"plugin";s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";s:11:"new_version";s:3:"4.3";s:3:"url";s:59:"https://wordpress.org/plugins/woocommerce-checkout-manager/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/woocommerce-checkout-manager.4.3.zip";s:5:"icons";a:2:{s:2:"2x";s:81:"https://ps.w.org/woocommerce-checkout-manager/assets/icon-256x256.png?rev=1117298";s:2:"1x";s:81:"https://ps.w.org/woocommerce-checkout-manager/assets/icon-128x128.png?rev=1117298";}s:7:"banners";a:2:{s:2:"2x";s:84:"https://ps.w.org/woocommerce-checkout-manager/assets/banner-1544x500.png?rev=1117295";s:2:"1x";s:83:"https://ps.w.org/woocommerce-checkout-manager/assets/banner-772x250.png?rev=1117295";}s:11:"banners_rtl";a:0:{}s:14:"upgrade_notice";s:78:"<p>The 4.3 Plugin update addresses an arbitrary file upload vulnerability.</p>";s:6:"tested";s:5:"5.1.1";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:49:"wp-multi-step-checkout/wp-multi-step-checkout.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/wp-multi-step-checkout";s:4:"slug";s:22:"wp-multi-step-checkout";s:6:"plugin";s:49:"wp-multi-step-checkout/wp-multi-step-checkout.php";s:11:"new_version";s:3:"2.3";s:3:"url";s:53:"https://wordpress.org/plugins/wp-multi-step-checkout/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/wp-multi-step-checkout.2.3.zip";s:5:"icons";a:3:{s:2:"2x";s:75:"https://ps.w.org/wp-multi-step-checkout/assets/icon-256x256.png?rev=1783907";s:2:"1x";s:67:"https://ps.w.org/wp-multi-step-checkout/assets/icon.svg?rev=1783907";s:3:"svg";s:67:"https://ps.w.org/wp-multi-step-checkout/assets/icon.svg?rev=1783907";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/wp-multi-step-checkout/assets/banner-1544x500.png?rev=1783907";s:2:"1x";s:77:"https://ps.w.org/wp-multi-step-checkout/assets/banner-772x250.png?rev=1783907";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.2.2";s:12:"requires_php";s:5:"5.2.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:6:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"classic-editor";s:8:"language";s:5:"es_ES";s:7:"version";s:3:"1.4";s:7:"updated";s:19:"2019-02-02 16:28:51";s:7:"package";s:79:"https://downloads.wordpress.org/translation/plugin/classic-editor/1.4/es_ES.zip";s:10:"autoupdate";b:1;}i:1;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:19:"custom-post-type-ui";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"1.6.1";s:7:"updated";s:19:"2018-12-03 18:48:46";s:7:"package";s:86:"https://downloads.wordpress.org/translation/plugin/custom-post-type-ui/1.6.1/es_ES.zip";s:10:"autoupdate";b:1;}i:2;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:12:"easy-wp-smtp";s:8:"language";s:5:"es_ES";s:7:"version";s:7:"1.3.9.1";s:7:"updated";s:19:"2019-03-04 08:03:12";s:7:"package";s:81:"https://downloads.wordpress.org/translation/plugin/easy-wp-smtp/1.3.9.1/es_ES.zip";s:10:"autoupdate";b:1;}i:3;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"theme-my-login";s:8:"language";s:5:"es_ES";s:7:"version";s:6:"7.0.13";s:7:"updated";s:19:"2018-12-24 20:17:33";s:7:"package";s:82:"https://downloads.wordpress.org/translation/plugin/theme-my-login/7.0.13/es_ES.zip";s:10:"autoupdate";b:1;}i:4;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:11:"woocommerce";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"3.6.2";s:7:"updated";s:19:"2019-05-13 16:52:59";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/woocommerce/3.6.2/es_ES.zip";s:10:"autoupdate";b:1;}i:5;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:28:"woocommerce-checkout-manager";s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.6";s:7:"updated";s:19:"2019-01-14 00:48:02";s:7:"package";s:95:"https://downloads.wordpress.org/translation/plugin/woocommerce-checkout-manager/4.2.6/es_ES.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:1:{s:29:"easy-wp-smtp/easy-wp-smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/easy-wp-smtp";s:4:"slug";s:12:"easy-wp-smtp";s:6:"plugin";s:29:"easy-wp-smtp/easy-wp-smtp.php";s:11:"new_version";s:7:"1.3.9.1";s:3:"url";s:43:"https://wordpress.org/plugins/easy-wp-smtp/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/easy-wp-smtp.zip";s:5:"icons";a:1:{s:2:"1x";s:65:"https://ps.w.org/easy-wp-smtp/assets/icon-128x128.png?rev=1242044";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/easy-wp-smtp/assets/banner-772x250.png?rev=1650323";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(7667, '_site_transient_timeout_yith_seciton_edih_evomer', '1564296630', 'no'),
(7668, '_site_transient_yith_seciton_edih_evomer', '1', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '[text* your-name placeholder "Nombre y Apellido"][email* your-email placeholder "Correo Electrónico"][tel* tel-854 placeholder "Número de teléfono"][textarea your-message placeholder "Mensaje"]\n\n[submit "Contáctar"]'),
(4, 5, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:29:"TuGruero.com "[your-subject]"";s:6:"sender";s:41:"TuGruero.com <wordpress@tugruero.dev.com>";s:9:"recipient";s:22:"fidel.alejos@gmail.com";s:4:"body";s:195:"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\nCuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en TuGruero.com (http://tugruero.dev.com)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:29:"TuGruero.com "[your-subject]"";s:6:"sender";s:41:"TuGruero.com <wordpress@tugruero.dev.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:140:"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en TuGruero.com (http://tugruero.dev.com)";s:18:"additional_headers";s:32:"Reply-To: fidel.alejos@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(6, 5, '_messages', 'a:23:{s:12:"mail_sent_ok";s:40:"Gracias por tu mensaje. Ha sido enviado.";s:12:"mail_sent_ng";s:85:"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.";s:16:"validation_error";s:74:"Uno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.";s:4:"spam";s:85:"Hubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.";s:12:"accept_terms";s:69:"Debes aceptar los términos y condiciones antes de enviar tu mensaje.";s:16:"invalid_required";s:24:"El campo es obligatorio.";s:16:"invalid_too_long";s:28:"El campo es demasiado largo.";s:17:"invalid_too_short";s:28:"El campo es demasiado corto.";s:12:"invalid_date";s:34:"El formato de fecha es incorrecto.";s:14:"date_too_early";s:50:"La fecha es anterior a la más temprana permitida.";s:13:"date_too_late";s:50:"La fecha es posterior a la más tardía permitida.";s:13:"upload_failed";s:46:"Hubo un error desconocido subiendo el archivo.";s:24:"upload_file_type_invalid";s:52:"No tienes permisos para subir archivos de este tipo.";s:21:"upload_file_too_large";s:31:"El archivo es demasiado grande.";s:23:"upload_failed_php_error";s:43:"Se ha producido un error subiendo la imagen";s:14:"invalid_number";s:36:"El formato de número no es válido.";s:16:"number_too_small";s:45:"El número es menor que el mínimo permitido.";s:16:"number_too_large";s:45:"El número es mayor que el máximo permitido.";s:23:"quiz_answer_not_correct";s:44:"La respuesta al cuestionario no es correcta.";s:17:"captcha_not_match";s:37:"El código introducido es incorrecto.";s:13:"invalid_email";s:71:"La dirección de correo electrónico que has introducido no es válida.";s:11:"invalid_url";s:21:"La URL no es válida.";s:11:"invalid_tel";s:38:"El número de teléfono no es válido.";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'es_ES'),
(9, 10, '_wc_review_count', '0'),
(10, 10, '_wc_rating_count', 'a:0:{}'),
(11, 10, '_wc_average_rating', '0'),
(12, 10, '_edit_last', '1'),
(13, 10, '_edit_lock', '1557953832:1'),
(14, 10, '_sku', ''),
(15, 10, '_regular_price', '16'),
(16, 10, '_sale_price', ''),
(17, 10, '_sale_price_dates_from', ''),
(18, 10, '_sale_price_dates_to', ''),
(19, 10, 'total_sales', '22'),
(20, 10, '_tax_status', 'taxable'),
(21, 10, '_tax_class', ''),
(22, 10, '_manage_stock', 'no'),
(23, 10, '_backorders', 'no'),
(24, 10, '_low_stock_amount', ''),
(25, 10, '_sold_individually', 'no'),
(26, 10, '_weight', ''),
(27, 10, '_length', ''),
(28, 10, '_width', ''),
(29, 10, '_height', ''),
(30, 10, '_upsell_ids', 'a:0:{}'),
(31, 10, '_crosssell_ids', 'a:0:{}'),
(32, 10, '_purchase_note', ''),
(33, 10, '_default_attributes', 'a:0:{}'),
(34, 10, '_virtual', 'yes'),
(35, 10, '_downloadable', 'no'),
(36, 10, '_product_image_gallery', ''),
(37, 10, '_download_limit', '-1'),
(38, 10, '_download_expiry', '-1'),
(39, 10, '_stock', NULL),
(40, 10, '_stock_status', 'instock'),
(41, 10, '_product_version', '3.6.2'),
(42, 10, '_price', '16'),
(43, 10, '_regular_price_wmcp', '{"VES":""}'),
(44, 10, '_sale_price_wmcp', ''),
(45, 13, '_edit_lock', '1551922222:1'),
(128, 26, '_menu_item_type', 'custom'),
(129, 26, '_menu_item_menu_item_parent', '0'),
(130, 26, '_menu_item_object_id', '26'),
(131, 26, '_menu_item_object', 'custom'),
(132, 26, '_menu_item_target', ''),
(133, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 26, '_menu_item_xfn', ''),
(135, 26, '_menu_item_url', '/tugruero'),
(146, 32, '_menu_item_type', 'custom'),
(147, 32, '_menu_item_menu_item_parent', '0'),
(148, 32, '_menu_item_object_id', '32'),
(149, 32, '_menu_item_object', 'custom'),
(150, 32, '_menu_item_target', ''),
(151, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 32, '_menu_item_xfn', ''),
(153, 32, '_menu_item_url', '#planes'),
(164, 34, '_menu_item_type', 'custom'),
(165, 34, '_menu_item_menu_item_parent', '0'),
(166, 34, '_menu_item_object_id', '34'),
(167, 34, '_menu_item_object', 'custom'),
(168, 34, '_menu_item_target', ''),
(169, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 34, '_menu_item_xfn', ''),
(171, 34, '_menu_item_url', '#galeria'),
(173, 35, '_menu_item_type', 'custom'),
(174, 35, '_menu_item_menu_item_parent', '0'),
(175, 35, '_menu_item_object_id', '35'),
(176, 35, '_menu_item_object', 'custom'),
(177, 35, '_menu_item_target', ''),
(178, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 35, '_menu_item_xfn', ''),
(180, 35, '_menu_item_url', '#contacto'),
(191, 37, '_edit_last', '1'),
(192, 37, '_edit_lock', '1558105226:1'),
(193, 38, '_wp_attached_file', '2019/03/BANNER-01.png'),
(194, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:21:"2019/03/BANNER-01.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"BANNER-01-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"BANNER-01-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:21:"BANNER-01-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"BANNER-01-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"BANNER-01-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"BANNER-01-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"BANNER-01-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"BANNER-01-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:21:"BANNER-01-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"BANNER-01-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(195, 37, '_thumbnail_id', '38'),
(198, 40, '_edit_last', '1'),
(199, 40, '_edit_lock', '1558375827:1'),
(200, 41, '_wp_attached_file', '2019/03/Banner-02.png'),
(201, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:21:"2019/03/Banner-02.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Banner-02-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"Banner-02-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:21:"Banner-02-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:22:"Banner-02-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"Banner-02-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"Banner-02-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"Banner-02-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Banner-02-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:21:"Banner-02-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Banner-02-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(202, 40, '_thumbnail_id', '41'),
(203, 42, '_edit_last', '1'),
(204, 42, '_edit_lock', '1558104905:1'),
(205, 43, '_wp_attached_file', '2019/03/Banner-3.png'),
(206, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1085;s:4:"file";s:20:"2019/03/Banner-3.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Banner-3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Banner-3-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Banner-3-768x434.png";s:5:"width";i:768;s:6:"height";i:434;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"Banner-3-1024x579.png";s:5:"width";i:1024;s:6:"height";i:579;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"Banner-3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"Banner-3-600x339.png";s:5:"width";i:600;s:6:"height";i:339;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"Banner-3-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"Banner-3-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:20:"Banner-3-600x339.png";s:5:"width";i:600;s:6:"height";i:339;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"Banner-3-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(207, 42, '_thumbnail_id', '43'),
(208, 45, '_edit_last', '1'),
(209, 45, '_edit_lock', '1557012526:1'),
(210, 46, '_wp_attached_file', '2019/03/CALENDARIO.png'),
(211, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:22:"2019/03/CALENDARIO.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"CALENDARIO-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"CALENDARIO-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"CALENDARIO-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"CALENDARIO-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"CALENDARIO-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"CALENDARIO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"CALENDARIO-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:22:"CALENDARIO-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"CALENDARIO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(212, 45, '_thumbnail_id', '46'),
(213, 47, '_edit_last', '1'),
(214, 47, '_edit_lock', '1553309818:1'),
(215, 48, '_wp_attached_file', '2019/03/GRUAS.png'),
(216, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:17:"2019/03/GRUAS.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"GRUAS-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"GRUAS-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:17:"GRUAS-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:17:"GRUAS-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:17:"GRUAS-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"GRUAS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"GRUAS-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:17:"GRUAS-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"GRUAS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(217, 47, '_thumbnail_id', '48'),
(218, 49, '_edit_last', '1'),
(219, 49, '_edit_lock', '1553442396:1'),
(220, 50, '_wp_attached_file', '2019/03/UBICACIÓN.png'),
(221, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:22:"2019/03/UBICACIÓN.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"UBICACIÓN-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"UBICACIÓN-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"UBICACIÓN-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"UBICACIÓN-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"UBICACIÓN-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"UBICACIÓN-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"UBICACIÓN-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:22:"UBICACIÓN-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"UBICACIÓN-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(223, 51, '_edit_last', '1'),
(224, 51, '_edit_lock', '1554428186:1'),
(228, 52, '_edit_last', '1'),
(229, 52, '_edit_lock', '1553311061:1'),
(230, 53, '_wp_attached_file', '2019/03/EL-ESTIMULO.png'),
(231, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:197;s:6:"height";i:36;s:4:"file";s:23:"2019/03/EL-ESTIMULO.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"EL-ESTIMULO-150x36.png";s:5:"width";i:150;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"EL-ESTIMULO-100x36.png";s:5:"width";i:100;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"EL-ESTIMULO-100x36.png";s:5:"width";i:100;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(232, 52, '_thumbnail_id', '53'),
(233, 54, '_edit_last', '1'),
(234, 54, '_edit_lock', '1553311115:1'),
(235, 55, '_wp_attached_file', '2019/03/TOUCHFM.png'),
(236, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:118;s:6:"height";i:41;s:4:"file";s:19:"2019/03/TOUCHFM.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"TOUCHFM-100x41.png";s:5:"width";i:100;s:6:"height";i:41;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"TOUCHFM-100x41.png";s:5:"width";i:100;s:6:"height";i:41;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(237, 54, '_thumbnail_id', '55'),
(238, 56, '_edit_last', '1'),
(239, 56, '_edit_lock', '1553311155:1'),
(240, 57, '_wp_attached_file', '2019/03/KIS.png'),
(241, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:95;s:6:"height";i:44;s:4:"file";s:15:"2019/03/KIS.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(242, 56, '_thumbnail_id', '57'),
(243, 58, '_edit_last', '1'),
(244, 58, '_edit_lock', '1553311189:1'),
(245, 59, '_wp_attached_file', '2019/03/EL-NACIONAL.png'),
(246, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:158;s:6:"height";i:34;s:4:"file";s:23:"2019/03/EL-NACIONAL.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"EL-NACIONAL-150x34.png";s:5:"width";i:150;s:6:"height";i:34;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"EL-NACIONAL-100x34.png";s:5:"width";i:100;s:6:"height";i:34;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"EL-NACIONAL-100x34.png";s:5:"width";i:100;s:6:"height";i:34;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(247, 58, '_thumbnail_id', '59'),
(248, 60, '_edit_last', '1'),
(249, 60, '_edit_lock', '1553311249:1'),
(250, 61, '_wp_attached_file', '2019/03/EL-UNIVERSAL.png'),
(251, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:95;s:6:"height";i:64;s:4:"file";s:24:"2019/03/EL-UNIVERSAL.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(252, 60, '_thumbnail_id', '61'),
(253, 62, '_edit_last', '1'),
(254, 62, '_edit_lock', '1553311287:1'),
(255, 63, '_wp_attached_file', '2019/03/EXITOS.png'),
(256, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:118;s:6:"height";i:42;s:4:"file";s:18:"2019/03/EXITOS.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:17:"EXITOS-100x42.png";s:5:"width";i:100;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"EXITOS-100x42.png";s:5:"width";i:100;s:6:"height";i:42;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(257, 62, '_thumbnail_id', '63'),
(258, 64, '_edit_last', '1'),
(259, 64, '_edit_lock', '1553311321:1'),
(260, 65, '_wp_attached_file', '2019/03/EL-MUNDO.png'),
(261, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:119;s:6:"height";i:62;s:4:"file";s:20:"2019/03/EL-MUNDO.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"EL-MUNDO-100x62.png";s:5:"width";i:100;s:6:"height";i:62;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"EL-MUNDO-100x62.png";s:5:"width";i:100;s:6:"height";i:62;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(262, 64, '_thumbnail_id', '65'),
(263, 66, '_edit_last', '1'),
(264, 66, '_edit_lock', '1553311364:1'),
(265, 67, '_wp_attached_file', '2019/03/UNION-RADIO.png'),
(266, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:52;s:6:"height";i:64;s:4:"file";s:23:"2019/03/UNION-RADIO.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(267, 66, '_thumbnail_id', '67'),
(268, 68, '_edit_last', '1'),
(269, 68, '_edit_lock', '1553311398:1'),
(270, 69, '_wp_attached_file', '2019/03/PRODUCTO.png'),
(271, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:158;s:6:"height";i:39;s:4:"file";s:20:"2019/03/PRODUCTO.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"PRODUCTO-150x39.png";s:5:"width";i:150;s:6:"height";i:39;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"PRODUCTO-100x39.png";s:5:"width";i:100;s:6:"height";i:39;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"PRODUCTO-100x39.png";s:5:"width";i:100;s:6:"height";i:39;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(272, 68, '_thumbnail_id', '69'),
(273, 70, '_edit_last', '1'),
(274, 70, '_edit_lock', '1553311434:1'),
(275, 71, '_wp_attached_file', '2019/03/TODO-EN-DOMINGO.png'),
(276, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:158;s:6:"height";i:25;s:4:"file";s:27:"2019/03/TODO-EN-DOMINGO.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"TODO-EN-DOMINGO-150x25.png";s:5:"width";i:150;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"TODO-EN-DOMINGO-100x25.png";s:5:"width";i:100;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"TODO-EN-DOMINGO-100x25.png";s:5:"width";i:100;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(277, 70, '_thumbnail_id', '71'),
(278, 72, '_edit_last', '1'),
(279, 72, '_edit_lock', '1553311474:1'),
(280, 73, '_wp_attached_file', '2019/03/EL-EMPREDEDOR.png'),
(281, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:189;s:6:"height";i:31;s:4:"file";s:25:"2019/03/EL-EMPREDEDOR.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EL-EMPREDEDOR-150x31.png";s:5:"width";i:150;s:6:"height";i:31;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"EL-EMPREDEDOR-100x31.png";s:5:"width";i:100;s:6:"height";i:31;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"EL-EMPREDEDOR-100x31.png";s:5:"width";i:100;s:6:"height";i:31;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(282, 72, '_thumbnail_id', '73'),
(283, 74, '_edit_last', '1'),
(284, 74, '_edit_lock', '1553311515:1'),
(285, 75, '_wp_attached_file', '2019/03/LA-MEGA.png'),
(286, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:236;s:6:"height";i:26;s:4:"file";s:19:"2019/03/LA-MEGA.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"LA-MEGA-150x26.png";s:5:"width";i:150;s:6:"height";i:26;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"LA-MEGA-100x26.png";s:5:"width";i:100;s:6:"height";i:26;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"LA-MEGA-100x26.png";s:5:"width";i:100;s:6:"height";i:26;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(287, 74, '_thumbnail_id', '75'),
(288, 76, '_wp_attached_file', '2019/03/TESTIMONIOS.png'),
(289, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2019/03/TESTIMONIOS.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"TESTIMONIOS-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"TESTIMONIOS-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"TESTIMONIOS-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"TESTIMONIOS-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"TESTIMONIOS-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:23:"TESTIMONIOS-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"TESTIMONIOS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"TESTIMONIOS-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"TESTIMONIOS-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"TESTIMONIOS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(292, 51, '_thumbnail_id', '116'),
(293, 78, '_edit_last', '1'),
(294, 78, '_edit_lock', '1557248256:1'),
(295, 79, '_wp_attached_file', '2019/03/NUESTROS-PLANES.png'),
(296, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:27:"2019/03/NUESTROS-PLANES.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:28:"NUESTROS-PLANES-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"NUESTROS-PLANES-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"NUESTROS-PLANES-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(297, 78, '_thumbnail_id', '211'),
(298, 80, '_edit_last', '1'),
(299, 80, '_edit_lock', '1557247872:1'),
(300, 81, '_wp_attached_file', '2019/03/NUESTROS-SERVICIOS.png'),
(301, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:30:"2019/03/NUESTROS-SERVICIOS.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:31:"NUESTROS-SERVICIOS-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:30:"NUESTROS-SERVICIOS-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:30:"NUESTROS-SERVICIOS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(302, 80, '_thumbnail_id', '212'),
(303, 82, '_edit_last', '1'),
(304, 82, '_edit_lock', '1557248482:1'),
(305, 83, '_wp_attached_file', '2019/03/TUGRUEROCORPORATIVO.png'),
(306, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:31:"2019/03/TUGRUEROCORPORATIVO.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:32:"TUGRUEROCORPORATIVO-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"TUGRUEROCORPORATIVO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(307, 82, '_thumbnail_id', '213'),
(308, 84, '_edit_last', '1'),
(309, 84, '_edit_lock', '1557248640:1'),
(310, 85, '_wp_attached_file', '2019/03/BANNER-01-1.png'),
(311, 85, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:23:"2019/03/BANNER-01-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"BANNER-01-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"BANNER-01-1-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"BANNER-01-1-768x432.png";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"BANNER-01-1-1024x576.png";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"BANNER-01-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:23:"BANNER-01-1-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"BANNER-01-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"BANNER-01-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"BANNER-01-1-600x338.png";s:5:"width";i:600;s:6:"height";i:338;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"BANNER-01-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(312, 84, '_thumbnail_id', '214'),
(313, 87, '_edit_last', '1'),
(314, 87, '_edit_lock', '1557249236:1'),
(315, 87, '_thumbnail_id', '215'),
(316, 89, '_wp_attached_file', '2019/03/BÁSICO.png'),
(317, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:130;s:4:"file";s:19:"2019/03/BÁSICO.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"BÁSICO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"BÁSICO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(318, 10, '_thumbnail_id', '241'),
(319, 90, '_wc_review_count', '0'),
(320, 90, '_wc_rating_count', 'a:0:{}'),
(321, 90, '_wc_average_rating', '0'),
(322, 90, '_edit_last', '1'),
(323, 90, '_edit_lock', '1557953915:1'),
(324, 90, '_sku', ''),
(325, 90, '_regular_price', '23'),
(326, 90, '_sale_price', ''),
(327, 90, '_sale_price_dates_from', ''),
(328, 90, '_sale_price_dates_to', ''),
(329, 90, 'total_sales', '2'),
(330, 90, '_tax_status', 'taxable'),
(331, 90, '_tax_class', ''),
(332, 90, '_manage_stock', 'no'),
(333, 90, '_backorders', 'no'),
(334, 90, '_low_stock_amount', ''),
(335, 90, '_sold_individually', 'no'),
(336, 90, '_weight', ''),
(337, 90, '_length', ''),
(338, 90, '_width', ''),
(339, 90, '_height', ''),
(340, 90, '_upsell_ids', 'a:0:{}'),
(341, 90, '_crosssell_ids', 'a:0:{}'),
(342, 90, '_purchase_note', ''),
(343, 90, '_default_attributes', 'a:0:{}'),
(344, 90, '_virtual', 'yes'),
(345, 90, '_downloadable', 'no'),
(346, 90, '_product_image_gallery', ''),
(347, 90, '_download_limit', '-1'),
(348, 90, '_download_expiry', '-1'),
(349, 90, '_stock', NULL),
(350, 90, '_stock_status', 'instock'),
(351, 90, '_product_version', '3.6.2'),
(352, 90, '_price', '23'),
(353, 90, '_regular_price_wmcp', '{"VES":""}'),
(354, 90, '_sale_price_wmcp', ''),
(355, 91, '_wp_attached_file', '2019/03/PLUS.png'),
(356, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:128;s:4:"file";s:16:"2019/03/PLUS.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"PLUS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"PLUS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(357, 90, '_thumbnail_id', '243'),
(358, 92, '_wc_review_count', '0'),
(359, 92, '_wc_rating_count', 'a:0:{}'),
(360, 92, '_wc_average_rating', '0'),
(361, 92, '_edit_last', '1'),
(362, 92, '_edit_lock', '1564070237:1'),
(363, 93, '_wp_attached_file', '2019/03/GOLD.png'),
(364, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:134;s:4:"file";s:16:"2019/03/GOLD.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"GOLD-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"GOLD-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(365, 92, '_thumbnail_id', '242'),
(366, 92, '_sku', ''),
(367, 92, '_regular_price', '48'),
(368, 92, '_sale_price', ''),
(369, 92, '_sale_price_dates_from', ''),
(370, 92, '_sale_price_dates_to', ''),
(371, 92, 'total_sales', '0'),
(372, 92, '_tax_status', 'taxable'),
(373, 92, '_tax_class', ''),
(374, 92, '_manage_stock', 'no'),
(375, 92, '_backorders', 'no'),
(376, 92, '_low_stock_amount', ''),
(377, 92, '_sold_individually', 'no'),
(378, 92, '_weight', ''),
(379, 92, '_length', ''),
(380, 92, '_width', ''),
(381, 92, '_height', ''),
(382, 92, '_upsell_ids', 'a:0:{}'),
(383, 92, '_crosssell_ids', 'a:0:{}'),
(384, 92, '_purchase_note', ''),
(385, 92, '_default_attributes', 'a:0:{}'),
(386, 92, '_virtual', 'yes'),
(387, 92, '_downloadable', 'no'),
(388, 92, '_product_image_gallery', ''),
(389, 92, '_download_limit', '-1'),
(390, 92, '_download_expiry', '-1'),
(391, 92, '_stock', NULL),
(392, 92, '_stock_status', 'instock'),
(393, 92, '_product_version', '3.6.2'),
(394, 92, '_price', '48'),
(395, 92, '_regular_price_wmcp', '{"VES":""}'),
(396, 92, '_sale_price_wmcp', ''),
(397, 94, '_wp_attached_file', '2019/03/BÁSICO-1.png'),
(398, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:130;s:4:"file";s:21:"2019/03/BÁSICO-1.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"BÁSICO-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"BÁSICO-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(399, 95, '_edit_last', '1'),
(400, 95, '_edit_lock', '1553449226:1'),
(401, 51, 'cargo', 'Directivo del Club Grúas Venezuela\r\nen el Estado Anzoátegui'),
(402, 51, '_cargo', 'field_5c96ca5a5d048'),
(403, 97, '_wp_attached_file', '2019/03/logo1.png'),
(404, 98, '_wp_attached_file', '2019/03/logo1-1.png'),
(405, 99, '_edit_last', '1'),
(406, 99, '_edit_lock', '1557012341:1'),
(407, 104, '_edit_last', '1'),
(408, 104, '_edit_lock', '1553462511:1'),
(409, 104, 'telefono', '0212-123-45-67'),
(410, 104, '_telefono', 'field_5c96d22386674'),
(411, 104, 'ciudad', 'Caracas, Venezuela'),
(412, 104, '_ciudad', 'field_5c96d24286675'),
(413, 104, 'telefonos', '0500-GRUERO-0 (0500-478376-0) /\r\n0212-237.92.27'),
(414, 104, '_telefonos', 'field_5c96d26086676'),
(415, 104, 'numero_de_contingencia', '0424-135.75.79'),
(416, 104, '_numero_de_contingencia', 'field_5c96d2d386677'),
(417, 104, 'facebook', 'http://www.facebook.com'),
(418, 104, '_facebook', 'field_5c96d446ec66c'),
(419, 104, 'twitter', 'http://www.twitter.com'),
(420, 104, '_twitter', 'field_5c96d456ec66d'),
(421, 104, 'instagram', 'htttp://www.instagram.com'),
(422, 104, '_instagram', 'field_5c96d463ec66e'),
(423, 108, '_wp_attached_file', '2019/03/UBICACION.png'),
(424, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:21:"2019/03/UBICACION.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"UBICACION-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"UBICACION-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:21:"UBICACION-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"UBICACION-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"UBICACION-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"UBICACION-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"UBICACION-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:21:"UBICACION-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"UBICACION-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(425, 49, '_thumbnail_id', '108'),
(426, 104, 'planes_tu_gruero', 'Paga una vez y maneja tranquilo todo el año. Adquiere\r\ncualquiera de nuestros Planes de Gruas ilimitados\r\n(Básicos, Plus o Gold)'),
(427, 104, '_planes_tu_gruero', 'field_5c97a704823bb'),
(428, 104, 'servicios_particulares', 'Si no estas afiliado a nuestros planes, puedes llamar a \r\nnuestro Call Center y pagar el servicio de grua al momento\r\n(¡Tenemos los mejores precios!)'),
(429, 104, '_servicios_particulares', 'field_5c97a716823bc'),
(430, 111, '_edit_last', '1'),
(431, 111, '_edit_lock', '1554428186:1'),
(432, 111, 'cargo', 'Directivo del Club Grúas Venezuela\r\nen el Estado Lara'),
(433, 111, '_cargo', 'field_5c96ca5a5d048'),
(434, 112, '_edit_last', '1'),
(435, 112, '_edit_lock', '1554428187:1'),
(436, 112, 'cargo', 'Directivo del Club Grúas Venezuela\r\nen el Estado Anzoátegui'),
(437, 112, '_cargo', 'field_5c96ca5a5d048'),
(442, 111, '_thumbnail_id', '116'),
(443, 115, '_wp_attached_file', '2019/03/IMG_20180525_172101-copia.jpg'),
(444, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:37:"2019/03/IMG_20180525_172101-copia.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"IMG_20180525_172101-copia-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:37:"IMG_20180525_172101-copia-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"IMG_20180525_172101-copia-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(445, 116, '_wp_attached_file', '2019/03/649704-615x378-copia-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(446, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:378;s:6:"height";i:378;s:4:"file";s:34:"2019/03/649704-615x378-copia-1.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"649704-615x378-copia-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"649704-615x378-copia-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"649704-615x378-copia-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"649704-615x378-copia-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"649704-615x378-copia-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"649704-615x378-copia-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(447, 117, '_wp_attached_file', '2019/03/foto-1.png'),
(448, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:199;s:6:"height";i:199;s:4:"file";s:18:"2019/03/foto-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"foto-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"foto-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"foto-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(449, 112, '_thumbnail_id', '117'),
(450, 118, '_edit_last', '1'),
(451, 118, '_edit_lock', '1554428188:1'),
(452, 119, '_wp_attached_file', '2019/03/PhotoGrid_1553299951190.jpg'),
(453, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:35:"2019/03/PhotoGrid_1553299951190.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:35:"PhotoGrid_1553299951190-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"PhotoGrid_1553299951190-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(454, 118, '_thumbnail_id', '123'),
(455, 118, 'cargo', 'Directivo del Club Grúas Venezuela\r\nen el Estado Anzoátegui'),
(456, 118, '_cargo', 'field_5c96ca5a5d048'),
(457, 104, 'email', 'info@tugruero.io'),
(458, 104, '_email', 'field_5c97f523f5cdb'),
(459, 121, '_wp_attached_file', '2019/03/BÁSICO-2.png'),
(460, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:130;s:4:"file";s:21:"2019/03/BÁSICO-2.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"BÁSICO-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"BÁSICO-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(461, 122, '_wp_attached_file', '2019/03/BASICO.png'),
(462, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:129;s:6:"height";i:130;s:4:"file";s:18:"2019/03/BASICO.png";s:5:"sizes";a:2:{s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"BASICO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"BASICO-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(463, 123, '_wp_attached_file', '2019/03/BANNER-01-2.png'),
(464, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:998;s:6:"height";i:998;s:4:"file";s:23:"2019/03/BANNER-01-2.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"BANNER-01-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"BANNER-01-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"BANNER-01-2-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"BANNER-01-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:23:"BANNER-01-2-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"BANNER-01-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"BANNER-01-2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"BANNER-01-2-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"BANNER-01-2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(465, 124, '_wp_attached_file', '2019/03/Banner-02-1.png'),
(466, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:23:"2019/03/Banner-02-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Banner-02-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:23:"Banner-02-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:23:"Banner-02-1-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:25:"Banner-02-1-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:23:"Banner-02-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:23:"Banner-02-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"Banner-02-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"Banner-02-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:23:"Banner-02-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"Banner-02-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(467, 125, '_wp_attached_file', '2019/03/Banner-3-1.png'),
(468, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1084;s:6:"height";i:1084;s:4:"file";s:22:"2019/03/Banner-3-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Banner-3-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"Banner-3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Banner-3-1-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:24:"Banner-3-1-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:22:"Banner-3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:22:"Banner-3-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:22:"Banner-3-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"Banner-3-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:22:"Banner-3-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"Banner-3-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(469, 126, '_wp_attached_file', '2019/03/NUESTROS-SERVICIOS-1.png'),
(470, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1080;s:6:"height";i:1080;s:4:"file";s:32:"2019/03/NUESTROS-SERVICIOS-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:34:"NUESTROS-SERVICIOS-1-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"NUESTROS-SERVICIOS-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(471, 127, '_wp_attached_file', '2019/03/TUGRUEROCORPORATIVO-1.png'),
(472, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1084;s:6:"height";i:1084;s:4:"file";s:33:"2019/03/TUGRUEROCORPORATIVO-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:35:"TUGRUEROCORPORATIVO-1-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"TUGRUEROCORPORATIVO-1-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(473, 131, '_order_key', 'wc_order_ya2CGEWBXVAlO'),
(474, 131, '_customer_user', '1'),
(475, 131, '_payment_method', 'paypal'),
(476, 131, '_payment_method_title', 'PayPal'),
(477, 131, '_transaction_id', ''),
(478, 131, '_customer_ip_address', '127.0.0.1'),
(479, 131, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(480, 131, '_created_via', 'checkout'),
(481, 131, '_date_completed', ''),
(482, 131, '_completed_date', ''),
(483, 131, '_date_paid', ''),
(484, 131, '_paid_date', ''),
(485, 131, '_cart_hash', '5378a159ccebee0f59fee718a24190b5'),
(486, 131, '_billing_first_name', 'Fidel'),
(487, 131, '_billing_last_name', 'Aliaga'),
(488, 131, '_billing_company', ''),
(489, 131, '_billing_address_1', 'Av Miami'),
(490, 131, '_billing_address_2', 'Miami'),
(491, 131, '_billing_city', 'Atlanta'),
(492, 131, '_billing_state', 'GA'),
(493, 131, '_billing_postcode', '30301'),
(494, 131, '_billing_country', 'VE'),
(495, 131, '_billing_email', 'fidel.alejos@gmail.com'),
(496, 131, '_billing_phone', '4545454545'),
(497, 131, '_shipping_first_name', ''),
(498, 131, '_shipping_last_name', ''),
(499, 131, '_shipping_company', ''),
(500, 131, '_shipping_address_1', ''),
(501, 131, '_shipping_address_2', ''),
(502, 131, '_shipping_city', ''),
(503, 131, '_shipping_state', ''),
(504, 131, '_shipping_postcode', ''),
(505, 131, '_shipping_country', ''),
(506, 131, '_order_currency', 'USD'),
(507, 131, '_cart_discount', '0'),
(508, 131, '_cart_discount_tax', '0'),
(509, 131, '_order_shipping', '0.00'),
(510, 131, '_order_shipping_tax', '0'),
(511, 131, '_order_tax', '0'),
(512, 131, '_order_total', '16.00'),
(513, 131, '_order_version', '3.5.7'),
(514, 131, '_prices_include_tax', 'no'),
(515, 131, '_billing_address_index', 'Fidel Aliaga  Av Miami Miami Atlanta GA 30301 VE fidel.alejos@gmail.com 4545454545'),
(516, 131, '_shipping_address_index', '        '),
(531, 141, '_order_key', 'wc_order_6hcDv8YOY7j0R'),
(532, 141, '_customer_user', '0'),
(533, 141, '_payment_method', 'paypal'),
(534, 141, '_payment_method_title', 'PayPal'),
(535, 141, '_transaction_id', ''),
(536, 141, '_customer_ip_address', '127.0.0.1'),
(537, 141, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(538, 141, '_created_via', 'checkout'),
(539, 141, '_date_completed', ''),
(540, 141, '_completed_date', ''),
(541, 141, '_date_paid', ''),
(542, 141, '_paid_date', ''),
(543, 141, '_cart_hash', '73507ee3668ce08607712a6494e5e83d'),
(544, 141, '_billing_first_name', 'Fidel'),
(545, 141, '_billing_last_name', 'Aliaga'),
(546, 141, '_billing_company', 'dasdas'),
(547, 141, '_billing_address_1', 'Av Miami'),
(548, 141, '_billing_address_2', 'Miami'),
(549, 141, '_billing_city', 'Atlanta'),
(550, 141, '_billing_state', 'GA'),
(551, 141, '_billing_postcode', '30301'),
(552, 141, '_billing_country', 'VE'),
(553, 141, '_billing_email', 'fidel.alejos@gmail.com'),
(554, 141, '_billing_phone', '4145038322'),
(555, 141, '_shipping_first_name', ''),
(556, 141, '_shipping_last_name', ''),
(557, 141, '_shipping_company', ''),
(558, 141, '_shipping_address_1', ''),
(559, 141, '_shipping_address_2', ''),
(560, 141, '_shipping_city', ''),
(561, 141, '_shipping_state', ''),
(562, 141, '_shipping_postcode', ''),
(563, 141, '_shipping_country', ''),
(564, 141, '_order_currency', 'USD'),
(565, 141, '_cart_discount', '0'),
(566, 141, '_cart_discount_tax', '0'),
(567, 141, '_order_shipping', '0.00'),
(568, 141, '_order_shipping_tax', '0'),
(569, 141, '_order_tax', '0'),
(570, 141, '_order_total', '71.00'),
(571, 141, '_order_version', '3.5.7'),
(572, 141, '_prices_include_tax', 'no'),
(573, 141, '_billing_address_index', 'Fidel Aliaga dasdas Av Miami Miami Atlanta GA 30301 VE fidel.alejos@gmail.com 4145038322'),
(574, 141, '_shipping_address_index', '        '),
(575, 141, '_billing_myfield19', 'Pedro Perez'),
(576, 141, '_billing_myfield21', 'dasda'),
(577, 141, '_billing_myfield20', 'Femenino'),
(578, 141, '_billing_myfield22', '04145038322'),
(579, 141, '_billing_myfield23', '22186230'),
(580, 141, '_billing_myfield24', 'fidel.alejos@gmail.com'),
(581, 141, '_billing_myfield25', '18/08/1992'),
(582, 141, '_billing_myfield26', 'GA'),
(583, 141, '_billing_myfield27', 'Soltero/a'),
(584, 141, '_billing_myfield12', 'Automóvil'),
(585, 141, '_billing_myfield13', '1980'),
(586, 141, '_billing_myfield14', 'dasd'),
(587, 141, '_billing_myfield15', 'dads'),
(588, 141, '_billing_myfield16', 'dad'),
(589, 141, '_billing_myfield17', 'dad'),
(590, 141, '_billing_myfield18', 'Coupé'),
(591, 142, '_order_key', 'wc_order_pseuNAWxu0XVd'),
(592, 142, '_customer_user', '3'),
(593, 142, '_payment_method', 'bacs'),
(594, 142, '_payment_method_title', 'Transferencia bancaria directa'),
(595, 142, '_transaction_id', ''),
(596, 142, '_customer_ip_address', '127.0.0.1'),
(597, 142, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(598, 142, '_created_via', 'checkout'),
(599, 142, '_date_completed', ''),
(600, 142, '_completed_date', ''),
(601, 142, '_date_paid', ''),
(602, 142, '_paid_date', ''),
(603, 142, '_cart_hash', '74d305c37dec17a259ad020ee98775e1'),
(604, 142, '_billing_first_name', 'Fidel'),
(605, 142, '_billing_last_name', 'Aliaga'),
(606, 142, '_billing_company', 'dasd'),
(607, 142, '_billing_address_1', 'das'),
(608, 142, '_billing_address_2', 'dasd'),
(609, 142, '_billing_city', 'Barquisimeto'),
(610, 142, '_billing_state', 'Lara'),
(611, 142, '_billing_postcode', '3301'),
(612, 142, '_billing_country', 'VE'),
(613, 142, '_billing_email', 'fidel.aliaga@binaural.com.ve'),
(614, 142, '_billing_phone', '04145038322'),
(615, 142, '_shipping_first_name', ''),
(616, 142, '_shipping_last_name', ''),
(617, 142, '_shipping_company', ''),
(618, 142, '_shipping_address_1', ''),
(619, 142, '_shipping_address_2', ''),
(620, 142, '_shipping_city', ''),
(621, 142, '_shipping_state', ''),
(622, 142, '_shipping_postcode', ''),
(623, 142, '_shipping_country', ''),
(624, 142, '_order_currency', 'USD'),
(625, 142, '_cart_discount', '0'),
(626, 142, '_cart_discount_tax', '0'),
(627, 142, '_order_shipping', '0.00'),
(628, 142, '_order_shipping_tax', '0'),
(629, 142, '_order_tax', '0'),
(630, 142, '_order_total', '23.00'),
(631, 142, '_order_version', '3.5.7'),
(632, 142, '_prices_include_tax', 'no'),
(633, 142, '_billing_address_index', 'Fidel Aliaga dasd das dasd Barquisimeto Lara 3301 VE fidel.aliaga@binaural.com.ve 04145038322'),
(634, 142, '_shipping_address_index', '        '),
(635, 142, '_billing_myfield19', 'Fidel Aliaga'),
(636, 142, '_billing_myfield21', 'Aliaga'),
(637, 142, '_billing_myfield20', 'Femenino'),
(638, 142, '_billing_myfield22', '04145038322'),
(639, 142, '_billing_myfield23', '22186230'),
(640, 142, '_billing_myfield24', 'fidel.aliaga@binaural.com.ve'),
(641, 142, '_billing_myfield25', '18/08/1992'),
(642, 142, '_billing_myfield26', 'Lara'),
(643, 142, '_billing_myfield27', 'Soltero/a'),
(644, 142, '_billing_myfield12', 'Automóvil'),
(645, 142, '_billing_myfield13', '1980'),
(646, 142, '_billing_myfield14', 'ads'),
(647, 142, '_billing_myfield15', 'dasd'),
(648, 142, '_billing_myfield16', 'das'),
(649, 142, '_billing_myfield17', 'dasd'),
(650, 142, '_billing_myfield18', 'Coupé'),
(651, 142, '_recorded_sales', 'yes'),
(652, 142, '_recorded_coupon_usage_counts', 'yes'),
(653, 142, '_order_stock_reduced', 'yes'),
(654, 142, 'wmc_order_info', 'a:2:{s:3:"VEF";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(655, 143, '_order_key', 'wc_order_qqdAbAhfwj0Un'),
(656, 143, '_customer_user', '4'),
(657, 143, '_payment_method', 'bacs'),
(658, 143, '_payment_method_title', 'Transferencia bancaria directa'),
(659, 143, '_transaction_id', ''),
(660, 143, '_customer_ip_address', '127.0.0.1'),
(661, 143, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(662, 143, '_created_via', 'checkout'),
(663, 143, '_date_completed', ''),
(664, 143, '_completed_date', ''),
(665, 143, '_date_paid', ''),
(666, 143, '_paid_date', ''),
(667, 143, '_cart_hash', '74d305c37dec17a259ad020ee98775e1'),
(668, 143, '_billing_first_name', 'Fidel Aliaga'),
(669, 143, '_billing_last_name', 'Aliaga'),
(670, 143, '_billing_company', 'padre'),
(671, 143, '_billing_address_1', 'miami'),
(672, 143, '_billing_address_2', 'miami'),
(673, 143, '_billing_city', 'barquisimeto'),
(674, 143, '_billing_state', 'Lara'),
(675, 143, '_billing_postcode', '3301'),
(676, 143, '_billing_country', 'VE'),
(677, 143, '_billing_email', 'fidel@yopmail.com'),
(678, 143, '_billing_phone', '04145038322'),
(679, 143, '_shipping_first_name', ''),
(680, 143, '_shipping_last_name', ''),
(681, 143, '_shipping_company', ''),
(682, 143, '_shipping_address_1', ''),
(683, 143, '_shipping_address_2', ''),
(684, 143, '_shipping_city', ''),
(685, 143, '_shipping_state', ''),
(686, 143, '_shipping_postcode', ''),
(687, 143, '_shipping_country', ''),
(688, 143, '_order_currency', 'USD'),
(689, 143, '_cart_discount', '0'),
(690, 143, '_cart_discount_tax', '0'),
(691, 143, '_order_shipping', '0.00'),
(692, 143, '_order_shipping_tax', '0'),
(693, 143, '_order_tax', '0'),
(694, 143, '_order_total', '23.00'),
(695, 143, '_order_version', '3.5.7'),
(696, 143, '_prices_include_tax', 'no'),
(697, 143, '_billing_address_index', 'Fidel Aliaga Aliaga padre miami miami barquisimeto Lara 3301 VE fidel@yopmail.com 04145038322'),
(698, 143, '_shipping_address_index', '        '),
(699, 143, '_billing_myfield19', 'Fidel Aliaga'),
(700, 143, '_billing_myfield21', 'Aliaga'),
(701, 143, '_billing_myfield20', 'Femenino'),
(702, 143, '_billing_myfield22', '04145038322'),
(703, 143, '_billing_myfield23', '22186230'),
(704, 143, '_billing_myfield24', 'fidel@yopmail.com'),
(705, 143, '_billing_myfield25', '18/08/1992'),
(706, 143, '_billing_myfield26', 'Lara'),
(707, 143, '_billing_myfield27', 'Soltero/a'),
(708, 143, '_billing_myfield12', 'Automóvil'),
(709, 143, '_billing_myfield13', '1980'),
(710, 143, '_billing_myfield14', 'Ford'),
(711, 143, '_billing_myfield15', 'a4kjrr'),
(712, 143, '_billing_myfield16', 'Aveo'),
(713, 143, '_billing_myfield17', 'rojo'),
(714, 143, '_billing_myfield18', 'Coupé'),
(715, 143, '_recorded_sales', 'yes'),
(716, 143, '_recorded_coupon_usage_counts', 'yes'),
(717, 143, '_order_stock_reduced', 'yes'),
(718, 143, 'wmc_order_info', 'a:2:{s:3:"VEF";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(719, 146, '_edit_lock', '1561730456:1'),
(720, 146, '_edit_last', '1'),
(721, 146, '_wp_page_template', 'template-parts/content-plan.php'),
(722, 148, '_order_key', 'wc_order_sFwYrec7HpdWy'),
(723, 148, '_customer_user', '0'),
(724, 148, '_payment_method', 'bacs'),
(725, 148, '_payment_method_title', 'Transferencia bancaria directa'),
(726, 148, '_transaction_id', ''),
(727, 148, '_customer_ip_address', '127.0.0.1'),
(728, 148, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(729, 148, '_created_via', 'checkout'),
(730, 148, '_date_completed', ''),
(731, 148, '_completed_date', ''),
(732, 148, '_date_paid', ''),
(733, 148, '_paid_date', ''),
(734, 148, '_cart_hash', '2873c8233e21e86f6eeac55dee90c0c5'),
(735, 148, '_billing_first_name', 'dak'),
(736, 148, '_billing_last_name', 'akds'),
(737, 148, '_billing_company', ''),
(738, 148, '_billing_address_1', 'Av Miami'),
(739, 148, '_billing_address_2', 'Miami'),
(740, 148, '_billing_city', 'Atlanta'),
(741, 148, '_billing_state', 'GA'),
(742, 148, '_billing_postcode', '30301'),
(743, 148, '_billing_country', 'VE'),
(744, 148, '_billing_email', 'fidel.alejos@gmail.com'),
(745, 148, '_billing_phone', '5025522'),
(746, 148, '_shipping_first_name', ''),
(747, 148, '_shipping_last_name', ''),
(748, 148, '_shipping_company', ''),
(749, 148, '_shipping_address_1', ''),
(750, 148, '_shipping_address_2', ''),
(751, 148, '_shipping_city', ''),
(752, 148, '_shipping_state', ''),
(753, 148, '_shipping_postcode', ''),
(754, 148, '_shipping_country', ''),
(755, 148, '_order_currency', 'VEF'),
(756, 148, '_cart_discount', '0'),
(757, 148, '_cart_discount_tax', '0'),
(758, 148, '_order_shipping', '0.00'),
(759, 148, '_order_shipping_tax', '0'),
(760, 148, '_order_tax', '0'),
(761, 148, '_order_total', '50490.00'),
(762, 148, '_order_version', '3.5.7'),
(763, 148, '_prices_include_tax', 'no'),
(764, 148, '_billing_address_index', 'dak akds  Av Miami Miami Atlanta GA 30301 VE fidel.alejos@gmail.com 5025522'),
(765, 148, '_shipping_address_index', '        '),
(766, 148, '_billing_myfield11', 'Femenino'),
(767, 148, '_billing_myfield12', '0414'),
(768, 148, '_billing_myfield13', 'V-'),
(769, 148, '_billing_myfield14', '22186230'),
(770, 148, '_billing_myfield15', '18/08/1992'),
(771, 148, '_billing_myfield16', 'Soltera/o'),
(772, 148, '_billing_myfield17', 'Si'),
(773, 148, '_billing_myfield18', 'Automóvil'),
(774, 148, '_billing_myfield19', '1980'),
(775, 148, '_billing_myfield20', 'Acura'),
(776, 148, '_billing_myfield21', 'sada'),
(777, 148, '_billing_myfield22', 'Modelo 1'),
(778, 148, '_billing_myfield23', 'dasda'),
(779, 148, '_billing_myfield24', 'Coupé'),
(780, 148, '_recorded_sales', 'yes'),
(781, 148, '_recorded_coupon_usage_counts', 'yes'),
(782, 148, '_order_stock_reduced', 'yes'),
(783, 148, 'wmc_order_info', 'a:2:{s:3:"VEF";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(784, 149, '_edit_lock', '1557240862:1'),
(785, 149, '_edit_last', '1'),
(786, 150, '_edit_lock', '1557240849:1'),
(787, 150, '_edit_last', '1'),
(788, 151, '_edit_lock', '1557241024:1'),
(789, 151, '_edit_last', '1'),
(790, 152, '_edit_lock', '1555634507:1'),
(791, 152, '_edit_last', '1'),
(792, 152, '_wp_page_template', 'template-parts/content-faq.php'),
(793, 154, '_menu_item_type', 'post_type'),
(794, 154, '_menu_item_menu_item_parent', '0'),
(795, 154, '_menu_item_object_id', '152'),
(796, 154, '_menu_item_object', 'page'),
(797, 154, '_menu_item_target', ''),
(798, 154, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(799, 154, '_menu_item_xfn', ''),
(800, 154, '_menu_item_url', ''),
(802, 156, '_edit_lock', '1555637863:1'),
(803, 156, '_edit_last', '1'),
(804, 92, 'precio_anterior_bs', '160000'),
(805, 92, '_precio_anterior_bs', 'field_5cb922a15691d'),
(806, 92, 'precio_anterior_$', '60'),
(807, 92, '_precio_anterior_$', 'field_5cb922eb6ab94'),
(808, 90, 'precio_anterior_bs', '80000'),
(809, 90, '_precio_anterior_bs', 'field_5cb922a15691d'),
(810, 90, 'precio_anterior_$', '30'),
(811, 90, '_precio_anterior_$', 'field_5cb922eb6ab94'),
(812, 10, 'precio_anterior_bs', '60000'),
(813, 10, '_precio_anterior_bs', 'field_5cb922a15691d'),
(814, 10, 'precio_anterior_$', '20'),
(815, 10, '_precio_anterior_$', 'field_5cb922eb6ab94'),
(816, 90, 'precio_anterior_dolar', '29'),
(817, 90, '_precio_anterior_dolar', 'field_5cb922eb6ab94'),
(818, 10, 'precio_anterior_dolar', '20'),
(819, 10, '_precio_anterior_dolar', 'field_5cb922eb6ab94'),
(820, 92, 'precio_anterior_dolar', '52'),
(821, 92, '_precio_anterior_dolar', 'field_5cb922eb6ab94'),
(831, 160, '_order_key', 'wc_order_oBqhb1tEETisd'),
(832, 160, '_customer_user', '0'),
(833, 160, '_payment_method', 'bacs'),
(834, 160, '_payment_method_title', 'Transferencia bancaria directa'),
(835, 160, '_transaction_id', ''),
(836, 160, '_customer_ip_address', '127.0.0.1'),
(837, 160, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(838, 160, '_created_via', 'checkout'),
(839, 160, '_date_completed', ''),
(840, 160, '_completed_date', ''),
(841, 160, '_date_paid', '1556012770'),
(842, 160, '_paid_date', '2019-04-23 11:46:10'),
(843, 160, '_cart_hash', '5b84108895821b5e0011cd358cfc851a'),
(844, 160, '_billing_first_name', 'Fidel'),
(845, 160, '_billing_last_name', 'Aliaga'),
(846, 160, '_billing_company', ''),
(847, 160, '_billing_address_1', 'Av Miami'),
(848, 160, '_billing_address_2', 'Miami'),
(849, 160, '_billing_city', 'Atlanta'),
(850, 160, '_billing_state', 'GA'),
(851, 160, '_billing_postcode', '30301'),
(852, 160, '_billing_country', 'VE'),
(853, 160, '_billing_email', 'fidel.alejos@gmail.com'),
(854, 160, '_billing_phone', '5038322'),
(855, 160, '_shipping_first_name', ''),
(856, 160, '_shipping_last_name', ''),
(857, 160, '_shipping_company', ''),
(858, 160, '_shipping_address_1', ''),
(859, 160, '_shipping_address_2', ''),
(860, 160, '_shipping_city', ''),
(861, 160, '_shipping_state', ''),
(862, 160, '_shipping_postcode', ''),
(863, 160, '_shipping_country', ''),
(864, 160, '_order_currency', 'USD'),
(865, 160, '_cart_discount', '0'),
(866, 160, '_cart_discount_tax', '0'),
(867, 160, '_order_shipping', '0.00'),
(868, 160, '_order_shipping_tax', '0'),
(869, 160, '_order_tax', '0'),
(870, 160, '_order_total', '48.00'),
(871, 160, '_order_version', '3.5.7'),
(872, 160, '_prices_include_tax', 'no'),
(873, 160, '_billing_address_index', 'Fidel Aliaga  Av Miami Miami Atlanta GA 30301 VE fidel.alejos@gmail.com 5038322'),
(874, 160, '_shipping_address_index', '        '),
(875, 160, '_billing_myfield11', 'Femenino'),
(876, 160, '_billing_myfield12', '0414'),
(877, 160, '_billing_myfield13', 'V-'),
(878, 160, '_billing_myfield14', '22186230'),
(879, 160, '_billing_myfield15', '18/08/1992'),
(880, 160, '_billing_myfield16', 'Soltera/o'),
(881, 160, '_billing_myfield17', 'Si'),
(882, 160, '_billing_myfield18', 'Automóvil'),
(883, 160, '_billing_myfield19', '1980'),
(884, 160, '_billing_myfield20', 'Acura'),
(885, 160, '_billing_myfield21', '45ww55'),
(886, 160, '_billing_myfield22', 'Modelo 1'),
(887, 160, '_billing_myfield23', 'eqwwq'),
(888, 160, '_billing_myfield24', 'Coupé'),
(889, 160, '_billing_options0', 'dad'),
(890, 160, '_billing_options1', 'ad'),
(891, 160, '_billing_options2', 'dadaww'),
(892, 160, '_recorded_sales', 'yes'),
(893, 160, '_recorded_coupon_usage_counts', 'yes'),
(894, 160, '_order_stock_reduced', 'yes'),
(895, 160, 'wmc_order_info', 'a:2:{s:3:"VEF";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(896, 160, '_edit_lock', '1559428128:1'),
(897, 148, '_edit_lock', '1556012442:1'),
(898, 160, '_download_permissions_granted', 'yes'),
(900, 163, '_order_key', 'wc_order_pQf0ldWqoH6av'),
(901, 163, '_customer_user', '0'),
(902, 163, '_payment_method', 'bacs'),
(903, 163, '_payment_method_title', 'Transferencia bancaria directa'),
(904, 163, '_transaction_id', ''),
(905, 163, '_customer_ip_address', '127.0.0.1'),
(906, 163, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(907, 163, '_created_via', 'checkout'),
(908, 163, '_date_completed', ''),
(909, 163, '_completed_date', ''),
(910, 163, '_date_paid', ''),
(911, 163, '_paid_date', ''),
(912, 163, '_cart_hash', 'a3896780afd6b7abc9c3db6f82126e21'),
(913, 163, '_billing_first_name', 'jidaj'),
(914, 163, '_billing_last_name', 'idadji'),
(915, 163, '_billing_company', ''),
(916, 163, '_billing_address_1', 'Av Miami'),
(917, 163, '_billing_address_2', 'Miami'),
(918, 163, '_billing_city', 'Atlanta'),
(919, 163, '_billing_state', 'GA'),
(920, 163, '_billing_postcode', '30301'),
(921, 163, '_billing_country', 'VE'),
(922, 163, '_billing_email', 'fidel.alejos@gmail.com'),
(923, 163, '_billing_phone', '5038322'),
(924, 163, '_shipping_first_name', ''),
(925, 163, '_shipping_last_name', ''),
(926, 163, '_shipping_company', ''),
(927, 163, '_shipping_address_1', ''),
(928, 163, '_shipping_address_2', ''),
(929, 163, '_shipping_city', ''),
(930, 163, '_shipping_state', ''),
(931, 163, '_shipping_postcode', ''),
(932, 163, '_shipping_country', ''),
(933, 163, '_order_currency', 'USD'),
(934, 163, '_cart_discount', '0'),
(935, 163, '_cart_discount_tax', '0'),
(936, 163, '_order_shipping', '0.00'),
(937, 163, '_order_shipping_tax', '0'),
(938, 163, '_order_tax', '0'),
(939, 163, '_order_total', '32.00'),
(940, 163, '_order_version', '3.5.7'),
(941, 163, '_prices_include_tax', 'no'),
(942, 163, '_billing_address_index', 'jidaj idadji  Av Miami Miami Atlanta GA 30301 VE fidel.alejos@gmail.com 5038322'),
(943, 163, '_shipping_address_index', '        '),
(944, 163, '_billing_myfield11', 'Femenino'),
(945, 163, '_billing_myfield12', '0414'),
(946, 163, '_billing_myfield13', 'V-'),
(947, 163, '_billing_myfield14', '22186230'),
(948, 163, '_billing_myfield15', '18/08/1992'),
(949, 163, '_billing_myfield16', 'Soltera/o'),
(950, 163, '_billing_myfield17', 'Si'),
(951, 163, '_billing_myfield18', 'Automóvil'),
(952, 163, '_billing_myfield19', '1980'),
(953, 163, '_billing_myfield20', 'Acura'),
(954, 163, '_billing_myfield21', '548oop'),
(955, 163, '_billing_myfield22', 'Modelo 1'),
(956, 163, '_billing_myfield23', 'sada'),
(957, 163, '_billing_myfield24', 'Coupé'),
(958, 163, '_billing_options0', 'da'),
(959, 163, '_billing_options1', 'test'),
(960, 163, '_recorded_sales', 'yes'),
(961, 163, '_recorded_coupon_usage_counts', 'yes'),
(962, 163, '_order_stock_reduced', 'yes'),
(963, 163, 'wmc_order_info', 'a:2:{s:3:"VEF";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(964, 164, '_wp_attached_file', 'woocommerce-placeholder.png'),
(965, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(970, 169, '_order_key', 'wc_order_FiOWNNgyti2FU'),
(971, 169, '_customer_user', '0'),
(972, 169, '_payment_method', 'bacs'),
(973, 169, '_payment_method_title', 'Transferencia bancaria directa'),
(974, 169, '_customer_ip_address', '127.0.0.1'),
(975, 169, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'),
(976, 169, '_created_via', 'checkout'),
(977, 169, '_cart_hash', '131034a29e4242696349794784ca4f16'),
(978, 169, '_billing_first_name', 'Fidel'),
(979, 169, '_billing_last_name', 'Aliaga'),
(980, 169, '_billing_address_1', 'Av Miami'),
(981, 169, '_billing_address_2', 'Miami'),
(982, 169, '_billing_city', 'Atlanta'),
(983, 169, '_billing_state', 'GA'),
(984, 169, '_billing_postcode', '30301'),
(985, 169, '_billing_country', 'VE'),
(986, 169, '_billing_email', 'fidel.alejos@gmail.com'),
(987, 169, '_billing_phone', '5038322'),
(988, 169, '_order_currency', 'USD'),
(989, 169, '_cart_discount', '0'),
(990, 169, '_cart_discount_tax', '0'),
(991, 169, '_order_shipping', '0.00'),
(992, 169, '_order_shipping_tax', '0'),
(993, 169, '_order_tax', '0'),
(994, 169, '_order_total', '16.00'),
(995, 169, '_order_version', '3.6.1'),
(996, 169, '_prices_include_tax', 'no'),
(997, 169, '_billing_address_index', 'Fidel Aliaga  Av Miami Miami Atlanta GA 30301 VE fidel.alejos@gmail.com 5038322'),
(998, 169, '_shipping_address_index', '        '),
(999, 169, '_billing_myfield11', 'Femenino'),
(1000, 169, '_billing_myfield12', '0414'),
(1001, 169, '_billing_myfield13', 'V-'),
(1002, 169, '_billing_myfield14', '22186230'),
(1003, 169, '_billing_myfield15', '18/08/1992'),
(1004, 169, '_billing_myfield16', 'Soltera/o'),
(1005, 169, '_billing_myfield17', 'Si'),
(1006, 169, '_billing_myfield18', 'Automóvil'),
(1007, 169, '_billing_myfield19', '1980'),
(1008, 169, '_billing_myfield20', 'Acura'),
(1009, 169, '_billing_myfield21', 'ssssss'),
(1010, 169, '_billing_myfield22', 'Modelo 1'),
(1011, 169, '_billing_myfield23', 'dad'),
(1012, 169, '_billing_myfield24', 'Coupé'),
(1013, 169, 'is_vat_exempt', 'no'),
(1014, 169, '_recorded_sales', 'yes'),
(1015, 169, '_recorded_coupon_usage_counts', 'yes'),
(1016, 169, '_order_stock_reduced', 'yes'),
(1017, 169, 'wmc_order_info', 'a:2:{s:3:"VEF";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1018, 8, '_edit_lock', '1557064980:1'),
(1019, 8, '_edit_last', '1'),
(1020, 8, '_wp_page_template', 'default'),
(1024, 177, '_wp_attached_file', '2019/05/Logo-WhatsApp.png'),
(1025, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:806;s:4:"file";s:25:"2019/05/Logo-WhatsApp.png";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Logo-WhatsApp-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"Logo-WhatsApp-298x300.png";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Logo-WhatsApp-768x774.png";s:5:"width";i:768;s:6:"height";i:774;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:25:"Logo-WhatsApp-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:25:"Logo-WhatsApp-600x605.png";s:5:"width";i:600;s:6:"height";i:605;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:25:"Logo-WhatsApp-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:25:"Logo-WhatsApp-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:25:"Logo-WhatsApp-600x605.png";s:5:"width";i:600;s:6:"height";i:605;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:25:"Logo-WhatsApp-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1026, 178, '_order_key', 'wc_order_UcguKoHwBYqir'),
(1027, 178, '_customer_user', '0'),
(1028, 178, '_payment_method', 'bacs'),
(1029, 178, '_payment_method_title', 'Transferencia bancaria directa'),
(1030, 178, '_customer_ip_address', '127.0.0.1'),
(1031, 178, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36'),
(1032, 178, '_created_via', 'checkout'),
(1033, 178, '_cart_hash', 'b4e2dec61195f8ba1a38daf3c1b361cb'),
(1034, 178, '_billing_first_name', 'Codea'),
(1035, 178, '_billing_last_name', 'Ink'),
(1036, 178, '_billing_address_1', 'Calle 6 entre carreras 21 y 24'),
(1037, 178, '_billing_address_2', 'asd'),
(1038, 178, '_billing_city', 'Barquisimeto'),
(1039, 178, '_billing_state', 'Lara'),
(1040, 178, '_billing_postcode', '3001'),
(1041, 178, '_billing_country', 'VE'),
(1042, 178, '_billing_email', 'ing.leonardo.hp@gmail.com'),
(1043, 178, '_billing_phone', '3576326'),
(1044, 178, '_order_currency', 'VES'),
(1045, 178, '_cart_discount', '0'),
(1046, 178, '_cart_discount_tax', '0'),
(1047, 178, '_order_shipping', '0.00'),
(1048, 178, '_order_shipping_tax', '0'),
(1049, 178, '_order_tax', '0'),
(1050, 178, '_order_total', '3971328.00'),
(1051, 178, '_order_version', '3.6.2'),
(1052, 178, '_prices_include_tax', 'no'),
(1053, 178, '_billing_address_index', 'Codea Ink  Calle 6 entre carreras 21 y 24 asd Barquisimeto Lara 3001 VE ing.leonardo.hp@gmail.com 3576326'),
(1054, 178, '_shipping_address_index', '        '),
(1055, 178, '_billing_myfield11', 'Femenino'),
(1056, 178, '_billing_myfield12', '0414'),
(1057, 178, '_billing_myfield13', 'V-'),
(1058, 178, '_billing_myfield14', '23484044'),
(1059, 178, '_billing_myfield15', '1992-05-16'),
(1060, 178, '_billing_myfield16', 'Soltera/o'),
(1061, 178, '_billing_myfield17', 'No'),
(1062, 178, '_billing_myfield18', 'Automóvil'),
(1063, 178, '_billing_myfield19', '1980'),
(1064, 178, '_billing_myfield20', 'Acura'),
(1065, 178, '_billing_myfield21', '123123'),
(1066, 178, '_billing_myfield22', 'asdasd'),
(1067, 178, '_billing_myfield23', 'asdasd'),
(1068, 178, '_billing_myfield24', 'Coupé'),
(1069, 178, 'is_vat_exempt', 'no'),
(1070, 178, '_recorded_sales', 'yes'),
(1071, 178, '_recorded_coupon_usage_counts', 'yes'),
(1072, 178, '_order_stock_reduced', 'yes'),
(1073, 178, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1139, 197, '_edit_lock', '1557240963:1'),
(1140, 197, '_edit_last', '1'),
(1141, 198, '_edit_lock', '1557241138:1'),
(1142, 198, '_edit_last', '1'),
(1143, 199, '_edit_lock', '1557241037:1'),
(1144, 199, '_edit_last', '1'),
(1145, 200, '_edit_lock', '1557241204:1'),
(1146, 200, '_edit_last', '1'),
(1147, 201, '_edit_lock', '1557241099:1'),
(1148, 201, '_edit_last', '1'),
(1149, 202, '_edit_lock', '1557338793:1'),
(1150, 202, '_edit_last', '1'),
(1151, 203, '_edit_lock', '1557241322:1'),
(1152, 203, '_edit_last', '1'),
(1153, 204, '_edit_lock', '1557241376:1'),
(1154, 204, '_edit_last', '1'),
(1155, 205, '_edit_lock', '1557241274:1'),
(1156, 205, '_edit_last', '1'),
(1157, 206, '_edit_lock', '1557241441:1'),
(1158, 206, '_edit_last', '1'),
(1159, 207, '_edit_lock', '1557241338:1'),
(1160, 207, '_edit_last', '1'),
(1161, 208, '_edit_lock', '1557338815:1'),
(1162, 208, '_edit_last', '1'),
(1163, 209, '_edit_lock', '1557241534:1'),
(1164, 209, '_edit_last', '1'),
(1165, 210, '_edit_lock', '1557241676:1'),
(1166, 210, '_edit_last', '1'),
(1167, 211, '_wp_attached_file', '2019/05/3.jpg'),
(1168, 211, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:13:"2019/05/3.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"3-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:13:"3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:13:"3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:13:"3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1169, 212, '_wp_attached_file', '2019/05/10.jpg'),
(1170, 212, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:14:"2019/05/10.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"10-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"10-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"10-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:14:"10-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:14:"10-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:14:"10-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"10-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"10-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"10-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"6.3";s:6:"credit";s:0:"";s:6:"camera";s:15:"Canon EOS 1100D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1454172982";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"18";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1171, 213, '_wp_attached_file', '2019/05/IMG_6066.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1172, 213, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2019/05/IMG_6066.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_6066-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_6066-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_6066-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"IMG_6066-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"IMG_6066-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"IMG_6066-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_6066-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"IMG_6066-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_6066-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"18";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497694688";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"28";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1173, 214, '_wp_attached_file', '2019/05/IMG_6118.jpg'),
(1174, 214, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2019/05/IMG_6118.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_6118-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_6118-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_6118-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"IMG_6118-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"IMG_6118-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"IMG_6118-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_6118-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"IMG_6118-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_6118-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"8";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497695381";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"34";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1175, 215, '_wp_attached_file', '2019/05/IMG_6199.jpg'),
(1176, 215, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2019/05/IMG_6199.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_6199-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_6199-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_6199-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"IMG_6199-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"IMG_6199-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"IMG_6199-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_6199-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"IMG_6199-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_6199-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"20";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497697245";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"28";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1177, 216, '_wp_attached_file', '2019/05/IMG_6305.jpg'),
(1178, 216, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:20:"2019/05/IMG_6305.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_6305-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_6305-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_6305-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"IMG_6305-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"IMG_6305-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"IMG_6305-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_6305-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"IMG_6305-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_6305-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"22";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497700342";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"28";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:4:"0.04";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1179, 217, '_wp_attached_file', '2019/05/IMG_6499.jpg'),
(1180, 217, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1068;s:6:"height";i:1068;s:4:"file";s:20:"2019/05/IMG_6499.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_6499-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_6499-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_6499-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"IMG_6499-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"IMG_6499-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:20:"IMG_6499-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"IMG_6499-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"IMG_6499-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"IMG_6499-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"IMG_6499-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"22";s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1497703036";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1181, 218, '_edit_lock', '1557249305:1'),
(1182, 218, '_edit_last', '1'),
(1183, 218, '_thumbnail_id', '216'),
(1184, 219, '_edit_lock', '1557249406:1'),
(1185, 219, '_edit_last', '1'),
(1186, 219, '_thumbnail_id', '217'),
(1187, 220, '_edit_lock', '1558111607:1'),
(1188, 220, '_edit_last', '1'),
(1189, 221, '_wp_attached_file', '2019/05/Banner-Tarjeta.png'),
(1190, 221, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1921;s:6:"height";i:1087;s:4:"file";s:26:"2019/05/Banner-Tarjeta.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Banner-Tarjeta-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"Banner-Tarjeta-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:26:"Banner-Tarjeta-768x435.png";s:5:"width";i:768;s:6:"height";i:435;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:27:"Banner-Tarjeta-1024x579.png";s:5:"width";i:1024;s:6:"height";i:579;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:26:"Banner-Tarjeta-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:26:"Banner-Tarjeta-600x340.png";s:5:"width";i:600;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:26:"Banner-Tarjeta-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"Banner-Tarjeta-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:26:"Banner-Tarjeta-600x340.png";s:5:"width";i:600;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"Banner-Tarjeta-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1191, 220, '_thumbnail_id', '221'),
(1192, 222, '_order_key', 'wc_order_KzwomFd1sJdmx'),
(1193, 222, '_customer_user', '0'),
(1194, 222, '_payment_method', 'bacs'),
(1195, 222, '_payment_method_title', 'Transferencia bancaria directa'),
(1196, 222, '_customer_ip_address', '200.84.12.9'),
(1197, 222, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36'),
(1198, 222, '_created_via', 'checkout'),
(1199, 222, '_cart_hash', 'b4e2dec61195f8ba1a38daf3c1b361cb'),
(1200, 222, '_billing_first_name', 'hhtgrfhrfh'),
(1201, 222, '_billing_last_name', 'dgjjnhjn'),
(1202, 222, '_billing_address_1', 'fdhrtgjhnrfg'),
(1203, 222, '_billing_address_2', 'hjmmgjm'),
(1204, 222, '_billing_city', 'jghjmf'),
(1205, 222, '_billing_state', 'hgmghm'),
(1206, 222, '_billing_postcode', '0000'),
(1207, 222, '_billing_country', 'VE'),
(1208, 222, '_billing_email', 'fgrhgfrg@gmail.com'),
(1209, 222, '_billing_phone', '2589632'),
(1210, 222, '_order_currency', 'VES'),
(1211, 222, '_cart_discount', '0'),
(1212, 222, '_cart_discount_tax', '0'),
(1213, 222, '_order_shipping', '0.00'),
(1214, 222, '_order_shipping_tax', '0'),
(1215, 222, '_order_tax', '0'),
(1216, 222, '_order_total', '3971328.00'),
(1217, 222, '_order_version', '3.6.2'),
(1218, 222, '_prices_include_tax', 'no'),
(1219, 222, '_billing_address_index', 'hhtgrfhrfh dgjjnhjn  fdhrtgjhnrfg hjmmgjm jghjmf hgmghm 0000 VE fgrhgfrg@gmail.com 2589632'),
(1220, 222, '_shipping_address_index', '        '),
(1221, 222, '_billing_myfield11', 'Femenino'),
(1222, 222, '_billing_myfield12', '0414'),
(1223, 222, '_billing_myfield13', 'V-'),
(1224, 222, '_billing_myfield14', '26458987'),
(1225, 222, '_billing_myfield15', '2018-05-05'),
(1226, 222, '_billing_myfield16', 'Soltera/o'),
(1227, 222, '_billing_myfield17', 'No'),
(1228, 222, '_billing_myfield18', 'Camioneta'),
(1229, 222, '_billing_myfield19', '1987'),
(1230, 222, '_billing_myfield20', 'Cadillac'),
(1231, 222, '_billing_myfield21', '546hj4'),
(1232, 222, '_billing_myfield22', 'hfghrfjn'),
(1233, 222, '_billing_myfield23', 'jnfgn gd'),
(1234, 222, '_billing_myfield24', 'Furgón'),
(1235, 222, '_billing_myfield25', 'nfnfgnghm,jh.ñui'),
(1236, 222, 'is_vat_exempt', 'no'),
(1237, 222, '_recorded_sales', 'yes'),
(1238, 222, '_recorded_coupon_usage_counts', 'yes'),
(1239, 222, '_order_stock_reduced', 'yes'),
(1240, 222, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1241, 224, '_wp_attached_file', '2019/05/Galeria-2.jpg'),
(1242, 224, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1900;s:6:"height";i:1900;s:4:"file";s:21:"2019/05/Galeria-2.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Galeria-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Galeria-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"Galeria-2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Galeria-2-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"Galeria-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"Galeria-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"Galeria-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"Galeria-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"Galeria-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"Galeria-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1243, 225, '_edit_lock', '1557338697:1'),
(1244, 225, '_edit_last', '1'),
(1245, 225, '_thumbnail_id', '224'),
(1246, 7, '_edit_lock', '1557341855:1'),
(1247, 228, '_order_key', 'wc_order_H7vsckXimxxjx'),
(1248, 228, '_customer_user', '0'),
(1249, 228, '_payment_method', 'bacs'),
(1250, 228, '_payment_method_title', 'Transferencia bancaria directa'),
(1251, 228, '_customer_ip_address', '200.84.12.9'),
(1252, 228, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36'),
(1253, 228, '_created_via', 'checkout'),
(1254, 228, '_cart_hash', 'b4e2dec61195f8ba1a38daf3c1b361cb'),
(1255, 228, '_billing_first_name', 'simon'),
(1256, 228, '_billing_last_name', 'rodriguez'),
(1257, 228, '_billing_address_1', 'Tamaca'),
(1258, 228, '_billing_address_2', 'Urb las virgineas'),
(1259, 228, '_billing_city', 'Barquisimeto'),
(1260, 228, '_billing_state', 'lara'),
(1261, 228, '_billing_postcode', '0000'),
(1262, 228, '_billing_country', 'VE'),
(1263, 228, '_billing_email', 'infopvdi@gmail.com'),
(1264, 228, '_billing_phone', '3576326'),
(1265, 228, '_order_currency', 'VES'),
(1266, 228, '_cart_discount', '0'),
(1267, 228, '_cart_discount_tax', '0'),
(1268, 228, '_order_shipping', '0.00'),
(1269, 228, '_order_shipping_tax', '0'),
(1270, 228, '_order_tax', '0'),
(1271, 228, '_order_total', '3971328.00'),
(1272, 228, '_order_version', '3.6.2'),
(1273, 228, '_prices_include_tax', 'no'),
(1274, 228, '_billing_address_index', 'simon rodriguez  Tamaca Urb las virgineas Barquisimeto lara 0000 VE infopvdi@gmail.com 3576326'),
(1275, 228, '_shipping_address_index', '        '),
(1276, 228, '_billing_myfield11', 'Masculino'),
(1277, 228, '_billing_myfield12', '0414'),
(1278, 228, '_billing_myfield13', 'V-'),
(1279, 228, '_billing_myfield14', '23484044'),
(1280, 228, '_billing_myfield15', '1992-05-16'),
(1281, 228, '_billing_myfield16', 'Soltera/o'),
(1282, 228, '_billing_myfield17', 'No'),
(1283, 228, '_billing_myfield18', 'Automóvil'),
(1284, 228, '_billing_myfield19', '1980'),
(1285, 228, '_billing_myfield20', 'Aston Martin'),
(1286, 228, '_billing_myfield21', '123opa'),
(1287, 228, '_billing_myfield22', 'asd'),
(1288, 228, '_billing_myfield23', 'asd'),
(1289, 228, '_billing_myfield24', 'Coupé'),
(1290, 228, '_billing_myfield25', 'me lo dijo simon'),
(1291, 228, 'is_vat_exempt', 'no'),
(1292, 228, '_recorded_sales', 'yes'),
(1293, 228, '_recorded_coupon_usage_counts', 'yes'),
(1294, 228, '_order_stock_reduced', 'yes'),
(1295, 228, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1296, 228, '_edit_lock', '1557347093:1'),
(1297, 229, '_order_key', 'wc_order_FqaYvtUFCHJeO'),
(1298, 229, '_customer_user', '0'),
(1299, 229, '_payment_method', 'bacs'),
(1300, 229, '_payment_method_title', 'Transferencia bancaria directa'),
(1301, 229, '_customer_ip_address', '201.210.241.7'),
(1302, 229, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36'),
(1303, 229, '_created_via', 'checkout'),
(1304, 229, '_cart_hash', 'b4e2dec61195f8ba1a38daf3c1b361cb'),
(1305, 229, '_billing_first_name', 'Alejandro'),
(1306, 229, '_billing_last_name', 'Echeverria'),
(1307, 229, '_billing_address_1', 'Casa'),
(1308, 229, '_billing_address_2', 'Calle'),
(1309, 229, '_billing_city', 'Caracas'),
(1310, 229, '_billing_state', 'Miranda'),
(1311, 229, '_billing_postcode', '0000'),
(1312, 229, '_billing_country', 'VE'),
(1313, 229, '_billing_email', 'alejem93@gmail.com'),
(1314, 229, '_billing_phone', '8572157'),
(1315, 229, '_order_currency', 'VES'),
(1316, 229, '_cart_discount', '0'),
(1317, 229, '_cart_discount_tax', '0'),
(1318, 229, '_order_shipping', '0.00'),
(1319, 229, '_order_shipping_tax', '0'),
(1320, 229, '_order_tax', '0'),
(1321, 229, '_order_total', '3971328.00'),
(1322, 229, '_order_version', '3.6.2'),
(1323, 229, '_prices_include_tax', 'no'),
(1324, 229, '_billing_address_index', 'Alejandro Echeverria  Casa Calle Caracas Miranda 0000 VE alejem93@gmail.com 8572157'),
(1325, 229, '_shipping_address_index', '        '),
(1326, 229, '_billing_myfield11', 'Masculino'),
(1327, 229, '_billing_myfield12', '0414'),
(1328, 229, '_billing_myfield13', 'V-'),
(1329, 229, '_billing_myfield14', '20704089'),
(1330, 229, '_billing_myfield15', '1993-08-19'),
(1331, 229, '_billing_myfield16', 'Soltera/o'),
(1332, 229, '_billing_myfield17', 'Si'),
(1333, 229, '_billing_myfield18', 'Automóvil'),
(1334, 229, '_billing_myfield19', '1980'),
(1335, 229, '_billing_myfield20', 'Acura'),
(1336, 229, '_billing_myfield21', 'aa000rv'),
(1337, 229, '_billing_myfield22', 'corolla'),
(1338, 229, '_billing_myfield23', 'beige'),
(1339, 229, '_billing_myfield24', 'Sedán'),
(1340, 229, '_billing_myfield25', ''),
(1341, 229, 'is_vat_exempt', 'no'),
(1342, 229, '_recorded_sales', 'yes'),
(1343, 229, '_recorded_coupon_usage_counts', 'yes'),
(1344, 229, '_order_stock_reduced', 'yes'),
(1345, 229, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1346, 230, '_order_key', 'wc_order_76IbrOulwgkwL'),
(1347, 230, '_customer_user', '0'),
(1348, 230, '_payment_method', 'bacs'),
(1349, 230, '_payment_method_title', 'Transferencia bancaria directa'),
(1350, 230, '_customer_ip_address', '190.205.39.174'),
(1351, 230, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36'),
(1352, 230, '_created_via', 'checkout'),
(1353, 230, '_cart_hash', 'b4e2dec61195f8ba1a38daf3c1b361cb'),
(1354, 230, '_billing_first_name', 'aLEJANDRO'),
(1355, 230, '_billing_last_name', 'Echeverria'),
(1356, 230, '_billing_address_1', 'Casa'),
(1357, 230, '_billing_address_2', 'Calle'),
(1358, 230, '_billing_city', 'Caracas'),
(1359, 230, '_billing_state', 'Miranda'),
(1360, 230, '_billing_postcode', '0000'),
(1361, 230, '_billing_country', 'VE'),
(1362, 230, '_billing_email', 'alejem93@gmail.com'),
(1363, 230, '_billing_phone', '8572157'),
(1364, 230, '_order_currency', 'VES'),
(1365, 230, '_cart_discount', '0'),
(1366, 230, '_cart_discount_tax', '0'),
(1367, 230, '_order_shipping', '0.00'),
(1368, 230, '_order_shipping_tax', '0'),
(1369, 230, '_order_tax', '0'),
(1370, 230, '_order_total', '3971328.00'),
(1371, 230, '_order_version', '3.6.2'),
(1372, 230, '_prices_include_tax', 'no'),
(1373, 230, '_billing_address_index', 'aLEJANDRO Echeverria  Casa Calle Caracas Miranda 0000 VE alejem93@gmail.com 8572157'),
(1374, 230, '_shipping_address_index', '        '),
(1375, 230, '_billing_myfield11', 'Femenino'),
(1376, 230, '_billing_myfield12', '0414'),
(1377, 230, '_billing_myfield13', 'V-'),
(1378, 230, '_billing_myfield14', '20704089'),
(1379, 230, '_billing_myfield15', '1993-08-19'),
(1380, 230, '_billing_myfield16', 'Soltera/o'),
(1381, 230, '_billing_myfield17', 'Si'),
(1382, 230, '_billing_myfield18', 'Automóvil'),
(1383, 230, '_billing_myfield19', '1980'),
(1384, 230, '_billing_myfield20', 'Acura'),
(1385, 230, '_billing_myfield21', 'AACCCVV'),
(1386, 230, '_billing_myfield22', 'COROLLA'),
(1387, 230, '_billing_myfield23', 'BLANCO'),
(1388, 230, '_billing_myfield24', 'Coupé'),
(1389, 230, '_billing_myfield25', ''),
(1390, 230, 'is_vat_exempt', 'no'),
(1391, 230, '_recorded_sales', 'yes'),
(1392, 230, '_recorded_coupon_usage_counts', 'yes'),
(1393, 230, '_order_stock_reduced', 'yes'),
(1394, 230, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1397, 239, '_order_key', 'wc_order_n0bHrIzEq8m2m'),
(1398, 239, '_customer_user', '0'),
(1399, 239, '_payment_method', 'bacs'),
(1400, 239, '_payment_method_title', 'Transferencia bancaria directa'),
(1401, 239, '_customer_ip_address', '127.0.0.1'),
(1402, 239, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36'),
(1403, 239, '_created_via', 'checkout'),
(1404, 239, '_cart_hash', '131034a29e4242696349794784ca4f16'),
(1405, 239, '_billing_first_name', 'Codea'),
(1406, 239, '_billing_last_name', 'Ink'),
(1407, 239, '_billing_address_1', 'Calle 6 entre carreras 21 y 24'),
(1408, 239, '_billing_address_2', 'asd'),
(1409, 239, '_billing_city', 'Barquisimeto'),
(1410, 239, '_billing_state', 'Amazonas'),
(1411, 239, '_billing_postcode', '0000'),
(1412, 239, '_billing_country', 'VE'),
(1413, 239, '_billing_email', 'ing.leonardo@gmail.com'),
(1414, 239, '_billing_phone', '3576326'),
(1415, 239, '_order_currency', 'USD'),
(1416, 239, '_cart_discount', '0'),
(1417, 239, '_cart_discount_tax', '0'),
(1418, 239, '_order_shipping', '0'),
(1419, 239, '_order_shipping_tax', '0'),
(1420, 239, '_order_tax', '0'),
(1421, 239, '_order_total', '16.00'),
(1422, 239, '_order_version', '3.6.2'),
(1423, 239, '_prices_include_tax', 'no'),
(1424, 239, '_billing_address_index', 'Codea Ink  Calle 6 entre carreras 21 y 24 asd Barquisimeto Amazonas 0000 VE ing.leonardo@gmail.com 3576326'),
(1425, 239, '_shipping_address_index', '        '),
(1426, 239, '_billing_myfield11', 'Femenino'),
(1427, 239, '_billing_myfield12', '0414'),
(1428, 239, '_billing_myfield13', 'V-'),
(1429, 239, '_billing_myfield14', '23484044'),
(1430, 239, '_billing_myfield15', '1992-05-16'),
(1431, 239, '_billing_myfield16', 'Soltera/o'),
(1432, 239, '_billing_myfield17', 'No'),
(1433, 239, '_billing_myfield18', 'Automóvil'),
(1434, 239, '_billing_myfield19', '1992'),
(1435, 239, '_billing_myfield20', 'Can-Am'),
(1436, 239, '_billing_myfield21', '123123'),
(1437, 239, '_billing_myfield22', 'asdasd'),
(1438, 239, '_billing_myfield23', 'azul'),
(1439, 239, '_billing_myfield24', 'Furgón'),
(1440, 239, '_billing_myfield25', 'Stands de venta'),
(1441, 239, 'is_vat_exempt', 'no'),
(1442, 239, '_recorded_sales', 'yes'),
(1443, 239, '_recorded_coupon_usage_counts', 'yes'),
(1444, 239, '_order_stock_reduced', 'yes'),
(1445, 239, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1446, 240, '_menu_item_type', 'custom'),
(1447, 240, '_menu_item_menu_item_parent', '0'),
(1448, 240, '_menu_item_object_id', '240'),
(1449, 240, '_menu_item_object', 'custom'),
(1450, 240, '_menu_item_target', ''),
(1451, 240, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1452, 240, '_menu_item_xfn', ''),
(1453, 240, '_menu_item_url', '/tugruero/plan/?canjear=true'),
(1455, 241, '_wp_attached_file', '2019/05/CLASSIC.png'),
(1456, 241, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:165;s:4:"file";s:19:"2019/05/CLASSIC.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"CLASSIC-120x150.png";s:5:"width";i:120;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"CLASSIC-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"CLASSIC-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1457, 242, '_wp_attached_file', '2019/05/GOLD.png'),
(1458, 242, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:165;s:4:"file";s:16:"2019/05/GOLD.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"GOLD-120x150.png";s:5:"width";i:120;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"GOLD-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"GOLD-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1459, 243, '_wp_attached_file', '2019/05/PLUS.png'),
(1460, 243, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:164;s:4:"file";s:16:"2019/05/PLUS.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"PLUS-120x150.png";s:5:"width";i:120;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"PLUS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"PLUS-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1463, 239, '_edit_lock', '1559428084:1'),
(1466, 239, '_edit_last', '1'),
(1467, 239, '_date_completed', '1559428209'),
(1468, 239, '_date_paid', '1559428209'),
(1469, 239, '_paid_date', '2019-06-02 00:30:09'),
(1470, 239, '_completed_date', '2019-06-02 00:30:09'),
(1471, 239, '_download_permissions_granted', 'yes'),
(1478, 253, '_order_key', 'wc_order_UnUTGR3rKcTxP'),
(1479, 253, '_customer_user', '0'),
(1480, 253, '_payment_method', 'bacs'),
(1481, 253, '_payment_method_title', 'Transferencia bancaria directa'),
(1482, 253, '_customer_ip_address', '127.0.0.1'),
(1483, 253, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.80 Safari/537.36'),
(1484, 253, '_created_via', 'checkout'),
(1485, 253, '_cart_hash', '131034a29e4242696349794784ca4f16'),
(1486, 253, '_billing_first_name', 'Leonardo'),
(1487, 253, '_billing_last_name', 'Hernandez'),
(1488, 253, '_billing_address_1', 'TAMACA, SECTOR LAS VIRGINIAS'),
(1489, 253, '_billing_address_2', 'FRENTE AL TALLER LINCRE'),
(1490, 253, '_billing_city', 'BARQUISIMETO'),
(1491, 253, '_billing_state', 'Lara'),
(1492, 253, '_billing_postcode', '0000'),
(1493, 253, '_billing_country', 'VE'),
(1494, 253, '_billing_email', 'ing.leonardo.hp@gmail.com'),
(1495, 253, '_billing_phone', '3576326'),
(1496, 253, '_order_currency', 'USD'),
(1497, 253, '_cart_discount', '0'),
(1498, 253, '_cart_discount_tax', '0'),
(1499, 253, '_order_shipping', '0.00'),
(1500, 253, '_order_shipping_tax', '0'),
(1501, 253, '_order_tax', '0'),
(1502, 253, '_order_total', '16.00'),
(1503, 253, '_order_version', '3.6.2'),
(1504, 253, '_prices_include_tax', 'no'),
(1505, 253, '_billing_address_index', 'Leonardo Hernandez  TAMACA, SECTOR LAS VIRGINIAS FRENTE AL TALLER LINCRE BARQUISIMETO Lara 0000 VE ing.leonardo.hp@gmail.com 3576326'),
(1506, 253, '_shipping_address_index', '        '),
(1507, 253, '_billing_myfield11', 'Masculino'),
(1508, 253, '_billing_myfield12', '0414'),
(1509, 253, '_billing_myfield13', 'V-'),
(1510, 253, '_billing_myfield14', '23484044'),
(1511, 253, '_billing_myfield15', '2019-05-16'),
(1512, 253, '_billing_myfield16', 'Casada/o'),
(1513, 253, '_billing_myfield17', 'Si'),
(1514, 253, '_billing_myfield18', 'Automóvil'),
(1515, 253, '_billing_myfield19', '1992'),
(1516, 253, '_billing_myfield20', 'BMW'),
(1517, 253, '_billing_myfield21', 'pab123'),
(1518, 253, '_billing_myfield22', 'Marcalera'),
(1519, 253, '_billing_myfield23', 'Azul'),
(1520, 253, '_billing_myfield24', 'Pick Up'),
(1521, 253, '_billing_myfield25', 'Stands de venta'),
(1522, 253, 'is_vat_exempt', 'no'),
(1523, 253, '_recorded_sales', 'yes'),
(1524, 253, '_recorded_coupon_usage_counts', 'yes'),
(1525, 253, '_order_stock_reduced', 'yes'),
(1526, 253, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1528, 255, '_action_manager_schedule', 'O:32:"ActionScheduler_IntervalSchedule":2:{s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1561569844;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;}'),
(1529, 257, '_action_manager_schedule', 'O:32:"ActionScheduler_IntervalSchedule":2:{s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1562174888;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;}'),
(1530, 259, '_action_manager_schedule', 'O:32:"ActionScheduler_IntervalSchedule":2:{s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1562853516;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;}'),
(1531, 261, '_edit_lock', '1562688000:1'),
(1532, 261, '_edit_last', '1'),
(1533, 261, 'discount_type', 'percent'),
(1534, 261, 'coupon_amount', '100'),
(1535, 261, 'individual_use', 'no'),
(1536, 261, 'product_ids', '10'),
(1537, 261, 'usage_limit', '5'),
(1538, 261, 'usage_limit_per_user', '0'),
(1539, 261, 'limit_usage_to_x_items', '0'),
(1540, 261, 'usage_count', '4'),
(1541, 261, 'date_expires', '1562709600'),
(1542, 261, 'free_shipping', 'no'),
(1543, 261, 'exclude_sale_items', 'no'),
(1544, 262, '_order_key', 'wc_order_8ousz5TPPCuiI'),
(1545, 262, '_customer_user', '0'),
(1546, 262, '_customer_ip_address', '127.0.0.1'),
(1547, 262, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1548, 262, '_created_via', 'checkout'),
(1549, 262, '_cart_hash', '487ea880cc47443a5b96d48c174fe647'),
(1550, 262, '_billing_first_name', 'leonardo'),
(1551, 262, '_billing_last_name', 'hernandez'),
(1552, 262, '_billing_address_1', 'asd'),
(1553, 262, '_billing_address_2', 'asd'),
(1554, 262, '_billing_city', 'Barquisimeto'),
(1555, 262, '_billing_state', 'Amazonas'),
(1556, 262, '_billing_postcode', '0000'),
(1557, 262, '_billing_country', 'VE'),
(1558, 262, '_billing_email', 'l@l.com'),
(1559, 262, '_billing_phone', '3576326'),
(1560, 262, '_order_currency', 'USD'),
(1561, 262, '_cart_discount', '16'),
(1562, 262, '_cart_discount_tax', '0'),
(1563, 262, '_order_shipping', '0.00'),
(1564, 262, '_order_shipping_tax', '0'),
(1565, 262, '_order_tax', '0'),
(1566, 262, '_order_total', '0.00'),
(1567, 262, '_order_version', '3.6.2'),
(1568, 262, '_prices_include_tax', 'no'),
(1569, 262, '_billing_address_index', 'leonardo hernandez  asd asd Barquisimeto Amazonas 0000 VE l@l.com 3576326'),
(1570, 262, '_shipping_address_index', '        '),
(1571, 262, '_billing_myfield11', 'Femenino'),
(1572, 262, '_billing_myfield12', '0414'),
(1573, 262, '_billing_myfield13', 'V-'),
(1574, 262, '_billing_myfield14', '23484044'),
(1575, 262, '_billing_myfield15', '1992-05-16'),
(1576, 262, '_billing_myfield16', 'Soltera/o'),
(1577, 262, '_billing_myfield17', 'Si'),
(1578, 262, '_billing_myfield18', 'Camioneta'),
(1579, 262, '_billing_myfield19', '1981'),
(1580, 262, '_billing_myfield20', 'Alfa Romeo'),
(1581, 262, '_billing_myfield21', '123123'),
(1582, 262, '_billing_myfield22', '123123'),
(1583, 262, '_billing_myfield23', '1231123'),
(1584, 262, '_billing_myfield24', 'Station Wagon'),
(1585, 262, '_billing_myfield25', 'Stands de venta'),
(1586, 262, 'is_vat_exempt', 'no'),
(1587, 262, '_date_paid', '1562615517'),
(1588, 262, '_paid_date', '2019-07-08 21:51:57'),
(1589, 262, '_download_permissions_granted', 'yes'),
(1590, 262, '_recorded_sales', 'yes'),
(1591, 262, '_recorded_coupon_usage_counts', 'yes'),
(1592, 261, '_used_by', 'l@l.com'),
(1593, 262, '_order_stock_reduced', 'yes'),
(1594, 262, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1595, 263, '_order_key', 'wc_order_SHr13bh0ZuJMd'),
(1596, 263, '_customer_user', '0'),
(1597, 263, '_customer_ip_address', '127.0.0.1'),
(1598, 263, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1599, 263, '_created_via', 'checkout'),
(1600, 263, '_cart_hash', '487ea880cc47443a5b96d48c174fe647'),
(1601, 263, '_billing_first_name', 'leonardo'),
(1602, 263, '_billing_last_name', 'hernandez'),
(1603, 263, '_billing_address_1', 'asd'),
(1604, 263, '_billing_address_2', 'asd'),
(1605, 263, '_billing_city', 'Barquisimeto'),
(1606, 263, '_billing_state', 'Amazonas'),
(1607, 263, '_billing_postcode', '0000'),
(1608, 263, '_billing_country', 'VE'),
(1609, 263, '_billing_email', 'l@l.com'),
(1610, 263, '_billing_phone', '3576326'),
(1611, 263, '_order_currency', 'USD'),
(1612, 263, '_cart_discount', '16'),
(1613, 263, '_cart_discount_tax', '0'),
(1614, 263, '_order_shipping', '0.00'),
(1615, 263, '_order_shipping_tax', '0'),
(1616, 263, '_order_tax', '0'),
(1617, 263, '_order_total', '0.00'),
(1618, 263, '_order_version', '3.6.2'),
(1619, 263, '_prices_include_tax', 'no'),
(1620, 263, '_billing_address_index', 'leonardo hernandez  asd asd Barquisimeto Amazonas 0000 VE l@l.com 3576326'),
(1621, 263, '_shipping_address_index', '        '),
(1622, 263, '_billing_myfield11', 'Femenino'),
(1623, 263, '_billing_myfield12', '0414'),
(1624, 263, '_billing_myfield13', 'V-'),
(1625, 263, '_billing_myfield14', '23484044'),
(1626, 263, '_billing_myfield15', '1992-05-16'),
(1627, 263, '_billing_myfield16', 'Soltera/o'),
(1628, 263, '_billing_myfield17', 'Si'),
(1629, 263, '_billing_myfield18', 'Automóvil'),
(1630, 263, '_billing_myfield19', '1980'),
(1631, 263, '_billing_myfield20', 'Alfa Romeo'),
(1632, 263, '_billing_myfield21', '123123'),
(1633, 263, '_billing_myfield22', 'asdasd'),
(1634, 263, '_billing_myfield23', 'asdasd'),
(1635, 263, '_billing_myfield24', 'Station Wagon'),
(1636, 263, '_billing_myfield25', 'Stands de venta'),
(1637, 263, 'is_vat_exempt', 'no'),
(1638, 263, '_date_paid', '1562616995'),
(1639, 263, '_paid_date', '2019-07-08 22:16:35'),
(1640, 263, '_download_permissions_granted', 'yes'),
(1641, 263, '_recorded_sales', 'yes'),
(1642, 263, '_recorded_coupon_usage_counts', 'yes'),
(1643, 261, '_used_by', 'l@l.com'),
(1644, 263, '_order_stock_reduced', 'yes'),
(1645, 263, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1646, 264, '_order_key', 'wc_order_y3skkbrmc848P'),
(1647, 264, '_customer_user', '0'),
(1648, 264, '_payment_method', 'bacs'),
(1649, 264, '_payment_method_title', 'Transferencia bancaria directa'),
(1650, 264, '_customer_ip_address', '127.0.0.1'),
(1651, 264, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1652, 264, '_created_via', 'checkout'),
(1653, 264, '_cart_hash', '131034a29e4242696349794784ca4f16'),
(1654, 264, '_billing_first_name', 'leonardo'),
(1655, 264, '_billing_last_name', 'hernandez'),
(1656, 264, '_billing_address_1', 'asd'),
(1657, 264, '_billing_address_2', 'asd'),
(1658, 264, '_billing_city', 'Barquisimeto'),
(1659, 264, '_billing_state', 'Amazonas'),
(1660, 264, '_billing_postcode', '0000'),
(1661, 264, '_billing_country', 'VE'),
(1662, 264, '_billing_email', 'l@l.com'),
(1663, 264, '_billing_phone', '3576326'),
(1664, 264, '_order_currency', 'USD'),
(1665, 264, '_cart_discount', '0'),
(1666, 264, '_cart_discount_tax', '0'),
(1667, 264, '_order_shipping', '0.00'),
(1668, 264, '_order_shipping_tax', '0'),
(1669, 264, '_order_tax', '0'),
(1670, 264, '_order_total', '16.00'),
(1671, 264, '_order_version', '3.6.2'),
(1672, 264, '_prices_include_tax', 'no'),
(1673, 264, '_billing_address_index', 'leonardo hernandez  asd asd Barquisimeto Amazonas 0000 VE l@l.com 3576326'),
(1674, 264, '_shipping_address_index', '        '),
(1675, 264, '_billing_myfield11', 'Femenino'),
(1676, 264, '_billing_myfield12', '0414'),
(1677, 264, '_billing_myfield13', 'V-'),
(1678, 264, '_billing_myfield14', '23484044'),
(1679, 264, '_billing_myfield15', '1992-05-16'),
(1680, 264, '_billing_myfield16', 'Soltera/o'),
(1681, 264, '_billing_myfield17', 'Si'),
(1682, 264, '_billing_myfield18', 'Automóvil'),
(1683, 264, '_billing_myfield19', '1980'),
(1684, 264, '_billing_myfield20', 'Alfa Romeo'),
(1685, 264, '_billing_myfield21', '123123'),
(1686, 264, '_billing_myfield22', 'asdasd'),
(1687, 264, '_billing_myfield23', 'asasd'),
(1688, 264, '_billing_myfield24', 'Station Wagon'),
(1689, 264, '_billing_myfield25', 'Stands de venta'),
(1690, 264, 'is_vat_exempt', 'no'),
(1691, 264, '_recorded_sales', 'yes'),
(1692, 264, '_recorded_coupon_usage_counts', 'yes'),
(1693, 264, '_order_stock_reduced', 'yes'),
(1694, 264, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1695, 265, '_order_key', 'wc_order_E9a1p4yCQjGii'),
(1696, 265, '_customer_user', '0'),
(1697, 265, '_customer_ip_address', '127.0.0.1'),
(1698, 265, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1699, 265, '_created_via', 'checkout'),
(1700, 265, '_cart_hash', '487ea880cc47443a5b96d48c174fe647'),
(1701, 265, '_billing_first_name', 'Codea'),
(1702, 265, '_billing_last_name', 'Ink'),
(1703, 265, '_billing_address_1', 'Calle 6 entre carreras 21 y 24'),
(1704, 265, '_billing_address_2', 'a'),
(1705, 265, '_billing_city', 'Barquisimeto'),
(1706, 265, '_billing_state', 'Amazonas'),
(1707, 265, '_billing_postcode', '0000'),
(1708, 265, '_billing_country', 'VE'),
(1709, 265, '_billing_email', 'l@l.com'),
(1710, 265, '_billing_phone', '3576326'),
(1711, 265, '_order_currency', 'USD'),
(1712, 265, '_cart_discount', '16'),
(1713, 265, '_cart_discount_tax', '0'),
(1714, 265, '_order_shipping', '0.00'),
(1715, 265, '_order_shipping_tax', '0'),
(1716, 265, '_order_tax', '0'),
(1717, 265, '_order_total', '0.00'),
(1718, 265, '_order_version', '3.6.2'),
(1719, 265, '_prices_include_tax', 'no'),
(1720, 265, '_billing_address_index', 'Codea Ink  Calle 6 entre carreras 21 y 24 a Barquisimeto Amazonas 0000 VE l@l.com 3576326'),
(1721, 265, '_shipping_address_index', '        '),
(1722, 265, '_billing_myfield11', 'Femenino'),
(1723, 265, '_billing_myfield12', '0414'),
(1724, 265, '_billing_myfield13', 'V-'),
(1725, 265, '_billing_myfield14', '23484044'),
(1726, 265, '_billing_myfield15', '1992-05-16'),
(1727, 265, '_billing_myfield16', 'Soltera/o'),
(1728, 265, '_billing_myfield17', 'Si'),
(1729, 265, '_billing_myfield18', 'Automóvil'),
(1730, 265, '_billing_myfield19', '1980'),
(1731, 265, '_billing_myfield20', 'Alfa Romeo'),
(1732, 265, '_billing_myfield21', '123123'),
(1733, 265, '_billing_myfield22', '123123'),
(1734, 265, '_billing_myfield23', '123'),
(1735, 265, '_billing_myfield24', 'Sport Wagon'),
(1736, 265, '_billing_myfield25', 'Stands de venta'),
(1737, 265, 'is_vat_exempt', 'no'),
(1738, 265, '_date_paid', '1562686194'),
(1739, 265, '_paid_date', '2019-07-09 17:29:54'),
(1740, 265, '_download_permissions_granted', 'yes'),
(1741, 265, '_recorded_sales', 'yes'),
(1742, 265, '_recorded_coupon_usage_counts', 'yes'),
(1743, 261, '_used_by', 'l@l.com'),
(1744, 265, '_order_stock_reduced', 'yes'),
(1745, 265, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1746, 267, '_order_key', 'wc_order_ddiHahw9Kf9S0'),
(1747, 267, '_customer_user', '0'),
(1748, 267, '_customer_ip_address', '127.0.0.1'),
(1749, 267, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1750, 267, '_created_via', 'checkout'),
(1751, 267, '_cart_hash', '487ea880cc47443a5b96d48c174fe647'),
(1752, 267, '_billing_first_name', 'Codea'),
(1753, 267, '_billing_last_name', 'Ink'),
(1754, 267, '_billing_address_1', 'Calle 6 entre carreras 21 y 24'),
(1755, 267, '_billing_address_2', 'a'),
(1756, 267, '_billing_city', 'Barquisimeto'),
(1757, 267, '_billing_state', 'Amazonas'),
(1758, 267, '_billing_postcode', '0000'),
(1759, 267, '_billing_country', 'VE'),
(1760, 267, '_billing_email', 'l@l.com'),
(1761, 267, '_billing_phone', '3576326'),
(1762, 267, '_order_currency', 'USD'),
(1763, 267, '_cart_discount', '16'),
(1764, 267, '_cart_discount_tax', '0'),
(1765, 267, '_order_shipping', '0.00'),
(1766, 267, '_order_shipping_tax', '0'),
(1767, 267, '_order_tax', '0'),
(1768, 267, '_order_total', '0.00'),
(1769, 267, '_order_version', '3.6.2'),
(1770, 267, '_prices_include_tax', 'no'),
(1771, 267, '_billing_address_index', 'Codea Ink  Calle 6 entre carreras 21 y 24 a Barquisimeto Amazonas 0000 VE l@l.com 3576326'),
(1772, 267, '_shipping_address_index', '        '),
(1773, 267, '_billing_myfield11', 'Femenino'),
(1774, 267, '_billing_myfield12', '0414'),
(1775, 267, '_billing_myfield13', 'V-'),
(1776, 267, '_billing_myfield14', '23484044'),
(1777, 267, '_billing_myfield15', '1992-05-16'),
(1778, 267, '_billing_myfield16', 'Soltera/o'),
(1779, 267, '_billing_myfield17', 'Si'),
(1780, 267, '_billing_myfield18', 'Camioneta'),
(1781, 267, '_billing_myfield19', '1980'),
(1782, 267, '_billing_myfield20', 'Acura'),
(1783, 267, '_billing_myfield21', '123123'),
(1784, 267, '_billing_myfield22', '123123'),
(1785, 267, '_billing_myfield23', '12123'),
(1786, 267, '_billing_myfield24', 'Techo Duro'),
(1787, 267, '_billing_myfield25', 'Stands de venta'),
(1788, 267, 'is_vat_exempt', 'no'),
(1789, 267, '_date_paid', '1562686389'),
(1790, 267, '_paid_date', '2019-07-09 17:33:09'),
(1791, 267, '_download_permissions_granted', 'yes'),
(1792, 267, '_recorded_sales', 'yes'),
(1793, 267, '_recorded_coupon_usage_counts', 'yes'),
(1794, 261, '_used_by', 'l@l.com'),
(1795, 267, '_order_stock_reduced', 'yes'),
(1796, 267, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1797, 268, '_order_key', 'wc_order_fhp70bh31kKwo'),
(1798, 268, '_customer_user', '0'),
(1799, 268, '_payment_method', 'bacs'),
(1800, 268, '_payment_method_title', 'Transferencia bancaria directa'),
(1801, 268, '_customer_ip_address', '127.0.0.1'),
(1802, 268, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1803, 268, '_created_via', 'checkout'),
(1804, 268, '_cart_hash', '131034a29e4242696349794784ca4f16'),
(1805, 268, '_billing_first_name', 'Leonardo'),
(1806, 268, '_billing_last_name', 'Hernandez'),
(1807, 268, '_billing_address_1', 'Calle 6 entre carreras 21 y 24'),
(1808, 268, '_billing_address_2', '.'),
(1809, 268, '_billing_city', 'Barquisimeto'),
(1810, 268, '_billing_state', 'Lara'),
(1811, 268, '_billing_postcode', '0000'),
(1812, 268, '_billing_country', 'VE'),
(1813, 268, '_billing_email', 'l@l.com'),
(1814, 268, '_billing_phone', '3576326'),
(1815, 268, '_order_currency', 'USD'),
(1816, 268, '_cart_discount', '0'),
(1817, 268, '_cart_discount_tax', '0'),
(1818, 268, '_order_shipping', '0.00'),
(1819, 268, '_order_shipping_tax', '0'),
(1820, 268, '_order_tax', '0'),
(1821, 268, '_order_total', '16.00'),
(1822, 268, '_order_version', '3.6.2'),
(1823, 268, '_prices_include_tax', 'no'),
(1824, 268, '_billing_address_index', 'Leonardo Hernandez  Calle 6 entre carreras 21 y 24 . Barquisimeto Lara 0000 VE l@l.com 3576326'),
(1825, 268, '_shipping_address_index', '        '),
(1826, 268, '_billing_myfield11', 'Femenino'),
(1827, 268, '_billing_myfield12', '0414'),
(1828, 268, '_billing_myfield13', 'V-'),
(1829, 268, '_billing_myfield14', '23484044'),
(1830, 268, '_billing_myfield15', '1992-05-16'),
(1831, 268, '_billing_myfield16', 'Soltera/o'),
(1832, 268, '_billing_myfield17', 'Si'),
(1833, 268, '_billing_myfield18', 'Automóvil'),
(1834, 268, '_billing_myfield19', '1980'),
(1835, 268, '_billing_myfield20', 'Acura'),
(1836, 268, '_billing_myfield21', '123123'),
(1837, 268, '_billing_myfield22', '123123'),
(1838, 268, '_billing_myfield23', '123123'),
(1839, 268, '_billing_myfield24', 'Techo Duro'),
(1840, 268, '_billing_myfield25', 'Stands de venta'),
(1841, 268, '_billing_canal', 'PAG'),
(1842, 268, '_billing_tipovental', 'Nuevo'),
(1843, 268, 'is_vat_exempt', 'no'),
(1844, 268, '_recorded_sales', 'yes'),
(1845, 268, '_recorded_coupon_usage_counts', 'yes'),
(1846, 268, '_order_stock_reduced', 'yes'),
(1847, 268, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1848, 268, '_edit_lock', '1562790205:1'),
(1849, 269, '_action_manager_schedule', 'O:30:"ActionScheduler_SimpleSchedule":1:{s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1563052766;}'),
(1850, 270, '_action_manager_schedule', 'O:32:"ActionScheduler_IntervalSchedule":2:{s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1563571166;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;}'),
(1851, 272, '_order_key', 'wc_order_t4IbNRlY3GEVz'),
(1852, 272, '_customer_user', '0'),
(1853, 272, '_payment_method', 'bacs'),
(1854, 272, '_payment_method_title', 'Transferencia bancaria directa'),
(1855, 272, '_customer_ip_address', '127.0.0.1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1856, 272, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1857, 272, '_created_via', 'checkout'),
(1858, 272, '_cart_hash', '131034a29e4242696349794784ca4f16'),
(1859, 272, '_billing_first_name', 'Leonardo'),
(1860, 272, '_billing_last_name', 'Hernandez'),
(1861, 272, '_billing_address_1', 'Calle 6 entre carreras 21 y 24'),
(1862, 272, '_billing_address_2', 'a'),
(1863, 272, '_billing_city', 'Barquisimeto'),
(1864, 272, '_billing_state', 'Lara'),
(1865, 272, '_billing_postcode', '0000'),
(1866, 272, '_billing_country', 'VE'),
(1867, 272, '_billing_email', 'ing.leonardo.hp@gmail.com'),
(1868, 272, '_billing_phone', '3576326'),
(1869, 272, '_order_currency', 'USD'),
(1870, 272, '_cart_discount', '0'),
(1871, 272, '_cart_discount_tax', '0'),
(1872, 272, '_order_shipping', '0'),
(1873, 272, '_order_shipping_tax', '0'),
(1874, 272, '_order_tax', '0'),
(1875, 272, '_order_total', '16.00'),
(1876, 272, '_order_version', '3.6.2'),
(1877, 272, '_prices_include_tax', 'no'),
(1878, 272, '_billing_address_index', 'Leonardo Hernandez  Calle 6 entre carreras 21 y 24 a Barquisimeto Lara 0000 VE ing.leonardo.hp@gmail.com 3576326'),
(1879, 272, '_shipping_address_index', '        '),
(1880, 272, '_billing_myfield11', 'Masculino'),
(1881, 272, '_billing_myfield12', '0414'),
(1882, 272, '_billing_myfield13', 'V-'),
(1883, 272, '_billing_myfield14', '23484044'),
(1884, 272, '_billing_myfield15', '1992-05-16'),
(1885, 272, '_billing_myfield16', 'Soltera/o'),
(1886, 272, '_billing_myfield17', 'Si'),
(1887, 272, '_billing_myfield18', 'Automóvil'),
(1888, 272, '_billing_myfield19', '1980'),
(1889, 272, '_billing_myfield20', 'Changhe'),
(1890, 272, '_billing_myfield21', '123123'),
(1891, 272, '_billing_myfield22', '123123'),
(1892, 272, '_billing_myfield23', '123123'),
(1893, 272, '_billing_myfield24', 'Pick Up'),
(1894, 272, '_billing_myfield25', 'Stands de venta'),
(1895, 272, '_billing_canal', 'PAG'),
(1896, 272, '_billing_tipovental', 'Nuevo'),
(1897, 272, 'is_vat_exempt', 'no'),
(1898, 272, '_ywau_order_uploads', '6121d461898b8f54cd61f8b6867bca02'),
(1899, 272, '_recorded_sales', 'yes'),
(1900, 272, '_recorded_coupon_usage_counts', 'yes'),
(1901, 272, '_order_stock_reduced', 'yes'),
(1902, 272, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1903, 272, '_edit_lock', '1563390437:1'),
(1904, 273, '_order_key', 'wc_order_TJHB7NjdgALx5'),
(1905, 273, '_customer_user', '0'),
(1906, 273, '_payment_method', 'bacs'),
(1907, 273, '_payment_method_title', 'Transferencia bancaria directa'),
(1908, 273, '_customer_ip_address', '127.0.0.1'),
(1909, 273, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36'),
(1910, 273, '_created_via', 'checkout'),
(1911, 273, '_cart_hash', '131034a29e4242696349794784ca4f16'),
(1912, 273, '_billing_first_name', 'Leonardo'),
(1913, 273, '_billing_last_name', 'Hernandez'),
(1914, 273, '_billing_address_1', 'Calle 6 entre carreras 21 y 24'),
(1915, 273, '_billing_address_2', 'Tamaca'),
(1916, 273, '_billing_city', 'Barquisimeto'),
(1917, 273, '_billing_state', 'Amazonas'),
(1918, 273, '_billing_postcode', '0000'),
(1919, 273, '_billing_country', 'VE'),
(1920, 273, '_billing_email', 'ing.leonardo.hp@gmail.com'),
(1921, 273, '_billing_phone', '3576326'),
(1922, 273, '_order_currency', 'USD'),
(1923, 273, '_cart_discount', '0'),
(1924, 273, '_cart_discount_tax', '0'),
(1925, 273, '_order_shipping', '0'),
(1926, 273, '_order_shipping_tax', '0'),
(1927, 273, '_order_tax', '0'),
(1928, 273, '_order_total', '16.00'),
(1929, 273, '_order_version', '3.6.2'),
(1930, 273, '_prices_include_tax', 'no'),
(1931, 273, '_billing_address_index', 'Leonardo Hernandez  Calle 6 entre carreras 21 y 24 Tamaca Barquisimeto Amazonas 0000 VE ing.leonardo.hp@gmail.com 3576326'),
(1932, 273, '_shipping_address_index', '        '),
(1933, 273, '_billing_myfield11', 'Masculino'),
(1934, 273, '_billing_myfield12', '0414'),
(1935, 273, '_billing_myfield13', 'V-'),
(1936, 273, '_billing_myfield14', '23484044'),
(1937, 273, '_billing_myfield15', '1992-05-16'),
(1938, 273, '_billing_myfield16', 'Casada/o'),
(1939, 273, '_billing_myfield17', 'Si'),
(1940, 273, '_billing_myfield18', 'Camioneta'),
(1941, 273, '_billing_myfield19', '1980'),
(1942, 273, '_billing_myfield20', 'Acura'),
(1943, 273, '_billing_myfield21', '123122'),
(1944, 273, '_billing_myfield22', '123123'),
(1945, 273, '_billing_myfield23', 'qwseqwe'),
(1946, 273, '_billing_myfield24', 'Sport Wagon'),
(1947, 273, '_billing_myfield25', 'Stands de venta'),
(1948, 273, '_billing_canal', 'PAG'),
(1949, 273, '_billing_tipovental', 'Nuevo'),
(1950, 273, 'is_vat_exempt', 'no'),
(1951, 273, '_ywau_order_uploads', '9effd75c65ff0020c893939de6df73e3'),
(1952, 273, '_recorded_sales', 'yes'),
(1953, 273, '_recorded_coupon_usage_counts', 'yes'),
(1954, 273, '_order_stock_reduced', 'yes'),
(1955, 273, 'wmc_order_info', 'a:2:{s:3:"VES";a:5:{s:4:"rate";s:9:"248208.00";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:4:"Bs.S";s:4:"hide";s:1:"0";}s:3:"USD";a:6:{s:4:"rate";s:1:"1";s:3:"pos";s:4:"left";s:8:"decimals";s:1:"2";s:6:"custom";s:0:"";s:4:"hide";s:1:"0";s:7:"is_main";i:1;}}'),
(1956, 273, '_edit_lock', '1563390283:1'),
(1957, 273, '_edit_last', '1'),
(1958, 272, '_edit_last', '1'),
(1959, 272, '_date_completed', '1563390381'),
(1960, 272, '_date_paid', '1563390381'),
(1961, 272, '_paid_date', '2019-07-17 21:06:21'),
(1962, 272, '_completed_date', '2019-07-17 21:06:21'),
(1963, 272, '_download_permissions_granted', 'yes'),
(1964, 274, '_action_manager_schedule', 'O:32:"ActionScheduler_IntervalSchedule":2:{s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1564408942;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:604800;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-03-07 01:22:33', '2019-03-07 00:22:33', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2019-03-07 01:22:33', '2019-03-07 00:22:33', '', 0, 'http://tugruero.dev.com/?p=1', 0, 'post', '', 1),
(2, 1, '2019-03-07 01:22:33', '2019-03-07 00:22:33', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href="http://tugruero.dev.com/wp-admin/">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2019-03-07 01:22:33', '2019-03-07 00:22:33', '', 0, 'http://tugruero.dev.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-03-07 01:22:33', '2019-03-07 00:22:33', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://tugruero.dev.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2019-03-07 01:22:33', '2019-03-07 00:22:33', '', 0, 'http://tugruero.dev.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-03-07 01:23:02', '2019-03-07 00:23:02', '[text* your-name placeholder "Nombre y Apellido"][email* your-email placeholder "Correo Electrónico"][tel* tel-854 placeholder "Número de teléfono"][textarea your-message placeholder "Mensaje"]\r\n\r\n[submit "Contáctar"]\n1\nTuGruero.com "[your-subject]"\nTuGruero.com <wordpress@tugruero.dev.com>\nfidel.alejos@gmail.com\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en TuGruero.com (http://tugruero.dev.com)\nReply-To: [your-email]\n\n\n\n\nTuGruero.com "[your-subject]"\nTuGruero.com <wordpress@tugruero.dev.com>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en TuGruero.com (http://tugruero.dev.com)\nReply-To: fidel.alejos@gmail.com\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor revisa e inténtalo de nuevo.\nHubo un error intentando enviar tu mensaje. Por favor inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nEl campo es obligatorio.\nEl campo es demasiado largo.\nEl campo es demasiado corto.\nEl formato de fecha es incorrecto.\nLa fecha es anterior a la más temprana permitida.\nLa fecha es posterior a la más tardía permitida.\nHubo un error desconocido subiendo el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo es demasiado grande.\nSe ha producido un error subiendo la imagen\nEl formato de número no es válido.\nEl número es menor que el mínimo permitido.\nEl número es mayor que el máximo permitido.\nLa respuesta al cuestionario no es correcta.\nEl código introducido es incorrecto.\nLa dirección de correo electrónico que has introducido no es válida.\nLa URL no es válida.\nEl número de teléfono no es válido.', 'Formulario de contacto 1', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2019-03-24 21:37:46', '2019-03-24 20:37:46', '', 0, 'http://tugruero.dev.com/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2019-03-07 01:24:36', '2019-03-07 00:24:36', '', 'Tienda', '', 'publish', 'closed', 'closed', '', 'tienda', '', '', '2019-03-07 01:24:36', '2019-03-07 00:24:36', '', 0, 'http://tugruero.dev.com/tienda/', 0, 'page', '', 0),
(7, 1, '2019-03-07 01:24:36', '2019-03-07 00:24:36', '[woocommerce_cart]', 'Carrito', '', 'publish', 'closed', 'closed', '', 'carrito', '', '', '2019-03-07 01:24:36', '2019-03-07 00:24:36', '', 0, 'http://tugruero.dev.com/carrito/', 0, 'page', '', 0),
(8, 1, '2019-03-07 01:24:36', '2019-03-07 00:24:36', '[woocommerce_checkout]\r\n<script type="text/javascript">\r\ndocument.getElementById(\'billing_myfield15\').setAttribute("type","date");\r\n</script>', 'Datos del propietario', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2019-05-05 00:25:15', '2019-05-04 22:25:15', '', 0, 'http://tugruero.dev.com/finalizar-compra/', 0, 'page', '', 0),
(9, 1, '2019-03-07 01:24:37', '2019-03-07 00:24:37', '[woocommerce_my_account]', 'Mi cuenta', '', 'publish', 'closed', 'closed', '', 'mi-cuenta', '', '', '2019-03-07 01:24:37', '2019-03-07 00:24:37', '', 0, 'http://tugruero.dev.com/mi-cuenta/', 0, 'page', '', 0),
(10, 1, '2019-03-07 01:30:17', '2019-03-07 00:30:17', '<img src="https://i.imgur.com/rN3frbv.png" />Auxilio vial en 30 minutos<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Acceso a servicios vía Call Center<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Búsqueda de grueros vía GPS<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Disponible en los 24 estados del país<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />2000 grueros disponibles para el auxilio<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />RCV (Opcional)<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Tres (03) servicios de grúa de máximo 25Km de recorrido; Ideal para clientes que circulan solo en las ciudades<br>\r\n\r\n<img src="https://i.imgur.com/9VC2obm.png" />Servicios de grúa ilimitados de 50Km<br>\r\n\r\n<img src="https://i.imgur.com/9VC2obm.png" />Un (01) servicios de grúa de 100Km<br>', 'Plan Classic', '(Con IVA incluido) - Anual\r\n\r\n<strong>15% de descuento</strong>', 'publish', 'open', 'closed', '', 'plan-basico', '', '', '2019-05-15 22:59:15', '2019-05-15 20:59:15', '', 0, 'http://tugruero.dev.com/?post_type=product&#038;p=10', 0, 'product', '', 0),
(11, 1, '2019-03-07 01:38:08', '2019-03-07 00:38:08', '[RM_Front_Submissions]', 'Submissions', '', 'publish', 'closed', 'closed', '', 'rm_submissions', '', '', '2019-03-07 01:38:08', '2019-03-07 00:38:08', '', 0, 'http://tugruero.dev.com/rm_submissions/', 0, 'page', '', 0),
(12, 1, '2019-03-07 01:38:08', '2019-03-07 00:38:08', '[RM_Login]', 'Login', '', 'publish', 'closed', 'closed', '', 'rm_login', '', '', '2019-03-07 01:38:08', '2019-03-07 00:38:08', '', 0, 'http://tugruero.dev.com/rm_login/', 0, 'page', '', 0),
(13, 1, '2019-03-07 02:28:13', '2019-03-07 01:28:13', '', 'Registro', '', 'publish', 'closed', 'closed', '', 'registro', '', '', '2019-03-07 02:28:13', '2019-03-07 01:28:13', '', 0, 'http://tugruero.dev.com/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-03-07 02:28:13', '2019-03-07 01:28:13', '', 'Registro', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-03-07 02:28:13', '2019-03-07 01:28:13', '', 13, 'http://tugruero.dev.com/2019/03/07/13-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-03-23 01:40:37', '2019-03-23 00:40:37', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2019-05-15 16:40:17', '2019-05-15 14:40:17', '', 0, 'http://localhost/tugruero/?p=26', 1, 'nav_menu_item', '', 0),
(32, 1, '2019-03-23 03:43:59', '2019-03-23 02:43:59', '', 'Planes', '', 'publish', 'closed', 'closed', '', 'plan', '', '', '2019-05-15 16:40:17', '2019-05-15 14:40:17', '', 0, 'http://localhost/tugruero/?p=32', 2, 'nav_menu_item', '', 0),
(34, 1, '2019-03-23 03:44:00', '2019-03-23 02:44:00', '', 'Galería', '', 'publish', 'closed', 'closed', '', 'galeria', '', '', '2019-05-15 16:40:18', '2019-05-15 14:40:18', '', 0, 'http://localhost/tugruero/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2019-03-23 03:44:00', '2019-03-23 02:44:00', '', 'Contáctanos', '', 'publish', 'closed', 'closed', '', 'contactanos', '', '', '2019-05-15 16:40:18', '2019-05-15 14:40:18', '', 0, 'http://localhost/tugruero/?p=35', 5, 'nav_menu_item', '', 0),
(37, 1, '2019-03-23 03:49:22', '2019-03-23 02:49:22', '<h1>¿Te quedaste</h1>\r\n<h1>accidentado?</h1>\r\n&nbsp;\r\n<p style="text-align: left;">¡No esperes más, llámanos</p>\r\n<p style="text-align: left;">y te enviamos la grúa de inmediato!</p>\r\n<a href="tel:+582122379227" class="boton-tg">Llámanos 0212-237-92-27</a>', '¿Te quedaste accidentado?', '', 'publish', 'closed', 'closed', '', 'te-quedaste-accidentado', '', '', '2019-05-17 16:58:54', '2019-05-17 14:58:54', '', 0, 'http://localhost/tugruero/?post_type=banner&#038;p=37', 0, 'banner', '', 0),
(38, 1, '2019-03-23 03:49:08', '2019-03-23 02:49:08', '', 'BANNER 01', '', 'inherit', 'open', 'closed', '', 'banner-01', '', '', '2019-03-23 03:49:08', '2019-03-23 02:49:08', '', 37, 'http://localhost/tugruero/wp-content/uploads/2019/03/BANNER-01.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-03-23 03:50:48', '2019-03-23 02:50:48', '<h1>¡Chatea con nosotros!</h1>\r\n<p style="text-align: left;">Habla ya con uno de nuestros agentes y afiliate a nuestros planes</p>\r\n<a href="https://api.whatsapp.com/send?phone=584241391462" target="_blank" class="boton-tg" rel="noopener noreferrer"><img src="wp-content/uploads/2019/05/Logo-WhatsApp.png"> Whatsapp</a>', 'Chatea con nosotros', '', 'publish', 'closed', 'closed', '', 'banner-2', '', '', '2019-05-20 20:07:45', '2019-05-20 18:07:45', '', 0, 'http://localhost/tugruero/?post_type=banner&#038;p=40', 0, 'banner', '', 0),
(41, 1, '2019-03-23 03:50:35', '2019-03-23 02:50:35', '', 'Banner 02', '', 'inherit', 'open', 'closed', '', 'banner-02', '', '', '2019-03-23 03:50:35', '2019-03-23 02:50:35', '', 40, 'http://localhost/tugruero/wp-content/uploads/2019/03/Banner-02.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-03-23 03:51:34', '2019-03-23 02:51:34', '<h1>No esperes más</h1>\r\n<p style="text-align: left;">¡Quedarse accidentado ya no es un problema!</p>\r\n<p style="text-align: left;">Tenemos el mejor servicio de grúas de todo el país</p>\r\n<a id="btnplanes" class="boton-tg" href="#planes">Planes</a>', 'No esperes mas', '', 'publish', 'closed', 'closed', '', 'banner-3', '', '', '2019-05-17 16:54:55', '2019-05-17 14:54:55', '', 0, 'http://localhost/tugruero/?post_type=banner&#038;p=42', 0, 'banner', '', 0),
(43, 1, '2019-03-23 03:51:20', '2019-03-23 02:51:20', '', 'Banner 3', '', 'inherit', 'open', 'closed', '', 'banner-3', '', '', '2019-03-23 03:51:20', '2019-03-23 02:51:20', '', 42, 'http://localhost/tugruero/wp-content/uploads/2019/03/Banner-3.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2019-03-23 03:57:30', '2019-03-23 02:57:30', 'Servicio activo los 365 días del año', 'Servicio 1', '', 'publish', 'closed', 'closed', '', 'servicio-1', '', '', '2019-03-23 03:57:30', '2019-03-23 02:57:30', '', 0, 'http://localhost/tugruero/?post_type=servicios&#038;p=45', 0, 'servicios', '', 0),
(46, 1, '2019-03-23 03:57:13', '2019-03-23 02:57:13', '', 'CALENDARIO', '', 'inherit', 'open', 'closed', '', 'calendario', '', '', '2019-03-23 03:57:13', '2019-03-23 02:57:13', '', 45, 'http://localhost/tugruero/wp-content/uploads/2019/03/CALENDARIO.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2019-03-23 03:59:09', '2019-03-23 02:59:09', 'Más de 2000 grueros en toda Venezuela', 'Servicio 2', '', 'publish', 'closed', 'closed', '', 'servicio-2', '', '', '2019-03-23 03:59:09', '2019-03-23 02:59:09', '', 0, 'http://localhost/tugruero/?post_type=servicios&#038;p=47', 0, 'servicios', '', 0),
(48, 1, '2019-03-23 03:58:58', '2019-03-23 02:58:58', '', 'GRUAS', '', 'inherit', 'open', 'closed', '', 'gruas', '', '', '2019-03-23 03:58:58', '2019-03-23 02:58:58', '', 47, 'http://localhost/tugruero/wp-content/uploads/2019/03/GRUAS.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2019-03-23 04:01:05', '2019-03-23 03:01:05', '<p style="text-align: left;">Búsqueda de grueros por GPS</p>', 'Servicio 3', '', 'publish', 'closed', 'closed', '', 'servicio-3', '', '', '2019-03-24 16:39:01', '2019-03-24 15:39:01', '', 0, 'http://localhost/tugruero/?post_type=servicios&#038;p=49', 0, 'servicios', '', 0),
(50, 1, '2019-03-23 04:00:24', '2019-03-23 03:00:24', '', 'UBICACIÓN', '', 'inherit', 'open', 'closed', '', 'ubicacion', '', '', '2019-03-23 04:00:24', '2019-03-23 03:00:24', '', 49, 'http://localhost/tugruero/wp-content/uploads/2019/03/UBICACIÓN.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2019-03-23 04:11:57', '2019-03-23 03:11:57', 'No trabajamos con otras compañías de asistencia, pero en comparación de otro servicios ustedes son más atentos y responsables', 'Testimonio 1', '', 'publish', 'closed', 'closed', '', 'testimonio', '', '', '2019-03-24 20:04:31', '2019-03-24 19:04:31', '', 0, 'http://localhost/tugruero/?post_type=testimonios&#038;p=51', 0, 'testimonios', '', 0),
(52, 1, '2019-03-23 04:19:50', '2019-03-23 03:19:50', '', 'Referencia 1', '', 'publish', 'closed', 'closed', '', 'referencia-1', '', '', '2019-03-23 04:19:50', '2019-03-23 03:19:50', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=52', 0, 'referencia', '', 0),
(53, 1, '2019-03-23 04:19:39', '2019-03-23 03:19:39', '', 'EL ESTIMULO', '', 'inherit', 'open', 'closed', '', 'el-estimulo', '', '', '2019-03-23 04:19:39', '2019-03-23 03:19:39', '', 52, 'http://localhost/tugruero/wp-content/uploads/2019/03/EL-ESTIMULO.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-03-23 04:20:46', '2019-03-23 03:20:46', '', 'Referencia 2', '', 'publish', 'closed', 'closed', '', 'referencia-2', '', '', '2019-03-23 04:20:46', '2019-03-23 03:20:46', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=54', 0, 'referencia', '', 0),
(55, 1, '2019-03-23 04:20:34', '2019-03-23 03:20:34', '', 'TOUCHFM', '', 'inherit', 'open', 'closed', '', 'touchfm', '', '', '2019-03-23 04:20:34', '2019-03-23 03:20:34', '', 54, 'http://localhost/tugruero/wp-content/uploads/2019/03/TOUCHFM.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2019-03-23 04:21:26', '2019-03-23 03:21:26', '', 'Referencia 3', '', 'publish', 'closed', 'closed', '', 'referencia-3', '', '', '2019-03-23 04:21:26', '2019-03-23 03:21:26', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=56', 0, 'referencia', '', 0),
(57, 1, '2019-03-23 04:21:17', '2019-03-23 03:21:17', '', 'KIS', '', 'inherit', 'open', 'closed', '', 'kis', '', '', '2019-03-23 04:21:17', '2019-03-23 03:21:17', '', 56, 'http://localhost/tugruero/wp-content/uploads/2019/03/KIS.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-03-23 04:22:00', '2019-03-23 03:22:00', '', 'Referencia 4', '', 'publish', 'closed', 'closed', '', 'referencia-4', '', '', '2019-03-23 04:22:00', '2019-03-23 03:22:00', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=58', 0, 'referencia', '', 0),
(59, 1, '2019-03-23 04:21:50', '2019-03-23 03:21:50', '', 'EL NACIONAL', '', 'inherit', 'open', 'closed', '', 'el-nacional', '', '', '2019-03-23 04:21:50', '2019-03-23 03:21:50', '', 58, 'http://localhost/tugruero/wp-content/uploads/2019/03/EL-NACIONAL.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2019-03-23 04:22:35', '2019-03-23 03:22:35', '', 'Referencia 5', '', 'publish', 'closed', 'closed', '', 'referencia-5', '', '', '2019-03-23 04:22:35', '2019-03-23 03:22:35', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=60', 0, 'referencia', '', 0),
(61, 1, '2019-03-23 04:22:25', '2019-03-23 03:22:25', '', 'EL UNIVERSAL', '', 'inherit', 'open', 'closed', '', 'el-universal', '', '', '2019-03-23 04:22:25', '2019-03-23 03:22:25', '', 60, 'http://localhost/tugruero/wp-content/uploads/2019/03/EL-UNIVERSAL.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-03-23 04:23:38', '2019-03-23 03:23:38', '', 'Referencia 6', '', 'publish', 'closed', 'closed', '', 'referencia-6', '', '', '2019-03-23 04:23:38', '2019-03-23 03:23:38', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=62', 0, 'referencia', '', 0),
(63, 1, '2019-03-23 04:23:29', '2019-03-23 03:23:29', '', 'EXITOS', '', 'inherit', 'open', 'closed', '', 'exitos', '', '', '2019-03-23 04:23:29', '2019-03-23 03:23:29', '', 62, 'http://localhost/tugruero/wp-content/uploads/2019/03/EXITOS.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2019-03-23 04:24:12', '2019-03-23 03:24:12', '', 'Referencia 7', '', 'publish', 'closed', 'closed', '', 'referencia-7', '', '', '2019-03-23 04:24:12', '2019-03-23 03:24:12', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=64', 0, 'referencia', '', 0),
(65, 1, '2019-03-23 04:24:04', '2019-03-23 03:24:04', '', 'EL MUNDO', '', 'inherit', 'open', 'closed', '', 'el-mundo', '', '', '2019-03-23 04:24:04', '2019-03-23 03:24:04', '', 64, 'http://localhost/tugruero/wp-content/uploads/2019/03/EL-MUNDO.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-03-23 04:24:55', '2019-03-23 03:24:55', '', 'Referencia 8', '', 'publish', 'closed', 'closed', '', 'referencia-8', '', '', '2019-03-23 04:24:55', '2019-03-23 03:24:55', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=66', 0, 'referencia', '', 0),
(67, 1, '2019-03-23 04:24:46', '2019-03-23 03:24:46', '', 'UNION RADIO', '', 'inherit', 'open', 'closed', '', 'union-radio', '', '', '2019-03-23 04:24:46', '2019-03-23 03:24:46', '', 66, 'http://localhost/tugruero/wp-content/uploads/2019/03/UNION-RADIO.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2019-03-23 04:25:29', '2019-03-23 03:25:29', '', 'Referencia 9', '', 'publish', 'closed', 'closed', '', 'referencia-9', '', '', '2019-03-23 04:25:29', '2019-03-23 03:25:29', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=68', 0, 'referencia', '', 0),
(69, 1, '2019-03-23 04:25:21', '2019-03-23 03:25:21', '', 'PRODUCTO', '', 'inherit', 'open', 'closed', '', 'producto', '', '', '2019-03-23 04:25:21', '2019-03-23 03:25:21', '', 68, 'http://localhost/tugruero/wp-content/uploads/2019/03/PRODUCTO.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2019-03-23 04:26:05', '2019-03-23 03:26:05', '', 'Referencia 10', '', 'publish', 'closed', 'closed', '', 'referencia-10', '', '', '2019-03-23 04:26:05', '2019-03-23 03:26:05', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=70', 0, 'referencia', '', 0),
(71, 1, '2019-03-23 04:25:57', '2019-03-23 03:25:57', '', 'TODO EN DOMINGO', '', 'inherit', 'open', 'closed', '', 'todo-en-domingo', '', '', '2019-03-23 04:25:57', '2019-03-23 03:25:57', '', 70, 'http://localhost/tugruero/wp-content/uploads/2019/03/TODO-EN-DOMINGO.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2019-03-23 04:26:45', '2019-03-23 03:26:45', '', 'Referencia 11', '', 'publish', 'closed', 'closed', '', 'referencia-11', '', '', '2019-03-23 04:26:45', '2019-03-23 03:26:45', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=72', 0, 'referencia', '', 0),
(73, 1, '2019-03-23 04:26:37', '2019-03-23 03:26:37', '', 'EL EMPREDEDOR', '', 'inherit', 'open', 'closed', '', 'el-emprededor', '', '', '2019-03-23 04:26:37', '2019-03-23 03:26:37', '', 72, 'http://localhost/tugruero/wp-content/uploads/2019/03/EL-EMPREDEDOR.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2019-03-23 04:27:23', '2019-03-23 03:27:23', '', 'Referencia 12', '', 'publish', 'closed', 'closed', '', 'referencia-12', '', '', '2019-03-23 04:27:23', '2019-03-23 03:27:23', '', 0, 'http://localhost/tugruero/?post_type=referencia&#038;p=74', 0, 'referencia', '', 0),
(75, 1, '2019-03-23 04:27:15', '2019-03-23 03:27:15', '', 'LA MEGA', '', 'inherit', 'open', 'closed', '', 'la-mega', '', '', '2019-03-23 04:27:15', '2019-03-23 03:27:15', '', 74, 'http://localhost/tugruero/wp-content/uploads/2019/03/LA-MEGA.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2019-03-23 04:29:21', '2019-03-23 03:29:21', '', 'TESTIMONIOS', '', 'inherit', 'open', 'closed', '', 'testimonios', '', '', '2019-03-23 04:29:21', '2019-03-23 03:29:21', '', 51, 'http://localhost/tugruero/wp-content/uploads/2019/03/TESTIMONIOS.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2019-03-23 04:34:40', '2019-03-23 03:34:40', '', 'Galería 1', '', 'publish', 'closed', 'closed', '', 'galeria-1', '', '', '2019-05-07 18:54:57', '2019-05-07 16:54:57', '', 0, 'http://localhost/tugruero/?post_type=galeria&#038;p=78', 0, 'galeria', '', 0),
(79, 1, '2019-03-23 04:34:25', '2019-03-23 03:34:25', '', 'NUESTROS PLANES', '', 'inherit', 'open', 'closed', '', 'nuestros-planes', '', '', '2019-03-23 04:34:25', '2019-03-23 03:34:25', '', 78, 'http://localhost/tugruero/wp-content/uploads/2019/03/NUESTROS-PLANES.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2019-03-23 04:35:17', '2019-03-23 03:35:17', '', 'Galería 2', '', 'publish', 'closed', 'closed', '', 'galeria-2', '', '', '2019-05-07 18:53:00', '2019-05-07 16:53:00', '', 0, 'http://localhost/tugruero/?post_type=galeria&#038;p=80', 0, 'galeria', '', 0),
(81, 1, '2019-03-23 04:35:07', '2019-03-23 03:35:07', '', 'NUESTROS SERVICIOS', '', 'inherit', 'open', 'closed', '', 'nuestros-servicios', '', '', '2019-03-23 04:35:07', '2019-03-23 03:35:07', '', 80, 'http://localhost/tugruero/wp-content/uploads/2019/03/NUESTROS-SERVICIOS.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2019-03-23 04:35:54', '2019-03-23 03:35:54', '', 'Galería 3', '', 'publish', 'closed', 'closed', '', 'galeria-3', '', '', '2019-05-07 19:02:25', '2019-05-07 17:02:25', '', 0, 'http://localhost/tugruero/?post_type=galeria&#038;p=82', 0, 'galeria', '', 0),
(83, 1, '2019-03-23 04:35:44', '2019-03-23 03:35:44', '', 'TUGRUEROCORPORATIVO', '', 'inherit', 'open', 'closed', '', 'tugruerocorporativo', '', '', '2019-03-23 04:35:44', '2019-03-23 03:35:44', '', 82, 'http://localhost/tugruero/wp-content/uploads/2019/03/TUGRUEROCORPORATIVO.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2019-03-23 04:37:10', '2019-03-23 03:37:10', '', 'Galería 4', '', 'publish', 'closed', 'closed', '', 'galeria-4', '', '', '2019-05-07 19:05:50', '2019-05-07 17:05:50', '', 0, 'http://localhost/tugruero/?post_type=galeria&#038;p=84', 0, 'galeria', '', 0),
(85, 1, '2019-03-23 04:36:22', '2019-03-23 03:36:22', '', 'BANNER 01', '', 'inherit', 'open', 'closed', '', 'banner-01-2', '', '', '2019-03-23 04:36:22', '2019-03-23 03:36:22', '', 84, 'http://localhost/tugruero/wp-content/uploads/2019/03/BANNER-01-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2019-03-23 04:38:03', '2019-03-23 03:38:03', '', 'Galería 5', '', 'publish', 'closed', 'closed', '', 'galeria-5', '', '', '2019-05-07 19:07:26', '2019-05-07 17:07:26', '', 0, 'http://localhost/tugruero/?post_type=galeria&#038;p=87', 0, 'galeria', '', 0),
(88, 1, '2019-05-05 18:59:48', '2019-05-05 16:59:48', '<img src="https://i.imgur.com/rN3frbv.png" />Auxilio vial en 30 minutos<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Acceso a servicios vía Call Center<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Búsqueda de grueros vía GPS<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Disponible en los 24 estados del país<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />2000 grueros disponibles para el auxilio<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />RCV (Opcional)<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Tres (03) servicios de grúa de 25Km<br>\n\n<img src="https://i.imgur.com/9VC2obm.png" />Servicios de grúa ilimitados de 50Km<br>\n\n<img src="https://i.imgur.com/9VC2obm.png" />Un (01) servicios de grúa de 100Km<br>', 'Plan Básico', '(Con IVA incluido) - Anual\n\n<strong>15% de descuento</strong>', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2019-05-05 18:59:48', '2019-05-05 16:59:48', '', 10, 'http://localhost/tugruero/2019/03/23/10-autosave-v1/', 0, 'revision', '', 0),
(89, 1, '2019-03-23 04:52:23', '2019-03-23 03:52:23', '', 'BÁSICO', '', 'inherit', 'open', 'closed', '', 'basico', '', '', '2019-03-23 04:52:23', '2019-03-23 03:52:23', '', 10, 'http://localhost/tugruero/wp-content/uploads/2019/03/BÁSICO.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2019-03-23 05:01:07', '2019-03-23 04:01:07', '<img src="https://i.imgur.com/rN3frbv.png" />Auxilio vial en 30 minutos<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Acceso a servicios vía Call Center<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Búsqueda de grueros vía GPS<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Disponible en los 24 estados del país<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />2000 grueros disponibles para el auxilio<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />RCV (Opcional)<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Tres (03) servicios de grúa de 25Km<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Servicios de grúa ilimitados de máximo 50Km de recorrido; Ideal para clientes que circulan en las ciudades y zonas aledañas<br>\r\n\r\n<img src="https://i.imgur.com/9VC2obm.png" />Un (01) servicios de grúa de 100Km<br>', 'Plan Plus', '(Con IVA incluido) - Anual\r\n\r\n<strong>15% de descuento</strong>', 'publish', 'open', 'closed', '', 'plan-plus', '', '', '2019-05-15 23:00:37', '2019-05-15 21:00:37', '', 0, 'http://localhost/tugruero/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2019-03-23 05:01:29', '2019-03-23 04:01:29', '', 'PLUS', '', 'inherit', 'open', 'closed', '', 'plus', '', '', '2019-03-23 05:01:29', '2019-03-23 04:01:29', '', 90, 'http://localhost/tugruero/wp-content/uploads/2019/03/PLUS.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2019-03-23 05:04:17', '2019-03-23 04:04:17', '<img src="https://i.imgur.com/rN3frbv.png" />Auxilio vial en 30 minutos<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Acceso a servicios vía Call Center<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Búsqueda de grueros vía GPS<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Disponible en los 24 estados del país<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />2000 grueros disponibles para el auxilio<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />RCV (Opcional)<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Tres (03) servicios de grúa de 25Km<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Servicios de grúa ilimitados de 50Km<br>\r\n\r\n<img src="https://i.imgur.com/rN3frbv.png" />Un (01) servicio de máximo 100 Km de recorrido.\r\n Ideal para clientes que circulan en las ciudades, zona aledañas y carreteras.<br>\r\n', 'Plan Gold', '(Con IVA incluido) - Anual\r\n\r\n<strong>15% de descuento</strong>', 'publish', 'open', 'closed', '', 'plan-gold', '', '', '2019-07-16 17:15:13', '2019-07-16 15:15:13', '', 0, 'http://localhost/tugruero/?post_type=product&#038;p=92', 0, 'product', '', 0),
(93, 1, '2019-03-23 05:02:43', '2019-03-23 04:02:43', '', 'GOLD', '', 'inherit', 'open', 'closed', '', 'gold', '', '', '2019-03-23 05:02:43', '2019-03-23 04:02:43', '', 92, 'http://localhost/tugruero/wp-content/uploads/2019/03/GOLD.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2019-03-23 05:05:03', '2019-03-23 04:05:03', '', 'BÁSICO', '', 'inherit', 'open', 'closed', '', 'basico-2', '', '', '2019-03-23 05:05:03', '2019-03-23 04:05:03', '', 10, 'http://localhost/tugruero/wp-content/uploads/2019/03/BÁSICO-1.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2019-03-24 01:09:15', '2019-03-24 00:09:15', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"testimonios";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Campos adicionales', 'campos-adicionales', 'publish', 'closed', 'closed', '', 'group_5c96ca3ba5036', '', '', '2019-03-24 18:42:36', '2019-03-24 17:42:36', '', 0, 'http://localhost/tugruero/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2019-03-24 01:09:16', '2019-03-24 00:09:16', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Cargo', 'cargo', 'publish', 'closed', 'closed', '', 'field_5c96ca5a5d048', '', '', '2019-03-24 18:42:36', '2019-03-24 17:42:36', '', 95, 'http://localhost/tugruero/?post_type=acf-field&#038;p=96', 0, 'acf-field', '', 0),
(97, 1, '2019-03-24 01:20:00', '2019-03-24 00:20:00', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1', '', '', '2019-03-24 01:20:00', '2019-03-24 00:20:00', '', 0, 'http://localhost/tugruero/wp-content/uploads/2019/03/logo1.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2019-03-24 01:20:22', '2019-03-24 00:20:22', '', 'logo1', '', 'inherit', 'open', 'closed', '', 'logo1-2', '', '', '2019-03-24 01:20:22', '2019-03-24 00:20:22', '', 0, 'http://localhost/tugruero/wp-content/uploads/2019/03/logo1-1.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2019-03-24 01:44:50', '2019-03-24 00:44:50', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"informacion";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Campos adicionales', 'campos-adicionales', 'publish', 'closed', 'closed', '', 'group_5c96d214f14ec', '', '', '2019-03-24 22:23:07', '2019-03-24 21:23:07', '', 0, 'http://localhost/tugruero/?post_type=acf-field-group&#038;p=99', 0, 'acf-field-group', '', 0),
(100, 1, '2019-03-24 01:44:50', '2019-03-24 00:44:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Teléfono', 'telefono', 'publish', 'closed', 'closed', '', 'field_5c96d22386674', '', '', '2019-03-24 16:50:30', '2019-03-24 15:50:30', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=100', 2, 'acf-field', '', 0),
(101, 1, '2019-03-24 01:44:50', '2019-03-24 00:44:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Dirección', 'ciudad', 'publish', 'closed', 'closed', '', 'field_5c96d24286675', '', '', '2019-03-24 16:50:30', '2019-03-24 15:50:30', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=101', 3, 'acf-field', '', 0),
(102, 1, '2019-03-24 01:44:50', '2019-03-24 00:44:50', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Teléfonos', 'telefonos', 'publish', 'closed', 'closed', '', 'field_5c96d26086676', '', '', '2019-03-24 16:50:30', '2019-03-24 15:50:30', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=102', 4, 'acf-field', '', 0),
(103, 1, '2019-03-24 01:44:50', '2019-03-24 00:44:50', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Número de contingencia', 'numero_de_contingencia', 'publish', 'closed', 'closed', '', 'field_5c96d2d386677', '', '', '2019-03-24 16:50:30', '2019-03-24 15:50:30', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=103', 5, 'acf-field', '', 0),
(104, 1, '2019-03-24 01:49:55', '2019-03-24 00:49:55', 'Empresa venezolana de base tecnólogica dedicada al auxilio, asistencia vial y centro de monitoreo. Trabajamos las 24 horas del dia y los 365 días del año.\r\n\r\nBuscamos a los grueros via GPS.', 'Información básica', '', 'publish', 'closed', 'closed', '', 'informacion-basica', '', '', '2019-03-24 22:23:53', '2019-03-24 21:23:53', '', 0, 'http://localhost/tugruero/?post_type=informacion&#038;p=104', 0, 'informacion', '', 0),
(105, 1, '2019-03-24 01:51:11', '2019-03-24 00:51:11', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5c96d446ec66c', '', '', '2019-03-24 16:50:30', '2019-03-24 15:50:30', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=105', 6, 'acf-field', '', 0),
(106, 1, '2019-03-24 01:51:11', '2019-03-24 00:51:11', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5c96d456ec66d', '', '', '2019-03-24 16:50:30', '2019-03-24 15:50:30', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=106', 7, 'acf-field', '', 0),
(107, 1, '2019-03-24 01:51:11', '2019-03-24 00:51:11', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5c96d463ec66e', '', '', '2019-03-24 16:50:31', '2019-03-24 15:50:31', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=107', 8, 'acf-field', '', 0),
(108, 1, '2019-03-24 16:34:23', '2019-03-24 15:34:23', '', 'UBICACION', '', 'inherit', 'open', 'closed', '', 'ubicacion-2', '', '', '2019-03-24 16:34:23', '2019-03-24 15:34:23', '', 49, 'http://localhost/tugruero/wp-content/uploads/2019/03/UBICACION.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2019-03-24 16:50:30', '2019-03-24 15:50:30', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Planes tu gruero', 'planes_tu_gruero', 'publish', 'closed', 'closed', '', 'field_5c97a704823bb', '', '', '2019-03-24 17:43:28', '2019-03-24 16:43:28', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=109', 0, 'acf-field', '', 0),
(110, 1, '2019-03-24 16:50:30', '2019-03-24 15:50:30', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Servicios particulares', 'servicios_particulares', 'publish', 'closed', 'closed', '', 'field_5c97a716823bc', '', '', '2019-03-24 17:43:28', '2019-03-24 16:43:28', '', 99, 'http://localhost/tugruero/?post_type=acf-field&#038;p=110', 1, 'acf-field', '', 0),
(111, 1, '2019-03-24 19:42:33', '2019-03-24 18:42:33', 'En comparación de otro servicios ustedes son más atentos y responsables', 'Testimonio 2', '', 'publish', 'closed', 'closed', '', 'testimonio-2', '', '', '2019-04-05 03:38:10', '2019-04-05 01:38:10', '', 0, 'http://localhost/tugruero/?post_type=testimonios&#038;p=111', 0, 'testimonios', '', 0),
(112, 1, '2019-03-24 19:43:33', '2019-03-24 18:43:33', 'No trabajamos con otras compañías de asistencia, pero en comparación de otro servicios ustedes son más atentos y responsables', 'Testimonio 3', '', 'publish', 'closed', 'closed', '', 'testimonio-3', '', '', '2019-03-24 20:06:35', '2019-03-24 19:06:35', '', 0, 'http://localhost/tugruero/?post_type=testimonios&#038;p=112', 0, 'testimonios', '', 0),
(115, 1, '2019-03-24 19:59:36', '2019-03-24 18:59:36', '', 'IMG_20180525_172101 - copia', '', 'inherit', 'open', 'closed', '', 'img_20180525_172101-copia', '', '', '2019-03-24 19:59:36', '2019-03-24 18:59:36', '', 111, 'http://localhost/tugruero/wp-content/uploads/2019/03/IMG_20180525_172101-copia.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2019-03-24 20:04:15', '2019-03-24 19:04:15', '', '649704-615x378 - copia', '', 'inherit', 'open', 'closed', '', '649704-615x378-copia-2', '', '', '2019-03-24 20:04:15', '2019-03-24 19:04:15', '', 51, 'http://localhost/tugruero/wp-content/uploads/2019/03/649704-615x378-copia-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2019-03-24 20:06:00', '2019-03-24 19:06:00', '', 'foto', '', 'inherit', 'open', 'closed', '', 'foto-2', '', '', '2019-03-24 20:06:00', '2019-03-24 19:06:00', '', 112, 'http://localhost/tugruero/wp-content/uploads/2019/03/foto-1.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2019-03-24 20:27:38', '2019-03-24 19:27:38', 'No trabajamos con otras compañías de asistencia, pero en comparación de otro servicios ustedes son más atentos y responsables y estamos seguros que todos llegaremos a salvo a nuestro distino', 'Testimonio 4', '', 'publish', 'closed', 'closed', '', 'testimonio-4', '', '', '2019-04-05 03:38:04', '2019-04-05 01:38:04', '', 0, 'http://localhost/tugruero/?post_type=testimonios&#038;p=118', 0, 'testimonios', '', 0),
(119, 1, '2019-03-24 20:27:23', '2019-03-24 19:27:23', '', 'PhotoGrid_1553299951190', '', 'inherit', 'open', 'closed', '', 'photogrid_1553299951190', '', '', '2019-03-24 20:27:23', '2019-03-24 19:27:23', '', 118, 'http://localhost/tugruero/wp-content/uploads/2019/03/PhotoGrid_1553299951190.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2019-03-24 22:23:07', '2019-03-24 21:23:07', 'a:9:{s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_5c97f523f5cdb', '', '', '2019-03-24 22:23:07', '2019-03-24 21:23:07', '', 99, 'http://localhost/tugruero/?post_type=acf-field&p=120', 9, 'acf-field', '', 0),
(121, 1, '2019-03-25 00:28:28', '2019-03-24 23:28:28', '', 'BÁSICO', '', 'inherit', 'open', 'closed', '', 'basico-3', '', '', '2019-03-25 00:28:28', '2019-03-24 23:28:28', '', 10, 'http://localhost/tugruero/wp-content/uploads/2019/03/BÁSICO-2.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2019-03-25 00:29:27', '2019-03-24 23:29:27', '', 'BASICO', '', 'inherit', 'open', 'closed', '', 'basico-4', '', '', '2019-03-25 00:29:27', '2019-03-24 23:29:27', '', 10, 'http://localhost/tugruero/wp-content/uploads/2019/03/BASICO.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2019-03-25 01:49:49', '2019-03-25 00:49:49', '', 'BANNER 01', '', 'inherit', 'open', 'closed', '', 'banner-01-3', '', '', '2019-03-25 01:49:49', '2019-03-25 00:49:49', '', 78, 'http://localhost/tugruero/wp-content/uploads/2019/03/BANNER-01-2.png', 0, 'attachment', 'image/png', 0),
(124, 1, '2019-03-25 01:50:41', '2019-03-25 00:50:41', '', 'Banner 02', '', 'inherit', 'open', 'closed', '', 'banner-02-2', '', '', '2019-03-25 01:50:41', '2019-03-25 00:50:41', '', 80, 'http://localhost/tugruero/wp-content/uploads/2019/03/Banner-02-1.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2019-03-25 01:51:31', '2019-03-25 00:51:31', '', 'Banner 3', '', 'inherit', 'open', 'closed', '', 'banner-3-2', '', '', '2019-03-25 01:51:31', '2019-03-25 00:51:31', '', 82, 'http://localhost/tugruero/wp-content/uploads/2019/03/Banner-3-1.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2019-03-25 01:52:28', '2019-03-25 00:52:28', '', 'NUESTROS SERVICIOS', '', 'inherit', 'open', 'closed', '', 'nuestros-servicios-2', '', '', '2019-03-25 01:52:28', '2019-03-25 00:52:28', '', 84, 'http://localhost/tugruero/wp-content/uploads/2019/03/NUESTROS-SERVICIOS-1.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2019-03-25 01:53:21', '2019-03-25 00:53:21', '', 'TUGRUEROCORPORATIVO', '', 'inherit', 'open', 'closed', '', 'tugruerocorporativo-2', '', '', '2019-03-25 01:53:21', '2019-03-25 00:53:21', '', 87, 'http://localhost/tugruero/wp-content/uploads/2019/03/TUGRUEROCORPORATIVO-1.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2019-04-19 03:21:20', '2019-04-19 01:21:20', '<img src="https://i.imgur.com/rN3frbv.png" />Auxilio vial en 30 minutos\n\n<img src="https://i.imgur.com/rN3frbv.png" />Acceso a servicios vía Call Center\n\n<img src="https://i.imgur.com/rN3frbv.png" />Búsqueda de grueros vía GPS\n\n<img src="https://i.imgur.com/rN3frbv.png" />Disponible en los 24 estados del país\n\n<img src="https://i.imgur.com/rN3frbv.png" />2000 grueros disponibles para el auxilio\n\n<img src="https://i.imgur.com/rN3frbv.png" />RCV (Opcional)\n\n<img src="https://i.imgur.com/rN3frbv.png" />Tres (03) servicios de grúa de 25Km\n\n<img src="https://i.imgur.com/rN3frbv.png" />Servicios de grúa ilimitados de 50Km\n\n<img src="https://i.imgur.com/rN3frbv.png" />Un (01) servicios de grúa de 100Km', 'Plan Gold', '<p>(Con IVA incluido) - Anual<br></p><p><strong>25% de descuento</strong></p>', 'inherit', 'closed', 'closed', '', '92-autosave-v1', '', '', '2019-04-19 03:21:20', '2019-04-19 01:21:20', '', 92, 'http://tugruero.dev.com/2019/03/28/92-autosave-v1/', 0, 'revision', '', 0),
(130, 1, '2019-05-05 19:02:48', '2019-05-05 17:02:48', '<img src="https://i.imgur.com/rN3frbv.png" />Auxilio vial en 30 minutos<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Acceso a servicios vía Call Center<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Búsqueda de grueros vía GPS<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Disponible en los 24 estados del país<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />2000 grueros disponibles para el auxilio<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />RCV (Opcional)<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Tres (03) servicios de grúa de 25Km<br>\n\n<img src="https://i.imgur.com/rN3frbv.png" />Servicios de grúa ilimitados de 50Km<br>\n\n<img src="https://i.imgur.com/9VC2obm.png" />Un (01) servicios de grúa de 100Km<br>', 'Plan Plus', '(Con IVA incluido) - Anual\n\n<strong>15% de descuento</strong>', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2019-05-05 19:02:48', '2019-05-05 17:02:48', '', 90, 'http://tugruero.dev.com/2019/03/28/90-autosave-v1/', 0, 'revision', '', 0),
(131, 1, '2019-04-02 03:13:48', '2019-04-02 01:13:48', '', 'Order &ndash; abril 2, 2019 @ 03:13 AM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_wLwHkFlv5Thcx', 'pedido-apr-02-2019-0113-am', '', '', '2019-04-02 12:52:59', '2019-04-02 10:52:59', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=131', 0, 'shop_order', '', 1);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(141, 1, '2019-04-09 16:34:15', '2019-04-09 14:34:15', '', 'Order &ndash; abril 9, 2019 @ 04:34 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_qVTyqfrQvWaOk', 'pedido-apr-09-2019-0234-pm', '', '', '2019-04-09 18:13:00', '2019-04-09 16:13:00', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=141', 0, 'shop_order', '', 1),
(142, 1, '2019-04-09 19:58:22', '2019-04-09 17:58:22', '', 'Order &ndash; abril 9, 2019 @ 07:58 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_DEYacTihxdR4B', 'pedido-apr-09-2019-0558-pm', '', '', '2019-04-09 19:58:25', '2019-04-09 17:58:25', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=142', 0, 'shop_order', '', 1),
(143, 1, '2019-04-10 18:50:07', '2019-04-10 16:50:07', '', 'Order &ndash; abril 10, 2019 @ 06:50 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_TMxO8jbYAnV1w', 'pedido-apr-10-2019-0450-pm', '', '', '2019-04-10 18:50:09', '2019-04-10 16:50:09', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=143', 0, 'shop_order', '', 1),
(146, 1, '2019-04-18 13:30:17', '2019-04-18 11:30:17', 'Confirmación de Plan', 'Plan', '', 'publish', 'closed', 'closed', '', 'plan', '', '', '2019-05-14 19:33:58', '2019-05-14 17:33:58', '', 0, 'http://tugruero.dev.com/?page_id=146', 0, 'page', '', 0),
(147, 1, '2019-04-18 13:30:17', '2019-04-18 11:30:17', 'Proceso de Contratación', 'Plan', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-04-18 13:30:17', '2019-04-18 11:30:17', '', 146, 'http://tugruero.dev.com/2019/04/18/146-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-04-19 00:00:05', '2019-04-18 22:00:05', '', 'Order &ndash; abril 19, 2019 @ 12:00 AM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_HsPhgo6sJVm3k', 'pedido-apr-18-2019-1000-pm', '', '', '2019-04-19 00:00:10', '2019-04-18 22:00:10', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=148', 0, 'shop_order', '', 1),
(149, 1, '2019-04-19 02:22:10', '2019-04-19 00:22:10', 'El plan de grúas se activa después de diez (10) días hábiles a partir de la fecha de pago.', '¿Cuándo se activa el plan de grúas que contraté?', '', 'publish', 'closed', 'closed', '', 'pregunta-1', '', '', '2019-05-07 16:54:11', '2019-05-07 14:54:11', '', 0, 'http://tugruero.dev.com/?post_type=preguntas&#038;p=149', 0, 'preguntas', '', 0),
(150, 1, '2019-04-19 02:22:35', '2019-04-19 00:22:35', 'Para solicitar un servicio de grúa debes comunicarte al 0500-GRUERO-0 (0500-478376-0) ó 02122379227.', '¿A qué número debo contactarlos para solicitar un servicio?', '', 'publish', 'closed', 'closed', '', 'pregunta-2', '', '', '2019-05-07 16:55:28', '2019-05-07 14:55:28', '', 0, 'http://tugruero.dev.com/?post_type=preguntas&#038;p=150', 0, 'preguntas', '', 0),
(151, 1, '2019-04-19 02:22:54', '2019-04-19 00:22:54', 'Datos personales de la persona que se encuentra en el vehículo, datos del vehículo, avería presentada, datos de ubicación de origen y destino.', '¿Qué información debo brindar al operador de TuGruero en el momento de solicitar un servicio de grúa?', '', 'publish', 'closed', 'closed', '', 'pregunta-3', '', '', '2019-05-07 16:56:56', '2019-05-07 14:56:56', '', 0, 'http://tugruero.dev.com/?post_type=preguntas&#038;p=151', 0, 'preguntas', '', 0),
(152, 1, '2019-04-19 02:29:05', '2019-04-19 00:29:05', '', 'Preguntas frecuentes', '', 'publish', 'closed', 'closed', '', 'preguntas-frecuentes', '', '', '2019-04-19 02:41:47', '2019-04-19 00:41:47', '', 0, 'http://tugruero.dev.com/?page_id=152', 0, 'page', '', 0),
(153, 1, '2019-04-19 02:29:05', '2019-04-19 00:29:05', '', 'Preguntas Frecuentes', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2019-04-19 02:29:05', '2019-04-19 00:29:05', '', 152, 'http://tugruero.dev.com/2019/04/19/152-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2019-04-19 02:41:20', '2019-04-19 00:41:20', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2019-05-15 16:40:18', '2019-05-15 14:40:18', '', 0, 'http://tugruero.dev.com/?p=154', 6, 'nav_menu_item', '', 0),
(155, 1, '2019-04-19 02:41:47', '2019-04-19 00:41:47', '', 'Preguntas frecuentes', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2019-04-19 02:41:47', '2019-04-19 00:41:47', '', 152, 'http://tugruero.dev.com/2019/04/19/152-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-04-19 03:22:16', '2019-04-19 01:22:16', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"product";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Campo adicional', 'campo-adicional', 'publish', 'closed', 'closed', '', 'group_5cb92295ebe89', '', '', '2019-04-19 03:32:17', '2019-04-19 01:32:17', '', 0, 'http://tugruero.dev.com/?post_type=acf-field-group&#038;p=156', 0, 'acf-field-group', '', 0),
(157, 1, '2019-04-19 03:22:16', '2019-04-19 01:22:16', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Precio anterior Bs', 'precio_anterior_bs', 'publish', 'closed', 'closed', '', 'field_5cb922a15691d', '', '', '2019-04-19 03:23:08', '2019-04-19 01:23:08', '', 156, 'http://tugruero.dev.com/?post_type=acf-field&#038;p=157', 0, 'acf-field', '', 0),
(158, 1, '2019-04-19 03:23:08', '2019-04-19 01:23:08', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Precio anterior $', 'precio_anterior_dolar', 'publish', 'closed', 'closed', '', 'field_5cb922eb6ab94', '', '', '2019-04-19 03:32:17', '2019-04-19 01:32:17', '', 156, 'http://tugruero.dev.com/?post_type=acf-field&#038;p=158', 1, 'acf-field', '', 0),
(160, 1, '2019-04-23 11:38:11', '2019-04-23 09:38:11', '', 'Order &ndash; abril 23, 2019 @ 11:38 AM', '', 'wc-processing', 'open', 'closed', 'wc_order_wbdeog7li2RzS', 'pedido-apr-23-2019-0938-am', '', '', '2019-04-23 11:46:10', '2019-04-23 09:46:10', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=160', 0, 'shop_order', '', 2),
(163, 1, '2019-04-23 11:50:48', '2019-04-23 09:50:48', '', 'Order &ndash; abril 23, 2019 @ 11:50 AM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_NK7YnqkCxFEzq', 'pedido-apr-23-2019-0950-am', '', '', '2019-04-23 11:50:50', '2019-04-23 09:50:50', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=163', 0, 'shop_order', '', 1),
(164, 1, '2019-04-23 13:11:37', '2019-04-23 11:11:37', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-04-23 13:11:37', '2019-04-23 11:11:37', '', 0, 'http://tugruero.dev.com/wp-content/uploads/2019/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(169, 1, '2019-04-24 18:50:06', '2019-04-24 16:50:06', '', 'Order &ndash; abril 24, 2019 @ 06:50 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_1Myu8Z3NCAEoM', 'pedido-apr-24-2019-0450-pm', '', '', '2019-04-24 18:50:09', '2019-04-24 16:50:09', '', 0, 'http://tugruero.dev.com/?post_type=shop_order&#038;p=169', 0, 'shop_order', '', 1),
(170, 1, '2019-04-24 20:25:25', '2019-04-24 18:25:25', '[woocommerce_checkout]', '', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-04-24 20:25:25', '2019-04-24 18:25:25', '', 8, 'http://tugruero.dev.com/2019/04/24/8-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-04-24 20:26:17', '2019-04-24 18:26:17', '[woocommerce_checkout]', 'Datos del propietario', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-04-24 20:26:17', '2019-04-24 18:26:17', '', 8, 'http://tugruero.dev.com/2019/04/24/8-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-05-05 00:25:15', '2019-05-04 22:25:15', '[woocommerce_checkout]\r\n<script type="text/javascript">\r\ndocument.getElementById(\'billing_myfield15\').setAttribute("type","date");\r\n</script>', 'Datos del propietario', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-05-05 00:25:15', '2019-05-04 22:25:15', '', 8, 'http://127.0.0.1/tugruero/2019/05/05/8-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-05-05 16:18:11', '2019-05-05 14:18:11', '', 'Logo-WhatsApp', '', 'inherit', 'open', 'closed', '', 'logo-whatsapp', '', '', '2019-05-05 16:18:11', '2019-05-05 14:18:11', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/Logo-WhatsApp.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2019-05-05 16:40:00', '2019-05-05 14:40:00', '', 'Order &ndash; mayo 5, 2019 @ 04:40 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_F6Z09ZwnoGswc', 'pedido-may-05-2019-0240-pm', '', '', '2019-05-05 16:40:03', '2019-05-05 14:40:03', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=178', 0, 'shop_order', '', 1),
(197, 1, '2019-05-07 16:57:29', '2019-05-07 14:57:29', 'Debe tener a la mano el carnet de circulación y la licencia de conducir.', '¿Qué documentos debo tener al momento del remolque del vehículo?', '', 'publish', 'closed', 'closed', '', 'que-documentos-debo-tener-al-momento-del-remolque-del-vehiculo', '', '', '2019-05-07 16:57:29', '2019-05-07 14:57:29', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=197', 0, 'preguntas', '', 0),
(198, 1, '2019-05-07 16:58:50', '2019-05-07 14:58:50', '<ul>\r\n 	<li>Año: desde 1980 hasta el año actual.</li>\r\n 	<li>Pesaje: menor a 2 toneladas. (Sedan, motos, rústicos, camionetas, minivans y pickups).</li>\r\n 	<li>Estado: No estar accidentado.</li>\r\n</ul>', '¿Qué requisitos debe cumplir mi vehículo para afiliarlo a un plan?', '', 'publish', 'closed', 'closed', '', 'que-requisitos-debe-cumplir-mi-vehiculo-para-afiliarlo-a-un-plan', '', '', '2019-05-07 16:58:50', '2019-05-07 14:58:50', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=198', 0, 'preguntas', '', 0),
(199, 1, '2019-05-07 16:59:24', '2019-05-07 14:59:24', 'Transferencia bancaria, Tarjeta de Débito y Crédito, Zelle, PayPal, Dólares en efectivo y Criptomonedas (BTC, BCH, ETH, DASH).', '¿Cuáles son los métodos de pago?', '', 'publish', 'closed', 'closed', '', 'cuales-son-los-metodos-de-pago', '', '', '2019-05-07 16:59:24', '2019-05-07 14:59:24', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=199', 0, 'preguntas', '', 0),
(200, 1, '2019-05-07 16:59:56', '2019-05-07 14:59:56', 'Disponemos de diferentes unidades de remolque como Plataforma Criolla/Hidráulica, Wheel Lift o sotanera, Gancho convencional y pesado. Estas son utilizadas según la avería y el tipo de vehículo accidentado.', '¿Cuáles son los tipos de grúas que disponen para sus servicios?', '', 'publish', 'closed', 'closed', '', 'cuales-son-los-tipos-de-gruas-que-disponen-para-sus-servicios', '', '', '2019-05-07 16:59:56', '2019-05-07 14:59:56', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=200', 0, 'preguntas', '', 0),
(201, 1, '2019-05-07 17:00:26', '2019-05-07 15:00:26', 'Las ciudades principales y zona aledañas de los estados de Venezuela (excepto Delta Amacuro y Amazonas).', '¿Cuáles son las áreas de cobertura de los servicios?', '', 'publish', 'closed', 'closed', '', 'cuales-son-las-areas-de-cobertura-de-los-servicios', '', '', '2019-05-07 17:00:26', '2019-05-07 15:00:26', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=201', 0, 'preguntas', '', 0),
(202, 1, '2019-05-07 17:01:17', '2019-05-07 15:01:17', 'Se entiende como zonas peligrosas: barrios, vecindarios, calles o cualquier territorio altamente peligroso debido a la inseguridad. En estas zonas no garantizamos la prestación de nuestros servicios. <a href="http://asd"><strong><u>Estas zonas peligrosas pueden ser consultadas aquí</u></strong></a>', '¿Qué significan las zonas peligrosas? ¿Cuáles son?', '', 'publish', 'closed', 'closed', '', 'que-significan-las-zonas-peligrosas-cuales-son', '', '', '2019-05-08 20:08:43', '2019-05-08 18:08:43', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=202', 0, 'preguntas', '', 0),
(203, 1, '2019-05-07 17:01:53', '2019-05-07 15:01:53', 'No, su función es remolcar el vehículo que se encuentra accidentado.', '¿Los grueros solventan fallas mecánicas y/o eléctricas?', '', 'publish', 'closed', 'closed', '', 'los-grueros-solventan-fallas-mecanicas-y-o-electricas', '', '', '2019-05-07 17:01:53', '2019-05-07 15:01:53', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=203', 0, 'preguntas', '', 0),
(204, 1, '2019-05-07 17:02:47', '2019-05-07 15:02:47', 'En general, son fallas mecánicas y eléctricas que imposibiliten el traslado del vehículo. Ejemplos: encendido por desgaste de batería, alternador dañado, recalentamiento, caja o volante trancado, rotura de correa/cadena de tiempos, frenos sin funcionar, bomba de gasolina dañada, entre otras.\r\n\r\nNota: si se espicha un (01) neumático, el cliente debe poseer el neumático de repuesto en buenas condiciones y las herramientas adecuadas para realizar el cambio. El servicio de grúa solo amerita si posee dos (02) neumáticos espichados.', '¿Cuáles son las averías que están cubiertas en los planes de grúa?', '', 'publish', 'closed', 'closed', '', 'cuales-son-las-averias-que-estan-cubiertas-en-los-planes-de-grua', '', '', '2019-05-07 17:02:47', '2019-05-07 15:02:47', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=204', 0, 'preguntas', '', 0),
(205, 1, '2019-05-07 17:03:22', '2019-05-07 15:03:22', 'Si, la persona que se encuentra con el vehículo afiliado puede hacer uso de los servicios bajo la cobertura del plan de grúas adquirido.', '¿El servicio de grúa puede ser utilizado por un tercero?', '', 'publish', 'closed', 'closed', '', 'el-servicio-de-grua-puede-ser-utilizado-por-un-tercero', '', '', '2019-05-07 17:03:22', '2019-05-07 15:03:22', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=205', 0, 'preguntas', '', 0),
(206, 1, '2019-05-07 17:03:52', '2019-05-07 15:03:52', 'Debe cancelar un monto adicional a la empresa TU/GRUERO para cumplir con el recorrido indicado. El Centro de Contacto le notificará esta información así como los métodos de pagos a utilizar. Esta cancelación debe realizarse en el lugar de origen o lugar de destino bajo previo acuerdo con la empresa.', '¿Qué sucede si excedo el kilometraje de cobertura de mi plan de grúas?', '', 'publish', 'closed', 'closed', '', 'que-sucede-si-excedo-el-kilometraje-de-cobertura-de-mi-plan-de-gruas', '', '', '2019-05-07 17:03:52', '2019-05-07 15:03:52', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=206', 0, 'preguntas', '', 0),
(207, 1, '2019-05-07 17:04:25', '2019-05-07 15:04:25', 'Sí, para consultar los precios de estos servicios debe comunicarse al 0500-GRUERO-0.', '¿Realizan servicios de forma particular a vehículos de transporte de carga?', '', 'publish', 'closed', 'closed', '', 'realizan-servicios-de-forma-particular-a-vehiculos-de-transporte-de-carga', '', '', '2019-05-07 17:04:25', '2019-05-07 15:04:25', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=207', 0, 'preguntas', '', 0),
(208, 1, '2019-05-07 17:04:58', '2019-05-07 15:04:58', 'La póliza de Responsabilidad Civil Vehicular (R.C.V.) tiene la cobertura de la empresa Asistir Cooperativa de Seguros y Medicina Prepagada, R.L. inscrita en la Superintendencia de Cooperativas bajo el Nº 191237. Para mayor información acerca de los montos y sumas aseguradas. <strong><u><a href="http://asd">Haga click aquí</a></u></strong>', '¿Qué empresa le brinda la cobertura de la póliza de R.C.V.? ¿Cómo puedo obtenerla?', '', 'publish', 'closed', 'closed', '', 'que-empresa-le-brinda-la-cobertura-de-la-poliza-de-r-c-v-como-puedo-obtenerla', '', '', '2019-05-08 20:09:14', '2019-05-08 18:09:14', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=208', 0, 'preguntas', '', 0),
(209, 1, '2019-05-07 17:05:25', '2019-05-07 15:05:25', 'No, se realiza un <strong>único pago anual</strong> que garantiza la cobertura por 365 días del plan de grúas de su preferencia.', '¿El pago que realizo es mensual?', '', 'publish', 'closed', 'closed', '', 'el-pago-que-realizo-es-mensual', '', '', '2019-05-07 17:05:25', '2019-05-07 15:05:25', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=209', 0, 'preguntas', '', 0),
(210, 1, '2019-05-07 17:05:58', '2019-05-07 15:05:58', 'El plan contratado es por vehículo, no por persona.', '¿El plan contratado es por vehículo o por persona?', '', 'publish', 'closed', 'closed', '', 'el-plan-contratado-es-por-vehiculo-o-por-persona', '', '', '2019-05-07 17:05:58', '2019-05-07 15:05:58', '', 0, 'http://127.0.0.1/tugruero/?post_type=preguntas&#038;p=210', 0, 'preguntas', '', 0),
(211, 1, '2019-05-07 18:50:03', '2019-05-07 16:50:03', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-05-07 18:50:03', '2019-05-07 16:50:03', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2019-05-07 18:50:07', '2019-05-07 16:50:07', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2019-05-07 18:50:07', '2019-05-07 16:50:07', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/10.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2019-05-07 18:50:10', '2019-05-07 16:50:10', '', 'IMG_6066', '', 'inherit', 'open', 'closed', '', 'img_6066', '', '', '2019-05-07 18:50:10', '2019-05-07 16:50:10', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/IMG_6066.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2019-05-07 18:50:14', '2019-05-07 16:50:14', '', 'IMG_6118', '', 'inherit', 'open', 'closed', '', 'img_6118', '', '', '2019-05-07 18:50:14', '2019-05-07 16:50:14', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/IMG_6118.jpg', 0, 'attachment', 'image/jpeg', 0),
(215, 1, '2019-05-07 18:50:17', '2019-05-07 16:50:17', '', 'IMG_6199', '', 'inherit', 'open', 'closed', '', 'img_6199', '', '', '2019-05-07 18:50:17', '2019-05-07 16:50:17', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/IMG_6199.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2019-05-07 18:50:21', '2019-05-07 16:50:21', '', 'IMG_6305', '', 'inherit', 'open', 'closed', '', 'img_6305', '', '', '2019-05-07 18:50:21', '2019-05-07 16:50:21', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/IMG_6305.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2019-05-07 18:50:26', '2019-05-07 16:50:26', '', 'IMG_6499', '', 'inherit', 'open', 'closed', '', 'img_6499', '', '', '2019-05-07 18:50:26', '2019-05-07 16:50:26', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/IMG_6499.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2019-05-07 19:17:07', '2019-05-07 17:17:07', '', 'Galería 6', '', 'publish', 'closed', 'closed', '', 'galeria-6', '', '', '2019-05-07 19:17:07', '2019-05-07 17:17:07', '', 0, 'http://127.0.0.1/tugruero/?post_type=galeria&#038;p=218', 0, 'galeria', '', 0),
(219, 1, '2019-05-07 19:18:07', '2019-05-07 17:18:07', '', 'Galería 7', '', 'publish', 'closed', 'closed', '', 'galeria-7', '', '', '2019-05-07 19:18:07', '2019-05-07 17:18:07', '', 0, 'http://127.0.0.1/tugruero/?post_type=galeria&#038;p=219', 0, 'galeria', '', 0),
(220, 1, '2019-05-07 19:47:17', '2019-05-07 17:47:17', '<h1>Canjea tu tarjeta</h1>\r\n¡Ahora afiliarte a TuGruero es más fácil que nunca!\r\n\r\nAdquiere tu tarjeta en cualquiera de nuestros\r\n\r\npuntos de venta y afiliate aquí\r\n\r\n<a href="plan/?canjear=true" class="boton-tg">Canjear tarjeta</a>', 'Canjea tu tarjeta', '', 'publish', 'closed', 'closed', '', 'canjea-tu-tarjeta', '', '', '2019-05-17 17:03:17', '2019-05-17 15:03:17', '', 0, 'http://127.0.0.1/tugruero/?post_type=banner&#038;p=220', 0, 'banner', '', 0),
(221, 1, '2019-05-07 19:48:31', '2019-05-07 17:48:31', '', 'Banner Tarjeta', '', 'inherit', 'open', 'closed', '', 'banner-tarjeta', '', '', '2019-05-07 19:48:31', '2019-05-07 17:48:31', '', 220, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/Banner-Tarjeta.png', 0, 'attachment', 'image/png', 0),
(222, 1, '2019-05-08 19:55:43', '2019-05-08 17:55:43', '', 'Order &ndash; mayo 8, 2019 @ 07:55 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_JGEIfPQmhJuio', 'pedido-may-08-2019-0555-pm', '', '', '2019-05-08 19:55:43', '2019-05-08 17:55:43', '', 0, 'http://67.205.188.242/tugruero/?post_type=shop_order&#038;p=222', 0, 'shop_order', '', 1),
(223, 1, '2019-05-17 16:54:48', '2019-05-17 14:54:48', '<h1>No esperes más</h1>\n<p style="text-align: left;">¡Quedarse accidentado ya no es un problema!</p>\n<p style="text-align: left;">Tenemos el mejor servicio de grúas de todo el país</p>\n<a id="btnplanes" class="boton-tg" href="#planes">Planes</a>', 'No esperes mas', '', 'inherit', 'closed', 'closed', '', '42-autosave-v1', '', '', '2019-05-17 16:54:48', '2019-05-17 14:54:48', '', 42, 'http://67.205.188.242/tugruero/2019/05/08/42-autosave-v1/', 0, 'revision', '', 0),
(224, 1, '2019-05-08 20:06:50', '2019-05-08 18:06:50', '', 'Galeria', '', 'inherit', 'open', 'closed', '', 'galeria-8', '', '', '2019-05-08 20:06:50', '2019-05-08 18:06:50', '', 0, 'http://67.205.188.242/tugruero/wp-content/uploads/2019/05/Galeria-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2019-05-08 20:07:14', '2019-05-08 18:07:14', '', 'Galería 8', '', 'publish', 'closed', 'closed', '', 'galeria-8', '', '', '2019-05-08 20:07:14', '2019-05-08 18:07:14', '', 0, 'http://67.205.188.242/tugruero/?post_type=galeria&#038;p=225', 0, 'galeria', '', 0),
(226, 1, '2019-05-08 20:08:37', '2019-05-08 18:08:37', 'Se entiende como zonas peligrosas: barrios, vecindarios, calles o cualquier territorio altamente peligroso debido a la inseguridad. En estas zonas no garantizamos la prestación de nuestros servicios. <a href="http://asd"><strong><u>Estas zonas peligrosas pueden ser consultadas aquí</u></strong></a>.', '¿Qué significan las zonas peligrosas? ¿Cuáles son?', '', 'inherit', 'closed', 'closed', '', '202-autosave-v1', '', '', '2019-05-08 20:08:37', '2019-05-08 18:08:37', '', 202, 'http://67.205.188.242/tugruero/2019/05/08/202-autosave-v1/', 0, 'revision', '', 0),
(228, 1, '2019-05-08 21:18:11', '2019-05-08 19:18:11', '', 'Order &ndash; mayo 8, 2019 @ 09:18 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_k2Uh495SHMRL7', 'pedido-may-08-2019-0718-pm', '', '', '2019-05-08 21:18:11', '2019-05-08 19:18:11', '', 0, 'http://67.205.188.242/tugruero/?post_type=shop_order&#038;p=228', 0, 'shop_order', '', 1),
(229, 1, '2019-05-09 01:16:27', '2019-05-08 23:16:27', '', 'Order &ndash; mayo 9, 2019 @ 01:16 AM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_BMJh3zcjnnVf5', 'pedido-may-08-2019-1116-pm', '', '', '2019-05-09 01:16:27', '2019-05-08 23:16:27', '', 0, 'http://67.205.188.242/tugruero/?post_type=shop_order&#038;p=229', 0, 'shop_order', '', 1),
(230, 1, '2019-05-09 16:57:06', '2019-05-09 14:57:06', '', 'Order &ndash; mayo 9, 2019 @ 04:57 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_gYveVf9o5lUgq', 'pedido-may-09-2019-0257-pm', '', '', '2019-05-09 16:57:06', '2019-05-09 14:57:06', '', 0, 'http://67.205.188.242/tugruero/?post_type=shop_order&#038;p=230', 0, 'shop_order', '', 1),
(234, 1, '2019-05-14 19:32:09', '2019-05-14 17:32:09', 'Com', 'Plan', '', 'inherit', 'closed', 'closed', '', '146-autosave-v1', '', '', '2019-05-14 19:32:09', '2019-05-14 17:32:09', '', 146, 'http://127.0.0.1/tugruero/2019/05/14/146-autosave-v1/', 0, 'revision', '', 0),
(235, 1, '2019-05-14 19:32:16', '2019-05-14 17:32:16', 'Confirmacioón de plan', 'Plan', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-05-14 19:32:16', '2019-05-14 17:32:16', '', 146, 'http://127.0.0.1/tugruero/2019/05/14/146-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2019-05-14 19:33:58', '2019-05-14 17:33:58', 'Confirmación de Plan', 'Plan', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-05-14 19:33:58', '2019-05-14 17:33:58', '', 146, 'http://127.0.0.1/tugruero/2019/05/14/146-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2019-05-15 15:16:15', '2019-05-15 13:16:15', '<h1>Canjea tu tarjeta</h1>\n¡Ahora afiliarte a TuGruero es más fácil que nunca!\n\nAdquiere tu tarjeta en cualquiera de nuestros\n\npuntos de venta y afiliate aquí\n\n<a href="plan/?canjear=true" class="boton-tg">Canjea tu tarjeta</a>', 'Canjea tu tarjeta', '', 'inherit', 'closed', 'closed', '', '220-autosave-v1', '', '', '2019-05-15 15:16:15', '2019-05-15 13:16:15', '', 220, 'http://127.0.0.1/tugruero/2019/05/14/220-autosave-v1/', 0, 'revision', '', 0),
(238, 1, '2019-05-15 14:50:31', '2019-05-15 12:50:31', '<h1>¿Te quedaste</h1>\n<h1>accidentado?</h1>\n&nbsp;\n<p style="text-align: left;">¡No esperes más, llámanos</p>\n<p style="text-align: left;">y te enviamos la grúa de inmediato!</p>\n<a href="tel:+582122379227" class="boton-tg">Llámanos</a>', '¿Te quedaste accidentado?', '', 'inherit', 'closed', 'closed', '', '37-autosave-v1', '', '', '2019-05-15 14:50:31', '2019-05-15 12:50:31', '', 37, 'http://127.0.0.1/tugruero/2019/05/15/37-autosave-v1/', 0, 'revision', '', 0),
(239, 1, '2019-05-15 15:26:17', '2019-05-15 13:26:17', '', 'Order &ndash; mayo 15, 2019 @ 03:26 PM', '', 'wc-completed', 'closed', 'closed', 'wc_order_pkPEd3woPwR6H', 'pedido-may-15-2019-0126-pm', '', '', '2019-06-02 00:30:09', '2019-06-01 22:30:09', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=239', 0, 'shop_order', '', 2),
(240, 1, '2019-05-15 16:40:17', '2019-05-15 14:40:17', '', 'Canjear tarjeta', '', 'publish', 'closed', 'closed', '', 'canjear-tarjeta-2', '', '', '2019-05-15 16:40:17', '2019-05-15 14:40:17', '', 0, 'http://127.0.0.1/tugruero/?p=240', 3, 'nav_menu_item', '', 0),
(241, 1, '2019-05-15 22:57:09', '2019-05-15 20:57:09', '', 'CLASSIC', '', 'inherit', 'open', 'closed', '', 'classic', '', '', '2019-05-15 22:57:09', '2019-05-15 20:57:09', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/CLASSIC.png', 0, 'attachment', 'image/png', 0),
(242, 1, '2019-05-15 22:57:12', '2019-05-15 20:57:12', '', 'GOLD', '', 'inherit', 'open', 'closed', '', 'gold-2', '', '', '2019-05-15 22:57:12', '2019-05-15 20:57:12', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/GOLD.png', 0, 'attachment', 'image/png', 0),
(243, 1, '2019-05-15 22:57:16', '2019-05-15 20:57:16', '', 'PLUS', '', 'inherit', 'open', 'closed', '', 'plus-2', '', '', '2019-05-15 22:57:16', '2019-05-15 20:57:16', '', 0, 'http://127.0.0.1/tugruero/wp-content/uploads/2019/05/PLUS.png', 0, 'attachment', 'image/png', 0),
(253, 1, '2019-06-11 16:59:08', '2019-06-11 14:59:08', '', 'Order &ndash; junio 11, 2019 @ 04:59 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_OtoWsWgyFFoLM', 'pedido-jun-11-2019-0259-pm', '', '', '2019-06-11 16:59:10', '2019-06-11 14:59:10', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=253', 0, 'shop_order', '', 1),
(255, 0, '2019-06-26 19:24:04', '2019-06-26 17:24:04', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d13ab28c22a87.42678848-w0UTRHr0zfm9CgLaZXe7C3r3yPmS7Rxm', '', '', '2019-06-26 19:28:08', '2019-06-26 17:28:08', '', 0, 'http://127.0.0.1/tugruero/?post_type=scheduled-action&#038;p=255', 0, 'scheduled-action', '', 3),
(257, 0, '2019-07-03 19:28:08', '2019-07-03 17:28:08', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d1e060c800de1.70169629-nuuB05KlnJxvgBpoIMR7nIH5ifKgl9bH', '', '', '2019-07-04 15:58:36', '2019-07-04 13:58:36', '', 0, 'http://127.0.0.1/tugruero/?post_type=scheduled-action&#038;p=257', 0, 'scheduled-action', '', 3),
(259, 0, '2019-07-11 15:58:36', '2019-07-11 13:58:36', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d28f95e925985.59368048-HiBbtm9L3wEAxeRrbNZIxmc93OyBhPSF', '', '', '2019-07-12 23:19:26', '2019-07-12 21:19:26', '', 0, 'http://127.0.0.1/tugruero/?post_type=scheduled-action&#038;p=259', 1, 'scheduled-action', '', 3),
(261, 1, '2019-07-08 21:40:59', '2019-07-08 19:40:59', '', '123', '', 'publish', 'closed', 'closed', '', '261', '', '', '2019-07-09 17:32:52', '2019-07-09 15:32:52', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_coupon&#038;p=261', 0, 'shop_coupon', '', 0),
(262, 1, '2019-07-08 21:51:55', '2019-07-08 19:51:55', '', 'Order &ndash; julio 8, 2019 @ 09:51 PM', '', 'wc-processing', 'open', 'closed', 'wc_order_wfwTWHRcQSnJE', 'pedido-jul-08-2019-0751-pm', '', '', '2019-07-08 21:51:57', '2019-07-08 19:51:57', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=262', 0, 'shop_order', '', 1),
(263, 1, '2019-07-08 22:16:33', '2019-07-08 20:16:33', '', 'Order &ndash; julio 8, 2019 @ 10:16 PM', '', 'wc-processing', 'open', 'closed', 'wc_order_7lXmzIZFMufgJ', 'pedido-jul-08-2019-0816-pm', '', '', '2019-07-08 22:16:36', '2019-07-08 20:16:36', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=263', 0, 'shop_order', '', 1),
(264, 1, '2019-07-08 22:29:02', '2019-07-08 20:29:02', '', 'Order &ndash; julio 8, 2019 @ 10:29 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_Wq98m6T0nzTdg', 'pedido-jul-08-2019-0829-pm', '', '', '2019-07-08 22:29:04', '2019-07-08 20:29:04', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=264', 0, 'shop_order', '', 1),
(265, 1, '2019-07-09 17:29:52', '2019-07-09 15:29:52', '', 'Order &ndash; julio 9, 2019 @ 05:29 PM', '', 'wc-processing', 'open', 'closed', 'wc_order_YyRaDgIg81dfb', 'pedido-jul-09-2019-0329-pm', '', '', '2019-07-09 17:29:54', '2019-07-09 15:29:54', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=265', 0, 'shop_order', '', 1),
(266, 1, '2019-07-09 17:32:47', '2019-07-09 15:32:47', '', '123', '', 'inherit', 'closed', 'closed', '', '261-autosave-v1', '', '', '2019-07-09 17:32:47', '2019-07-09 15:32:47', '', 261, 'http://127.0.0.1/tugruero/2019/07/09/261-autosave-v1/', 0, 'revision', '', 0),
(267, 1, '2019-07-09 17:33:08', '2019-07-09 15:33:08', '', 'Order &ndash; julio 9, 2019 @ 05:33 PM', '', 'wc-processing', 'open', 'closed', 'wc_order_FJu0dsfh9bG0X', 'pedido-jul-09-2019-0333-pm', '', '', '2019-07-09 17:33:09', '2019-07-09 15:33:09', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=267', 0, 'shop_order', '', 1),
(268, 1, '2019-07-10 22:21:25', '2019-07-10 20:21:25', '', 'Order &ndash; julio 10, 2019 @ 10:21 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_qLIgdQPMODWeC', 'pedido-jul-10-2019-0821-pm', '', '', '2019-07-10 22:21:27', '2019-07-10 20:21:27', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=268', 0, 'shop_order', '', 1),
(269, 0, '2019-07-13 23:19:26', '2019-07-13 21:19:26', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d2c9dc53a1ae2.60632325-9nx8N9S71GVYjItcZ6EdwUCE8gnVWeDa', '', '', '2019-07-15 17:37:41', '2019-07-15 15:37:41', '', 0, 'http://127.0.0.1/tugruero/?post_type=scheduled-action&#038;p=269', 1, 'scheduled-action', '', 3),
(270, 0, '2019-07-19 23:19:26', '2019-07-19 21:19:26', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5d35c1ee687ec9.44973335-zFstjGnhSAOjKwGO9KVuqSsIGBlzmwFE', '', '', '2019-07-22 16:02:22', '2019-07-22 14:02:22', '', 0, 'http://127.0.0.1/tugruero/?post_type=scheduled-action&#038;p=270', 1, 'scheduled-action', '', 3),
(272, 1, '2019-07-16 17:21:51', '2019-07-16 15:21:51', '', 'Order &ndash; julio 16, 2019 @ 05:21 PM', '', 'wc-completed', 'closed', 'closed', 'wc_order_0KR8C4CqeW39a', 'pedido-jul-16-2019-0321-pm', '', '', '2019-07-17 21:06:21', '2019-07-17 19:06:21', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=272', 0, 'shop_order', '', 2),
(273, 1, '2019-07-17 21:01:18', '2019-07-17 19:01:18', '', 'Order &ndash; julio 17, 2019 @ 09:01 PM', '', 'wc-on-hold', 'closed', 'closed', 'wc_order_wTbY6jBq2zpRN', 'pedido-jul-17-2019-0701-pm', '', '', '2019-07-17 21:04:14', '2019-07-17 19:04:14', '', 0, 'http://127.0.0.1/tugruero/?post_type=shop_order&#038;p=273', 0, 'shop_order', '', 1),
(274, 0, '2019-07-29 16:02:22', '2019-07-29 14:02:22', '[]', 'woocommerce_update_marketplace_suggestions', '', 'pending', 'open', 'closed', '', '', '', '', '2019-07-29 16:02:22', '2019-07-29 14:02:22', '', 0, 'http://127.0.0.1/tugruero/?post_type=scheduled-action&p=274', 0, 'scheduled-action', '', 1),
(275, 1, '2019-07-24 17:12:23', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-24 17:12:23', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/tugruero/?p=275', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_fields`
--

CREATE TABLE `wp_rm_fields` (
  `field_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `page_no` int(6) UNSIGNED NOT NULL DEFAULT '1',
  `field_label` text COLLATE utf8mb4_unicode_ci,
  `field_type` text COLLATE utf8mb4_unicode_ci,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `field_order` int(6) DEFAULT NULL,
  `field_show_on_user_page` tinyint(1) DEFAULT NULL,
  `is_field_primary` tinyint(1) NOT NULL DEFAULT '0',
  `field_is_editable` tinyint(1) NOT NULL DEFAULT '0',
  `is_deletion_allowed` tinyint(1) NOT NULL DEFAULT '1',
  `field_options` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_rm_fields`
--

INSERT INTO `wp_rm_fields` (`field_id`, `form_id`, `page_no`, `field_label`, `field_type`, `field_value`, `field_order`, `field_show_on_user_page`, `is_field_primary`, `field_is_editable`, `is_deletion_allowed`, `field_options`) VALUES
(1, 1, 1, 'Your Email', 'Email', NULL, 2, NULL, 1, 0, 0, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:0:"";s:14:"field_timezone";N;s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";N;s:27:"field_is_required_min_range";N;s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";s:1:"1";s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";N;s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";N;s:11:"date_format";N;s:14:"field_meta_add";N;s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";N;s:22:"privacy_policy_content";N;s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(2, 1, 1, 'Your Name', 'Textbox', NULL, 0, 1, 0, 0, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:0:"";s:14:"field_timezone";s:0:"";s:16:"field_max_length";s:0:"";s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";s:0:"";s:27:"field_is_required_min_range";s:0:"";s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";s:0:"";s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";s:0:"";s:11:"date_format";N;s:14:"field_meta_add";s:0:"";s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";s:1:"0";s:22:"privacy_policy_content";s:93:"By submitting this form you confirm that you have read and understood our {{privacy_policy}}.";s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(3, 1, 1, 'Your Phone Number', 'Number', NULL, 1, 1, 0, 1, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:0:"";s:14:"field_timezone";s:0:"";s:16:"field_max_length";s:0:"";s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";s:0:"";s:27:"field_is_required_min_range";s:0:"";s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";s:0:"";s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";s:0:"";s:11:"date_format";N;s:14:"field_meta_add";s:0:"";s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";s:1:"0";s:22:"privacy_policy_content";s:93:"By submitting this form you confirm that you have read and understood our {{privacy_policy}}.";s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(4, 1, 1, 'Message', 'Textarea', NULL, 3, NULL, 0, 0, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:0:"";s:14:"field_timezone";s:0:"";s:16:"field_max_length";s:0:"";s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";s:0:"";s:27:"field_is_required_min_range";s:0:"";s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";s:0:"";s:19:"field_textarea_rows";s:0:"";s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";s:0:"";s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";s:0:"";s:11:"date_format";N;s:14:"field_meta_add";s:0:"";s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";s:1:"0";s:22:"privacy_policy_content";s:93:"By submitting this form you confirm that you have read and understood our {{privacy_policy}}.";s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(5, 2, 1, 'Email', 'Email', NULL, 3, NULL, 1, 0, 0, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:0:"";s:14:"field_timezone";N;s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";N;s:27:"field_is_required_min_range";N;s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";s:1:"1";s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";N;s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";N;s:11:"date_format";N;s:14:"field_meta_add";N;s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";N;s:22:"privacy_policy_content";N;s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(6, 2, 1, 'Username', 'Username', NULL, -2, NULL, 1, 0, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:8:"Username";s:14:"field_timezone";N;s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";N;s:27:"field_is_required_min_range";N;s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:22:"rm_form_default_fields";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";s:1:"1";s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";N;s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";N;s:11:"date_format";N;s:14:"field_meta_add";N;s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";s:69:"This username has already been taken. Please try something different.";s:19:"username_characters";a:4:{i:0;s:9:"alphabets";i:1;s:7:"numbers";i:2;s:11:"underscores";i:3;s:7:"periods";}s:23:"invalid_username_format";s:60:"Invalid username format. Only {{allowed_characters}} allowed";s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";N;s:22:"privacy_policy_content";N;s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(7, 2, 1, 'Password', 'UserPassword', NULL, -1, NULL, 1, 0, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:8:"Password";s:14:"field_timezone";N;s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";N;s:27:"field_is_required_min_range";N;s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:22:"rm_form_default_fields";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";s:1:"1";s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";N;s:9:"help_text";s:44:"Password must be at least 7 characters long.";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";N;s:11:"date_format";N;s:14:"field_meta_add";N;s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";i:1;s:17:"pass_mismatch_err";s:48:"Your passwords do not match. Please check again.";s:16:"en_pass_strength";i:1;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";s:9:"Too Short";s:12:"pwd_weak_msg";s:4:"Weak";s:14:"pwd_medium_msg";s:6:"Medium";s:14:"pwd_strong_msg";s:6:"Strong";s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";N;s:22:"privacy_policy_content";N;s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(8, 2, 1, 'First Name', 'Fname', NULL, 1, NULL, 0, 0, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:0:"";s:14:"field_timezone";s:0:"";s:16:"field_max_length";s:0:"";s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";s:0:"";s:27:"field_is_required_min_range";s:0:"";s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";s:0:"";s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";s:0:"";s:11:"date_format";N;s:14:"field_meta_add";s:0:"";s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";s:1:"0";s:22:"privacy_policy_content";s:93:"By submitting this form you confirm that you have read and understood our {{privacy_policy}}.";s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}');
INSERT INTO `wp_rm_fields` (`field_id`, `form_id`, `page_no`, `field_label`, `field_type`, `field_value`, `field_order`, `field_show_on_user_page`, `is_field_primary`, `field_is_editable`, `is_deletion_allowed`, `field_options`) VALUES
(9, 2, 1, 'Last Name', 'Lname', NULL, 2, NULL, 0, 0, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";s:0:"";s:14:"field_timezone";s:0:"";s:16:"field_max_length";s:0:"";s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";s:0:"";s:27:"field_is_required_min_range";s:0:"";s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";s:0:"";s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";s:0:"";s:11:"date_format";N;s:14:"field_meta_add";s:0:"";s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";s:1:"0";s:22:"privacy_policy_content";s:93:"By submitting this form you confirm that you have read and understood our {{privacy_policy}}.";s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(10, 2, 1, 'Website', 'Website', NULL, 4, NULL, 0, 1, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";N;s:14:"field_timezone";s:0:"";s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";s:0:"";s:27:"field_is_required_min_range";s:0:"";s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";s:0:"";s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";s:0:"";s:11:"date_format";N;s:14:"field_meta_add";s:0:"";s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";s:1:"0";s:22:"privacy_policy_content";s:93:"By submitting this form you confirm that you have read and understood our {{privacy_policy}}.";s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(11, 2, 1, 'Do you agree with our terms and conditions?', 'Terms', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempor metus nec elit auctor venenatis non facilisis nibh. In lorem neque, vulputate id metus id, rhoncus convallis eros. In urna erat, accumsan quis pretium nec, posuere in arcu. Nulla eleifend aliquet accumsan. Pellentesque consectetur sollicitudin orci nec suscipit. Donec sit amet risus suscipit, gravida nulla semper, interdum tellus. In cursus ultricies turpis, quis suscipit massa faucibus et. Vestibulum euismod est ac vehicula viverra. Aliquam quis est quis eros feugiat varius a non ligula.', 6, NULL, 0, 0, 1, 'O:8:"stdClass":203:{s:18:"field_is_multiline";N;s:17:"field_placeholder";N;s:14:"field_timezone";s:0:"";s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";s:0:"";s:27:"field_is_required_min_range";s:0:"";s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";s:0:"";s:9:"help_text";s:0:"";s:4:"icon";O:8:"stdClass":4:{s:9:"codepoint";s:0:"";s:8:"fg_color";s:6:"000000";s:8:"bg_color";s:6:"FFFFFF";s:5:"shape";s:6:"square";}s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";s:0:"";s:11:"date_format";N;s:14:"field_meta_add";s:0:"";s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";s:1:"0";s:22:"privacy_policy_content";s:93:"By submitting this form you confirm that you have read and understood our {{privacy_policy}}.";s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(12, 2, 1, 'Divider', 'Divider', NULL, 0, NULL, 0, 0, 1, 'O:8:"stdClass":204:{s:18:"field_is_multiline";N;s:17:"field_placeholder";N;s:14:"field_timezone";N;s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";N;s:27:"field_is_required_min_range";N;s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";N;s:9:"help_text";N;s:4:"icon";N;s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";N;s:11:"date_format";N;s:14:"field_meta_add";N;s:10:"conditions";N;s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";N;s:22:"privacy_policy_content";N;s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(13, 2, 1, 'Divider', 'Divider', NULL, 5, NULL, 0, 0, 1, 'O:8:"stdClass":204:{s:18:"field_is_multiline";N;s:17:"field_placeholder";N;s:14:"field_timezone";N;s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";N;s:27:"field_is_required_min_range";N;s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";N;s:9:"help_text";N;s:4:"icon";N;s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";N;s:11:"date_format";N;s:14:"field_meta_add";N;s:10:"conditions";N;s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";N;s:22:"privacy_policy_content";N;s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}'),
(14, 2, 1, 'Divider', 'Divider', NULL, 7, NULL, 0, 0, 1, 'O:8:"stdClass":204:{s:18:"field_is_multiline";N;s:17:"field_placeholder";N;s:14:"field_timezone";N;s:16:"field_max_length";N;s:23:"field_is_required_range";N;s:27:"field_is_required_max_range";N;s:27:"field_is_required_min_range";N;s:24:"field_is_required_scroll";N;s:19:"field_default_value";N;s:15:"field_css_class";s:0:"";s:22:"field_textarea_columns";N;s:19:"field_textarea_rows";N;s:17:"field_is_required";N;s:21:"field_is_show_asterix";N;s:18:"field_is_read_only";N;s:21:"field_is_other_option";N;s:9:"help_text";N;s:4:"icon";N;s:16:"field_validation";N;s:17:"custom_validation";N;s:12:"tnc_cb_label";N;s:11:"date_format";N;s:14:"field_meta_add";N;s:10:"conditions";N;s:16:"link_same_window";N;s:9:"link_page";N;s:9:"link_href";N;s:9:"link_type";N;s:12:"yt_auto_play";N;s:9:"yt_repeat";N;s:17:"yt_related_videos";N;s:15:"yt_player_width";N;s:9:"rm_widget";N;s:16:"yt_player_height";N;s:8:"if_width";N;s:9:"if_height";N;s:18:"field_address_type";N;s:23:"field_ca_address1_label";N;s:23:"field_ca_address2_label";N;s:19:"field_ca_city_label";N;s:20:"field_ca_state_label";N;s:22:"field_ca_country_label";N;s:18:"field_ca_zip_label";N;s:16:"field_ca_city_en";N;s:17:"field_ca_state_en";N;s:15:"field_ca_zip_en";N;s:19:"field_ca_country_en";N;s:20:"field_ca_address1_en";N;s:20:"field_ca_address2_en";N;s:13:"ca_state_type";N;s:21:"field_ca_address1_req";N;s:17:"field_ca_city_req";N;s:16:"field_ca_zip_req";N;s:20:"field_ca_country_req";N;s:18:"field_ca_state_req";N;s:21:"field_ca_address2_req";N;s:29:"field_ca_label_as_placeholder";N;s:20:"field_ca_lmark_label";N;s:17:"field_ca_lmark_en";N;s:18:"field_ca_lmark_req";N;s:20:"field_ca_state_codes";N;s:28:"field_ca_country_america_can";N;s:24:"field_ca_country_limited";N;s:26:"field_ca_en_country_search";N;s:19:"img_caption_enabled";N;s:17:"img_title_enabled";N;s:16:"img_link_enabled";N;s:19:"img_effects_enabled";N;s:12:"border_color";N;s:12:"border_width";N;s:12:"border_shape";N;s:15:"img_pop_enabled";N;s:8:"img_size";N;s:3:"lat";N;s:4:"long";N;s:4:"zoom";N;s:5:"width";N;s:13:"nu_form_views";N;s:20:"nu_views_text_before";N;s:19:"nu_views_text_after";N;s:17:"nu_sub_text_after";N;s:18:"nu_sub_text_before";N;s:14:"nu_submissions";N;s:10:"sub_limits";N;s:21:"sub_limit_text_before";N;s:20:"sub_limit_text_after";N;s:15:"sub_date_limits";N;s:26:"sub_date_limit_text_before";N;s:25:"sub_date_limit_text_after";N;s:12:"last_sub_rec";N;s:14:"ls_text_before";N;s:13:"ls_text_after";N;s:14:"show_form_name";N;s:9:"form_desc";N;s:13:"sub_limit_ind";N;s:12:"custom_value";N;s:12:"hide_country";N;s:9:"hide_date";N;s:13:"show_gravatar";N;s:9:"max_items";N;s:10:"time_range";N;s:17:"user_exists_error";N;s:19:"username_characters";N;s:23:"invalid_username_format";N;s:14:"en_confirm_pwd";N;s:17:"pass_mismatch_err";N;s:16:"en_pass_strength";N;s:17:"pwd_strength_type";N;s:13:"pwd_short_msg";N;s:12:"pwd_weak_msg";N;s:14:"pwd_medium_msg";N;s:14:"pwd_strong_msg";N;s:11:"format_type";N;s:19:"preferred_countries";N;s:8:"en_geoip";N;s:20:"custom_mobile_format";N;s:13:"lim_countries";N;s:18:"lim_pref_countries";N;s:14:"mobile_err_msg";N;s:13:"country_field";N;s:12:"sync_country";N;s:13:"country_match";N;s:19:"privacy_policy_page";N;s:22:"privacy_policy_content";N;s:24:"privacy_display_checkbox";N;s:26:"field_wcb_email_as_primary";N;s:25:"field_wcb_firstname_label";N;s:24:"field_wcb_lastname_label";N;s:23:"field_wcb_company_label";N;s:24:"field_wcb_address1_label";N;s:24:"field_wcb_address2_label";N;s:21:"field_wcb_phone_label";N;s:21:"field_wcb_email_label";N;s:20:"field_wcb_city_label";N;s:21:"field_wcb_state_label";N;s:23:"field_wcb_country_label";N;s:19:"field_wcb_zip_label";N;s:17:"field_wcb_city_en";N;s:18:"field_wcb_state_en";N;s:16:"field_wcb_zip_en";N;s:20:"field_wcb_country_en";N;s:22:"field_wcb_firstname_en";N;s:21:"field_wcb_lastname_en";N;s:20:"field_wcb_company_en";N;s:21:"field_wcb_address1_en";N;s:21:"field_wcb_address2_en";N;s:18:"field_wcb_phone_en";N;s:18:"field_wcb_email_en";N;s:14:"wcb_state_type";N;s:23:"field_wcb_firstname_req";N;s:22:"field_wcb_lastname_req";N;s:21:"field_wcb_company_req";N;s:22:"field_wcb_address1_req";N;s:19:"field_wcb_phone_req";N;s:19:"field_wcb_email_req";N;s:18:"field_wcb_city_req";N;s:17:"field_wcb_zip_req";N;s:21:"field_wcb_country_req";N;s:19:"field_wcb_state_req";N;s:22:"field_wcb_address2_req";N;s:30:"field_wcb_label_as_placeholder";N;s:21:"field_wcb_lmark_label";N;s:18:"field_wcb_lmark_en";N;s:19:"field_wcb_lmark_req";N;s:21:"field_wcb_state_codes";N;s:30:"field_wcb_country_ameriwcb_can";N;s:25:"field_wcb_country_limited";N;s:27:"field_wcb_en_country_search";N;s:25:"field_wcs_firstname_label";N;s:24:"field_wcs_lastname_label";N;s:23:"field_wcs_company_label";N;s:24:"field_wcs_address1_label";N;s:24:"field_wcs_address2_label";N;s:20:"field_wcs_city_label";N;s:21:"field_wcs_state_label";N;s:23:"field_wcs_country_label";N;s:19:"field_wcs_zip_label";N;s:17:"field_wcs_city_en";N;s:18:"field_wcs_state_en";N;s:16:"field_wcs_zip_en";N;s:20:"field_wcs_country_en";N;s:21:"field_wcs_address1_en";N;s:21:"field_wcs_address2_en";N;s:14:"wcs_state_type";N;s:22:"field_wcs_firstname_en";N;s:21:"field_wcs_lastname_en";N;s:20:"field_wcs_company_en";N;s:22:"field_wcs_address1_req";N;s:18:"field_wcs_city_req";N;s:17:"field_wcs_zip_req";N;s:21:"field_wcs_country_req";N;s:19:"field_wcs_state_req";N;s:23:"field_wcs_firstname_req";N;s:22:"field_wcs_lastname_req";N;s:21:"field_wcs_company_req";N;s:22:"field_wcs_address2_req";N;s:30:"field_wcs_label_as_placeholder";N;s:21:"field_wcs_lmark_label";N;s:18:"field_wcs_lmark_en";N;s:19:"field_wcs_lmark_req";N;s:21:"field_wcs_state_codes";N;s:30:"field_wcs_country_ameriwcs_can";N;s:25:"field_wcs_country_limited";N;s:27:"field_wcs_en_country_search";N;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_forms`
--

CREATE TABLE `wp_rm_forms` (
  `form_id` int(6) UNSIGNED NOT NULL,
  `form_name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_type` int(6) DEFAULT NULL,
  `form_user_role` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_user_role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_should_send_email` tinyint(1) DEFAULT NULL,
  `form_redirect` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_redirect_to_page` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_redirect_to_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_should_auto_expire` tinyint(1) DEFAULT NULL,
  `form_options` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_rm_forms`
--

INSERT INTO `wp_rm_forms` (`form_id`, `form_name`, `form_type`, `form_user_role`, `default_user_role`, `form_should_send_email`, `form_redirect`, `form_redirect_to_page`, `form_redirect_to_url`, `form_should_auto_expire`, `form_options`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Sample Contact Form', 0, NULL, NULL, 1, 'none', '0', NULL, NULL, 'O:8:"stdClass":59:{s:13:"hide_username";N;s:23:"form_is_opt_in_checkbox";N;s:19:"mailchimp_relations";N;s:16:"form_opt_in_text";N;s:21:"form_should_user_pick";N;s:20:"form_is_unique_token";N;s:16:"form_description";s:202:"A standard contact form to get your started right away with RegistrationMagic. This form has Name, Phone No., Email and Message fields. To add this form to a page or post, use shortcode [rm_form ID="1"]";s:21:"form_user_field_label";N;s:16:"form_custom_text";s:45:"Please fill out the form below to contact us.";s:20:"form_success_message";s:69:"Thank you! We have received your message and will reply back shortly.";s:18:"form_email_subject";s:29:"We have received your message";s:18:"form_email_content";s:411:"Dear {{Textbox_1234}},\r\n\r\nThis is a confirmation of the message you submitted through our site. We shall get back to you soon.\r\n\r\nFor your reference, below is a copy of your message. If any information is incorrect, please submit the form again with correct information.\r\n\r\nThank you!\r\n\r\nYour Name: {{Textbox_1234}}\r\n\r\nYour Phone: {{Number_1235}}\r\n\r\nYour Email: {{Email_1233}}\r\n\r\nMessage: {{Textarea_1236}}";s:21:"form_submit_btn_label";s:4:"Send";s:21:"form_submit_btn_color";N;s:25:"form_submit_btn_bck_color";N;s:15:"form_expired_by";N;s:22:"form_submissions_limit";N;s:16:"form_expiry_date";N;s:25:"form_message_after_expiry";N;s:14:"mailchimp_list";N;s:22:"mailchimp_mapped_email";N;s:27:"mailchimp_mapped_first_name";N;s:26:"mailchimp_mapped_last_name";N;s:25:"should_export_submissions";i:0;s:25:"export_submissions_to_url";N;s:10:"form_pages";N;s:14:"access_control";N;s:14:"style_btnfield";N;s:10:"style_form";N;s:15:"style_textfield";N;s:10:"auto_login";N;s:12:"cc_relations";N;s:7:"cc_list";N;s:19:"form_opt_in_text_cc";N;s:26:"form_is_opt_in_checkbox_cc";N;s:12:"aw_relations";N;s:7:"aw_list";N;s:19:"form_opt_in_text_aw";N;s:26:"form_is_opt_in_checkbox_aw";N;s:14:"enable_captcha";s:7:"default";s:16:"enable_mailchimp";N;s:15:"enable_ccontact";N;s:13:"enable_aweber";N;s:20:"display_progress_bar";s:7:"default";s:18:"sub_limit_antispam";N;s:15:"placeholder_css";N;s:15:"btn_hover_color";N;s:20:"field_bg_focus_color";N;s:16:"text_focus_color";N;s:13:"style_section";N;s:11:"style_label";N;s:18:"post_expiry_action";N;s:19:"post_expiry_form_id";N;s:14:"no_prev_button";i:1;s:18:"user_auto_approval";s:7:"default";s:25:"form_opt_in_default_state";N;s:28:"form_opt_in_default_state_cc";N;s:28:"form_opt_in_default_state_aw";N;s:18:"ordered_form_pages";N;}', '2016-12-15 06:31:04', 1, '2016-12-15 06:51:04', 1),
(2, 'Sample Registration Form', 1, 'a:0:{}', 'subscriber', 1, 'none', '0', NULL, NULL, 'O:8:"stdClass":72:{s:13:"hide_username";i:0;s:23:"form_is_opt_in_checkbox";N;s:19:"mailchimp_relations";N;s:16:"form_opt_in_text";N;s:21:"form_should_user_pick";N;s:20:"form_is_unique_token";N;s:16:"form_description";s:415:"This is a sample registration form that can be used to register users on your WordPress site. The form includes Username, Password, First Name, Last Name, Email, Website and Terms and Conditions fields. Feel free to edit them, remove them or add new ones as it suits your needs.\n\nPlease note, T&C field currently has dummy text. You will need to paste actual text of your terms and condition by editing the field.";s:21:"form_user_field_label";s:0:"";s:16:"form_custom_text";s:48:"Register with us by filling out the form below.";s:20:"form_success_message";s:105:"Thank you for registering with us! Once your account is active, we\'ll send you an email with the details.";s:18:"form_email_subject";s:10:"Thank you!";s:18:"form_email_content";s:183:"Hello {{Fname_1238}},\n\nThank you for registering with us. You will soon receive an account activation email. After that you can log into our website through login page.\n\nRegards.";s:21:"form_submit_btn_label";s:0:"";s:21:"form_submit_btn_color";N;s:25:"form_submit_btn_bck_color";N;s:15:"form_expired_by";N;s:22:"form_submissions_limit";N;s:16:"form_expiry_date";N;s:25:"form_message_after_expiry";N;s:14:"mailchimp_list";N;s:22:"mailchimp_mapped_email";N;s:27:"mailchimp_mapped_first_name";N;s:26:"mailchimp_mapped_last_name";N;s:25:"should_export_submissions";i:0;s:25:"export_submissions_to_url";N;s:10:"form_pages";N;s:14:"access_control";N;s:14:"style_btnfield";s:0:"";s:10:"style_form";s:0:"";s:15:"style_textfield";s:0:"";s:10:"auto_login";N;s:12:"cc_relations";N;s:7:"cc_list";N;s:19:"form_opt_in_text_cc";N;s:26:"form_is_opt_in_checkbox_cc";N;s:12:"aw_relations";N;s:7:"aw_list";N;s:19:"form_opt_in_text_aw";N;s:26:"form_is_opt_in_checkbox_aw";N;s:14:"enable_captcha";s:7:"default";s:16:"enable_mailchimp";N;s:15:"enable_ccontact";N;s:13:"enable_aweber";N;s:20:"display_progress_bar";s:7:"default";s:18:"sub_limit_antispam";N;s:15:"placeholder_css";s:0:"";s:15:"btn_hover_color";s:0:"";s:20:"field_bg_focus_color";s:0:"";s:16:"text_focus_color";s:0:"";s:13:"style_section";s:0:"";s:11:"style_label";s:0:"";s:18:"post_expiry_action";N;s:19:"post_expiry_form_id";N;s:14:"no_prev_button";i:1;s:18:"user_auto_approval";s:7:"default";s:25:"form_opt_in_default_state";N;s:28:"form_opt_in_default_state_cc";N;s:28:"form_opt_in_default_state_aw";N;s:18:"ordered_form_pages";N;s:16:"show_total_price";N;s:20:"form_nu_notification";N;s:32:"form_user_activated_notification";N;s:31:"form_activate_user_notification";N;s:26:"form_admin_ns_notification";N;s:18:"admin_notification";N;s:11:"admin_email";N;s:19:"form_next_btn_label";N;s:19:"form_prev_btn_label";N;s:14:"form_btn_align";N;s:30:"form_admin_ns_notification_sub";s:23:" New Form Notification ";s:24:"form_nu_notification_sub";s:21:"New User Registration";s:36:"form_user_activated_notification_sub";s:17:"Account Activated";}', '2016-12-15 07:19:35', 1, '2019-01-10 09:19:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_front_users`
--

CREATE TABLE `wp_rm_front_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity_time` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_login`
--

CREATE TABLE `wp_rm_login` (
  `id` int(6) UNSIGNED NOT NULL,
  `m_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_rm_login`
--

INSERT INTO `wp_rm_login` (`id`, `m_key`, `value`) VALUES
(1, 'fields', '{"form_fields":[{"username_accepts":"username","field_label":"Username","placeholder":"Enter Username","input_selected_icon_codepoint":"","icon_fg_color":"CBFFC2","icon_bg_color":"FFFFFF","icon_bg_alpha":"0.5","icon_shape":"square","field_css_class":"","field_type":"username"},{"field_label":"Password","placeholder":"Enter Password","input_selected_icon_codepoint":"","icon_fg_color":"FFFFFF","icon_bg_color":"FFFFFF","icon_bg_alpha":"0.5","icon_shape":"square","field_css_class":"test","field_type":"password"}]}'),
(2, 'redirections', '{"redirection_type":"common","redirection_link":"","admin_redirection_link":0,"logout_redirection":"","role_based_login_redirection":[],"administrator_login_redirection":"","administrator_logout_redirection":"","editor_login_redirection":"","editor_logout_redirection":"","author_login_redirection":"","author_logout_redirection":"","contributor_login_redirection":"","contributor_logout_redirection":"","subscriber_login_redirection":"","subscriber_logout_redirection":"","translator_login_redirection":"","translator_logout_redirection":"","customer_login_redirection":"","customer_logout_redirection":""}'),
(3, 'validations', '{"un_error_msg":"The login credentials you entered are incorrect. Please try again.","pass_error_msg":"The login credentials you entered are incorrect. Please try again.","en_recovery_link":1,"en_failed_user_notification":0,"en_failed_admin_notification":0,"en_captcha":0,"allowed_failed_attempts":3,"allowed_failed_duration":60,"en_ban_ip":0,"allowed_attempts_before_ban":6,"allowed_duration_before_ban":60,"ban_type":"temp","ban_duration":1440,"ban_error_msg":"<div style=\\"font-weight: 400;\\" class=\\"rm-failed-ip-error\\">Your IP has been banned by the Admin due to repeated failed login attempts.<\\/div>","notify_admin_on_ban":1}'),
(4, 'recovery', '{"en_pwd_recovery":1,"recovery_link_text":"Lost your password?"}'),
(5, 'auth', '{"otp_type":"numeric","en_two_fa":0,"otp_length":6,"otp_expiry_action":"regenerate","otp_expiry":10,"otp_regen_success_msg":"A new OTP was successfully sent to your email address!","otp_regen_text":"Re-generate OTP","otp_exp_msg":"Sorry, your OTP has expired. You can re-generate OTP using link below.","otp_exp_restart_msg":"Sorry, your OTP has expired. You need to login again to proceed.","otp_field_label":"Enter Your OTP","msg_above_otp":"We emailed you a one-time-password (OTP) to your registered email address. Please enter it below to complete the login process.","en_resend_otp":1,"otp_resend_text":"Did not received OTP? Resend it","otp_resent_msg":"OTP was resent successfully to your email address!","otp_resend_limit":"3","allowed_incorrect_attempts":5,"invalid_otp_error":"The OTP you entered is incorrect.","apply_on":"all","disable_two_fa_for_admin":1,"enable_two_fa_for_roles":[]}'),
(6, 'email_templates', '{"failed_login_err":"<span style=\\"font-weight: 400;\\">There was a failed login attempt using your account username\\/ password {{username}} on our site {{sitename}} from IP {{Login_IP}} on {{login_time}}. If you have forgotten your password, you can easily reset it by visiting login page on our site. <\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">If you think it was an unauthorized login attempt, please contact site admin immediately.<\\/span>","otp_message":"<span style=\\"font-weight: 400;\\">Here is your one-time-password (OTP) for logging into {{site_name}}. The OTP will automatically expire after {{OTP_expiry}} minutes.<\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">{{OTP}}<\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">If you think it was an unauthorized login attempt, please contact site admin immediately. <\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<span style=\\"font-weight: 400;\\"><\\/span>","failed_login_err_admin":"<span style=\\"font-weight: 400;\\">There was a failed login attempt using username\\/ password {{username}} on your site {{sitename}} from IP {{Login_IP}} on {{login_time}}.<\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">If you think this is an unauthorized login attempt<\\/span><i><span style=\\"font-weight: 400;\\">, <\\/span><\\/i><span style=\\"font-weight: 400;\\">you can also immediately ban the IP by clicking <\\/span><span style=\\"font-weight: 400;\\"><a href=\\"http://tugruero.dev.com/wp-admin/admin.php?page=rm_options_security\\">here</a><\\/span><span style=\\"font-weight: 400;\\">. <\\/span>\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">You can managed the blocked IPs and\\/ or usernames by visiting <\\/span><span style=\\"font-weight: 400;\\"><a href=\\"http://tugruero.dev.com/wp-admin/admin.php?page=rm_options_security\\">this link</a><\\/span> <i><span style=\\"font-weight: 400;\\">Global Settings \\u2192 Security page link<\\/span><\\/i>","ban_message_admin":"<span style=\\"font-weight: 400;\\">There were multiple failed login attempts from IP {{login_IP}}. As a preset security measure, RegistrationMagic has blocked the IP. Here are the details of the ban:<\\/span>\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">Ban Period: {{ban_period}}<\\/span>\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">Failed Login Attempts: {{ban_trigger}}<\\/span>\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">If you think this IP is secure, you can lift the ban by clicking <\\/span><span style=\\"font-weight: 400;\\"><a href=\\"http://tugruero.dev.com/wp-admin/admin.php?page=rm_options_security\\">here</a><\\/span><span style=\\"font-weight: 400;\\">. <\\/span>\\r\\n\\r\\n<span style=\\"font-weight: 400;\\">You can managed the blocked IPs and\\/ or usernames by visiting <\\/span><span style=\\"font-weight: 400;\\"><a href=\\"http://tugruero.dev.com/wp-admin/admin.php?page=rm_options_security\\">this link</a><\\/span> <i><span style=\\"font-weight: 400;\\">Global Settings \\u2192 Security page link<\\/span><\\/i>"}'),
(7, 'btn_config', '{"register_btn":"Register","login_btn":"Login","align":"center","display_register":0}'),
(8, 'design', '{"style_form":"","style_textfield":"","style_btnfield":"","form_submit_btn_label":"Submit","style_section":"","form_id":"login","placeholder_css":""}'),
(9, 'login_view', '{"display_user_avatar":1,"display_user_name":1,"display_greetings":1,"greetings_text":"Welcome","display_custom_msg":1,"custom_msg":"You are already logged in.","separator_bar_color":"DDDDDD","display_account_link":1,"account_link_text":"My Account","display_logout_link":1,"logout_text":"Logout"}'),
(10, 'log_retention', '{"logs_retention":"records","no_of_records":1000,"no_of_days":7}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_login_log`
--

CREATE TABLE `wp_rm_login_log` (
  `id` int(6) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username_used` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban` int(1) DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failure_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_til` datetime DEFAULT NULL,
  `login_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_rm_login_log`
--

INSERT INTO `wp_rm_login_log` (`id`, `email`, `username_used`, `time`, `status`, `ip`, `browser`, `type`, `ban`, `result`, `failure_reason`, `ban_til`, `login_url`, `social_type`) VALUES
(1, 'fidel.alejos@gmail.com', 'root', '2019-03-07 01:23:51', 1, '127.0.0.1', 'Chrome', 'normal', 0, 'success', '', NULL, 'http://tugruero.dev.com/rm_login', ''),
(2, 'fidel.alejos@gmail.com', 'root', '2019-03-07 01:32:00', 1, '127.0.0.1', 'Chrome', 'normal', 0, 'success', '', NULL, 'http://tugruero.dev.com/rm_submissions', ''),
(3, 'fidel.alejos@gmail.com', 'fidel.alejos@gmail.com', '2019-03-07 01:38:07', 0, '127.0.0.1', 'Chrome', 'normal', 0, 'failure', 'incorrect_username', NULL, 'http://tugruero.dev.com/rm_login', ''),
(4, 'fidel.alejos@gmail.com', 'root', '2019-03-07 13:16:20', 1, '127.0.0.1', 'Chrome', 'normal', 0, 'success', '', NULL, 'http://tugruero.dev.com/rm_login', ''),
(5, 'fidel.alejos@gmail.com', 'root', '2019-03-07 13:18:53', 1, '127.0.0.1', 'Chrome', 'normal', 0, 'success', '', NULL, 'http://tugruero.dev.com/rm_login', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_notes`
--

CREATE TABLE `wp_rm_notes` (
  `note_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_date` datetime NOT NULL,
  `published_by` bigint(20) DEFAULT NULL,
  `last_edit_date` datetime DEFAULT NULL,
  `last_edited_by` bigint(20) DEFAULT NULL,
  `note_options` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_paypal_fields`
--

CREATE TABLE `wp_rm_paypal_fields` (
  `field_id` int(6) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `class` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_label` longtext COLLATE utf8mb4_unicode_ci,
  `option_price` longtext COLLATE utf8mb4_unicode_ci,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `require` longtext COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `extra_options` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_paypal_logs`
--

CREATE TABLE `wp_rm_paypal_logs` (
  `id` int(6) UNSIGNED NOT NULL,
  `submission_id` int(6) DEFAULT NULL,
  `form_id` int(6) DEFAULT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log` longtext COLLATE utf8mb4_unicode_ci,
  `posted_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_proc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill` longtext COLLATE utf8mb4_unicode_ci,
  `ex_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_rules`
--

CREATE TABLE `wp_rm_rules` (
  `rule_id` int(6) UNSIGNED NOT NULL,
  `type` int(6) DEFAULT NULL,
  `attr_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_value` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operator` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_sent_mails`
--

CREATE TABLE `wp_rm_sent_mails` (
  `mail_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub` longtext COLLATE utf8mb4_unicode_ci,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `sent_on` datetime DEFAULT NULL,
  `headers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `exdata` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read_by_user` tinyint(1) NOT NULL DEFAULT '0',
  `was_sent_success` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_sessions`
--

CREATE TABLE `wp_rm_sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_stats`
--

CREATE TABLE `wp_rm_stats` (
  `stat_id` int(11) NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ua_string` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visited_on` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitted_on` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_taken` int(11) DEFAULT NULL,
  `submission_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_submissions`
--

CREATE TABLE `wp_rm_submissions` (
  `submission_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci,
  `user_email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `child_id` int(6) NOT NULL DEFAULT '0',
  `last_child` int(6) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `submitted_on` datetime DEFAULT NULL,
  `unique_token` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_submission_fields`
--

CREATE TABLE `wp_rm_submission_fields` (
  `sub_field_id` int(6) UNSIGNED NOT NULL,
  `submission_id` int(6) DEFAULT NULL,
  `field_id` int(6) DEFAULT NULL,
  `form_id` int(6) DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_tasks`
--

CREATE TABLE `wp_rm_tasks` (
  `task_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `must_rules` text COLLATE utf8mb4_unicode_ci,
  `any_rules` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `actions` text COLLATE utf8mb4_unicode_ci,
  `task_order` int(6) DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_rm_task_exe_log`
--

CREATE TABLE `wp_rm_task_exe_log` (
  `texe_log_id` int(6) UNSIGNED NOT NULL,
  `task_id` int(6) DEFAULT NULL,
  `action` int(6) DEFAULT NULL,
  `sub_ids` longtext COLLATE utf8mb4_unicode_ci,
  `user_ids` longtext COLLATE utf8mb4_unicode_ci,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
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
(15, 'Sin categorizar', 'sin-categorizar', 0),
(16, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(10, 15, 0),
(26, 16, 0),
(32, 16, 0),
(34, 16, 0),
(35, 16, 0),
(90, 2, 0),
(90, 15, 0),
(92, 2, 0),
(92, 15, 0),
(154, 16, 0),
(240, 16, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 3),
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
(15, 15, 'product_cat', '', 0, 3),
(16, 16, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', 'Fidel'),
(3, 1, 'last_name', 'Aliaga'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '275'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wc_last_active', '1564012800'),
(21, 1, 'dismissed_no_secure_connection_notice', '1'),
(22, 1, 'dismissed_wootenberg_notice', '1'),
(32, 1, 'dismissed_no_shipping_methods_notice', '1'),
(33, 1, 'dismissed_store_notice_setting_moved_notice', '1'),
(35, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(36, 1, 'metaboxhidden_nav-menus', 'a:9:{i:0;s:21:"add-post-type-product";i:1;s:20:"add-post-type-banner";i:2;s:25:"add-post-type-testimonios";i:3;s:24:"add-post-type-referencia";i:4;s:21:"add-post-type-galeria";i:5;s:23:"add-post-type-servicios";i:6;s:12:"add-post_tag";i:7;s:15:"add-product_cat";i:8;s:15:"add-product_tag";}'),
(37, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&mfold=o'),
(38, 1, 'wp_user-settings-time', '1559148540'),
(40, 1, 'nav_menu_recently_edited', '16'),
(41, 1, 'meta-box-order_testimonios', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:22:"submitdiv,postimagediv";s:6:"normal";s:31:"acf-group_5c96ca3ba5036,slugdiv";s:8:"advanced";s:0:"";}'),
(42, 1, 'screen_layout_testimonios', '2'),
(47, 1, 'last_update', '1554167628'),
(48, 1, 'billing_first_name', 'Fidel'),
(49, 1, 'billing_last_name', 'Aliaga'),
(50, 1, 'billing_address_1', 'Av Miami'),
(51, 1, 'billing_address_2', 'Miami'),
(52, 1, 'billing_city', 'Atlanta'),
(53, 1, 'billing_state', 'GA'),
(54, 1, 'billing_postcode', '30301'),
(55, 1, 'billing_country', 'VE'),
(56, 1, 'billing_email', 'fidel.alejos@gmail.com'),
(57, 1, 'billing_phone', '4545454545'),
(58, 1, 'shipping_method', ''),
(94, 3, 'nickname', 'fidel.aliaga'),
(95, 3, 'first_name', 'Fidel'),
(96, 3, 'last_name', 'Aliaga'),
(97, 3, 'description', ''),
(98, 3, 'rich_editing', 'true'),
(99, 3, 'syntax_highlighting', 'true'),
(100, 3, 'comment_shortcuts', 'false'),
(101, 3, 'admin_color', 'fresh'),
(102, 3, 'use_ssl', '0'),
(103, 3, 'show_admin_bar_front', 'true'),
(104, 3, 'locale', ''),
(105, 3, 'wp_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(106, 3, 'wp_user_level', '0'),
(107, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(110, 3, 'last_update', '1554832701'),
(111, 3, 'billing_first_name', 'Fidel'),
(112, 3, 'billing_last_name', 'Aliaga'),
(113, 3, 'billing_company', 'dasd'),
(114, 3, 'billing_address_1', 'das'),
(115, 3, 'billing_address_2', 'dasd'),
(116, 3, 'billing_city', 'Barquisimeto'),
(117, 3, 'billing_state', 'Lara'),
(118, 3, 'billing_postcode', '3301'),
(119, 3, 'billing_country', 'VE'),
(120, 3, 'billing_email', 'fidel.aliaga@binaural.com.ve'),
(121, 3, 'billing_phone', '04145038322'),
(122, 3, 'shipping_method', ''),
(123, 3, 'billing_myfield19', 'Fidel Aliaga'),
(124, 3, 'billing_myfield21', 'Aliaga'),
(125, 3, 'billing_myfield20', 'Femenino'),
(126, 3, 'billing_myfield22', '04145038322'),
(127, 3, 'billing_myfield23', '22186230'),
(128, 3, 'billing_myfield24', 'fidel.aliaga@binaural.com.ve'),
(129, 3, 'billing_myfield25', '18/08/1992'),
(130, 3, 'billing_myfield26', 'Lara'),
(131, 3, 'billing_myfield27', 'Soltero/a'),
(132, 3, 'billing_myfield12', 'Automóvil'),
(133, 3, 'billing_myfield13', '1980'),
(134, 3, 'billing_myfield14', 'ads'),
(135, 3, 'billing_myfield15', 'dasd'),
(136, 3, 'billing_myfield16', 'das'),
(137, 3, 'billing_myfield17', 'dasd'),
(138, 3, 'billing_myfield18', 'Coupé'),
(139, 3, 'wc_last_active', '1554768000'),
(144, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"d3d9446802a44259755d38e6d163e820";a:11:{s:3:"key";s:32:"d3d9446802a44259755d38e6d163e820";s:10:"product_id";i:10;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:16;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:16;s:8:"line_tax";i:0;}}}'),
(145, 4, 'nickname', 'fidel'),
(146, 4, 'first_name', 'Fidel Aliaga'),
(147, 4, 'last_name', 'Aliaga'),
(148, 4, 'description', ''),
(149, 4, 'rich_editing', 'true'),
(150, 4, 'syntax_highlighting', 'true'),
(151, 4, 'comment_shortcuts', 'false'),
(152, 4, 'admin_color', 'fresh'),
(153, 4, 'use_ssl', '0'),
(154, 4, 'show_admin_bar_front', 'true'),
(155, 4, 'locale', ''),
(156, 4, 'wp_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(157, 4, 'wp_user_level', '0'),
(158, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(161, 4, 'last_update', '1554915005'),
(162, 4, 'billing_first_name', 'Fidel Aliaga'),
(163, 4, 'billing_last_name', 'Aliaga'),
(164, 4, 'billing_company', 'padre'),
(165, 4, 'billing_address_1', 'miami'),
(166, 4, 'billing_address_2', 'miami'),
(167, 4, 'billing_city', 'barquisimeto'),
(168, 4, 'billing_state', 'Lara'),
(169, 4, 'billing_postcode', '3301'),
(170, 4, 'billing_country', 'VE'),
(171, 4, 'billing_email', 'fidel@yopmail.com'),
(172, 4, 'billing_phone', '04145038322'),
(173, 4, 'shipping_method', ''),
(174, 4, 'billing_myfield19', 'Fidel Aliaga'),
(175, 4, 'billing_myfield21', 'Aliaga'),
(176, 4, 'billing_myfield20', 'Femenino'),
(177, 4, 'billing_myfield22', '04145038322'),
(178, 4, 'billing_myfield23', '22186230'),
(179, 4, 'billing_myfield24', 'fidel@yopmail.com'),
(180, 4, 'billing_myfield25', '18/08/1992'),
(181, 4, 'billing_myfield26', 'Lara'),
(182, 4, 'billing_myfield27', 'Soltero/a'),
(183, 4, 'billing_myfield12', 'Automóvil'),
(184, 4, 'billing_myfield13', '1980'),
(185, 4, 'billing_myfield14', 'Ford'),
(186, 4, 'billing_myfield15', 'a4kjrr'),
(187, 4, 'billing_myfield16', 'Aveo'),
(188, 4, 'billing_myfield17', 'rojo'),
(189, 4, 'billing_myfield18', 'Coupé'),
(190, 4, 'wc_last_active', '1554854400'),
(192, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(210, 1, 'closedpostboxes_product', 'a:0:{}'),
(211, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:"slugdiv";}'),
(213, 1, 'session_tokens', 'a:1:{s:64:"fa3545f22dd3e0286385c44f86497c96f2d060020ff497820b856c8b4d1ce831";a:4:{s:10:"expiration";i:1564243047;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36";s:5:"login";i:1564070247;}}'),
(217, 1, '_woocommerce_tracks_anon_id', 'woo:xitdh+3gtb1a1n+VZU4yMMtK'),
(289, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"d3d9446802a44259755d38e6d163e820";a:11:{s:3:"key";s:32:"d3d9446802a44259755d38e6d163e820";s:10:"product_id";i:10;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";s:1:"1";s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:16;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:16;s:8:"line_tax";i:0;}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BVVMhST7muukCv0IpDrM7vWvwjzC6L0', 'root', 'fidel.alejos@gmail.com', '', '2019-03-07 00:22:33', '', 0, 'root'),
(3, 'fidel.aliaga', '$P$B3b2zwSeahe/95X9iW28ngMxrCXCIV.', 'fidel-aliaga', 'fidel.aliaga@binaural.com.ve', '', '2019-04-09 17:58:17', '', 0, 'fidel.aliaga'),
(4, 'fidel', '$P$ByHjfwXEMIQ1jaN1ADwa3q3A0Ei0KA0', 'fidel', 'fidel@yopmail.com', '', '2019-04-10 16:49:44', '', 0, 'fidel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_download_log`
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
-- Estructura de tabla para la tabla `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(10, '', 1, 0, '16.00', '16.00', 0, NULL, 'instock', 0, '0.00', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_webhooks`
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
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '10'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '16'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '16'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(64, 8, '_product_id', '92'),
(65, 8, '_variation_id', '0'),
(66, 8, '_qty', '1'),
(67, 8, '_tax_class', ''),
(68, 8, '_line_subtotal', '48'),
(69, 8, '_line_subtotal_tax', '0'),
(70, 8, '_line_total', '48'),
(71, 8, '_line_tax', '0'),
(72, 8, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(73, 9, '_product_id', '90'),
(74, 9, '_variation_id', '0'),
(75, 9, '_qty', '1'),
(76, 9, '_tax_class', ''),
(77, 9, '_line_subtotal', '23'),
(78, 9, '_line_subtotal_tax', '0'),
(79, 9, '_line_total', '23'),
(80, 9, '_line_tax', '0'),
(81, 9, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(82, 10, '_product_id', '90'),
(83, 10, '_variation_id', '0'),
(84, 10, '_qty', '1'),
(85, 10, '_tax_class', ''),
(86, 10, '_line_subtotal', '23'),
(87, 10, '_line_subtotal_tax', '0'),
(88, 10, '_line_total', '23'),
(89, 10, '_line_tax', '0'),
(90, 10, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(91, 11, '_product_id', '90'),
(92, 11, '_variation_id', '0'),
(93, 11, '_qty', '1'),
(94, 11, '_tax_class', ''),
(95, 11, '_line_subtotal', '23'),
(96, 11, '_line_subtotal_tax', '0'),
(97, 11, '_line_total', '23'),
(98, 11, '_line_tax', '0'),
(99, 11, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(100, 12, '_product_id', '10'),
(101, 12, '_variation_id', '0'),
(102, 12, '_qty', '1'),
(103, 12, '_tax_class', ''),
(104, 12, '_line_subtotal', '50490'),
(105, 12, '_line_subtotal_tax', '0'),
(106, 12, '_line_total', '50490'),
(107, 12, '_line_tax', '0'),
(108, 12, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(109, 13, '_product_id', '10'),
(110, 13, '_variation_id', '0'),
(111, 13, '_qty', '3'),
(112, 13, '_tax_class', ''),
(113, 13, '_line_subtotal', '48'),
(114, 13, '_line_subtotal_tax', '0'),
(115, 13, '_line_total', '48'),
(116, 13, '_line_tax', '0'),
(117, 13, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(118, 14, '_product_id', '10'),
(119, 14, '_variation_id', '0'),
(120, 14, '_qty', '2'),
(121, 14, '_tax_class', ''),
(122, 14, '_line_subtotal', '32'),
(123, 14, '_line_subtotal_tax', '0'),
(124, 14, '_line_total', '32'),
(125, 14, '_line_tax', '0'),
(126, 14, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(127, 15, '_product_id', '10'),
(128, 15, '_variation_id', '0'),
(129, 15, '_qty', '1'),
(130, 15, '_tax_class', ''),
(131, 15, '_line_subtotal', '16'),
(132, 15, '_line_subtotal_tax', '0'),
(133, 15, '_line_total', '16'),
(134, 15, '_line_tax', '0'),
(135, 15, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(136, 16, '_product_id', '10'),
(137, 16, '_variation_id', '0'),
(138, 16, '_qty', '1'),
(139, 16, '_tax_class', ''),
(140, 16, '_line_subtotal', '3971328'),
(141, 16, '_line_subtotal_tax', '0'),
(142, 16, '_line_total', '3971328'),
(143, 16, '_line_tax', '0'),
(144, 16, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(145, 17, '_product_id', '10'),
(146, 17, '_variation_id', '0'),
(147, 17, '_qty', '1'),
(148, 17, '_tax_class', ''),
(149, 17, '_line_subtotal', '3971328'),
(150, 17, '_line_subtotal_tax', '0'),
(151, 17, '_line_total', '3971328'),
(152, 17, '_line_tax', '0'),
(153, 17, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(154, 18, '_product_id', '10'),
(155, 18, '_variation_id', '0'),
(156, 18, '_qty', '1'),
(157, 18, '_tax_class', ''),
(158, 18, '_line_subtotal', '3971328'),
(159, 18, '_line_subtotal_tax', '0'),
(160, 18, '_line_total', '3971328'),
(161, 18, '_line_tax', '0'),
(162, 18, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(163, 19, '_product_id', '10'),
(164, 19, '_variation_id', '0'),
(165, 19, '_qty', '1'),
(166, 19, '_tax_class', ''),
(167, 19, '_line_subtotal', '3971328'),
(168, 19, '_line_subtotal_tax', '0'),
(169, 19, '_line_total', '3971328'),
(170, 19, '_line_tax', '0'),
(171, 19, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(172, 20, '_product_id', '10'),
(173, 20, '_variation_id', '0'),
(174, 20, '_qty', '1'),
(175, 20, '_tax_class', ''),
(176, 20, '_line_subtotal', '3971328'),
(177, 20, '_line_subtotal_tax', '0'),
(178, 20, '_line_total', '3971328'),
(179, 20, '_line_tax', '0'),
(180, 20, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(181, 21, '_product_id', '10'),
(182, 21, '_variation_id', '0'),
(183, 21, '_qty', '1'),
(184, 21, '_tax_class', ''),
(185, 21, '_line_subtotal', '16'),
(186, 21, '_line_subtotal_tax', '0'),
(187, 21, '_line_total', '16'),
(188, 21, '_line_tax', '0'),
(189, 21, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(190, 22, '_product_id', '10'),
(191, 22, '_variation_id', '0'),
(192, 22, '_qty', '1'),
(193, 22, '_tax_class', ''),
(194, 22, '_line_subtotal', '16'),
(195, 22, '_line_subtotal_tax', '0'),
(196, 22, '_line_total', '16'),
(197, 22, '_line_tax', '0'),
(198, 22, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(199, 23, '_product_id', '10'),
(200, 23, '_variation_id', '0'),
(201, 23, '_qty', '1'),
(202, 23, '_tax_class', ''),
(203, 23, '_line_subtotal', '16'),
(204, 23, '_line_subtotal_tax', '0'),
(205, 23, '_line_total', '0'),
(206, 23, '_line_tax', '0'),
(207, 23, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(208, 24, 'discount_amount', '16'),
(209, 24, 'discount_amount_tax', '0'),
(210, 24, 'coupon_data', 'a:24:{s:2:"id";i:261;s:4:"code";s:3:"123";s:6:"amount";s:3:"100";s:12:"date_created";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-08 21:40:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"date_modified";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-08 21:41:15.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:12:"date_expires";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-10 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"discount_type";s:7:"percent";s:11:"description";s:0:"";s:11:"usage_count";i:0;s:14:"individual_use";b:0;s:11:"product_ids";a:1:{i:0;i:10;}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:3;s:20:"usage_limit_per_user";i:0;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:0:"";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:0:{}}'),
(211, 25, '_product_id', '10'),
(212, 25, '_variation_id', '0'),
(213, 25, '_qty', '1'),
(214, 25, '_tax_class', ''),
(215, 25, '_line_subtotal', '16'),
(216, 25, '_line_subtotal_tax', '0'),
(217, 25, '_line_total', '0'),
(218, 25, '_line_tax', '0'),
(219, 25, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(220, 26, 'discount_amount', '16'),
(221, 26, 'discount_amount_tax', '0'),
(222, 26, 'coupon_data', 'a:24:{s:2:"id";i:261;s:4:"code";s:3:"123";s:6:"amount";s:3:"100";s:12:"date_created";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-08 21:40:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"date_modified";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-08 21:41:15.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:12:"date_expires";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-10 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"discount_type";s:7:"percent";s:11:"description";s:0:"";s:11:"usage_count";i:1;s:14:"individual_use";b:0;s:11:"product_ids";a:1:{i:0;i:10;}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:3;s:20:"usage_limit_per_user";i:0;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:0:"";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:0:{}}'),
(223, 27, '_product_id', '10'),
(224, 27, '_variation_id', '0'),
(225, 27, '_qty', '1'),
(226, 27, '_tax_class', ''),
(227, 27, '_line_subtotal', '16'),
(228, 27, '_line_subtotal_tax', '0'),
(229, 27, '_line_total', '16'),
(230, 27, '_line_tax', '0'),
(231, 27, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(232, 28, '_product_id', '10'),
(233, 28, '_variation_id', '0'),
(234, 28, '_qty', '1'),
(235, 28, '_tax_class', ''),
(236, 28, '_line_subtotal', '16'),
(237, 28, '_line_subtotal_tax', '0'),
(238, 28, '_line_total', '0'),
(239, 28, '_line_tax', '0'),
(240, 28, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(241, 29, 'discount_amount', '16'),
(242, 29, 'discount_amount_tax', '0'),
(243, 29, 'coupon_data', 'a:24:{s:2:"id";i:261;s:4:"code";s:3:"123";s:6:"amount";s:3:"100";s:12:"date_created";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-08 21:40:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"date_modified";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-08 21:41:15.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:12:"date_expires";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-10 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"discount_type";s:7:"percent";s:11:"description";s:0:"";s:11:"usage_count";i:2;s:14:"individual_use";b:0;s:11:"product_ids";a:1:{i:0;i:10;}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:3;s:20:"usage_limit_per_user";i:0;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:0:"";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:0:{}}'),
(244, 30, '_product_id', '10'),
(245, 30, '_variation_id', '0'),
(246, 30, '_qty', '1'),
(247, 30, '_tax_class', ''),
(248, 30, '_line_subtotal', '16'),
(249, 30, '_line_subtotal_tax', '0'),
(250, 30, '_line_total', '0'),
(251, 30, '_line_tax', '0'),
(252, 30, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(253, 31, 'discount_amount', '16'),
(254, 31, 'discount_amount_tax', '0'),
(255, 31, 'coupon_data', 'a:24:{s:2:"id";i:261;s:4:"code";s:3:"123";s:6:"amount";s:3:"100";s:12:"date_created";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-08 21:40:59.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"date_modified";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-09 17:32:52.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:12:"date_expires";O:11:"WC_DateTime":4:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2019-07-10 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:13:"Europe/Madrid";}s:13:"discount_type";s:7:"percent";s:11:"description";s:0:"";s:11:"usage_count";i:3;s:14:"individual_use";b:0;s:11:"product_ids";a:1:{i:0;i:10;}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:5;s:20:"usage_limit_per_user";i:0;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:0:"";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:0:{}}'),
(256, 32, '_product_id', '10'),
(257, 32, '_variation_id', '0'),
(258, 32, '_qty', '1'),
(259, 32, '_tax_class', ''),
(260, 32, '_line_subtotal', '16'),
(261, 32, '_line_subtotal_tax', '0'),
(262, 32, '_line_total', '16'),
(263, 32, '_line_tax', '0'),
(264, 32, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(265, 33, '_product_id', '10'),
(266, 33, '_variation_id', '0'),
(267, 33, '_qty', '1'),
(268, 33, '_tax_class', ''),
(269, 33, '_line_subtotal', '16'),
(270, 33, '_line_subtotal_tax', '0'),
(271, 33, '_line_total', '16'),
(272, 33, '_line_tax', '0'),
(273, 33, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(274, 33, '_ywau_order_item_files', 'a:1:{i:33;a:3:{i:4;a:12:{s:7:"item_id";i:33;s:7:"rule_id";s:1:"4";s:8:"order_id";s:3:"272";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:167:"El archivo <b>174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:80:"272/33/4/174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png";s:21:"admin_response_status";s:8:"accepted";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:10:"2019-07-17";}i:5;a:12:{s:7:"item_id";i:33;s:7:"rule_id";s:1:"5";s:8:"order_id";s:3:"272";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:167:"El archivo <b>174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:80:"272/33/5/174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png";s:21:"admin_response_status";s:8:"rejected";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:10:"2019-07-17";}i:6;a:12:{s:7:"item_id";i:33;s:7:"rule_id";s:1:"6";s:8:"order_id";s:3:"272";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:167:"El archivo <b>174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:80:"272/33/6/174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png";s:21:"admin_response_status";s:8:"rejected";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:10:"2019-07-17";}}}'),
(275, 34, '_product_id', '10'),
(276, 34, '_variation_id', '0'),
(277, 34, '_qty', '1'),
(278, 34, '_tax_class', ''),
(279, 34, '_line_subtotal', '16'),
(280, 34, '_line_subtotal_tax', '0'),
(281, 34, '_line_total', '16'),
(282, 34, '_line_tax', '0'),
(283, 34, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(284, 34, '_ywau_order_item_files', 'a:1:{i:34;a:3:{i:4;a:12:{s:7:"item_id";i:34;s:7:"rule_id";s:1:"4";s:8:"order_id";s:3:"273";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:132:"El archivo <b>5fa5b5e808b69b01c1d6b39340d2d2e8.jpg</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:45:"273/34/4/5fa5b5e808b69b01c1d6b39340d2d2e8.jpg";s:21:"admin_response_status";s:8:"accepted";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:10:"2019-07-17";}i:5;a:12:{s:7:"item_id";i:34;s:7:"rule_id";s:1:"5";s:8:"order_id";s:3:"273";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:132:"El archivo <b>5fa5b5e808b69b01c1d6b39340d2d2e8.jpg</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:45:"273/34/5/5fa5b5e808b69b01c1d6b39340d2d2e8.jpg";s:21:"admin_response_status";s:8:"accepted";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:10:"2019-07-17";}i:6;a:12:{s:7:"item_id";i:34;s:7:"rule_id";s:1:"6";s:8:"order_id";s:3:"273";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:132:"El archivo <b>5fa5b5e808b69b01c1d6b39340d2d2e8.jpg</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:45:"273/34/6/5fa5b5e808b69b01c1d6b39340d2d2e8.jpg";s:21:"admin_response_status";s:8:"accepted";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:10:"2019-07-17";}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Plan Básico', 'line_item', 131),
(8, 'Plan Gold', 'line_item', 141),
(9, 'Plan Plus', 'line_item', 141),
(10, 'Plan Plus', 'line_item', 142),
(11, 'Plan Plus', 'line_item', 143),
(12, 'Plan Básico', 'line_item', 148),
(13, 'Plan Básico', 'line_item', 160),
(14, 'Plan Básico', 'line_item', 163),
(15, 'Plan Básico', 'line_item', 169),
(16, 'Plan Básico', 'line_item', 178),
(17, 'Plan Básico', 'line_item', 222),
(18, 'Plan Básico', 'line_item', 228),
(19, 'Plan Básico', 'line_item', 229),
(20, 'Plan Básico', 'line_item', 230),
(21, 'Plan Básico', 'line_item', 239),
(22, 'Plan Classic', 'line_item', 253),
(23, 'Plan Classic', 'line_item', 262),
(24, '123', 'coupon', 262),
(25, 'Plan Classic', 'line_item', 263),
(26, '123', 'coupon', 263),
(27, 'Plan Classic', 'line_item', 264),
(28, 'Plan Classic', 'line_item', 265),
(29, '123', 'coupon', 265),
(30, 'Plan Classic', 'line_item', 267),
(31, '123', 'coupon', 267),
(32, 'Plan Classic', 'line_item', 268),
(33, 'Plan Classic', 'line_item', 272),
(34, 'Plan Classic', 'line_item', 273);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1991, '7978576c8ecb539160fd461fbe80ef93', 'a:8:{s:4:"cart";s:424:"a:1:{s:32:"d3d9446802a44259755d38e6d163e820";a:11:{s:3:"key";s:32:"d3d9446802a44259755d38e6d163e820";s:10:"product_id";i:10;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";s:1:"1";s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:3971328;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:3971328;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:423:"a:15:{s:8:"subtotal";s:10:"3971328.00";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:10:"3971328.00";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:10:"3971328.00";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:688:"a:26:{s:2:"id";s:1:"0";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:1:"1";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:21:"chosen_payment_method";s:4:"bacs";}', 1564253340),
(2005, '4a9cda1a5a54e16aa86ba26ad64a5f12', 'a:8:{s:4:"cart";s:414:"a:1:{s:32:"d3d9446802a44259755d38e6d163e820";a:11:{s:3:"key";s:32:"d3d9446802a44259755d38e6d163e820";s:10:"product_id";i:10;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";s:1:"1";s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:16;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:16;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:405:"a:15:{s:8:"subtotal";s:5:"16.00";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:5:"16.00";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:5:"16.00";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:864:"a:26:{s:2:"id";s:1:"0";s:13:"date_modified";s:0:"";s:8:"postcode";s:4:"0000";s:4:"city";s:12:"Barquisimeto";s:9:"address_1";s:30:"Calle 6 entre carreras 21 y 24";s:7:"address";s:30:"Calle 6 entre carreras 21 y 24";s:9:"address_2";s:1:".";s:5:"state";s:8:"Amazonas";s:7:"country";s:2:"VE";s:17:"shipping_postcode";s:4:"0000";s:13:"shipping_city";s:12:"Barquisimeto";s:18:"shipping_address_1";s:30:"Calle 6 entre carreras 21 y 24";s:16:"shipping_address";s:30:"Calle 6 entre carreras 21 y 24";s:18:"shipping_address_2";s:1:".";s:14:"shipping_state";s:8:"Amazonas";s:16:"shipping_country";s:2:"VE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:1:"1";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:21:"chosen_payment_method";s:4:"bacs";}', 1564254778),
(2006, 'dd27188fcbec5fffbbfaacb58fa5b946', 'a:9:{s:4:"cart";s:414:"a:1:{s:32:"d3d9446802a44259755d38e6d163e820";a:11:{s:3:"key";s:32:"d3d9446802a44259755d38e6d163e820";s:10:"product_id";i:10;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";s:1:"1";s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:16;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:16;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:405:"a:15:{s:8:"subtotal";s:5:"16.00";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:4:"0.00";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:5:"16.00";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:4:"0.00";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:5:"16.00";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:864:"a:26:{s:2:"id";s:1:"0";s:13:"date_modified";s:0:"";s:8:"postcode";s:4:"0000";s:4:"city";s:12:"Barquisimeto";s:9:"address_1";s:30:"Calle 6 entre carreras 21 y 24";s:7:"address";s:30:"Calle 6 entre carreras 21 y 24";s:9:"address_2";s:1:".";s:5:"state";s:8:"Amazonas";s:7:"country";s:2:"VE";s:17:"shipping_postcode";s:4:"0000";s:13:"shipping_city";s:12:"Barquisimeto";s:18:"shipping_address_1";s:30:"Calle 6 entre carreras 21 y 24";s:16:"shipping_address";s:30:"Calle 6 entre carreras 21 y 24";s:18:"shipping_address_2";s:1:".";s:14:"shipping_state";s:8:"Amazonas";s:16:"shipping_country";s:2:"VE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:1:"1";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:21:"chosen_payment_method";s:4:"bacs";s:19:"ywau_upload_results";s:2041:"a:1:{s:32:"d3d9446802a44259755d38e6d163e820";a:3:{i:4;a:12:{s:7:"item_id";s:32:"d3d9446802a44259755d38e6d163e820";s:7:"rule_id";s:1:"4";s:8:"order_id";s:1:"0";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:167:"El archivo <b>174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:108:"0/d3d9446802a44259755d38e6d163e820/4/174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png";s:21:"admin_response_status";s:4:"none";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:0:"";}i:5;a:12:{s:7:"item_id";s:32:"d3d9446802a44259755d38e6d163e820";s:7:"rule_id";s:1:"5";s:8:"order_id";s:1:"0";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:167:"El archivo <b>174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:108:"0/d3d9446802a44259755d38e6d163e820/5/174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png";s:21:"admin_response_status";s:4:"none";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:0:"";}i:6;a:12:{s:7:"item_id";s:32:"d3d9446802a44259755d38e6d163e820";s:7:"rule_id";s:1:"6";s:8:"order_id";s:1:"0";s:10:"product_id";s:2:"10";s:12:"variation_id";s:1:"0";s:4:"note";s:0:"";s:13:"upload_status";s:10:"successful";s:14:"upload_message";s:167:"El archivo <b>174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png</b> ha sido incluido en el pedido actual. Tu pedido está siendo ahora procesado.";s:15:"upload_filepath";s:108:"0/d3d9446802a44259755d38e6d163e820/6/174-1749052_pump-bombilla-mate-transprent-clipart-free-bombillo-png.png";s:21:"admin_response_status";s:4:"none";s:14:"admin_response";s:0:"";s:19:"admin_response_date";s:0:"";}}}";}', 1564339925);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
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
-- Indices de la tabla `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_rm_fields`
--
ALTER TABLE `wp_rm_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indices de la tabla `wp_rm_forms`
--
ALTER TABLE `wp_rm_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indices de la tabla `wp_rm_front_users`
--
ALTER TABLE `wp_rm_front_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_rm_login`
--
ALTER TABLE `wp_rm_login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_rm_login_log`
--
ALTER TABLE `wp_rm_login_log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_rm_notes`
--
ALTER TABLE `wp_rm_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `wp_rm_paypal_fields`
--
ALTER TABLE `wp_rm_paypal_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indices de la tabla `wp_rm_paypal_logs`
--
ALTER TABLE `wp_rm_paypal_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_rm_rules`
--
ALTER TABLE `wp_rm_rules`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indices de la tabla `wp_rm_sent_mails`
--
ALTER TABLE `wp_rm_sent_mails`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indices de la tabla `wp_rm_sessions`
--
ALTER TABLE `wp_rm_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_rm_stats`
--
ALTER TABLE `wp_rm_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indices de la tabla `wp_rm_submissions`
--
ALTER TABLE `wp_rm_submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indices de la tabla `wp_rm_submission_fields`
--
ALTER TABLE `wp_rm_submission_fields`
  ADD PRIMARY KEY (`sub_field_id`);

--
-- Indices de la tabla `wp_rm_tasks`
--
ALTER TABLE `wp_rm_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indices de la tabla `wp_rm_task_exe_log`
--
ALTER TABLE `wp_rm_task_exe_log`
  ADD PRIMARY KEY (`texe_log_id`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp_wc_product_meta_lookup`
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
-- Indices de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indices de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT de la tabla `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7669;
--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1965;
--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
--
-- AUTO_INCREMENT de la tabla `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_fields`
--
ALTER TABLE `wp_rm_fields`
  MODIFY `field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `wp_rm_forms`
--
ALTER TABLE `wp_rm_forms`
  MODIFY `form_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `wp_rm_front_users`
--
ALTER TABLE `wp_rm_front_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_login`
--
ALTER TABLE `wp_rm_login`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `wp_rm_login_log`
--
ALTER TABLE `wp_rm_login_log`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `wp_rm_notes`
--
ALTER TABLE `wp_rm_notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_paypal_fields`
--
ALTER TABLE `wp_rm_paypal_fields`
  MODIFY `field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_paypal_logs`
--
ALTER TABLE `wp_rm_paypal_logs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_rules`
--
ALTER TABLE `wp_rm_rules`
  MODIFY `rule_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_sent_mails`
--
ALTER TABLE `wp_rm_sent_mails`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_stats`
--
ALTER TABLE `wp_rm_stats`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_submissions`
--
ALTER TABLE `wp_rm_submissions`
  MODIFY `submission_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_submission_fields`
--
ALTER TABLE `wp_rm_submission_fields`
  MODIFY `sub_field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_tasks`
--
ALTER TABLE `wp_rm_tasks`
  MODIFY `task_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_rm_task_exe_log`
--
ALTER TABLE `wp_rm_task_exe_log`
  MODIFY `texe_log_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2007;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
