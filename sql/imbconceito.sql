-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 04/10/2012 às 22:29:42
-- Versão do Servidor: 5.5.24-0ubuntu0.12.04.1
-- Versão do PHP: 5.3.10-1ubuntu3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `imbconceito`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr. WordPress', '', 'http://wordpress.org/', '', '2012-09-15 01:41:46', '2012-09-15 01:41:46', 'Olá, isto é um comentário.<br />Para excluir um comentário, faça o login e veja os comentários dos posts. Lá você vai ter a opção de editá-los ou excluí-los.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/pt-br:Página_Inicial', 'Documentação', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/news/', 'Blog do WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/news/feed/'),
(3, 'http://br.forums.wordpress.org/', 'Fórum de Suporte', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Temas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://br.forums.wordpress.org/forum/pedidos-e-feedback', 'Feedback', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'Planeta WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=326 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/www/imbconceito', 'yes'),
(2, 'blogname', 'Imobiliária Conceito', 'yes'),
(3, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'ezequiel.c37@gmail.com', 'yes'),
(6, 'start_of_week', '0', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'G:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y G:i', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:3:{i:0;s:30:"easing-slider/easingslider.php";i:1;s:31:"smooth-slider/smooth-slider.php";i:2;s:27:"wp-property/wp-property.php";}', 'yes'),
(37, 'home', 'http://localhost/www/imbconceito', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'imbconceito', 'yes'),
(46, 'stylesheet', 'imbconceito', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'page', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:167:"<h3><a href="">www.imobiliariaconceito.com</a></h3>\r\nCompra, venda e administração de imóveis.\r\n61 3358-9920\r\nQS 316 Conjunto 04 lote 04 loja 01\r\nSamambaia Sul - DF";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:1:{s:30:"easing-slider/easingslider.php";s:20:"unset_easing_options";}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '43', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:72:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:17:"edit_wpp_property";b:1;s:17:"read_wpp_property";b:1;s:19:"delete_wpp_property";b:1;s:19:"edit_wpp_properties";b:1;s:26:"edit_others_wpp_properties";b:1;s:22:"publish_wpp_properties";b:1;s:27:"read_private_wpp_properties";b:1;s:19:"manage_wpp_settings";b:1;s:21:"manage_wpp_categories";b:1;s:21:"manage_wpp_admintools";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:10:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:24:"searchpropertieswidget-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:1:{i:0;s:10:"nav_menu-2";}s:9:"sidebar-4";a:1:{i:0;s:6:"text-2";}s:9:"sidebar-5";a:0:{}s:20:"wpp_sidebar_building";a:0:{}s:21:"wpp_sidebar_floorplan";a:0:{}s:30:"wpp_sidebar_single_family_home";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1349401309;a:2:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1349401310;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1349401397;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1349401411;a:1:{s:25:"wpp_premium_feature_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1349403904;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_transient_random_seed', '8caeda8381c1e0d030f7f008d829d5ed', 'yes'),
(107, 'auth_key', '.]hU+kh7jM]ke6VE_AxOg:+$-EdS;?W0thB6?Zdf^|_)iwO`LI3UrSwz>ZPcFw6t', 'yes'),
(108, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:2:{i:0;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:49:"http://br.wordpress.org/wordpress-3.4.2-pt_BR.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:49:"http://br.wordpress.org/wordpress-3.4.2-pt_BR.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;}s:7:"current";s:5:"3.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":9:{s:8:"response";s:6:"latest";s:8:"download";s:40:"http://wordpress.org/wordpress-3.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.4.2.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.4.2-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.4.2-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1349400405;s:15:"version_checked";s:5:"3.4.2";}', 'yes'),
(109, 'auth_salt', 'qu&#&9^wR&.U*PSY Z%t_7ZLV.Kw^w20MjhG%TdB7  a8&<$po]#Pxj wN=CP1OV', 'yes'),
(110, 'logged_in_key', '! >}tPnxyHevHQ/n%e)XeSx&Y=.Q*b.2hNU/]~pSw9tANEDQhE=XqVJOU.x-3^wR', 'yes'),
(111, 'logged_in_salt', 'klb9HE1$nowXCJGlv#t8bQR-UtHkplQ*/6z}OC>Pv+MeAC}}xEKBw{D1?vg%0I.s', 'yes'),
(112, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1349400405;s:8:"response";a:0:{}}', 'yes'),
(115, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1349400407;s:7:"checked";a:3:{s:11:"imbconceito";s:3:"1.0";s:12:"twentyeleven";s:3:"1.4";s:9:"twentyten";s:3:"1.4";}s:8:"response";a:0:{}}', 'yes'),
(116, '_site_transient_timeout_browser_f04a1a6e39b88cf2b965653e34037f2f', '1348278120', 'yes'),
(117, '_site_transient_browser_f04a1a6e39b88cf2b965653e34037f2f', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"21.0.1180.89";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(118, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:32:"http://localhost/www/imbconceito";s:4:"link";s:108:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/www/imbconceito/";s:3:"url";s:141:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/www/imbconceito/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:17:"Blog do WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:29:"Outras notícias do WordPress";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(119, 'nonce_key', 'K#`sEaNxAWR?{wy8G[Tpd6p,Ev0!m2ku5?2Xb(BC <&lYe?|nA2A_A^(I ,Klpn7', 'yes'),
(120, 'nonce_salt', '[nw.VaN]:^dp$jFdA}Rw6(DKVxq7]AGRl7^r(ylv#V1fzC{iig0-DYttmCC3S:]]', 'yes'),
(121, 'can_compress_scripts', '0', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(154, 'wpp_version', '1.36.0', 'yes'),
(155, 'ud_api_key', '9b0352982062801a4a224871b9d73c6433097a9b', 'yes'),
(156, 'wpp_settings', 'a:17:{s:13:"configuration";a:26:{s:33:"include_in_regular_search_results";s:5:"false";s:42:"do_not_automatically_regenerate_thumbnails";s:5:"false";s:23:"auto_delete_attachments";s:5:"false";s:9:"base_slug";s:8:"property";s:29:"automatically_insert_overview";s:5:"false";s:34:"do_not_override_search_result_page";s:5:"false";s:17:"address_attribute";s:8:"location";s:24:"google_maps_localization";s:5:"pt-BR";s:12:"autoload_css";s:4:"true";s:23:"load_scripts_everywhere";s:5:"false";s:12:"phone_number";s:0:"";s:17:"property_overview";a:6:{s:14:"thumbnail_size";s:10:"tiny_thumb";s:13:"show_children";s:5:"false";s:16:"fancybox_preview";s:5:"false";s:20:"sort_stats_by_groups";s:5:"false";s:18:"show_true_as_image";s:5:"false";s:19:"format_phone_number";s:5:"false";}s:24:"bottom_insert_pagenation";s:5:"false";s:20:"single_property_view";a:1:{s:14:"map_image_type";s:9:"map_thumb";}s:13:"gm_zoom_level";s:0:"";s:11:"google_maps";a:3:{s:18:"show_true_as_image";s:5:"false";s:16:"infobox_settings";a:3:{s:19:"show_property_title";s:4:"true";s:19:"show_direction_link";s:5:"false";s:28:"do_not_show_child_properties";s:5:"false";}s:18:"infobox_attributes";a:3:{i:0;s:5:"price";i:1;s:8:"bedrooms";i:2;s:9:"bathrooms";}}s:22:"display_address_format";s:31:"[street_name] - [state], [city]";s:15:"currency_symbol";s:3:"R$ ";s:13:"thousands_sep";s:1:".";s:25:"currency_symbol_placement";s:6:"before";s:8:"admin_ui";a:1:{s:29:"overview_table_thumbnail_size";s:10:"tiny_thumb";}s:45:"completely_hide_hidden_attributes_in_admin_ui";s:5:"false";s:11:"show_ud_log";s:5:"false";s:32:"disable_automatic_feature_update";s:5:"false";s:32:"disable_wordpress_postmeta_cache";s:5:"false";s:14:"developer_mode";s:5:"false";}s:11:"image_sizes";a:4:{s:9:"map_thumb";a:2:{s:5:"width";s:2:"50";s:6:"height";s:2:"50";}s:10:"tiny_thumb";a:2:{s:5:"width";s:3:"100";s:6:"height";s:3:"100";}s:12:"sidebar_wide";a:2:{s:5:"width";s:3:"195";s:6:"height";s:3:"130";}s:9:"slideshow";a:2:{s:5:"width";s:3:"640";s:6:"height";s:3:"235";}}s:15:"property_groups";a:1:{s:4:"main";a:2:{s:4:"name";s:4:"Main";s:5:"color";s:7:"#bdd6ff";}}s:14:"property_stats";a:7:{s:8:"location";s:9:"Endereço";s:5:"price";s:6:"Preço";s:8:"bedrooms";s:7:"Quartos";s:9:"bathrooms";s:9:"Banheiros";s:7:"deposit";s:7:"Deposit";s:4:"area";s:4:"Area";s:12:"phone_number";s:12:"Phone Number";}s:21:"property_stats_groups";a:7:{s:8:"location";s:0:"";s:5:"price";s:0:"";s:8:"bedrooms";s:0:"";s:9:"bathrooms";s:0:"";s:7:"deposit";s:0:"";s:4:"area";s:0:"";s:12:"phone_number";s:0:"";}s:22:"searchable_attr_fields";a:7:{s:8:"location";s:0:"";s:5:"price";s:0:"";s:8:"bedrooms";s:5:"input";s:9:"bathrooms";s:11:"range_input";s:7:"deposit";s:0:"";s:4:"area";s:0:"";s:12:"phone_number";s:0:"";}s:24:"predefined_search_values";a:7:{s:8:"location";s:0:"";s:5:"price";s:0:"";s:8:"bedrooms";s:0:"";s:9:"bathrooms";s:0:"";s:7:"deposit";s:0:"";s:4:"area";s:0:"";s:12:"phone_number";s:0:"";}s:17:"admin_attr_fields";a:7:{s:8:"location";s:0:"";s:5:"price";s:0:"";s:8:"bedrooms";s:5:"input";s:9:"bathrooms";s:0:"";s:7:"deposit";s:0:"";s:4:"area";s:0:"";s:12:"phone_number";s:0:"";}s:17:"predefined_values";a:7:{s:8:"location";s:0:"";s:5:"price";s:0:"";s:8:"bedrooms";s:0:"";s:9:"bathrooms";s:0:"";s:7:"deposit";s:0:"";s:4:"area";s:0:"";s:12:"phone_number";s:0:"";}s:21:"searchable_attributes";a:5:{i:0;s:5:"price";i:1;s:8:"bedrooms";i:2;s:9:"bathrooms";i:3;s:7:"deposit";i:4;s:4:"area";}s:13:"property_meta";a:4:{s:11:"lease_terms";s:11:"Lease Terms";s:10:"pet_policy";s:10:"Pet Policy";s:6:"school";s:6:"School";s:7:"tagline";s:7:"Tagline";}s:14:"property_types";a:3:{s:8:"building";s:8:"Building";s:9:"floorplan";s:9:"Floorplan";s:18:"single_family_home";s:18:"Single Family Home";}s:16:"location_matters";a:2:{i:0;s:8:"building";i:1;s:18:"single_family_home";}s:17:"hidden_attributes";a:3:{s:8:"building";a:5:{i:0;s:5:"price";i:1;s:8:"bedrooms";i:2;s:9:"bathrooms";i:3;s:7:"deposit";i:4;s:4:"area";}s:9:"floorplan";a:2:{i:0;s:8:"location";i:1;s:6:"school";}s:18:"single_family_home";a:3:{i:0;s:7:"deposit";i:1;s:11:"lease_terms";i:2;s:10:"pet_policy";}}s:25:"searchable_property_types";a:2:{i:0;s:9:"floorplan";i:1;s:18:"single_family_home";}s:20:"property_inheritance";a:1:{s:9:"floorplan";a:1:{i:0;s:8:"location";}}s:18:"available_features";a:8:{s:17:"class_admin_tools";a:4:{s:5:"title";s:11:"Admin Tools";s:7:"tagline";s:91:"For developers and designers needing to streamline their development involving WP-Property.";s:5:"image";s:73:"https://usabilitydynamics.com/live/wp-content/uploads/wpp_admin_tools.png";s:11:"description";s:183:"This plugin is intended for developers and theme designers.  The plugin adds a new tab on the settings page called "Developer".  There you can add new property types, attributes, etc.";}s:12:"class_agents";a:4:{s:5:"title";s:18:"Real Estate Agents";s:7:"tagline";s:61:"Create and associate real estate agents with your properties.";s:5:"image";s:68:"https://usabilitydynamics.com/live/wp-content/uploads/wpp_agents.png";s:11:"description";s:392:"The WP-Property Real Estate Agent module allows the website administrator to create new Real Estate agent accounts and associate them with properties. Multiple agents can be assigned to any given property and the agent information can be displayed in a widget placed on a property page.  Furthermore, properties can be queried by the agent(s) to create agent-specific property listings pages.";}s:14:"class_wpp_feps";a:4:{s:5:"title";s:37:"Front End Property Submissions (FEPS)";s:7:"tagline";s:41:"Allow your visitors to submit properties.";s:5:"image";s:66:"https://usabilitydynamics.com/live/wp-content/uploads/wpp_feps.png";s:11:"description";s:200:"Front End Property Submission (FEPS) lets you create forms and display them on the front-end of the website.  The forms may be used by visitors to submit properties, which are then held for approval. ";}s:19:"class_wpp_pdf_flyer";a:4:{s:5:"title";s:9:"PDF Flyer";s:7:"tagline";s:48:"Instantly create PDF flyers for your properties.";s:5:"image";s:77:"https://usabilitydynamics.com/live/wp-content/uploads/class_wpp_pdf_flyer.png";s:11:"description";s:388:"The WP-Property PDF Flyer premium feature allows the website owner to quickly generate PDF flyers, or brochures, ready for printing or download.  The feature comes with a standard PDF format and a user interface allows the administrator to select which information to display, what colors to use, image sizes, and a logo.  For more advances users custom PDF template layouts can be used. ";}s:21:"class_wpp_power_tools";a:4:{s:5:"title";s:38:"Power Tools with Capability Management";s:7:"tagline";s:54:"Power tools and capability management for WP-Property.";s:5:"image";s:67:"https://usabilitydynamics.com/live/wp-content/uploads/wpp_roles.png";s:11:"description";s:116:"Extra functionality which includes capability management, white labeling the control panel, and changes menu titles.";}s:25:"class_wpp_property_import";a:4:{s:5:"title";s:21:"XML Property Importer";s:7:"tagline";s:71:"Map and import XML-based properties into your WP-Property powered site.";s:5:"image";s:77:"https://usabilitydynamics.com/live/wp-content/uploads/wpp_property_import.png";s:11:"description";s:523:"The XMLI Importer enables you to automatically import property listings directly into your website.  This includes MLS, RETS, XML, and many other source formats. Properties are created, merged, removed, or updated according to rules you specify. This powerful importation tool downloads and attaches images and can even associate properties with real estate agents, on the fly. Once an import schedule has been created, you can literally import hundreds, thousands, even tens of thousands of properties with a single click.";}s:19:"class_wpp_slideshow";a:4:{s:5:"title";s:9:"Slideshow";s:7:"tagline";s:56:"A slideshow for every property page, home page, or both.";s:5:"image";s:71:"https://usabilitydynamics.com/live/wp-content/uploads/wpp_slideshow.png";s:11:"description";s:358:"The slideshow feature allows you to insert a slideshow into any property page, home page, or virtually anywhere in your blog. <br /> <br />We made it extremely simple - the slideshow page searches through the Media Library looking for images that are big enough for the slideshow - dimensions to which you would specify in the main WP-Property control panel.";}s:18:"class_wpp_supermap";a:4:{s:5:"title";s:9:"Super Map";s:7:"tagline";s:49:"Interactive map showcasing all of your properties";s:5:"image";s:70:"https://usabilitydynamics.com/live/wp-content/uploads/wpp_supermap.png";s:11:"description";s:211:"Super Map plugin lets you put a large interactive map virtually anywhere in your WordPress setup.  The map lets your visitors quickly view the location of all your properties, and filter them down by attributes.";}}}', 'yes'),
(158, '_site_transient_timeout_wporg_theme_feature_list', '1347684649', 'yes'),
(159, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(160, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1347673848;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(161, 'current_theme', 'Imobiliária Conceito', 'yes'),
(162, 'theme_mods_imbconceito', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(165, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(168, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:8:"nav_menu";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(169, 'sImg1', 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg', 'yes'),
(170, 'sImg2', 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/birkley.jpg', 'yes'),
(171, 'sImg3', 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/aberdeen.jpg', 'yes'),
(172, 'sImg4', '', 'yes'),
(173, 'sImg5', '', 'yes'),
(174, 'sImg6', '', 'yes'),
(175, 'sImg7', '', 'yes'),
(176, 'sImg8', '', 'yes'),
(177, 'sImg9', '', 'yes'),
(178, 'sImg10', '', 'yes'),
(179, 'sImglink1', 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg', 'yes'),
(180, 'sImglink2', 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/birkley.jpg', 'yes'),
(181, 'sImglink3', 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/aberdeen.jpg', 'yes'),
(182, 'sImglink4', '', 'yes'),
(183, 'sImglink5', '', 'yes'),
(184, 'sImglink6', '', 'yes'),
(185, 'sImglink7', '', 'yes'),
(186, 'sImglink8', '', 'yes'),
(187, 'sImglink9', '', 'yes'),
(188, 'sImglink10', '', 'yes'),
(189, 'sPagination', 'yes', 'yes'),
(190, 'activation', 'enable', 'yes'),
(191, 'width', '480', 'yes'),
(192, 'height', '185', 'yes'),
(193, 'shadow', '', 'yes'),
(194, 'interval', '4000', 'yes'),
(195, 'transition', 'swipe', 'yes'),
(196, 'bgcolour', 'fff', 'yes'),
(197, 'transpeed', '1200', 'yes'),
(198, 'bwidth', '3', 'yes'),
(199, 'bcolour', 'ccc', 'yes'),
(200, 'preload', 'indicator', 'yes'),
(201, 'start', '1', 'yes'),
(202, 'buttons', 'on', 'yes'),
(203, 'source', 'custom', 'yes'),
(204, 'featcat', '1', 'yes'),
(205, 'featpost', '5', 'yes'),
(206, 'padbottom', '0', 'yes'),
(207, 'padleft', '0', 'yes'),
(208, 'padright', '0', 'yes'),
(209, 'paddingtop', '0', 'yes'),
(210, 'shadowstyle', 'arc', 'yes'),
(211, 'paginationon', '', 'yes'),
(212, 'paginationoff', '', 'yes'),
(213, 'next', '', 'yes'),
(214, 'prev', '', 'yes'),
(215, 'pageposition', 'outside', 'yes'),
(216, 'pageside', 'left', 'yes'),
(217, 'permalink', '', 'yes'),
(218, 'jquery', 'true', 'yes'),
(221, 'smooth_slider_options', 'a:49:{s:8:"autostep";s:1:"1";s:2:"fx";s:10:"scrollHorz";s:5:"speed";s:1:"5";s:10:"transition";s:1:"5";s:8:"no_posts";s:1:"5";s:8:"bg_color";s:7:"#ececec";s:2:"bg";s:1:"1";s:6:"height";s:3:"215";s:5:"width";s:3:"925";s:6:"border";s:1:"0";s:7:"brcolor";s:7:"#999999";s:9:"prev_next";s:1:"1";s:10:"goto_slide";s:1:"0";s:8:"navimg_w";s:3:"350";s:9:"navimg_ht";s:3:"210";s:10:"custom_nav";s:0:"";s:7:"support";s:1:"0";s:14:"allowable_tags";s:0:"";s:4:"more";s:9:"Read More";s:10:"user_level";s:17:"edit_others_posts";s:8:"noscript";s:210:"This page is having a slideshow that uses Javascript. Your browser either doesn''t support Javascript or you have it turned off. To see this page as it is meant to appear please use a Javascript enabled browser.";s:9:"shortcode";s:1:"1";s:10:"stylesheet";s:7:"default";s:3:"css";s:0:"";s:10:"title_text";s:0:"";s:10:"title_from";s:1:"0";s:10:"title_font";s:26:"Arial,Helvetica,sans-serif";s:12:"title_fcolor";s:7:"#000000";s:11:"title_fsize";s:2:"20";s:12:"title_fstyle";s:4:"bold";s:11:"ptitle_font";s:5:"Cabin";s:13:"ptitle_fcolor";s:7:"#4d4d4d";s:12:"ptitle_fsize";s:2:"24";s:13:"ptitle_fstyle";s:4:"bold";s:8:"img_pick";a:6:{i:0;s:1:"1";i:1;s:16:"slider_thumbnail";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";}s:9:"img_align";s:4:"left";s:4:"crop";s:1:"0";s:8:"img_size";s:1:"1";s:9:"img_width";s:3:"320";s:10:"img_height";s:3:"180";s:10:"img_border";s:1:"0";s:11:"img_brcolor";s:7:"#000000";s:12:"content_font";s:5:"Cabin";s:14:"content_fcolor";s:7:"#4d4d4d";s:13:"content_fsize";s:2:"14";s:14:"content_fstyle";s:6:"normal";s:12:"content_from";s:7:"content";s:13:"content_limit";s:2:"20";s:13:"content_chars";s:3:"500";}', 'yes'),
(222, 'category_children', 'a:0:{}', 'yes'),
(299, 'wpp_log', 'a:4:{i:0;a:5:{s:4:"time";i:1348875277;s:7:"message";s:169:"API Check Error: Não foi possível conectar a http://updates.usabilitydynamics.com/key_generator.php?system=wpp&site=localhost%2Fwww%2Fimbconceito&system_version=1.36.0";s:4:"user";i:0;s:4:"type";s:7:"default";s:6:"object";b:0;}i:1;a:5:{s:4:"time";i:1348875277;s:7:"message";s:166:"Feature Update Error: Não foi possível conectar a http://updates.usabilitydynamics.com/?system=wpp&site=localhost%2Fwww%2Fimbconceito&system_version=1.36.0&api_key=";s:4:"user";i:0;s:4:"type";s:7:"default";s:6:"object";b:0;}i:2;a:5:{s:4:"time";i:1348883015;s:7:"message";s:169:"API Check Error: Não foi possível conectar a http://updates.usabilitydynamics.com/key_generator.php?system=wpp&site=localhost%2Fwww%2Fimbconceito&system_version=1.36.0";s:4:"user";i:0;s:4:"type";s:7:"default";s:6:"object";b:0;}i:3;a:5:{s:4:"time";i:1348883015;s:7:"message";s:166:"Feature Update Error: Não foi possível conectar a http://updates.usabilitydynamics.com/?system=wpp&site=localhost%2Fwww%2Fimbconceito&system_version=1.36.0&api_key=";s:4:"user";i:0;s:4:"type";s:7:"default";s:6:"object";b:0;}}', 'yes'),
(300, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1348918961', 'no'),
(301, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erro de RSS</strong>: WP HTTP Error: Não foi possível conectar a http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/www/imbconceito/</p>', 'no'),
(302, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1348918961', 'no'),
(303, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não foi possível conectar a http://wordpress.org/news/feed/</p></div>', 'no'),
(304, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1348918962', 'no'),
(305, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Não foi possível conectar a http://planet.wordpress.org/feed/</p></div>', 'no'),
(306, '_transient_timeout_plugin_slugs', '1348962163', 'no'),
(307, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:30:"easing-slider/easingslider.php";i:2;s:9:"hello.php";i:3;s:31:"smooth-slider/smooth-slider.php";i:4;s:27:"wp-property/wp-property.php";}', 'no'),
(308, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1348918963', 'no'),
(309, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(310, 'widget_featuredpropertieswidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(311, 'widget_searchpropertieswidget', 'a:2:{i:2;a:5:{s:5:"title";s:0:"";s:25:"searchable_property_types";a:2:{i:0;s:9:"floorplan";i:1;s:18:"single_family_home";}s:21:"searchable_attributes";a:6:{i:0;s:13:"property_type";i:1;s:5:"price";i:2;s:8:"bedrooms";i:3;s:9:"bathrooms";i:4;s:7:"deposit";i:5;s:4:"area";}s:29:"grouped_searchable_attributes";a:6:{i:0;s:13:"property_type";i:1;s:5:"price";i:2;s:8:"bedrooms";i:3;s:9:"bathrooms";i:4;s:7:"deposit";i:5;s:4:"area";}s:8:"per_page";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(324, '_site_transient_timeout_theme_roots', '1349402206', 'yes'),
(325, '_site_transient_theme_roots', 'a:3:{s:11:"imbconceito";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=303 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1348102851:1'),
(4, 4, '_wp_page_template', 'default'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1347675859:1'),
(7, 6, '_wp_page_template', 'default'),
(8, 8, '_menu_item_type', 'post_type'),
(9, 8, '_menu_item_menu_item_parent', '0'),
(10, 8, '_menu_item_object_id', '6'),
(11, 8, '_menu_item_object', 'page'),
(12, 8, '_menu_item_target', ''),
(13, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(14, 8, '_menu_item_xfn', ''),
(15, 8, '_menu_item_url', ''),
(17, 9, '_menu_item_type', 'post_type'),
(18, 9, '_menu_item_menu_item_parent', '0'),
(19, 9, '_menu_item_object_id', '4'),
(20, 9, '_menu_item_object', 'page'),
(21, 9, '_menu_item_target', ''),
(22, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 9, '_menu_item_xfn', ''),
(24, 9, '_menu_item_url', ''),
(26, 10, '_menu_item_type', 'custom'),
(27, 10, '_menu_item_menu_item_parent', '0'),
(28, 10, '_menu_item_object_id', '10'),
(29, 10, '_menu_item_object', 'custom'),
(30, 10, '_menu_item_target', ''),
(31, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 10, '_menu_item_xfn', ''),
(33, 10, '_menu_item_url', 'http://localhost/www/imbconceito/'),
(35, 11, '_wp_attached_file', '2012/09/aberdeen.jpg'),
(36, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"220";s:6:"height";s:3:"140";s:14:"hwstring_small";s:23:"height=''81'' width=''128''";s:4:"file";s:20:"2012/09/aberdeen.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:27:"Dustin Hoffert 403/803-5663";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1333092304";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:16:"0.16666666666667";s:5:"title";s:1172:"[#Beginning of Shooting Data Section]\nNikon D700\n2012/03/30 07:25:04.42\nTime Zone and Date: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm f/2.8G\nArtist:                                     \nCopyright: 2012 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1/6s\nAperture: f/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3450K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nDevice: SB-900\nFlash Mode: i-TTL, 0EV\nMap Datum:\nImage Authentication: OFF\nDust Removal: 2012/03/26 06:45:01\n[#End of Shooting Data Section]";}}'),
(37, 12, '_wp_attached_file', '2012/09/birkley.jpg'),
(38, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"220";s:6:"height";s:3:"140";s:14:"hwstring_small";s:23:"height=''81'' width=''128''";s:4:"file";s:19:"2012/09/birkley.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:27:"Dustin Hoffert 403/803-5663";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1332760283";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:16:"0.33333333333333";s:5:"title";s:1172:"[#Beginning of Shooting Data Section]\nNikon D700\n2012/03/26 11:11:23.08\nTime Zone and Date: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm f/2.8G\nArtist:                                     \nCopyright: 2012 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1/3s\nAperture: f/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3330K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nDevice: SB-900\nFlash Mode: i-TTL, 0EV\nMap Datum:\nImage Authentication: OFF\nDust Removal: 2012/03/26 06:45:01\n[#End of Shooting Data Section]";}}'),
(39, 13, '_wp_attached_file', '2012/09/windsor.jpg'),
(40, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"220";s:6:"height";s:3:"140";s:14:"hwstring_small";s:23:"height=''81'' width=''128''";s:4:"file";s:19:"2012/09/windsor.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:27:"Dustin Hoffert 403/803-5663";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1333012528";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"16";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:4:"0.25";s:5:"title";s:1172:"[#Beginning of Shooting Data Section]\nNikon D700\n2012/03/29 09:15:28.00\nTime Zone and Date: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm f/2.8G\nArtist:                                     \nCopyright: 2012 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 16mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1/4s\nAperture: f/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3570K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nDevice: SB-900\nFlash Mode: i-TTL, 0EV\nMap Datum:\nImage Authentication: OFF\nDust Removal: 2012/03/26 06:45:01\n[#End of Shooting Data Section]";}}'),
(41, 1, '_edit_lock', '1347683343:1'),
(42, 1, '_edit_last', '1'),
(47, 18, '_edit_last', '1'),
(48, 18, '_edit_lock', '1347689974:1'),
(51, 18, '_smooth_slider_style', 'default'),
(52, 4, '_smooth_slider_style', 'default'),
(53, 21, '_edit_last', '1'),
(54, 21, '_edit_lock', '1347689917:1'),
(57, 21, '_smooth_slider_style', 'default'),
(66, 32, 'wpp_gpid', 'gpid_1014349797'),
(67, 32, '_edit_last', '1'),
(68, 32, '_edit_lock', '1348884391:1'),
(69, 32, '_smooth_slider_style', 'default'),
(87, 32, 'address_is_formatted', ''),
(191, 2, '_edit_lock', '1348879039:1'),
(192, 43, '_edit_last', '1'),
(193, 43, '_edit_lock', '1348884158:1'),
(194, 43, '_wp_page_template', 'home-page.php'),
(195, 43, '_smooth_slider_style', 'default'),
(196, 47, 'wpp_gpid', 'gpid_1225615447'),
(197, 47, '_edit_last', '1'),
(198, 47, '_edit_lock', '1348883670:1'),
(199, 47, '_smooth_slider_style', 'default'),
(217, 47, 'address_is_formatted', ''),
(218, 47, 'featured', 'false'),
(219, 47, 'property_type', 'single_family_home'),
(220, 47, 'location', 'Águas Claras'),
(221, 47, 'manual_coordinates', 'false'),
(222, 47, 'latitude', '0'),
(223, 47, 'longitude', '0'),
(224, 47, 'price', '10000'),
(225, 47, 'price_per', 'month'),
(226, 47, 'bedrooms', '3'),
(227, 47, 'bathrooms', '2'),
(228, 47, 'deposit', ''),
(229, 47, 'area', '60m'),
(230, 47, 'phone_number', ''),
(231, 47, 'lease_terms', ''),
(232, 47, 'pet_policy', ''),
(233, 47, 'school', ''),
(234, 47, 'tagline', ''),
(235, 58, 'wpp_gpid', 'gpid_1351940543'),
(236, 59, '_wp_attached_file', '2012/09/Bonus.jpg'),
(237, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:17:"2012/09/Bonus.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:14:"Dustin Hoffert";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:1159:"[#Beginning of Shooting Data Section]\nNikon D700\n02/12/2011 10:03:38.08\nWorld Time: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm F/2.8G\nArtist:                                     \nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1.5s\nAperture: F/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3700K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode:  \nFlash Exposure Comp.:  \nFlash Sync Mode:  \nColored Gel Filter:\nMap Datum:\nImage Authentication: OFF\nDust Removal: 28/11/2011 13:13:38\nImage Comment:                                     \n[#End of Shooting Data Section]";s:17:"created_timestamp";s:10:"1322820218";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:3:"1.5";s:5:"title";s:0:"";}}'),
(238, 60, '_wp_attached_file', '2012/09/Ensuite.jpg'),
(239, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:19:"2012/09/Ensuite.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:14:"Dustin Hoffert";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:1200:"[#Beginning of Shooting Data Section]\nNikon D700\n02/12/2011 10:44:41.33\nWorld Time: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm F/2.8G\nArtist:                                     \nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1/1.5s\nAperture: F/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3570K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nColored Gel Filter:\nMap Datum:\nImage Authentication: OFF\nDust Removal: 28/11/2011 13:13:38\nImage Comment:                                     \n[#End of Shooting Data Section]";s:17:"created_timestamp";s:10:"1322822681";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:3:"0.7";s:5:"title";s:0:"";}}'),
(240, 61, '_wp_attached_file', '2012/09/Exterior.jpg'),
(241, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:20:"2012/09/Exterior.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"16";s:6:"credit";s:27:"Dustin Hoffert 403/803-5663";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1322816266";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"20";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:1:"2";s:5:"title";s:0:"";}}'),
(242, 62, '_wp_attached_file', '2012/09/Kitchen.jpg'),
(243, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:19:"2012/09/Kitchen.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:14:"Dustin Hoffert";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:1196:"[#Beginning of Shooting Data Section]\nNikon D700\n02/12/2011 12:19:31.50\nWorld Time: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm F/2.8G\nArtist:                                     \nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1s\nAperture: F/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3330K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nColored Gel Filter:\nMap Datum:\nImage Authentication: OFF\nDust Removal: 28/11/2011 13:13:38\nImage Comment:                                     \n[#End of Shooting Data Section]";s:17:"created_timestamp";s:10:"1322828371";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:1:"1";s:5:"title";s:0:"";}}'),
(244, 63, '_wp_attached_file', '2012/09/Kitchen_Dining.jpg'),
(245, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:26:"2012/09/Kitchen_Dining.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:14:"Dustin Hoffert";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:1166:"[#Beginning of Shooting Data Section]\nNikon D700\n02/12/2011 13:12:08.75\nWorld Time: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm F/2.8G\nArtist:                                     \nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1/4s\nAperture: F/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3450K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: OFF\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: 0\nBrightness: 0\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nColored Gel Filter:\nMap Datum:\nImage Authentication: OFF\nDust Removal: 28/11/2011 13:13:38\nImage Comment:                                     \n[#End of Shooting Data Section]";s:17:"created_timestamp";s:10:"1322831528";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:4:"0.25";s:5:"title";s:0:"";}}'),
(246, 64, '_wp_attached_file', '2012/09/Living_1.jpg'),
(247, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:20:"2012/09/Living_1.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:14:"Dustin Hoffert";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:1198:"[#Beginning of Shooting Data Section]\nNikon D700\n02/12/2011 11:56:14.33\nWorld Time: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm F/2.8G\nArtist:                                     \nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1/2s\nAperture: F/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3330K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nColored Gel Filter:\nMap Datum:\nImage Authentication: OFF\nDust Removal: 28/11/2011 13:13:38\nImage Comment:                                     \n[#End of Shooting Data Section]";s:17:"created_timestamp";s:10:"1322826974";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:3:"0.5";s:5:"title";s:0:"";}}'),
(248, 65, '_wp_attached_file', '2012/09/Living_2.jpg'),
(249, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:20:"2012/09/Living_2.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:14:"Dustin Hoffert";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:1198:"[#Beginning of Shooting Data Section]\nNikon D700\n02/12/2011 12:46:14.92\nWorld Time: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm F/2.8G\nArtist:                                     \nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1/6s\nAperture: F/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3570K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode: Optional, TTL\nFlash Exposure Comp.: 0EV\nFlash Sync Mode: Front Curtain\nBounce Flash\nColored Gel Filter:\nMap Datum:\nImage Authentication: OFF\nDust Removal: 28/11/2011 13:13:38\nImage Comment:                                     \n[#End of Shooting Data Section]";s:17:"created_timestamp";s:10:"1322829974";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:16:"0.16666666666667";s:5:"title";s:0:"";}}'),
(250, 66, '_wp_attached_file', '2012/09/Master_Bedroom.jpg'),
(251, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"447";s:6:"height";s:3:"293";s:14:"hwstring_small";s:23:"height=''83'' width=''128''";s:4:"file";s:26:"2012/09/Master_Bedroom.jpg";s:10:"image_meta";a:10:{s:8:"aperture";s:2:"13";s:6:"credit";s:14:"Dustin Hoffert";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:1159:"[#Beginning of Shooting Data Section]\nNikon D700\n02/12/2011 10:27:11.58\nWorld Time: UTC-7, DST:ON\nRAW (14-bit)\nImage Size: L (4256 x 2832), FX\nLens: 14-24mm F/2.8G\nArtist:                                     \nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \nFocal Length: 14mm\nExposure Mode: Manual\nMetering: Matrix\nShutter Speed: 1.5s\nAperture: F/13\nExposure Comp.: 0EV\nExposure Tuning:\nISO Sensitivity: ISO 200\nOptimize Image:\nWhite Balance: Color Temp. (3230K), 0, 0\nFocus Mode: Manual\nAF-Area Mode: Single\nAF Fine Tune: OFF\nVR:\nLong Exposure NR: OFF\nHigh ISO NR: OFF\nColor Mode:\nColor Space: Adobe RGB\nTone Comp.:\nHue Adjustment:\nSaturation:\nSharpening:\nActive D-Lighting: Low\nVignette Control: OFF\nAuto Distortion Control:\nPicture Control: [NL] NEUTRAL\nBase: [NL] NEUTRAL\nQuick Adjust: -\nSharpening: 6\nContrast: Active D-Lighting\nBrightness: Active D-Lighting\nSaturation: 0\nHue: -3\nFilter Effects:\nToning:\nFlash Mode:  \nFlash Exposure Comp.:  \nFlash Sync Mode:  \nColored Gel Filter:\nMap Datum:\nImage Authentication: OFF\nDust Removal: 28/11/2011 13:13:38\nImage Comment:                                     \n[#End of Shooting Data Section]";s:17:"created_timestamp";s:10:"1322821631";s:9:"copyright";s:46:"DCPiX Photography/ Dustin Hoffert 403/803-5663";s:12:"focal_length";s:2:"14";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:3:"1.5";s:5:"title";s:0:"";}}'),
(286, 32, 'featured', 'false'),
(287, 32, 'property_type', 'single_family_home'),
(288, 32, 'location', 'Qnl 12 Bloco G &ndash; Taguatinga, Brasília &ndash; DF, 72156&ndash;217, República Federativa do Brasil'),
(289, 32, 'manual_coordinates', 'false'),
(290, 32, 'latitude', '-15.8182131'),
(291, 32, 'longitude', '-48.0807009'),
(292, 32, 'price', '150000'),
(293, 32, 'price_per', 'month'),
(294, 32, 'bedrooms', '4'),
(295, 32, 'bathrooms', '2'),
(296, 32, 'deposit', ''),
(297, 32, 'area', '300m'),
(298, 32, 'phone_number', '61 2020&ndash;2020'),
(299, 32, 'lease_terms', ''),
(300, 32, 'pet_policy', ''),
(301, 32, 'school', ''),
(302, 32, 'tagline', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-09-15 01:41:46', '2012-09-15 01:41:46', '[easingslider]\r\n\r\n&nbsp;\r\n\r\nBem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2012-09-15 04:30:21', '2012-09-15 04:30:21', '', 0, 'http://localhost/www/imbconceito/?p=1', 0, 'post', '', 1),
(2, 1, '2012-09-15 01:41:46', '2012-09-15 01:41:46', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página ''Sobre'' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins-de-semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href="http://localhost/www/imbconceito/wp-admin/">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de Exemplo', '', 'publish', 'open', 'open', '', 'pagina-exemplo', '', '', '2012-09-15 01:41:46', '2012-09-15 01:41:46', '', 0, 'http://localhost/www/imbconceito/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-09-15 02:25:51', '2012-09-15 02:25:51', '"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Sobre a Imobiliária', '', 'publish', 'open', 'open', '', 'sobre-a-imobiliaria', '', '', '2012-09-20 01:02:41', '2012-09-20 01:02:41', '', 0, 'http://localhost/www/imbconceito/?page_id=4', 0, 'page', '', 0),
(5, 1, '2012-09-15 02:25:16', '2012-09-15 02:25:16', '', 'Sobre a Imobiliária', '', 'inherit', 'open', 'open', '', '4-revision', '', '', '2012-09-15 02:25:16', '2012-09-15 02:25:16', '', 4, 'http://localhost/www/imbconceito/?p=5', 0, 'revision', '', 0),
(6, 1, '2012-09-15 02:26:07', '2012-09-15 02:26:07', '"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Contato', '', 'publish', 'open', 'open', '', 'contato', '', '', '2012-09-15 02:26:07', '2012-09-15 02:26:07', '', 0, 'http://localhost/www/imbconceito/?page_id=6', 0, 'page', '', 0),
(7, 1, '2012-09-15 02:26:02', '2012-09-15 02:26:02', '', 'Contato', '', 'inherit', 'open', 'open', '', '6-revision', '', '', '2012-09-15 02:26:02', '2012-09-15 02:26:02', '', 6, 'http://localhost/www/imbconceito/?p=7', 0, 'revision', '', 0),
(8, 1, '2012-09-15 02:26:32', '2012-09-15 02:26:32', ' ', '', '', 'publish', 'open', 'open', '', '8', '', '', '2012-09-15 02:27:53', '2012-09-15 02:27:53', '', 0, 'http://localhost/www/imbconceito/?p=8', 3, 'nav_menu_item', '', 0),
(9, 1, '2012-09-15 02:26:32', '2012-09-15 02:26:32', ' ', '', '', 'publish', 'open', 'open', '', '9', '', '', '2012-09-15 02:27:53', '2012-09-15 02:27:53', '', 0, 'http://localhost/www/imbconceito/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2012-09-15 02:27:44', '2012-09-15 02:27:44', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2012-09-15 02:27:53', '2012-09-15 02:27:53', '', 0, 'http://localhost/www/imbconceito/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2012-09-15 04:25:52', '2012-09-15 04:25:52', '', 'Slide 3', '', 'inherit', 'open', 'open', '', 'beginning-of-shooting-data-sectionnikon-d70020120330-072504-42time-zone-and-date-utc-7-dstonraw-14-bitimage-size-l-4256-x-2832-fxlens-14-24mm-f2-8gartist', '', '', '2012-09-15 04:25:52', '2012-09-15 04:25:52', '', 18, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/aberdeen.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2012-09-15 04:25:54', '2012-09-15 04:25:54', '', 'Slide 2', '', 'inherit', 'open', 'open', '', 'beginning-of-shooting-data-sectionnikon-d70020120326-111123-08time-zone-and-date-utc-7-dstonraw-14-bitimage-size-l-4256-x-2832-fxlens-14-24mm-f2-8gartist', '', '', '2012-09-15 04:25:54', '2012-09-15 04:25:54', '', 0, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/birkley.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2012-09-15 04:25:55', '2012-09-15 04:25:55', '', 'Slide 1', '', 'inherit', 'open', 'open', '', 'beginning-of-shooting-data-sectionnikon-d70020120329-091528-00time-zone-and-date-utc-7-dstonraw-14-bitimage-size-l-4256-x-2832-fxlens-14-24mm-f2-8gartist', '', '', '2012-09-15 04:25:55', '2012-09-15 04:25:55', '', 21, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2012-09-15 01:41:46', '2012-09-15 01:41:46', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2012-09-15 01:41:46', '2012-09-15 01:41:46', '', 1, 'http://localhost/www/imbconceito/?p=15', 0, 'revision', '', 0),
(16, 1, '2012-09-15 04:29:44', '2012-09-15 04:29:44', '[easyslider]\r\n\r\n&nbsp;\r\n\r\nBem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a publicar!', 'Olá, mundo!', '', 'inherit', 'open', 'open', '', '1-revision-2', '', '', '2012-09-15 04:29:44', '2012-09-15 04:29:44', '', 1, 'http://localhost/www/imbconceito/?p=16', 0, 'revision', '', 0),
(18, 1, '2012-09-15 05:00:27', '2012-09-15 05:00:27', '<a href="http://localhost/www/imbconceito/wp-content/uploads/2012/09/aberdeen.jpg"><img class="alignnone size-full wp-image-11" title="Slide 3" src="http://localhost/www/imbconceito/wp-content/uploads/2012/09/aberdeen.jpg" alt="" width="220" height="140" /></a>\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'The standard Lorem Ipsum passage, used since the 1500s', '', 'publish', 'open', 'open', '', 'slider', '', '', '2012-09-15 06:09:05', '2012-09-15 06:09:05', '', 0, 'http://localhost/www/imbconceito/?p=18', 0, 'post', '', 0),
(19, 1, '2012-09-15 05:00:16', '2012-09-15 05:00:16', '', 'Slider', '', 'inherit', 'open', 'open', '', '18-revision', '', '', '2012-09-15 05:00:16', '2012-09-15 05:00:16', '', 18, 'http://localhost/www/imbconceito/?p=19', 0, 'revision', '', 0),
(20, 1, '2012-09-15 02:25:51', '2012-09-15 02:25:51', '"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Sobre a Imobiliária', '', 'inherit', 'open', 'open', '', '4-revision-2', '', '', '2012-09-15 02:25:51', '2012-09-15 02:25:51', '', 4, 'http://localhost/www/imbconceito/?p=20', 0, 'revision', '', 0),
(21, 1, '2012-09-15 05:03:19', '2012-09-15 05:03:19', '<a href="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg"><img class="alignnone size-full wp-image-13" title="Slide 1" src="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg" alt="" width="220" height="140" /></a>\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', '1914 translation by H. Rackham', '', 'publish', 'open', 'open', '', 'slider-2', '', '', '2012-09-15 05:54:14', '2012-09-15 05:54:14', '', 0, 'http://localhost/www/imbconceito/?p=21', 0, 'post', '', 0),
(22, 1, '2012-09-15 05:02:50', '2012-09-15 05:02:50', '', 'slider 2', '', 'inherit', 'open', 'open', '', '21-revision', '', '', '2012-09-15 05:02:50', '2012-09-15 05:02:50', '', 21, 'http://localhost/www/imbconceito/?p=22', 0, 'revision', '', 0),
(23, 1, '2012-09-15 05:03:19', '2012-09-15 05:03:19', '<a href="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg"><img class="alignnone size-full wp-image-13" title="Slide 1" src="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg" alt="" width="220" height="140" /></a>', 'slider 2', '', 'inherit', 'open', 'open', '', '21-revision-2', '', '', '2012-09-15 05:03:19', '2012-09-15 05:03:19', '', 21, 'http://localhost/www/imbconceito/?p=23', 0, 'revision', '', 0),
(24, 1, '2012-09-15 05:55:16', '2012-09-15 05:55:16', '<a href="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg"><img class="alignnone size-full wp-image-13" title="Slide 1" src="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg" alt="" width="220" height="140" /></a>\n\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\n\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', '1914 translation by H. Rackham', '', 'inherit', 'open', 'open', '', '21-autosave', '', '', '2012-09-15 05:55:16', '2012-09-15 05:55:16', '', 21, 'http://localhost/www/imbconceito/?p=24', 0, 'revision', '', 0),
(25, 1, '2012-09-15 05:00:27', '2012-09-15 05:00:27', 'asdfas dfasdf asdf asdfasdf', 'Slider', '', 'inherit', 'open', 'open', '', '18-revision-2', '', '', '2012-09-15 05:00:27', '2012-09-15 05:00:27', '', 18, 'http://localhost/www/imbconceito/?p=25', 0, 'revision', '', 0),
(26, 1, '2012-09-15 05:03:38', '2012-09-15 05:03:38', '<a href="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg"><img class="alignnone size-full wp-image-13" title="Slide 1" src="http://localhost/www/imbconceito/wp-content/uploads/2012/09/windsor.jpg" alt="" width="220" height="140" /></a>', 'slider 2', '', 'inherit', 'open', 'open', '', '21-revision-3', '', '', '2012-09-15 05:03:38', '2012-09-15 05:03:38', '', 21, 'http://localhost/www/imbconceito/?p=26', 0, 'revision', '', 0),
(28, 1, '2012-09-15 05:53:02', '2012-09-15 05:53:02', '"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'The standard Lorem Ipsum passage, used since the 1500s', '', 'inherit', 'open', 'open', '', '18-revision-3', '', '', '2012-09-15 05:53:02', '2012-09-15 05:53:02', '', 18, 'http://localhost/www/imbconceito/?p=28', 0, 'revision', '', 0),
(29, 1, '2012-09-15 06:10:08', '2012-09-15 06:10:08', '<a href="http://localhost/www/imbconceito/wp-content/uploads/2012/09/aberdeen.jpg"><img class="alignnone size-full wp-image-11" title="Slide 3" src="http://localhost/www/imbconceito/wp-content/uploads/2012/09/aberdeen.jpg" alt="" width="220" height="140" /></a>\n\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'The standard Lorem Ipsum passage, used since the 1500s', '', 'inherit', 'open', 'open', '', '18-autosave', '', '', '2012-09-15 06:10:08', '2012-09-15 06:10:08', '', 18, 'http://localhost/www/imbconceito/?p=29', 0, 'revision', '', 0),
(30, 1, '2012-09-15 05:02:18', '2012-09-15 05:02:18', '[smoothslider id=''1'']\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."\r\n\r\n"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Sobre a Imobiliária', '', 'inherit', 'open', 'open', '', '4-revision-3', '', '', '2012-09-15 05:02:18', '2012-09-15 05:02:18', '', 4, 'http://localhost/www/imbconceito/?p=30', 0, 'revision', '', 0),
(32, 1, '2012-09-20 02:24:23', '2012-09-20 02:24:23', '[gallery link="file" columns="4" orderby="title"]\r\n\r\n"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'Casa QNL 12', '', 'publish', 'closed', 'closed', '', 'casa-qnl-12', '', '', '2012-09-29 02:08:14', '2012-09-29 02:08:14', '', 0, 'http://localhost/www/imbconceito/?post_type=property&#038;p=32', 0, 'property', '', 0),
(33, 1, '2012-09-29 00:17:07', '2012-09-29 00:17:07', '[gallery link="file" columns="4"]\n\n"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', 'Casa QNL 12', '', 'inherit', 'open', 'open', '', '32-autosave', '', '', '2012-09-29 00:17:07', '2012-09-29 00:17:07', '', 32, 'http://localhost/www/imbconceito/?p=33', 0, 'revision', '', 0),
(42, 1, '2012-09-28 23:42:39', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-09-28 23:42:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/www/imbconceito/?p=42', 0, 'post', '', 0),
(43, 1, '2012-09-29 00:40:56', '2012-09-29 00:40:56', '[property_overview type=single_family_home]', 'Oportunidades em Destaque', '', 'publish', 'open', 'open', '', 'imoveis-destaque', '', '', '2012-09-29 01:28:08', '2012-09-29 01:28:08', '', 0, 'http://localhost/www/imbconceito/?page_id=43', 0, 'page', '', 0),
(44, 1, '2012-09-29 00:39:28', '2012-09-29 00:39:28', '', 'Imóveis Destaque', '', 'inherit', 'open', 'open', '', '43-revision', '', '', '2012-09-29 00:39:28', '2012-09-29 00:39:28', '', 43, 'http://localhost/www/imbconceito/?p=44', 0, 'revision', '', 0),
(45, 1, '2012-09-29 01:16:57', '2012-09-29 01:16:57', '[property_search]\n<h2>Oportunidades em Destaque</h2>\n[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-autosave', '', '', '2012-09-29 01:16:57', '2012-09-29 01:16:57', '', 43, 'http://localhost/www/imbconceito/?p=45', 0, 'revision', '', 0),
(46, 1, '2012-09-29 00:40:56', '2012-09-29 00:40:56', '[property_overview]', 'Imóveis Destaque', '', 'inherit', 'open', 'open', '', '43-revision-2', '', '', '2012-09-29 00:40:56', '2012-09-29 00:40:56', '', 43, 'http://localhost/www/imbconceito/?p=46', 0, 'revision', '', 0),
(47, 1, '2012-09-29 00:46:39', '2012-09-29 00:46:39', '“Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?”', 'Apartamento - Águas Claras - Norte', '', 'publish', 'closed', 'closed', '', 'apartamento-aguas-claras-norte', '', '', '2012-09-29 00:47:08', '2012-09-29 00:47:08', '', 0, 'http://localhost/www/imbconceito/?post_type=property&#038;p=47', 0, 'property', '', 0),
(48, 1, '2012-09-29 00:48:12', '2012-09-29 00:48:12', '“Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?”', 'Apartamento - Águas Claras - Norte', '', 'inherit', 'open', 'open', '', '47-autosave', '', '', '2012-09-29 00:48:12', '2012-09-29 00:48:12', '', 47, 'http://localhost/www/imbconceito/?p=48', 0, 'revision', '', 0),
(49, 1, '2012-09-29 00:44:03', '2012-09-29 00:44:03', '[property_overview type=single_family_home]', 'Imóveis Destaque', '', 'inherit', 'open', 'open', '', '43-revision-3', '', '', '2012-09-29 00:44:03', '2012-09-29 00:44:03', '', 43, 'http://localhost/www/imbconceito/?p=49', 0, 'revision', '', 0),
(50, 1, '2012-09-29 00:51:48', '2012-09-29 00:51:48', '[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-4', '', '', '2012-09-29 00:51:48', '2012-09-29 00:51:48', '', 43, 'http://localhost/www/imbconceito/?p=50', 0, 'revision', '', 0),
(51, 1, '2012-09-29 01:05:07', '2012-09-29 01:05:07', '[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-5', '', '', '2012-09-29 01:05:07', '2012-09-29 01:05:07', '', 43, 'http://localhost/www/imbconceito/?p=51', 0, 'revision', '', 0),
(52, 1, '2012-09-29 01:08:55', '2012-09-29 01:08:55', '[property_search]\r\n\r\n[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-6', '', '', '2012-09-29 01:08:55', '2012-09-29 01:08:55', '', 43, 'http://localhost/www/imbconceito/?p=52', 0, 'revision', '', 0),
(53, 1, '2012-09-29 01:15:55', '2012-09-29 01:15:55', '[property_search]\r\n<h2>Oportunidades em Destaque</h2>\r\n[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-7', '', '', '2012-09-29 01:15:55', '2012-09-29 01:15:55', '', 43, 'http://localhost/www/imbconceito/?p=53', 0, 'revision', '', 0),
(54, 1, '2012-09-29 01:17:08', '2012-09-29 01:17:08', '[property_search]\r\n<span class="canto"></span>\r\n<h2>Oportunidades em Destaque</h2>\r\n[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-8', '', '', '2012-09-29 01:17:08', '2012-09-29 01:17:08', '', 43, 'http://localhost/www/imbconceito/?p=54', 0, 'revision', '', 0),
(55, 1, '2012-09-29 01:18:10', '2012-09-29 01:18:10', '[property_search]\r\n<span class="canto"></span>\r\n<h2>Oportunidades em Destaque</h2>\r\n[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-9', '', '', '2012-09-29 01:18:10', '2012-09-29 01:18:10', '', 43, 'http://localhost/www/imbconceito/?p=55', 0, 'revision', '', 0),
(56, 1, '2012-09-29 01:23:20', '2012-09-29 01:23:20', '[property_search]\r\n<h2>Oportunidades em Destaque</h2>\r\n[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-10', '', '', '2012-09-29 01:23:20', '2012-09-29 01:23:20', '', 43, 'http://localhost/www/imbconceito/?p=56', 0, 'revision', '', 0),
(57, 1, '2012-09-29 01:25:59', '2012-09-29 01:25:59', '[property_overview type=single_family_home]', 'Página Inicial', '', 'inherit', 'open', 'open', '', '43-revision-11', '', '', '2012-09-29 01:25:59', '2012-09-29 01:25:59', '', 43, 'http://localhost/www/imbconceito/?p=57', 0, 'revision', '', 0),
(58, 1, '2012-09-29 01:59:17', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-09-29 01:59:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/www/imbconceito/?post_type=property&p=58', 0, 'property', '', 0),
(59, 1, '2012-09-29 02:06:07', '2012-09-29 02:06:07', '[#Beginning of Shooting Data Section]\r\nNikon D700\r\n02/12/2011 10:03:38.08\r\nWorld Time: UTC-7, DST:ON\r\nRAW (14-bit)\r\nImage Size: L (4256 x 2832), FX\r\nLens: 14-24mm F/2.8G\r\nArtist:                                     \r\nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \r\nFocal Length: 14mm\r\nExposure Mode: Manual\r\nMetering: Matrix\r\nShutter Speed: 1.5s\r\nAperture: F/13\r\nExposure Comp.: 0EV\r\nExposure Tuning:\r\nISO Sensitivity: ISO 200\r\nOptimize Image:\r\nWhite Balance: Color Temp. (3700K), 0, 0\r\nFocus Mode: Manual\r\nAF-Area Mode: Single\r\nAF Fine Tune: OFF\r\nVR:\r\nLong Exposure NR: OFF\r\nHigh ISO NR: OFF\r\nColor Mode:\r\nColor Space: Adobe RGB\r\nTone Comp.:\r\nHue Adjustment:\r\nSaturation:\r\nSharpening:\r\nActive D-Lighting: Low\r\nVignette Control: OFF\r\nAuto Distortion Control:\r\nPicture Control: [NL] NEUTRAL\r\nBase: [NL] NEUTRAL\r\nQuick Adjust: -\r\nSharpening: 6\r\nContrast: Active D-Lighting\r\nBrightness: Active D-Lighting\r\nSaturation: 0\r\nHue: -3\r\nFilter Effects:\r\nToning:\r\nFlash Mode:  \r\nFlash Exposure Comp.:  \r\nFlash Sync Mode:  \r\nColored Gel Filter:\r\nMap Datum:\r\nImage Authentication: OFF\r\nDust Removal: 28/11/2011 13:13:38\r\nImage Comment:                                     \r\n[#End of Shooting Data Section]', 'Bonus', '', 'inherit', 'open', 'open', '', 'bonus', '', '', '2012-09-29 02:06:07', '2012-09-29 02:06:07', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Bonus.jpg', 8, 'attachment', 'image/jpeg', 0),
(60, 1, '2012-09-29 02:06:12', '2012-09-29 02:06:12', '[#Beginning of Shooting Data Section]\r\nNikon D700\r\n02/12/2011 10:44:41.33\r\nWorld Time: UTC-7, DST:ON\r\nRAW (14-bit)\r\nImage Size: L (4256 x 2832), FX\r\nLens: 14-24mm F/2.8G\r\nArtist:                                     \r\nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \r\nFocal Length: 14mm\r\nExposure Mode: Manual\r\nMetering: Matrix\r\nShutter Speed: 1/1.5s\r\nAperture: F/13\r\nExposure Comp.: 0EV\r\nExposure Tuning:\r\nISO Sensitivity: ISO 200\r\nOptimize Image:\r\nWhite Balance: Color Temp. (3570K), 0, 0\r\nFocus Mode: Manual\r\nAF-Area Mode: Single\r\nAF Fine Tune: OFF\r\nVR:\r\nLong Exposure NR: OFF\r\nHigh ISO NR: OFF\r\nColor Mode:\r\nColor Space: Adobe RGB\r\nTone Comp.:\r\nHue Adjustment:\r\nSaturation:\r\nSharpening:\r\nActive D-Lighting: Low\r\nVignette Control: OFF\r\nAuto Distortion Control:\r\nPicture Control: [NL] NEUTRAL\r\nBase: [NL] NEUTRAL\r\nQuick Adjust: -\r\nSharpening: 6\r\nContrast: Active D-Lighting\r\nBrightness: Active D-Lighting\r\nSaturation: 0\r\nHue: -3\r\nFilter Effects:\r\nToning:\r\nFlash Mode: Optional, TTL\r\nFlash Exposure Comp.: 0EV\r\nFlash Sync Mode: Front Curtain\r\nBounce Flash\r\nColored Gel Filter:\r\nMap Datum:\r\nImage Authentication: OFF\r\nDust Removal: 28/11/2011 13:13:38\r\nImage Comment:                                     \r\n[#End of Shooting Data Section]', 'Ensuite', '', 'inherit', 'open', 'open', '', 'ensuite', '', '', '2012-09-29 02:06:12', '2012-09-29 02:06:12', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Ensuite.jpg', 7, 'attachment', 'image/jpeg', 0),
(61, 1, '2012-09-29 02:06:14', '2012-09-29 02:06:14', '', 'Exterior', '', 'inherit', 'open', 'open', '', 'exterior', '', '', '2012-09-29 02:06:14', '2012-09-29 02:06:14', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Exterior.jpg', 1, 'attachment', 'image/jpeg', 0),
(62, 1, '2012-09-29 02:06:15', '2012-09-29 02:06:15', '[#Beginning of Shooting Data Section]\r\nNikon D700\r\n02/12/2011 12:19:31.50\r\nWorld Time: UTC-7, DST:ON\r\nRAW (14-bit)\r\nImage Size: L (4256 x 2832), FX\r\nLens: 14-24mm F/2.8G\r\nArtist:                                     \r\nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \r\nFocal Length: 14mm\r\nExposure Mode: Manual\r\nMetering: Matrix\r\nShutter Speed: 1s\r\nAperture: F/13\r\nExposure Comp.: 0EV\r\nExposure Tuning:\r\nISO Sensitivity: ISO 200\r\nOptimize Image:\r\nWhite Balance: Color Temp. (3330K), 0, 0\r\nFocus Mode: Manual\r\nAF-Area Mode: Single\r\nAF Fine Tune: OFF\r\nVR:\r\nLong Exposure NR: OFF\r\nHigh ISO NR: OFF\r\nColor Mode:\r\nColor Space: Adobe RGB\r\nTone Comp.:\r\nHue Adjustment:\r\nSaturation:\r\nSharpening:\r\nActive D-Lighting: Low\r\nVignette Control: OFF\r\nAuto Distortion Control:\r\nPicture Control: [NL] NEUTRAL\r\nBase: [NL] NEUTRAL\r\nQuick Adjust: -\r\nSharpening: 6\r\nContrast: Active D-Lighting\r\nBrightness: Active D-Lighting\r\nSaturation: 0\r\nHue: -3\r\nFilter Effects:\r\nToning:\r\nFlash Mode: Optional, TTL\r\nFlash Exposure Comp.: 0EV\r\nFlash Sync Mode: Front Curtain\r\nBounce Flash\r\nColored Gel Filter:\r\nMap Datum:\r\nImage Authentication: OFF\r\nDust Removal: 28/11/2011 13:13:38\r\nImage Comment:                                     \r\n[#End of Shooting Data Section]', 'Kitchen', '', 'inherit', 'open', 'open', '', 'kitchen', '', '', '2012-09-29 02:06:15', '2012-09-29 02:06:15', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Kitchen.jpg', 6, 'attachment', 'image/jpeg', 0),
(63, 1, '2012-09-29 02:06:15', '2012-09-29 02:06:15', '[#Beginning of Shooting Data Section]\r\nNikon D700\r\n02/12/2011 13:12:08.75\r\nWorld Time: UTC-7, DST:ON\r\nRAW (14-bit)\r\nImage Size: L (4256 x 2832), FX\r\nLens: 14-24mm F/2.8G\r\nArtist:                                     \r\nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \r\nFocal Length: 14mm\r\nExposure Mode: Manual\r\nMetering: Matrix\r\nShutter Speed: 1/4s\r\nAperture: F/13\r\nExposure Comp.: 0EV\r\nExposure Tuning:\r\nISO Sensitivity: ISO 200\r\nOptimize Image:\r\nWhite Balance: Color Temp. (3450K), 0, 0\r\nFocus Mode: Manual\r\nAF-Area Mode: Single\r\nAF Fine Tune: OFF\r\nVR:\r\nLong Exposure NR: OFF\r\nHigh ISO NR: OFF\r\nColor Mode:\r\nColor Space: Adobe RGB\r\nTone Comp.:\r\nHue Adjustment:\r\nSaturation:\r\nSharpening:\r\nActive D-Lighting: OFF\r\nVignette Control: OFF\r\nAuto Distortion Control:\r\nPicture Control: [NL] NEUTRAL\r\nBase: [NL] NEUTRAL\r\nQuick Adjust: -\r\nSharpening: 6\r\nContrast: 0\r\nBrightness: 0\r\nSaturation: 0\r\nHue: -3\r\nFilter Effects:\r\nToning:\r\nFlash Mode: Optional, TTL\r\nFlash Exposure Comp.: 0EV\r\nFlash Sync Mode: Front Curtain\r\nBounce Flash\r\nColored Gel Filter:\r\nMap Datum:\r\nImage Authentication: OFF\r\nDust Removal: 28/11/2011 13:13:38\r\nImage Comment:                                     \r\n[#End of Shooting Data Section]', 'Kitchen_Dining', '', 'inherit', 'open', 'open', '', 'kitchen_dining', '', '', '2012-09-29 02:06:15', '2012-09-29 02:06:15', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Kitchen_Dining.jpg', 5, 'attachment', 'image/jpeg', 0),
(64, 1, '2012-09-29 02:06:16', '2012-09-29 02:06:16', '[#Beginning of Shooting Data Section]\r\nNikon D700\r\n02/12/2011 11:56:14.33\r\nWorld Time: UTC-7, DST:ON\r\nRAW (14-bit)\r\nImage Size: L (4256 x 2832), FX\r\nLens: 14-24mm F/2.8G\r\nArtist:                                     \r\nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \r\nFocal Length: 14mm\r\nExposure Mode: Manual\r\nMetering: Matrix\r\nShutter Speed: 1/2s\r\nAperture: F/13\r\nExposure Comp.: 0EV\r\nExposure Tuning:\r\nISO Sensitivity: ISO 200\r\nOptimize Image:\r\nWhite Balance: Color Temp. (3330K), 0, 0\r\nFocus Mode: Manual\r\nAF-Area Mode: Single\r\nAF Fine Tune: OFF\r\nVR:\r\nLong Exposure NR: OFF\r\nHigh ISO NR: OFF\r\nColor Mode:\r\nColor Space: Adobe RGB\r\nTone Comp.:\r\nHue Adjustment:\r\nSaturation:\r\nSharpening:\r\nActive D-Lighting: Low\r\nVignette Control: OFF\r\nAuto Distortion Control:\r\nPicture Control: [NL] NEUTRAL\r\nBase: [NL] NEUTRAL\r\nQuick Adjust: -\r\nSharpening: 6\r\nContrast: Active D-Lighting\r\nBrightness: Active D-Lighting\r\nSaturation: 0\r\nHue: -3\r\nFilter Effects:\r\nToning:\r\nFlash Mode: Optional, TTL\r\nFlash Exposure Comp.: 0EV\r\nFlash Sync Mode: Front Curtain\r\nBounce Flash\r\nColored Gel Filter:\r\nMap Datum:\r\nImage Authentication: OFF\r\nDust Removal: 28/11/2011 13:13:38\r\nImage Comment:                                     \r\n[#End of Shooting Data Section]', 'Living_1', '', 'inherit', 'open', 'open', '', 'living_1', '', '', '2012-09-29 02:06:16', '2012-09-29 02:06:16', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Living_1.jpg', 4, 'attachment', 'image/jpeg', 0),
(65, 1, '2012-09-29 02:06:17', '2012-09-29 02:06:17', '[#Beginning of Shooting Data Section]\r\nNikon D700\r\n02/12/2011 12:46:14.92\r\nWorld Time: UTC-7, DST:ON\r\nRAW (14-bit)\r\nImage Size: L (4256 x 2832), FX\r\nLens: 14-24mm F/2.8G\r\nArtist:                                     \r\nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \r\nFocal Length: 14mm\r\nExposure Mode: Manual\r\nMetering: Matrix\r\nShutter Speed: 1/6s\r\nAperture: F/13\r\nExposure Comp.: 0EV\r\nExposure Tuning:\r\nISO Sensitivity: ISO 200\r\nOptimize Image:\r\nWhite Balance: Color Temp. (3570K), 0, 0\r\nFocus Mode: Manual\r\nAF-Area Mode: Single\r\nAF Fine Tune: OFF\r\nVR:\r\nLong Exposure NR: OFF\r\nHigh ISO NR: OFF\r\nColor Mode:\r\nColor Space: Adobe RGB\r\nTone Comp.:\r\nHue Adjustment:\r\nSaturation:\r\nSharpening:\r\nActive D-Lighting: Low\r\nVignette Control: OFF\r\nAuto Distortion Control:\r\nPicture Control: [NL] NEUTRAL\r\nBase: [NL] NEUTRAL\r\nQuick Adjust: -\r\nSharpening: 6\r\nContrast: Active D-Lighting\r\nBrightness: Active D-Lighting\r\nSaturation: 0\r\nHue: -3\r\nFilter Effects:\r\nToning:\r\nFlash Mode: Optional, TTL\r\nFlash Exposure Comp.: 0EV\r\nFlash Sync Mode: Front Curtain\r\nBounce Flash\r\nColored Gel Filter:\r\nMap Datum:\r\nImage Authentication: OFF\r\nDust Removal: 28/11/2011 13:13:38\r\nImage Comment:                                     \r\n[#End of Shooting Data Section]', 'Living_2', '', 'inherit', 'open', 'open', '', 'living_2', '', '', '2012-09-29 02:06:17', '2012-09-29 02:06:17', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Living_2.jpg', 3, 'attachment', 'image/jpeg', 0),
(66, 1, '2012-09-29 02:06:18', '2012-09-29 02:06:18', '[#Beginning of Shooting Data Section]\r\nNikon D700\r\n02/12/2011 10:27:11.58\r\nWorld Time: UTC-7, DST:ON\r\nRAW (14-bit)\r\nImage Size: L (4256 x 2832), FX\r\nLens: 14-24mm F/2.8G\r\nArtist:                                     \r\nCopyright: 2010 DCPiX PHOTOGRAPHY/DUSTIN HOFFERT                 \r\nFocal Length: 14mm\r\nExposure Mode: Manual\r\nMetering: Matrix\r\nShutter Speed: 1.5s\r\nAperture: F/13\r\nExposure Comp.: 0EV\r\nExposure Tuning:\r\nISO Sensitivity: ISO 200\r\nOptimize Image:\r\nWhite Balance: Color Temp. (3230K), 0, 0\r\nFocus Mode: Manual\r\nAF-Area Mode: Single\r\nAF Fine Tune: OFF\r\nVR:\r\nLong Exposure NR: OFF\r\nHigh ISO NR: OFF\r\nColor Mode:\r\nColor Space: Adobe RGB\r\nTone Comp.:\r\nHue Adjustment:\r\nSaturation:\r\nSharpening:\r\nActive D-Lighting: Low\r\nVignette Control: OFF\r\nAuto Distortion Control:\r\nPicture Control: [NL] NEUTRAL\r\nBase: [NL] NEUTRAL\r\nQuick Adjust: -\r\nSharpening: 6\r\nContrast: Active D-Lighting\r\nBrightness: Active D-Lighting\r\nSaturation: 0\r\nHue: -3\r\nFilter Effects:\r\nToning:\r\nFlash Mode:  \r\nFlash Exposure Comp.:  \r\nFlash Sync Mode:  \r\nColored Gel Filter:\r\nMap Datum:\r\nImage Authentication: OFF\r\nDust Removal: 28/11/2011 13:13:38\r\nImage Comment:                                     \r\n[#End of Shooting Data Section]', 'Master_Bedroom', '', 'inherit', 'open', 'open', '', 'master_bedroom', '', '', '2012-09-29 02:06:18', '2012-09-29 02:06:18', '', 32, 'http://localhost/www/imbconceito/wp-content/uploads/2012/09/Master_Bedroom.jpg', 2, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_smooth_slider`
--

CREATE TABLE IF NOT EXISTS `wp_smooth_slider` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `slider_id` int(5) NOT NULL DEFAULT '1',
  `slide_order` int(5) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `wp_smooth_slider`
--

INSERT INTO `wp_smooth_slider` (`id`, `post_id`, `date`, `slider_id`, `slide_order`) VALUES
(1, 18, '2012-09-15 05:00:27', 1, 3),
(3, 21, '2012-09-15 05:03:38', 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_smooth_slider_meta`
--

CREATE TABLE IF NOT EXISTS `wp_smooth_slider_meta` (
  `slider_id` int(5) NOT NULL AUTO_INCREMENT,
  `slider_name` varchar(100) NOT NULL DEFAULT '',
  UNIQUE KEY `slider_id` (`slider_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_smooth_slider_meta`
--

INSERT INTO `wp_smooth_slider_meta` (`slider_id`, `slider_name`) VALUES
(1, 'Smooth Slider');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_smooth_slider_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_smooth_slider_postmeta` (
  `post_id` int(11) NOT NULL,
  `slider_id` int(5) NOT NULL DEFAULT '1',
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Lista de Links', 'lista-de-links', 0),
(3, 'Menu Principal', 'menu-principal', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 3, 0),
(9, 3, 0),
(10, 3, 0),
(18, 1, 0),
(21, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'Administrador'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '42'),
(15, 1, 'manageedit-propertycolumnshidden', 'a:13:{i:0;s:4:"type";i:1;s:5:"price";i:2;s:8:"bedrooms";i:3;s:9:"bathrooms";i:4;s:7:"deposit";i:5;s:4:"area";i:6;s:12:"phone_number";i:7;s:14:"purchase_price";i:8;s:8:"for_sale";i:9;s:8:"for_rent";i:10;s:4:"city";i:11;s:8:"featured";i:12;s:10:"menu_order";}'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:8:"add-post";i:1;s:12:"add-property";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:20:"add-property_feature";i:5;s:21:"add-community_feature";}'),
(18, 1, 'nav_menu_recently_edited', '3'),
(19, 1, 'wp_user-settings', 'editor=html&galord=title&galfile=1&galcols=4'),
(20, 1, 'wp_user-settings-time', '1348884491');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Administrador', '$P$BPG3TYbfid3qkjSGwnUNN8DA60N8zx/', 'administrador', 'ezequiel.c37@gmail.com', '', '2012-09-15 01:41:45', '', 0, 'Administrador');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
