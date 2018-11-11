-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2017 a las 19:08:02
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carritocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Id` int(11) NOT NULL,
  `numeroventa` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` text COLLATE utf8_spanish_ci NOT NULL,
  `subtotal` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`Id`, `numeroventa`, `nombre`, `imagen`, `precio`, `cantidad`, `subtotal`) VALUES
(22, 1, 'hamburguesa', 'hamburguesa.jpg', '5500', '7', '38500'),
(23, 1, 'salchipapa', '623443_salchipapa.jpg', '12000', '9', '108000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'hamburguesa', 'es un alimento en forma de bocadillo de carne picada aglutinada en forma de filete, cocinado a la parrilla o a la plancha, aunque tambien puede freirse u hornearse. Fuera del ambito de habla hispana es mas comun encontrar la denominacion inglesa burger.', 'hamburguesa.jpg', 5500),
(2, 'perro caliente', 'es alimento en forma de bocadillo que se genera con la combinacion de una salchicha del tipo salchicha de Frankfurt, o vienesa hervida, o frita, servida en un pan con forma alargada que suele acompanarse con algun aderezo como salsa de tomate y mostaza.', 'perro caliente.jpg', 6000),
(3, 'pizza', 'es un pan plano horneado elaborado con harina de trigo, sal, agua y levadura, y cubierto con salsa de tomate y otros ingredientes como queso, salami, champinones, cebolla, jamon o aceitunas. Original de la cocina napolitana (Italia), se ha hecho muy popular en todo el mundo y presenta muy diversas variantes.', 'pizza.jpg', 30000),
(4, 'spagueti', ' El Spaghetti es una pasta larga con multiples y faciles formas de preparacion; perfecta para acompanar con salsas, carnes y verduras. Disfruta ', 'spagueti.jpg', 13000),
(6, 'salchipapa', 'Consiste en un plato de salchichas fritas, enteras o cortadas en rodajas, acompanadas de papas fritas, diversas salsas (mostaza, mayonesa, ketchup y aji) y ensalada.', '623443_salchipapa.jpg', 12000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `Usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `Password` text COLLATE utf8_spanish_ci NOT NULL,
  `Imagen` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellido`, `Usuario`, `Password`, `Imagen`) VALUES
(1, 'kebin', 'ramirez', 'Kebinr', '1234', 'imagen.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
