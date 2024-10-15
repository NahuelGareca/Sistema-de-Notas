-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2023 a las 13:24:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreta_epet7`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `num_lista` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `genero` char(1) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `dni` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `num_lista`, `nombres`, `apellidos`, `genero`, `id_grado`, `id_seccion`, `dni`) VALUES
(3, 2, 'David', 'Salguero Erazo', 'M', 1, 1, ''),
(4, 3, 'Andy Vladimir', 'Salguero', 'M', 1, 1, ''),
(6, 4, 'Maximiliano Nahuel', 'Gareca', 'M', 1, 1, ''),
(7, 12, 'asdf', 'asdf', 'M', 4, 2, '30524701'),
(9, 5, 'Maximiliano Nahuel', 'Riveira', 'M', 1, 3, ''),
(10, 2, 'Martin ', 'Lucero', 'M', 4, 2, ''),
(11, 1, 'Agustin', 'Lucero', 'M', 5, 1, ''),
(12, 1, 'Agustin', 'Quintero', 'M', 5, 2, ''),
(15, 10, 'lionel', 'messi', 'M', 6, 1, ''),
(16, 34, 'Jose', 'Palacio', 'M', 2, 1, ''),
(18, 122, 'Nahuu', 'Maax', 'M', 1, 1, ''),
(19, 132, 'agus', 'oliva', 'M', 1, 2, '46277272'),
(20, 1, 'Valentina', 'Candiyu', 'F', 5, 3, '47142702');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grados`
--

CREATE TABLE `grados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ciclo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `grados`
--

INSERT INTO `grados` (`id`, `nombre`, `ciclo`) VALUES
(1, 'Primer Año', 'I'),
(2, 'Segundo Año', 'I'),
(3, 'Tercer Año', 'II'),
(4, 'Cuarto Año', 'II'),
(5, 'Quinto Año', 'II'),
(6, 'Sexto Año', 'II');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `num_evaluaciones` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `num_evaluaciones`, `id_grado`) VALUES
(1, 'Lengua', 4, 1),
(3, 'Matemáticas', 4, 1),
(5, 'Lengua Extranjera(Inglés)', 4, 1),
(6, 'Prácticas Profesionalizantes', 4, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `nota` decimal(10,2) DEFAULT NULL,
  `observaciones` varchar(100) DEFAULT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `nota`, `observaciones`, `id_alumno`, `id_materia`) VALUES
(228, 1.00, '', 7, 1),
(229, 2.00, '', 7, 1),
(230, 3.00, '', 7, 1),
(231, 4.00, '', 7, 1),
(244, 10.00, 'Sin Observaciones', 10, 1),
(245, 9.00, 'Sin Observaciones', 10, 1),
(246, 2.00, 'Sin Observaciones', 10, 1),
(247, 1.00, 'Sin Observaciones', 10, 1),
(248, 9.00, 'S/Observaciones', 12, 1),
(249, 8.66, 'S/Observaciones', 12, 1),
(250, 10.00, 'S/Observaciones', 12, 1),
(251, 9.00, 'S/Observaciones', 12, 1),
(256, 8.00, 'aprobo', 15, 6),
(257, 6.00, 'aprobo', 15, 6),
(258, 4.00, 'aprobo', 15, 6),
(259, 5.00, 'aprobo', 15, 6),
(264, 7.00, '', 16, 5),
(265, 8.00, '', 16, 5),
(266, 9.00, '', 16, 5),
(267, 6.00, '', 16, 5),
(268, 7.00, 'S/Observaciones', 3, 1),
(269, 8.00, 'S/Observaciones', 3, 1),
(270, 9.00, 'S/Observaciones', 3, 1),
(271, 6.00, 'S/Observaciones', 3, 1),
(272, 9.00, '', 4, 1),
(273, 9.00, '', 4, 1),
(274, 7.00, '', 4, 1),
(275, 6.00, '', 4, 1),
(276, 7.00, '', 6, 1),
(277, 8.00, '', 6, 1),
(278, 9.00, '', 6, 1),
(279, 6.00, '', 6, 1),
(280, 1.00, 'solo se escribe con el novio', 20, 5),
(281, 5.00, 'solo se escribe con el novio', 20, 5),
(282, 7.00, 'solo se escribe con el novio', 20, 5),
(283, 4.00, 'solo se escribe con el novio', 20, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(11) NOT NULL,
  `nombre` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombre`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `rol` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `rol`) VALUES
(1, 'admin', 'admin123', 'EPET 7', 'Administrador'),
(2, 'profesor', 'profe123', 'Jose', 'Profesor'),
(3, 'maria', 'maria123', 'Maria', 'Padre'),
(4, 'Nahuel_Gareca', 'garekamaxi12', 'Nahuel Gareca', 'Administrador'),
(5, 'Andrea_Vergara', 'machulo', 'Andrea Vergara', 'Profesor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_alumnos_idgrado_idx` (`id_grado`),
  ADD KEY `FK_alumnos_idseccion_idx` (`id_seccion`);

--
-- Indices de la tabla `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_grado_materias_idx` (`id_grado`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_notas_id_alumno_idx` (`id_alumno`),
  ADD KEY `FK_notas_id_materia_idx` (`id_materia`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_2` (`rol`);
ALTER TABLE `users` ADD FULLTEXT KEY `rol` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `grados`
--
ALTER TABLE `grados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `FK_alumnos_idgrado` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_alumnos_idseccion` FOREIGN KEY (`id_seccion`) REFERENCES `secciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `FK_id_grado_materias` FOREIGN KEY (`id_grado`) REFERENCES `grados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `FK_notas_id_alumno` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_notas_id_materia` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
