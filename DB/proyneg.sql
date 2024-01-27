-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2024 a las 02:10:18
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idest`, `Estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facclient`
--

CREATE TABLE `facclient` (
  `idfactura` int(200) NOT NULL,
  `fecha` date DEFAULT NULL,
  `Archivo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facprov`
--

CREATE TABLE `facprov` (
  `idfactura` int(200) NOT NULL,
  `Factura` varchar(200) DEFAULT NULL,
  `idProv` int(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `Archivo` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idprod` varchar(255) NOT NULL,
  `nomprod` varchar(300) DEFAULT NULL,
  `valprod` bigint(255) DEFAULT NULL,
  `idcateg` varchar(300) DEFAULT NULL,
  `stock` int(200) DEFAULT NULL,
  `archivo` varchar(1000) DEFAULT NULL,
  `idest` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idprod`, `nomprod`, `valprod`, `idcateg`, `stock`, `archivo`, `idest`) VALUES
('6019', 'Lego 3D', 18000, 'Jugueteria', 2, 'legos3D.png', 1),
('FX-085BT', 'Bafle Foxtech', 82000, 'Tecnologia', 7, 'bafle foxtech.png', 1),
('GM-6146', 'Maquina de afeitar Geemy', 55000, 'Aseo', 4, 'bafle foxtech.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idProv` int(255) NOT NULL,
  `vendedor` varchar(200) NOT NULL,
  `empresa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(20) NOT NULL,
  `Rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipprod`
--

INSERT INTO `tipprod` (`idcateg`) VALUES
('Aseo'),
('Hogar'),
('Jugueteria'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idDoc`, `Doc`, `Nombre`, `Apellido`, `Contrasena`, `idrol`, `idest`) VALUES
(1, '178454323', 'Laura', 'Maldonado', 0x3832376363623065656138613730366334633334613136383931663834653762, 3, 1),
(1, '52830078', 'Elizabeth', 'Camelo Rojas', 0x3832376363623065656138613730366334633334613136383931663834653762, 1, 1),
(1, '65476453', 'Carlos', 'Perez', 0x3832376363623065656138613730366334633334613136383931663834653762, 2, 1),
(1, '80053046', 'Luis Alfredo', 'Beltran Hidalgo', 0x3832376363623065656138613730366334633334613136383931663834653762, 1, 1),
(1, '87657453', 'Felipe', 'Torres', 0x3832376363623065656138613730366334633334613136383931663834653762, 2, 1),
(1, '9087675645', 'Angie', 'Cuervo', 0x3832376363623065656138613730366334633334613136383931663834653762, 3, 1);

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
-- Indices de la tabla `facclient`
--
ALTER TABLE `facclient`
  ADD PRIMARY KEY (`idfactura`);

--
-- Indices de la tabla `facprov`
--
ALTER TABLE `facprov`
  ADD PRIMARY KEY (`idfactura`),
  ADD KEY `idProv` (`idProv`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idprod`),
  ADD KEY `idcateg` (`idcateg`),
  ADD KEY `idest` (`idest`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idProv`);

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
  ADD KEY `idest` (`idest`),
  ADD KEY `idrol` (`idrol`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facprov`
--
ALTER TABLE `facprov`
  ADD CONSTRAINT `facprov_ibfk_1` FOREIGN KEY (`idProv`) REFERENCES `proveedor` (`idProv`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idcateg`) REFERENCES `tipprod` (`idcateg`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idest`) REFERENCES `estado` (`idest`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idDoc`) REFERENCES `doc` (`idDoc`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idest`) REFERENCES `estado` (`idest`),
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
