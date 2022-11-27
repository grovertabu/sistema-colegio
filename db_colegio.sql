-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-11-2022 a las 13:45:27
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `assigned_lecturers`
--

CREATE TABLE `assigned_lecturers` (
  `id` int(11) NOT NULL,
  `regions` varchar(255) NOT NULL,
  `first_supervisor_fast` varchar(255) NOT NULL,
  `second_supervisor_fast` varchar(255) NOT NULL,
  `first_supervisor_fbms` varchar(255) NOT NULL,
  `second_supervisor_fbms` varchar(255) NOT NULL,
  `first_supervisor_foe` varchar(100) NOT NULL,
  `second_supervisor_foe` varchar(100) NOT NULL,
  `first_supervisor_fbne` varchar(100) NOT NULL,
  `second_supervisor_fbne` varchar(100) NOT NULL,
  `first_supervisor_fhas` varchar(100) NOT NULL,
  `second_supervisor_fhas` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `assigned_lecturers`
--

INSERT INTO `assigned_lecturers` (`id`, `regions`, `first_supervisor_fast`, `second_supervisor_fast`, `first_supervisor_fbms`, `second_supervisor_fbms`, `first_supervisor_foe`, `second_supervisor_foe`, `first_supervisor_fbne`, `second_supervisor_fbne`, `first_supervisor_fhas`, `second_supervisor_fhas`, `date`) VALUES
(1, 'Greater Accra Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:09'),
(2, 'Central Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:09'),
(3, 'Eastern Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:09'),
(4, 'Western Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:09'),
(5, 'Ashanti Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:09'),
(6, 'Northern Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:10'),
(7, 'Upper East Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:10'),
(8, 'Upper West Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:10'),
(9, 'Volta Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:10'),
(10, 'Brong Ahafo Region', 'Peter Donk', 'Peter Donk', 'John Doe', 'John Doe', 'Luis Vuiton', 'Luis Vuiton', 'Tim Woods', 'Tim Woods', 'Luck Donk', 'Luck Donk', '2017-04-22 22:58:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_supervisor_grade`
--

CREATE TABLE `company_supervisor_grade` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_index` varchar(100) NOT NULL,
  `specific_skill_1` varchar(100) NOT NULL,
  `specific_skill_1_score` int(11) NOT NULL,
  `specific_skill_2` varchar(100) NOT NULL,
  `specific_skill_2_score` int(11) NOT NULL,
  `specific_skill_3` varchar(100) NOT NULL,
  `specific_skill_3_score` int(11) NOT NULL,
  `specific_skill_4` varchar(100) NOT NULL,
  `specific_skill_4_score` int(11) NOT NULL,
  `specific_skill_5` varchar(100) NOT NULL,
  `specific_skill_5_score` int(5) NOT NULL,
  `ability_to_complete_work_on_time` int(5) NOT NULL,
  `ability_to_follow_instructions_carefully` int(5) NOT NULL,
  `ability_to_take_initiatives` int(5) NOT NULL,
  `ability_to_work_with_little_supervision` int(5) NOT NULL,
  `adherence_to_organizations_rules` int(5) NOT NULL,
  `adherence_to_safety` int(5) NOT NULL,
  `resourcefulness` int(5) NOT NULL,
  `attendance_to_work` int(5) NOT NULL,
  `punctuality` int(5) NOT NULL,
  `desire_to_work` int(5) NOT NULL,
  `williness_to_accept_new_ideas` int(5) NOT NULL,
  `relationship_with_colleagues` int(5) NOT NULL,
  `relationship_with_supervisors` int(5) NOT NULL,
  `ability_to_control_emotions_when_provoked` int(5) NOT NULL,
  `grade` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `company_supervisor_grade`
--

INSERT INTO `company_supervisor_grade` (`id`, `username`, `user_index`, `specific_skill_1`, `specific_skill_1_score`, `specific_skill_2`, `specific_skill_2_score`, `specific_skill_3`, `specific_skill_3_score`, `specific_skill_4`, `specific_skill_4_score`, `specific_skill_5`, `specific_skill_5_score`, `ability_to_complete_work_on_time`, `ability_to_follow_instructions_carefully`, `ability_to_take_initiatives`, `ability_to_work_with_little_supervision`, `adherence_to_organizations_rules`, `adherence_to_safety`, `resourcefulness`, `attendance_to_work`, `punctuality`, `desire_to_work`, `williness_to_accept_new_ideas`, `relationship_with_colleagues`, `relationship_with_supervisors`, `ability_to_control_emotions_when_provoked`, `grade`, `date`) VALUES
(1, 'LiousVuiton', '04/2013/0688D', 'Home', 5, 'is', 5, 'sweet', 5, 'papa', 5, 'hmmm', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-18 18:25:00'),
(2, 'KingShabo', '04/2014/0099D', 'po', 5, 'pi', 5, 'ty', 5, 'gh', 5, 'we', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-22 20:14:47'),
(3, 'PriscillaAwuku', '04/2014/0666D', 'GH', 5, 'Ph', 5, 'Wh', 5, 'Zh', 5, 'QH', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 05:34:39'),
(4, 'LiousVuiton', '04/2013/0688D', 'a', 5, 'b', 5, 'c', 5, 'd', 5, 'e', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 15:32:18'),
(5, 'JohnDoe', '04/2014/0689D', '', 0, '', 0, '', 0, '', 0, '', 0, 0, 1, 1, 1, 1, 2, 3, 3, 3, 3, 3, 2, 2, 2, 32, '2018-02-28 17:49:33'),
(6, 'JohnDoe', '04/2014/0689D', 'dfs', 2, 'sdf', 2, 'sfd', 2, 'sdf', 2, 'sd', 2, 3, 3, 3, 3, 3, 3, 3, 4, 3, 4, 3, 2, 4, 3, 59, '2018-02-28 17:50:21'),
(7, 'tusolutionwebblooger', '04/2014/0688D', 'practica', 1, 'practica', 1, 'practica', 1, 'practica', 2, 'practica', 3, 1, 2, 1, 2, 2, 2, 2, 0, 0, 0, 0, 1, 1, 1, 28, '2018-03-01 00:16:40'),
(8, 'tusolutionwebblooger', '04/2014/0688D', '', 1, '', 1, '', 1, '', 1, '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 24, '2018-03-01 00:17:15'),
(9, 'tusolutionwebblooger', '04/2014/0688D', '', 0, '', 0, '', 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, '2018-03-01 00:17:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industrial_registration`
--

CREATE TABLE `industrial_registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `other_name` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `programme` varchar(200) NOT NULL,
  `session` varchar(200) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `index_number` varchar(255) NOT NULL,
  `company_supervisor_grade` int(11) NOT NULL,
  `visiting_supervisor_grade` int(11) NOT NULL,
  `company_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `visiting_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `company_supervisor_contact` varchar(11) NOT NULL,
  `visiting_supervisor_contact` varchar(11) NOT NULL,
  `attachment_region` varchar(100) NOT NULL DEFAULT 'unassigned'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `industrial_registration`
--

INSERT INTO `industrial_registration` (`id`, `first_name`, `last_name`, `other_name`, `level`, `programme`, `session`, `faculty`, `date`, `index_number`, `company_supervisor_grade`, `visiting_supervisor_grade`, `company_supervisor_name`, `visiting_supervisor_name`, `company_supervisor_contact`, `visiting_supervisor_contact`, `attachment_region`) VALUES
(3, 'Lious', 'Vuiton', '', '100', 'Accountancy', 'Morning', 'FAST', '2017-04-23 15:29:53', '04/2013/0688D', 100, 100, 'Ahitpogeah', 'Peter Donk', '99887788778', '0247732082', 'Central Region');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registered_students`
--

CREATE TABLE `registered_students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `index_number` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registered_students`
--

INSERT INTO `registered_students` (`id`, `first_name`, `last_name`, `index_number`, `password`) VALUES
(1, 'tusolutionweb', 'blooger', '04/2014/0688D', 'tusolutionweb'),
(2, 'John', 'Doe', '04/2014/0689D', 'Doe'),
(3, 'Micheal', 'Faraday', '04/2014/0690D', 'micheal'),
(4, 'Don', 'Little', '04/2014/0000D', 'little'),
(5, 'Lious', 'Vuiton', '04/2013/0688D', 'donk2'),
(6, 'King', 'Shabo', '04/2014/0099D', 'shabo'),
(7, 'Priscilla', 'Awuku', '04/2014/0666D', 'rep'),
(8, 'Pepito', 'Perez Salgado', '111111', '123456'),
(9, 'grover', 'taboada', '1', 'sistemas12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students_assumption`
--

CREATE TABLE `students_assumption` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `other_name` varchar(200) NOT NULL,
  `index_number` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `programme` varchar(200) NOT NULL,
  `session` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `supervisor_name` varchar(200) NOT NULL,
  `supervisor_contact` int(20) NOT NULL,
  `supervisor_email` varchar(100) NOT NULL,
  `company_region` varchar(200) NOT NULL,
  `company_address` mediumtext NOT NULL,
  `registration_type` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `students_assumption`
--

INSERT INTO `students_assumption` (`id`, `first_name`, `last_name`, `other_name`, `index_number`, `level`, `programme`, `session`, `company_name`, `supervisor_name`, `supervisor_contact`, `supervisor_email`, `company_region`, `company_address`, `registration_type`, `date`) VALUES
(10, 'Peter', 'Donk', '', '04/2014/0688D', '200', 'Computer Science', 'Evening', 'Scynett', 'Chris', 2147483647, 'gh@gmail.com', 'Central Region', 'Something', 'VIRA REGISTRATION', '2017-04-17 00:35:18'),
(15, 'King', 'Shabo', '', '04/2014/0099D', '100', 'Building Technology', 'Morning', 'Donk Enterprise1', 'PeterDonk2', 2147483647, 'donk172@gmail.com', 'Greater Accra Region', 'Opposide', 'VIRA REGISTRATION', '2017-04-22 21:05:40'),
(16, 'Don', 'Little', '', '04/2014/0000D', '100', 'Computer Science', 'Morning', 'Ponkey', 'Josh', 2147483647, 'ht@gmail.com', 'Volta Region', 'Bingo', 'INDUSTRIAL REGISTRATION', '2017-04-22 21:38:16'),
(17, 'Priscilla', 'Awuku', '', '04/2014/0666D', '200', 'Computer Science', 'Morning', 'Koforidua Technical University', 'Sackey Tego', 2147483647, 'peterdonk@gmail.com', 'Eastern Region', 'Koforidua Technical University', 'VIRA REGISTRATION', '2017-04-23 05:32:57'),
(19, 'Lious', 'Vuiton', '', '04/2013/0688D', '100', 'Accountancy', 'Morning', 'Koforidua Technical University', 'Ahitpogeah', 2147483647, 'peterdonk@gmail.com', 'Central Region', 'Opposite', 'INDUSTRIAL REGISTRATION', '2017-04-23 15:31:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisors_login`
--

CREATE TABLE `supervisors_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `supervisors_login`
--

INSERT INTO `supervisors_login` (`id`, `username`, `password`, `date`, `status`) VALUES
(1, 'tusolutionweb', 'admin', '2017-03-16 20:16:58', 'Visiting');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_admin`
--

CREATE TABLE `system_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `system_admin`
--

INSERT INTO `system_admin` (`id`, `username`, `password`) VALUES
(1, 'tusolutionweb', 'admin'),
(2, 'Fiifi', 'rueben');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vira_receipts_paid`
--

CREATE TABLE `vira_receipts_paid` (
  `id` int(11) NOT NULL,
  `receipt_number` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vira_receipts_paid`
--

INSERT INTO `vira_receipts_paid` (`id`, `receipt_number`, `date`) VALUES
(1, '255', '2017-03-15 10:39:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vira_registration`
--

CREATE TABLE `vira_registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `other_name` varchar(255) NOT NULL,
  `index_number` varchar(200) NOT NULL,
  `programme` varchar(200) NOT NULL,
  `level` varchar(100) NOT NULL,
  `session` varchar(200) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visiting_supervisor_grade` int(100) NOT NULL,
  `company_supervisor_grade` int(11) NOT NULL,
  `visiting_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `company_supervisor_name` varchar(100) NOT NULL DEFAULT 'unassigned',
  `company_supervisor_contact` varchar(11) NOT NULL,
  `visiting_supervisor_contact` varchar(11) NOT NULL,
  `attachment_region` varchar(100) NOT NULL DEFAULT 'unassigned'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vira_registration`
--

INSERT INTO `vira_registration` (`id`, `first_name`, `last_name`, `other_name`, `index_number`, `programme`, `level`, `session`, `faculty`, `date`, `visiting_supervisor_grade`, `company_supervisor_grade`, `visiting_supervisor_name`, `company_supervisor_name`, `company_supervisor_contact`, `visiting_supervisor_contact`, `attachment_region`) VALUES
(1, 'Peter', 'Donk', '', '04/2014/0688D', 'Computer Science', '200', 'Evening', '', '2017-03-20 17:56:05', 100, 5, '', 'JohnDoe', '247732082', '', ''),
(2, 'King', 'Shabo', '', '04/2014/0099D', 'Building Technology', '100', 'Morning', 'FAST', '2017-04-22 20:08:10', 100, 100, 'Peter Donk', 'PeterDonk2', '02477332082', '02477909090', 'Eastern Region'),
(3, 'Priscilla', 'Awuku', '', '04/2014/0666D', 'Computer Science', '200', 'Morning', 'FAST', '2017-04-23 05:29:47', 100, 100, 'Peter Donk', 'Sackey Tego', '4455004404', '0247732082', 'Eastern Region');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visiting_lecturers`
--

CREATE TABLE `visiting_lecturers` (
  `id` int(11) NOT NULL,
  `lecturer_name` varchar(255) NOT NULL,
  `lecturer_faculty` varchar(255) NOT NULL,
  `lecturer_phone_number` varchar(11) NOT NULL,
  `lecturer_region_residence` varchar(255) NOT NULL,
  `lecturer_department` varchar(255) NOT NULL,
  `lecturer_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `visiting_lecturers`
--

INSERT INTO `visiting_lecturers` (`id`, `lecturer_name`, `lecturer_faculty`, `lecturer_phone_number`, `lecturer_region_residence`, `lecturer_department`, `lecturer_email`) VALUES
(1, 'Peter Donk', 'FAST', '0247732082', 'Central Region', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(2, 'Peter Donk', 'FAST', '0247732082', 'Central Region', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(3, 'Peter Donk', 'FAST', '0247732082', 'Central Region', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(4, 'John Doe', 'FBMS', '0247732082', 'Central Region', 'marketing\r\n\r\n', 'peterdonk17@gmail.com'),
(5, 'Peter Donk', 'FBMS', '0247732082', 'Greater Accra', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(6, 'Luis Vuiton', 'FOE', '0247732082', 'Central Region', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(7, 'Micheal Faraday', 'FOE', '0247732082', 'Greater Accra', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(8, 'Tim Woods', 'FBNE', '0247732082', 'Central Region', 'Marketing', 'peterdonk17@gmail.com'),
(9, 'Martin Vuiton', 'FBNE', '0247732082', 'Central Region', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(10, 'Luck Donk', 'FHAS', '0247732082', 'Central Region', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(11, 'King Woods', 'FHAS', '0247732082', 'Central Region', 'Marketing', 'peterdonk17@gmail.com'),
(12, 'Martin Vuiton', 'FBNE', '0247732082', 'Central Region', 'Ciencias de la Computación\r\n', 'peterdonk17@gmail.com'),
(13, 'Dey Wilson', 'FAST', '0546332120', 'Volta Region', 'Contabilidad\r\n', 'dey@gmail.com'),
(14, 'Juan Rios', 'FOE', '943435423', 'Volta Region', 'Civil Engineering', 'juanrios@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visiting_supervisor_grade`
--

CREATE TABLE `visiting_supervisor_grade` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_index` varchar(100) NOT NULL,
  `specific_skill_1` varchar(100) NOT NULL,
  `specific_skill_1_score` int(11) NOT NULL,
  `specific_skill_2` varchar(100) NOT NULL,
  `specific_skill_2_score` int(11) NOT NULL,
  `specific_skill_3` varchar(100) NOT NULL,
  `specific_skill_3_score` int(11) NOT NULL,
  `specific_skill_4` varchar(100) NOT NULL,
  `specific_skill_4_score` int(11) NOT NULL,
  `specific_skill_5` varchar(100) NOT NULL,
  `specific_skill_5_score` int(5) NOT NULL,
  `ability_to_complete_work_on_time` int(5) NOT NULL,
  `ability_to_follow_instructions_carefully` int(5) NOT NULL,
  `ability_to_take_initiatives` int(5) NOT NULL,
  `ability_to_work_with_little_supervision` int(5) NOT NULL,
  `adherence_to_organizations_rules` int(5) NOT NULL,
  `adherence_to_safety` int(5) NOT NULL,
  `resourcefulness` int(5) NOT NULL,
  `attendance_to_work` int(5) NOT NULL,
  `punctuality` int(5) NOT NULL,
  `desire_to_work` int(5) NOT NULL,
  `williness_to_accept_new_ideas` int(5) NOT NULL,
  `relationship_with_colleagues` int(5) NOT NULL,
  `relationship_with_supervisors` int(5) NOT NULL,
  `ability_to_control_emotions_when_provoked` int(5) NOT NULL,
  `grade` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `visiting_supervisor_grade`
--

INSERT INTO `visiting_supervisor_grade` (`id`, `username`, `user_index`, `specific_skill_1`, `specific_skill_1_score`, `specific_skill_2`, `specific_skill_2_score`, `specific_skill_3`, `specific_skill_3_score`, `specific_skill_4`, `specific_skill_4_score`, `specific_skill_5`, `specific_skill_5_score`, `ability_to_complete_work_on_time`, `ability_to_follow_instructions_carefully`, `ability_to_take_initiatives`, `ability_to_work_with_little_supervision`, `adherence_to_organizations_rules`, `adherence_to_safety`, `resourcefulness`, `attendance_to_work`, `punctuality`, `desire_to_work`, `williness_to_accept_new_ideas`, `relationship_with_colleagues`, `relationship_with_supervisors`, `ability_to_control_emotions_when_provoked`, `grade`, `date`) VALUES
(2, 'MichealFaraday', '04/2014/0690D', 'Peter', 5, 'Is', 5, 'A', 5, 'Good', 5, 'Friendly', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 95, '2017-04-16 13:19:17'),
(3, 'LiousVuiton', '04/2013/0688D', 'we', 5, 'too', 5, 'never', 5, 'say', 5, 'die', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-18 18:25:59'),
(4, 'KingShabo', '04/2014/0099D', 'cv', 5, 'as', 5, 'rt', 5, 'qw', 5, 'op', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-22 20:16:03'),
(5, 'PriscillaAwuku', '04/2014/0666D', 'Wz', 5, 'Pz', 5, 'Qz', 5, 'Gz', 5, 'Oz', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 05:35:34'),
(6, 'LiousVuiton', '04/2013/0688D', 'a', 5, 'b', 5, 'c', 5, 'd', 5, 'e', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2017-04-23 15:32:55'),
(7, 'JohnDoe', '04/2014/0689D', 'Aprendio lenguaje php', 3, 'Aprendio las utlidad de prolog', 3, 'Tiene conocimiento de la evoluvion de los lenguajes de programacion', 2, 'Save como presentar informes', 3, 'Sus proyectos tienen un correcto  diseÃ±o', 2, 4, 4, 2, 2, 3, 3, 3, 0, 0, 0, 0, 2, 3, 2, 46, '2018-02-28 17:45:53'),
(8, 'tusolutionwebblooger', '04/2014/0688D', '', 5, '', 5, '', 5, '', 5, '', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 100, '2018-03-01 00:18:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week1_table`
--

CREATE TABLE `week1_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week1_table`
--

INSERT INTO `week1_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'John Doe', '04/2014/0689D', 'Realizar un programa que simule un semaforo en java ', '2018-02-28 17:40:15', 'Programacion java', 'Realizar  un sistema CRUD en php', 'Control de registros php', 'Realizar un informe sobre la evolucion de los lenguajes de programacion', 'Informativo', 'Realizar un informe sobre  la Descripcion  de los comandos en phython', 'Informativo', 'Realizar un informe sobre prolog', 'Informativo'),
(56, 'tusolutionweb blooger', '04/2014/0688D', '10 ejerciios java numericos', '2018-03-01 00:08:16', 'practica', '10 ejercios c++ numericos', 'practica', 'historia de la programaciÃ³n', 'informativa', 'Presentar informe comandos en java', 'practica', 'Presentar informe comandos en c++', 'practica'),
(57, 'Pepito Perez Salgado', '111111', 'sdfffffffffffffff', '2018-03-01 01:39:31', 'fd', 'fsdddddddddddd', 'dff', 'dddddddddddddddddddddd', 'fdf', 'fdssssssssss', 'fff', 'fddddddd', 'fd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week2_table`
--

CREATE TABLE `week2_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week2_table`
--

INSERT INTO `week2_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'Presentar informe comandos en c++', '2018-03-01 00:09:16', 'practica', 'Presentar informe comandos en c++', 'practica', 'Presentar informe comandos en c++', 'practica', 'Presentar informe comandos en c++', 'practica', 'Presentar informe comandos en c++', 'practica'),
(56, 'Pepito Perez Salgado', '111111', 'sdfffffffffffffff', '2018-03-01 01:39:42', 'r', 'sdfffffffffffffff', 'r', 'sdfffffffffffffff', 'r', 'sdfffffffffffffff', 'r', 'sdfffffffffffffff', 'r');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week3_table`
--

CREATE TABLE `week3_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week3_table`
--

INSERT INTO `week3_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'Programar un sistema crud', '2018-03-01 00:09:43', 'practica', 'Programar un sistema crud', 'practica', 'Programar un sistema crud', 'practica', 'Programar un sistema crud', 'practica', 'Programar un sistema crud', 'practica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week4_table`
--

CREATE TABLE `week4_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week4_table`
--

INSERT INTO `week4_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'Programar un sistema crud java', '2018-03-01 00:10:23', 'aprendizaje', 'Programar un sistema crud java', 'aprendizaje', 'Programar un sistema crud java', 'aprendizaje', 'Programar un sistema crud java', 'aprendizaje', 'Programar un sistema crud java', 'aprendizaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week5_table`
--

CREATE TABLE `week5_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week5_table`
--

INSERT INTO `week5_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'Programar un sistema crud c++', '2018-03-01 00:10:42', 'Aprendizaje', 'Programar un sistema crud c++', 'Aprendizaje', 'Programar un sistema crud c++', 'Aprendizaje', 'Programar un sistema crud c++', 'Aprendizaje', 'Programar un sistema crud c++', 'Aprendizaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week6_table`
--

CREATE TABLE `week6_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week6_table`
--

INSERT INTO `week6_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'Presentar un sistema de matricula', '2018-03-01 00:11:25', 'practica', 'Presentar un sistema de matricula', 'practica', 'Presentar un sistema de matricula', 'practica', 'Presentar un sistema de matricula', 'practica', 'Presentar un sistema de matricula', 'practica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week7_table`
--

CREATE TABLE `week7_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week7_table`
--

INSERT INTO `week7_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'Hacer 50 ejercicios en java relacionados con formulas amematicas', '2018-03-01 00:12:28', 'practica', 'Hacer 50 ejercicios en java relacionados con formulas amematicas', 'practica', 'Hacer 50 ejercicios en java relacionados con formulas amematicas', 'practica', 'Hacer 50 ejercicios en java relacionados con formulas amematicas', 'practica', 'Hacer 50 ejercicios en java relacionados con formulas amematicas', 'practica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week8_table`
--

CREATE TABLE `week8_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week8_table`
--

INSERT INTO `week8_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'Desarrollar un sistema ilerning', '2018-03-01 00:13:27', 'practica', 'Desarrollar un sistema ilerning', 'practica', 'Desarrollar un sistema ilerning', 'practica', 'Desarrollar un sistema ilerning', 'practica', 'Desarrollar un sistema ilerning', 'practica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week9_table`
--

CREATE TABLE `week9_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week9_table`
--

INSERT INTO `week9_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'hacer informe final y software final', '2018-03-01 00:14:54', 'practica', 'hacer informe final y software final', 'practica', 'hacer informe final y software final', 'practica', 'hacer informe final y software final', 'practica', 'hacer informe final y software final', 'practica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `week10_table`
--

CREATE TABLE `week10_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `index_number` varchar(100) NOT NULL,
  `monday_job_assigned` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monday_special_skill_acquired` mediumtext NOT NULL,
  `tuesday_job_assigned` mediumtext NOT NULL,
  `tuesday_special_skill_acquired` mediumtext NOT NULL,
  `wednesday_job_assigned` mediumtext NOT NULL,
  `wednesday_special_skill_acquired` mediumtext NOT NULL,
  `thursday_job_assigned` mediumtext NOT NULL,
  `thursday_special_skill_acquired` mediumtext NOT NULL,
  `friday_job_assigned` mediumtext NOT NULL,
  `friday_special_skill_acquired` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `week10_table`
--

INSERT INTO `week10_table` (`id`, `username`, `index_number`, `monday_job_assigned`, `date`, `monday_special_skill_acquired`, `tuesday_job_assigned`, `tuesday_special_skill_acquired`, `wednesday_job_assigned`, `wednesday_special_skill_acquired`, `thursday_job_assigned`, `thursday_special_skill_acquired`, `friday_job_assigned`, `friday_special_skill_acquired`) VALUES
(54, 'Lious Vuiton', '04/2013/0688D', 'This', '2017-04-23 19:17:22', 'A', 'Lious', 'Vuiton', 'The', 'Only', 'Stanger', 'Nanger', 'In', 'Lown'),
(55, 'tusolutionweb blooger', '04/2014/0688D', 'hacer informe final y software final', '2018-03-01 00:15:12', 'practica', 'hacer informe final y software final', 'practica', 'hacer informe final y software final', 'practica', 'hacer informe final y software final', 'practica', 'hacer informe final y software final', 'practica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `assigned_lecturers`
--
ALTER TABLE `assigned_lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `company_supervisor_grade`
--
ALTER TABLE `company_supervisor_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `industrial_registration`
--
ALTER TABLE `industrial_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registered_students`
--
ALTER TABLE `registered_students`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `students_assumption`
--
ALTER TABLE `students_assumption`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `supervisors_login`
--
ALTER TABLE `supervisors_login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `system_admin`
--
ALTER TABLE `system_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vira_receipts_paid`
--
ALTER TABLE `vira_receipts_paid`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vira_registration`
--
ALTER TABLE `vira_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visiting_lecturers`
--
ALTER TABLE `visiting_lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visiting_supervisor_grade`
--
ALTER TABLE `visiting_supervisor_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week1_table`
--
ALTER TABLE `week1_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week2_table`
--
ALTER TABLE `week2_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week3_table`
--
ALTER TABLE `week3_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week4_table`
--
ALTER TABLE `week4_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week5_table`
--
ALTER TABLE `week5_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week6_table`
--
ALTER TABLE `week6_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week7_table`
--
ALTER TABLE `week7_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week8_table`
--
ALTER TABLE `week8_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week9_table`
--
ALTER TABLE `week9_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `week10_table`
--
ALTER TABLE `week10_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `assigned_lecturers`
--
ALTER TABLE `assigned_lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `company_supervisor_grade`
--
ALTER TABLE `company_supervisor_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `industrial_registration`
--
ALTER TABLE `industrial_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registered_students`
--
ALTER TABLE `registered_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `students_assumption`
--
ALTER TABLE `students_assumption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `supervisors_login`
--
ALTER TABLE `supervisors_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `system_admin`
--
ALTER TABLE `system_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vira_receipts_paid`
--
ALTER TABLE `vira_receipts_paid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vira_registration`
--
ALTER TABLE `vira_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `visiting_lecturers`
--
ALTER TABLE `visiting_lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `visiting_supervisor_grade`
--
ALTER TABLE `visiting_supervisor_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `week1_table`
--
ALTER TABLE `week1_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `week2_table`
--
ALTER TABLE `week2_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `week3_table`
--
ALTER TABLE `week3_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `week4_table`
--
ALTER TABLE `week4_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `week5_table`
--
ALTER TABLE `week5_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `week6_table`
--
ALTER TABLE `week6_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `week7_table`
--
ALTER TABLE `week7_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `week8_table`
--
ALTER TABLE `week8_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `week9_table`
--
ALTER TABLE `week9_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `week10_table`
--
ALTER TABLE `week10_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
