-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-05-2020 a las 18:51:31
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_traduccion` int(12) NOT NULL,
  `id_usuario` int(12) NOT NULL,
  `fecha` date NOT NULL,
  `cant_palabras` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_traduccion`, `id_usuario`, `fecha`, `cant_palabras`) VALUES
(113, 1, '2020-05-04', 2),
(114, 1, '2020-05-04', 3),
(115, 1, '2020-05-04', 4),
(116, 1, '2020-05-04', 0),
(117, 1, '2020-05-04', 1),
(118, 1, '2020-05-04', 2),
(119, 1, '2020-05-04', 1),
(120, 1, '2020-05-04', 1),
(121, 1, '2020-05-04', 1),
(122, 1, '2020-05-04', 1),
(123, 1, '2020-05-04', 2),
(124, 1, '2020-05-04', 2),
(125, 1, '2020-05-04', 2),
(126, 1, '2020-05-04', 2),
(127, 1, '2020-05-04', 2),
(128, 1, '2020-05-04', 3),
(129, 1, '2020-05-04', 2),
(130, 1, '2020-05-04', 2),
(131, 1, '2020-05-04', 2),
(132, 1, '2020-05-04', 2),
(133, 1, '2020-05-04', 2),
(134, 1, '2020-05-04', 1),
(135, 1, '2020-05-04', 0),
(136, 1, '2020-05-04', 1),
(137, 1, '2020-05-04', 1),
(138, 1, '2020-05-04', 2),
(139, 1, '2020-05-04', 2),
(140, 1, '2020-05-04', 4),
(141, 1, '2020-05-04', 4),
(142, 1, '2020-05-04', 4),
(143, 1, '2020-05-04', 4),
(144, 1, '2020-05-04', 4),
(145, 1, '2020-05-04', 4),
(146, 1, '2020-05-04', 4),
(147, 1, '2020-05-04', 4),
(148, 1, '2020-05-04', 4),
(149, 1, '2020-05-04', 4),
(150, 1, '2020-05-04', 4),
(151, 1, '2020-05-04', 4),
(152, 1, '2020-05-04', 4),
(153, 1, '2020-05-04', 4),
(154, 1, '2020-05-04', 4),
(155, 1, '2020-05-04', 4),
(156, 1, '2020-05-04', 4),
(157, 1, '2020-05-04', 4),
(158, 1, '2020-05-04', 4),
(159, 1, '2020-05-04', 4),
(160, 1, '2020-05-04', 4),
(161, 1, '2020-05-04', 4),
(162, 1, '2020-05-04', 4),
(163, 1, '2020-05-04', 4),
(164, 1, '2020-05-04', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `nombre` varchar(42) NOT NULL,
  `referencia` varchar(42) NOT NULL,
  `id_imagen` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`nombre`, `referencia`, `id_imagen`) VALUES
('hola', 'assets/img/hola.png', 1),
('mundo', 'assets/img/mundo.jpg', 2),
('sol', 'assets/img/sol.jpg', 3),
('carro', 'assets/img/carro.jpg', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_traduccion` int(12) NOT NULL,
  `id_imagen` int(10) NOT NULL,
  `repetida` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_traduccion`, `id_imagen`, `repetida`) VALUES
(114, 1, 2),
(115, 1, 2),
(115, 2, 2),
(118, 1, 2),
(122, 1, 1),
(123, 1, 1),
(124, 1, 1),
(125, 1, 1),
(126, 1, 1),
(127, 2, 2),
(128, 2, 2),
(129, 1, 1),
(130, 1, 1),
(131, 1, 1),
(132, 2, 1),
(133, 1, 1),
(134, 1, 1),
(136, 1, 1),
(137, 1, 1),
(138, 2, 1),
(139, 1, 1),
(140, 3, 1),
(141, 3, 1),
(142, 4, 1),
(143, 3, 1),
(144, 4, 1),
(145, 4, 1),
(146, 2, 1),
(147, 4, 1),
(148, 3, 1),
(149, 3, 1),
(150, 1, 1),
(151, 3, 1),
(152, 2, 1),
(153, 3, 1),
(154, 3, 1),
(155, 3, 1),
(156, 4, 1),
(157, 2, 1),
(158, 4, 1),
(159, 2, 1),
(160, 1, 1),
(161, 3, 1),
(162, 1, 1),
(163, 3, 1),
(164, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(42) NOT NULL,
  `contrasenia_usuario` varchar(42) NOT NULL,
  `correo_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `contrasenia_usuario`, `correo_usuario`) VALUES
(1, 'Anderson', '123', 'anderson@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_traduccion`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD KEY `id_traduccion` (`id_traduccion`),
  ADD KEY `id_imagen` (`id_imagen`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_traduccion` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`id_traduccion`) REFERENCES `historial` (`id_traduccion`),
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`id_imagen`) REFERENCES `imagenes` (`id_imagen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
