-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 03:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teccell`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id_ordem_servico` int(11) NOT NULL,
  `nome_cliente` varchar(80) NOT NULL,
  `tel_cliente` varchar(16) NOT NULL,
  `email_cliente` varchar(100) DEFAULT NULL,
  `endereco_cliente` varchar(50) NOT NULL,
  `data_entrada_cliente` date NOT NULL,
  `data_devolutiva_cliente` date NOT NULL,
  `tipo_aparelho_cliente` varchar(30) NOT NULL,
  `marca_aparelho_cliente` varchar(30) NOT NULL,
  `modelo_aparelho_cliente` varchar(30) NOT NULL,
  `serial_aparelho_cliente` varchar(15) DEFAULT NULL,
  `reclamacao_cliente` varchar(255) NOT NULL,
  `especificacao_aparelho_cliente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`id_ordem_servico`, `nome_cliente`, `tel_cliente`, `email_cliente`, `endereco_cliente`, `data_entrada_cliente`, `data_devolutiva_cliente`, `tipo_aparelho_cliente`, `marca_aparelho_cliente`, `modelo_aparelho_cliente`, `serial_aparelho_cliente`, `reclamacao_cliente`, `especificacao_aparelho_cliente`) VALUES
(12, 'Leonardo Abadie Fernandes', '+55(11)979722460', 'whoam5118@gmail.com', 'Rua Luis Caminha e Menezes', '2022-11-27', '2022-11-29', 'Celular', 'Motorola', 'g5 plus', '5221974', 'tela trincada;\r\nbotão liga/desliga solto', 'tela trincada;\r\nbotão liga/desliga solto;\r\ncelular descarrega muito rápido'),
(13, 'Leonardo Abadie Fernandes', '+55(11)974737196', 'w&*#am5118@gmail.com', 'Rua Luis Caminha e Menezes', '2022-11-27', '2022-11-29', 'Celular', 'Motorola', 'g5 plus', '5221974', 'tela trincada;\r\nbotão liga/desliga solto', 'tela trincada;\r\nbotão liga/desliga solto;\r\ncelular descarrega muito rápido'),
(14, 'Miriam Antunes', '+55(11)952892020', 'trikinha.leoana@gmail.com', 'Rua Luís Caminha e Menezes', '2022-11-28', '2022-11-29', 'Celular', 'Xiaomi', 'POCO', '1974255', 'tela trincada;\r\nbotão de aumentar volume solto;\r\nvolume saindo muito baixo;', 'botão de aumentar volume solto;\r\nvolume saindo muito baixo;\r\ncelular descarrega muito rápido;\r\nesquenta muito;\r\ntrava demais;'),
(15, 'Miriam Antunes', '+55(11)952892020', 'trikinha.le27oana@gmail.com', 'Rua Luís Caminha e Menezes', '2022-11-28', '2022-11-29', 'Celular', 'Xiaomi', 'POCO', '1974255', 'tela trincada;\r\nbotão de aumentar volume solto;\r\nvolume saindo muito baixo;', 'botão de aumentar volume solto;\r\nvolume saindo muito baixo;\r\ncelular descarrega muito rápido;\r\nesquenta muito;\r\ntrava demais;'),
(16, 'Miriam Antunes', '+55(11)952892020', 'trikinha.le2#&-_7oana@gmail.com', 'Rua Luís Caminha e Menezes', '2022-11-28', '2022-11-29', 'Celular', 'Xiaomi', 'POCO', '1974255', 'tela trincada;\r\nbotão de aumentar volume solto;\r\nvolume saindo muito baixo;', 'botão de aumentar volume solto;\r\nvolume saindo muito baixo;\r\ncelular descarrega muito rápido;\r\nesquenta muito;\r\ntrava demais;');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_ordem_servico`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_ordem_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
