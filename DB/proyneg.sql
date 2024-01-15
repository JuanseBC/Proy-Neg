-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2024 a las 02:32:01
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyneg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doc`
--

CREATE TABLE `doc` (
  `idDoc` int(20) NOT NULL,
  `Doc` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doc`
--

INSERT INTO `doc` (`idDoc`, `Doc`) VALUES
(1, 'C.C'),
(2, 'T.I'),
(3, 'C.E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idest` int(20) NOT NULL,
  `Estado` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idest`, `Estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idfactura` int(200) NOT NULL,
  `Factura` varchar(200) DEFAULT NULL,
  `Proveedor` varchar(200) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Archivo` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idfactura`, `Factura`, `Proveedor`, `fecha`, `Archivo`) VALUES
(1, 'Peluches', 'PELUCHES S.A.S', '2023-10-23', NULL),
(2, 'Ollas metalicas', 'Metal S.A.S', '2023-02-03', NULL),
(3, 'Canasta', 'SERTICA', '2023-01-14', NULL),
(4, 'Loza', 'Corona S.A.S', '2023-05-18', NULL),
(5, 'Vasos mugs', 'aranda', '2023-07-12', NULL),
(6, 'Cobijas', 'Sabanas', '2023-06-28', NULL),
(7, 'llaveros', 'orlando', '2023-04-06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idprod` int(255) NOT NULL,
  `nomprod` varchar(300) DEFAULT NULL,
  `valprod` bigint(255) DEFAULT NULL,
  `idcateg` varchar(300) DEFAULT NULL,
  `archivo` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idprod`, `nomprod`, `valprod`, `idcateg`, `archivo`) VALUES
(1, 'Posillo Mugs', 8500, 'Hogar', NULL),
(2, 'Audifonos', 10000, 'Tecnologia', NULL),
(3, 'Trapero 500gr', 6500, 'Aseo', NULL),
(4, 'Cortina en tiras', 5000, 'Piñateria', NULL),
(5, 'Esfero OFI-EsCO', 1000, 'Papeleria', NULL),
(875, 'juego de ollas imusa', 250000, 'Hogar', 'Juego imusa.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(20) NOT NULL,
  `Rol` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `Rol`) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipprod`
--

CREATE TABLE `tipprod` (
  `idcateg` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipprod`
--

INSERT INTO `tipprod` (`idcateg`) VALUES
('Aseo'),
('Hogar'),
('Papeleria'),
('Piñateria'),
('Tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idDoc` int(20) NOT NULL,
  `Doc` varchar(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Contrasena` varbinary(200) NOT NULL,
  `idrol` int(20) NOT NULL,
  `idest` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idDoc`, `Doc`, `Nombre`, `Apellido`, `Contrasena`, `idrol`, `idest`) VALUES
(1, '80053046', 'Luis Alfredo', 'Beltran Hidalgo', 0x3831646339626462353264303464633230303336646264383331336564303535, 1, 1),
(1, '1987654345', 'Elizabeth', 'BCamelo rojas', 0x3831646339626462353264303464633230303336646264383331336564303535, 1, 1),
(1, '65476453', 'Carlos', 'Perez', 0x3831646339626462353264303464633230303336646264383331336564303535, 2, 1),
(1, '87657453', 'Felipe', 'Torres', 0x3831646339626462353264303464633230303336646264383331336564303535, 2, 1),
(1, '178454323', 'Laura', 'Maldonado', 0x3831646339626462353264303464633230303336646264383331336564303535, 3, 1),
(1, '9087675645', 'Angie', 'Cuervo', 0x3831646339626462353264303464633230303336646264383331336564303535, 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doc`
--
ALTER TABLE `doc`
  ADD PRIMARY KEY (`idDoc`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idest`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idprod`),
  ADD KEY `idcateg` (`idcateg`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `tipprod`
--
ALTER TABLE `tipprod`
  ADD PRIMARY KEY (`idcateg`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Doc`),
  ADD KEY `idDoc` (`idDoc`),
  ADD KEY `idrol` (`idrol`),
  ADD KEY `idest` (`idest`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `doc`
--
ALTER TABLE `doc`
  MODIFY `idDoc` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `idest` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idfactura` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
