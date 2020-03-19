-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-03-2020 a las 08:51:07
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `enbibo_sisdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ads`
--

CREATE TABLE `ads` (
  `ads_id` int(11) NOT NULL,
  `ads` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ads_index`
--

CREATE TABLE `ads_index` (
  `adsindex_id` int(11) NOT NULL,
  `route` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agent`
--

CREATE TABLE `agent` (
  `agent_id` int(11) NOT NULL,
  `number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band`
--

CREATE TABLE `band` (
  `band_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `reviews` int(11) DEFAULT 0,
  `score` decimal(3,1) DEFAULT 0.0,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '/no_image.jpg',
  `integrated` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `members` tinyint(4) NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `agent` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `base_price` decimal(15,2) NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(600) CHARACTER SET utf8 DEFAULT NULL,
  `web_page` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sound_cloud` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_coment`
--

CREATE TABLE `band_coment` (
  `coment_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `estatus` tinyint(2) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `coment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_contact`
--

CREATE TABLE `band_contact` (
  `band_contact_id` int(11) NOT NULL,
  `attended` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `message` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_event`
--

CREATE TABLE `band_event` (
  `band_id` int(11) NOT NULL,
  `band_event_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_event_type`
--

CREATE TABLE `band_event_type` (
  `band_event_type_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_favorite`
--

CREATE TABLE `band_favorite` (
  `band_favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_genre`
--

CREATE TABLE `band_genre` (
  `band_id` int(11) NOT NULL,
  `musical_genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_instrument`
--

CREATE TABLE `band_instrument` (
  `band_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_package`
--

CREATE TABLE `band_package` (
  `band_package_id` int(11) NOT NULL,
  `band_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `priceType` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_review`
--

CREATE TABLE `band_review` (
  `band_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` tinyint(4) NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_slider`
--

CREATE TABLE `band_slider` (
  `band_slider_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `order` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_video`
--

CREATE TABLE `band_video` (
  `band_video_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `last4` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `brand` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commission`
--

CREATE TABLE `commission` (
  `commission_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `id` int(11) NOT NULL,
  `user_pay` tinyint(4) NOT NULL DEFAULT 0,
  `payed` tinyint(4) NOT NULL DEFAULT 0,
  `sale_date` date NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `payed_date` date DEFAULT NULL,
  `cost` decimal(15,2) DEFAULT NULL,
  `commission` decimal(15,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='type 1=>band, 2=>event hall';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conekta`
--

CREATE TABLE `conekta` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `payment_token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `product` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall`
--

CREATE TABLE `event_hall` (
  `event_hall_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `reviews` int(11) DEFAULT 0,
  `score` decimal(3,1) DEFAULT 0.0,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `agent` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '/no_image.jpg',
  `address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `capacity` int(11) NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `base_price` decimal(15,2) NOT NULL,
  `web_page` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pinterest` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(600) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_coment`
--

CREATE TABLE `event_hall_coment` (
  `coment_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `estatus` tinyint(2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_contact`
--

CREATE TABLE `event_hall_contact` (
  `event_hall_contact_id` int(11) NOT NULL,
  `attended` tinyint(4) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `message` varchar(5000) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_event`
--

CREATE TABLE `event_hall_event` (
  `event_hall_id` int(11) NOT NULL,
  `band_event_type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_exterior`
--

CREATE TABLE `event_hall_exterior` (
  `event_hall_exterior_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_favorite`
--

CREATE TABLE `event_hall_favorite` (
  `event_hall_favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_interior`
--

CREATE TABLE `event_hall_interior` (
  `event_hall_interior_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_package`
--

CREATE TABLE `event_hall_package` (
  `event_hall_package_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `priceType` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_review`
--

CREATE TABLE `event_hall_review` (
  `event_hall_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` tinyint(4) NOT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_slider`
--

CREATE TABLE `event_hall_slider` (
  `event_hall_slider_id` int(11) NOT NULL,
  `event_hall_id` int(11) DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_video`
--

CREATE TABLE `event_hall_video` (
  `event_hall_video_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorite`
--

CREATE TABLE `favorite` (
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrument`
--

CREATE TABLE `instrument` (
  `instrument_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musical_genre`
--

CREATE TABLE `musical_genre` (
  `musical_genre_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(15,2) NOT NULL,
  `duration` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='duration: meses';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='type: 1->manual 2->web\n';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rol_id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sliders`
--

CREATE TABLE `sliders` (
  `sliders_id` int(11) NOT NULL,
  `route` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subscription_type_id` int(11) DEFAULT NULL,
  `subscription_plan_id` int(11) DEFAULT NULL,
  `payed` date DEFAULT NULL,
  `until` date DEFAULT NULL,
  `monthly_cost` float DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription_plan`
--

CREATE TABLE `subscription_plan` (
  `id` int(11) NOT NULL,
  `description` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `monthly_cost` float DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription_type`
--

CREATE TABLE `subscription_type` (
  `id` int(11) NOT NULL,
  `description` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `town`
--

CREATE TABLE `town` (
  `town_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `password_google` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `rol_id` int(11) NOT NULL,
  `step` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_photo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_photo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_selected` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_hometown` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram_basic` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age_range` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valid_until` date NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `conekta_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

  
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`ads_id`);

--
-- Indices de la tabla `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD UNIQUE KEY `number_UNIQUE` (`number`);

--
-- Indices de la tabla `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`band_id`);

--
-- Indices de la tabla `band_coment`
--
ALTER TABLE `band_coment`
  ADD PRIMARY KEY (`coment_id`);

--
-- Indices de la tabla `band_contact`
--
ALTER TABLE `band_contact`
  ADD PRIMARY KEY (`band_contact_id`);

--
-- Indices de la tabla `band_event`
--
ALTER TABLE `band_event`
  ADD PRIMARY KEY (`band_id`,`band_event_type_id`),
  ADD KEY `band_event_event_fk_idx` (`band_event_type_id`);

--
-- Indices de la tabla `band_event_type`
--
ALTER TABLE `band_event_type`
  ADD PRIMARY KEY (`band_event_type_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `band_favorite`
--
ALTER TABLE `band_favorite`
  ADD PRIMARY KEY (`band_favorite_id`);

--
-- Indices de la tabla `band_genre`
--
ALTER TABLE `band_genre`
  ADD PRIMARY KEY (`band_id`,`musical_genre_id`),
  ADD KEY `band_genre_fk_idx` (`musical_genre_id`);

--
-- Indices de la tabla `band_instrument`
--
ALTER TABLE `band_instrument`
  ADD PRIMARY KEY (`band_id`,`instrument_id`),
  ADD KEY `band_instrument_fk_idx` (`instrument_id`);

--
-- Indices de la tabla `band_package`
--
ALTER TABLE `band_package`
  ADD PRIMARY KEY (`band_package_id`);

--
-- Indices de la tabla `band_review`
--
ALTER TABLE `band_review`
  ADD PRIMARY KEY (`band_id`,`user_id`);

--
-- Indices de la tabla `band_slider`
--
ALTER TABLE `band_slider`
  ADD PRIMARY KEY (`band_slider_id`);

--
-- Indices de la tabla `band_video`
--
ALTER TABLE `band_video`
  ADD PRIMARY KEY (`band_video_id`);

--
-- Indices de la tabla `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`commission_id`,`id`);

--
-- Indices de la tabla `conekta`
--
ALTER TABLE `conekta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `event_hall`
--
ALTER TABLE `event_hall`
  ADD PRIMARY KEY (`event_hall_id`);

--
-- Indices de la tabla `event_hall_coment`
--
ALTER TABLE `event_hall_coment`
  ADD PRIMARY KEY (`coment_id`);

--
-- Indices de la tabla `event_hall_contact`
--
ALTER TABLE `event_hall_contact`
  ADD PRIMARY KEY (`event_hall_contact_id`);

--
-- Indices de la tabla `event_hall_event`
--
ALTER TABLE `event_hall_event`
  ADD PRIMARY KEY (`event_hall_id`,`band_event_type_id`);

--
-- Indices de la tabla `event_hall_exterior`
--
ALTER TABLE `event_hall_exterior`
  ADD PRIMARY KEY (`event_hall_exterior_id`);

--
-- Indices de la tabla `event_hall_favorite`
--
ALTER TABLE `event_hall_favorite`
  ADD PRIMARY KEY (`event_hall_favorite_id`);

--
-- Indices de la tabla `event_hall_interior`
--
ALTER TABLE `event_hall_interior`
  ADD PRIMARY KEY (`event_hall_interior_id`);

--
-- Indices de la tabla `event_hall_package`
--
ALTER TABLE `event_hall_package`
  ADD PRIMARY KEY (`event_hall_package_id`);

--
-- Indices de la tabla `event_hall_review`
--
ALTER TABLE `event_hall_review`
  ADD PRIMARY KEY (`event_hall_id`,`user_id`);

--
-- Indices de la tabla `event_hall_slider`
--
ALTER TABLE `event_hall_slider`
  ADD PRIMARY KEY (`event_hall_slider_id`);

--
-- Indices de la tabla `event_hall_video`
--
ALTER TABLE `event_hall_video`
  ADD PRIMARY KEY (`event_hall_video_id`);

--
-- Indices de la tabla `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`user_id`,`id`,`type`);

--
-- Indices de la tabla `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`instrument_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `musical_genre`
--
ALTER TABLE `musical_genre`
  ADD PRIMARY KEY (`musical_genre_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`rol_id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`name`);

--
-- Indices de la tabla `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indices de la tabla `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscription_plan`
--
ALTER TABLE `subscription_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscription_type`
--
ALTER TABLE `subscription_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`town_id`);



--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ads`
--
ALTER TABLE `ads`
  MODIFY `ads_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band`
--
ALTER TABLE `band`
  MODIFY `band_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band_coment`
--
ALTER TABLE `band_coment`
  MODIFY `coment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band_contact`
--
ALTER TABLE `band_contact`
  MODIFY `band_contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band_event_type`
--
ALTER TABLE `band_event_type`
  MODIFY `band_event_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band_favorite`
--
ALTER TABLE `band_favorite`
  MODIFY `band_favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band_package`
--
ALTER TABLE `band_package`
  MODIFY `band_package_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band_slider`
--
ALTER TABLE `band_slider`
  MODIFY `band_slider_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `band_video`
--
ALTER TABLE `band_video`
  MODIFY `band_video_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `commission`
--
ALTER TABLE `commission`
  MODIFY `commission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conekta`
--
ALTER TABLE `conekta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall`
--
ALTER TABLE `event_hall`
  MODIFY `event_hall_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_coment`
--
ALTER TABLE `event_hall_coment`
  MODIFY `coment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_contact`
--
ALTER TABLE `event_hall_contact`
  MODIFY `event_hall_contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_exterior`
--
ALTER TABLE `event_hall_exterior`
  MODIFY `event_hall_exterior_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_favorite`
--
ALTER TABLE `event_hall_favorite`
  MODIFY `event_hall_favorite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_interior`
--
ALTER TABLE `event_hall_interior`
  MODIFY `event_hall_interior_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_package`
--
ALTER TABLE `event_hall_package`
  MODIFY `event_hall_package_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_slider`
--
ALTER TABLE `event_hall_slider`
  MODIFY `event_hall_slider_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `event_hall_video`
--
ALTER TABLE `event_hall_video`
  MODIFY `event_hall_video_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `instrument`
--
ALTER TABLE `instrument`
  MODIFY `instrument_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `musical_genre`
--
ALTER TABLE `musical_genre`
  MODIFY `musical_genre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscription_plan`
--
ALTER TABLE `subscription_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscription_type`
--
ALTER TABLE `subscription_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `town`
--
ALTER TABLE `town`
  MODIFY `town_id` int(11) NOT NULL AUTO_INCREMENT;



--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `band_event`
--
ALTER TABLE `band_event`
  ADD CONSTRAINT `band_event_event_fk` FOREIGN KEY (`band_event_type_id`) REFERENCES `band_event_type` (`band_event_type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `band_event_fk` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `band_genre`
--
ALTER TABLE `band_genre`
  ADD CONSTRAINT `band_fk` FOREIGN KEY (`band_id`) REFERENCES `band` (`band_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `band_genre_fk` FOREIGN KEY (`musical_genre_id`) REFERENCES `musical_genre` (`musical_genre_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;