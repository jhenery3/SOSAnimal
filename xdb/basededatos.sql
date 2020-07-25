-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-07-2020 a las 03:33:25
-- Versión del servidor: 10.3.23-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aljaniac_jhenery`asd
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `ap_paterno` varchar(45) NOT NULL,
  `ap_materno` varchar(45) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `celular` varchar(9) DEFAULT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clinica_veterinaria`
--

CREATE TABLE `clinica_veterinaria` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ruc` varchar(11) NOT NULL,
  `ubicacion` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `redes_sociales` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clinica_veterinaria`
--

INSERT INTO `clinica_veterinaria` (`id`, `usuario`, `password`, `nombre`, `ruc`, `ubicacion`, `celular`, `email`, `redes_sociales`) VALUES
(1, 'clinica1', 'asdfg', 'veterinaria1', '12345678912', 'ubicacion1', 'celular1', 'email1', NULL),
(2, 'clnica2', 'asdfg', 'veterinaria2', '12345678913', 'ubicacion2', 'celular2', 'email2', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(11) NOT NULL,
  `tema` varchar(45) NOT NULL,
  `detalles` text NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `especie_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

CREATE TABLE `departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Veterinaria'),
(2, 'Veterinaria Scooby Doo'),
(3, 'MascoVet'),
(4, 'PetVet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `id` int(11) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `ap_paterno` varchar(45) NOT NULL,
  `ap_materno` varchar(45) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `clinica_veterinaria_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generals`
--

CREATE TABLE `generals` (
  `id` int(11) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitations`
--

CREATE TABLE `invitations` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `client_id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitations`
--

INSERT INTO `invitations` (`id`, `user_id`, `client_id`, `status`) VALUES
(1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitation_settings`
--

CREATE TABLE `invitation_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitation_settings`
--

INSERT INTO `invitation_settings` (`id`, `title`, `content`) VALUES
(1, 'INVITACIÓN', '<p>INVITACI&Oacute;N</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `name`, `short`) VALUES
(1, 'English', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `detalles` varchar(45) NOT NULL,
  `calificacion` varchar(45) DEFAULT NULL,
  `consultas_id` int(11) NOT NULL,
  `clinica_veterinaria_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `currency_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `receive_emails` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `currency_id`, `name`, `country`, `state`, `city`, `zip`, `address`, `contact`, `phone`, `email`, `website`, `bank`, `bank_account`, `description`, `receive_emails`) VALUES
(1, NULL, 'CONSULTAS Y PREGUNTAS A VETERINARIOS', 'Peru', 'puno', 'puno', '00051', 'Puno', 'Rogertapia', '998489530', 'royertapiab@gmail.com', 'http://consultveterinaria.aljania.com/', NULL, NULL, 'http://consultveterinaria.aljania.com/', 'royertapiab@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) UNSIGNED NOT NULL,
  `staff_id` int(11) UNSIGNED DEFAULT NULL,
  `client_id` int(11) UNSIGNED DEFAULT NULL,
  `department_id` int(11) UNSIGNED NOT NULL,
  `priority_id` int(11) UNSIGNED NOT NULL,
  `type_id` int(11) UNSIGNED NOT NULL,
  `status_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id`, `staff_id`, `client_id`, `department_id`, `priority_id`, `type_id`, `status_id`, `title`, `content`, `state`, `updated_at`, `created_at`) VALUES
(1, 1, 2, 1, 1, 1, 0, 'hola tengo un problema con mi mascota', '<p>hola tengo una duda por favor si alguien pudiera ayudarme</p>\r\n', 1, '2020-07-16', '2020-07-16'),
(2, 1, 4, 4, 2, 2, 0, 'Titulo de la consulta', '<p>por favor ayudenme mi perrito esta muy mal quiero akjdnalskdnkja nknsaknskangkjsdkjabdlna</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2020-07-19', '2020-07-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_histories`
--

CREATE TABLE `ticket_histories` (
  `id` int(11) UNSIGNED NOT NULL,
  `ticket_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `from_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket_histories`
--

INSERT INTO `ticket_histories` (`id`, `ticket_id`, `user_id`, `from_id`, `title`, `content`, `state`, `updated_at`, `created_at`) VALUES
(1, 1, 2, 1, 'Responder a ...: hola tengo un problema con mi mascota', '<p>hola kjansfk aksdjlfn asdkfn asdjklfn asdkljfn asdfklj asdnf askljdfn asjkldfn kljsdf</p>\r\n', 1, '2020-07-16', '2020-07-16'),
(2, 1, 1, 2, 'Responder a ...: Responder a ...: hola tengo un problema con mi mascota', '<p>muchas gracias</p>\r\n', 0, '2020-07-16', '2020-07-16'),
(3, 2, 4, 1, 'Responder a ...: Titulo de la consulta', '<p>kajsdfnkjasdnfkjsadnf</p>\r\n', 1, '2020-07-19', '2020-07-19'),
(4, 2, 1, 4, 'Responder a ...: Responder a ...: Titulo de la consulta', '<p>pero necesito mas ayudasd lajdnkasdfn kjnfkjads fs</p>\r\n', 1, '2020-07-19', '2020-07-19'),
(5, 2, 4, 1, 'Responder a ...: Responder a ...: Responder a ...: Titulo de la consulta', '<p>lansdfljndslk nldsn lkasdn flns jhenery</p>\r\n', 0, '2020-07-19', '2020-07-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_priorities`
--

CREATE TABLE `ticket_priorities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket_priorities`
--

INSERT INTO `ticket_priorities` (`id`, `user_id`, `name`) VALUES
(2, 1, 'ALTA'),
(4, 1, 'MEDIA'),
(5, 1, 'BAJA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_statuses`
--

CREATE TABLE `ticket_statuses` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket_statuses`
--

INSERT INTO `ticket_statuses` (`id`, `user_id`, `name`) VALUES
(1, 1, 'abierto'),
(2, 1, 'cerrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_types`
--

CREATE TABLE `ticket_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_Id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ticket_types`
--

INSERT INTO `ticket_types` (`id`, `user_Id`, `name`) VALUES
(2, 1, 'Consulta'),
(3, 1, 'solicitar servicio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `language_id` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `parent_id`, `language_id`, `name`, `email`, `password`, `status`, `remember_token`, `updated_at`, `created_at`) VALUES
(1, 1, 0, 1, 'Admin', 'admin@demo.demo', '$2y$10$cEmvWwlw9o5vBubarGY69egN5gftxO82xhrLhNWiImpEbk9x/tN3C', 1, '1xLVz7HSO8Z4ojnK7ZrFSPwxeBWcRm4PoRGd25mTQRxKjy4pWzSwNXgg6Gek', '2020-07-19', '2014-11-20'),
(2, 3, 0, 2, 'roger', 'royertapiab@gmail.com', '$2y$10$rTn0UOY17FN4D8/J8UgQBujqh6Fk91yiKgNyeSU/tTnageRBdkbQy', 1, 'ohyMfhlEC4rBFpCXjDJ6cKaCvMnRAKhmHpB621pSAqZFvrMwNuqCggorle5i', '2020-07-24', '2020-07-16'),
(3, 2, 1, 1, 'Dra. Milagros', 'milagros@gmail.com', '$2y$10$Up0UgbwZ1.EaG/94rWJCH./C0vityoMz1nlc1Hn8x7CL6Fxw5cIZi', 1, 'q3xLYtdwzVoVpkwPK8MxNGU3dACXfopooSE0XRs6kGMKOyExHoHzMEdZqLmN', '2020-07-19', '2020-07-16'),
(4, 3, 0, 1, 'jhenery', 'gomory3escorpio@gmail.com', '$2y$10$Ex3KvWnS4gmZhgLeB3ilkOq.iR6KoaBUW3T4YHIXpnCV6iq2B0qvK', 1, NULL, '2020-07-19', '2020-07-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_departments`
--

CREATE TABLE `user_departments` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `department_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_departments`
--

INSERT INTO `user_departments` (`id`, `user_id`, `department_id`) VALUES
(1, 3, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni_UNIQUE` (`dni`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  ADD UNIQUE KEY `celular_UNIQUE` (`celular`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clinica_veterinaria`
--
ALTER TABLE `clinica_veterinaria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_consultas_cliente_idx` (`cliente_id`),
  ADD KEY `fk_consultas_categoria1_idx` (`categoria_id`),
  ADD KEY `fk_consultas_especie1_idx` (`especie_id`);

--
-- Indices de la tabla `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_doctores_clinica_veterinaria1_idx` (`clinica_veterinaria_id`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `invitation_settings`
--
ALTER TABLE `invitation_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_respuestas_consultas1_idx` (`consultas_id`),
  ADD KEY `fk_respuestas_clinica_veterinaria1_idx` (`clinica_veterinaria_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_histories`
--
ALTER TABLE `ticket_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_statuses`
--
ALTER TABLE `ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_types`
--
ALTER TABLE `ticket_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
