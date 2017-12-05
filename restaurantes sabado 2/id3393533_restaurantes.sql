-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2017 at 06:46 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id3393533_restaurantes`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurante`
--

CREATE TABLE `restaurante` (
  `codigo_restaurante` int(10) NOT NULL,
  `nombre_restaurante` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `horario` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `restaurante`
--

INSERT INTO `restaurante` (`codigo_restaurante`, `nombre_restaurante`, `direccion`, `telefono`, `foto`, `horario`, `latitud`, `longitud`) VALUES
(1, 'londeros', 'Av. Libertadores #0E-60, Barrio Blanco, Cúcuta, Norte de Santander', '(7) 5833335', 'https://javq36.000webhostapp.com/restaurantes/londeros.jpg', '12pm a 1am', 7.876794, -72.496135),
(2, 'vianka', '#13a- a, Av. 3a Este #13a170, Cúcuta, Norte de Santander', '(7) 5891447', 'https://javq36.000webhostapp.com/restaurantes/vianka.jpg', '5pm a 11:30', 7.883673, -72.493729),
(3, 'winners', 'Calle 16 No. 0E-32, Caobos, Cúcuta, Norte de Santander', '304 5829015', 'https://javq36.000webhostapp.com/restaurantes/winners.jpg', '4pm a 2am', 7.881961, -72.497122),
(4, 'miyagi', 'Av. 3 Este #15A - 22, Cúcuta, Norte de Santander', '(7) 5721381', 'https://javq36.000webhostapp.com/restaurantes/miyagi.jpg', '12 pm a 3pm', 7.882537, -72.494188),
(5, 'venezia', 'CALLE 13 # 6AE-46 CONDOMINIO LA RIVIERA, Cúcuta, Norte de Santander', '(7) 5750006', 'https://javq36.000webhostapp.com/restaurantes/venezia.jpg', '4 pm a 11pm', 7.886466, -72.491016),
(6, 'juank', 'Av. 3 Este #1-128, Cúcuta, Norte de Santander', '(7) 5779113', 'https://javq36.000webhostapp.com/restaurantes/juank.jpg', '4:30 pm a 11:30pm', 7.895716, -72.496859),
(7, 'molinito', 'Av. Libertadores #18-30, Cúcuta, Norte de Santander', '(7) 5730122', 'https://javq36.000webhostapp.com/restaurantes/molinito.png', '12pm a 1am', 7.908091, -72.486911),
(8, 'corona de oro', 'Calle Libertadores con Calle 5A #13-50, Barrio Colsag, Cúcuta, Norte de Santander', '(7) 5751994', 'https://javq36.000webhostapp.com/restaurantes/corona%20de%20oro.png', '11:30am a 10 pm', 7.893797, -72.486644),
(9, 'Juan Parrilla', 'Calle 17 #17A-06 Local 1, Barrio Caoobos, Cúcuta, Norte de Santander', '(7) 5833231', 'https://javq36.000webhostapp.com/restaurantes/juan%20parrilla.jpg', '4 pm a 11 pm', 7.880688, -72.494067),
(10, 'creperie', 'Calle 9a #5E-61, La Riviera, Cúcuta, Norte de Santander', '302 2278738', 'https://javq36.000webhostapp.com/restaurantes/creperie.png', '4pm a 10pm', 7.889959, -72.492219);

-- --------------------------------------------------------

--
-- Table structure for table `tipo`
--

CREATE TABLE `tipo` (
  `cod` int(10) NOT NULL,
  `nombre_tipo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipo`
--

INSERT INTO `tipo` (`cod`, `nombre_tipo`) VALUES
(1, 'admin'),
(2, 'invitado');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cod_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `login`, `password`, `cod_tipo`) VALUES
(1, 'alex', 'alex', '123', 1),
(2, 'antonio', 'antonio', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`codigo_restaurante`);

--
-- Indexes for table `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `codigo_restaurante` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tipo`
--
ALTER TABLE `tipo`
  MODIFY `cod` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
