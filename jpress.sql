-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2017 at 08:11 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_area`
--

CREATE TABLE IF NOT EXISTS `dynamic_area` (
`area_id` int(11) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `area_status` varchar(100) NOT NULL,
  `widget_id` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dynamic_area`
--

INSERT INTO `dynamic_area` (`area_id`, `area_name`, `area_status`, `widget_id`) VALUES
(1, 'footer1', 'active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jpress_category`
--

CREATE TABLE IF NOT EXISTS `jpress_category` (
`category_id` int(20) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_description` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jpress_category`
--

INSERT INTO `jpress_category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'uncategorised', 'you do not have any category'),
(34, 'java', NULL),
(35, 'C', NULL),
(36, 'HTML', NULL),
(37, 'CSS', NULL),
(38, 'javascript', NULL),
(39, 'database', NULL),
(40, 'rgfsa', NULL),
(41, 'law', NULL),
(42, 'hindu law', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jpress_options`
--

CREATE TABLE IF NOT EXISTS `jpress_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jpress_options`
--

INSERT INTO `jpress_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'site_url', 'My CMS', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `jpress_posts`
--

CREATE TABLE IF NOT EXISTS `jpress_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  `category` int(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jpress_posts`
--

INSERT INTO `jpress_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_status`, `comment_status`, `post_password`, `post_name`, `post_modified`, `post_modified_gmt`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`, `category`) VALUES
(1, 'Surendra Shukla', '2015-10-07 23:08:12', '0000-00-00 00:00:00', '<p>this cms  software is code by Surendrs Shukla</p>', 'Welcome To CMS System Using Java', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 34),
(2, 'DElta', '2015-10-07 23:16:08', '0000-00-00 00:00:00', 'Products were inspired by Behance''s research of especially productive teams in the creative industry. Hundreds of individuals and teams were interviewed, and Behance chronicled the work habits and best practices of creative leaders.\n\nThe paper products were initially designed by and for the Behance team as a way to stay organized. In 2007, at the insistence of friends who wanted Action Pads of their own...', 'DeltaMaker â?? The new kid on the block An Elegant 3D Printer and a new wicked ass thing', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 35),
(3, 'Nokia', '2015-10-07 23:16:53', '0000-00-00 00:00:00', 'This week Nokia announced it is giving away files for printable case for itâ€™s new Lumia 820 range. This week Nokia a files for printable case for itâ€™s new Lumia 820 range. This week Nokia announced it is giving away files for printable case for itâ€™s new Lumia 820 range. This week Nokia announced it is giving away files for printable case for itâ€™s new Lumia 820 range', 'Nokia offering customers printable STL phone cases for the Lumia 820 and things ', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 34),
(4, 'DeltaMaker', '2015-10-07 23:17:57', '0000-00-00 00:00:00', 'Products were inspired by Behance''s research of especially productive teams in the creative industry. Hundreds of individuals and teams were interviewed, and Behance chronicled the work habits and best practices of creative leaders.\n\nThe paper products were initially designed by and for the Behance team as a way to stay organized. In 2007, at the insistence of friends who wanted Action Pads of their own...', 'DeltaMaker â€“ The new kid on the block An Elegant 3D Printer and a new wicked ass thing', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 36),
(5, 'jpress', '2015-12-05 17:22:53', '0000-00-00 00:00:00', 'hi this is testing. this is update', 'testing jpress', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 39),
(6, 'rahul', '2016-01-02 23:55:50', '0000-00-00 00:00:00', 'dandelion doesn''t get the right ground to grow', 'RaAy', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 37),
(7, 'rahul', '2016-01-07 17:09:31', '0000-00-00 00:00:00', 'Since so long soil doesn''t met the dandelion but dandelion doesn''t even noticing its absence but don''t worry \nit will understand it one day because dandelion will not find that type of soil anywhere else and that day she will regret \nfor her negligence.', 'Thought', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 36),
(8, 'jp', '2016-01-07 17:50:16', '0000-00-00 00:00:00', 'i am going to discuss jpress tutorial in brief', 'using JPress CMS', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 1),
(9, 'db', '2016-01-07 18:23:20', '0000-00-00 00:00:00', 'sql is a database', 'sql', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 1),
(10, 'db', '2016-01-07 18:29:24', '0000-00-00 00:00:00', 'database management system', 'dbms', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 34),
(11, 'ra', '2016-01-07 18:34:15', '0000-00-00 00:00:00', 'welcome', 'hi', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 38),
(12, 'creator', '2016-01-11 07:55:53', '0000-00-00 00:00:00', 'Corset is a tight fitting underwear, 18th century persons used to wear it not only to look slim but also to display their rank and status', 'Corset', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 38),
(13, 'gsfg', '2016-01-14 17:02:54', '0000-00-00 00:00:00', 'sgsg', 'fsf', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 34),
(14, 'RA', '2016-01-15 20:27:59', '0000-00-00 00:00:00', 'Oracle is another type of database.', 'Oracle', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 39),
(15, 'Mr. Coder', '2016-01-15 20:55:16', '0000-00-00 00:00:00', 'It is basically of three types: inline, internal, external.', 'Types', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 37),
(16, 'denis', '2016-01-15 21:32:18', '0000-00-00 00:00:00', 'What is HTML?\n\nHTML is a markup language for describing web documents (web pages).\n\n    HTML stands for Hyper Text Markup Language\n    A markup language is a set of markup tags\n    HTML documents are described by HTML tags\n    Each HTML tag describes different document content\n', 'Introduction', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'page', '', 0, 36),
(17, 'freek', '2016-01-15 21:33:35', '0000-00-00 00:00:00', 'HTML and CSS', 'Prerequisites', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 38),
(19, 'gdsg', '2016-01-18 10:26:41', '0000-00-00 00:00:00', 'fsdf', 'sdfsf', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 40),
(20, 'jhfghf', '2016-01-22 22:03:42', '0000-00-00 00:00:00', 'hggfhgchg', 'law', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 41),
(21, 'dSGsDG', '2016-02-20 18:52:10', '0000-00-00 00:00:00', 'sGsG', 'sfsdgsgd', 'publish', 'open', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', 0, 'post', '', 0, 42);

-- --------------------------------------------------------

--
-- Table structure for table `jpress_users`
--

CREATE TABLE IF NOT EXISTS `jpress_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL,
  `user_pass` varchar(60) NOT NULL,
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jpress_users`
--

INSERT INTO `jpress_users` (`ID`, `user_login`, `user_pass`, `user_email`) VALUES
(1, 'surendra.shukla29', '21232f297a57a5a743894a0e4a801fc3', 'surendra.shukla29@gmail.com'),
(2, 'surendra.shukla@', '21232f297a57a5a743894a0e4a801fc3', 'surendra.sgitm@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE IF NOT EXISTS `widget` (
`widget_id` int(11) NOT NULL,
  `widget_name` varchar(100) NOT NULL,
  `widget_option` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widget`
--

INSERT INTO `widget` (`widget_id`, `widget_name`, `widget_option`) VALUES
(1, 'TextWidget', '[{"title":"About Jpress","Description":"JPress is Highly ~Advance And Customizable Cms System"}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dynamic_area`
--
ALTER TABLE `dynamic_area`
 ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `jpress_category`
--
ALTER TABLE `jpress_category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `jpress_options`
--
ALTER TABLE `jpress_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `jpress_posts`
--
ALTER TABLE `jpress_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `jpress_users`
--
ALTER TABLE `jpress_users`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
 ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dynamic_area`
--
ALTER TABLE `dynamic_area`
MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jpress_category`
--
ALTER TABLE `jpress_category`
MODIFY `category_id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `jpress_options`
--
ALTER TABLE `jpress_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jpress_posts`
--
ALTER TABLE `jpress_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `jpress_users`
--
ALTER TABLE `jpress_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
MODIFY `widget_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
