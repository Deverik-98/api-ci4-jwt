-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2022 a las 02:06:21
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_ci4`
--
CREATE DATABASE IF NOT EXISTS `api_ci4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api_ci4`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `retainer_fee` int(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `name`, `email`, `retainer_fee`, `updated_at`, `created_at`) VALUES
(1, 'Ms. Ashley Spencer', 'fwalker@klocko.com', 26008709, NULL, '2022-04-27 10:31:29'),
(2, 'Adolphus Runte', 'iwalker@hoeger.net', 59342944, NULL, '2022-04-27 10:31:29'),
(3, 'Reina Rolfson III', 'robel.devon@koepp.info', 15617989, NULL, '2022-04-27 10:31:29'),
(4, 'Abdiel Predovic V', 'willa.kautzer@lueilwitz.biz', 64243997, NULL, '2022-04-27 10:31:29'),
(5, 'Prof. Maureen Rippin', 'uschmidt@larson.info', 43538726, NULL, '2022-04-27 10:31:29'),
(6, 'Mr. Moshe Marquardt V', 'saul40@yahoo.com', 89233128, NULL, '2022-04-27 10:31:29'),
(7, 'Clemmie Sawayn', 'mwunsch@aufderhar.org', 11950279, NULL, '2022-04-27 10:31:29'),
(8, 'Noemie Hudson', 'krajcik.alvis@bernier.org', 57707660, NULL, '2022-04-27 10:31:29'),
(9, 'Caroline Gorczany', 'rjohnson@jacobs.com', 88066574, NULL, '2022-04-27 10:31:29'),
(10, 'Prof. Saul Berge', 'raleigh68@jast.com', 8667876, NULL, '2022-04-27 10:31:29'),
(12, 'Erikson Pacheco', 'pachecoerikson@gmail.com', 1000005, '2022-04-27 12:39:02', '2022-04-27 12:39:02'),
(15, 'Erikson Pacheco', 'ramontest@gmail.com', 1000060, '2022-05-16 18:16:38', '2022-05-16 18:16:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-04-21-152518', 'App\\Database\\Migrations\\AddClient', 'default', 'App', 1651069202, 1),
(2, '2022-04-21-152526', 'App\\Database\\Migrations\\AppUser', 'default', 'App', 1651069202, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `updated_at`, `created_at`) VALUES
(9, 'Erikson Pacheco', 'noskire', 'epachecog@gmail.com', '$2y$10$09MfxOc5Nq7ikiQGqQLUn.HteX6ek3kOmXATWLPB8ZdZQmIBTq0qq', NULL, '2022-04-27 12:32:01'),
(11, 'Erikson Pacheco', 'epachecog', 'ramon@pacheco.com', '$2y$10$PUsb0cKv6rGWDHUaYvqacOqXzhzrylfH4Pi2339a1IH4fqb7CGOeu', NULL, '2022-05-24 18:47:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `retainer_fee` (`retainer_fee`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
