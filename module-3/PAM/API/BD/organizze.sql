-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 15-Mar-2023 às 01:12
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `organizze`
--
CREATE DATABASE IF NOT EXISTS `organizze` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `organizze`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tab_user`
--

CREATE TABLE IF NOT EXISTS `tab_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `dataCadastro` date DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `senha` varchar(16) DEFAULT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `sobrenome` varchar(90) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nasc` date DEFAULT NULL,
  `cep` varchar(8) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(250) DEFAULT NULL,
  `bairro` varchar(90) DEFAULT NULL,
  `cidade` varchar(90) DEFAULT NULL,
  `imagem` varchar(90) DEFAULT NULL,
  `receitaTotal` double DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `tab_user`
--

INSERT INTO `tab_user` (`id_user`, `dataCadastro`, `email`, `senha`, `nome`, `sobrenome`, `telefone`, `sexo`, `nasc`, `cep`, `endereco`, `numero`, `complemento`, `bairro`, `cidade`, `imagem`, `receitaTotal`) VALUES
(1, '2002-05-21', 'simplessimploeriodasimplicidadessimples@gmail.com', '123', 'yan', 'wendel', '1198003322', 'm', '2002-10-25', '1235555', 'rua miranhas', '36', 'apt 15', 'tatuape', 'são paulo', 'img02.jpg', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
