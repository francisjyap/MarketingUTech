-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 09:38 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `role` enum('Editor','Writer','Marketing Specialist','Trackimo Customer Support','Social Media Specialist','Multimedia Specialist','Data Processor','SEO Specialist/Internet Marketing','Wordpress Developer','Content Marketing Assistant','On-the-job Trainee') NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `email`, `fname`, `lname`, `role`, `job_title`, `pass`) VALUES
(1, 'neil.llenes@gmail.com', 'Neil Patrick', 'Llenes', 'On-the-job Trainee', 'Developer for Automated Data System Inputs', 'kittens'),
(2, 'kittenstest@yahoo.com', 'kittens', 'test', 'Writer', 'Cool Guy', 'kittens'),
(3, 'editguy@gmail.com', 'edit', 'guy', 'Editor', 'Pro editor', 'editguy');

-- --------------------------------------------------------

--
-- Table structure for table `content_marketing_assistant_tracker`
--

CREATE TABLE `content_marketing_assistant_tracker` (
  `content_marketing_assistant_id` int(11) NOT NULL,
  `curated_cnt` int(11) DEFAULT NULL,
  `drafted_cnt` int(11) DEFAULT NULL,
  `pictures_cnt` int(11) DEFAULT NULL,
  `videos_cnt` int(11) DEFAULT NULL,
  `misc_cnt` int(11) DEFAULT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_marketing_assistant_tracker`
--

INSERT INTO `content_marketing_assistant_tracker` (`content_marketing_assistant_id`, `curated_cnt`, `drafted_cnt`, `pictures_cnt`, `videos_cnt`, `misc_cnt`, `track_date`, `entry_time`, `account_id`) VALUES
(8, 4, 5, 6, 5, 8, '2017-07-14', '2017-07-14 13:53:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_processor_tracker`
--

CREATE TABLE `data_processor_tracker` (
  `data_processor_id` int(11) NOT NULL,
  `daily_task` text NOT NULL,
  `task_status` varchar(50) NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `editor_tracker`
--

CREATE TABLE `editor_tracker` (
  `editor_id` int(11) NOT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `word_cnt` int(11) NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `editor_tracker`
--

INSERT INTO `editor_tracker` (`editor_id`, `writer_id`, `word_cnt`, `track_date`, `entry_time`, `account_id`) VALUES
(3, 82, 100, '2017-07-12', '2017-07-12 17:10:08', 3),
(4, 83, 25, '2017-07-12', '2017-07-12 17:10:08', 3),
(5, 1, 50, '2017-07-12', '2017-07-12 17:10:52', 3),
(6, 12, 11, '2017-07-14', '2017-07-14 15:01:21', 3),
(7, 83, 23, '2017-07-14', '2017-07-14 15:01:21', 3),
(23, 2, 123, '2017-07-24', '2017-07-24 15:11:19', 3),
(24, 82, 222, '2017-07-24', '2017-07-24 15:11:19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_tracker`
--

CREATE TABLE `marketing_tracker` (
  `marketing_id` int(11) NOT NULL,
  `daily_task` text NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marketing_tracker`
--

INSERT INTO `marketing_tracker` (`marketing_id`, `daily_task`, `track_date`, `entry_time`, `account_id`) VALUES
(1, 'Yass', '2017-07-12', '2017-07-12 13:57:07', 1),
(2, 'HUZZAHHH! It works bebe! ;)', '2017-07-21', '2017-07-21 17:52:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multimedia_tracker`
--

CREATE TABLE `multimedia_tracker` (
  `multimedia_id` int(11) NOT NULL,
  `featured_image_cnt` int(11) NOT NULL,
  `graphic_designing_cnt` int(11) NOT NULL,
  `banner_cnt` int(11) NOT NULL,
  `misc_cnt` int(11) NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `multimedia_tracker`
--

INSERT INTO `multimedia_tracker` (`multimedia_id`, `featured_image_cnt`, `graphic_designing_cnt`, `banner_cnt`, `misc_cnt`, `track_date`, `entry_time`, `account_id`) VALUES
(2, 1, 2, 0, 4, '2017-07-10', '2017-07-10 16:25:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ojt_developer_system_tracker`
--

CREATE TABLE `ojt_developer_system_tracker` (
  `ojt_developer_system_id` int(11) NOT NULL,
  `create_website` text,
  `organize` text,
  `misc` text,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ojt_developer_system_tracker`
--

INSERT INTO `ojt_developer_system_tracker` (`ojt_developer_system_id`, `create_website`, `organize`, `misc`, `track_date`, `entry_time`, `account_id`) VALUES
(1, 'Ayy', 'Waddap', 'My Friend!', '2017-07-21', '2017-07-21 17:46:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ojt_researcher_tracker`
--

CREATE TABLE `ojt_researcher_tracker` (
  `ojt_researcher_id` int(11) NOT NULL,
  `niche` text,
  `num_companies` text,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ojt_seo_tracker`
--

CREATE TABLE `ojt_seo_tracker` (
  `ojt_seo_id` int(11) NOT NULL,
  `comment` enum('Yes','No') DEFAULT 'No',
  `site_audit` enum('Yes','No') DEFAULT 'No',
  `schema_markup` enum('Yes','No') DEFAULT 'No',
  `competitor_backlink_analysis` enum('Yes','No') DEFAULT 'No',
  `relationship_link_research` enum('Yes','No') DEFAULT 'No',
  `misc` text,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ojt_seo_tracker`
--

INSERT INTO `ojt_seo_tracker` (`ojt_seo_id`, `comment`, `site_audit`, `schema_markup`, `competitor_backlink_analysis`, `relationship_link_research`, `misc`, `track_date`, `entry_time`, `account_id`) VALUES
(2, 'Yes', 'Yes', 'Yes', 'No', 'No', 'Ayyy Waddap friend!', '2017-07-17', '2017-07-17 16:31:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ojt_webdev_tracker`
--

CREATE TABLE `ojt_webdev_tracker` (
  `ojt_webdev_id` int(11) NOT NULL,
  `fix_bugs_cnt` int(11) DEFAULT NULL,
  `responsive_cnt` int(11) DEFAULT NULL,
  `backup_cnt` int(11) DEFAULT NULL,
  `optimize_cnt` int(11) DEFAULT NULL,
  `misc_cnt` int(11) DEFAULT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ojt_webdev_tracker`
--

INSERT INTO `ojt_webdev_tracker` (`ojt_webdev_id`, `fix_bugs_cnt`, `responsive_cnt`, `backup_cnt`, `optimize_cnt`, `misc_cnt`, `track_date`, `entry_time`, `account_id`) VALUES
(2, 0, 0, 2, 2, 3, '2017-07-17', '2017-07-17 14:27:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seo_specialist_tracker`
--

CREATE TABLE `seo_specialist_tracker` (
  `seospecialist_id` int(11) NOT NULL,
  `daily_task` text NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seo_specialist_tracker`
--

INSERT INTO `seo_specialist_tracker` (`seospecialist_id`, `daily_task`, `track_date`, `entry_time`, `account_id`) VALUES
(1, 'I did a lot today', '2017-07-24', '2017-07-24 14:05:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_media_tracker`
--

CREATE TABLE `social_media_tracker` (
  `social_media_id` int(11) NOT NULL,
  `fb_balay_cnt` int(11) NOT NULL,
  `pinterest_balay_cnt` int(11) NOT NULL,
  `mb_cnt` int(11) NOT NULL,
  `taft_cnt` int(11) NOT NULL,
  `wa_cnt` int(11) NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `timeIn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `totalHours` float NOT NULL DEFAULT '0',
  `salaryToday` float NOT NULL DEFAULT '0',
  `isAbsent` tinyint(1) NOT NULL DEFAULT '0',
  `isOnLeave` tinyint(1) NOT NULL DEFAULT '0',
  `isOnPaidLeave` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `user_id`, `date`, `timeIn`, `timeOut`, `totalHours`, `salaryToday`, `isAbsent`, `isOnLeave`, `isOnPaidLeave`, `created`, `modified`) VALUES
(31, 1, '2017-07-18', '2017-07-18 10:06:25', '2017-07-18 10:06:35', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(32, 1, '2017-07-19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(33, 1, '2017-07-20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(34, 1, '2017-07-21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(35, 1, '2017-07-22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(36, 1, '2017-07-23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(37, 1, '2017-07-24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(38, 1, '2017-07-25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(39, 1, '2017-07-26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(40, 1, '2017-07-27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(41, 1, '2017-07-28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(42, 1, '2017-07-29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(43, 1, '2017-07-30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:06', '2017-07-18 10:06:06'),
(44, 1, '2017-07-31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, '2017-07-18 10:06:08', '2017-07-18 10:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `trackimo_cs_tracker`
--

CREATE TABLE `trackimo_cs_tracker` (
  `trackimo_cs_id` int(11) NOT NULL,
  `daily_task` text NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trackimo_cs_tracker`
--

INSERT INTO `trackimo_cs_tracker` (`trackimo_cs_id`, `daily_task`, `track_date`, `entry_time`, `account_id`) VALUES
(2, 'I supported customers who were struggling with the use of our Tracker', '2017-07-07', '2017-07-07 15:20:58', 1),
(3, 'Ayy waddap', '2017-07-12', '2017-07-12 13:45:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT 'password',
  `type` enum('OJT','Trainee','Probationary','Regular') DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `dateHired` date DEFAULT NULL,
  `noOfAbsences` int(11) DEFAULT NULL,
  `hoursLate` float DEFAULT NULL,
  `contactNumber` int(11) DEFAULT NULL,
  `monthlyRate` float DEFAULT NULL,
  `scheduledTimeIn` time DEFAULT NULL,
  `scheduledTimeOut` time DEFAULT NULL,
  `OJT_hoursTotal` float DEFAULT NULL,
  `OJT_hoursRemaining` float DEFAULT NULL,
  `OJT_allowanceDaily` float DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `oauth_uid`, `firstName`, `lastName`, `email`, `password`, `type`, `jobTitle`, `birthday`, `dateHired`, `noOfAbsences`, `hoursLate`, `contactNumber`, `monthlyRate`, `scheduledTimeIn`, `scheduledTimeOut`, `OJT_hoursTotal`, `OJT_hoursRemaining`, `OJT_allowanceDaily`, `created`, `modified`) VALUES
(1, '114331649460731421461', 'Francis', 'Yap', 'francisyap.utech@gmail.com', 'password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-04 17:55:07', '2017-07-04 17:55:07'),
(2, '108361447290940980252', 'Kayat', 'Master', 'kayatmaster69@gmail.com', 'password', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-18 17:02:22', '2017-07-18 17:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `wordpress_developer_tracker`
--

CREATE TABLE `wordpress_developer_tracker` (
  `wordpress_developer_id` int(11) NOT NULL,
  `fix_bug_cnt` int(11) DEFAULT NULL,
  `create_pages_cnt` int(11) DEFAULT NULL,
  `responsive_design_cnt` int(11) DEFAULT NULL,
  `modify_pages_cnt` int(11) DEFAULT NULL,
  `misc_cnt` int(11) DEFAULT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wordpress_developer_tracker`
--

INSERT INTO `wordpress_developer_tracker` (`wordpress_developer_id`, `fix_bug_cnt`, `create_pages_cnt`, `responsive_design_cnt`, `modify_pages_cnt`, `misc_cnt`, `track_date`, `entry_time`, `account_id`) VALUES
(6, 2, 1, 1, 3, 5, '2017-07-07', '2017-07-07 11:28:24', 1),
(7, 4, 2, 2, 5, 1, '2017-07-17', '2017-07-17 14:06:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `writer_tracker`
--

CREATE TABLE `writer_tracker` (
  `writer_id` int(11) NOT NULL,
  `article_title` varchar(50) NOT NULL,
  `word_cnt` int(11) NOT NULL,
  `track_date` date NOT NULL,
  `entry_time` datetime NOT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `writer_tracker`
--

INSERT INTO `writer_tracker` (`writer_id`, `article_title`, `word_cnt`, `track_date`, `entry_time`, `account_id`) VALUES
(1, 'HEY', 100, '2017-06-28', '0000-00-00 00:00:00', 1),
(2, 'task', 123, '0000-00-00', '0000-00-00 00:00:00', 1),
(3, 'task', 100, '0000-00-00', '0000-00-00 00:00:00', 1),
(4, 'task 2', 50, '0000-00-00', '0000-00-00 00:00:00', 1),
(5, 'lkfwejf', 123, '0000-00-00', '0000-00-00 00:00:00', 1),
(6, 'fwekljf', 321, '0000-00-00', '0000-00-00 00:00:00', 1),
(9, 'test 1', 123, '0000-00-00', '0000-00-00 00:00:00', 1),
(10, 'test 2', 45, '0000-00-00', '0000-00-00 00:00:00', 1),
(11, 'NEWEST', 101, '0000-00-00', '0000-00-00 00:00:00', 1),
(12, 'test new', 500, '0000-00-00', '0000-00-00 00:00:00', 1),
(13, 'article alec', 400, '0000-00-00', '0000-00-00 00:00:00', 1),
(14, 'Test the new DATE and DATETIME', 2, '2017-06-30', '2017-06-30 15:45:30', 1),
(15, 'Huzzah it works', 50, '2017-06-30', '2017-06-30 15:47:14', 1),
(16, 'AngularJS is cool', 30, '2017-06-30', '2017-06-30 15:47:38', 1),
(17, 'AngularJS changed my life', 720, '2017-06-30', '2017-06-30 15:47:38', 1),
(19, 'today', 321, '2017-07-03', '2017-07-03 14:12:28', 1),
(20, 'Try adding 1', 250, '2017-07-03', '2017-07-03 14:20:52', 1),
(21, 'Try adding 2', 175, '2017-07-03', '2017-07-03 14:20:52', 1),
(26, 'Yayyy it works', 131, '2017-07-03', '2017-07-03 14:30:44', 1),
(29, 'Trackidog: GPS Tracker!', 123, '2017-07-04', '2017-07-04 08:36:32', 1),
(30, 'Trackimo! <3', 670, '2017-07-04', '2017-07-04 08:36:32', 1),
(79, 'Trackidog: GPS Tracker', 500, '2017-07-05', '2017-07-05 17:50:55', 1),
(80, 'Tracking', 323, '2017-07-05', '2017-07-05 17:55:43', 1),
(81, 'wat', 31323, '2017-07-12', '2017-07-12 15:03:29', 1),
(82, 'KITTENS TEST', 100, '2017-07-12', '2017-07-12 16:28:18', 2),
(83, 'test 2', 123, '2017-07-12', '2017-07-12 16:53:29', 1),
(84, 'tj', 312, '2017-07-12', '2017-07-12 16:53:29', 1),
(88, 'diez', 123, '2017-07-13', '2017-07-13 13:30:22', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `content_marketing_assistant_tracker`
--
ALTER TABLE `content_marketing_assistant_tracker`
  ADD PRIMARY KEY (`content_marketing_assistant_id`),
  ADD KEY `content_marketing_assistant_fk` (`account_id`);

--
-- Indexes for table `data_processor_tracker`
--
ALTER TABLE `data_processor_tracker`
  ADD PRIMARY KEY (`data_processor_id`),
  ADD KEY `data_processor_fk` (`account_id`);

--
-- Indexes for table `editor_tracker`
--
ALTER TABLE `editor_tracker`
  ADD PRIMARY KEY (`editor_id`),
  ADD KEY `editor_tracker_fk1` (`writer_id`),
  ADD KEY `writer_tracker_fk2` (`account_id`);

--
-- Indexes for table `marketing_tracker`
--
ALTER TABLE `marketing_tracker`
  ADD PRIMARY KEY (`marketing_id`),
  ADD KEY `marketing_tracker_fk` (`account_id`);

--
-- Indexes for table `multimedia_tracker`
--
ALTER TABLE `multimedia_tracker`
  ADD PRIMARY KEY (`multimedia_id`),
  ADD KEY `multimedia_tracker_fk` (`account_id`);

--
-- Indexes for table `ojt_developer_system_tracker`
--
ALTER TABLE `ojt_developer_system_tracker`
  ADD PRIMARY KEY (`ojt_developer_system_id`),
  ADD KEY `ojt_developer_system_fk` (`account_id`);

--
-- Indexes for table `ojt_researcher_tracker`
--
ALTER TABLE `ojt_researcher_tracker`
  ADD PRIMARY KEY (`ojt_researcher_id`),
  ADD KEY `ojt_researcher_fk` (`account_id`);

--
-- Indexes for table `ojt_seo_tracker`
--
ALTER TABLE `ojt_seo_tracker`
  ADD PRIMARY KEY (`ojt_seo_id`),
  ADD KEY `ojt_seo_fk` (`account_id`);

--
-- Indexes for table `ojt_webdev_tracker`
--
ALTER TABLE `ojt_webdev_tracker`
  ADD PRIMARY KEY (`ojt_webdev_id`),
  ADD KEY `ojt_webdev_fk` (`account_id`);

--
-- Indexes for table `seo_specialist_tracker`
--
ALTER TABLE `seo_specialist_tracker`
  ADD PRIMARY KEY (`seospecialist_id`),
  ADD KEY `seo_fk` (`account_id`);

--
-- Indexes for table `social_media_tracker`
--
ALTER TABLE `social_media_tracker`
  ADD PRIMARY KEY (`social_media_id`),
  ADD KEY `social_media_tracker_fk` (`account_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trackimo_cs_tracker`
--
ALTER TABLE `trackimo_cs_tracker`
  ADD PRIMARY KEY (`trackimo_cs_id`),
  ADD KEY `trackimo_cs_tracker_fk` (`account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wordpress_developer_tracker`
--
ALTER TABLE `wordpress_developer_tracker`
  ADD PRIMARY KEY (`wordpress_developer_id`),
  ADD KEY `wordpress_developer_fk` (`account_id`);

--
-- Indexes for table `writer_tracker`
--
ALTER TABLE `writer_tracker`
  ADD PRIMARY KEY (`writer_id`),
  ADD KEY `writer_tracker_fk` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `content_marketing_assistant_tracker`
--
ALTER TABLE `content_marketing_assistant_tracker`
  MODIFY `content_marketing_assistant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `data_processor_tracker`
--
ALTER TABLE `data_processor_tracker`
  MODIFY `data_processor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `editor_tracker`
--
ALTER TABLE `editor_tracker`
  MODIFY `editor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `marketing_tracker`
--
ALTER TABLE `marketing_tracker`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `multimedia_tracker`
--
ALTER TABLE `multimedia_tracker`
  MODIFY `multimedia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ojt_developer_system_tracker`
--
ALTER TABLE `ojt_developer_system_tracker`
  MODIFY `ojt_developer_system_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ojt_researcher_tracker`
--
ALTER TABLE `ojt_researcher_tracker`
  MODIFY `ojt_researcher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ojt_seo_tracker`
--
ALTER TABLE `ojt_seo_tracker`
  MODIFY `ojt_seo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ojt_webdev_tracker`
--
ALTER TABLE `ojt_webdev_tracker`
  MODIFY `ojt_webdev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `seo_specialist_tracker`
--
ALTER TABLE `seo_specialist_tracker`
  MODIFY `seospecialist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `social_media_tracker`
--
ALTER TABLE `social_media_tracker`
  MODIFY `social_media_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `trackimo_cs_tracker`
--
ALTER TABLE `trackimo_cs_tracker`
  MODIFY `trackimo_cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wordpress_developer_tracker`
--
ALTER TABLE `wordpress_developer_tracker`
  MODIFY `wordpress_developer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `writer_tracker`
--
ALTER TABLE `writer_tracker`
  MODIFY `writer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `content_marketing_assistant_tracker`
--
ALTER TABLE `content_marketing_assistant_tracker`
  ADD CONSTRAINT `content_marketing_assistant_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `data_processor_tracker`
--
ALTER TABLE `data_processor_tracker`
  ADD CONSTRAINT `data_processor_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `editor_tracker`
--
ALTER TABLE `editor_tracker`
  ADD CONSTRAINT `editor_tracker_fk1` FOREIGN KEY (`writer_id`) REFERENCES `writer_tracker` (`writer_id`),
  ADD CONSTRAINT `writer_tracker_fk2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `marketing_tracker`
--
ALTER TABLE `marketing_tracker`
  ADD CONSTRAINT `marketing_tracker_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `multimedia_tracker`
--
ALTER TABLE `multimedia_tracker`
  ADD CONSTRAINT `multimedia_tracker_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `ojt_developer_system_tracker`
--
ALTER TABLE `ojt_developer_system_tracker`
  ADD CONSTRAINT `ojt_developer_system_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `ojt_researcher_tracker`
--
ALTER TABLE `ojt_researcher_tracker`
  ADD CONSTRAINT `ojt_researcher_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `ojt_seo_tracker`
--
ALTER TABLE `ojt_seo_tracker`
  ADD CONSTRAINT `ojt_seo_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `ojt_webdev_tracker`
--
ALTER TABLE `ojt_webdev_tracker`
  ADD CONSTRAINT `ojt_webdev_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `seo_specialist_tracker`
--
ALTER TABLE `seo_specialist_tracker`
  ADD CONSTRAINT `seo_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `social_media_tracker`
--
ALTER TABLE `social_media_tracker`
  ADD CONSTRAINT `social_media_tracker_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `trackimo_cs_tracker`
--
ALTER TABLE `trackimo_cs_tracker`
  ADD CONSTRAINT `trackimo_cs_tracker_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `wordpress_developer_tracker`
--
ALTER TABLE `wordpress_developer_tracker`
  ADD CONSTRAINT `wordpress_developer_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

--
-- Constraints for table `writer_tracker`
--
ALTER TABLE `writer_tracker`
  ADD CONSTRAINT `writer_tracker_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;