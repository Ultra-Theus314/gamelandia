-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/07/2024 às 14:22
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gamelandia`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `ID` int(10) NOT NULL,
  `NOME_COMP` varchar(150) NOT NULL,
  `ENDERECO` varchar(250) NOT NULL,
  `CPF` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `ID` int(10) NOT NULL,
  `PRODUTO` varchar(150) NOT NULL,
  `TIPO` char(50) NOT NULL,
  `PLATAFORMA` char(40) NOT NULL,
  `DESCRICAO` varchar(500) NOT NULL,
  `FOTO` char(150) NOT NULL,
  `VALOR` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`ID`, `PRODUTO`, `TIPO`, `PLATAFORMA`, `DESCRICAO`, `FOTO`, `VALOR`) VALUES
(28, 'DRIVER', 'GAME', 'PS2', 'Jogo de Ladrão de carros segue em sua continuação.', 'driverPS2.jpg', 80),
(29, 'ZELDA', 'GAME', 'NITENDO SWITCH', 'A saga Zelda continua neste jogo de aventura.', 'zeldawii.jpg', 50),
(30, 'god of war', 'GAME', 'PS3', 'Kratos continua matando gente e lutando contra os deuses da Grécia.', 'kratos.jpg', 250),
(33, 'PAC MAN', 'GAME', 'PC', 'COME COME', 'pacman.jpeg', 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
