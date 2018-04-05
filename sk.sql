-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2017 a las 05:55:09
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `Articulo` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `imagen` varchar(50) NOT NULL,
  `Estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `Articulo`, `Nombre`, `Descripcion`, `imagen`, `Estado`) VALUES
(1, '001810', 'Alarma Automovil', 'Descripcion del articulo', 'alarmaauto.jpg', '1'),
(2, '1458299', 'Monitor Satelital', 'IMG99', 'verso.jpg', '1'),
(3, '2050', 'GPS.', 'Monitorea el area donde se encuentre.', 'img.jpg', '1'),
(4, 'M99', 'Monitoreo', 'Al detectar cualquiera de estos incidentes, el sensor transmite en segundos una seÃ±al a la P.C., esta la envia a la Central de Monitoreo a traves de telÃ©fono, celular, radio o radio CDPD (Cellular D', 'Monitoreoqwe.png', '1'),
(6, '456789', 'Prueba', 'DESCRR,....Â¿?sdas', 'Carlosdarioio.jpeg', '1'),
(7, 'a', 'Alerta', 'aaaaaaaaaaaaaaaaaaaaaaaa', 'alertaautt.png', '1'),
(8, 'b', 'Monitoreo de celulares', 'Diariamente las personas nos encontramos en constante movimiento, es por esto que con frecuencia se nos presentan diversos tipos de situaciones, ya sean peligros, amenazas, tentaciones, entre otras, d', 'monitoreo-de-celulares.jpg', '1'),
(9, 'c', 'flota', 'flota de vehiculos', 'flota.jpg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `art_clientes`
--

CREATE TABLE `art_clientes` (
  `id` int(8) NOT NULL,
  `idART` int(8) NOT NULL,
  `idTarjeta` int(8) NOT NULL,
  `idCLIENTE` int(8) NOT NULL,
  `Estado` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `art_clientes`
--

INSERT INTO `art_clientes` (`id`, `idART`, `idTarjeta`, `idCLIENTE`, `Estado`) VALUES
(1, 2, 3, 1, 'Activo'),
(2, 4, 3, 1, 'Reparacion'),
(3, 1, 3, 1, 'Activo'),
(5, 3, 1, 1, 'Activo'),
(6, 1, 1, 1, 'Activo'),
(7, 2, 1, 1, 'Cambio'),
(10, 7, 1, 5, 'Pendiente'),
(11, 8, 1, 5, 'Pendiente'),
(12, 7, 5, 8, 'Cambio'),
(13, 3, 5, 8, 'Pendiente'),
(14, 8, 5, 8, 'Pendiente'),
(15, 7, 6, 9, 'Pendiente'),
(16, 9, 6, 9, 'Pendiente'),
(17, 3, 6, 9, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `box`
--

CREATE TABLE `box` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `image`, `name`, `description`, `created_at`) VALUES
(1, 'prueba', 'prueba', 'prueba de catrgoy', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category2`
--

CREATE TABLE `category2` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comun`
--

CREATE TABLE `comun` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `short` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`id`, `short`, `name`, `kind`, `val`) VALUES
(1, 'title', 'Titulo del Sistema', 2, 'sk'),
(2, 'imp-name', 'Nombre Impuesto', 2, 'IVA'),
(3, 'imp-val', 'Valor Impuesto (%)', 2, '16'),
(4, 'currency', 'Simbolo de Moneda', 2, '$'),
(5, 'sys_logo', 'Logo', 4, ''),
(6, 'rest_bg', 'Fondo', 4, ''),
(7, 'footer_pdf', 'Footer PDF', 2, 'sk'),
(8, 'ticket_title', 'Titulo Ticket', 2, 'Sistema de Restaurante'),
(9, 'ticket_head1', 'Encabezado 1 Ticket', 2, 'Encabezado'),
(10, 'ticket_head2', 'Encabezado 2 Ticket', 2, 'Direccion del comercio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratodeservicio`
--

