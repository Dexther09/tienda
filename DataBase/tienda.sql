-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2022 a las 19:51:37
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(7) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `Nombre`, `Clave`) VALUES
(1, 'admin', '7815696ecbf1c96e6894b779456d330e'),
(3, 'dbcm1', '8f0c17a91c9f92f9421533987945a2ec'),
(4, 'oscar', '7815696ecbf1c96e6894b779456d330e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `CodigoCat` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCat`, `Nombre`, `Descripcion`) VALUES
('Das-234', 'SmartPhone', 'Celulares y tablets'),
('Elc-003', 'Trabajo', 'Equipos de computo, comunicacion, etc.'),
('ENT-001', 'Imagen y sonido', 'Figuran electrodomesticos respecto a la musica como al entretenimiento'),
('GB-002', 'Cocina', 'Articulos de uso en la cocina'),
('Ph-004', 'Personal', 'Uso de cocina, cuidado personal y hogar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `NIT` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Apellido` varchar(70) NOT NULL,
  `Clave` text NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`NIT`, `Nombre`, `NombreCompleto`, `Apellido`, `Clave`, `Direccion`, `Telefono`, `Email`) VALUES
('9115902', 'dbcm', 'David', 'Costas', '7815696ecbf1c96e6894b779456d330e', 'Av. Peru', '77735973', 'dbcm2012@gmail.com'),
('9115903', 'juanperez', 'Juan', 'Perez Lopez', '7815696ecbf1c96e6894b779456d330e', 'Av. Peru', '77735977', 'dbc2012@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentabanco`
--

CREATE TABLE `cuentabanco` (
  `id` int(50) NOT NULL,
  `NumeroCuenta` varchar(100) NOT NULL,
  `NombreBanco` varchar(100) NOT NULL,
  `NombreBeneficiario` varchar(100) NOT NULL,
  `TipoCuenta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentabanco`
--

INSERT INTO `cuentabanco` (`id`, `NumeroCuenta`, `NombreBanco`, `NombreBeneficiario`, `TipoCuenta`) VALUES
(1, '1503029349', 'Banco de Credito', 'SmartHome', 'Caja de ahorro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `NumPedido` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `CantidadProductos` int(20) NOT NULL,
  `PrecioProd` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`NumPedido`, `CodigoProd`, `CantidadProductos`, `PrecioProd`) VALUES
(2, 'Mic001`', 1, '1044.00'),
(3, 'asdq-123', 2, '9300.00'),
(4, 'Mic001`', 4, '1044.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(20) NOT NULL,
  `CodigoProd` varchar(30) NOT NULL,
  `NombreProd` varchar(30) NOT NULL,
  `CodigoCat` varchar(30) NOT NULL,
  `Precio` decimal(30,2) NOT NULL,
  `Descuento` int(2) NOT NULL,
  `Modelo` varchar(30) NOT NULL,
  `Marca` varchar(30) NOT NULL,
  `Stock` int(20) NOT NULL,
  `NITProveedor` varchar(30) NOT NULL,
  `Imagen` varchar(150) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Estado` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `CodigoProd`, `NombreProd`, `CodigoCat`, `Precio`, `Descuento`, `Modelo`, `Marca`, `Stock`, `NITProveedor`, `Imagen`, `Nombre`, `Estado`) VALUES
(1, 'Adf123', 'Samsung Qe75qn900a 75 Neo Qled', 'ENT-001', '8500.00', 0, 'Qe75qn900a 75', 'Samsung', 15, '000000001', 'Adf123.jpg', 'admin', 'Activo'),
(2, 'Adf101', 'LG Oled65c1 65 Inch Class 4k S', 'ENT-001', '2088.00', 0, 'Oled65c1', 'LG', 12, '000000002', 'Adf101.jpg', 'admin', 'Activo'),
(3, 'Adf1009', 'Samsung Class Qled Q70a Series', 'ENT-001', '8889.00', 0, 'Qled Q70a', 'Samsung', 5, '000000001', 'Adf1009.jpg', 'admin', 'Activo'),
(4, 'Son001', 'Bose S1 Pro Multi-position Pa', 'ENT-001', '2800.00', 0, 'S1 Pro Multi-position', 'Bose', 16, '000000004', 'Son001.jpg', 'admin', 'Activo'),
(5, 'Song002', 'Jbl Boombox 3 Squad Portable B', 'ENT-001', '2540.00', 0, '3 Squad Portable', 'JBL', 21, '000000006', 'Song002.jpg', 'admin', 'Activo'),
(6, 'Song003', 'Sony Coral Red Xb23 Extra Bass', 'ENT-001', '522.00', 0, 'Xb23', 'Sony', 42, '000000000', 'Song003.jpg', 'admin', 'Activo'),
(7, 'Cam-001', 'Canon Eos 5d Mark Iv 1', 'ENT-001', '5524.00', 0, 'Eos 5d Mark Iv 1', 'Canon', 12, '000000003', 'Cam-001.jpg', 'admin', 'Activo'),
(8, 'Song004', 'Jbl Partybox 1000', 'ENT-001', '1500.00', 0, 'Partybox 1000', 'JBL', 5, '000000006', 'Song004.jpg', 'admin', 'Activo'),
(9, 'Lav001', 'Lavadora Secadora LG 22kg', 'GB-002', '2772.00', 0, 'MCH001', 'LG', 5, '000000002', 'Lav001.jpg', 'admin', 'Activo'),
(10, 'Mic001`', 'Samsung 1.4 Cu. Ft. Fingerprin', 'GB-002', '1044.00', 0, 'Resistant Black Stainless', 'Samsung', 10, '000000000', 'Mic001`.jpg', 'admin', 'Activo'),
(11, 'asdq-123', 'Iphone 13 ProMax', 'Das-234', '9300.00', 0, '13 ProMax', 'Apple', 10, '000000007', 'asdq-123.jpg', 'admin', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `NITProveedor` varchar(30) NOT NULL,
  `NombreProveedor` varchar(30) NOT NULL,
  `Direccion` varchar(200) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `PaginaWeb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`NITProveedor`, `NombreProveedor`, `Direccion`, `Telefono`, `PaginaWeb`) VALUES
('000000000', 'Sony', 'Calle Eloy Salmon', '0000000', ''),
('000000001', 'Samsung', 'Calle Eloy Salmon', '0000001', ''),
('000000002', 'LG', 'Calle Eloy Salmon', '0000002', ''),
('000000003', 'Canon', 'Calle Eloy Salmon', '0000003', ''),
('000000004', 'Bose', 'Calle Eloy Salmon', '0000004', ''),
('000000005', 'Hoster', 'Calle Eloy Salmon', '0000005', ''),
('000000006', 'JBL', 'Calle Eloy Salmon', '0000006', ''),
('000000007', 'Philips', 'Av Prado', '0000006', 'https://www.philips.es/c-m-so/');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `NumPedido` int(20) NOT NULL,
  `Fecha` varchar(150) NOT NULL,
  `NIT` varchar(30) NOT NULL,
  `TotalPagar` decimal(30,2) NOT NULL,
  `Estado` varchar(150) NOT NULL,
  `NumeroDeposito` varchar(50) NOT NULL,
  `TipoEnvio` varchar(37) NOT NULL,
  `Adjunto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`NumPedido`, `Fecha`, `NIT`, `TotalPagar`, `Estado`, `NumeroDeposito`, `TipoEnvio`, `Adjunto`) VALUES
(2, '17-10-2022', '9115903', '1044.00', 'Entregado', '123345', 'Recoger Por Tienda', 'comprobante_1.png'),
(3, '17-10-2022', '9115903', '18600.00', 'Pendiente', '2231415', 'Envio Por Currier', 'comprobante_2.png'),
(4, '17-10-2022', '9115903', '4176.00', 'Pendiente', '234235', 'Recoger Por Tienda', 'comprobante_3.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`CodigoCat`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`NIT`);

--
-- Indices de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD KEY `NumPedido` (`NumPedido`),
  ADD KEY `CodigoProd` (`CodigoProd`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoCat` (`CodigoCat`),
  ADD KEY `NITProveedor` (`NITProveedor`),
  ADD KEY `Agregado` (`Nombre`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`NITProveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `NIT` (`NIT`),
  ADD KEY `NIT_2` (`NIT`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cuentabanco`
--
ALTER TABLE `cuentabanco`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `NumPedido` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD CONSTRAINT `detalle_ibfk_9` FOREIGN KEY (`NumPedido`) REFERENCES `venta` (`NumPedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_7` FOREIGN KEY (`CodigoCat`) REFERENCES `categoria` (`CodigoCat`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_8` FOREIGN KEY (`NITProveedor`) REFERENCES `proveedor` (`NITProveedor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`NIT`) REFERENCES `cliente` (`NIT`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
