-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2024 at 05:47 PM
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
-- Database: `quiz_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(101) NOT NULL,
  `email` varchar(201) NOT NULL,
  `password` varchar(201) NOT NULL,
  `reset_token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `reset_token`) VALUES
(1, 'ganesha', 'kathyayini.21cs037@sode-edu.in', '$2y$10$XRmHDfjCb4VwcAb/w6qqnueWfo8wYeZMMzlvB7q/qd1FoPs5CHEhG', '6a9be4ba186fe7b1aa85845c6e4a7c1208d7048b6428aacfa7160f79a68ba7df369f83aa2108ff576548061d3d30f36d67cc'),
(2, 'Kathyayini', 'kathyayini.21cs037@sode-edu.in', '$2y$10$U1GPBLnHq1u6w/Zra7cHN.N8FYCLRLlEhBOIaJy4DG38fQJLp27i6', '6a9be4ba186fe7b1aa85845c6e4a7c1208d7048b6428aacfa7160f79a68ba7df369f83aa2108ff576548061d3d30f36d67cc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
