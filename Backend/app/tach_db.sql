-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 07:08 PM
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
-- Database: `tach_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aerich`
--

CREATE TABLE `aerich` (
  `id` int(11) NOT NULL,
  `version` varchar(255) NOT NULL,
  `app` varchar(100) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`content`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aerich`
--

INSERT INTO `aerich` (`id`, `version`, `app`, `content`) VALUES
(1, '0_20240507204955_init.py', 'models', '{\"models.Aerich\": {\"name\": \"models.Aerich\", \"app\": \"models\", \"table\": \"aerich\", \"abstract\": false, \"description\": null, \"docstring\": null, \"unique_together\": [], \"indexes\": [], \"pk_field\": {\"name\": \"id\", \"field_type\": \"IntField\", \"db_column\": \"id\", \"python_type\": \"int\", \"generated\": true, \"nullable\": false, \"unique\": true, \"indexed\": true, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"db_field_types\": {\"\": \"INT\"}}, \"data_fields\": [{\"name\": \"version\", \"field_type\": \"CharField\", \"db_column\": \"version\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 255}, \"db_field_types\": {\"\": \"VARCHAR(255)\"}}, {\"name\": \"app\", \"field_type\": \"CharField\", \"db_column\": \"app\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 100}, \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"content\", \"field_type\": \"JSONField\", \"db_column\": \"content\", \"python_type\": \"Union[dict, list]\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {}, \"db_field_types\": {\"\": \"JSON\", \"mssql\": \"NVARCHAR(MAX)\", \"oracle\": \"NCLOB\", \"postgres\": \"JSONB\"}}], \"fk_fields\": [], \"backward_fk_fields\": [], \"o2o_fields\": [], \"backward_o2o_fields\": [], \"m2m_fields\": []}, \"models.tach\": {\"name\": \"models.tach\", \"app\": \"models\", \"table\": \"tach\", \"abstract\": false, \"description\": null, \"docstring\": null, \"unique_together\": [], \"indexes\": [], \"pk_field\": {\"name\": \"id\", \"field_type\": \"IntField\", \"db_column\": \"id\", \"python_type\": \"int\", \"generated\": true, \"nullable\": false, \"unique\": true, \"indexed\": true, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"db_field_types\": {\"\": \"INT\"}}, \"data_fields\": [{\"name\": \"name\", \"field_type\": \"CharField\", \"db_column\": \"name\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 20}, \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"dec\", \"field_type\": \"CharField\", \"db_column\": \"dec\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 200}, \"db_field_types\": {\"\": \"VARCHAR(200)\"}}], \"fk_fields\": [], \"backward_fk_fields\": [], \"o2o_fields\": [], \"backward_o2o_fields\": [], \"m2m_fields\": []}}'),
(2, '1_20240507205052_update.py', 'models', '{\"models.Aerich\": {\"name\": \"models.Aerich\", \"app\": \"models\", \"table\": \"aerich\", \"abstract\": false, \"description\": null, \"docstring\": null, \"unique_together\": [], \"indexes\": [], \"pk_field\": {\"name\": \"id\", \"field_type\": \"IntField\", \"db_column\": \"id\", \"python_type\": \"int\", \"generated\": true, \"nullable\": false, \"unique\": true, \"indexed\": true, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"db_field_types\": {\"\": \"INT\"}}, \"data_fields\": [{\"name\": \"version\", \"field_type\": \"CharField\", \"db_column\": \"version\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 255}, \"db_field_types\": {\"\": \"VARCHAR(255)\"}}, {\"name\": \"app\", \"field_type\": \"CharField\", \"db_column\": \"app\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 100}, \"db_field_types\": {\"\": \"VARCHAR(100)\"}}, {\"name\": \"content\", \"field_type\": \"JSONField\", \"db_column\": \"content\", \"python_type\": \"Union[dict, list]\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {}, \"db_field_types\": {\"\": \"JSON\", \"mssql\": \"NVARCHAR(MAX)\", \"oracle\": \"NCLOB\", \"postgres\": \"JSONB\"}}], \"fk_fields\": [], \"backward_fk_fields\": [], \"o2o_fields\": [], \"backward_o2o_fields\": [], \"m2m_fields\": []}, \"models.tach\": {\"name\": \"models.tach\", \"app\": \"models\", \"table\": \"tach\", \"abstract\": false, \"description\": null, \"docstring\": null, \"unique_together\": [], \"indexes\": [], \"pk_field\": {\"name\": \"id\", \"field_type\": \"IntField\", \"db_column\": \"id\", \"python_type\": \"int\", \"generated\": true, \"nullable\": false, \"unique\": true, \"indexed\": true, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"ge\": 1, \"le\": 2147483647}, \"db_field_types\": {\"\": \"INT\"}}, \"data_fields\": [{\"name\": \"name\", \"field_type\": \"CharField\", \"db_column\": \"name\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 20}, \"db_field_types\": {\"\": \"VARCHAR(20)\"}}, {\"name\": \"dec\", \"field_type\": \"CharField\", \"db_column\": \"dec\", \"python_type\": \"str\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": null, \"description\": null, \"docstring\": null, \"constraints\": {\"max_length\": 200}, \"db_field_types\": {\"\": \"VARCHAR(200)\"}}, {\"name\": \"com\", \"field_type\": \"BooleanField\", \"db_column\": \"com\", \"python_type\": \"bool\", \"generated\": false, \"nullable\": false, \"unique\": false, \"indexed\": false, \"default\": false, \"description\": null, \"docstring\": null, \"constraints\": {}, \"db_field_types\": {\"\": \"BOOL\", \"mssql\": \"BIT\", \"oracle\": \"NUMBER(1)\", \"sqlite\": \"INT\"}}], \"fk_fields\": [], \"backward_fk_fields\": [], \"o2o_fields\": [], \"backward_o2o_fields\": [], \"m2m_fields\": []}}');

-- --------------------------------------------------------

--
-- Table structure for table `tach`
--

CREATE TABLE `tach` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dec` varchar(200) NOT NULL,
  `com` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tach`
--

INSERT INTO `tach` (`id`, `name`, `dec`, `com`) VALUES
(18, 'dfgf', 'undefined', 0),
(63, 'sdsd', 'undefined', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aerich`
--
ALTER TABLE `aerich`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tach`
--
ALTER TABLE `tach`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aerich`
--
ALTER TABLE `aerich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tach`
--
ALTER TABLE `tach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
