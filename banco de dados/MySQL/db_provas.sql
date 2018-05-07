-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Maio-2018 às 05:55
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_provas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `basePoints` int(11) NOT NULL,
  `startDate` varchar(50) NOT NULL,
  `endDate` varchar(50) NOT NULL,
  `isActive` varchar(10) NOT NULL,
  `alreadyAnswered` varchar(10) NOT NULL,
  `id_data_question` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `data`
--

INSERT INTO `data` (`id`, `name`, `description`, `category`, `basePoints`, `startDate`, `endDate`, `isActive`, `alreadyAnswered`, `id_data_question`) VALUES
(1, 'Teste de desenvolvimento', 'Teste para desenvolvedor back-end', 'Testes', 100, '2018-02-15 00:00:00', '2018-02-22 00:00:00', 'true', 'false', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_question`
--

CREATE TABLE `data_question` (
  `id_data` int(11) NOT NULL,
  `id_question` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `option`
--

CREATE TABLE `option` (
  `id` int(11) NOT NULL,
  `text` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `text` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `question_option`
--

CREATE TABLE `question_option` (
  `id_question` int(11) NOT NULL,
  `id_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_data_question` (`id_data_question`);

--
-- Indexes for table `data_question`
--
ALTER TABLE `data_question`
  ADD KEY `id_data` (`id_data`,`id_question`);

--
-- Indexes for table `option`
--
ALTER TABLE `option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_option`
--
ALTER TABLE `question_option`
  ADD KEY `id_question` (`id_question`,`id_option`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `option`
--
ALTER TABLE `option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
