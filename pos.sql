-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2021 a las 00:36:10
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Baños y Aseo', '2021-05-20 18:00:00'),
(2, 'Cocina y utensilios', '2021-05-20 18:00:00'),
(3, 'Electrodomésticos', '2021-05-22 18:00:00'),
(4, 'Tecnología y seguridad', '2021-05-20 18:00:00'),
(5, 'Muebles y Decohogar', '2021-05-20 18:00:00'),
(6, 'Exterior y Servicios', '2021-05-20 18:00:00'),
(7, 'Terminaciones', '2021-05-20 18:00:00'),
(8, 'Ferretería y construcción', '2021-05-20 18:00:00'),
(9, 'Automóvil', '2021-05-20 18:00:00'),
(10, 'Infantil y juvenil', '2021-05-22 18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'Luis Baca', 70568402, 'alberto28@gmail.com', '996 150 422', 'Av. Arequipa 1040', '1995-02-16', 2, '2021-05-25 17:34:37', '2021-05-25 22:34:37'),
(2, 'Julio Saenz', 40655980, 'julio28@gmail.com', '986 759 880', 'Av. Los Olivos 1040', '1995-12-04', 0, '0000-00-00 00:00:00', '2021-05-22 17:05:32'),
(3, 'Jose Peña', 70546895, 'jose28@gmail.com', '984 863 003', 'Av. Los Alisos 802', '1996-09-06', 0, '0000-00-00 00:00:00', '2021-05-20 18:00:00'),
(4, 'Evo Morales', 40966705, 'morales28@gmail.com', '970 963 221', 'Av. 28 de Julio 704', '1998-04-02', 0, '0000-00-00 00:00:00', '2021-05-22 18:00:00'),
(5, 'María Quispe ', 40800569, 'maria28@gmail.com', '984 650 963', 'Av. Las Violetas 262', '1996-12-25', 0, '0000-00-00 00:00:00', '2021-05-22 18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Inodoro One Piece Estándar', 'vistas/img/productos/default/anonymous.png', 20, 500, 700, 0, '2021-05-20 18:00:00'),
(2, 1, '102', 'Inodoro One Piece Ártico Negro', 'vistas/img/productos/default/anonymous.png', 20, 500, 700, 0, '2021-05-22 18:00:00'),
(3, 1, '103', 'Inodoro Italgrif Cancún Blanco', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, 0, '2021-05-20 18:00:00'),
(4, 1, '104', 'Tanque para inodoro Punta Sal', 'vistas/img/productos/default/anonymous.png', 20, 100, 140, 0, '2021-05-20 18:00:00'),
(5, 1, '105', 'Asiento para inodoro elongado ', 'vistas/img/productos/default/anonymous.png', 20, 20, 28, 0, '2021-05-20 18:00:00'),
(6, 1, '106', 'Taza para inodoro Rapid Jet Plus', 'vistas/img/productos/default/anonymous.png', 20, 110, 154, 0, '2021-05-20 18:00:00'),
(7, 1, '107', 'Botonera Cromada Redonda', 'vistas/img/productos/default/anonymous.png', 20, 130, 182, 0, '2021-05-20 18:00:00'),
(8, 1, '108', 'Tapa de One piece Bali Bone', 'vistas/img/productos/default/anonymous.png', 20, 40, 56, 0, '2021-05-20 18:00:00'),
(9, 1, '109', 'Fluxómetro electrónico urinario', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2021-05-20 18:00:00'),
(10, 2, '201', 'Cocina empotrable vidrio templado ', 'vistas/img/productos/default/anonymous.png', 20, 900, 1260, 0, '2021-05-22 18:00:00'),
(11, 2, '202', 'Cocina empotrable Viena ', 'vistas/img/productos/default/anonymous.png', 20, 950, 1330, 0, '2021-05-20 18:00:00'),
(12, 2, '203', 'Cocina De Pie Barcelona Orange', 'vistas/img/productos/default/anonymous.png', 20, 980, 1372, 0, '2021-05-20 18:00:00'),
(13, 2, '204', 'Cocina A Gas Cmp6015Ag Mabe', 'vistas/img/productos/default/anonymous.png', 20, 990, 1386, 0, '2021-05-20 18:00:00'),
(14, 2, '205', 'Cocina a gas Indurama Granada', 'vistas/img/productos/default/anonymous.png', 20, 1000, 1400, 0, '2021-05-20 18:00:00'),
(15, 2, '206', 'Cocina empotrable acero inox 60 cm', 'vistas/img/productos/default/anonymous.png', 20, 1200, 1680, 0, '2021-05-20 18:00:00'),
(16, 3, '301', 'Refrigeradora Lg Sbs Ls63Spgk', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2021-05-20 18:00:00'),
(17, 3, '302', 'Lavadora LG WT17BSS6H Negro 17kg', 'vistas/img/productos/default/anonymous.png', 20, 1800, 2520, 0, '2021-05-20 18:00:00'),
(18, 3, '303', 'Hervidor eléctrico Holstein Inox', 'vistas/img/productos/default/anonymous.png', 20, 200, 280, 0, '2021-05-22 18:00:00'),
(19, 3, '304', 'Maquina de Pop Corn Holstein', 'vistas/img/productos/default/anonymous.png', 20, 250, 350, 0, '2021-05-20 18:00:00'),
(20, 3, '305', 'Horno eléctrico negro 9 litros', 'vistas/img/productos/default/anonymous.png', 20, 300, 420, 0, '2021-05-20 18:00:00'),
(21, 3, '306', 'Horno microondas 20 litros', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2021-05-20 18:00:00'),
(22, 3, '307', 'Plancha Holstein a vapor Base Cer?mica', 'vistas/img/productos/default/anonymous.png', 20, 200, 280, 0, '2021-05-20 18:00:00'),
(23, 4, '401', 'Ropero Cali 6 puertas 2 cajones Jacaranda', 'vistas/img/productos/default/anonymous.png', 20, 300, 420, 0, '2021-05-20 18:00:00'),
(24, 4, '402', 'Cómoda Galicia de 4 cajones', 'vistas/img/productos/default/anonymous.png', 20, 350, 490, 0, '2021-05-22 18:00:00'),
(25, 4, '403', 'Escritorio con estante Rabat Marrón', 'vistas/img/productos/default/anonymous.png', 20, 600, 840, 0, '2021-05-20 18:00:00'),
(26, 4, '404', 'Juego de dormitorio Reina con bául ', 'vistas/img/productos/404/691.jpg', 20, 800, 1120, 0, '2021-05-22 17:05:32'),
(27, 4, '405', 'Futón Alaska Rojo', 'vistas/img/productos/405/892.jpg', 20, 350, 490, 0, '2021-05-22 18:00:00'),
(28, 4, '406', 'Silla Gamer Racing Negro', 'vistas/img/productos/406/122.jpg', 20, 250, 350, 0, '2021-05-22 18:00:00'),
(29, 4, '407', 'Silla Gamer Racing Pro Negra', 'vistas/img/productos/407/981.jpg', 11, 300, 420, 1, '2021-05-25 22:34:37'),
(30, 4, '408', 'Silla Gamer Racing Pro Rojo', 'vistas/img/productos/408/523.jpg', 4, 300, 420, 1, '2021-05-25 22:34:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `email`,`password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Gerson Aranibar', 'admin', '', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/756.png', 1, '2021-05-25 17:32:28', '2021-05-25 22:32:28'),
(2, 'Pedro Castillox', 'especial', '', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Especial', 'vistas/img/usuarios/especial/955.png', 1, '0000-00-00 00:00:00', '2021-05-22 18:00:00'),
(3, 'Keiko Fujimorii', 'vendedor', '', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Vendedor', 'vistas/img/usuarios/vendedor/201.png', 1, '0000-00-00 00:00:00', '2021-05-22 18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(1, 10001, 1, 1, '[{\"id\":\"30\",\"descripcion\":\"Silla Gamer Racing Pro Rojo\",\"cantidad\":\"1\",\"stock\":\"4\",\"precio\":\"420\",\"total\":\"420\"},{\"id\":\"29\",\"descripcion\":\"Silla Gamer Racing Pro Negra\",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"420\",\"total\":\"420\"}]', 151.2, 840, 991.2, 'TD-4644578', '2021-05-25 22:34:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
