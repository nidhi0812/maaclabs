-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 09:48 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newman`
--

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `videourl` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `group1` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `equipment` text NOT NULL,
  `level` varchar(255) NOT NULL,
  `secondary` text NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `name`, `description`, `videourl`, `image`, `group1`, `type`, `equipment`, `level`, `secondary`, `group_id`) VALUES
(4, 'Push ups', '<p>Something here!</p>', 'https://www.youtube.com/watch?v=xRr7aGPuLzw', 'xlO9j4bFtjfhWfUHWBcx.jpg', 'Shoulders', 'Strength', 'Barbells, Bench', 'Intermediate', 'Everything Else!', 4),
(6, 'Pull Ups', '<p>Random Text</p>', 'http://www.putlockers.lc/episodes/the-walking-dead-season-8-episode-9/', '', 'Muscle Building', 'Strength', 'Barbells, Rod', 'Intermediate', 'Chest and Forearms', 4);

-- --------------------------------------------------------

--
-- Table structure for table `opt_ins`
--

CREATE TABLE `opt_ins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opt_ins`
--

INSERT INTO `opt_ins` (`id`, `name`, `email`) VALUES
(1, 'Raza Anis', 'horror.greetings@yahoo.com'),
(2, 'Raza Anis', 'razaanis123@gmail.com'),
(3, 'Raza Anis', 'razaanis123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `available` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `directions` text NOT NULL,
  `carbs` varchar(10) NOT NULL,
  `proteins` varchar(10) NOT NULL,
  `fats` varchar(10) NOT NULL,
  `servings` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `short`, `description`, `image`, `ingredients`, `directions`, `carbs`, `proteins`, `fats`, `servings`, `time`) VALUES
(3, 'ABC 123 123 123 4', 'ABC 123 123 123', '<p>ABC 123 123 123</p>', 'DnRTVLMIS3RdmJTeaA3F.jpg', '[{"name":"ABC 123 123 123","quantity":32,"$$hashKey":"object:10"},{"name":"ABC 123 123 123 ABC 123 123 123","quantity":32,"$$hashKey":"object:12"}]', '[{"direction":"ABC 123 123 123","image":"1m3D4I8afk7rblRpDz4l.png","$$hashKey":"object:14"},{"direction":"ABC 123 123 123 ABC 123 123 123","image":"ow9Iu6YbTbaNYYDwSyXT.png","$$hashKey":"object:16"}]', '42', '421', '12', '7', '12');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transformations`
--

CREATE TABLE `transformations` (
  `id` int(11) NOT NULL,
  `pictures` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '2',
  `phone` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `certification` text,
  `experience` text,
  `profile_pic` varchar(255) DEFAULT NULL,
  `pictures` text,
  `videos` text,
  `transformation` text,
  `about` text,
  `social` text,
  `max_client` int(11) DEFAULT NULL,
  `package` text,
  `testimonial` text,
  `price` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `approved` int(11) NOT NULL DEFAULT '0',
  `percentage_completed` varchar(255) DEFAULT '30%',
  `packagetype` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `email`, `password`, `type`, `phone`, `dob`, `certification`, `experience`, `profile_pic`, `pictures`, `videos`, `transformation`, `about`, `social`, `max_client`, `package`, `testimonial`, `price`, `category`, `approved`, `percentage_completed`, `packagetype`) VALUES
