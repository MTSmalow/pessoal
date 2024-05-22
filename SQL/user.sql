-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/05/2024 às 14:53
-- Versão do servidor: 10.5.20-MariaDB
-- Versão do PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id21993320_pentaweb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `nome`, `celular`, `cpf`, `data`) VALUES
(30, 'Arogerio', '11997607960', '12345678900', '2024-04-25 13:36:15'),
(31, 'Ricardo ', '11997652233', '12345678955', '2024-04-25 13:36:15'),
(32, 'neusa', '11997607961', '12345678999', '2024-04-25 13:36:15'),
(33, 'João ', '11997607967', '12345678955', '2024-04-25 13:36:15'),
(38, 'Maria ', '11997607966', '12345678922', '2024-04-25 13:36:15'),
(39, 'Ronaldo ', '11997607932', '12345678900', '2024-04-25 13:36:15'),
(40, 'teste data', '11997608523', '12345678955', '2024-04-25 13:39:20'),
(41, 'teste neu', '16985235632', '12345678999', '2024-04-25 13:48:08'),
(42, 'teste qwet', '11997608532', '12345678999', '2024-04-25 14:06:51'),
(43, 'tine', '11998563213', '12345678955', '2024-04-25 14:24:32'),
(44, 'fuso New ', '11997608965', '12345678922', '2024-04-25 14:27:55'),
(45, 'teste 124', '11997607932', '12345678955', '2024-04-25 14:30:14'),
(46, 'teste exec', '11997608523', '12345678955', '2024-04-25 11:31:11'),
(47, 'Etec ', '11998563214', '78945612300', '2024-04-25 11:37:24'),
(48, 'denilso', '11369852314', '12345678900', '2024-04-25 19:38:20'),
(49, 'pentagono ', '11998652314', '12345678955', '2024-04-25 19:38:55'),
(50, 'Matai', '11992219204', '95125802201', '2024-04-25 19:39:05'),
(51, 'Matai', '11992219204', '95125802201', '2024-04-25 19:39:06'),
(52, 'julia', '11985211234', '98745612344', '2024-04-25 19:55:42'),
(53, 'huber', '11997607660', '12345678955', '2024-04-29 21:29:49'),
(54, 'Rogério ', '11998652314', '12345678966', '2024-05-02 08:48:39'),
(55, 'mouse ', '11956232587', '12345678955', '2024-05-02 08:50:50'),
(56, 'Douglas', '11997607952', '12345678944', '2024-05-03 14:25:46');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