CREATE TABLE `contratodeservicio` (
  `id` int(11) NOT NULL,
  `Codigo` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `FechaInicio` varchar(200) DEFAULT NULL,
  `FechaFinal` varchar(200) DEFAULT NULL,
  `Estado` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contratodeservicio`
--

INSERT INTO `contratodeservicio` (`id`, `Codigo`, `Nombre`, `Telefono`, `Descripcion`, `FechaInicio`, `FechaFinal`, `Estado`) VALUES
(1, 'Codigo de cliente', 'Nombre del cliente', 'Tel del cliente', 'Breve descripcion del Contrato.', '2016-10-16', '2017-10-17', 'Activo'),
(2, '504', 'Name', 'tel', 'Desc', '2016-02-25', '2017-02-25', 'Activo'),
(4, 'Cl006', 'Socios Nombre', '32477582', 'Empresa adquiriendo nuestro contrato', '2016-10-25\r\n', '2017-10-25', 'Activo'),
(5, 'Socio99', 'Fotos ecal', '97541212', 'sin descripcion Quiero escuchalor', '2016-01-03', '2017-01-03', 'Inactivo'),
(6, 'CL8381', 'prueba', '1825', 'txt', '2016-12-10', '2017-12-14', 'Activo'),
(7, 'CL9115', 'prueba2', 'prueba2', 'prueba2', '2016-12-21', '2017-12-21', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `d`
--

CREATE TABLE `d` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `d`
--

INSERT INTO `d` (`id`, `name`, `is_active`) VALUES
(1, 'Entregado', 1),
(2, 'Pendiente', 0),
(3, 'Cancelado', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garticulos`
--

CREATE TABLE `garticulos` (
  `id` int(11) NOT NULL,
  `Codigo` varchar(50) DEFAULT NULL,
  `Nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giro`
--

CREATE TABLE `giro` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `is_visible` tinyint(1) DEFAULT '1',
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`id`, `name`, `capacity`, `x`, `y`, `is_visible`, `status`) VALUES
(1, '1', 6, 0, 0, 1, 1),
(2, '2', 6, 0, 0, 1, 1),
(3, '3', 6, 0, 0, 1, 1),
(4, '4', 6, 0, 0, 1, 1),
(5, '5', 6, 0, 0, 1, 1),
(6, '6', 6, 0, 0, 1, 1),
(7, '7', 6, 0, 0, 1, 1),
(8, '8', 6, 0, 0, 1, 1),
(9, '9', 6, 0, 0, 1, 1),
(10, '10', 6, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llamadadeservicios`
--

CREATE TABLE `llamadadeservicios` (
  `id` int(11) NOT NULL,
  `TipoDeProblema` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Tarjeta` varchar(200) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Articulo` varchar(200) DEFAULT NULL,
  `CodigoDeUsuario` varchar(200) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `FechaFinal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `llamadadeservicios`
--

INSERT INTO `llamadadeservicios` (`id`, `TipoDeProblema`, `Descripcion`, `Tarjeta`, `Nombre`, `Articulo`, `CodigoDeUsuario`, `Estado`, `Telefono`, `FechaFinal`) VALUES
(50, 'Reparacion', 'dsf', '2050', 'Socios NOmbre', '2050', 'tecnico', 'Asignado', '32477582', '2016-11-28'),
(51, 'Reparacion', 'c', '2050', 'Socios NOmbre', '001810', 'tecnico', 'Asignado', '32477582', '2016-11-28'),
(52, 'Reparacion', 'Problemas Con el Articulo 001810', '2050', 'Socios NOmbre', '001810', 'tecnico', 'Cerrado', '32477582', '2016-12-21'),
(53, 'Reparacion', 'txt', '1', 'NOmbre que tendra', '1458299', 'dario34', 'Cerrado', 'Tel del cliente', '2016-12-13'),
(54, 'Cambio', 'txt', '1', 'NOmbre que tendra', '1458299', 'NINGUNO', 'Pendiente', 'Tel del cliente', '2016-12-13'),
(93, 'Reparacion', 'Instalacion de equipo', '1', 'a', 'a', 'NINGUNO', 'Pendiente', '32447852', '2016-12-13'),
(94, 'Reparacion', 'Instalacion de equipo', '1', 'b', 'b', 'NINGUNO', 'Pendiente', '32447852', '2016-12-13'),
(95, 'Reparacion', 'Instalacion de equipo', 'LA574', 'a', 'a', 'tecnico', 'Cerrado', '123465789', '2016-12-15'),
(96, 'Reparacion', 'Instalacion de equipo', 'LA574', 'GPS.', '2050', 'NINGUNO', 'Pendiente', '123465789', '2016-12-15'),
(97, 'Reparacion', 'Instalacion de equipo', 'LA574', 'b', 'b', 'NINGUNO', 'Pendiente', '123465789', '2016-12-15'),
(98, 'Cambio', 'LA574 Requiere cambio de a | a', 'LA574', 'pruebaok', 'a', 'NINGUNO', 'Pendiente', '1825', '2016-12-15'),
(99, 'Reparacion', 'Instalacion de equipo', 'GA637', 'a', 'a', 'NINGUNO', 'Pendiente', 'prueba222', '2016-12-21'),
(100, 'Reparacion', 'Instalacion de equipo', 'GA637', 'c2', 'c', 'NINGUNO', 'Pendiente', 'prueba222', '2016-12-21'),
(103, 'Reparacion', 'Instalacion de equipo', 'GA637', 'GPS.', '2050', 'NINGUNO', 'Pendiente', 'prueba222', '2017-01-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `q` float DEFAULT NULL,
  `price_in` double DEFAULT NULL,
  `price_out` double DEFAULT NULL,
  `operation_type_id` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `is_draft` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operation_type`
--

CREATE TABLE `operation_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operation_type`
--

INSERT INTO `operation_type` (`id`, `name`) VALUES
(1, 'entrada'),
(2, 'salida'),
(3, 'entrada-pendiente'),
(4, 'salida-pendiente'),
(5, 'devolucion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p`
--

CREATE TABLE `p` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `p`
--

INSERT INTO `p` (`id`, `name`, `is_active`) VALUES
(1, 'Pagado', 1),
(2, 'Pendiente', 0),
(3, 'Cancelado', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rut` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `comun_id` int(11) DEFAULT NULL,
  `giro_id` int(11) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `phone1` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `is_company` tinyint(1) DEFAULT '0',
  `is_active_access` tinyint(1) DEFAULT '0',
  `kind` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentation`
--

CREATE TABLE `presentation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `barcode` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `inventary_min` int(11) DEFAULT '10',
  `duration` int(11) DEFAULT NULL,
  `price_in` float DEFAULT NULL,
  `price_out` float DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `presentation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category2_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `use_ingredients` tinyint(1) DEFAULT '0',
  `use_inventory` tinyint(1) DEFAULT '0',
  `is_ingredient` tinyint(1) DEFAULT '0',
  `is_favorite` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_ingredient`
--

CREATE TABLE `product_ingredient` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `q` float DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sell`
--

CREATE TABLE `sell` (
  `id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `operation_type_id` int(11) DEFAULT '2',
  `box_id` int(11) DEFAULT NULL,
  `tip` double DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `cash` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `is_draft` tinyint(1) DEFAULT '0',
  `is_applied` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id` int(11) NOT NULL,
  `Codigo` varchar(50) NOT NULL,
  `Nombre` varchar(80) DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `Codigo`, `Nombre`, `Estado`) VALUES
(1, 'Cl006', 'Socios NOmbre', 'Activo'),
(3, 'CLSOS201', 'SOS', 'Activo'),
(4, '504', 'NOMBRE DEL SOCIO 504 ', 'Inactivo'),
(5, 'Codigo de cliente', 'NOmbre que tendra', 'Activo'),
(6, 'Socio99', 'Fotos ecal', 'Inactivo'),
(7, 'CL7285', 'Socio de txt', 'Activo'),
(8, 'CL8381', 'pruebaok', 'Activo'),
(9, 'CL9115', 'prueba2', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soluciones`
--

CREATE TABLE `soluciones` (
  `id` int(11) NOT NULL,
  `Tema` varchar(100) DEFAULT NULL,
  `Articulo` varchar(100) NOT NULL,
  `Comentarios` varchar(950) DEFAULT NULL,
  `ActualizadoPor` varchar(50) DEFAULT NULL,
  `ActualizaoEl` varchar(50) NOT NULL,
  `Creador` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `soluciones`
--

INSERT INTO `soluciones` (`id`, `Tema`, `Articulo`, `Comentarios`, `ActualizadoPor`, `ActualizaoEl`, `Creador`) VALUES
(1, 'Tema de la solucion', '001810', 'Comentarios', 'admin', '2016-12-05', 'Nombre/id Del Primero que lo creo'),
(2, 'Que hacer si el M99 no responde', 'M99', 'Descripcion de la solucion', 'dario34', '2016-11-01', 'admin'),
(3, 'Si se va la luz que hacer', 'M99', 'Activar la planta siguiendo estos pasos:\r\n-1\r\n-2\r\n-3\r\n-4\r\n\r\netc...', 'admin', '2016-12-05', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spend`
--

CREATE TABLE `spend` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `box_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `is_principal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id`, `name`, `is_principal`) VALUES
(1, 'Principal', 1),
(2, 'Almacen 1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t`
--

CREATE TABLE `t` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t`
--

INSERT INTO `t` (`id`, `name`, `is_active`) VALUES
(1, 'Efectivo', 1),
(2, 'Tarjeta Debito', 0),
(3, 'Cheque', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetadeequipodelcliente`
--

CREATE TABLE `tarjetadeequipodelcliente` (
  `id` int(11) NOT NULL,
  `Tarjeta` varchar(100) NOT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `Codigo` varchar(100) DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `Direccion` varchar(350) DEFAULT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarjetadeequipodelcliente`
--

INSERT INTO `tarjetadeequipodelcliente` (`id`, `Tarjeta`, `Descripcion`, `Codigo`, `Estado`, `Direccion`, `Correo`, `Telefono`) VALUES
(1, '1', 'DescripciÃ³n General del Tarjeta de equipo del cliente. Cuanta falta me haces! ', 'Codigo de cliente', 'Activo', 'Bo. Barandillas, 3 y 4 cll 3 ave. N.E', 'cdfn33@gmail.com', '32447852'),
(3, '2050', 'El cliente cl006 adquirio nuestro servicio de gps ', 'Cl006', 'Activo', 'Barrio los maestros tercer caza despues de bebidas nocturnas', 'cdfn33@gmail.com', '97015834'),
(4, 'TY442', 'TXT', 'Cl006', 'Inactivo', '97015834', '', ''),
(5, 'LA574', 'Descripcion de tarjeta ', 'CL8381', 'Activo', 'Direccion  de LA574', 'correo@correo.com', '123465789'),
(6, 'GA637', 'prueba2 ', 'CL9115', 'Activo', 'prueba222', 'prueba2@prueba.com', 'prueba222');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tproblemas`
--

CREATE TABLE `tproblemas` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `kind` int(11) DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `email`, `password`, `image`, `is_active`, `kind`, `created_at`) VALUES
(1, 'Administrador', '', NULL, 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', NULL, 1, 1, '2016-10-15 23:51:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `kind` int(11) DEFAULT '1',
  `CodigoDeUsuario` varchar(80) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Telefono` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `Estado` varchar(60) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `kind`, `CodigoDeUsuario`, `Nombre`, `Correo`, `Telefono`, `password`, `Estado`, `image`) VALUES
(1, 4, 'fh', 'Carlos Dario Flores NuÃ±ez', 'scdfn3@hotmail.com', '4597015834', 'c3ddc783bf3d2c550ee81d3fcd04b723aa942d5d', 'En pruebna', '#'),
(4, 2, 'dario34', 'cflores', 'cdfn33@gmail.com', '9701584', 'e9f3c674ec905103bead21b636c7e5b6f70f92af', '1', ''),
(5, 1, 'admin', 'admin', 'cdfn33@gmail.com', '3434', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', '1', ''),
(6, 2, 'tecnico', 'tecnico', 'cdfn33@gmail.com', '132', '446ccf37591dc16a66a79b783be45e70e8a4767e', '1', ''),
(7, 3, 'mercadeo', 'mercadeo', 'cdfn33@gmail.com', 'mercadeo', 'bf3713eca1e3e88528bdeaf79e8790b45486b5d3', '1', ''),
(8, 4, 'ServicioAlCliente', 'ServicioAlCliente', 'cdfn33@gmail.com', 'ServicioAlCliente', 'a43dd8d9b121c5946a5cb045cfed575158f9d909', '1', ''),
(9, 1, 'administrator', 'administrator', 'cdfn33@gmail.com', 'administrator', '10c1212f8f6fe32a840633a140bf5088262e491d', '1', ''),
(10, 5, 'SupTecnico', 'prueba2', 'prueba2@prueba.com', 'prueba2', '446ccf37591dc16a66a79b783be45e70e8a4767e', '1', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_3` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `Codigo` (`Articulo`),
  ADD KEY `Estado` (`Estado`),
  ADD KEY `Articulo` (`Articulo`),
  ADD KEY `Articulo_2` (`Articulo`),
  ADD KEY `Estado_2` (`Estado`),
  ADD KEY `Articulo_3` (`Articulo`),
  ADD KEY `id_2` (`id`);

--
-- Indices de la tabla `art_clientes`
--
ALTER TABLE `art_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category2`
--
ALTER TABLE `category2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comun`
--
ALTER TABLE `comun`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short` (`short`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `contratodeservicio`
--
ALTER TABLE `contratodeservicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Codigo` (`Codigo`),
  ADD KEY `Nombre` (`Nombre`),
  ADD KEY `Estado` (`Estado`);

--
-- Indices de la tabla `d`
--
ALTER TABLE `d`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `garticulos`
--
ALTER TABLE `garticulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `giro`
--
ALTER TABLE `giro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `llamadadeservicios`
--
ALTER TABLE `llamadadeservicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCliente` (`Tarjeta`),
  ADD KEY `Nombre` (`Nombre`),
  ADD KEY `idArticulo` (`Articulo`),
  ADD KEY `Estado` (`Estado`),
  ADD KEY `Tproblemas` (`TipoDeProblema`),
  ADD KEY `idTecnico` (`CodigoDeUsuario`);

--
-- Indices de la tabla `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_id` (`stock_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `operation_type_id` (`operation_type_id`),
  ADD KEY `sell_id` (`sell_id`);

--
-- Indices de la tabla `operation_type`
--
ALTER TABLE `operation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `p`
--
ALTER TABLE `p`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presentation`
--
ALTER TABLE `presentation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `product_ingredient`
--
ALTER TABLE `product_ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `box_id` (`box_id`),
  ADD KEY `operation_type_id` (`operation_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Codigo` (`Codigo`),
  ADD KEY `Nombre` (`Nombre`);

--
-- Indices de la tabla `soluciones`
--
ALTER TABLE `soluciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idArticulo` (`Articulo`),
  ADD KEY `ActualizadoPor` (`ActualizadoPor`);

--
-- Indices de la tabla `spend`
--
ALTER TABLE `spend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t`
--
ALTER TABLE `t`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjetadeequipodelcliente`
--
ALTER TABLE `tarjetadeequipodelcliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Articulo` (`Tarjeta`),
  ADD KEY `Codigo` (`Codigo`),
  ADD KEY `Estado` (`Estado`),
  ADD KEY `Articulo_2` (`Tarjeta`);

--
-- Indices de la tabla `tproblemas`
--
ALTER TABLE `tproblemas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CodigoDeUsuario` (`CodigoDeUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `art_clientes`
--
ALTER TABLE `art_clientes`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `box`
--
ALTER TABLE `box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `category2`
--
ALTER TABLE `category2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comun`
--
ALTER TABLE `comun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `contratodeservicio`
--
ALTER TABLE `contratodeservicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `d`
--
ALTER TABLE `d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `garticulos`
--
ALTER TABLE `garticulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `giro`
--
ALTER TABLE `giro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `llamadadeservicios`
--
ALTER TABLE `llamadadeservicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT de la tabla `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `operation_type`
--
ALTER TABLE `operation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `p`
--
ALTER TABLE `p`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `presentation`
--
ALTER TABLE `presentation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `product_ingredient`
--
ALTER TABLE `product_ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `soluciones`
--
ALTER TABLE `soluciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `spend`
--
ALTER TABLE `spend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `t`
--
ALTER TABLE `t`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tarjetadeequipodelcliente`
--
ALTER TABLE `tarjetadeequipodelcliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tproblemas`
--
ALTER TABLE `tproblemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`),
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`),
  ADD CONSTRAINT `operation_ibfk_4` FOREIGN KEY (`sell_id`) REFERENCES `sell` (`id`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `product_ingredient`
--
ALTER TABLE `product_ingredient`
  ADD CONSTRAINT `product_ingredient_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_ingredient_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `p` (`id`),
  ADD CONSTRAINT `sell_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `d` (`id`),
  ADD CONSTRAINT `sell_ibfk_3` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`),
  ADD CONSTRAINT `sell_ibfk_4` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`),
  ADD CONSTRAINT `sell_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `sell_ibfk_6` FOREIGN KEY (`person_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `spend`
--
ALTER TABLE `spend`
  ADD CONSTRAINT `spend_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
