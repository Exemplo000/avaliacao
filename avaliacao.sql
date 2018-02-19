-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19-Fev-2018 às 17:01
-- Versão do servidor: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avaliacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_categorias`
--

CREATE TABLE IF NOT EXISTS `tbl_categorias` (
  `cat_id` int(11) NOT NULL,
  `cat_nome` varchar(150) NOT NULL,
  `cat_status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_categorias`
--

INSERT INTO `tbl_categorias` (`cat_id`, `cat_nome`, `cat_status`) VALUES
(1, 'Programador', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_clientes`
--

CREATE TABLE IF NOT EXISTS `tbl_clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nome` varchar(150) NOT NULL,
  `cli_idade` int(11) NOT NULL,
  `cli_telefone` varchar(20) NOT NULL,
  `cli_endereco` varchar(150) NOT NULL,
  `cli_categoria` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`cli_id`, `cli_nome`, `cli_idade`, `cli_telefone`, `cli_endereco`, `cli_categoria`) VALUES
(1, 'Leonardo', 21, '4132060150', 'R. Pedro...', 1),
(2, 'João', 21, '4132060150', 'R. Parana...', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_categorias`
--
ALTER TABLE `tbl_categorias`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
