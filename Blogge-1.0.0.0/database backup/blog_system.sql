-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2025 at 01:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_summary` varchar(500) DEFAULT NULL,
  `post_description` text DEFAULT NULL,
  `featured_image` varchar(500) DEFAULT NULL,
  `post_status` enum('active','inactive') DEFAULT 'inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `cat_id`, `user_id`, `post_title`, `post_summary`, `post_description`, `featured_image`, `post_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'learn java in 30 days', 'okay', 'yes', 'uploads/posts/1754297312_Screenshot 2025-07-31 225839.png', 'inactive', '2025-08-04 10:47:41', NULL),
(2, 1, 2, 'Seo', 'SEO specialist', 'On page SEO', 'uploads/posts/1754298864_Screenshot 2025-07-31 034124.png', 'inactive', '2025-08-04 09:14:24', NULL),
(3, 3, 2, 'Java developement', 'Java Spring Boot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'uploads/posts/1754299370_perfect query.png', 'inactive', '2025-08-04 09:22:50', NULL),
(4, 3, 2, 'physics', 'Exploring the laws of nature, from motion to quantum mechanics.', 'Physics is the branch of science concerned with the nature and properties of matter and energy. Topics include mechanics, heat, light, sound, electricity, magnetism, and the structure of atoms. This category covers breakthroughs, experiments, and practical applications shaping the modern world.', 'uploads/posts/1754299503_perfect query.png', 'inactive', '2025-08-04 09:25:03', NULL),
(6, 3, 1, 'River and Mountains', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'uploads/posts/1754305834_1.webp', 'inactive', '2025-08-04 11:10:34', NULL),
(7, 1, 1, 'Seo', 'askjbf askjffb', 'akjsbf akjsbf', 'uploads/posts/1754306228_logo.png', 'inactive', '2025-08-04 11:17:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `cat_id` int(11) NOT NULL,
  `cate_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`cat_id`, `cate_name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', NULL, NULL),
(2, 'Art', NULL, NULL),
(3, 'Science', NULL, NULL),
(4, 'Sports', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_tag_id`, `post_id`, `tag_id`) VALUES
(3, 2, 5),
(4, 2, 6),
(5, 2, 8),
(6, 3, 1),
(7, 3, 3),
(8, 4, 4),
(9, 4, 5),
(10, 7, 5),
(11, 7, 6),
(12, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(1, 'PHP'),
(2, 'JS'),
(3, 'JAVA'),
(4, 'python'),
(5, 'HTML'),
(6, 'MERN'),
(7, 'LARAVEL'),
(8, 'SEO');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `date_of_birth` varchar(250) DEFAULT NULL,
  `image_path` varchar(250) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `contact_no` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` varchar(250) DEFAULT NULL,
  `role_id` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `gender`, `date_of_birth`, `image_path`, `address`, `contact_no`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Abdul', 'Azeez', 'Bhutto', 'abdulazeezbhutto085@gmail.com', '$2y$10$C5q.EUrCx/g5q9FTrg5cg.nGAuegPud/.uQC91e3CE3e53BYrZhwe', 'male', '2025-08-06', 'uploads/1754290523Screenshot 2025-07-31 225839.png', 'Baharia Town Karachi', '03239265024', '2025-08-04 07:06:33', NULL, 1),
(2, 'Kumail', 'Ali', 'khan', 'kumail@gmail.com', '$2y$10$CW98cYaak0iiddPB/AkGW.mPRw4BzGz5TfMRlOEEOxJ.tk4JsN6WS', 'male', '2017-01-10', 'uploads/1754290909Screenshot 2025-07-31 034124.png', 'malir karachi', '03493232307', '2025-08-04 09:10:05', NULL, 1),
(3, 'Sani ', 'khan', 'rajkumar', 'sani@gmail.com', '$2y$10$uUmgpnsmDr/FlFwHRguJ/eEiUnQo8GmyW5q2oWqjUCpXeBoriFsd6', 'male', '2011-02-28', 'uploads/1754301091Screenshot 2025-07-31 225839.png', 'Gulshan e hadid karachi', '03412345667', '2025-08-04 09:51:31', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_tag_id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `post_category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
