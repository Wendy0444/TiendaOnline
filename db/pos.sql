-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2019 a las 21:07:21
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cart`
--

INSERT INTO `cart` (`cartid`, `userid`, `productid`, `qty`) VALUES
(27, 10, 1, 1),
(39, 2, 1, 1),
(40, 2, 2, 2),
(41, 2, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Laptops'),
(2, 'Desktop PC\'s'),
(3, 'Tablets');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'angel enrique jovel', 'colonia flor blanca, casa #4, san salvador', '9000 8909 7878 6767'),
(4, 'David Armando Cabrera', 'Residencial Las Flores, Casa 67, Quezaltepeque', '9000 1234 5678 8976'),
(6, 'Diana Isabel Gomez', 'Residencial Villas De Jesus, Casa G67,ilopando', '8909 0909 0909 0909'),
(7, 'Fernando Martinez', 'Apopa, San Salvador', '1234567890000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(3, 2, 'Compra', 2, 2, '2019-11-18 17:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', 899, 885, 'upload/1.jpg', 3),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB\r\n', 799, 938, 'upload/2.jpg', 0),
(3, 2, 'DELL Inspiron 15 5000 15.6', 599, 975, 'upload/3.jpg', 3),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', 399, 982, 'upload/4.jpg', 0),
(5, 1, 'APPLE MacBook Air 13.3', 879, 9900, 'upload/5.jpg', 5),
(6, 1, 'DELL Inspiron 15 5000 15', 449.99, 1000, 'upload/6.jpg', 3),
(8, 1, 'ASUS Transformer Mini T102HA 10.1', 549.99, 1000, 'upload/8.jpg', 3),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', 599.99, 1000, 'upload/9.jpg', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', 599.99, 1000, 'upload/10.jpg', 5),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', 489.98, 1000, 'upload/11.jpg', 3),
(12, 2, 'ACER Aspire GX-781 Gaming PC', 749.99, 1000, 'upload/12.jpg', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', 799.99, 1000, 'upload/13.jpg', 0),
(14, 2, 'LENOVO Legion Y520 Gaming PC', 899.99, 1000, 'upload/14.jpg', 0),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', 999.99, 1000, 'upload/15.jpg', 0),
(16, 2, 'C SPECIALIST Vortex Core II Gaming PC', 649.99, 1000, 'upload/16.jpg', 5),
(17, 2, 'AMAZON Fire 7 Tablet With Alexa (2017) - 8 GB, Black', 49.99, 1000, 'upload/noimage_1574118926.jpg', 5),
(18, 3, 'AMAZON Fire HD 8 Tablet With Alexa (2017) - 16 GB, Black', 79.99, 1000, 'upload/18.jpg', 3),
(19, 3, 'AMAZON Fire HD 8 Tablet With Alexa (2017) - 32 GB, Black', 99.99, 1000, 'upload/19.jpg', 5),
(20, 3, 'APPLE 9.7', 339, 990, 'upload/20.jpg', 3),
(21, 3, 'APPLE 9.7', 339, 1000, 'upload/21.jpg', 5),
(22, 3, 'Apple 8.0 - 30 GB, Gris', 619, 1000, 'upload/22.jpg', 5),
(28, 1, 'Antiviruz Kaspersky - Complete PC Protection', 9, 4, 'upload/23_1574108726.jpg', 3),
(30, 1, 'Memoria Ram 12312313', 6, 3, 'upload/noimage_1574119209.jpg', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(1, 2, 34, '2017-09-16 16:23:38'),
(2, 2, 18, '2017-09-16 16:25:28'),
(3, 2, 6, '2017-09-16 16:27:31'),
(4, 2, 1014244, '2017-09-16 16:44:01'),
(5, 2, 9588, '2017-09-18 09:06:29'),
(6, 2, 88779, '2017-09-18 09:08:42'),
(7, 2, 15579, '2017-09-18 09:09:34'),
(8, 2, 112361, '2017-09-18 09:32:00'),
(9, 2, 7990, '2017-09-18 09:34:29'),
(10, 2, 18370, '2017-09-18 11:09:21'),
(11, 2, 2097, '2019-11-18 10:03:41'),
(12, 2, 2497, '2019-11-18 10:07:15'),
(13, 2, 2497, '2019-11-18 10:43:59'),
(14, 2, 2497, '2019-11-18 12:06:53'),
(15, 2, 3396, '2019-11-18 15:47:55'),
(16, 2, 27, '2019-11-18 15:48:42'),
(17, 2, 135, '2019-11-18 16:15:02'),
(18, 2, 390, '2019-11-18 16:17:45'),
(19, 2, 520, '2019-11-18 16:28:28'),
(20, 2, 1598, '2019-11-18 17:23:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_detail`
--

CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(1, 2, 1, 12),
(2, 2, 2, 10),
(3, 3, 3, 11),
(4, 4, 2, 50),
(5, 4, 1, 106),
(6, 4, 5, 1000),
(7, 5, 2, 12),
(8, 6, 5, 101),
(9, 7, 1, 10),
(10, 7, 3, 11),
(11, 8, 4, 10),
(12, 8, 20, 10),
(13, 8, 1, 99),
(14, 8, 2, 20),
(15, 9, 2, 10),
(16, 10, 2, 10),
(17, 10, 3, 12),
(18, 10, 4, 8),
(19, 11, 1, 1),
(20, 11, 3, 2),
(21, 12, 2, 2),
(22, 12, 1, 1),
(23, 13, 2, 2),
(24, 13, 1, 1),
(25, 14, 2, 2),
(26, 14, 1, 1),
(27, 15, 1, 2),
(28, 15, 2, 2),
(29, 16, 28, 1),
(30, 17, 28, 5),
(31, 18, 30, 3),
(32, 19, 30, 4),
(33, 20, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supplier`
--

CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `supplier`
--

INSERT INTO `supplier` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(3, 'Smart Libebula S.A', 'Colonia Escalon, Local 58, san salvador', '2200-0909'),
(5, 'Dell CompaÃ±ia Multinacional', 'Tercera Calle Round Rock, Texas', '1-800-NNXX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'angel', 'f4f068e71e0d87bf0ad51e6214ab84e9', 2),
(3, 'smart', '8c319f28d81d1527a9428e9a5c2195f5', 3),
(4, 'david', '172522ec1028ab781d9dfd17eaca4427', 2),
(5, 'dell', 'a3d24b555bc2ee180607ef34377d8996', 3),
(6, 'isabel', '4b2fb63731e470a4911460210170abaa', 2),
(7, 'fer19', 'cebdd715d4ecaafee8f147c2e85e0754', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventoryid`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`salesid`);

--
-- Indices de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  ADD PRIMARY KEY (`sales_detailid`);

--
-- Indices de la tabla `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sales_detail`
--
ALTER TABLE `sales_detail`
  MODIFY `sales_detailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `supplier`
--
ALTER TABLE `supplier`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