(1, 'Raza Anis', '1', 'razaanis123@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, '1231231231321', '1996-03-01', '[{"title":"sadas","date":"2018-12-30T19:00:00.000Z","description":"asdas","$$hashKey":"object:13"},{"title":"123qwsd","date":"2014-11-24T19:00:00.000Z","description":"asdas123","$$hashKey":"object:15"},{"title":"New Certificate","date":"2018-01-01T19:00:00.000Z","description":"Very Important Certificate","$$hashKey":"object:25"},{"title":"asd","description":"asd","$$hashKey":"object:24"}]', '<p>Not Much... :D</p>', 'A0C9PiBdXPbGThaa3Iap.jpg', '[{"picture":"P5E00tBopz2N7iNm3Mj4.png","$$hashKey":"object:14"},{"picture":"YJ8GkMQqeBbwvG8DuYF0.png","$$hashKey":"object:15"},{"picture":"ZQ2zm4EAoOm5YMCHUU4u.jpg","$$hashKey":"object:25"},{"picture":"MTbp6GKqyzv77Ivobt0V.jpg","$$hashKey":"object:27"}]', '[{"video":"https://learnappmaking.com/develop-ios-apps-on-windows-pc/"}]', '[{"description":"asdsads","pictures":[{"picture":"7hCPhwTw3yNYqBXWfTTG.jpg","$$hashKey":"object:19"},{"picture":"30USsjsaRrL0Oe6DlxIg.png","$$hashKey":"object:20"},{"picture":"AB5OUJhqTw0zgiFSRSGk.png","$$hashKey":"object:21"}],"$$hashKey":"object:17"},{"name":"Abc123","description":"abc","pictures":[{"picture":"OQn0vEg6SSxx1sE2iQb6.jpg","$$hashKey":"object:29"}],"$$hashKey":"object:27"}]', '<p>asdsadsadsadsadsa</p>', '[{"website":"sdsad","username":"asdasdsa","link":"asdasds","$$hashKey":"object:15"}]', 14, '[{"name":"sad","duration":"asd","description":"<p>asdasdas</p>","dayfrom":"tuesday","dayto":"monday","time":"asdsadsa","price":"","$$hashKey":"object:16"}]', NULL, '502', NULL, 0, '30%', '3'),
(2, 'Usama', NULL, 'usama@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL),
(4, 'RAnis', NULL, 'admin@gmail.com', 'e99a18c428cb38d5f260853678922e03', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL),
(5, 'xyz', NULL, 'xyz@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL),
(6, 'trainer@gmail.com', '1', 'abc@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, NULL, NULL, '[{"title":"asd","date":"2020-01-31T19:00:00.000Z","description":"asd","$$hashKey":"object:13"},{"title":"ads","description":"asd","$$hashKey":"object:22"}]', NULL, 'wabUFqSt0R04UFnSuikq.jpg', '[{"$$hashKey":"object:14"},{"picture":"p37GKkKIKEowtkyBxv4N.jpg","$$hashKey":"object:16"},{"picture":"62khSfvqThEXKnPreDjp.jpg","$$hashKey":"object:18"},{"picture":"L5sSJVWZWNg8uUweMk6K.jpg","$$hashKey":"object:20"},{"picture":"MR0ZjcaDW3OIgzTgYkwm.jpg","$$hashKey":"object:22"},{"picture":"yf2OR6qphpji0t4zBEXa.jpg","$$hashKey":"object:19"},{"picture":"tZXAEx5Ne3enu2w270CJ.png","$$hashKey":"object:21"},{"picture":"tfcMhp51QjGNSLvENHVP.jpg","$$hashKey":"object:21"}]', '[]', '[]', NULL, '[]', NULL, '[]', NULL, NULL, NULL, 0, '30%', NULL),
(7, 'new@gmail.com', NULL, 'new@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL),
(8, 'new1@gmail.com', NULL, 'new1@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL),
(9, 'new2', NULL, 'new2@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL),
(10, 'new3', NULL, 'new3@gmail.com', 'e99a18c428cb38d5f260853678922e03', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL),
(11, 'user', NULL, 'user@gmail.com', 'e99a18c428cb38d5f260853678922e03', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '30%', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workouts`
--

CREATE TABLE `workouts` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `videourl` text NOT NULL,
  `description` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `fulldescription` text NOT NULL,
  `result` text NOT NULL,
  `type` text NOT NULL,
  `level` text NOT NULL,
  `duration` text NOT NULL,
  `daysperworkout` text NOT NULL,
  `timeperworkout` text NOT NULL,
  `equipment` text NOT NULL,
  `targetgender` text NOT NULL,
  `supplements` text NOT NULL,
  `author` text NOT NULL,
  `pdf` text NOT NULL,
  `image` text NOT NULL,
  `workoutdays` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workouts`
--

INSERT INTO `workouts` (`id`, `name`, `videourl`, `description`, `group_id`, `position`, `fulldescription`, `result`, `type`, `level`, `duration`, `daysperworkout`, `timeperworkout`, `equipment`, `targetgender`, `supplements`, `author`, `pdf`, `image`, `workoutdays`, `date`) VALUES
(4, '17 Days Extreme Workout', 'https://www.youtube.com/watch?v=SphTGtDlhHw&list=RDsyhBqULC99I&index=27', 'This is valid syntax', 1, 2, '', 'Get Slim', 'Fat Loss', 'Master', '3 Weeks', '4 days', '4 hours', 'Dumbells, Rod, Bench', 'Male, Female', 'All', 'Raza Anis', '0Xekh7qKplxJ3UpmJD1C.png', 'JRjjYyJv7TLVv97qwjXP.jpg', '[{"id":1,"name":"Day 1","description":"Get Buffed!","exercises":[{"id":1,"name":"Dumbells","reps":"1,2,1","sets":"23,23,23"},{"id":2,"name":"Pullups","reps":"2,3,3","sets":"12,23,12"}]}]', '2018-07-22 21:24:45'),
(5, 'Shoulder Building Exercise', 'https://www.youtube.com/watch?v=SphTGtDlhHw&list=RDsyhBqULC99I&index=27', 'Best Exercise Out There', 2, 1, '<h3>Task 2: Classification with localization</h3><p><span style="color: rgb(31, 31, 31);">In this task, an algorithm will produce 5 class labels&nbsp;l</span></p><p><span style="color: rgb(31, 31, 31);">j</span></p><p><span style="color: rgb(31, 31, 31);">,j=1,...,5</span></p><p><span style="color: rgb(31, 31, 31);">lj,j=1,...,5&nbsp;and 5 bounding boxes&nbsp;b</span></p><p><span style="color: rgb(31, 31, 31);">j</span></p><p><span style="color: rgb(31, 31, 31);">,j=1,...5</span></p><p><span style="color: rgb(31, 31, 31);">bj,j=1,...5, one for each class label. The ground truth labels for the image are&nbsp;g</span></p><p><span style="color: rgb(31, 31, 31);">k</span></p><p><span style="color: rgb(31, 31, 31);">,k=1,...,n</span></p><p><span style="color: rgb(31, 31, 31);">gk,k=1,...,n&nbsp;with n classes labels. For each ground truth class label&nbsp;g</span></p><p><span style="color: rgb(31, 31, 31);">k</span></p><p><span style="color: rgb(31, 31, 31);">gk, the ground truth bounding boxes are&nbsp;z</span></p><p><span style="color: rgb(31, 31, 31);">km</span></p><p><span style="color: rgb(31, 31, 31);">,m=1,...M</span></p><p><span style="color: rgb(31, 31, 31);">k</span></p><p><span style="color: rgb(31, 31, 31);">,</span></p><p><span style="color: rgb(31, 31, 31);">zkm,m=1,...Mk,&nbsp;where&nbsp;M</span></p><p><span style="color: rgb(31, 31, 31);">k</span></p><p><span style="color: rgb(31, 31, 31);">Mk&nbsp;is the number of instances of the&nbsp;k</span></p><p><span style="color: rgb(31, 31, 31);">th</span></p><p><span style="color: rgb(31, 31, 31);">kth&nbsp;object in the current image. The error of the algorithm for that image would be</span></p><p class="ql-align-center">e=1</p><p class="ql-align-center">n</p><p class="ql-align-center"><br></p><p class="ql-align-center">â‹…âˆ‘</p><p class="ql-align-center">k</p><p class="ql-align-center">min</p><p class="ql-align-center">j</p><p class="ql-align-center">min</p><p class="ql-align-center">M</p><p class="ql-align-center">k</p><p class="ql-align-center">m</p><p class="ql-align-center">max{d(l</p><p class="ql-align-center">j</p><p class="ql-align-center">,g</p><p class="ql-align-center">k</p><p class="ql-align-center">),f(b</p><p class="ql-align-center">j</p><p class="ql-align-center">,z</p><p class="ql-align-center">km</p><p class="ql-align-center">)}</p><p class="ql-align-center">e=1nâ‹…âˆ‘kminjminmMkmax{d(lj,gk),f(bj,zkm)}</p><p><span style="color: rgb(31, 31, 31);">where&nbsp;f(b</span></p><p><span style="color: rgb(31, 31, 31);">j</span></p><p><span style="color: rgb(31, 31, 31);">,z</span></p><p><span style="color: rgb(31, 31, 31);">k</span></p><p><span style="color: rgb(31, 31, 31);">)=0</span></p><p><span style="color: rgb(31, 31, 31);">f(bj,zk)=0&nbsp;if&nbsp;b</span></p><p><span style="color: rgb(31, 31, 31);">j</span></p><p><span style="color: rgb(31, 31, 31);">bj&nbsp;and&nbsp;z</span></p><p><span style="color: rgb(31, 31, 31);">mk</span></p><p><span style="color: rgb(31, 31, 31);">zmk&nbsp;has over 50% overlap, and&nbsp;f(b</span></p><p><span style="color: rgb(31, 31, 31);">j</span></p><p><span style="color: rgb(31, 31, 31);">,z</span></p><p><span style="color: rgb(31, 31, 31);">mk</span></p><p><span style="color: rgb(31, 31, 31);">)=1</span></p><p><span style="color: rgb(31, 31, 31);">f(bj,zmk)=1&nbsp;otherwise. In other words, the error will be the same as defined in task 1 if the localization is correct(i.e. the predicted bounding box overlaps over 50% with the ground truth bounding box, or in the case of multiple instances of the same class, with any of the ground truth bounding boxes). otherwise the error is 1(maximum).</span></p><h3>Task 3: Fine-grained classification</h3><h2><span style="color: rgb(31, 31, 31);">This year we introduce a third task: fine-grained classification on 100+ dog categories. For each of the dog categories predict if a specified dog (indicated by their bounding box) in a test image is of a particular category. The output from your system should be a real-valued confidence that the dog is of a particular category so that a precision/recall curve can be drawn. The fine-grained classification task will be judged by the precision/recall curve. The principal quantitative measure used will be the average precision (AP) on individual categories and the mean average precision (mAP) across all categories.</span><span style="color: rgb(31, 31, 31); background-color: rgb(255, 255, 255);">Tentative Timetable</span></h2><ul><li>June 15 2012: Development kit (training and validation data plus evaluation software) to be made available.</li><li>Early July, 2012: Test data to be released.</li><li>September 30, 2012 (Sunday, 23:00 GMT): Deadline for submission of results (no more extension).</li><li>October 12, 2012: Pascal Challenge Workshop in association with&nbsp;<a href="http://eccv2012.unifi.it/" target="_blank" style="color: rgb(51, 51, 51);">ECCV 2012</a>, Florence, Italy.</li></ul><p><br></p>', 'Build Muscle!', 'Muscle Building', 'Expert', '23 weeks', '4 days', '4 hours', 'Dumbells, Rod, Bench', 'Male', 'Chicken, Protein Bars, Smoothies', 'Raza Anis', 'lJmvUnSGJ1thypbvthd8.png', 'Wd3TVde1F43mkqfZB9IE.jpg', '[{"id":1,"name":"Day 1","description":"First do to do things","exercises":[{"id":1,"name":"Dumbells","reps":"2,3,2","sets":"21,23,12"},{"id":2,"name":"Pullups","reps":"4,2,4","sets":"23,23,23"}]},{"id":2,"name":"Day 2","description":"You are ready!","exercises":[{"id":1,"name":"Pushups","reps":"2,2,2","sets":"23,32,23"},{"id":2,"name":"Squats","reps":"3,4,2","sets":"23,23,12"}]}]', '2018-04-09 21:21:31'),
(6, 'Very simple', 'https://www.youtube.com/watch?v=SphTGtDlhHw&list=RDsyhBqULC99I&index=27', 'This is valid syntax', 3, 4, '', 'Build Muscle!', 'Muscle Building', 'Expert', '23 weeks', '4 days', '4 hours', 'Dumbells, Rod, Bench', 'Male', 'Chicken, Protein Bars, Smoothies', 'Raza Anis', 'HCcfY94N15VigMBqDz7l.jpg', 'dVH776LI4RRChtPq1ajs.jpg', '[{"id":1,"name":"sadsadasdasa","description":"adasdassa","exercises":[{"id":1,"name":"Push ups","reps":"43,232,1,23","sets":"12,23,12,33"}]}]', '2018-06-19 17:18:09');

-- --------------------------------------------------------

--
-- Table structure for table `workouts_group`
--

CREATE TABLE `workouts_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workouts_group`
--

INSERT INTO `workouts_group` (`id`, `name`, `position`) VALUES
(1, 'Muscle Building Exercises', 1),
(2, 'Fat Loss Workouts', 2),
(3, 'Stretching Workouts', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opt_ins`
--
ALTER TABLE `opt_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transformations`
--
ALTER TABLE `transformations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workouts`
--
ALTER TABLE `workouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workouts_group`
--
ALTER TABLE `workouts_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `opt_ins`
--
ALTER TABLE `opt_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transformations`
--
ALTER TABLE `transformations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `workouts`
--
ALTER TABLE `workouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `workouts_group`
--
ALTER TABLE `workouts_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
