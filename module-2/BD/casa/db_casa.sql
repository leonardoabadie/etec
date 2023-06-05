-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 27-Out-2022 às 01:24
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `db_casa`
--
CREATE DATABASE IF NOT EXISTS `db_casa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_casa`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluguel`
--

CREATE TABLE IF NOT EXISTS `aluguel` (
  `id_aluguel` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `id_imovel` int(11) DEFAULT NULL,
  `id_corretor` int(11) DEFAULT NULL,
  `id_inq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_aluguel`),
  KEY `fk_imovel` (`id_imovel`),
  KEY `fk_corretor` (`id_corretor`),
  KEY `fk_inquilino` (`id_inq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretor`
--

CREATE TABLE IF NOT EXISTS `corretor` (
  `id_corretor` int(11) NOT NULL AUTO_INCREMENT,
  `corretor_nome` varchar(80) NOT NULL,
  `corretor_cpf` varchar(11) NOT NULL,
  `corretor_celular` varchar(11) NOT NULL,
  `corretor_email` varchar(60) NOT NULL,
  `corretor_cep` varchar(8) NOT NULL,
  PRIMARY KEY (`id_corretor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE IF NOT EXISTS `imovel` (
  `id_imovel` int(11) NOT NULL AUTO_INCREMENT,
  `idProprietario` int(11) DEFAULT NULL,
  `imov_endereco` varchar(60) DEFAULT NULL,
  `imov_bairro` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_imovel`),
  KEY `fk_proprietario` (`idProprietario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inquilino`
--

CREATE TABLE IF NOT EXISTS `inquilino` (
  `id_inq` int(11) NOT NULL AUTO_INCREMENT,
  `inq_nome` varchar(80) NOT NULL,
  `inq_cpf` varchar(11) NOT NULL,
  `inq_celular` varchar(11) NOT NULL,
  `inq_email` varchar(60) NOT NULL,
  `inq_cep` varchar(8) NOT NULL,
  PRIMARY KEY (`id_inq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `proprietario`
--

CREATE TABLE IF NOT EXISTS `proprietario` (
  `idProprietario` int(11) NOT NULL AUTO_INCREMENT,
  `prop_nome` varchar(80) NOT NULL,
  `prop_cpf` varchar(11) NOT NULL,
  `prop_celular` varchar(11) DEFAULT NULL,
  `prop_email` varchar(60) DEFAULT NULL,
  `prop_cep` varchar(8) NOT NULL,
  PRIMARY KEY (`idProprietario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluguel`
--
ALTER TABLE `aluguel`
  ADD CONSTRAINT `fk_imovel` FOREIGN KEY (`id_imovel`) REFERENCES `imovel` (`id_imovel`),
  ADD CONSTRAINT `fk_corretor` FOREIGN KEY (`id_corretor`) REFERENCES `corretor` (`id_corretor`),
  ADD CONSTRAINT `fk_inquilino` FOREIGN KEY (`id_inq`) REFERENCES `inquilino` (`id_inq`);

--
-- Limitadores para a tabela `imovel`
--
ALTER TABLE `imovel`
  ADD CONSTRAINT `fk_proprietario` FOREIGN KEY (`idProprietario`) REFERENCES `proprietario` (`idProprietario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
