-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 06:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `arch_id` int(15) NOT NULL,
  `student_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `date` datetime(6) NOT NULL,
  `number` int(15) NOT NULL,
  `score` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`arch_id`, `student_id`, `course_id`, `date`, `number`, `score`) VALUES
(3, 4, 6, '2023-03-19 17:12:39.000000', 4, 100),
(4, 4, 5, '2023-03-20 11:55:14.000000', 8, 100),
(5, 4, 5, '2023-03-19 16:52:58.000000', 1, 83),
(6, 8, 5, '2023-03-21 17:39:21.000000', 2, 100),
(7, 8, 7, '2023-03-21 18:22:20.000000', 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(15) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `email`, `password`, `profile_pic`) VALUES
(0, 'Garey', 'Smith', 'gareysmith1@gmail.com', 'Garey123', '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(15) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_description` text NOT NULL,
  `course_introduction` text NOT NULL,
  `course_content` text NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `video_link` text NOT NULL,
  `instructor_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_title`, `course_description`, `course_introduction`, `course_content`, `file_path`, `image_path`, `course_image`, `video_link`, `instructor_id`) VALUES
(5, 'Wireless Mobile Computing', 'Wireless Mobile Computing', 'Wireless Mobile Computing', 'Wireless Mobile Computing', './../Course/uploads/pdfs/PDF-WirelessAndMobileComputing.pdf', './../Course/uploads/images/react js.jpg', '', 'https://www.youtube.com/ewrwe', 1),
(6, 'Wireless Mobile Computing 2', 'Wireless Mobile Computing 2', 'Wireless Mobile Computing', 'Wireless Mobile Computing', './../Course/uploads/pdfs/PDF-WirelessAndMobileComputing.pdf', './../Course/uploads/images/dm1.jpg', 'dm1.jpg', 'https://www.youtube.com/ewrwe', 1),
(7, 'React Js', 'This is description', 'This is introduction', 'This is content', './../Course/uploads/pdfs/ReactJS-Guide.pdf', './../Course/uploads/images/react js.jpg', 'react js.jpg', 'https://www.youtube.com/watch?v=w7ejDZ8SWv8', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE `course_sections` (
  `section_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `section_title` varchar(255) NOT NULL,
  `section_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_students`
--

CREATE TABLE `enroll_students` (
  `id` int(15) NOT NULL,
  `student_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `instructor_name` varchar(255) NOT NULL,
  `instructor_id` int(15) NOT NULL,
  `completed` varchar(255) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enroll_students`
--

INSERT INTO `enroll_students` (`id`, `student_id`, `course_id`, `course_name`, `instructor_name`, `instructor_id`, `completed`) VALUES
(21, 4, 5, 'Wireless Mobile Computing', 'Jane Doe', 1, 'Yes'),
(22, 4, 6, 'Wireless Mobile Computing 2', 'Jane Doe', 1, 'Yes'),
(23, 4, 7, 'React Js', 'Jane Doe', 1, 'Yes'),
(24, 8, 5, 'Wireless Mobile Computing', 'Jane Doe', 1, 'Yes'),
(25, 8, 7, 'React Js', 'Jane Doe', 1, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `id` int(15) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `speciality`, `dob`) VALUES
(1, 'Jane', 'Doe', 'janedoe@gmail.com', '$2y$10$qK.ZV6KkMQWgpetfRsZ.n.KCVA3GrwDr3Zpf/Z0tWC9h9wKL4saX6', '', 'Programmer', NULL),
(2, 'Mark', 'Newman', 'marknewman@gmail.com', '$2y$10$StLPrLIbanb7UBfn8SgYm.mtmD9k7aU10ybyb.xPaOVjxJfU4mYDa', '', '', NULL),
(9, 'Mourice', 'Add', 'add@gmail.com', '$2y$10$L68SP1cOgvZRndE9RGKXUuV7UMHqpRP5YFbE.zNpAdgpbEukf/RyK', 'Male', 'Designer', '1978-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `course_id` int(15) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `course_id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(29, 7, 'Which is false about React', 'React', 'Uses javascript', 'is java', 'React Js', '3'),
(30, 7, 'Define react', 'Is js framework', 'For frontend apps', 'Uses componets', 'All', '4'),
(31, 7, 'Which one is correct', 'React is a pythin framework', 'React uses R language', 'React is a server language', 'React is component based', '4');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `quiz_id` int(15) NOT NULL,
  `student_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `score` int(15) NOT NULL,
  `date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`quiz_id`, `student_id`, `course_id`, `score`, `date`) VALUES
(19, 4, 5, 83, '2023-03-20 11:55:14.000000'),
(20, 4, 6, 100, '2023-03-19 17:12:39.000000'),
(31, 8, 7, 100, '2023-03-21 18:22:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(15) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(4, 'John', 'Doe', 'johndoe@gmail.com', '$2y$10$wJK8ihRJlDp40pgptRMrze3jcqRnPPzlT25ECd3PCBQ.qIuhOUmbC'),
(5, 'faith', 'matara', 'matara@gmail.com', '$2y$10$W.s1UZ4ScG6H6I.MJfzkReHW9lNUVwIxrBiAuLqt5wFXAtdo24tHG'),
(6, 'New', 'Student', 'newstudent@gmail.com', 'newstudent123'),
(7, 'john', 'doe', 'mata@gmail.com', '$2y$10$Z6Tj4Zl0whappSfgH4WV0uL9s7ZvkzujwApFO7l6Derh5w6E1wmg6'),
(8, 'Shem', 'Yuksel', 'shem@gmail.com', '$2y$10$KVzjzVJn87Oi4O4Hp0B5Fuchi8xTSoofm.iMMrkSiP2HcGydQDV2G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`arch_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_sections`
--
ALTER TABLE `course_sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `enroll_students`
--
ALTER TABLE `enroll_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `arch_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `section_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll_students`
--
ALTER TABLE `enroll_students`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `quiz_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;