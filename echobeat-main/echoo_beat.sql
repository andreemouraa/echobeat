-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/10/2024 às 16:23
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
-- Banco de dados: `echoo_beat`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `artista`
--

CREATE TABLE `artista` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `musica`
--

CREATE TABLE `musica` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `ID_Artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `playlist`
--

CREATE TABLE `playlist` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Musica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_usuario` (`ID_Usuario`);

--
-- Índices de tabela `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_artista` (`ID_Artista`);

--
-- Índices de tabela `playlist`
--
ALTER TABLE `playlist`
  ADD KEY `FK_musica` (`ID_Musica`),
  ADD KEY `FK_usuario2` (`ID_Usuario`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `artista`
--
ALTER TABLE `artista`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `musica`
--
ALTER TABLE `musica`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `artista`
--
ALTER TABLE `artista`
  ADD CONSTRAINT `FK_usuario` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID`);

--
-- Restrições para tabelas `musica`
--
ALTER TABLE `musica`
  ADD CONSTRAINT `FK_artista` FOREIGN KEY (`ID_Artista`) REFERENCES `artista` (`ID`);

--
-- Restrições para tabelas `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `FK_musica` FOREIGN KEY (`ID_Musica`) REFERENCES `musica` (`ID`),
  ADD CONSTRAINT `FK_usuario2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuario` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
