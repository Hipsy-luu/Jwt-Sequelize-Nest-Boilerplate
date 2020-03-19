-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-03-2020 a las 03:56:28
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
-- Base de datos: `nesttest`
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

--
-- Volcado de datos para la tabla `ads`
--

INSERT INTO `ads` (`ads_id`, `ads`, `created_at`, `updated_at`) VALUES
(1, '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\n<!-- Anuncio Lateral Derecha 1 -->\n<ins class=\"adsbygoogle\"\n     style=\"display:block\"\n     data-ad-client=\"ca-pub-9044897060176561\"\n     data-ad-slot=\"7735179135\"\n     data-ad-format=\"auto\"></ins>\n<script>\n(adsbygoogle = window.adsbygoogle || []).push({});\n</script>', NULL, '2016-07-15 15:59:16'),
(2, '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\n<!-- Anuncio Lateral Derecha 2 -->\n<ins class=\"adsbygoogle\"\n     style=\"display:block\"\n     data-ad-client=\"ca-pub-9044897060176561\"\n     data-ad-slot=\"9211912339\"\n     data-ad-format=\"auto\"></ins>\n<script>\n(adsbygoogle = window.adsbygoogle || []).push({});\n</script>', NULL, '2016-07-15 15:59:16');

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

--
-- Volcado de datos para la tabla `ads_index`
--

INSERT INTO `ads_index` (`adsindex_id`, `route`, `created_at`, `updated_at`) VALUES
(1, '/backend/publicidad/1/1.png', NULL, '2016-08-04 00:04:00'),
(2, '/backend/publicidad/1/2.png', NULL, '2016-08-04 00:27:22'),
(3, '/backend/publicidad/1/3.png', NULL, '2016-08-04 00:51:37');

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

--
-- Volcado de datos para la tabla `agent`
--

INSERT INTO `agent` (`agent_id`, `number`, `active`, `name`, `state_id`, `town_id`, `phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '001', 0, 'Agente Prueba 001', 1, 151, '6141536918', 1, '2016-05-25 15:50:50', '2016-05-25 18:04:12'),
(2, '002', 0, 'Agente 002', 4, 25, '12234565', 1, '2016-05-25 16:04:31', '2016-05-25 16:04:31'),
(3, 'sasfa', 0, 'pru', 6, 170, '6141252557', 1, '2016-06-14 16:01:02', '2016-06-14 16:01:02'),
(4, '01', 0, 'Carmen Cristina Ortiz Alvarez', 6, 170, '6391287011', 1, '2016-09-02 18:13:50', '2016-09-02 18:13:50'),
(5, '02', 0, 'Luismiguel Ortiz Alvarez', 6, 170, '6141252557', 1, '2016-09-02 18:15:38', '2016-09-02 18:15:38'),
(6, '003', 0, 'Manuel Ivan Flores Nieto', 6, 170, '6391305945', 1, '2019-10-23 22:41:03', '2019-10-23 22:41:03');

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

--
-- Volcado de datos para la tabla `band`
--

INSERT INTO `band` (`band_id`, `user_id`, `state_id`, `town_id`, `active`, `reviews`, `score`, `name`, `photo`, `integrated`, `members`, `phone`, `email`, `agent`, `base_price`, `address`, `description`, `web_page`, `facebook`, `sound_cloud`, `twitter`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(3, 2, 6, 164, 0, 28, '98.0', 'Test Update', '/frontend/profile/2/2.jpg', '2015-12-31', 127, '1234567890', 'asd@asd.com', 'Actualizado', '5000.00', '3ddddd', 'En el mundo tecnológico actual, todos utilizamos o formamos parte, de una u otra manera, de diferentes redes sociales, como blogs, Twitter, Facebook, LinkedIn, Google, etc. Y resulta de suma importancia contar con una herramienta como la que le ofrecemos, que le permita contar palabras y caracteres.En el mundo tecnológico actual, todos utilizamos o formamos parte, de una u otra manera, de diferentes redes sociales, como blogs, Twitter, Facebook, LinkedIn, Google, etc. Y resulta de suma importancia contar con una herramienta como la que le ofrecemos, que le permita contar palabras y caracteres.', 'http://enbibo.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', NULL, '2015-12-18 20:53:22', '2018-07-27 15:57:04'),
(4, 4, 1, 1, 0, 5, '15.0', 'aaa', '/frontend/profile/4/4.jpg', '2015-12-03', 2, '2345678', 'sokolista2015@gmail.com', 'sdfg', '250.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-28 22:44:10', '2018-09-02 05:57:23'),
(5, 5, 1, 1, 0, 0, '0.0', 'prueba', '/no_image.jpg', '2016-01-08', 9, 'prueba', 'sebas@sokolabs.com', 'prueba', '333.00', '', NULL, 'prueba', 'prueba', NULL, NULL, NULL, NULL, '2016-01-04 00:01:23', '2016-08-04 01:44:55'),
(8, 8, 6, 164, 0, 0, '0.0', 'ewdsdsd', '/no_image.jpg', '2012', 2, '(123)-123-1234', 'aassds@sss.com', 'aqwsdew', '2000.00', 'sasaaasssdfgvf', 'styuhgfdsdfghj', NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-24 21:50:03', '2016-08-04 01:44:58'),
(9, 22, 6, 164, 2, 0, '0.0', 'Perfil Básico', '/frontend/profile/22/22.png', '2016', 4, '0000000000', 'administracion@enbibo.com', 'enbibo.com', '0.00', 'Dirección conocida SN', 'Muestra de perfil basico para músicos, equipos de renta de sonido, dj y más.\r\n\r\nAgrega una descripción breve de tu banda, los servicios que ofrecen, así como la historia y experiencia de la banda. \r\n\r\nSolo se aceptan 600 carácteres. Te recomendamos que seas breve ', 'www.enbibo.com', 'https://www.facebook.com/enbibocom-1394613807476137/', NULL, NULL, NULL, NULL, '2016-07-12 21:38:38', '2016-07-13 04:31:19'),
(10, 23, 6, 164, 2, 0, '0.0', 'Perfil Premium', '/frontend/profile/23/23.png', '2016', 3, '0000000000', 'administracion@enbibo.com', 'enbibo.com', '1000.00', 'Domicilio conocido S/N', 'Muestra de perfil basico para músicos, equipos de renta de sonido, dj y más. Agrega una descripción breve de tu banda, los servicios que ofrecen, así como la historia y experiencia de la banda. Solo se aceptan 600 carácteres. Te recomendamos que seas breve. ', 'www.enbibo.com', 'https://www.facebook.com/enbibocom-1394613807476137/', 'www.soundcloud.com', 'https://twitter.com/enbiboCom', 'www.instagram.com', 'https://www.youtube.com/playlist?list=PL70Y2338TMPSMzfQVlm4YXPkPqwAADzar', '2016-07-12 22:19:53', '2018-01-09 04:18:58'),
(11, 48, 6, 170, 1, 0, '0.0', 'Ivan Flores - Cantante', '/frontend/profile/48/48.jpg', '1994', 3, '6391305945', 'ivanflorez_10@hotmail.com', 'Ivan Flores', '500.00', 'Avenida 26 #206', 'Soy Iván Flores, joven  de 25 años de edad, cantante  bohemio dedicado a amenizar eventos especiales.\r\nAcompaño mis presentaciones con instrumentos  (Violín y Piano) todo totalmente en vivo para ser de tú evento un momento magistral.\r\nLa canción que tú gustes para tu vals de boda xv años!, de mi voz y tú evento haremos  momentos inolvidables.\r\n', 'https://www.facebook.com/Iv%C3%A1n-Flores-1622392184445959/', 'https://www.facebook.com/Iv%C3%A1n-Flores-1622392184445959/', NULL, NULL, NULL, NULL, '2016-09-05 01:13:33', '2019-07-08 23:41:33'),
(12, 54, 6, 164, 1, 0, '0.0', 'Grupo Vodka', '/frontend/profile/54/54.jpg', '2009', 10, '6141425340', 'galaxy_audio@hotmail.com', 'Jorge Luis Aguayo', '23000.00', 'República Dominicana', 'Grupo Vodka es un conjunto musical que ameniza cualquier tipo de evento social apoyados por los mejores sistemas de audio e iluminación del mercado y un excelente ambiente. Nuestro objetivo es que la pases de lo mejor.', 'grupomusicalvodka.wordpress.com', 'https://es-la.facebook.com/Grupo-Musical-Vodka-170530259706903/', NULL, NULL, NULL, 'https://www.youtube.com/user/VodkaShiftTheParty', '2016-09-16 22:13:09', '2016-09-16 22:15:49'),
(13, 75, 6, 213, 1, 0, '0.0', 'Gasamy UUU!!', '/frontend/profile/75/75.jpg', '1987', 2, '6391299119', 'fletesmarquez@hotmail.com', 'Samuel Ortiz Burciaga', '600.00', 'Avenida 5 #33', 'Show en vivo, imitaciones y baile interpretados por Samuel Ortiz alias \"Gasamy UUU!!\".', NULL, 'https://www.facebook.com/profile.php?id=100010620546531&fref=ts', NULL, NULL, NULL, NULL, '2017-03-14 22:33:26', '2017-03-14 22:49:42'),
(14, 78, 6, 170, 1, 0, '0.0', 'Violín Para Bodas By Cristina Ortiz', '/frontend/profile/78/78.jpg', '2015', 1, '6391287011', 'cris.ortiz.co@gmail.com', 'Cristina Ortiz', '1700.00', 'Avenida 26 poniente 206', 'Violín y música para bodas en Chihuahua! Actualmente estoy como solista interpretando música instrumental con mi violín y pistas de fondo musical, géneros musicales como pop, baladas, bachata, mariachi, música folclor, música contemporánea así como las tradicionales canciones para bodas. Ademas de que mi servicio es personalizado, esto quiere decir que puedo incluir canciones o agregar músicos si así lo requieres; también oficio misas para bodas con mi trio musical conformado por voz, flauta transversal, violín y teclado.', NULL, 'https://www.facebook.com/criszoviolin/', NULL, NULL, 'https://www.instagram.com/criszo/', 'https://www.youtube.com/channel/UCgW0mZNv5nDETiA3G06kDSg?view_as=subscriber', '2017-06-07 18:31:51', '2019-12-12 02:43:01'),
(15, 79, 6, 170, 1, 0, '0.0', 'TROMODRO', '/frontend/profile/79/79.JPG', '2011', 4, '639 489 0695', 'tromodro@hotmail.com', 'Fernando Saenz', '2500.00', '777 red moon ', 'TROMODRO ofrece una muy amplia variedad de experiencia musical por parte de cada integrante de la banda, las presentaciones en vivo son un deleite para tus oídos, ya que se fusiona la técnica, pasión, interpretación y sonido tan único de cada integrante con su instrumento.\r\nContamos con diferentes tipos de mercancía conforme vamos teniendo nuevo material musical, como cachuchas, playeras, discos, vasos con los diferentes logotipos que se dan a conocer en nuestras redes sociales. ', NULL, 'https://www.facebook.com/TROMODRO', 'https://www.soundcloud.com/fernando-saenz', NULL, NULL, 'www.youtube.com/TROMODRO', '2017-06-07 19:19:15', '2017-07-31 23:20:58'),
(16, 80, 6, 164, 1, 0, '0.0', 'Contraste Musical', '/frontend/profile/80/80.jpg', '2008', 7, '614-177-9802', 'contrastem.oficial@gmail.com', 'Agustín Rodríguez Hernández', '16000.00', 'Del cubo # 3571', 'Música 100% versátil, el mejor ambiente, audio e iluminación profesional, regalos, shows interactivos, puntualidad, compromiso y CERO consumo de alcohol. Audiciones sin compromiso.', 'https://www.facebook.com/ContrasteMusical', 'https://www.facebook.com/ContrasteMusical', NULL, NULL, NULL, NULL, '2017-06-12 15:33:12', '2017-06-12 16:06:44'),
(17, 81, 6, 170, 1, 0, '0.0', 'Gabriel Vega', '/no_image.jpg', '2016', 1, '6391076558', 'gabriel.vega.rico@gmail.com', 'Gabriel Vega', '400.00', 'Calle 4a Poniente #2403', 'Hola. Gracias por visitarme. Me encantaría poder acompañarte en algún evento que estés planeando.\r\nSoy solista, me acompaño de mi guitarra, pero soy versátil y me gusta crear un buen ambiente. \r\nEstoy a tus ordenes!', NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-12 18:23:16', '2017-06-12 18:23:16'),
(18, 87, 6, 170, 1, 0, '0.0', 'Ediciòn Limitada', '/frontend/profile/87/87.png', '2016', 5, '6391345908', 'fofolp@hotmail.com', 'Jesùs Adolfo Pizarro Rodrìguez', '3000.00', 'calle sèptima poniente nùmero 907', 'Edición Limitada es un grupo de rock/pop en español e ingles que ofrece que tu evento tenga el ambiente de tu bar favorito con la mejor selección y variedad de canciones.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-15 22:19:57', '2017-08-15 22:30:44'),
(19, 88, 6, 170, 1, 0, '0.0', 'Trio Vino Tinto', '/frontend/profile/88/88.jpg', '2015', 3, '6391068572', 'alex-par@hotmail.com', 'Carolina Dominguez', '1500.00', 'ave. 12 sur esquina con calle 26 Col. Fco. Villa', 'Agrupación de musica vernácula, ambiental y popular para cualquier tipo de evento social que tiene por objetivo el deleitar a el publico en general con la mejor disposición así como la calidad esperada.', NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-22 02:19:24', '2017-08-22 02:22:32'),
(20, 90, 6, 205, 1, 0, '0.0', 'La Tequilera Norteño Banda', '/frontend/profile/90/90.jpg', '2010', 6, '639-115-90-28', 'eljurado1@hotmail.com', 'Ing. Jesus Javier Jurado (barney)', '3500.00', 'Calle progreso 708, Rosales', 'Somos una agrupacion musical con mas de 7 años de trayectoria, lo cual nos permite garantizarle que haremos de su evento algo grandiozo con un amplio repertorio de generos: norteño-chihuahua(sax y acordeon), sinaloense(trompetas y tuba),tropical(saxofones y trompetas) asi como norteño banda(acordeon y tuba).', NULL, 'https://www.facebook.com/latequilera.nortenobanda/', NULL, NULL, NULL, NULL, '2017-09-07 00:52:27', '2018-01-08 01:44:32'),
(21, 97, 6, 186, 1, 0, '0.0', 'Sinestesia ', '/frontend/profile/97/97.png', '2011', 3, '6564325716', 'al131077@alumnos.uacj.mx', 'Edsel Olvera Carranza ', '500.00', 'Calle bronco 9112, hacienda de las torres ', 'Somos una banda local del estado de Chihuahua promocionando nuestra música de manera independiente dentro y fuera de la república mexicana, proponemos nuestro material para su guste o disguste de nuestras experiencias y con ellas la creación de cada una de nuestras canciones, les proponemos un buen ambiente, respeto a la música, un buen tema para escuchar y reflexiones de amor, des amor, ira, vida o destino plasmadas en nuestras canciones, esperemos y las disfruten como nosotros al hacerlas y tocarlas. ', NULL, 'https://www.facebook.com/bandasinestecia/?ref=bookmarks ', 'https://soundcloud.com/user-790517979', NULL, NULL, 'https://www.youtube.com/channel/UCOPtzSw1PJdsW9HoqnnzqCg/playlists?view_as=subscriber', '2018-01-16 16:15:07', '2018-01-16 18:21:53'),
(22, 96, 6, 186, 1, 0, '0.0', 'Uso Recreativo', '/frontend/profile/96/96.jpg', '2016', 6, '656-657-07-04', 'ceabpam@hotmail.com', 'César Abraham Payán Martínez', '3500.00', 'calle mixtecos 2809 col azteca', 'Nuestra banda se especializa en la música Rock en especial el rock alternativo, también tocamos canciones de reggae y protesta. Hacemos covers  pero tenemos nuestro propio contenido original. Nuestra idea de proyecto es crear una banda con música que pueda disfrutar todo tipo de público y no sólo una población. Nosotros somos Uso Recreativo', NULL, 'https://www.facebook.com/UsoRecreativoPj/', 'https://soundcloud.com/uso-recreativo', NULL, 'https://www.instagram.com/usorecreativo/', 'https://www.youtube.com/channel/UCoxY6NoPbOoDqdrjod35YaA', '2018-01-21 02:20:18', '2019-10-25 00:08:59'),
(23, 98, 6, 170, 1, 0, '0.0', 'Quinto Son', '/frontend/profile/98/98.jpg', '2017', 5, '6391107998', 'jonatanb_@hotmail.com', 'Jonatan Benítez ', '6000.00', 'Calle 4a sur #511', 'Se ofrece amenización de todo tipo de eventos, música generalmente pop entre otros, el precio podría variar en caso de requerir equipo propio.', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-27 17:09:28', '2019-07-12 06:51:05'),
(24, 99, 1, 1, 0, 0, '0.0', 'METRIC', '/no_image.jpg', '2000', 4, '6391287011', 'sucursalgm@eissaonline.com', 'SERGIO KAARL', '3000.00', 'CALLE MEJIA', 'SOMOS COOL', 'www.metric.com', 'metric', 'metric', 'metric', 'metric', 'metric', '2018-10-19 02:41:09', '2018-11-04 04:43:36'),
(25, 102, 6, 213, 0, 0, '0.0', 'CCPo', '/no_image.jpg', '2010', 3, '6278889999', 'compras@eissaonline.com', 'Compras Cristina Prueba ', '1500.00', 'JHGJHF', 'hola a todos, este perfil es de prueba, gracias.', NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-04 04:37:30', '2018-11-04 04:43:29'),
(26, 137, 6, 164, 1, 1, '3.0', 'El Saxofonista CUU', '/frontend/profile/137/137.jpg', '1 a 5 ', 1, '6141811002 ', 'jovy_sax@hotmail.com', 'Maria Dolores Aguirre Salinas y/o Jorge Antonio Davila Romero', '1800.00', 'Nevado de Toluca 5719, Col. Panorámico. CP, 31107. Chihuahua, Chih,', 'Ofrecemos servicios musicales como: SAXOFONISTA SOLISTA, DUETOS DE VOZ & SAX, DUETOS DE PIANO & SAX, TERCETO MUSICAL DE SAX, VOZ & INSTRUMENTO ADICIONAL. Acompañamiento en secuencias o pistas musicales.\r\n', NULL, 'https://www.facebook.com/ElSaxofonistaCUU/?ref=aymt_homepage_panel&eid=ARDFVWfU1rErE2WfIqu0_hijQzR05-DE-5IEy5yfB7vM4G2dVXpUezQkabt-Ow2yfy_I7I9qjBPSu3pe', NULL, NULL, NULL, 'https://www.youtube.com/results?search_query=EL+SAXOFINISTA+CUU', '2019-07-10 23:13:09', '2019-12-10 04:13:49'),
(27, 139, 6, 170, 1, 1, '5.0', 'Trio Para Bodas', '/frontend/profile/139/139.jpg', '2019', 3, '6391107998', 'jonatanb_@hotmail.com', 'Jonatan Benitez', '1500.00', 'Avenida 26 poniente 206', 'Música de trio para bodas en todo chihuahua, buscas un ambiente romántico para tu evento. Nuestro trio esta formado por piano, violín y voz.', NULL, 'https://www.facebook.com/trioparabodas/', NULL, NULL, NULL, NULL, '2019-10-16 17:35:32', '2019-12-10 04:14:58');

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

--
-- Volcado de datos para la tabla `band_coment`
--

INSERT INTO `band_coment` (`coment_id`, `band_id`, `estatus`, `user_id`, `coment`, `created_at`, `updated_at`) VALUES
(10, 4, 0, 10, 'agsahbskas', '2016-02-19 16:55:31', '2016-02-19 16:55:31'),
(13, 14, 1, 144, 'excelente servicio', '2019-12-11 05:09:45', '2019-12-12 02:36:31');

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

--
-- Volcado de datos para la tabla `band_contact`
--

INSERT INTO `band_contact` (`band_contact_id`, `attended`, `name`, `phone`, `email`, `date`, `message`, `created_at`, `updated_at`) VALUES
(1, 0, 'sdffsddsf', 'sdfdsdsfd', 'sddfds@asdfds.com', NULL, 'sdsdfdsff', '2016-01-06 21:51:36', '2016-01-06 21:51:36'),
(2, 0, 'sebatian', '1234567', 'sebas@sokolabs.com', NULL, 'hola ', '2016-01-12 17:41:39', '2016-01-12 17:41:39'),
(3, 0, 'sebastian', '12345678', 'sebas@okolabs.com', NULL, 'hola', '2016-03-14 18:30:59', '2016-03-14 18:30:59'),
(4, 0, 'Prueba', '123345677', 'pruebq@skdid.com', NULL, 'Prueba', '2016-04-25 00:19:24', '2016-04-25 00:19:24'),
(5, 0, 'Cristina', '73738292873', 'cris.ortiz.co@gmail.com', NULL, 'Jdjdjdj', '2016-05-19 21:11:11', '2016-05-19 21:11:11'),
(6, 0, 'Javier Salas Cano', '6143647669', 'javier12305@hotmail.com', NULL, '', '2019-08-01 21:20:48', '2019-08-01 21:20:48'),
(7, 0, 'Cristina Ortiz', '6391287011', 'compras@eissaonline.com', NULL, '', '2019-09-23 19:34:01', '2019-09-23 19:34:01'),
(8, 0, 'Esto es una Prueba', '1231231231', 'sesipo@imaild.com', NULL, '', '2019-10-24 05:17:14', '2019-10-24 05:17:14'),
(9, 0, 'Prueba', '1231231231', 'boxop@promaild.com', NULL, '', '2019-10-24 05:18:23', '2019-10-24 05:18:23'),
(10, 0, 'Luismiguel Ortiz Alvarez', '016394740742', 'luismi.luu@gmail.com', NULL, '', '2019-10-24 05:56:36', '2019-10-24 05:56:36'),
(11, 0, 'Prueba', '123123123', 'p@prueba.com', NULL, 'Hola Criss, esto es una prueba...', '2019-12-11 07:27:36', '2019-12-11 07:27:36'),
(12, 0, 'Prueba', '123123123', 'p@prueba.com', NULL, 'Hola, esto es una prueba...', '2019-12-11 07:31:10', '2019-12-11 07:31:10'),
(13, 0, 'Prueba', '123123123', 'p@prueba.com', NULL, 'Hola, esto es una prueba...', '2019-12-11 07:40:56', '2019-12-11 07:40:56'),
(14, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:13:34', '2019-12-12 06:13:34'),
(15, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:27:23', '2019-12-12 06:27:23'),
(16, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:28:43', '2019-12-12 06:28:43'),
(17, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:30:44', '2019-12-12 06:30:44'),
(18, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:32:39', '2019-12-12 06:32:39'),
(19, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:44:33', '2019-12-12 06:44:33'),
(20, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:48:29', '2019-12-12 06:48:29'),
(21, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:49:21', '2019-12-12 06:49:21'),
(22, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:53:43', '2019-12-12 06:53:43'),
(23, 0, 'Prueba', '1231231231', 'prueba@prueba.com', NULL, 'Prueba', '2019-12-12 06:59:52', '2019-12-12 06:59:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_event`
--

CREATE TABLE `band_event` (
  `band_id` int(11) NOT NULL,
  `band_event_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `band_event`
--

INSERT INTO `band_event` (`band_id`, `band_event_type_id`) VALUES
(3, 2),
(3, 6),
(4, 6),
(8, 6),
(9, 2),
(9, 3),
(9, 4),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 27),
(10, 2),
(10, 3),
(10, 4),
(10, 6),
(10, 7),
(10, 12),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 39),
(11, 2),
(11, 3),
(11, 4),
(11, 6),
(11, 8),
(11, 28),
(11, 32),
(12, 2),
(12, 3),
(12, 4),
(12, 6),
(12, 12),
(12, 21),
(12, 22),
(12, 37),
(12, 38),
(12, 39),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 9),
(13, 10),
(13, 12),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 18),
(13, 23),
(13, 24),
(13, 26),
(13, 30),
(13, 32),
(13, 34),
(13, 37),
(13, 39),
(13, 43),
(14, 3),
(14, 8),
(14, 10),
(14, 14),
(14, 19),
(14, 22),
(14, 30),
(14, 32),
(14, 38),
(14, 39),
(14, 40),
(15, 21),
(15, 22),
(15, 24),
(16, 2),
(16, 3),
(16, 4),
(16, 6),
(16, 12),
(16, 37),
(17, 1),
(17, 7),
(17, 12),
(17, 13),
(17, 23),
(17, 24),
(17, 25),
(17, 27),
(17, 35),
(18, 7),
(18, 24),
(18, 27),
(19, 1),
(19, 2),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(19, 9),
(19, 10),
(19, 12),
(19, 13),
(19, 14),
(19, 18),
(19, 19),
(19, 21),
(19, 22),
(19, 23),
(19, 24),
(19, 25),
(19, 28),
(19, 29),
(19, 30),
(19, 32),
(19, 33),
(19, 34),
(19, 35),
(19, 37),
(19, 38),
(19, 39),
(19, 40),
(19, 41),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 10),
(20, 12),
(20, 16),
(20, 17),
(20, 21),
(20, 23),
(20, 24),
(20, 25),
(20, 26),
(20, 27),
(20, 31),
(20, 32),
(20, 34),
(20, 37),
(20, 43),
(21, 2),
(21, 6),
(21, 13),
(21, 21),
(21, 22),
(21, 23),
(21, 24),
(21, 25),
(21, 48),
(22, 21),
(22, 22),
(22, 24),
(22, 27),
(23, 3),
(23, 4),
(23, 6),
(23, 7),
(23, 8),
(23, 10),
(23, 30),
(23, 34),
(23, 37),
(23, 44),
(24, 32),
(25, 4),
(26, 3),
(26, 5),
(26, 6),
(26, 8),
(26, 10),
(26, 12),
(26, 28),
(26, 30),
(26, 32),
(26, 37),
(26, 38),
(26, 39),
(26, 41),
(27, 3),
(27, 39),
(27, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_event_type`
--

CREATE TABLE `band_event_type` (
  `band_event_type_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `band_event_type`
--

INSERT INTO `band_event_type` (`band_event_type_id`, `name`) VALUES
(2, '15 años'),
(6, 'Aniversario'),
(27, 'Antro'),
(32, 'Baby Shower'),
(4, 'Bailes de Graduación'),
(24, 'Bar'),
(5, 'Bautizo'),
(3, 'Boda'),
(25, 'Cafetería'),
(39, 'Ceremonia Civil'),
(38, 'Ceremonia de Graduación'),
(40, 'Ceremonia Religiosa'),
(13, 'Coffee Break'),
(22, 'Concierto'),
(41, 'Conferencias'),
(20, 'Congreso'),
(8, 'Convención'),
(53, 'Cultural'),
(7, 'Cumpleaños'),
(36, 'Curso'),
(10, 'Despedida de Soltera'),
(44, 'Despedida de Soltero'),
(26, 'Discoteca'),
(43, 'Divorcios'),
(28, 'Ejecutivo'),
(48, 'Feria'),
(21, 'Festival'),
(49, 'Foro'),
(16, 'Funeral'),
(14, 'Inauguración'),
(15, 'Infantil'),
(33, 'Junta Ejecutiva'),
(46, 'Junta Empresarial'),
(18, 'Juntas de Trabajo'),
(29, 'Laboral'),
(11, 'Lanzamiento'),
(19, 'Misa'),
(52, 'Obra de Teatro'),
(30, 'Pedida de mano'),
(17, 'Piñata'),
(12, 'Posada'),
(9, 'Primera Comunión'),
(35, 'Privado para pareja'),
(23, 'Restaurante'),
(45, 'Reunion Empresarial'),
(31, 'Rodeo'),
(47, 'Rueda De Prensa'),
(51, 'Salón de Baile'),
(1, 'Serenata'),
(42, 'Simposium'),
(50, 'Stand Up'),
(34, 'Tornaboda'),
(37, 'XV Años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_favorite`
--

CREATE TABLE `band_favorite` (
  `band_favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `band_favorite`
--

INSERT INTO `band_favorite` (`band_favorite_id`, `user_id`, `band_id`) VALUES
(10, 11, 6),
(157, 144, 26),
(163, 144, 14),
(159, 144, 27),
(160, 11, 23),
(161, 11, 19),
(162, 144, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_genre`
--

CREATE TABLE `band_genre` (
  `band_id` int(11) NOT NULL,
  `musical_genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `band_genre`
--

INSERT INTO `band_genre` (`band_id`, `musical_genre_id`) VALUES
(3, 4),
(3, 7),
(3, 8),
(4, 4),
(8, 8),
(9, 1),
(9, 3),
(9, 5),
(9, 6),
(9, 9),
(9, 11),
(9, 21),
(9, 25),
(10, 3),
(10, 5),
(10, 6),
(10, 9),
(10, 11),
(10, 13),
(10, 15),
(10, 18),
(10, 21),
(10, 23),
(11, 3),
(11, 6),
(11, 11),
(11, 55),
(12, 11),
(13, 6),
(13, 36),
(13, 39),
(13, 93),
(13, 106),
(13, 107),
(13, 111),
(13, 112),
(13, 113),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(14, 13),
(14, 15),
(14, 16),
(14, 19),
(14, 29),
(14, 86),
(15, 70),
(15, 72),
(15, 82),
(16, 11),
(17, 6),
(17, 11),
(17, 15),
(17, 47),
(17, 61),
(17, 98),
(17, 111),
(18, 3),
(18, 6),
(18, 30),
(18, 70),
(19, 3),
(19, 4),
(19, 6),
(19, 14),
(19, 15),
(19, 16),
(19, 18),
(19, 22),
(19, 24),
(19, 32),
(19, 35),
(19, 36),
(19, 38),
(19, 39),
(19, 40),
(19, 41),
(19, 50),
(19, 52),
(19, 53),
(19, 54),
(19, 55),
(19, 71),
(19, 86),
(19, 87),
(19, 96),
(19, 97),
(19, 98),
(19, 106),
(19, 107),
(19, 110),
(19, 111),
(19, 112),
(19, 115),
(20, 11),
(20, 35),
(20, 42),
(20, 45),
(20, 87),
(21, 1),
(21, 70),
(21, 111),
(22, 26),
(22, 70),
(22, 72),
(22, 111),
(23, 3),
(23, 6),
(23, 9),
(23, 23),
(23, 29),
(23, 97),
(23, 98),
(24, 8),
(25, 87),
(26, 3),
(26, 6),
(26, 11),
(26, 12),
(26, 15),
(26, 16),
(26, 18),
(26, 29),
(26, 45),
(26, 53),
(26, 86),
(26, 97),
(26, 98),
(27, 3),
(27, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_instrument`
--

CREATE TABLE `band_instrument` (
  `band_id` int(11) NOT NULL,
  `instrument_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `band_instrument`
--

INSERT INTO `band_instrument` (`band_id`, `instrument_id`) VALUES
(3, 3),
(3, 5),
(4, 3),
(5, 3),
(6, 6),
(6, 7),
(6, 8),
(8, 9),
(9, 3),
(9, 7),
(9, 101),
(9, 152),
(10, 3),
(10, 7),
(10, 152),
(11, 101),
(12, 1),
(12, 3),
(12, 4),
(12, 9),
(12, 45),
(12, 50),
(12, 93),
(12, 99),
(12, 101),
(12, 102),
(12, 150),
(13, 93),
(13, 101),
(14, 6),
(14, 57),
(14, 74),
(14, 93),
(15, 1),
(15, 3),
(15, 101),
(15, 150),
(16, 1),
(16, 3),
(16, 8),
(16, 93),
(16, 94),
(16, 101),
(16, 102),
(16, 150),
(17, 8),
(18, 1),
(18, 2),
(18, 3),
(18, 8),
(18, 92),
(19, 2),
(19, 4),
(19, 5),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(19, 10),
(19, 12),
(19, 19),
(19, 22),
(19, 24),
(19, 27),
(19, 39),
(19, 42),
(19, 43),
(19, 45),
(19, 57),
(19, 59),
(19, 72),
(19, 74),
(19, 77),
(19, 78),
(19, 84),
(19, 93),
(19, 94),
(19, 97),
(19, 102),
(19, 149),
(19, 154),
(19, 159),
(19, 163),
(19, 164),
(20, 9),
(20, 34),
(20, 45),
(20, 51),
(20, 84),
(20, 99),
(20, 100),
(20, 101),
(20, 106),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 3),
(22, 4),
(22, 93),
(22, 101),
(22, 150),
(23, 1),
(23, 3),
(23, 7),
(23, 56),
(23, 101),
(23, 150),
(24, 12),
(25, 2),
(26, 45),
(26, 102),
(27, 6),
(27, 7),
(27, 57);

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

--
-- Volcado de datos para la tabla `band_package`
--

INSERT INTO `band_package` (`band_package_id`, `band_id`, `name`, `price`, `priceType`, `description`, `created_at`, `updated_at`) VALUES
(24, 3, '22', '3333.00', 'Por Hora', '9', '2016-01-03 03:40:45', '2016-05-08 22:00:59'),
(30, 3, 'ad', '23123.00', 'Por evento', '13132\n213\n12\n31\n3', '2016-05-08 21:31:08', '2016-05-08 22:01:10'),
(31, 3, 'gfg', '4545.00', 'Por canción', '45454', '2016-05-08 21:32:39', '2016-05-08 21:57:28'),
(32, 3, 'f', '55555555555.00', 'Por Persona', '5555555\r\n5\r\n5\r\n5\r\n5\r\n', '2016-05-08 22:01:44', '2016-05-08 22:01:44'),
(33, 3, 'f', '3333.00', 'Por Hora', 'dddddddddddddddddddddd', '2016-05-08 22:02:12', '2016-05-08 22:02:12'),
(35, 3, 'r', '4.00', 'Por Persona', '4', '2016-05-08 22:02:49', '2016-05-08 22:02:49'),
(37, 10, 'Nombre', '0.00', 'Por evento', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-13 16:58:50', '2016-07-13 16:58:50'),
(38, 10, 'Nombre', '0.00', 'Por canción', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-13 16:59:30', '2016-07-13 16:59:30'),
(39, 10, 'Nombre', '0.00', 'Por Hora', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-13 16:59:50', '2016-07-13 16:59:50'),
(40, 10, 'Nombre', '0.00', 'Por evento', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-13 17:02:58', '2016-07-13 17:02:58'),
(41, 10, 'Nombre', '0.00', 'Por canción', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-13 17:04:21', '2016-07-13 17:04:21'),
(42, 10, 'Nombre', '0.00', 'Por evento', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-13 17:04:33', '2016-07-13 17:04:33'),
(44, 3, 'ddd', '3333.00', 'Por evento', '3333', '2016-07-26 02:45:27', '2016-07-26 02:45:27'),
(45, 3, 'eerw', '434324.00', 'Por evento', '242342', '2016-07-26 02:45:38', '2016-07-26 02:45:38'),
(47, 3, 'r', '5.00', 'Por evento', '5', '2016-07-26 02:47:17', '2016-07-26 02:47:17'),
(48, 10, 'Nombre', '0.00', 'Por evento', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-26 16:18:24', '2016-07-26 16:18:24'),
(49, 14, 'Presentación  Violín 1 Hora', '1700.00', 'Por Hora', '1 hora de música instrumental con violín y música de fondo. Música variada, según sea la ocasión y gusto de el cliente.\nNo incluye sonido.', '2017-06-07 19:48:22', '2019-10-16 01:23:03'),
(50, 16, 'Paquete enbibo', '16500.00', 'Por evento', 'Música en vivo 100% versátil.\nAudio e iluminación profesional.\nRegalos.\nMúsica mezclada en intermedios.\nDirección del evento.\nShows interactivos.\nPuntualidad.\nCERO consumo de alcohol.', '2017-06-12 16:25:32', '2017-07-13 17:58:26'),
(51, 19, 'Basico', '4550.00', 'Por evento', 'Show completo con el repertorio completo asi como personalizado según el tipo de cliente, el paquete incluye 3 horas de música en vivo, las dos primeras horas son 1500 cada una, y a partir de la tercer hora en delante 1200 cada una, nosotros llevamos el sonido por 350 incluidos de igual manera en el paquete, tenemos disponibilidad para cualquier parte de el país con los respectivos viáticos de el evento, trabajo profesional, de calidad, seguro, honesto y siempre con la mejor disposicion.', '2017-08-22 02:55:28', '2017-08-22 02:55:28'),
(52, 19, 'Por hora', '1500.00', 'Por Hora', 'Show completo de musica en vivo con repertorio completo, el paquete son 1500 por hora, así como 350 de el sonido que ya esta incluido en el precio, servicio de calidad, seguro, honesto, puntual, personalizado según el tipo de cliente así como un servicio con la mejor disposición para dar un trabajo mas competente.', '2017-08-22 03:02:30', '2019-06-19 02:09:25'),
(53, 14, 'Boda Ceremonia Católica', '2900.00', 'Por evento', 'Música para la ceremonia completa.\n3 músicos: Violin, Flauta, Harmonica, Piano y Voz de mujer.\nMomentos musicales de la Misa Católica: Entrada de la novia, Primera Lectura, Aleluya, Ofertorio, Oración del Santo, Consagración, Comunión, Meditación, Ave María, Saluda de los novios. (El número de canciones puede variar según las restricciones de quien oficie la misa)\nIncluye Sonido.', '2017-09-01 16:29:45', '2019-04-20 06:22:28'),
(54, 20, 'Fiestas', '3500.00', 'Por Hora', '1 Hora de Música\r\nIncluye sonido e iluminación.', '2018-01-08 02:15:28', '2018-01-08 02:15:28'),
(55, 20, 'Bodas y XV', '23000.00', 'Por evento', '5 Horas de música en vivo.\r\nIncluye sonido e iluminación.\r\nMúsica de DJ en descansos.\r\nShow de globos, sombreros, collares, antifaces y lentes.\r\n', '2018-01-08 02:18:31', '2018-01-08 02:18:31'),
(56, 10, 'Fiesta', '1000.00', 'Por Hora', '1 Hora de Música en vivo.\nIncluye sonido.', '2018-01-14 01:22:14', '2018-01-14 01:22:34'),
(57, 21, 'Musica Casual', '500.00', 'Por Hora', '1 hora de música original e independiente', '2018-01-16 18:31:16', '2018-01-16 18:31:16'),
(58, 14, 'Recepción Para Bodas', '3500.00', 'Por evento', '1:30 Horas sin intermedio o descanso.\nViolín con microfono inalámbrico.\nMúsica de fondo con pistas.\nVestimenta de Gala.\n*No incluye viáticos fuera de Delicias, Chihuahua*\n*No incluye sonido*', '2019-04-20 06:26:22', '2019-09-05 23:25:21'),
(60, 26, 'Saxofonista Solista', '1800.00', 'Por Hora', 'Saxofonista en vivo por 1 hr, audio básico 100 personas, acompañamiento en pistas.\r\nEl costo es en eventos locales, puede variar si se requiere mayor producción.\r\nEn eventos foráneos se incrementan los costos de viáticos.\r\n\r\n\r\n\r\n\r\n', '2019-07-10 23:30:59', '2019-07-10 23:30:59'),
(61, 26, 'Duetos', '2200.00', 'Por Hora', 'Sax & Voz en vivo por 1 hr, audio basico 100 personas, acompañamiento en pistas.\r\nEl costo es en eventos locales, puede variar si se requiere mayor producción. En eventos foráneos se incrementan los costos de viáticos.', '2019-07-10 23:32:20', '2019-07-10 23:32:20'),
(62, 26, 'Terceto o Trio', '2800.00', 'Por Hora', 'Sax & Voz en vivo mas 1 músico extra por 1 hr, audio básico 100 personas, acompañamiento en pistas.\r\nEl costo es en eventos locales, puede variar si se requiere mayor producción. En eventos foráneos se incrementan los costos de viáticos.', '2019-07-10 23:33:46', '2019-07-10 23:33:46'),
(63, 26, 'Cuarteto o Quinteto', '3900.00', 'Por Hora', 'Sax & Voz en vivo mas 2 0 3 músicos extras por 1 hr, audio básico 100 personas, acompañamiento en pistas.\r\nEl costo es en eventos locales, puede variar si se requiere mayor producción. En eventos foráneos se incrementan los costos de viáticos.\r\n', '2019-07-10 23:35:13', '2019-07-10 23:35:13'),
(64, 26, 'EVENTO COMPLETO', '15000.00', 'Por evento', 'Sax en vivo y cualquier elección que el cliente desee agregar (voces, percusión, piano, bass), 4 hrs de músicos en vivo ensamblados con pistas o secuencias mas 1 hr de sonido. Audio básico 100 a 200 personas, iluminación básica,ambientación básica, humo, proyección, DJ.\r\n\r\nEl costo es en eventos locales, puede variar si se requiere mayor producción. En eventos foráneos se incrementan los costos de viáticos.', '2019-07-10 23:38:03', '2019-07-10 23:38:03'),
(65, 27, 'Vals Para Bodas', '1500.00', 'Por evento', '3 Canciones especiales: entrada de los novios, baile de los novios y vals adicional.\r\nNo incluye sonido.\r\nNo incluye viáticos.', '2019-10-16 18:22:32', '2019-10-16 18:22:32'),
(66, 27, '1 Hora de Música', '3000.00', 'Por Hora', 'Música en vivo, continua en una hora.\r\nSonido más $ 500 pesos.\r\nNo incluye viáticos.', '2019-10-16 18:24:25', '2019-10-16 18:24:25');

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

--
-- Volcado de datos para la tabla `band_slider`
--

INSERT INTO `band_slider` (`band_slider_id`, `band_id`, `url`, `order`) VALUES
(75, 3, '/frontend/profile/2/slider/2016-05-22-58-102.jpg', NULL),
(77, 3, '/frontend/profile/2/slider/2016-05-22-58-332.jpg', NULL),
(79, 3, '/frontend/profile/2/slider/2016-05-23-40-132.jpg', NULL),
(83, 3, '/frontend/profile/2/slider/2016-05-23-32-522.jpg', NULL),
(84, 3, '/frontend/profile/2/slider/2016-05-23-35-022.jpg', NULL),
(86, 3, '/frontend/profile/2/slider/2016-05-23-35-132.jpg', NULL),
(88, 3, '/frontend/profile/2/slider/2016-05-23-36-022.jpg', NULL),
(89, 3, '/frontend/profile/2/slider/2016-05-23-36-232.jpg', NULL),
(113, 0, '', NULL),
(114, 0, '', NULL),
(115, 0, '', NULL),
(116, 3, '/frontend/profile/2/slider/2016-05-23-05-342.jpg', NULL),
(134, 10, '/frontend/profile/23/slider/2016-07-25-29-1723.jpg', NULL),
(135, 10, '/frontend/profile/23/slider/2016-07-25-29-4823.jpg', NULL),
(136, 10, '/frontend/profile/23/slider/2016-07-25-30-0923.jpg', NULL),
(137, 10, '/frontend/profile/23/slider/2016-07-25-30-2223.jpg', NULL),
(138, 10, '/frontend/profile/23/slider/2016-07-25-30-5323.jpg', NULL),
(139, 10, '/frontend/profile/23/slider/2016-07-25-31-2423.jpg', NULL),
(140, 9, '/frontend/profile/22/slider/2016-07-25-35-3722.jpg', NULL),
(145, 0, '', NULL),
(146, 12, '/frontend/profile/54/slider/2016-09-16-22-4554.jpg', NULL),
(147, 0, '', NULL),
(148, 12, '/frontend/profile/54/slider/2016-09-16-24-2354.jpg', NULL),
(149, 12, '/frontend/profile/54/slider/2016-09-16-25-4854.jpg', NULL),
(150, 12, '/frontend/profile/54/slider/2016-09-16-29-2354.jpg', NULL),
(151, 12, '/frontend/profile/54/slider/2016-09-16-29-5054.jpg', NULL),
(152, 12, '/frontend/profile/54/slider/2016-09-16-29-5954.jpg', NULL),
(153, 12, '/frontend/profile/54/slider/2016-09-16-30-4354.jpg', NULL),
(155, 13, '/frontend/profile/75/slider/2017-03-14-07-5075.jpg', NULL),
(161, 0, '', NULL),
(162, 16, '/frontend/profile/80/slider/2017-06-12-07-1380.jpg', NULL),
(163, 16, '/frontend/profile/80/slider/2017-06-12-07-3480.jpg', NULL),
(164, 16, '/frontend/profile/80/slider/2017-06-12-08-0280.jpg', NULL),
(165, 16, '/frontend/profile/80/slider/2017-06-12-08-3580.jpg', NULL),
(166, 16, '/frontend/profile/80/slider/2017-06-12-09-2580.jpg', NULL),
(167, 16, '/frontend/profile/80/slider/2017-06-12-09-3780.jpg', NULL),
(168, 16, '/frontend/profile/80/slider/2017-06-12-09-5280.jpg', NULL),
(169, 16, '/frontend/profile/80/slider/2017-06-12-10-0380.jpg', NULL),
(170, 15, '/frontend/profile/79/slider/2017-07-31-24-0879.JPG', NULL),
(171, 18, '/frontend/profile/87/slider/2017-08-15-37-1387.png', NULL),
(172, 18, '/frontend/profile/87/slider/2017-08-15-37-2687.png', NULL),
(173, 19, '/frontend/profile/88/slider/2017-08-21-31-3888.jpg', NULL),
(174, 19, '/frontend/profile/88/slider/2017-08-21-31-5588.jpg', NULL),
(175, 19, '/frontend/profile/88/slider/2017-08-21-32-1288.jpg', NULL),
(176, 0, '', NULL),
(177, 0, '', NULL),
(178, 0, '', NULL),
(179, 0, '', NULL),
(180, 0, '', NULL),
(182, 19, '/frontend/profile/88/slider/2017-08-21-36-1788.jpg', NULL),
(184, 19, '/frontend/profile/88/slider/2017-08-21-44-5888.jpg', NULL),
(185, 19, '/frontend/profile/88/slider/2017-08-21-45-1088.jpg', NULL),
(186, 19, '/frontend/profile/88/slider/2017-08-21-09-0688.jpg', NULL),
(189, 0, '', NULL),
(190, 20, '/frontend/profile/90/slider/2018-01-07-44-5590.png', NULL),
(191, 20, '/frontend/profile/90/slider/2018-01-07-45-2290.png', NULL),
(192, 20, '/frontend/profile/90/slider/2018-01-07-46-0290.png', NULL),
(193, 20, '/frontend/profile/90/slider/2018-01-07-48-1190.png', NULL),
(194, 20, '/frontend/profile/90/slider/2018-01-07-50-0490.JPG', NULL),
(195, 20, '/frontend/profile/90/slider/2018-01-07-50-3790.jpg', NULL),
(196, 20, '/frontend/profile/90/slider/2018-01-07-53-4690.jpg', NULL),
(197, 20, '/frontend/profile/90/slider/2018-01-07-54-0990.jpg', NULL),
(198, 20, '/frontend/profile/90/slider/2018-01-07-58-0090.jpg', NULL),
(199, 20, '/frontend/profile/90/slider/2018-01-07-58-2690.jpg', NULL),
(200, 20, '/frontend/profile/90/slider/2018-01-07-58-4290.jpg', NULL),
(201, 20, '/frontend/profile/90/slider/2018-01-07-59-3890.jpg', NULL),
(202, 20, '/frontend/profile/90/slider/2018-01-07-59-5990.jpg', NULL),
(203, 20, '/frontend/profile/90/slider/2018-01-07-01-4490.jpg', NULL),
(204, 21, '/frontend/profile/97/slider/2018-01-16-21-3897.jpg', NULL),
(205, 21, '/frontend/profile/97/slider/2018-01-16-22-1197.jpg', NULL),
(206, 0, '', NULL),
(207, 21, '/frontend/profile/97/slider/2018-01-16-23-2197.jpg', NULL),
(208, 21, '/frontend/profile/97/slider/2018-01-16-24-0997.jpg', NULL),
(209, 21, '/frontend/profile/97/slider/2018-01-16-25-3097.jpg', NULL),
(210, 21, '/frontend/profile/97/slider/2018-01-16-27-0197.jpg', NULL),
(211, 21, '/frontend/profile/97/slider/2018-01-16-27-4597.jpg', NULL),
(212, 21, '/frontend/profile/97/slider/2018-01-16-28-3497.jpg', NULL),
(213, 21, '/frontend/profile/97/slider/2018-01-16-28-5197.jpeg', NULL),
(214, 21, '/frontend/profile/97/slider/2018-01-16-29-2997.jpg', NULL),
(215, 21, '/frontend/profile/97/slider/2018-01-16-29-5897.jpg', NULL),
(216, 21, '/frontend/profile/97/slider/2018-01-16-32-0197.jpg', NULL),
(217, 0, '', NULL),
(218, 21, '/frontend/profile/97/slider/2018-01-16-33-1197.jpg', NULL),
(219, 21, '/frontend/profile/97/slider/2018-01-16-34-0397.jpg', NULL),
(220, 21, '/frontend/profile/97/slider/2018-01-16-34-3997.jpg', NULL),
(221, 21, '/frontend/profile/97/slider/2018-01-16-37-4197.jpg', NULL),
(222, 0, '', NULL),
(223, 21, '/frontend/profile/97/slider/2018-01-16-08-2897.jpg', NULL),
(224, 21, '/frontend/profile/97/slider/2018-01-16-09-0197.jpg', NULL),
(225, 21, '/frontend/profile/97/slider/2018-01-16-10-0997.jpg', NULL),
(226, 0, '', NULL),
(227, 0, '', NULL),
(228, 0, '', NULL),
(229, 0, '', NULL),
(230, 21, '/frontend/profile/97/slider/2018-01-16-13-1097.jpg', NULL),
(232, 0, '', NULL),
(233, 21, '/frontend/profile/97/slider/2018-01-16-14-2397.jpg', NULL),
(234, 21, '/frontend/profile/97/slider/2018-01-16-15-0297.jpeg', NULL),
(235, 21, '/frontend/profile/97/slider/2018-01-16-16-0097.jpg', NULL),
(236, 21, '/frontend/profile/97/slider/2018-01-16-16-5397.jpg', NULL),
(237, 0, '', NULL),
(238, 21, '/frontend/profile/97/slider/2018-01-16-18-2597.jpg', NULL),
(239, 0, '', NULL),
(241, 21, '/frontend/profile/97/slider/2018-01-16-19-1897.jpg', NULL),
(242, 21, '/frontend/profile/97/slider/2018-01-16-21-1297.jpg', NULL),
(243, 21, '/frontend/profile/97/slider/2018-01-16-21-5897.jpg', NULL),
(244, 21, '/frontend/profile/97/slider/2018-01-16-22-5497.jpg', NULL),
(245, 21, '/frontend/profile/97/slider/2018-01-16-23-5597.png', NULL),
(268, 11, '/frontend/profile/48/slider/2019-06-20-52-1148.jpg', NULL),
(270, 23, '/frontend/profile/98/slider/2019-07-09-50-2498.jpg', NULL),
(271, 23, '/frontend/profile/98/slider/2019-07-09-00-5698.jpg', NULL),
(272, 23, '/frontend/profile/98/slider/2019-07-09-02-3398.jpg', NULL),
(273, 26, '/frontend/profile/137/slider/2019-07-10-14-42137.jpg', NULL),
(274, 26, '/frontend/profile/137/slider/2019-07-10-14-57137.jpg', NULL),
(275, 26, '/frontend/profile/137/slider/2019-07-10-15-45137.jpg', NULL),
(277, 26, '/frontend/profile/137/slider/2019-07-10-16-42137.jpg', NULL),
(279, 26, '/frontend/profile/137/slider/2019-07-10-17-56137.jpg', NULL),
(280, 26, '/frontend/profile/137/slider/2019-07-10-18-18137.jpg', NULL),
(281, 26, '/frontend/profile/137/slider/2019-07-10-18-43137.jpg', NULL),
(282, 26, '/frontend/profile/137/slider/2019-07-10-19-00137.jpg', NULL),
(283, 26, '/frontend/profile/137/slider/2019-07-10-19-18137.jpg', NULL),
(285, 26, '/frontend/profile/137/slider/2019-07-10-20-06137.jpg', NULL),
(288, 26, '/frontend/profile/137/slider/2019-07-10-23-31137.jpg', NULL),
(289, 26, '/frontend/profile/137/slider/2019-07-10-23-54137.jpg', NULL),
(290, 26, '/frontend/profile/137/slider/2019-07-10-24-13137.jpg', NULL),
(291, 14, '/frontend/profile/78/slider/2019-07-20-08-3778.jpg', NULL),
(292, 14, '/frontend/profile/78/slider/2019-07-20-09-4078.jpg', NULL),
(293, 14, '/frontend/profile/78/slider/2019-07-20-11-2578.jpg', NULL),
(297, 14, '/frontend/profile/78/slider/2019-07-20-17-3278.JPG', NULL),
(299, 14, '/frontend/profile/78/slider/2019-07-20-18-0478.jpg', NULL),
(300, 14, '/frontend/profile/78/slider/2019-07-20-19-4578.jpg', NULL),
(302, 14, '/frontend/profile/78/slider/2019-07-20-20-3578.jpg', NULL),
(303, 14, '/frontend/profile/78/slider/2019-07-20-23-4778.JPG', NULL),
(304, 14, '/frontend/profile/78/slider/2019-07-20-24-3578.jpg', NULL),
(305, 14, '/frontend/profile/78/slider/2019-07-20-25-0678.jpeg', NULL),
(306, 14, '/frontend/profile/78/slider/2019-07-20-25-2578.jpeg', NULL),
(308, 14, '/frontend/profile/78/slider/2019-07-20-27-3678.JPG', NULL),
(309, 14, '/frontend/profile/78/slider/2019-07-20-27-5278.JPG', NULL),
(310, 14, '/frontend/profile/78/slider/2019-07-20-28-2678.PNG', NULL),
(311, 14, '/frontend/profile/78/slider/2019-07-20-29-1178.PNG', NULL),
(312, 14, '/frontend/profile/78/slider/2019-07-20-30-1278.jpg', NULL),
(316, 14, '/frontend/profile/78/slider/2019-07-20-33-2478.jpg', NULL),
(317, 14, '/frontend/profile/78/slider/2019-07-20-34-2678.PNG', NULL),
(318, 14, '/frontend/profile/78/slider/2019-07-20-34-5278.jpg', NULL),
(319, 14, '/frontend/profile/78/slider/2019-07-20-35-2878.PNG', NULL),
(321, 14, '/frontend/profile/78/slider/2019-07-20-37-0178.JPG', NULL),
(322, 14, '/frontend/profile/78/slider/2019-07-20-37-5178.JPG', NULL),
(324, 14, '/frontend/profile/78/slider/2019-07-20-39-4878.jpeg', NULL),
(325, 14, '/frontend/profile/78/slider/2019-07-20-41-0278.JPG', NULL),
(326, 14, '/frontend/profile/78/slider/2019-07-20-41-3578.JPG', NULL),
(328, 26, '/frontend/profile/137/slider/2019-07-25-14-46137.jpg', NULL),
(329, 26, '/frontend/profile/137/slider/2019-07-25-15-22137.jpg', NULL),
(330, 26, '/frontend/profile/137/slider/2019-07-25-15-41137.jpg', NULL),
(331, 26, '/frontend/profile/137/slider/2019-07-25-15-54137.jpg', NULL),
(332, 26, '/frontend/profile/137/slider/2019-07-25-16-06137.jpg', NULL),
(333, 26, '/frontend/profile/137/slider/2019-07-25-16-38137.jpg', NULL),
(334, 14, '/frontend/profile/78/slider/2019-09-05-20-4078.JPG', NULL),
(335, 14, '/frontend/profile/78/slider/2019-09-05-22-1578.JPG', NULL),
(336, 14, '/frontend/profile/78/slider/2019-09-05-22-5378.JPG', NULL),
(337, 27, '/frontend/profile/139/slider/2019-10-16-40-14139.JPG', NULL),
(338, 27, '/frontend/profile/139/slider/2019-10-16-40-33139.JPG', NULL),
(339, 27, '/frontend/profile/139/slider/2019-10-16-41-03139.jpg', NULL),
(340, 27, '/frontend/profile/139/slider/2019-10-16-08-10139.jpg', NULL),
(341, 27, '/frontend/profile/139/slider/2019-10-16-08-51139.JPG', NULL),
(342, 27, '/frontend/profile/139/slider/2019-10-16-09-58139.JPG', NULL),
(344, 27, '/frontend/profile/139/slider/2019-10-16-12-23139.JPG', NULL),
(345, 27, '/frontend/profile/139/slider/2019-10-16-13-06139.jpg', NULL),
(346, 27, '/frontend/profile/139/slider/2019-10-16-14-01139.JPG', NULL),
(347, 27, '/frontend/profile/139/slider/2019-10-16-14-30139.jpg', NULL),
(348, 27, '/frontend/profile/139/slider/2019-10-16-15-06139.jpg', NULL),
(349, 27, '/frontend/profile/139/slider/2019-10-16-16-04139.JPG', NULL),
(350, 27, '/frontend/profile/139/slider/2019-10-16-16-50139.JPG', NULL),
(351, 27, '/frontend/profile/139/slider/2019-10-16-17-24139.JPG', NULL),
(352, 27, '/frontend/profile/139/slider/2019-10-16-18-28139.JPG', NULL),
(353, 27, '/frontend/profile/139/slider/2019-10-16-19-34139.jpg', NULL),
(354, 27, '/frontend/profile/139/slider/2019-10-16-20-26139.JPG', NULL),
(355, 22, '/frontend/profile/96/slider/2019-10-24-07-5396.jpg', NULL),
(356, 14, '/frontend/profile/78/slider/2019-10-27-44-3178.jpeg', NULL),
(357, 14, '/frontend/profile/78/slider/2019-10-27-49-5878.jpeg', NULL),
(358, 27, '/frontend/profile/139/slider/2019-11-14-29-49139.JPG', NULL),
(359, 27, '/frontend/profile/139/slider/2019-11-14-32-41139.jpg', NULL),
(360, 27, '/frontend/profile/139/slider/2019-11-14-33-18139.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `band_video`
--

CREATE TABLE `band_video` (
  `band_video_id` int(11) NOT NULL,
  `band_id` int(11) NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `band_video`
--

INSERT INTO `band_video` (`band_video_id`, `band_id`, `url`) VALUES
(50, 16, 'LrwkOjR2g1Y'),
(51, 15, '9PM-CdTf9hM'),
(60, 10, 'C1_PFmpghug'),
(61, 10, 'Ls2uhIJ9r1E'),
(79, 26, 'En8384XCFoo'),
(67, 14, '5vSxRuQr7UE'),
(62, 10, 'HhhBTJW3U64'),
(63, 21, '1iY9ucmIFec'),
(64, 21, 'VP46anfPHfw'),
(39, 12, 'ypQocSs32bs'),
(40, 12, 'bxPSi-dP6h4'),
(52, 15, '8mYK5-YNf9Y'),
(57, 20, 'kVUgZPpZYmM'),
(58, 20, '9blX6jURsgU'),
(59, 20, 'I_HKG59eclw'),
(65, 21, 'a05AYOmVjc0'),
(66, 23, 'O8LTFxX2EEc'),
(69, 19, 'Dbd9blIkQ-I'),
(70, 11, 'awzbYBghbx0'),
(71, 11, 'iCosb0gSM7A'),
(72, 11, 'edUenc2jhvU'),
(77, 26, 'WvZZHt5Rsbs'),
(78, 26, 's60-5ep7e_Q'),
(80, 14, 'NyhgEAu1HXM'),
(81, 27, 'ZyYcynJAkkM'),
(82, 14, '-12IS1h4UNo');

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

--
-- Volcado de datos para la tabla `card`
--

INSERT INTO `card` (`id`, `user_id`, `token`, `last4`, `brand`, `created_at`, `updated_at`) VALUES
(2, 69, 'card_2fcyVFzsvrTLxXbYh', '4242', 'VISA', '2016-12-06 16:25:30', '2016-12-06 16:25:30'),
(5, 74, 'card_2gBzovz843WjAZRcp', '4242', 'VISA', '2017-03-17 15:42:32', '2017-03-17 15:42:32'),
(6, 77, 'card_2gC1UFDJqG6vQDynC', '0895', 'MC', '2017-03-17 16:32:42', '2017-03-17 16:32:42'),
(7, 78, 'card_2gC24dtqhe1M1CLBd', '0895', 'MC', '2017-03-17 17:17:44', '2017-03-17 17:17:44'),
(8, 99, 'card_2jTkFpmhVeukE9tmk', '4242', 'VISA', '2018-10-19 02:39:09', '2018-10-19 02:39:09'),
(9, 100, 'card_2jTkXFYiZHFDnc5uo', '4444', 'MC', '2018-10-19 02:59:21', '2018-10-19 02:59:21'),
(10, 101, 'card_2jTkg2DEJdzwYreEP', '0005', 'AMERICAN_EXPRESS', '2018-10-19 03:10:50', '2018-10-19 03:10:50'),
(11, 102, 'card_2jZ1fxHr6krDoPTYX', '4444', 'MC', '2018-11-04 04:13:38', '2018-11-04 04:13:38'),
(12, 103, 'card_2jkzz3YRr4Xt5bp65', '4242', 'VISA', '2018-12-10 21:18:21', '2018-12-10 21:18:21'),
(13, 133, 'card_2kjXz74mKohYaBt7Q', '0617', 'VISA', '2019-06-01 21:38:30', '2019-06-01 21:38:30');

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

--
-- Volcado de datos para la tabla `commission`
--

INSERT INTO `commission` (`commission_id`, `agent_id`, `type`, `id`, `user_pay`, `payed`, `sale_date`, `rol_id`, `payed_date`, `cost`, `commission`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 1, '2015-12-12', 200, '2012-02-02', NULL, '300.00', 1, '0000-00-00 00:00:00', '2016-05-25 22:14:45'),
(2, 1, 1, 4, 1, 0, '2015-12-12', 210, '0000-00-00', NULL, NULL, 1, '0000-00-00 00:00:00', '2016-05-25 22:14:45'),
(3, 2, 2, 7, 1, 1, '2015-12-12', 300, '2015-12-12', NULL, NULL, 1, '0000-00-00 00:00:00', '2016-05-25 22:14:45'),
(4, 2, 2, 20, 1, 0, '2015-12-12', 310, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 2, 21, 1, 1, '2016-05-26', 310, '2015-12-12', NULL, NULL, 1, '2016-05-26 17:27:36', '2016-05-26 17:27:36'),
(7, 2, 1, 31, 1, 0, '2016-09-01', 200, NULL, '500.00', NULL, NULL, '2016-09-01 20:17:38', '2016-09-01 20:17:54'),
(8, 5, 2, 32, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 19:35:50', '2016-09-05 00:50:21'),
(9, 5, 2, 33, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 19:42:41', '2016-09-05 01:19:57'),
(10, 5, 1, 34, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-04 19:54:06', '2016-09-05 01:21:31'),
(11, 5, 1, 35, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-04 20:04:40', '2016-09-05 01:21:48'),
(12, 5, 2, 36, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 20:21:22', '2016-09-05 01:22:05'),
(13, 5, 2, 37, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 20:32:18', '2016-09-05 01:22:26'),
(14, 5, 2, 38, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 20:41:45', '2016-09-05 01:22:59'),
(15, 5, 2, 39, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 20:43:55', '2016-09-05 01:25:47'),
(16, 5, 2, 40, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 20:53:49', '2016-09-05 01:26:31'),
(17, 5, 1, 41, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-04 21:29:47', '2016-09-05 01:26:48'),
(18, 5, 1, 42, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-04 21:44:58', '2016-09-05 01:27:14'),
(19, 5, 1, 43, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-04 21:56:50', '2016-09-05 01:27:31'),
(20, 5, 2, 44, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 22:04:03', '2016-09-05 01:27:44'),
(21, 5, 2, 45, 1, 0, '2016-09-04', 310, NULL, '4000.00', NULL, NULL, '2016-09-04 22:12:45', '2016-09-05 01:27:56'),
(22, 5, 1, 46, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-04 22:20:07', '2016-09-05 01:28:07'),
(23, 5, 1, 47, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-04 23:40:43', '2016-09-05 01:28:30'),
(24, 5, 1, 48, 1, 0, '2016-09-04', 210, NULL, '1000.00', NULL, NULL, '2016-09-05 01:08:40', '2016-09-05 01:09:40'),
(25, 5, 2, 71, 1, 0, '2016-12-20', 310, NULL, '4000.00', NULL, NULL, '2016-12-20 22:56:00', '2016-12-20 23:21:53'),
(26, 5, 2, 73, 1, 0, '2017-01-17', 310, NULL, '4000.00', NULL, NULL, '2017-01-17 23:16:05', '2017-01-17 23:17:34'),
(27, 4, 1, 75, 1, 0, '2017-03-14', 200, NULL, '500.00', NULL, NULL, '2017-03-14 22:15:03', '2017-03-14 22:17:14'),
(28, 4, 1, 76, 0, 0, '2017-03-17', NULL, NULL, NULL, NULL, NULL, '2017-03-17 16:22:25', '2017-03-17 16:22:25'),
(29, 4, 1, 77, 0, 0, '2017-03-17', NULL, NULL, NULL, NULL, NULL, '2017-03-17 16:31:46', '2017-03-17 16:31:46'),
(30, 4, 1, 78, 1, 0, '2017-03-17', 210, NULL, '1500.00', NULL, NULL, '2017-03-17 17:16:52', '2017-03-17 17:18:04'),
(31, 4, 1, 90, 0, 0, '2017-09-05', NULL, NULL, NULL, NULL, NULL, '2017-09-06 02:36:11', '2017-09-06 02:36:11'),
(32, 4, 1, 99, 0, 0, '2018-10-18', NULL, NULL, NULL, NULL, NULL, '2018-10-19 02:34:46', '2018-10-19 02:34:46'),
(33, 4, 2, 100, 0, 0, '2018-10-18', NULL, NULL, NULL, NULL, NULL, '2018-10-19 02:58:20', '2018-10-19 02:58:20'),
(34, 4, 2, 101, 0, 0, '2018-10-18', NULL, NULL, NULL, NULL, NULL, '2018-10-19 03:10:05', '2018-10-19 03:10:05'),
(35, 4, 1, 102, 0, 0, '2018-11-03', NULL, NULL, NULL, NULL, NULL, '2018-11-04 04:07:46', '2018-11-04 04:07:46'),
(36, 4, 2, 133, 1, 1, '2019-06-01', 310, '2019-10-25', '1999.00', '500.00', 1, '2019-06-01 21:29:38', '2019-06-01 21:38:54'),
(37, 4, 1, 139, 1, 1, '2019-10-16', 210, '2019-10-25', '1000.00', '500.00', 1, '2019-10-16 17:24:12', '2019-10-16 17:27:11'),
(38, 6, 2, 140, 1, 0, '2019-10-23', 310, NULL, '4000.00', NULL, NULL, '2019-10-24 01:34:49', '2019-10-24 01:41:43');

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

--
-- Volcado de datos para la tabla `conekta`
--

INSERT INTO `conekta` (`id`, `user_id`, `email`, `payment_token`, `product`, `currency`, `status`, `amount`, `created_at`, `updated_at`) VALUES
(1, 69, 'sebas', 'Object card_2fcyVFzsvrTLxXbYh could not be found.', 'Música Perfil Premium', 'MXN', 'fail', 1500, '2016-12-06 17:23:08', '2016-12-06 17:23:08'),
(2, 69, 'sebas', 'Phone missing in details.', 'Música Perfil Premium', 'MXN', 'fail', 1500, '2016-12-06 17:26:20', '2016-12-06 17:26:20'),
(3, 69, 'sebas', '5847046ddba34d906f007299', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 17:33:19', '2016-12-06 17:33:19'),
(4, 69, 'sebas', '58470daadba34d98bb0071ad', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 18:12:43', '2016-12-06 18:12:43'),
(5, 69, 'sebas', '584712b1dba34d906f007a55', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 18:34:11', '2016-12-06 18:34:11'),
(6, 69, 'sebas', '584719a5c835f05351008950', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 19:03:50', '2016-12-06 19:03:50'),
(7, 69, 'sebas', '58472286edbb6e03990089a1', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 19:41:43', '2016-12-06 19:41:43'),
(8, 69, 'sebas', '584722dcc835f014df008ff0', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 19:43:10', '2016-12-06 19:43:10'),
(9, 69, 'sebas', '584723a6c835f05351008e07', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 19:46:32', '2016-12-06 19:46:32'),
(10, 69, 'sebas', '584723b4c835f014df009065', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 19:46:45', '2016-12-06 19:46:45'),
(11, 69, 'sebas', '58472410dba34d906f0083d5', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 19:48:17', '2016-12-06 19:48:17'),
(12, 69, 'sebas', '5847252bdba34d98bb007d50', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 19:53:00', '2016-12-06 19:53:00'),
(13, 69, 'sebas', '584735d6c835f014df00994f', 'Música Perfil Básico', 'MXN', 'paid', 500, '2016-12-06 21:04:07', '2016-12-06 21:04:07'),
(14, 69, 'sebas', '58473c5fc835f014df009cf0', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 21:32:00', '2016-12-06 21:32:00'),
(15, 69, 'sebas', '58473cbcc835f014df009d26', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 21:33:33', '2016-12-06 21:33:33'),
(16, 69, 'sebas', '58473cc8dba34d98bb0089f8', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 21:33:45', '2016-12-06 21:33:45'),
(17, 69, 'sebas', '58473cf6dba34d906f009176', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2016-12-06 21:34:31', '2016-12-06 21:34:31'),
(18, 69, 'sebas', '5847470bc835f0a07e009fbb', 'Música Perfil Básico', 'MXN', 'paid', 500, '2016-12-06 22:17:32', '2016-12-06 22:17:32'),
(19, 69, 'sebas', '587d4882edbb6e77cb023c64', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-01-16 21:26:10', '2017-01-16 21:26:10'),
(20, 69, 'sebas', '587d4883edbb6ec5af023510', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-01-16 21:26:12', '2017-01-16 21:26:12'),
(21, 72, 'sebas', '587e5e22c835f002f002b1f5', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2017-01-17 17:10:43', '2017-01-17 17:10:43'),
(22, 72, 'sebas', '587e5f18c835f002f002b2ac', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2017-01-17 17:14:49', '2017-01-17 17:14:49'),
(23, 72, 'sebas', '587e5f2ec835f098d002b468', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2017-01-17 17:15:11', '2017-01-17 17:15:11'),
(24, 74, 'sebas', '58ab76b6edbb6eceff0041c6', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-02-20 22:07:35', '2017-02-20 22:07:35'),
(25, 74, 'sebas', '58ab7b63c835f00cd8004ffe', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2017-02-20 22:27:32', '2017-02-20 22:27:32'),
(26, 74, 'sebas', '58ab7b7cc835f028dd00482e', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-02-20 22:27:57', '2017-02-20 22:27:57'),
(27, 74, 'sebas', '58ab7bd4edbb6ec518003f47', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-02-20 22:29:25', '2017-02-20 22:29:25'),
(28, 74, 'sebas', '58ab7c6fdba34dcb20004633', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-02-20 22:32:01', '2017-02-20 22:32:01'),
(29, 74, 'sebas', '58ab7c8edba34d271a00477b', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-02-20 22:32:31', '2017-02-20 22:32:31'),
(30, 74, 'sebas', '58ab7ef7dba34dcb2000468c', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-02-20 22:42:49', '2017-02-20 22:42:49'),
(31, 74, 'sebas', '58b8801adba34d74a9fe2025', 'Música Perfil Básico', 'MXN', 'paid', 500, '2017-03-02 19:27:08', '2017-03-02 19:27:08'),
(32, 74, 'sebas', '58b88518edbb6e7a74ef68c1', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2017-03-02 19:48:25', '2017-03-02 19:48:25'),
(33, 74, 'sebas', 'This charge has been declined because buyer behavior is suspicious.', 'Música Perfil Básico', 'MXN', 'fail', 500, '2017-03-17 15:42:46', '2017-03-17 15:42:46'),
(34, 77, 'criszo', 'This charge has been declined because buyer behavior is suspicious.', 'Música Perfil Premium', 'MXN', 'fail', 1500, '2017-03-17 16:35:14', '2017-03-17 16:35:14'),
(35, 78, 'criszo', '58cc3669dba34d28a1899c1a', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2017-03-17 17:18:04', '2017-03-17 17:18:04'),
(36, 99, 'sucursal', '5bc951e9edbb6e7dd622baab', 'Música Perfil Premium', 'MXN', 'paid', 1500, '2018-10-19 02:39:23', '2018-10-19 02:39:23'),
(37, 100, 'deyser', '5bc956a1b795b0178df017e7', 'Salón Perfil Premium', 'MXN', 'paid', 4000, '2018-10-19 02:59:31', '2018-10-19 02:59:31'),
(38, 101, 'carmen', '5bc95956edbb6e667b21de16', 'Salón Perfil Básico', 'MXN', 'paid', 1500, '2018-10-19 03:11:04', '2018-10-19 03:11:04'),
(39, 102, 'compras', '5bde8e4cedbb6e1ba280f136', 'Música Perfil Premium', 'MXN', 'paid', 1999, '2018-11-04 04:14:38', '2018-11-04 04:14:38'),
(40, 133, 'salonpremium2019', '5cf2e25cd823f84838e38992', 'Salón Perfil Premium', 'MXN', 'paid', 1999, '2019-06-01 21:38:54', '2019-06-01 21:38:54');

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

--
-- Volcado de datos para la tabla `event_hall`
--

INSERT INTO `event_hall` (`event_hall_id`, `user_id`, `state_id`, `town_id`, `active`, `reviews`, `score`, `name`, `agent`, `photo`, `address`, `capacity`, `phone`, `email`, `base_price`, `web_page`, `facebook`, `instagram`, `pinterest`, `description`, `created_at`, `updated_at`) VALUES
(7, 7, 6, 170, 0, 3, '9.0', 'Crisalón', 'Carmen López', '/frontend/profile/7/7.jpg', 'Avenida 26 poniente 206, Colonia magisterial', 100, '6391287011', 'administracion@enbibo.com', '3000.00', 'http://www.terrazamacias.net/#/Nosotros/', 'https://www.facebook.com/enbibocom-1394613807476137/', 'https://www.instagram.com/criszo/', 'https://es.pinterest.com', 'Atendemos todo tipo de eventos desde un cumpleaños familiar, fiestas infantiles, bodas, quinceañeras, primeras comuniones, bautizos, aniversarios, etc.\r\nCon capacidad desde 70 hasta 200 personas excelentes instalaciones para la mayor comodidad de sus invitados, area de juegos infantiles, piñatero y hermosos jardines.', '2016-01-12 18:48:35', '2016-08-04 01:45:07'),
(11, 3, 1, 1, 0, 0, '0.0', 'san valentin', 'Customers', '/frontend/profile/3/3.jpg', 'calle 33 1905', 12345, '016142056865', 'sebas@sokolabs.com', '234567890.00', NULL, NULL, NULL, 'https://es.pinterest.com/', 'rtyuiop', '2016-02-18 02:20:25', '2016-08-04 01:45:09'),
(12, 24, 6, 164, 2, 0, '0.0', 'Perfil Básico', 'Enbibo.com', '/frontend/profile/24/24.png', 'Domicilio conocido S/N', 500, '0000000000', 'administracion@enbibo.com', '0.00', 'www.enbibo.com', 'https://www.facebook.com/enbibo-1394613807476137/?ref=hl', 'www.instagram.com', 'www.pinterest.com', 'Muestra de perfil básico. Agrega una descripción breve de los servicios que ofrecen, así como la historia y experiencia de tu empresa. Solo se aceptan 600 carácteres. Te recomendamos que seas breve.', '2016-07-13 21:58:46', '2019-06-20 23:41:38'),
(13, 25, 6, 164, 2, 0, '0.0', 'Perfil Premium', 'enbibo.com', '/frontend/profile/25/25.png', 'Dirección conocida SN', 1000, '6391287011', 'mercadotecnia@enbibo.com', '0.00', 'www.enbibo.com', 'https://www.facebook.com/enbibocom-1394613807476137/?ref=settings', 'www.instagram.com', 'www.pinterest.com', 'Describa brevemente los servicios o productos que ofrecen, su historia o experiencia, detalle la información de mas interés para los clientes o usuario. La capacidad máxima es de 600 caracteres.', '2016-07-21 01:47:37', '2019-06-20 23:41:28'),
(14, 29, 6, 170, 1, 0, '0.0', 'Salas de Junta Canacintra Delicias', 'Brenda Arriaga Flores', '/frontend/profile/29/29.jpg', 'Ave 6a Norte #613', 25, '(639) 472-20-24', 'gerencia.canacintra@gmail.com', '150.00', NULL, 'https://www.facebook.com/bookmarks/lists', NULL, NULL, 'Canacintra pone a su disposición sus salas de juntas con una capacidad de hasta 30 personas, muy bien acondicionadas con minisplits, coffee break al gusto del cliente y sanitarios al contratar cualquiera de nuestras salas.', '2016-08-11 17:25:50', '2016-08-11 21:25:04'),
(15, 40, 6, 164, 1, 0, '0.0', 'DV', 'DV', '/frontend/profile/40/40.JPG', 'Av. Francisco Villa #5705 Col. Panamericana, entre las calles rio de janeiro y republica de brasil', 250, '614 405 6901', 'Delvic_eventos@hotmail.com', '1.00', NULL, NULL, NULL, NULL, 'DV es un nuevo concepto de espacio para eventos que pondrá a su disposición todo lo necesario para tener una celebración espectacular en el día más importante de sus vidas. Aquí podrán encontrar las instalaciones ideales para pasar una velada única al lado de sus seres queridos.\r\n\r\nCONTÁCTENOS :\r\nCel.:  614-405-69-01 \r\n', '2016-10-29 19:24:54', '2019-10-15 19:45:30'),
(16, 70, 6, 170, 1, 0, '0.0', 'Terraza 20-30', 'Valeria Zavala ', '/frontend/profile/70/70.jpg', 'Calle 8 Norte #8 Col. Imperial ', 500, '472-20-30', 'gerencia20-30@hotmail.com', '5000.00', NULL, NULL, NULL, NULL, 'La terraza 20-30 se caracteriza por ser un lugar amplio y comodidad en su eventos, contamos con mobiliario, cantina y cocina esta ubicada en la estancia del salón.', '2016-12-06 23:16:20', '2016-12-17 18:29:01'),
(17, 71, 6, 170, 1, 0, '0.0', 'Antares Eventos', 'Karen Rea', '/frontend/profile/71/71.jpg', 'Av. Fernando Baeza y Río San Pedro S/N', 500, '639-136-94-71', 'antares.eventos@hotmail.com', '34500.00', NULL, 'https://web.facebook.com/Antares.Eventos2013/', NULL, NULL, 'Empresa dedicada a la prestación de servicios para eventos sociales.', '2016-12-21 16:11:57', '2016-12-21 16:13:29'),
(18, 73, 6, 170, 1, 0, '0.0', 'GREEN GARDEN', 'MARISELA FRANCO', '/frontend/profile/73/73.jpg', 'AVE. NUESTRA GENTE 2623  FRACC. SN. JORGE', 200, '639 124 06 25', 'marisela123451@hotmail.com', '3900.00', NULL, 'https://web.facebook.com/profile.php?id=100007377765057', NULL, NULL, ' Jardin y salon :  Reserva con tiempo tu evento social tenemos paquetes todo incluido', '2017-01-17 23:34:15', '2017-01-17 23:37:00'),
(19, 86, 6, 170, 0, 0, '0.0', 'Haciendas Campestre', 'carmen karina ortiz alvarez', '/no_image.jpg', 'Carretera Rumbo Rosales', 200, '611372874', 'haciendascampestre@gmail.com', '300.00', 'www.haciendascapeste.com', 'https://www.facebook.com/kortyestudio', 'https://www.instagram.com/kortyestudio', NULL, 'Somos tu mejor opción de evento', '2017-08-10 22:04:38', '2019-06-20 23:39:39'),
(20, 140, 6, 170, 1, 0, '0.0', ' Terraza las Fuentes', 'Alejandra Andon Gardea', '/frontend/profile/140/140.png', 'Prolongación de 2a Oriente, Cd. Delicias,Chihuahua', 400, '639-489-61-85', 'lasfuentesyc@gmail.com', '28500.00', NULL, 'https://www.facebook.com/lasfuenteseyc/', NULL, NULL, 'Terraza Las Fuentes, el mejor lugar de eventos para ese día tan especial como XV años, bodas, bautizos, conferencias, convenciones, posadas, despedidas de solteras y baby showers. Ubicado en Delicias, Chihuahua, no dudes en conocernos.', '2019-10-24 03:16:34', '2019-10-24 23:03:03');

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

--
-- Volcado de datos para la tabla `event_hall_coment`
--

INSERT INTO `event_hall_coment` (`coment_id`, `event_hall_id`, `estatus`, `user_id`, `coment`, `created_at`, `updated_at`) VALUES
(3, 7, 1, 10, 'padre', '2016-02-18 04:58:53', '2016-02-18 04:58:53'),
(4, 7, 1, 10, 'sdfghj', '2016-02-18 05:01:24', '2016-02-18 05:01:24'),
(5, 7, 1, 10, 'sdftyuytrewerthjkl', '2016-02-18 05:19:41', '2016-02-18 05:19:41');

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

--
-- Volcado de datos para la tabla `event_hall_contact`
--

INSERT INTO `event_hall_contact` (`event_hall_contact_id`, `attended`, `name`, `phone`, `email`, `date`, `message`, `created_at`, `updated_at`) VALUES
(1, NULL, 'asdad', 'asdasd', 'sebas@sokolabs.com', NULL, 'asdadcxvxcvxvx', '2016-01-05 22:48:37', '2016-01-05 22:48:37'),
(2, NULL, 'Marina Soto', '9841353473', 'colecciondafeli@gmail.com', NULL, '', '2017-08-10 21:17:10', '2017-08-10 21:17:10'),
(3, NULL, 'Hacienditas Campetres', '611372874', 'hacienditascampestre@gmail.com', NULL, '', '2017-08-10 21:53:19', '2017-08-10 21:53:19'),
(4, NULL, 'Laura ', '6393981507', 'asistenteadministrativa@grupoalcodesa.com', NULL, '', '2018-02-15 16:41:20', '2018-02-15 16:41:20'),
(5, NULL, 'Lydia Almanza Sepúlveda', '6391481591', 'lyalse@hotmail.com', NULL, '', '2019-04-05 15:42:30', '2019-04-05 15:42:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_event`
--

CREATE TABLE `event_hall_event` (
  `event_hall_id` int(11) NOT NULL,
  `band_event_type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_hall_event`
--

INSERT INTO `event_hall_event` (`event_hall_id`, `band_event_type_id`) VALUES
(6, 2),
(6, 5),
(6, 6),
(7, 2),
(7, 5),
(7, 15),
(8, 6),
(9, 2),
(10, 2),
(11, 6),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 7),
(12, 12),
(12, 13),
(12, 14),
(12, 27),
(12, 30),
(12, 32),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(13, 12),
(13, 13),
(13, 14),
(13, 15),
(13, 16),
(13, 17),
(13, 19),
(13, 20),
(13, 21),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(13, 26),
(13, 27),
(13, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 32),
(13, 33),
(13, 34),
(13, 35),
(14, 13),
(14, 25),
(14, 28),
(14, 29),
(14, 33),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 10),
(15, 12),
(15, 13),
(15, 18),
(15, 28),
(15, 32),
(15, 33),
(15, 36),
(15, 37),
(15, 38),
(15, 39),
(15, 41),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(16, 6),
(16, 7),
(16, 9),
(16, 10),
(16, 12),
(16, 14),
(16, 17),
(16, 22),
(16, 29),
(16, 30),
(16, 32),
(16, 34),
(16, 36),
(16, 37),
(16, 38),
(16, 39),
(16, 40),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 8),
(17, 9),
(17, 10),
(17, 12),
(17, 13),
(17, 17),
(17, 20),
(17, 22),
(17, 30),
(17, 32),
(17, 34),
(17, 36),
(17, 37),
(17, 38),
(17, 39),
(17, 40),
(17, 41),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 10),
(18, 12),
(18, 18),
(18, 30),
(18, 32),
(18, 34),
(18, 37),
(18, 38),
(18, 39),
(18, 41),
(19, 3),
(19, 4),
(19, 5),
(19, 6),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 8),
(20, 10),
(20, 12),
(20, 32),
(20, 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_exterior`
--

CREATE TABLE `event_hall_exterior` (
  `event_hall_exterior_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_hall_exterior`
--

INSERT INTO `event_hall_exterior` (`event_hall_exterior_id`, `event_hall_id`, `name`) VALUES
(20, 13, 'Jardín iluminado'),
(19, 13, 'Estacionamiento '),
(11, 7, 'Caseta de vigilancia'),
(17, 11, 'cosa2'),
(16, 11, 'cosa1'),
(14, 6, 'no'),
(18, 7, 'estacionamiento privado'),
(21, 13, 'Sanitarios'),
(22, 13, 'Alberca con iluminación'),
(23, 13, 'Lago'),
(24, 13, 'Asador'),
(27, 13, 'iluminación arquitectónica'),
(26, 14, 'Estacionamiento Publico'),
(28, 17, 'Amplio estacionamiento privado'),
(29, 17, 'Amplios baños'),
(30, 17, 'Jardín para eventos'),
(31, 17, 'Mesas redondas y cuadradas'),
(32, 17, 'Mantelería'),
(33, 17, 'Lobby'),
(34, 17, 'Pista de baile'),
(35, 17, 'Silla Tiffany Plata'),
(36, 17, 'Vasos de cristal'),
(37, 17, 'Muro lloron con iluminación'),
(38, 18, 'Hieleras  '),
(40, 18, 'Sala Lounge'),
(41, 18, 'Sombrillas '),
(42, 18, 'Mesas Jardin'),
(43, 18, 'Sillas'),
(44, 18, 'Muro lloron '),
(45, 18, 'Iluminación '),
(46, 18, 'Jardín Vertical '),
(47, 18, 'Pasto Natural '),
(48, 18, 'Pérgola '),
(49, 12, 'asad'),
(50, 20, 'Estacionamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_favorite`
--

CREATE TABLE `event_hall_favorite` (
  `event_hall_favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_hall_favorite`
--

INSERT INTO `event_hall_favorite` (`event_hall_favorite_id`, `user_id`, `event_hall_id`) VALUES
(38, 2, 7),
(39, 6, 7),
(44, 144, 20),
(45, 144, 17),
(46, 144, 14),
(48, 11, 20),
(49, 11, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_interior`
--

CREATE TABLE `event_hall_interior` (
  `event_hall_interior_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_hall_interior`
--

INSERT INTO `event_hall_interior` (`event_hall_interior_id`, `event_hall_id`, `name`) VALUES
(29, 7, 'Escenario'),
(28, 7, 'Cocineta'),
(26, 7, '3 Sanitarios para dama'),
(36, 11, 'cosa3'),
(37, 11, 'cosa2333333333333333333333333333333'),
(30, 7, 'Pista de baile'),
(31, 7, 'Recepción'),
(34, 6, 'si'),
(38, 7, 'fuente'),
(39, 7, 'rhfelfhekrjfhekrjfhekrf'),
(40, 7, 'alberca'),
(41, 13, 'Recepción'),
(42, 13, 'Sanitarios'),
(43, 13, 'Terraza'),
(44, 13, 'Plataforma'),
(45, 13, 'Cocina'),
(46, 13, 'Cuarto privado'),
(54, 13, 'Bar'),
(48, 14, 'Sanitarios'),
(49, 14, 'Mobiliario'),
(50, 14, 'Cañon'),
(55, 17, 'Lobby'),
(52, 14, 'Recepción amplia y comoda'),
(53, 14, 'Cafeteria'),
(56, 17, 'Pista de baile'),
(57, 17, 'Amplio estacionamiento privado'),
(58, 17, 'Escenario'),
(59, 17, 'Amplios baños'),
(60, 17, 'Cocina'),
(61, 17, 'Mesas redondas y cuadradas'),
(62, 17, 'Silla Tiffany Plata'),
(63, 17, 'Vasos de cristal'),
(64, 17, 'Mantelería'),
(65, 18, 'Mobiliario'),
(66, 18, 'Cocina '),
(67, 18, 'Sonido'),
(68, 18, 'Baños'),
(69, 18, 'Calefacción '),
(70, 18, 'A/C'),
(71, 18, 'Decoración '),
(72, 12, 'shas'),
(73, 20, 'Terraza'),
(74, 20, 'Jardín'),
(75, 20, 'Espacio para pista de baile'),
(76, 20, 'Espacio para sonido y grupos musicales'),
(77, 20, 'Sanitarios Damas'),
(78, 20, 'Sanitarios Caballeros'),
(79, 20, 'Área de fuentes'),
(80, 20, 'Barra de Bebidas'),
(81, 20, 'Fuentes con Iluminación');

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

--
-- Volcado de datos para la tabla `event_hall_package`
--

INSERT INTO `event_hall_package` (`event_hall_package_id`, `event_hall_id`, `name`, `price`, `priceType`, `qty`, `description`, `created_at`, `updated_at`) VALUES
(1, 6, '1', '1.00', '', '', '1', '2016-01-05 19:12:27', '2016-01-05 19:12:27'),
(11, 11, 'prueba', '1122.00', 'Por Persona', '4 a 6', 'd\nd\nd\nd\nd\nd\nd\nd\nd\nd\n', '2016-05-20 21:27:39', '2016-07-07 18:22:38'),
(12, 11, '21233333123', '321313.00', 'Por evento', '595 a 900', '12313123', '2016-05-25 17:29:32', '2016-07-07 18:22:11'),
(13, 7, 'restaurante', '1200.00', 'Por evento', '100 a 300', 'aksdsalkalsd\r\nlksdjlaksjdal\r\nlkasjdlaksjdla\r\nlkasjdlaksjdl\r\naksdjlakjdlaksd\r\nlkjsdlakjdlakjd\r\nñasjdlakjsdl\r\nlkjsdlakjd\r\nlkjsdlakjdlakjd\r\nlkjsdlakjd\r\n', '2016-05-25 17:31:15', '2016-05-25 17:31:15'),
(15, 7, 'lksadjalskj', '2000.00', 'Por Hora', '100 a 500', 'jlksjdlkjçañ\r\nñlksdñalkdñalksd\r\nñalskdñalskdñalkd\r\nañsldkañldksañlkd\r\nalskdñal\r\na\r\na\r\na\r\n\r\na\r\na\r\naa\r\nkñslkdañlsdkañlkñalkd\r\nñlkdñalksdñalskdñalskdñalkdñalkd\r\nñlksdñalksdñakds\r\nñlkdñalkd', '2016-05-25 17:31:43', '2016-05-25 17:31:43'),
(16, 7, 'Villalba', '20000.00', 'Por evento', '100 a 500', 'dlkjaldkjf\r\nspodasjdadjs\r\napsodjadjs\r\naspdoaosjd\r\nasdpojasdjasdjasjdalskjdlaskdjalskdjalskjdalskjdalksjdalksjdalskjdalskjdalskjdalksjdalksd\r\nljsdlaksjdald\r\nasjdlakjsdlaksjd\r\nasjdlaksjdalksjdñsd\r\najsdlkjdlaksjd\r\nlaskjdlaksjdlaksjdaslkdajsdlakdjad\r\nsajdlakjsdlakjsdalksjdalsd\r\nlkajsdlakjsdalksjdaeiuowiejd\r\nlaksjdlaksjdlaksjdlaksjdalsd\r\nlksjdalkjsdalksjdalksd\r\nlaskdjlaskdjlaskjdalksdjalkjsdladjksjdlakjeijfbbjñsdf\r\nksdlskdldjalsjdlaksdjlksjd\r\njlasdjlaskjdlaskjdlksjd\r\nlasdjklakjdekl\r\nasjdlaskjdlaksd\r\nkñsajdlskjdlksjdlakjd\r\n', '2016-05-25 17:33:55', '2016-05-25 17:33:55'),
(17, 7, 'Paquete ruben', '100000.00', 'Por evento', '100 a 300', 'kjshdkajsdh\r\nlaksdjalskdaslkcas\r\naksdlaska\r\naklsdjaskdnas\r\nasdalskdalsdj\r\njasldkhalskhdalsfh\r\n', '2016-05-31 01:36:30', '2016-05-31 01:36:30'),
(18, 12, 'Nombre', '0.00', 'Por evento', '0 a 100', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-13 22:00:07', '2016-07-13 22:00:07'),
(19, 13, 'Nombre', '0.00', 'Por evento', '1 a 100', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-21 02:07:48', '2016-07-21 02:07:48'),
(20, 13, 'Nombre', '0.00', 'Por Hora', '100 a 200', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-21 02:10:45', '2016-07-21 02:10:45'),
(21, 13, 'Nombre', '0.00', 'Por Persona', '100 a 300', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-21 02:11:17', '2016-07-21 02:11:17'),
(22, 13, 'Nombre', '0.00', 'Por evento', '500 a 1000', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-26 01:04:29', '2016-07-26 01:04:29'),
(23, 13, 'Nombre', '0.00', 'Por Persona', '200 a 500', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-26 01:05:25', '2016-07-26 01:05:25'),
(24, 13, 'Nombre', '0.00', 'Por evento', '1000 a 5000', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-26 01:06:28', '2016-07-26 01:06:28'),
(25, 13, 'Nombre', '0.00', 'Por Hora', '10 a 30', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-26 01:11:01', '2016-07-26 01:11:01'),
(26, 13, 'Nombre', '0.00', 'Por Hora', '300 a 800', '¿Qué incluye tu paquete? Escribe aquí.', '2016-07-26 01:11:27', '2016-07-26 01:11:27'),
(27, 14, 'Sala 1', '200.00', 'Por Hora', '1 a 30', 'Incluye:\nMobiliario, \nSanitarios, \nCañon\nCoffee break al gusto del cliente', '2016-08-11 17:37:25', '2016-09-20 21:00:58'),
(28, 14, 'Sala 2', '150.00', 'Por Hora', '1 a 12', 'Mobiliario\nSanitarios\nCañon\nCoffee break al gusto del cliente', '2016-08-11 17:38:22', '2016-09-20 21:01:19'),
(29, 14, 'Sala 3', '150.00', 'Por Hora', '1 a 12', 'Mobiliario\nSanitarios\nCañon\nCoffee break al gusto del cliente', '2016-08-11 17:39:22', '2016-09-20 21:01:58'),
(30, 14, 'Sala 4', '100.00', 'Por Hora', '1 a 6', 'Mobiliario\nSanitarios\nCañon\nCoffee break al gusto del cliente', '2016-08-11 17:40:43', '2016-09-20 21:02:56'),
(31, 17, 'Económico', '34500.00', 'Por evento', '250 a 500', 'Salón con pista de baile\nMesas redondas y cuadradas\nSilla tiffany color plata\nMantel sencillo cualquier color\nDescorche\nVasos de cristal\nRecepcionista\nSupervisor de evento \nPersonal de limpieza (2)\nEstacionamiento privado', '2016-12-21 16:56:40', '2016-12-21 17:00:15'),
(32, 17, 'Paquete Sencillo', '44000.00', 'Por evento', '250 a 500', 'Salón con pista de baile \r\nMesas redondas y cuadradas\r\nSilla tiffany color plata\r\nMantel sencillo cualquier color\r\nDescorche\r\nVasos de cristal\r\nPermiso de gobernación con dos guardias\r\nRecepcionista\r\nPersonal de limpieza (2)\r\nMeseros\r\nServicio de refrescos y hielo (ilimitado por 5 horas)\r\nEstacionamiento privado', '2016-12-21 17:03:21', '2016-12-21 17:03:21'),
(33, 17, 'Paquete Fiesta Básico', '73300.00', 'Por evento', '250 a 500', 'Salón desde 250 personas que incluye:\nMesas redondas y cuadradas	\nPermiso de presidencia con 2 guardias\nSilla tiffany plata\nRecepcionista\nDescorche\nCapitán de Meseros y  meseros\nVasos de cristal \n2 Personas de limpieza\nRefresco y hielo del evento\nMantelería (Combinación: Sencilla y Exclusiva)\nArreglos florales, opción renta u obsequio:\nCentros de mesa \nArreglo entrada\nArreglos mesa principal\nCanasta para baño\nPastel de diferentes sabores (fondant y chantilly)\nSonido Amadeus que incluye: \nSonido grande\nCámara de humo/burbujas \nCabina iluminada\nPantalla gigante 3x4 mts. \n4 perimetrales iluminados		\n2 zanqueros (con set de una hora) \nShow de luces LED	\nShow de ambientación (Premium)\nShow de luces Robóticas\n1 Personaje (sujetos a disponibilidad como: Pitbull, Celia Cruz, Luis Miguel o Elvis)\nComplementos:\nCuchillos, 2 copas, botella para brindis y desechables para el pastel (plato, tenedor y servilleta)\nFotografía: \n1 foto 16x20” montada y laminada.\n100 fotos impresas', '2016-12-21 17:10:58', '2016-12-21 17:15:39'),
(34, 18, 'Paquete 1 Bodas y XV años', '17800.00', 'Por evento', '150 a 200', 'Mobiliario\nMesas y sillas (tipo Tiffany)\nSonido con ambientación\nMeseros\nManteleria\nCristaleria (Vasos de vidrio)\nSala Lounge \nSombrillas (Mesas jardín)\nHielo  ', '2017-01-19 23:44:15', '2017-01-19 23:48:33'),
(35, 18, 'Paquete 2 Boda y XV años', '14800.00', 'Por evento', '100 a 150', 'Mobiliario\nMesas y sillas (tipo Tiffany)\nSonido con ambientación\nMeseros\nManteleria\nCristaleria (Vasos de vidrio)\nSala Lounge \nSombrillas (Mesas jardín)\nHielo  ', '2017-01-19 23:46:56', '2017-01-19 23:48:45'),
(36, 18, 'Paquete 3 Bodas y XV años', '12800.00', 'Por evento', '50 a 100', 'Mobiliario\nMesas y sillas (tipo Tiffany)\nSonido con ambientación\nMeseros\nManteleria\nCristaleria (Vasos de vidrio)\nSala Lounge \nSombrillas (Mesas jardín)\nHielo  ', '2017-01-19 23:47:55', '2017-01-19 23:48:56'),
(37, 19, 'basico', '200.00', 'Por evento', '50 a 50', 'Lugar\nÁrea de juegos\nAlberca', '2017-08-10 22:07:42', '2017-08-10 22:07:57'),
(38, 20, 'PAQUETE COMPLETO BODA (Sábado)', '53000.00', 'Por evento', '200 a 400', 'Renta de la Terraza\nMobiliario (Mesas, sillas, vasos cristal, salitas lounge, carritos de servicio, pinzas, charolas).\nArreglos Florales (Renta Express)\nManteleria Lujo\nPersonal Intendencia\nDescorche Libre (Aguas, hielos y refrescos)\nMeseros (Barman y Capitán de Meseros)\n Sonido Amadeus (Paquete premier)\nPermiso de Gobernación (Personal de Seguridad Incluido)\nNOTA: la renta de la Terraza es por 5 horas, el contrato se hace con  el 20% de anticipo del total del paquete.', '2019-10-24 03:30:30', '2019-10-24 23:17:11'),
(39, 20, 'PAQUETE COMPLETO BODA (Viernes)', '48000.00', 'Por evento', '200 a 200', 'PAQUETE COMPLETO BODA (Viernes)', '2019-10-24 03:31:49', '2019-10-30 20:33:48'),
(40, 20, 'PAQUETE BÁSICO BODA (Sábado)', '30000.00', 'Por evento', '200 a 200', 'Renta de la Terraza\nMeseros (Capitan de meseros y Barman.\nMobiliario (mesas, sillas, vasos de cristal, salitas lounge, carritos de servicio, Pinzas, Charolas)\nPersonal de Intendencia\nNOTA: La renta de la Terraza es por 5 horas y es en base a 200 personas, el contrato se hace con el 20% de anticipo del total del paquete, costo por persona extra $120.', '2019-10-24 03:40:18', '2019-10-24 23:26:58'),
(45, 20, 'PAQUETE BÁSICO BODA (Viernes)', '28500.00', 'Por evento', '200 a 200', 'Renta de la Terraza.\nMeseros (Capitán de meseros y Barman).\nMobiliario (mesas, sillas, vasos de cristal, salitas lounge, carritos de servicio, Pinzas, Charolas).\nPersonal de Intendencia\nNOTA: La renta de la Terraza es por 5 horas y es en base a 200 personas, el contrato se hace con el 20% de anticipo del total del paquete, costo por persona extra $120.', '2019-10-24 04:05:39', '2019-10-24 23:27:54'),
(46, 20, 'PAQUETE TODO INCLUIDO XV (Sábado)', '53000.00', 'Por evento', '200 a 200', 'Renta de la Terraza.\nMobiliario (Mesas, sillas, vasos de cristal, salitas lounge, carritos de servicio, pinzas, charolas).\nArreglos Florales (Renta Express).\nMantelería de Lujo.\nPersonal de Intendencia.\nDescorche Libre (Aguas, hielos y refrescos).\nMeseros (Barman y Capitán de Meseros).\nSonido Amadeus (Paquete premier).\nPermiso de Gobernación (Personal de Seguridad Incluido).\nNOTA: la renta de la Terraza es por 5 horas, el contrato se hace con el 20% de anticipo del total del paquete.', '2019-10-24 04:09:43', '2019-10-24 23:29:40'),
(47, 20, 'PAQUETE TODO INCLUIDO XV (Viernes)', '48000.00', 'Por evento', '200 a 200', 'Renta de la Terraza.\nMobiliario (Mesas, sillas, vasos de cristal, salitas lounge, carritos de servicio, pinzas, charolas).\nArreglos Florales (Renta Express).\nMantelería de Lujo.\nPersonal Intendencia.\nDescorche Libre (Aguas, hielos y refrescos).\nMeseros (Barman y Capitán de Meseros).\nSonido Amadeus (Paquete premier).\nPermiso de Gobernación (Personal de Seguridad Incluido).\nNOTA: la renta de la Terraza es por 5 horas, el contrato se hace con el 20% de anticipo del total del paquete.', '2019-10-24 04:11:01', '2019-10-24 23:32:57'),
(48, 20, 'PAQUETE BÁSICO XV (Sábado)', '30000.00', 'Por evento', '200 a 200', 'Renta de la Terraza.\nMeseros (Capitán de meseros y Barman).\nMobiliario (mesas, sillas, vasos de cristal, salitas lounge, carritos de servicio,Pinzas,Charolas).\nPersonal de Intendencia.\nNOTA: La renta de la Terraza es por 5 horas y es en base a 200 personas, el contrato se hace con el 20% de anticipo del total del paquete, costo por persona extra $120.', '2019-10-24 04:11:53', '2019-10-24 23:33:29'),
(49, 20, 'PAQUETE BÁSICO XV (Viernes)', '28500.00', 'Por evento', '200 a 200', 'Renta de la Terraza.\nMeseros (Capitán de meseros y Barman).\nMobiliario (mesas, sillas, vasos de cristal, salitas lounge, carritos de servicio, Pinzas ,Charolas).\nPersonal de Intendencia.\nNOTA: La renta de la Terraza es por 5 horas y es en base a 200 personas, el contrato se hace con el 20% de anticipo del total del paquete, costo por persona extra $120.', '2019-10-24 04:12:34', '2019-10-24 23:34:48');

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

--
-- Volcado de datos para la tabla `event_hall_slider`
--

INSERT INTO `event_hall_slider` (`event_hall_slider_id`, `event_hall_id`, `url`, `order`) VALUES
(25, 6, '/frontend/profile/3/slider/2016-01-05-02-463.jpg', 0),
(29, 7, '/frontend/profile/7/slider/2016-04-19-37-527.jpg', 0),
(30, 7, '/frontend/profile/7/slider/2016-04-19-38-087.jpg', 0),
(31, 7, '/frontend/profile/7/slider/2016-04-19-38-287.jpg', 0),
(37, 7, '/frontend/profile/7/slider/2016-05-25-10-227.jpg', 0),
(38, 7, '/frontend/profile/7/slider/2016-05-25-12-237.jpg', 0),
(45, 7, '/frontend/profile/7/slider/2016-05-25-13-357.jpg', 0),
(48, 7, '/frontend/profile/7/slider/2016-05-25-44-287.jpg', 0),
(49, 7, '/frontend/profile/7/slider/2016-05-25-44-477.jpg', 0),
(51, 7, '/frontend/profile/7/slider/2016-05-25-45-167.jpg', 0),
(63, 13, '/frontend/profile/25/slider/2016-07-21-23-5025.jpg', 0),
(64, 13, '/frontend/profile/25/slider/2016-07-21-34-4925.jpg', 0),
(65, 13, '/frontend/profile/25/slider/2016-07-21-35-0625.jpg', 0),
(66, 13, '/frontend/profile/25/slider/2016-07-21-35-2525.jpg', 0),
(67, 13, '/frontend/profile/25/slider/2016-07-21-35-4625.jpg', 0),
(68, 13, '/frontend/profile/25/slider/2016-07-21-35-5925.jpg', 0),
(69, 13, '/frontend/profile/25/slider/2016-07-21-46-0825.jpg', 0),
(70, 13, '/frontend/profile/25/slider/2016-07-21-46-4325.jpg', 0),
(71, 13, '/frontend/profile/25/slider/2016-07-21-47-0825.jpg', 0),
(72, 13, '/frontend/profile/25/slider/2016-07-21-47-2625.jpg', 0),
(73, 13, '/frontend/profile/25/slider/2016-07-21-47-4225.jpg', 0),
(74, 13, '/frontend/profile/25/slider/2016-07-21-48-0125.jpg', 0),
(75, 13, '/frontend/profile/25/slider/2016-07-21-48-3325.jpg', 0),
(76, 13, '/frontend/profile/25/slider/2016-07-21-49-1125.jpg', 0),
(77, 13, '/frontend/profile/25/slider/2016-07-21-49-3425.jpg', 0),
(79, 13, '/frontend/profile/25/slider/2016-07-22-52-2525.jpg', 0),
(80, 13, '/frontend/profile/25/slider/2016-07-22-52-4325.jpg', 0),
(81, 13, '/frontend/profile/25/slider/2016-07-22-53-2425.jpg', 0),
(83, 13, '/frontend/profile/25/slider/2016-07-22-53-4025.jpg', 0),
(84, 13, '/frontend/profile/25/slider/2016-07-22-54-2025.jpg', 0),
(85, 13, '/frontend/profile/25/slider/2016-07-22-55-0025.jpg', 0),
(87, 13, '/frontend/profile/25/slider/2016-07-22-56-0025.jpg', 0),
(88, 12, '/frontend/profile/24/slider/2016-07-26-45-0824.jpg', 0),
(129, 14, '/frontend/profile/29/slider/2016-08-22-45-2029.jpg', 0),
(130, 14, '/frontend/profile/29/slider/2016-08-22-45-3029.jpg', 0),
(131, NULL, '', 0),
(132, 14, '/frontend/profile/29/slider/2016-08-22-45-4929.jpg', 0),
(133, NULL, '', 0),
(134, 14, '/frontend/profile/29/slider/2016-08-22-46-0429.jpg', 0),
(135, 14, '/frontend/profile/29/slider/2016-08-22-47-2529.jpg', 0),
(136, 14, '/frontend/profile/29/slider/2016-08-22-47-3929.jpg', 0),
(137, 14, '/frontend/profile/29/slider/2016-08-22-47-5229.jpg', 0),
(138, NULL, '', 0),
(139, 14, '/frontend/profile/29/slider/2016-08-22-48-1729.jpg', 0),
(140, 14, '/frontend/profile/29/slider/2016-08-22-50-0529.jpg', 0),
(141, 14, '/frontend/profile/29/slider/2016-08-22-50-2529.jpg', 0),
(142, 14, '/frontend/profile/29/slider/2016-08-22-51-2429.jpg', 0),
(143, 14, '/frontend/profile/29/slider/2016-08-22-51-3929.jpg', 0),
(145, 14, '/frontend/profile/29/slider/2016-08-22-52-0529.jpg', 0),
(146, 14, '/frontend/profile/29/slider/2016-08-22-52-2929.jpg', 0),
(147, 14, '/frontend/profile/29/slider/2016-08-22-52-3929.jpg', 0),
(148, 15, '/frontend/profile/40/slider/2016-10-29-26-4340.jpg', 0),
(149, 15, '/frontend/profile/40/slider/2016-10-29-28-2740.jpg', 0),
(150, 15, '/frontend/profile/40/slider/2016-10-29-29-2040.jpg', 0),
(151, 15, '/frontend/profile/40/slider/2016-10-29-31-3240.jpg', 0),
(152, NULL, '', 0),
(153, 15, '/frontend/profile/40/slider/2016-10-29-32-3640.jpg', 0),
(154, 15, '/frontend/profile/40/slider/2016-10-29-00-0940.jpg', 0),
(155, NULL, '', 0),
(156, 15, '/frontend/profile/40/slider/2016-10-29-01-2440.jpg', 0),
(157, 15, '/frontend/profile/40/slider/2016-10-29-02-4540.jpg', 0),
(158, 15, '/frontend/profile/40/slider/2016-10-29-05-3140.jpg', 0),
(159, 15, '/frontend/profile/40/slider/2016-10-29-09-1240.jpg', 0),
(160, 16, '/frontend/profile/70/slider/2016-12-17-17-3470.jpg', 0),
(161, 17, '/frontend/profile/71/slider/2016-12-21-31-0671.jpg', 0),
(162, 17, '/frontend/profile/71/slider/2016-12-21-31-1671.jpg', 0),
(163, 17, '/frontend/profile/71/slider/2016-12-21-31-2671.jpg', 0),
(164, 17, '/frontend/profile/71/slider/2016-12-21-31-4271.jpg', 0),
(165, 17, '/frontend/profile/71/slider/2016-12-21-31-5471.jpg', 0),
(166, 17, '/frontend/profile/71/slider/2016-12-21-32-0671.jpg', 0),
(167, 17, '/frontend/profile/71/slider/2016-12-21-32-1971.jpg', 0),
(168, 17, '/frontend/profile/71/slider/2016-12-21-32-3371.jpg', 0),
(169, 17, '/frontend/profile/71/slider/2016-12-21-32-5171.jpg', 0),
(170, 17, '/frontend/profile/71/slider/2016-12-21-33-0771.jpg', 0),
(171, 17, '/frontend/profile/71/slider/2016-12-21-33-2471.jpg', 0),
(172, 17, '/frontend/profile/71/slider/2016-12-21-33-4171.jpg', 0),
(173, 17, '/frontend/profile/71/slider/2016-12-21-33-5671.jpg', 0),
(174, 17, '/frontend/profile/71/slider/2016-12-21-34-1071.jpg', 0),
(175, 17, '/frontend/profile/71/slider/2016-12-21-34-3171.jpg', 0),
(176, 17, '/frontend/profile/71/slider/2016-12-21-34-4571.jpg', 0),
(177, 17, '/frontend/profile/71/slider/2016-12-21-34-5871.jpg', 0),
(178, 17, '/frontend/profile/71/slider/2016-12-21-35-1171.jpg', 0),
(179, 17, '/frontend/profile/71/slider/2016-12-21-35-3071.jpg', 0),
(180, 17, '/frontend/profile/71/slider/2016-12-21-49-2271.jpg', 0),
(181, 17, '/frontend/profile/71/slider/2016-12-21-49-3171.jpg', 0),
(182, 17, '/frontend/profile/71/slider/2016-12-21-49-3871.jpg', 0),
(183, 17, '/frontend/profile/71/slider/2016-12-21-49-5271.jpg', 0),
(184, NULL, '', 0),
(185, 17, '/frontend/profile/71/slider/2016-12-21-50-1371.jpg', 0),
(186, 17, '/frontend/profile/71/slider/2016-12-21-50-2771.jpg', 0),
(187, 17, '/frontend/profile/71/slider/2016-12-21-51-3771.jpg', 0),
(188, 17, '/frontend/profile/71/slider/2016-12-21-51-4671.jpg', 0),
(189, 17, '/frontend/profile/71/slider/2016-12-21-51-5671.jpg', 0),
(190, 18, '/frontend/profile/73/slider/2017-01-17-48-4473.jpg', 0),
(192, 18, '/frontend/profile/73/slider/2017-01-17-48-5573.jpg', 0),
(193, 18, '/frontend/profile/73/slider/2017-01-17-49-0573.jpg', 0),
(194, 18, '/frontend/profile/73/slider/2017-01-17-49-3073.jpg', 0),
(195, 18, '/frontend/profile/73/slider/2017-01-17-49-5073.jpg', 0),
(196, 18, '/frontend/profile/73/slider/2017-01-17-50-0173.jpg', 0),
(197, 18, '/frontend/profile/73/slider/2017-01-17-50-1473.jpg', 0),
(198, 18, '/frontend/profile/73/slider/2017-01-17-50-2773.jpg', 0),
(199, 18, '/frontend/profile/73/slider/2017-01-17-50-4173.jpg', 0),
(200, 18, '/frontend/profile/73/slider/2017-01-17-50-5573.jpg', 0),
(201, 18, '/frontend/profile/73/slider/2017-01-17-51-1173.jpg', 0),
(203, 18, '/frontend/profile/73/slider/2017-01-17-51-3073.jpg', 0),
(204, 18, '/frontend/profile/73/slider/2017-01-17-52-5073.jpg', 0),
(205, NULL, '', 0),
(206, NULL, '', 0),
(207, NULL, '', 0),
(208, NULL, '', 0),
(209, 18, '/frontend/profile/73/slider/2017-01-17-53-5573.jpg', 0),
(210, NULL, '', 0),
(211, NULL, '', 0),
(212, NULL, '', 0),
(213, 18, '/frontend/profile/73/slider/2017-01-17-55-1973.jpg', 0),
(214, NULL, '', 0),
(215, 18, '/frontend/profile/73/slider/2017-01-17-58-5173.jpg', 0),
(217, NULL, '', 0),
(218, NULL, '', 0),
(224, NULL, '', 0),
(225, NULL, '', 0),
(250, 20, '/frontend/profile/140/slider/2019-10-24-24-00140.jpg', 0),
(251, 20, '/frontend/profile/140/slider/2019-10-24-24-21140.jpg', 0),
(252, 20, '/frontend/profile/140/slider/2019-10-24-24-45140.jpg', 0),
(253, 20, '/frontend/profile/140/slider/2019-10-24-25-01140.jpg', 0),
(254, 20, '/frontend/profile/140/slider/2019-10-24-25-22140.jpg', 0),
(255, 20, '/frontend/profile/140/slider/2019-10-24-25-58140.jpg', 0),
(256, 20, '/frontend/profile/140/slider/2019-10-24-26-16140.jpg', 0),
(257, 20, '/frontend/profile/140/slider/2019-10-24-26-51140.jpg', 0),
(258, 20, '/frontend/profile/140/slider/2019-10-24-27-08140.jpg', 0),
(259, 20, '/frontend/profile/140/slider/2019-10-24-27-24140.jpg', 0),
(260, 20, '/frontend/profile/140/slider/2019-10-24-28-03140.jpg', 0),
(261, 20, '/frontend/profile/140/slider/2019-10-24-28-22140.jpg', 0),
(262, 20, '/frontend/profile/140/slider/2019-10-24-28-35140.jpg', 0),
(263, 20, '/frontend/profile/140/slider/2019-10-24-28-44140.jpg', 0),
(264, 20, '/frontend/profile/140/slider/2019-10-24-29-05140.jpg', 0),
(265, 20, '/frontend/profile/140/slider/2019-10-24-29-36140.jpg', 0),
(266, 20, '/frontend/profile/140/slider/2019-10-24-29-45140.jpg', 0),
(267, 20, '/frontend/profile/140/slider/2019-10-24-54-00140.jpg', 0),
(268, 20, '/frontend/profile/140/slider/2019-10-24-54-55140.jpg', 0),
(269, 20, '/frontend/profile/140/slider/2019-10-24-55-12140.jpg', 0),
(270, 20, '/frontend/profile/140/slider/2019-10-24-55-38140.jpg', 0),
(271, 20, '/frontend/profile/140/slider/2019-10-24-55-59140.jpg', 0),
(272, 20, '/frontend/profile/140/slider/2019-10-24-57-05140.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_hall_video`
--

CREATE TABLE `event_hall_video` (
  `event_hall_video_id` int(11) NOT NULL,
  `event_hall_id` int(11) NOT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `event_hall_video`
--

INSERT INTO `event_hall_video` (`event_hall_video_id`, `event_hall_id`, `url`) VALUES
(35, 11, 'https://www.youtube.com/embed/fFkRF3JCMSE'),
(37, 7, 'https://www.youtube.com/embed/Z4Rux883XSo'),
(38, 13, 'https://www.youtube.com/embed/C1_PFmpghug'),
(39, 15, 'Https://www.facebook.com/delviceventos/videos/1746168788934434/'),
(40, 17, 'https://www.youtube.com/watch?v=EJvRtmplJVY'),
(45, 20, 'fc46d_i5R6Y');

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

--
-- Volcado de datos para la tabla `instrument`
--

INSERT INTO `instrument` (`instrument_id`, `name`) VALUES
(9, 'Acordeón'),
(119, 'Anata'),
(126, 'Arco musical'),
(131, 'Arghul'),
(10, 'Armónica'),
(11, 'Armonio'),
(12, 'Arpa'),
(2, 'Bajo'),
(150, 'Bajo electrico'),
(100, 'Bajo quinto'),
(13, 'Balalaika'),
(61, 'Bandoneón'),
(14, 'Bandurria'),
(15, 'Banyo'),
(3, 'Bateria'),
(132, 'Bendir'),
(113, 'Bombardino'),
(62, 'Bombo'),
(98, 'Bongoes'),
(97, 'Cabasa'),
(117, 'Caja clara'),
(63, 'Caja de ritmos'),
(16, 'Campana'),
(116, 'Campanas'),
(17, 'Carillón'),
(18, 'Carraca'),
(64, 'Castañuela'),
(19, 'Castañuelas'),
(115, 'Celesta'),
(20, 'Cencerro'),
(163, 'Chajchas'),
(65, 'Chistu'),
(27, 'Cítara'),
(67, 'Cítola'),
(21, 'Clarín'),
(22, 'Clarinete'),
(109, 'Clarinete Bajo'),
(110, 'Clarinetes'),
(23, 'Clave'),
(24, 'Claves'),
(66, 'Clavicembalo'),
(99, 'Congas'),
(28, 'Contrabajo'),
(107, 'Contrafagot'),
(25, 'Corneta'),
(26, 'Corno Inglés'),
(56, 'Coros'),
(130, 'Crótalos'),
(164, 'Cuchara rítmica afroperuanas'),
(133, 'Daf'),
(68, 'Daff'),
(29, 'Darbuka'),
(134, 'Derbake'),
(69, 'Diapasón'),
(151, 'Docerola'),
(30, 'Dulzaina'),
(121, 'Erkencho'),
(124, 'Erque'),
(70, 'Espineta'),
(31, 'Fagot'),
(108, 'Fagots'),
(71, 'Flabiol'),
(5, 'Flauta'),
(72, 'Flauta de tubos'),
(73, 'Flauta de una mano'),
(74, 'Flauta travesera'),
(32, 'Flautín'),
(75, 'Fliscorno'),
(76, 'Gaita'),
(165, 'Gimbarda'),
(114, 'Glockenspiel'),
(33, 'Gong'),
(77, 'Guimbarda'),
(34, 'Güiro'),
(148, 'Guitarra 12 cuerdas'),
(149, 'Guitarra clásica'),
(154, 'Guitarra de son'),
(1, 'Guitarra Eléctrica'),
(8, 'Guitarra Electroacústica'),
(78, 'Guitarra flamenca'),
(153, 'Jarana'),
(79, 'Kalimba'),
(162, 'Kazo'),
(80, 'Koto'),
(128, 'Kultrún'),
(118, 'Látigo'),
(35, 'Laúd'),
(135, 'Laúd árabe'),
(81, 'Lira viola'),
(82, 'Maraca'),
(36, 'Marimba'),
(129, 'Matraca'),
(136, 'Mazhar'),
(37, 'Metalófono'),
(137, 'Mijwiz'),
(138, 'Mizmar'),
(139, 'Mizwad'),
(140, 'Naqareh'),
(38, 'Oboe'),
(39, 'Ocarina'),
(41, 'Organillo'),
(40, 'Órgano'),
(42, 'Pandereta'),
(43, 'Pandero'),
(156, 'Pandero Tlacotalpeño'),
(141, 'Pandura'),
(84, 'Percusiones'),
(7, 'Piano'),
(111, 'Piccolo'),
(122, 'Pifilka'),
(123, 'Pinkillo'),
(104, 'Platillos'),
(96, 'Platos'),
(160, 'Pututo'),
(159, 'Pututu'),
(142, 'Qanun'),
(161, 'Quena'),
(157, 'Quijada de burro'),
(44, 'Rabel'),
(83, 'Rascador'),
(143, 'Rebab'),
(144, 'Riq'),
(85, 'Sampler'),
(45, 'Saxofón'),
(86, 'Shahnai'),
(46, 'Shekere'),
(87, 'Siku'),
(120, 'Silbato'),
(92, 'Sintetizador'),
(147, 'Sintetizadores'),
(47, 'Siringa'),
(88, 'Sistro'),
(55, 'Solista'),
(89, 'Sonajero de campanillas'),
(90, 'Sordina'),
(48, 'Tambor'),
(145, 'Tambor de copa'),
(127, 'Tamboril'),
(155, 'Tarima'),
(93, 'Teclado'),
(95, 'Timbal'),
(152, 'Tololoche'),
(49, 'Triángulo'),
(50, 'Trombón'),
(112, 'Trombón de varas'),
(52, 'Trompa'),
(105, 'Trompas'),
(4, 'Trompeta'),
(106, 'Trompetas'),
(125, 'Trutruka'),
(91, 'Tsenatsil'),
(51, 'Tuba'),
(94, 'Ukelele'),
(53, 'Vibráfono'),
(54, 'Viola'),
(6, 'Violín'),
(58, 'Violonchelo'),
(101, 'Vocalista (Hombre)'),
(102, 'Vocalista (Mujer)'),
(57, 'Voz'),
(103, 'Xilofón'),
(59, 'Xilófono'),
(60, 'Zambomba'),
(158, 'Zampoña'),
(146, 'Zurna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musical_genre`
--

CREATE TABLE `musical_genre` (
  `musical_genre_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `musical_genre`
--

INSERT INTO `musical_genre` (`musical_genre_id`, `name`) VALUES
(91, 'Acid rock'),
(43, 'Africano'),
(115, 'Andina'),
(8, 'Arabe '),
(4, 'Bachata'),
(6, 'Balada'),
(7, 'Ballenato'),
(87, 'Banda'),
(105, 'Banda Sinaloense'),
(100, 'Bebop'),
(9, 'Blues'),
(97, 'Bolero'),
(13, 'Boleros'),
(98, 'Bossa nova'),
(103, 'Calypso'),
(104, 'Candombia'),
(50, 'Chachachá'),
(113, 'Chicanas'),
(86, 'Clásica'),
(2, 'Clásico'),
(15, 'Contemporáneo'),
(99, 'Cool-Jazz'),
(39, 'Corridos'),
(49, 'Country'),
(29, 'Cristiana'),
(36, 'Cumbia'),
(107, 'Cumbia Norteña'),
(108, 'Cumbia Sonidera'),
(17, 'Dance‎'),
(94, 'Dancehall'),
(112, 'Danzon'),
(114, 'Death Metal'),
(59, 'Deep house'),
(18, 'Disco‎'),
(12, 'DJ'),
(78, 'Electro Swing'),
(44, 'Equipo de Sonido'),
(60, 'Eurobeat'),
(96, 'Flamenco'),
(61, 'Folk'),
(62, 'Free – jazz'),
(23, 'Funk‎'),
(46, 'Funky'),
(64, 'Gabber'),
(63, 'Garage'),
(28, 'Gospel'),
(65, 'Grunge'),
(20, 'Hip hop‎'),
(66, 'Hip-Hop'),
(58, 'House'),
(40, 'Huapango'),
(16, 'Instrumental'),
(56, 'Italiano'),
(21, 'Jazz'),
(93, 'Mambo'),
(14, 'Mariachi'),
(48, 'Metal'),
(67, 'Minimalista'),
(19, 'Música electrónica'),
(22, 'Música folclórica‎'),
(24, 'Música latina'),
(68, 'New Age'),
(106, 'Norteña'),
(35, 'Norteño'),
(89, 'Ópera'),
(109, 'Pasito Duranguense'),
(41, 'Polca'),
(52, 'Polka'),
(3, 'Pop'),
(95, 'Psicodélica'),
(25, 'Punk‎'),
(110, 'Quebradita'),
(57, 'R & B'),
(38, 'Ranchera'),
(53, 'Ranchero'),
(69, 'Rap'),
(26, 'Reggae‎'),
(85, 'Reggaeton'),
(55, 'Regional popular'),
(30, 'Reguetón‎'),
(27, 'Religiosa'),
(88, 'Rhythm and Blues (R&B)'),
(1, 'Rock'),
(54, 'Rock 60´s'),
(70, 'Rock alternativo'),
(71, 'Rock and Roll'),
(111, 'Rock en español'),
(72, 'Rock progresivo'),
(73, 'Rock sinfónico'),
(31, 'Rumba'),
(32, 'Salsa'),
(92, 'Samba'),
(75, 'Sicodélica'),
(42, 'Sinaloense'),
(74, 'Ska'),
(51, 'Son'),
(76, 'Soul'),
(77, 'Swing'),
(37, 'Tango'),
(79, 'Tecno'),
(33, 'Tex Mex'),
(34, 'Texano'),
(80, 'Trance'),
(81, 'Trancecore'),
(82, 'Trash metal'),
(83, 'Trip-hop'),
(45, 'Tropical'),
(47, 'Trova'),
(84, 'Underground'),
(90, 'Vallenato'),
(5, 'Vals'),
(11, 'Versátil'),
(101, 'Woogie'),
(102, 'Zarzuela');

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

--
-- Volcado de datos para la tabla `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `type`, `amount`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 31, 1, '500.00', 1, '2016-09-01 20:17:54', '2016-09-01 20:17:54'),
(5, 32, 1, '4000.00', 1, '2016-09-05 00:50:21', '2016-09-05 00:50:21'),
(6, 32, 1, '4000.00', 1, '2016-09-05 00:52:08', '2016-09-05 00:52:08'),
(7, 31, 1, '1000.00', 1, '2016-09-05 00:55:49', '2016-09-05 00:55:49'),
(8, 31, 1, '1000.00', 1, '2016-09-05 00:56:23', '2016-09-05 00:56:23'),
(9, 32, 1, '4000.00', 1, '2016-09-05 01:04:57', '2016-09-05 01:04:57'),
(10, 48, 1, '1000.00', 1, '2016-09-05 01:09:40', '2016-09-05 01:09:40'),
(11, 32, 1, '4000.00', 1, '2016-09-05 01:19:43', '2016-09-05 01:19:43'),
(12, 33, 1, '4000.00', 1, '2016-09-05 01:19:57', '2016-09-05 01:19:57'),
(14, 35, 1, '1000.00', 1, '2016-09-05 01:21:48', '2016-09-05 01:21:48'),
(15, 36, 1, '4000.00', 1, '2016-09-05 01:22:05', '2016-09-05 01:22:05'),
(16, 37, 1, '4000.00', 1, '2016-09-05 01:22:26', '2016-09-05 01:22:26'),
(17, 38, 1, '4000.00', 1, '2016-09-05 01:22:59', '2016-09-05 01:22:59'),
(18, 38, 1, '4000.00', 1, '2016-09-05 01:23:01', '2016-09-05 01:23:01'),
(19, 38, 1, '1500.00', 1, '2016-09-05 01:24:13', '2016-09-05 01:24:13'),
(20, 39, 1, '4000.00', 1, '2016-09-05 01:25:47', '2016-09-05 01:25:47'),
(21, 40, 1, '4000.00', 1, '2016-09-05 01:26:31', '2016-09-05 01:26:31'),
(22, 41, 1, '1000.00', 1, '2016-09-05 01:26:48', '2016-09-05 01:26:48'),
(23, 40, 1, '4000.00', 1, '2016-09-05 01:27:01', '2016-09-05 01:27:01'),
(24, 42, 1, '1000.00', 1, '2016-09-05 01:27:14', '2016-09-05 01:27:14'),
(25, 43, 1, '1000.00', 1, '2016-09-05 01:27:31', '2016-09-05 01:27:31'),
(26, 44, 1, '4000.00', 1, '2016-09-05 01:27:44', '2016-09-05 01:27:44'),
(27, 45, 1, '4000.00', 1, '2016-09-05 01:27:56', '2016-09-05 01:27:56'),
(28, 46, 1, '1000.00', 1, '2016-09-05 01:28:07', '2016-09-05 01:28:07'),
(29, 47, 1, '1000.00', 1, '2016-09-05 01:28:30', '2016-09-05 01:28:30'),
(30, 32, 1, '4000.00', 1, '2016-09-05 19:44:30', '2016-09-05 19:44:30'),
(31, 69, 2, '1500.00', 69, '2016-12-06 19:41:44', '2016-12-06 19:41:44'),
(32, 69, 2, '1500.00', 69, '2016-12-06 19:43:10', '2016-12-06 19:43:10'),
(33, 69, 2, '1500.00', 69, '2016-12-06 19:48:17', '2016-12-06 19:48:17'),
(34, 69, 2, '1500.00', 69, '2016-12-06 19:53:00', '2016-12-06 19:53:00'),
(35, 69, 2, '500.00', 69, '2016-12-06 21:04:07', '2016-12-06 21:04:07'),
(36, 69, 2, '1500.00', 69, '2016-12-06 21:32:00', '2016-12-06 21:32:00'),
(37, 69, 2, '1500.00', 69, '2016-12-06 21:33:33', '2016-12-06 21:33:33'),
(38, 69, 2, '1500.00', 69, '2016-12-06 21:33:45', '2016-12-06 21:33:45'),
(39, 69, 2, '1500.00', 69, '2016-12-06 21:34:31', '2016-12-06 21:34:31'),
(40, 69, 2, '500.00', 69, '2016-12-06 22:17:32', '2016-12-06 22:17:32'),
(41, 70, 1, '1500.00', 1, '2016-12-06 23:02:15', '2016-12-06 23:02:15'),
(42, 71, 1, '4000.00', 1, '2016-12-20 23:21:53', '2016-12-20 23:21:53'),
(43, 69, 2, '500.00', 69, '2017-01-16 21:26:10', '2017-01-16 21:26:10'),
(44, 69, 2, '500.00', 69, '2017-01-16 21:26:12', '2017-01-16 21:26:12'),
(45, 72, 2, '1500.00', 72, '2017-01-17 17:14:49', '2017-01-17 17:14:49'),
(46, 72, 2, '1500.00', 72, '2017-01-17 17:15:11', '2017-01-17 17:15:11'),
(47, 73, 1, '4000.00', 1, '2017-01-17 23:17:34', '2017-01-17 23:17:34'),
(48, 73, 1, '4000.00', 1, '2017-01-17 23:17:53', '2017-01-17 23:17:53'),
(49, 74, 2, '1500.00', 74, '2017-02-20 22:27:32', '2017-02-20 22:27:32'),
(50, 74, 2, '500.00', 74, '2017-02-20 22:27:57', '2017-02-20 22:27:57'),
(51, 74, 2, '500.00', 74, '2017-02-20 22:29:25', '2017-02-20 22:29:25'),
(52, 74, 2, '500.00', 74, '2017-02-20 22:32:31', '2017-02-20 22:32:31'),
(53, 74, 2, '500.00', 74, '2017-02-20 22:42:49', '2017-02-20 22:42:49'),
(54, 74, 2, '500.00', 74, '2017-03-02 19:27:08', '2017-03-02 19:27:08'),
(55, 74, 2, '1500.00', 74, '2017-03-02 19:48:25', '2017-03-02 19:48:25'),
(56, 75, 1, '500.00', 1, '2017-03-14 22:17:14', '2017-03-14 22:17:14'),
(57, 78, 2, '1500.00', 78, '2017-03-17 17:18:04', '2017-03-17 17:18:04'),
(58, 79, 1, '1000.00', 1, '2017-06-02 23:56:49', '2017-06-02 23:56:49'),
(59, 80, 1, '1000.00', 1, '2017-06-12 15:20:23', '2017-06-12 15:20:23'),
(60, 81, 1, '1000.00', 1, '2017-06-12 18:01:07', '2017-06-12 18:01:07'),
(61, 90, 1, '1000.00', 1, '2017-09-07 00:37:38', '2017-09-07 00:37:38'),
(62, 89, 1, '4000.00', 1, '2017-09-07 00:37:59', '2017-09-07 00:37:59'),
(63, 78, 1, '1000.00', 1, '2018-08-23 20:50:29', '2018-08-23 20:50:29'),
(64, 99, 2, '1500.00', 99, '2018-10-19 02:39:23', '2018-10-19 02:39:23'),
(65, 100, 2, '4000.00', 100, '2018-10-19 02:59:31', '2018-10-19 02:59:31'),
(66, 101, 2, '1500.00', 101, '2018-10-19 03:11:04', '2018-10-19 03:11:04'),
(67, 102, 2, '1999.00', 102, '2018-11-04 04:14:38', '2018-11-04 04:14:38'),
(68, 133, 2, '1999.00', 133, '2019-06-01 21:38:54', '2019-06-01 21:38:54'),
(69, 98, 1, '1000.00', 1, '2019-06-12 04:40:16', '2019-06-12 04:40:16'),
(70, 29, 1, '4000.00', 1, '2019-06-12 18:53:29', '2019-06-12 18:53:29'),
(71, 32, 1, '4000.00', 1, '2019-06-12 19:10:56', '2019-06-12 19:10:56'),
(72, 33, 1, '4000.00', 1, '2019-06-12 19:50:58', '2019-06-12 19:50:58'),
(73, 34, 1, '4000.00', 1, '2019-06-12 20:01:39', '2019-06-12 20:01:39'),
(74, 35, 1, '1000.00', 1, '2019-06-12 20:23:11', '2019-06-12 20:23:11'),
(75, 36, 1, '4000.00', 1, '2019-06-12 20:32:01', '2019-06-12 20:32:01'),
(76, 48, 1, '1000.00', 1, '2019-06-19 00:59:33', '2019-06-19 00:59:33'),
(77, 88, 1, '1000.00', 1, '2019-06-19 01:34:48', '2019-06-19 01:34:48'),
(78, 70, 1, '1500.00', 1, '2019-06-19 16:23:50', '2019-06-19 16:23:50'),
(79, 37, 1, '4000.00', 1, '2019-06-19 20:00:43', '2019-06-19 20:00:43'),
(80, 38, 1, '4000.00', 1, '2019-06-19 20:07:33', '2019-06-19 20:07:33'),
(81, 39, 1, '4000.00', 1, '2019-06-19 20:20:14', '2019-06-19 20:20:14'),
(82, 40, 1, '4000.00', 1, '2019-06-19 20:21:02', '2019-06-19 20:21:02'),
(83, 41, 1, '1000.00', 1, '2019-06-19 20:30:56', '2019-06-19 20:30:56'),
(84, 71, 1, '4000.00', 1, '2019-06-20 17:58:39', '2019-06-20 17:58:39'),
(85, 75, 1, '1000.00', 1, '2019-06-20 17:59:38', '2019-06-20 17:59:38'),
(86, 96, 1, '1000.00', 1, '2019-06-20 18:42:34', '2019-06-20 18:42:34'),
(87, 97, 1, '1000.00', 1, '2019-06-20 18:43:21', '2019-06-20 18:43:21'),
(88, 90, 1, '1000.00', 1, '2019-06-20 18:44:26', '2019-06-20 18:44:26'),
(89, 87, 1, '1000.00', 1, '2019-06-20 18:50:13', '2019-06-20 18:50:13'),
(90, 89, 1, '4000.00', 1, '2019-06-20 18:53:59', '2019-06-20 18:53:59'),
(91, 95, 1, '1000.00', 1, '2019-06-20 18:55:10', '2019-06-20 18:55:10'),
(92, 93, 1, '1000.00', 1, '2019-06-20 19:03:43', '2019-06-20 19:03:43'),
(93, 80, 1, '1000.00', 1, '2019-06-20 19:11:19', '2019-06-20 19:11:19'),
(94, 79, 1, '1000.00', 1, '2019-06-20 19:29:29', '2019-06-20 19:29:29'),
(95, 43, 1, '1000.00', 1, '2019-06-20 19:29:43', '2019-06-20 19:29:43'),
(96, 137, 1, '1000.00', 1, '2019-07-10 22:52:43', '2019-07-10 22:52:43'),
(97, 78, 1, '1000.00', 1, '2019-09-05 17:00:04', '2019-09-05 17:00:04'),
(98, 139, 1, '1000.00', 1, '2019-10-16 17:27:11', '2019-10-16 17:27:11'),
(99, 140, 1, '4000.00', 1, '2019-10-24 01:41:43', '2019-10-24 01:41:43'),
(100, 150, 1, '500.00', 1, '2019-12-23 02:41:17', '2019-12-23 02:41:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `rol_id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`rol_id`, `name`, `description`) VALUES
(100, 'Administrador', 'Agregar bandas, salones y reportes del sistema.'),
(200, 'Banda perfil básico economico', 'Banda simple'),
(210, 'Banda perfil premium', 'Banda premium'),
(300, 'Salon perfil básico economico', 'Salon simple'),
(310, 'Salon perfil premium', 'Salon premium'),
(400, 'Usuario de la página web', 'Usuario');

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

--
-- Volcado de datos para la tabla `sliders`
--

INSERT INTO `sliders` (`sliders_id`, `route`, `created_at`, `updated_at`) VALUES
(1, '/backend/sliders/1/1.jpg', NULL, '2018-03-27 02:39:31'),
(2, '/backend/sliders/1/2.jpg', NULL, '2018-03-27 02:39:45'),
(3, '/backend/sliders/1/3.jpg', NULL, '2018-03-27 02:40:00'),
(4, '/backend/sliders/1/4.jpg', NULL, '2018-03-27 02:40:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `state`
--

INSERT INTO `state` (`state_id`, `name`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Chiapas'),
(6, 'Chihuahua'),
(9, 'Ciudad de México'),
(7, 'Coahuila'),
(8, 'Colima'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'México'),
(16, 'Michoacán'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo León'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Querétaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatán'),
(32, 'Zacatecas');

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

--
-- Volcado de datos para la tabla `subscription`
--

INSERT INTO `subscription` (`id`, `user_id`, `subscription_type_id`, `subscription_plan_id`, `payed`, `until`, `monthly_cost`, `duration`, `updated_at`, `created_at`) VALUES
(1, 69, 1, 3, '2017-01-16', '2034-02-16', 500, 18, '2017-01-16 21:26:12', '2016-12-06 17:23:08'),
(2, 72, 1, 4, '2017-01-17', '2019-02-17', 1500, 3, '2017-01-17 17:15:11', '2017-01-17 17:10:43'),
(5, 74, 1, 4, '2017-03-02', '2019-04-02', 1500, 3, '2017-03-02 19:48:25', '2017-02-20 22:42:49'),
(6, 77, 2, 4, '2017-03-17', '2017-03-17', 1500, 0, '2017-03-17 16:35:14', '2017-03-17 16:35:14'),
(7, 78, 1, 4, '2017-03-17', '2018-03-17', 1500, 1, '2017-03-17 17:18:04', '2017-03-17 17:18:04'),
(8, 99, 1, 4, '2018-10-18', '2019-10-18', 1500, 1, '2018-10-19 02:39:23', '2018-10-19 02:39:23'),
(9, 100, 1, 1, '2018-10-18', '2019-10-18', 4000, 1, '2018-10-19 02:59:31', '2018-10-19 02:59:31'),
(10, 101, 1, 2, '2018-10-18', '2019-10-18', 1500, 1, '2018-10-19 03:11:04', '2018-10-19 03:11:04'),
(11, 102, 1, 4, '2018-11-03', '2019-11-03', 1999, 1, '2018-11-04 04:14:38', '2018-11-04 04:14:38'),
(12, 133, 1, 1, '2019-06-01', '2020-06-01', 1999, 1, '2019-06-01 21:38:54', '2019-06-01 21:38:54');

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

--
-- Volcado de datos para la tabla `subscription_plan`
--

INSERT INTO `subscription_plan` (`id`, `description`, `monthly_cost`, `currency`, `duration`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Salón Perfil Premium', 1999, 'MXN', 12, 1, NULL, NULL),
(2, 'Salón Perfil Básico', 999, 'MXN', 12, 1, NULL, NULL),
(3, 'Música Perfil Básico', 999, 'MXN', 12, 1, NULL, NULL),
(4, 'Música Perfil Premium', 1999, 'MXN', 12, 1, NULL, NULL);

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

--
-- Volcado de datos para la tabla `subscription_type`
--

INSERT INTO `subscription_type` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Activo', NULL, NULL),
(2, 'No Pago', NULL, NULL),
(3, 'Inactivo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `town`
--

CREATE TABLE `town` (
  `town_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `town`
--

INSERT INTO `town` (`town_id`, `state_id`, `name`) VALUES
(1, 1, 'Aguascalientes'),
(2, 1, 'Asientos'),
(3, 1, 'Calvillo'),
(4, 1, 'Cosio'),
(5, 1, 'El Llano'),
(6, 1, 'Jesús María'),
(7, 1, 'Pabellón de Arteaga'),
(8, 1, 'Rincón de Romos'),
(9, 1, 'San Francisco de Los Romo'),
(10, 1, 'San José de Gracia'),
(11, 1, 'Tepezalá'),
(12, 2, 'Ensenada'),
(13, 2, 'Mexicali'),
(14, 2, 'Playas de Rosarito'),
(15, 2, 'Tecate'),
(16, 2, 'Tijuana'),
(17, 3, 'Comondú'),
(18, 3, 'La Paz'),
(19, 3, 'Loreto'),
(20, 3, 'Los Cabos'),
(21, 3, 'Mulegé'),
(22, 4, 'Calakmul'),
(23, 4, 'Calkiní'),
(24, 4, 'Campeche'),
(25, 4, 'Candelaria'),
(26, 4, 'Carmen'),
(27, 4, 'Champotón'),
(28, 4, 'Escárcega'),
(29, 4, 'Hecelchakán'),
(30, 4, 'Hopelchén'),
(31, 4, 'Palizada'),
(32, 4, 'Tenabo'),
(33, 5, 'Acacoyagua'),
(34, 5, 'Acala'),
(35, 5, 'Acapetahua'),
(36, 5, 'Aldama'),
(37, 5, 'Altamirano'),
(38, 5, 'Amatán'),
(39, 5, 'Amatenango de la Frontera'),
(40, 5, 'Amatenango del Valle'),
(41, 5, 'Ángel Albino Corzo'),
(42, 5, 'Arriaga'),
(43, 5, 'Bejucal de Ocampo'),
(44, 5, 'Bella Vista'),
(45, 5, 'Benemérito de las Américas'),
(46, 5, 'Berriozábal'),
(47, 5, 'Bochil'),
(48, 5, 'Cacahoatán'),
(49, 5, 'Chalchihuitán'),
(50, 5, 'Chamula'),
(51, 5, 'Chanal'),
(52, 5, 'Chapultenango'),
(53, 5, 'Catazajá'),
(54, 5, 'Chenalhó'),
(55, 5, 'Chiapa de Corzo'),
(56, 5, 'Chiapilla'),
(57, 5, 'Chicoasén'),
(58, 5, 'Chicomosuelo'),
(59, 5, 'Cintalpa'),
(60, 5, 'Chilón'),
(61, 5, 'Coapilla'),
(62, 5, 'Comitán de Domínguez'),
(63, 5, 'Copainalá'),
(64, 5, 'El Bosque'),
(65, 5, 'El Porvenir'),
(66, 5, 'Escuintla'),
(67, 5, 'Francisco León'),
(68, 5, 'Frontera Comalapa'),
(69, 5, 'Frontera Hidalgo'),
(70, 5, 'Huehuetán'),
(71, 5, 'Huitiupán'),
(72, 5, 'Huixtán'),
(73, 5, 'Huixtla'),
(74, 5, 'Ixhuatán'),
(75, 5, 'Ixtacomitán'),
(76, 5, 'Ixtapa'),
(77, 5, 'Ixtapangajoya'),
(78, 5, 'Jiquipilas'),
(79, 5, 'Jitotol'),
(80, 5, 'Juárez'),
(81, 5, 'La Concordia'),
(82, 5, 'La Grandeza'),
(83, 5, 'La Independencia'),
(84, 5, 'La Libertad'),
(85, 5, 'La Trinitaria'),
(86, 5, 'Larráinzar'),
(87, 5, 'Las Margaritas'),
(88, 5, 'Las Rosas'),
(89, 5, 'Mapastepec'),
(90, 5, 'Maravilla Tenejapa'),
(91, 5, 'Marqués de Comillas'),
(92, 5, 'Mazapa de Madero'),
(93, 5, 'Mazatán'),
(94, 5, 'Metapa'),
(95, 5, 'Mitontic'),
(96, 5, 'Montecristo de Guerrero'),
(97, 5, 'Motozintla'),
(98, 5, 'Nicolás Ruíz'),
(99, 5, 'Ocosingo'),
(100, 5, 'Ocotepec'),
(101, 5, 'Ocozocoautla de Espinosa'),
(102, 5, 'Ostuacán'),
(103, 5, 'Osumacinta'),
(104, 5, 'Oxchuc'),
(105, 5, 'Palenque'),
(106, 5, 'Pantelhó'),
(107, 5, 'Pantepec'),
(108, 5, 'Pichucalco'),
(109, 5, 'Pijijiapan'),
(110, 5, 'Pueblo Nuevo Solistahuacán'),
(111, 5, 'Rayón'),
(112, 5, 'Reforma'),
(113, 5, 'Sabanilla'),
(114, 5, 'Salto de Agua'),
(115, 5, 'San Andrés Duraznal'),
(116, 5, 'San Cristóbal de las Casas'),
(117, 5, 'San Fernando'),
(118, 5, 'San Juan Cancuc'),
(119, 5, 'San Lucas'),
(120, 5, 'Santiago el Pinar'),
(121, 5, 'Siltepec'),
(122, 5, 'Simojovel'),
(123, 5, 'Sitalá'),
(124, 5, 'Socoltenango'),
(125, 5, 'Solosuchiapa'),
(126, 5, 'Soyaló'),
(127, 5, 'Suchiapa'),
(128, 5, 'Suchiate'),
(129, 5, 'Sunuapa'),
(130, 5, 'Tapachula'),
(131, 5, 'Tapalapa'),
(132, 5, 'Tapilula'),
(133, 5, 'Tecpatán'),
(134, 5, 'Tenejapa'),
(135, 5, 'Teopisca'),
(136, 5, 'Tila'),
(137, 5, 'Tonalá'),
(138, 5, 'Totolapa'),
(139, 5, 'Tumbalá'),
(140, 5, 'Tuxtla Chico'),
(141, 5, 'Tuxtla Gutiérrez'),
(142, 5, 'Tuzantán'),
(143, 5, 'Tzimol'),
(144, 5, 'Unión Juárez'),
(145, 5, 'Venustiano Carranza'),
(146, 5, 'Villa Comaltitlán'),
(147, 5, 'Villa Corzo'),
(148, 5, 'Villaflores'),
(149, 5, 'Yajalón'),
(150, 5, 'Zinacantán'),
(151, 6, 'Ahumada'),
(152, 6, 'Aldama'),
(153, 6, 'Allende'),
(154, 6, 'Aquiles Serdán'),
(155, 6, 'Ascensión'),
(156, 6, 'Bachíniva'),
(157, 6, 'Balleza'),
(158, 6, 'Batopilas'),
(159, 6, 'Bocoyna'),
(160, 6, 'Buenaventura'),
(161, 6, 'Camargo'),
(162, 6, 'Carichí'),
(163, 6, 'Casas Grandes'),
(164, 6, 'Chihuahua'),
(165, 6, 'Chínipas'),
(166, 6, 'Coronado'),
(167, 6, 'Coyame del Sotol'),
(168, 6, 'Cuauhtémoc'),
(169, 6, 'Cusihuiriachi'),
(170, 6, 'Delicias'),
(171, 6, 'Dr. Belisario Domínguez'),
(172, 6, 'El Tule'),
(173, 6, 'Galeana'),
(174, 6, 'Gómez Farías'),
(175, 6, 'Gran Morelos'),
(176, 6, 'Guachochi'),
(177, 6, 'Guadalupe D.B.'),
(178, 6, 'Guadalupe y Calvo'),
(179, 6, 'Guazapares'),
(180, 6, 'Guerrero'),
(181, 6, 'Hidalgo del Parral'),
(182, 6, 'Huejoitán'),
(183, 6, 'Ignacio Zaragoza'),
(184, 6, 'Janos'),
(185, 6, 'Jiménez'),
(186, 6, 'Juárez'),
(187, 6, 'Julimes'),
(188, 6, 'La Cruz'),
(189, 6, 'López'),
(190, 6, 'Madera'),
(191, 6, 'Maguarichi'),
(192, 6, 'Manuel Benavides'),
(193, 6, 'Matachí'),
(194, 6, 'Matamoros'),
(195, 6, 'Meoqui'),
(196, 6, 'Morelos'),
(197, 6, 'Moris'),
(198, 6, 'Namiquipa'),
(199, 6, 'Nonoava'),
(200, 6, 'Nuevo Casas Grandes'),
(201, 6, 'Ocampo'),
(202, 6, 'Ojinaga'),
(203, 6, 'Praxedis G. Guerrero'),
(204, 6, 'Riva Palacio'),
(205, 6, 'Rosales'),
(206, 6, 'Rosario'),
(207, 6, 'San Francisco de Borja'),
(208, 6, 'San Francisco de Conchos'),
(209, 6, 'San Francisco del Oro'),
(210, 6, 'Santa Bárabara'),
(211, 6, 'Santa Isabel'),
(212, 6, 'Satevó'),
(213, 6, 'Saucillo'),
(214, 6, 'Temósachi'),
(215, 6, 'Urique'),
(216, 6, 'Uriachi'),
(217, 6, 'Valle de Zaragoza'),
(218, 7, 'Abasolo'),
(219, 7, 'Acuña'),
(220, 7, 'Allende'),
(221, 7, 'Arteaga'),
(222, 7, 'Candela'),
(223, 7, 'Castaños'),
(224, 7, 'Cuatrociénegas'),
(225, 7, 'Escobedo'),
(226, 7, 'Francisco I. Madero'),
(227, 7, 'Frontera'),
(228, 7, 'General Cepeda'),
(229, 7, 'Guerrero'),
(230, 7, 'Hidalgo'),
(231, 7, 'Jiménez'),
(232, 7, 'Juárez'),
(233, 7, 'Lamadrid'),
(234, 7, 'Matamoros'),
(235, 7, 'Monclova'),
(236, 7, 'Morelos'),
(237, 7, 'Múzquiz'),
(238, 7, 'Nadadores'),
(239, 7, 'Nava'),
(240, 7, 'Ocampo'),
(241, 7, 'Parras'),
(242, 7, 'Piedras Negras'),
(243, 7, 'Progreso'),
(244, 7, 'Ramos Arizpe'),
(245, 7, 'Sabinas'),
(246, 7, 'Sacramento'),
(247, 7, 'Saltillo'),
(248, 7, 'San Buenaventura'),
(249, 7, 'San Juan de Sabinas'),
(250, 7, 'San Pedro'),
(251, 7, 'Sierra Mojada'),
(252, 7, 'Torreón'),
(253, 7, 'Viesca'),
(254, 7, 'Villa Unión'),
(255, 7, 'Zaragoza'),
(256, 8, 'Armería'),
(257, 8, 'Colima'),
(258, 8, 'Comala'),
(259, 8, 'Coquimatlán'),
(260, 8, 'Cuauhtémoc'),
(261, 8, 'Ixtlahuacán'),
(262, 8, 'Manzanillo'),
(263, 8, 'Minatitlán'),
(264, 8, 'Tecomán'),
(265, 8, 'Villa de Álvarez'),
(266, 9, 'Álvaro Obregón'),
(267, 9, 'Azcapotzalco'),
(268, 9, 'Benito Juárez'),
(269, 9, 'Coyoacán'),
(270, 9, 'Cuajimalpa de Morelos'),
(271, 9, 'Cuauhtémoc'),
(272, 9, 'Gustavo A. Madero'),
(273, 9, 'Iztacalco'),
(274, 9, 'Iztapalapa'),
(275, 9, 'Magdalena Contreras'),
(276, 9, 'Miguel Hidalgo'),
(277, 9, 'Milpa Alta'),
(278, 9, 'Tláhuac'),
(279, 9, 'Tlalpan'),
(280, 9, 'Venustiano Carranza'),
(281, 9, 'Xochimilco'),
(282, 10, 'Canatlán'),
(283, 10, 'Canelas'),
(284, 10, 'Coneto de Comonfort'),
(285, 10, 'Cuencamé'),
(286, 10, 'Durango'),
(287, 10, 'El Oro'),
(288, 10, 'Gómez Palacio'),
(289, 10, 'Gral. Simón Bolívar'),
(290, 10, 'Guadalupe Victoria'),
(291, 10, 'Guanaceví'),
(292, 10, 'Hidalgo'),
(293, 10, 'Indé'),
(294, 10, 'Lerdo'),
(295, 10, 'Mapimí'),
(296, 10, 'Mezquital'),
(297, 10, 'Nazas'),
(298, 10, 'Nombre de Dios'),
(299, 10, 'Nuevo Ideal'),
(300, 10, 'Ocampo'),
(301, 10, 'Otáez'),
(302, 10, 'Pánuco de Coronado'),
(303, 10, 'Peñón Blanco'),
(304, 10, 'Poanas'),
(305, 10, 'Pueblo Nuevo'),
(306, 10, 'Rodeo'),
(307, 10, 'San Bernardo'),
(308, 10, 'San Dimas'),
(309, 10, 'San Juan de Guadalupe'),
(310, 10, 'San Juan del Río'),
(311, 10, 'San Luis del Cordero'),
(312, 10, 'San Pedro del Gallo'),
(313, 10, 'Santa Clara'),
(314, 10, 'Santiago Papasquiaro'),
(315, 10, 'Súchil'),
(316, 10, 'Tamazula'),
(317, 10, 'Tepehuanes'),
(318, 10, 'Tlahualilo'),
(319, 10, 'Topia'),
(320, 10, 'Vicente Guerrero'),
(321, 11, 'Abasolo'),
(322, 11, 'Acámbaro'),
(323, 11, 'Apaseo el Alto'),
(324, 11, 'Apaseo el Grande'),
(325, 11, 'Atarjea'),
(326, 11, 'Celaya'),
(327, 11, 'Comonfort'),
(328, 11, 'Coroneo'),
(329, 11, 'Cortazar'),
(330, 11, 'Cuerámaro'),
(331, 11, 'Doctor Mora'),
(332, 11, 'Dolores Hidalgo'),
(333, 11, 'Guanajuato'),
(334, 11, 'Huanímaro'),
(335, 11, 'Irapuato'),
(336, 11, 'Jaral del Progreso'),
(337, 11, 'Jerécuaro'),
(338, 11, 'León'),
(339, 11, 'Manuel Doblado'),
(340, 11, 'Moroleón'),
(341, 11, 'Ocampo'),
(342, 11, 'Pénjamo'),
(343, 11, 'Pueblo Nuevo'),
(344, 11, 'Purísima del Rincón'),
(345, 11, 'Romita'),
(346, 11, 'Salamanca'),
(347, 11, 'Salvatierra'),
(348, 11, 'San Diego de la Unión'),
(349, 11, 'San Felipe'),
(350, 11, 'San Francisco del Rincón'),
(351, 11, 'San José Iturbide'),
(352, 11, 'San Luis de la Paz'),
(353, 11, 'San Miguel de Allende'),
(354, 11, 'Santa Catarina'),
(355, 11, 'Santa Cruz de Juventino'),
(356, 11, 'Santiago Maravatío'),
(357, 11, 'Silao'),
(358, 11, 'Tarandacuao'),
(359, 11, 'Tarimoro'),
(360, 11, 'Tierra Blanca'),
(361, 11, 'Uruangato'),
(362, 11, 'Valle de Santiago'),
(363, 11, 'Victoria'),
(364, 11, 'Villagrán'),
(365, 11, 'Xichú'),
(366, 11, 'Yuriria'),
(367, 12, 'Acapulco de Juárez'),
(368, 12, 'Acatepec'),
(369, 12, 'Ahuacuotzingo'),
(370, 12, 'Ajuchitlán del Progreso'),
(371, 12, 'Alcozauca de Guerrero'),
(372, 12, 'Alpoyeca'),
(373, 12, 'Apaxtla de Castrejón'),
(374, 12, 'Arcelia'),
(375, 12, 'Atenango del Río'),
(376, 12, 'Atlamajalcingo del Monte'),
(377, 12, 'Atlixtac'),
(378, 12, 'Atoyac de Álvarez'),
(379, 12, 'Ayutla de los Libres'),
(380, 12, 'Azoyú'),
(381, 12, 'Benito Juárez'),
(382, 12, 'Buenavista de Cuéllar'),
(383, 12, 'Chilapa de Álvarez'),
(384, 12, 'Chilpancingo de los Bravo'),
(385, 12, 'Coahuayutla de José María Izazaga'),
(386, 12, 'Cochoapa el Grande'),
(387, 12, 'Cocula'),
(388, 12, 'Copala'),
(389, 12, 'Copalillo'),
(390, 12, 'Copanatoyac'),
(391, 12, 'Coyuca de Benítez'),
(392, 12, 'Coyuca de Catalán'),
(393, 12, 'Cuajinicuilapa'),
(394, 12, 'Cualác'),
(395, 12, 'Cuautepec'),
(396, 12, 'Cuetzala del Progreso'),
(397, 12, 'Cutzamala de Pinzón'),
(398, 12, 'Eduardo Neri'),
(399, 12, 'Florencio Villarreal'),
(400, 12, 'General Canuto A. Neri'),
(401, 12, 'General Heliodoro Castillo'),
(402, 12, 'Huamuxtitlán'),
(403, 12, 'Huitzuco de los Figueroa'),
(404, 12, 'Iguala de la Independencia'),
(405, 12, 'Igualapa'),
(406, 12, 'Iliatenco'),
(407, 12, 'Ixcateopan de Cuauhtémoc'),
(408, 12, 'José Joaquín de Herrera'),
(409, 12, 'Juan R. Escudero'),
(410, 12, 'Juchitán'),
(411, 12, 'La Unión de Isidoro Montes de Oca'),
(412, 12, 'Leonardo Bravo'),
(413, 12, 'Malinaltepec'),
(414, 12, 'Marquelia'),
(415, 12, 'Mártir de Cuilapan'),
(416, 12, 'Metlatónoc'),
(417, 12, 'Mochitlán'),
(418, 12, 'Olinalá'),
(419, 12, 'Ometepec'),
(420, 12, 'Pedro Ascencio Alquisiras'),
(421, 12, 'Petatlán'),
(422, 12, 'Pilcaya'),
(423, 12, 'Pungarabato'),
(424, 12, 'Quechultenango'),
(425, 12, 'San Luis Acatlán'),
(426, 12, 'San Marcos'),
(427, 12, 'San Miguel Totolapan'),
(428, 12, 'Taxco de Alarcón'),
(429, 12, 'Tecoanapa'),
(430, 12, 'Técpan de Galeana'),
(431, 12, 'Teloloapan'),
(432, 12, 'Tepecoacuilco de Trujano'),
(433, 12, 'Tetipac'),
(434, 12, 'Tixtla de Guerrero'),
(435, 12, 'Tlacoachistlahuaca'),
(436, 12, 'Tlacoapa'),
(437, 12, 'Tlalchapa'),
(438, 12, 'Tlalixtlaquilla de Maldanado'),
(439, 12, 'Tlapa de Comonfort'),
(440, 12, 'Tlapehuala'),
(441, 12, 'Xalpatláhuac'),
(442, 12, 'Xochihuehuetlán'),
(443, 12, 'Xochistlahuaca'),
(444, 12, 'Zapotitlán Tablas'),
(445, 12, 'Zihuatanejo de Azueta'),
(446, 12, 'Zirándaro de los Chávez'),
(447, 12, 'Zitlala'),
(448, 13, 'Acatlán'),
(449, 13, 'Acaxochitlán'),
(450, 13, 'Actopan'),
(451, 13, 'Agua Blanca de Iturbide'),
(452, 13, 'Ajacuba'),
(453, 13, 'Alfajayucan'),
(454, 13, 'Almoloya'),
(455, 13, 'Apan'),
(456, 13, 'Atitalaquia'),
(457, 13, 'Atlapexco'),
(458, 13, 'Atotonilco de Tula'),
(459, 13, 'Atotonilco el Grande'),
(460, 13, 'Calnali'),
(461, 13, 'Chapantongo'),
(462, 13, 'Chapulhuacán'),
(463, 13, 'Cardonal'),
(464, 13, 'Chilcuautla'),
(465, 13, 'Cuautepec de Hinojosa'),
(466, 13, 'El Arenal'),
(467, 13, 'Eloxochitlán'),
(468, 13, 'Emiliano Zapata'),
(469, 13, 'Epazoyucan'),
(470, 13, 'Francisco I. Madero'),
(471, 13, 'Huasca de Ocampo'),
(472, 13, 'Huautla'),
(473, 13, 'Huazalingo'),
(474, 13, 'Huejutla de Reyes'),
(475, 13, 'Huehuetla  '),
(476, 13, 'Huichapan'),
(477, 13, 'Ixmiquilpan'),
(478, 13, 'Jacala de Ledezma'),
(479, 13, 'Jaltocán'),
(480, 13, 'Juárez Hidalgo'),
(481, 13, 'La Misión'),
(482, 13, 'Lolotla'),
(483, 13, 'Metepec'),
(484, 13, 'Metztitlán'),
(485, 13, 'Mineral de la Reforma'),
(486, 13, 'Mineral del Chico'),
(487, 13, 'Mineral del Monte'),
(488, 13, 'Mixquiahuala de Juárez'),
(489, 13, 'Molango de Escamilla'),
(490, 13, 'Nicolás Flores'),
(491, 13, 'Nopala de Villagrán'),
(492, 13, 'Omitlán de Juárez'),
(493, 13, 'Pachuca de Soto'),
(494, 13, 'Pacula'),
(495, 13, 'Pisaflores'),
(496, 13, 'Progreso de Obregón'),
(497, 13, 'San Agustín Metzquititlán'),
(498, 13, 'San Agustín Tlaxiaca'),
(499, 13, 'San Bartolo Tutotepec'),
(500, 13, 'San Felipe Orizatlán'),
(501, 13, 'San Salvador'),
(502, 13, 'Santiago de Anaya'),
(503, 13, 'Santiago Tulantepec de Lugo Guerrero'),
(504, 13, 'Singuilucan'),
(505, 13, 'Tasquillo'),
(506, 13, 'Tecozautla'),
(507, 13, 'Tenango de Doria'),
(508, 13, 'Tepeapulco'),
(509, 13, 'Tepehuacán de Guerrero'),
(510, 13, 'Tepeji del Río de Ocampo'),
(511, 13, 'Tepetitlán'),
(512, 13, 'Tetepango'),
(513, 13, 'Tezontepec de Aldama'),
(514, 13, 'Tianguistengo'),
(515, 13, 'Tizayuca'),
(516, 13, 'Tlahuelilpan'),
(517, 13, 'Tlahuiltepa'),
(518, 13, 'Tlanalapa'),
(519, 13, 'Tlanchinol'),
(520, 13, 'Tlaxcoapan'),
(521, 13, 'Tolcayuca'),
(522, 13, 'Tula de Allende'),
(523, 13, 'Tulancingo de Bravo'),
(524, 13, 'Villa de Tezontepec'),
(525, 13, 'Xochiatipan'),
(526, 13, 'Xochicoatlán'),
(527, 13, 'Yahualica'),
(528, 13, 'Zacualtipán de Ángeles'),
(529, 13, 'Zapotlán de Juárez'),
(530, 13, 'Zempoala'),
(531, 13, 'Zimapán'),
(532, 14, 'Acatic'),
(533, 14, 'Acatlán de Juárez'),
(534, 14, 'Ahualulco de Mercado'),
(535, 14, 'Amacueca'),
(536, 14, 'Amatitán'),
(537, 14, 'Ameca'),
(538, 14, 'Arandas'),
(539, 14, 'Atemajac de Brizuela'),
(540, 14, 'Atengo'),
(541, 14, 'Atenguillo'),
(542, 14, 'Atotonilco el Alto'),
(543, 14, 'Atoyac'),
(544, 14, 'Autlán de Navarro'),
(545, 14, 'Ayotlán'),
(546, 14, 'Ayutla'),
(547, 14, 'Bolaños'),
(548, 14, 'Cabo Corrientes'),
(549, 14, 'Cañadas de Obregón'),
(550, 14, 'Casimiro Castillo'),
(551, 14, 'Chapala'),
(552, 14, 'Chimaltitán'),
(553, 14, 'Chiquilistlán'),
(554, 14, 'Cihuatlán'),
(555, 14, 'Cocula'),
(556, 14, 'Colotlán'),
(557, 14, 'Concepción de Buenos Aires'),
(558, 14, 'Cuauitlán de García Barragán'),
(559, 14, 'Cuautla'),
(560, 14, 'Cuquío'),
(561, 14, 'Degollado'),
(562, 14, 'Ejutla'),
(563, 14, 'El Arenal'),
(564, 14, 'El Grullo'),
(565, 14, 'El Limón'),
(566, 14, 'El Salto'),
(567, 14, 'Encarnación de Díaz'),
(568, 14, 'Etzatlán'),
(569, 14, 'Gómez Farías'),
(570, 14, 'Guachinango'),
(571, 14, 'Guadalajara'),
(572, 14, 'Hostotipaquillo'),
(573, 14, 'Huejúcar'),
(574, 14, 'Huejuquilla el Alto'),
(575, 14, 'Ixtlahuacán de los Membrillos'),
(576, 14, 'Ixtlahuacán del Río'),
(577, 14, 'Jalostotitlán'),
(578, 14, 'Jamay'),
(579, 14, 'Jesús María'),
(580, 14, 'Jilotlán de los Dolores'),
(581, 14, 'Jocotepec'),
(582, 14, 'Juanacatlán'),
(583, 14, 'Juchitlán'),
(584, 14, 'La Barca'),
(585, 14, 'Lagos de Moreno'),
(586, 14, 'La Manzanilla de la Paz'),
(587, 14, 'La Huerta'),
(588, 14, 'Magdalena'),
(589, 14, 'Mascota'),
(590, 14, 'Mazamitla'),
(591, 14, 'Mexticacán'),
(592, 14, 'Mezquitic'),
(593, 14, 'Mixtlán'),
(594, 14, 'Ojuelos de Jalisco'),
(595, 14, 'Ocotlán '),
(596, 14, 'Pihuamo'),
(597, 14, 'Poncitlán'),
(598, 14, 'Puerto Vallarta'),
(599, 14, 'Quitupan'),
(600, 14, 'San Cristóbal de la Barranca'),
(601, 14, 'San Diego de Alejandría'),
(602, 14, 'San Gabriel'),
(603, 14, 'San Ignacio Cerro Gordo '),
(604, 14, 'San Juan de los Lagos'),
(605, 14, 'San Juanito de Escobedo'),
(606, 14, 'San Julián'),
(607, 14, 'San Marcos'),
(608, 14, 'San Martín de Bolaños'),
(609, 14, 'San Martín Hidalgo'),
(610, 14, 'San Miguel el Alto'),
(611, 14, 'San Sebastián del Oeste'),
(612, 14, 'Santa María de los Ángeles'),
(613, 14, 'Santa María del Oro'),
(614, 14, 'Sayula'),
(615, 14, 'Tala'),
(616, 14, 'Talpa de Allende'),
(617, 14, 'Tamazula de Gordiano'),
(618, 14, 'Tapalpa'),
(619, 14, 'Tecalitlán'),
(620, 14, 'Techaluta de Montenegro'),
(621, 14, 'Tecolotlán'),
(622, 14, 'Tenamaxtlán'),
(623, 14, 'Teocaltiche'),
(624, 14, 'Teocuitatlán de Corona'),
(625, 14, 'Tepatitlán de Morelos'),
(626, 14, 'Tequila'),
(627, 14, 'Teuchitlán'),
(628, 14, 'Tizapán el Alto'),
(629, 14, 'Tlajomulco de Zúñiga'),
(630, 14, 'Tlaquepaque'),
(631, 14, 'Tolimán'),
(632, 14, 'Tomatlán'),
(633, 14, 'Tonalá'),
(634, 14, 'Tonaya'),
(635, 14, 'Tonila'),
(636, 14, 'Totatiche'),
(637, 14, 'Tototlán'),
(638, 14, 'Tuxcacuesco'),
(639, 14, 'Tuxcueca'),
(640, 14, 'Tuxpan'),
(641, 14, 'Unión de San Antonio'),
(642, 14, 'Unión de Tula'),
(643, 14, 'Valle de Guadalupe'),
(644, 14, 'Valle de Juárez'),
(645, 14, 'Villa Corona'),
(646, 14, 'Villa Guerrero'),
(647, 14, 'Villa Hidalgo'),
(648, 14, 'Villa Purificación'),
(649, 14, 'Yahualica de González Gallo'),
(650, 14, 'Zacoalco de Torres'),
(651, 14, 'Zapopan'),
(652, 14, 'Zapotiltic'),
(653, 14, 'Zapotitlán de Vadillo'),
(654, 14, 'Zapotlán del Rey'),
(655, 14, 'Zapotlanejo '),
(656, 14, 'Zapotlán el Grande '),
(657, 15, 'Acambay'),
(658, 15, 'Acolman'),
(659, 15, 'Aculco'),
(660, 15, 'Almoloya de Alquisiras'),
(661, 15, 'Almoloya de Juárez'),
(662, 15, 'Almoloya del Río'),
(663, 15, 'Amanalco'),
(664, 15, 'Amatepec'),
(665, 15, 'Amecameca'),
(666, 15, 'Apaxco'),
(667, 15, 'Atenco'),
(668, 15, 'Atizapán'),
(669, 15, 'Atizapán de Zaragoza'),
(670, 15, 'Atlacomulco'),
(671, 15, 'Atlautla'),
(672, 15, 'Axapusco'),
(673, 15, 'Ayapango'),
(674, 15, 'Calimaya'),
(675, 15, 'Capulhuac'),
(676, 15, 'Chalco'),
(677, 15, 'Chapa de Mota'),
(678, 15, 'Chapultepec'),
(679, 15, 'Chiautla'),
(680, 15, 'Chicoloapan'),
(681, 15, 'Chiconcuac'),
(682, 15, 'Chimalhuacán'),
(683, 15, 'Coacalco de Berriozábal'),
(684, 15, 'Coatepec Harinas'),
(685, 15, 'Cocotitlán'),
(686, 15, 'Coyotepec'),
(687, 15, 'Cuautitlán'),
(688, 15, 'Cuautitlán Izcalli'),
(689, 15, 'Donato Guerra'),
(690, 15, 'Ecatepec de Morelos'),
(691, 15, 'Ecatzingo'),
(692, 15, 'El Oro'),
(693, 15, 'Huehuetoca'),
(694, 15, 'Hueypoxtla'),
(695, 15, 'Huixquilucan'),
(696, 15, 'Isidro Fabela'),
(697, 15, 'Ixtapaluca'),
(698, 15, 'Ixtapan de la Sal'),
(699, 15, 'Ixtapan del Oro'),
(700, 15, 'Ixtlahuaca'),
(701, 15, 'Jaltenco'),
(702, 15, 'Jilotepec'),
(703, 15, 'Jilotzingo'),
(704, 15, 'Jiquipilco'),
(705, 15, 'Jocotitlán'),
(706, 15, 'Joquicingo'),
(707, 15, 'Juchitepec'),
(708, 15, 'La Paz'),
(709, 15, 'Lerma'),
(710, 15, 'Luvianos'),
(711, 15, 'Malinalco'),
(712, 15, 'Melchor Ocampo'),
(713, 15, 'Metepec'),
(714, 15, 'Mexicaltzingo'),
(715, 15, 'Morelos'),
(716, 15, 'Naucalpan de Juárez'),
(717, 15, 'Nextlalpan'),
(718, 15, 'Nezahualcoyotl'),
(719, 15, 'Nicolás Romero'),
(720, 15, 'Nopaltepec'),
(721, 15, 'Ocoyoacac'),
(722, 15, 'Ocuilan'),
(723, 15, 'Otumba'),
(724, 15, 'Otzoloapan'),
(725, 15, 'Otzolotepec'),
(726, 15, 'Ozumba'),
(727, 15, 'Papalotla'),
(728, 15, 'Polotitlán'),
(729, 15, 'Rayón'),
(730, 15, 'San Antonio la Isla'),
(731, 15, 'San Felipe del Progreso'),
(732, 15, 'San José del Rincón'),
(733, 15, 'San Martín de las Pirámides'),
(734, 15, 'San Mateo Atenco'),
(735, 15, 'San Simón de Guerrero'),
(736, 15, 'Santo Tomás'),
(737, 15, 'Soyaniquilpan de Juárez'),
(738, 15, 'Sultepec'),
(739, 15, 'Tecámac'),
(740, 15, 'Tejupilco'),
(741, 15, 'Temamatla'),
(742, 15, 'Temascalapa'),
(743, 15, 'Temascalcingo'),
(744, 15, 'Temascaltepec'),
(745, 15, 'Temoaya'),
(746, 15, 'Tenancingo'),
(747, 15, 'Tenango del Aire'),
(748, 15, 'Tenango del Valle'),
(749, 15, 'Teoloyucán'),
(750, 15, 'Teotihuacán'),
(751, 15, 'Tepetlaoxtoc'),
(752, 15, 'Tepetlixpa'),
(753, 15, 'Tepotzotlán'),
(754, 15, 'Tequixquiac'),
(755, 15, 'Texcaltitlán'),
(756, 15, 'Texcalyacac'),
(757, 15, 'Texcoco'),
(758, 15, 'Tezoyuca'),
(759, 15, 'Tianguistenco'),
(760, 15, 'Timilpan'),
(761, 15, 'Tlalmanalco'),
(762, 15, 'Tlalnepantla de Baz'),
(763, 15, 'Tlatlaya'),
(764, 15, 'Toluca'),
(765, 15, 'Tonanitla'),
(766, 15, 'Tonatico'),
(767, 15, 'Tultepec'),
(768, 15, 'Tultitlán'),
(769, 15, 'Valle de Bravo'),
(770, 15, 'Valle de Chalco Solidaridad'),
(771, 15, 'Villa de Allende'),
(772, 15, 'Villa del Carbón'),
(773, 15, 'Villa Guerrero'),
(774, 15, 'Villa Victoria'),
(775, 15, 'Xalatlaco'),
(776, 15, 'Xonacatlán'),
(777, 15, 'Zacazonapan'),
(778, 15, 'Zacualpan'),
(779, 15, 'Zinacantepec'),
(780, 15, 'Zumpahuacán'),
(781, 15, 'Zumpango'),
(782, 16, 'Acuitzio'),
(783, 16, 'Aguililla'),
(784, 16, 'Álvaro Obregón'),
(785, 16, 'Angamacutiro'),
(786, 16, 'Angangueo'),
(787, 16, 'Apatzingán'),
(788, 16, 'Aporo'),
(789, 16, 'Aquila'),
(790, 16, 'Ario de Rosales'),
(791, 16, 'Arteaga Riseñas'),
(792, 16, 'Briseñas'),
(793, 16, 'Buenavista'),
(794, 16, 'Carácuaro'),
(795, 16, 'Charapan'),
(796, 16, 'Charo'),
(797, 16, 'Chavinda'),
(798, 16, 'Cherán'),
(799, 16, 'Chilchota'),
(800, 16, 'Chuinicuila'),
(801, 16, 'Chucándiro'),
(802, 16, 'Churintzio'),
(803, 16, 'Churumuco'),
(804, 16, 'Coahuayana'),
(805, 16, 'Coalcomán de Vázquez Pallares'),
(806, 16, 'Coeneo'),
(807, 16, 'Cojumatlán de Régules'),
(808, 16, 'Contepec'),
(809, 16, 'Copándaro'),
(810, 16, 'Cotija'),
(811, 16, 'Cuitzeo'),
(812, 16, 'Escuandureo'),
(813, 16, 'Epitacio Huerta'),
(814, 16, 'Erongarícuaro'),
(815, 16, 'Gabriel Zamora'),
(816, 16, 'Hidalgo'),
(817, 16, 'Huandacareo'),
(818, 16, 'Huaniqueo'),
(819, 16, 'Huetamo'),
(820, 16, 'Huiramba'),
(821, 16, 'Indaparapeo'),
(822, 16, 'Irimbo'),
(823, 16, 'Ixtlán'),
(824, 16, 'Jacona'),
(825, 16, 'Jiménez'),
(826, 16, 'Jiquilpan'),
(827, 16, 'José Sixto Verduzco'),
(828, 16, 'Juárez'),
(829, 16, 'Jungapeo'),
(830, 16, 'La Huacana'),
(831, 16, 'La Piedad'),
(832, 16, 'Lagunillas'),
(833, 16, 'Lázaro Cárdenas'),
(834, 16, 'Los Reyes'),
(835, 16, 'Madero'),
(836, 16, 'Maravatío'),
(837, 16, 'Marcos Castellanos'),
(838, 16, 'Morelia'),
(839, 16, 'Morelos'),
(840, 16, 'Múgica'),
(841, 16, 'Nahuatzen'),
(842, 16, 'Nocupétaro'),
(843, 16, 'Nuevo Parangaricutiro'),
(844, 16, 'Nuevo Urecho'),
(845, 16, 'Numarán'),
(846, 16, 'Ocampo'),
(847, 16, 'Pajacuarán'),
(848, 16, 'Panindícuaro'),
(849, 16, 'Paracho'),
(850, 16, 'Parácuaro'),
(851, 16, 'Pátzcuaro'),
(852, 16, 'Penjamillo'),
(853, 16, 'Peribán'),
(854, 16, 'Purépero'),
(855, 16, 'Puruándiro'),
(856, 16, 'Queréndaro'),
(857, 16, 'Quiroga'),
(858, 16, 'Sahuayo'),
(859, 16, 'Salvador Escalante'),
(860, 16, 'San Lucas'),
(861, 16, 'Santa Ana Maya'),
(862, 16, 'Senguio'),
(863, 16, 'Susupuato'),
(864, 16, 'Tancítaro'),
(865, 16, 'Tangamandapio'),
(866, 16, 'Tangancícuaro'),
(867, 16, 'Tanhuato'),
(868, 16, 'Taretan'),
(869, 16, 'Tarímbaro'),
(870, 16, 'Tepalcatepec'),
(871, 16, 'Tingüindín'),
(872, 16, 'Tingambato'),
(873, 16, 'Tiquicheo de Nicolás Romero'),
(874, 16, 'Tlalpujahua'),
(875, 16, 'Tlazazalca'),
(876, 16, 'Tocumbo'),
(877, 16, 'Tumbiscatío'),
(878, 16, 'Turicato'),
(879, 16, 'Tuxpan'),
(880, 16, 'Tuzantla'),
(881, 16, 'Tzintzuntzan'),
(882, 16, 'Tzitzio'),
(883, 16, 'Uruapan'),
(884, 16, 'Venustiano Carranza'),
(885, 16, 'Villamar'),
(886, 16, 'Vista Hermosa'),
(887, 16, 'Yurécuaro'),
(888, 16, 'Zacapu'),
(889, 16, 'Zamora'),
(890, 16, 'Zináparo'),
(891, 16, 'Zinapécuaro'),
(892, 16, 'Ziracuaretiro'),
(893, 16, 'Zitácuaro'),
(894, 17, 'Amacuzac'),
(895, 17, 'Atlatlahucan'),
(896, 17, 'Axochiapan'),
(897, 17, 'Ayala'),
(898, 17, 'Coatlán del Río'),
(899, 17, 'Cuautla'),
(900, 17, 'Cuernavaca'),
(901, 17, 'Emiliano Zapata'),
(902, 17, 'Huitzilac'),
(903, 17, 'Jantetelco'),
(904, 17, 'Jiutepec'),
(905, 17, 'Jojutla'),
(906, 17, 'Jonacatepec'),
(907, 17, 'Mazatepec'),
(908, 17, 'Miacatlán'),
(909, 17, 'Ocuituco'),
(910, 17, 'Puente de Ixtla'),
(911, 17, 'Temixco'),
(912, 17, 'Temoac'),
(913, 17, 'Tepalcingo'),
(914, 17, 'Tepoztlán'),
(915, 17, 'Tetecala'),
(916, 17, 'Tetela del Volcán'),
(917, 17, 'Tlalnepantla'),
(918, 17, 'Tlaltizapán de Zapata'),
(919, 17, 'Tlaquiltenango'),
(920, 17, 'Tlayacapan'),
(921, 17, 'Totolapan'),
(922, 17, 'Xochitepec'),
(923, 17, 'Yautepec de Zaragoza'),
(924, 17, 'Yecapixtla'),
(925, 17, 'Zacatepec de Hidalgo'),
(926, 17, 'Zacualpan de Amilpas'),
(927, 18, 'Acaponeta'),
(928, 18, 'Ahuacatlán'),
(929, 18, 'Amatlán de Cañas'),
(930, 18, 'Bahía de Banderas'),
(931, 18, 'Compostela'),
(932, 18, 'El Nayar'),
(933, 18, 'Huajicori'),
(934, 18, 'Ixtlán del Río'),
(935, 18, 'Jala'),
(936, 18, 'La Yesca'),
(937, 18, 'Rosamorada'),
(938, 18, 'Ruíz'),
(939, 18, 'San Blas'),
(940, 18, 'San Pedro Lagunillas'),
(941, 18, 'Santa María del Oro'),
(942, 18, 'Santiago Ixcuintla'),
(943, 18, 'Tecuala'),
(944, 18, 'Tepic'),
(945, 18, 'Tuxpan'),
(946, 18, 'Xalisco'),
(947, 19, 'Abasolo'),
(948, 19, 'Agualeguas'),
(949, 19, 'Allende'),
(950, 19, 'Anáhuac'),
(951, 19, 'Apodaca'),
(952, 19, 'Aramberri'),
(953, 19, 'Bustamante'),
(954, 19, 'Cadereyta Jiménez'),
(955, 19, 'Cerralvo'),
(956, 19, 'China'),
(957, 19, 'Ciénega de Flores'),
(958, 19, 'Doctor Arroyo'),
(959, 19, 'Doctor Coss'),
(960, 19, 'Doctor González'),
(961, 19, 'El Carmen'),
(962, 19, 'Galeana'),
(963, 19, 'García'),
(964, 19, 'General Bravo'),
(965, 19, 'General Escobedo'),
(966, 19, 'General Terán'),
(967, 19, 'General Treviño'),
(968, 19, 'General Zaragoza'),
(969, 19, 'General Zuazua'),
(970, 19, 'Guadalupe'),
(971, 19, 'Hidalgo'),
(972, 19, 'Higueras'),
(973, 19, 'Hualahuises'),
(974, 19, 'Iturbide'),
(975, 19, 'Juárez'),
(976, 19, 'Lampazos de Naranjo'),
(977, 19, 'Linares'),
(978, 19, 'Los Aldamas'),
(979, 19, 'Los Herreras'),
(980, 19, 'Los Ramones'),
(981, 19, 'Marín'),
(982, 19, 'Melchor Ocampo'),
(983, 19, 'Mier y Noriega'),
(984, 19, 'Mina'),
(985, 19, 'Montemorelos'),
(986, 19, 'Monterrey'),
(987, 19, 'Parás'),
(988, 19, 'Pesquería'),
(989, 19, 'Rayones'),
(990, 19, 'Sabinas Hidalgo'),
(991, 19, 'Salinas Victoria'),
(992, 19, 'San Nicolás de los Garza'),
(993, 19, 'San Pedro Garza García'),
(994, 19, 'Santa Catarina'),
(995, 19, 'Santiago'),
(996, 19, 'Vallecillo'),
(997, 19, 'Villaldama'),
(998, 20, 'Abejones'),
(999, 20, 'Acatlán de Pérez Figueroa'),
(1000, 20, 'Ánimas Trujano'),
(1001, 20, 'Asunción Cacalotepec'),
(1002, 20, 'Asunción Cuyotepeji'),
(1003, 20, 'Asunción Ixtaltepec'),
(1004, 20, 'Asunción Nochixtlán'),
(1005, 20, 'Asunción Ocotlán'),
(1006, 20, 'Asunción Tlacolulita'),
(1007, 20, 'Ayoquezco de Aldama'),
(1008, 20, 'Ayotzintepec'),
(1009, 20, 'Calihualá'),
(1010, 20, 'Candelaria Loxicha'),
(1011, 20, 'Capulalpam de Méndez'),
(1012, 20, 'Chahuites'),
(1013, 20, 'Chalcatongo de Hidalgo'),
(1014, 20, 'Chiquihuitlán de Benito Juárez'),
(1015, 20, 'Ciénega de Zimatlán'),
(1016, 20, 'Ciudad Ixtepec'),
(1017, 20, 'Coatecas Altas'),
(1018, 20, 'Coicoyán de las Flores'),
(1019, 20, 'Concepción Buenavista'),
(1020, 20, 'Concepción Pápalo'),
(1021, 20, 'Constancia del Rosario'),
(1022, 20, 'Cosolapa'),
(1023, 20, 'Cosoltepec'),
(1024, 20, 'Cuilapam de Guerrero'),
(1025, 20, 'Cuyamecalco Villa de Zaragoza'),
(1026, 20, 'El Barrio de la Soledad'),
(1027, 20, 'El Espinal'),
(1028, 20, 'Eloxochitlán de Flores Magón'),
(1029, 20, 'Fresnillo de Trujano'),
(1030, 20, 'Guadalupe de Ramírez'),
(1031, 20, 'Guadalupe Etla'),
(1032, 20, 'Guelatao de Juárez'),
(1033, 20, 'Guevea de Humboldt'),
(1034, 20, 'Heróica Ciudad de Ejutla de Crespo'),
(1035, 20, 'Heróica Ciudad de Huajuapan de León'),
(1036, 20, 'Heróica Ciudad de Tlaxiaco'),
(1037, 20, 'Huautepec'),
(1038, 20, 'Huautla de Jiménez'),
(1039, 20, 'Ixpantepec Nieves'),
(1040, 20, 'Ixtlán de Juárez'),
(1041, 20, 'Juchitán de Zaragoza'),
(1042, 20, 'La Compañía'),
(1043, 20, 'La Pe'),
(1044, 20, 'La Reforma'),
(1045, 20, 'La Trinidad Vista Hermosa'),
(1046, 20, 'Loma Bonita'),
(1047, 20, 'Magdalena Apasco'),
(1048, 20, 'Magdalena Jaltepec'),
(1049, 20, 'Magdalena Mixtepec'),
(1050, 20, 'Magdalena Ocotlán'),
(1051, 20, 'Magdalena Peñasco'),
(1052, 20, 'Magdalena Teitipac'),
(1053, 20, 'Magdalena Tequisistlán'),
(1054, 20, 'Magdalena Tlacotepec'),
(1055, 20, 'Magdalena Yodocono de Porfirio Díaz'),
(1056, 20, 'Magdalena Zahuatlán'),
(1057, 20, 'Mariscala de Juárez'),
(1058, 20, 'Mártires de Tacubaya'),
(1059, 20, 'Matías Romero Avendaño'),
(1060, 20, 'Mazatlán Villa de Flores'),
(1061, 20, 'Mesones Hidalgo'),
(1062, 20, 'Miahuatlán de Porfirio Díaz'),
(1063, 20, 'Mixistlán de la Reforma'),
(1064, 20, 'Monjas'),
(1065, 20, 'Natividad'),
(1066, 20, 'Nazareno Etla'),
(1067, 20, 'Nejapa de Madero'),
(1068, 20, 'Nuevo Zoquiapam'),
(1069, 20, 'Oaxaca de Juárez'),
(1070, 20, 'Ocotlán de Morelos'),
(1071, 20, 'Pinotepa de Don Luis'),
(1072, 20, 'Pluma Hidalgo'),
(1073, 20, 'Putla Villa de Guerrero'),
(1074, 20, 'Reforma de Pineda'),
(1075, 20, 'Reyes Etla'),
(1076, 20, 'Rojas de Cuauhtémoc'),
(1077, 20, 'Salina Cruz'),
(1078, 20, 'San Agustín Amatengo'),
(1079, 20, 'San Agustín Atenango'),
(1080, 20, 'San Agustín Chayuco'),
(1081, 20, 'San Agustín de las Juntas'),
(1082, 20, 'San Agustín Etla'),
(1083, 20, 'San Agustín Loxicha'),
(1084, 20, 'San Agustín Tlacotepec'),
(1085, 20, 'San Agustín Yatareni'),
(1086, 20, 'San Andrés Cabecera Nueva'),
(1087, 20, 'San Andrés Dinicuiti'),
(1088, 20, 'San Andrés Huaxpaltepec'),
(1089, 20, 'San Andrés Huayapam'),
(1090, 20, 'San Andrés Ixtlahuaca'),
(1091, 20, 'San Andrés Lagunas'),
(1092, 20, 'San Andrés Nuxiño'),
(1093, 20, 'San Andrés Paxtlán'),
(1094, 20, 'San Andrés Sinaxtla'),
(1095, 20, 'San Andrés Solaga'),
(1096, 20, 'San Andrés Teotilalpam'),
(1097, 20, 'San Andrés Tepetlapa'),
(1098, 20, 'San Andrés Yaa'),
(1099, 20, 'San Andrés Zabache'),
(1100, 20, 'San Andrés Zautla'),
(1101, 20, 'San Antonino Castillo Velasco'),
(1102, 20, 'San Antonino el Alto'),
(1103, 20, 'San Antonino Monteverde'),
(1104, 20, 'San Antonio Acutla'),
(1105, 20, 'San Antonio de la Cal'),
(1106, 20, 'San Antonio Huitepec'),
(1107, 20, 'San Antonio Nanahuatipam'),
(1108, 20, 'San Antonio Sinicahua'),
(1109, 20, 'San Antonio Tepetlapa'),
(1110, 20, 'San Baltazar Chichicápam'),
(1111, 20, 'San Baltazar Loxicha'),
(1112, 20, 'San Baltazar Yatzachi el Bajo'),
(1113, 20, 'San Bartolo Coyotepec'),
(1114, 20, 'San Bartolo Soyaltepec'),
(1115, 20, 'San Bartolo Yautepec'),
(1116, 20, 'San Bartolomé Ayautla'),
(1117, 20, 'San Bartolomé Loxicha'),
(1118, 20, 'San Bartolomé Quialana'),
(1119, 20, 'San Bartolomé Yucuañe'),
(1120, 20, 'San Bartolomé Zoogocho'),
(1121, 20, 'San Bernardo Mixtepec'),
(1122, 20, 'San Blas Atempa'),
(1123, 20, 'San Carlos Yautepec'),
(1124, 20, 'San Cristóbal Amatlán'),
(1125, 20, 'San Cristóbal Amoltepec'),
(1126, 20, 'San Cristóbal Lachirioag'),
(1127, 20, 'San Cristóbal Suchixtlahuaca'),
(1128, 20, 'San Dionisio del Mar'),
(1129, 20, 'San Dionisio Ocotepec'),
(1130, 20, 'San Dionisio Ocotlán'),
(1131, 20, 'San Esteban Atatlahuca'),
(1132, 20, 'San Felipe Jalapa de Díaz'),
(1133, 20, 'San Felipe Tejalapam'),
(1134, 20, 'San Felipe Usila'),
(1135, 20, 'San Francisco Cahuacuá'),
(1136, 20, 'San Francisco Cajonos'),
(1137, 20, 'San Francisco Chapulapa'),
(1138, 20, 'San Francisco Chindua'),
(1139, 20, 'San Francisco del Mar'),
(1140, 20, 'San Francisco Huehuetlán'),
(1141, 20, 'San Francisco Ixhuatán'),
(1142, 20, 'San Francisco Jaltepetongo'),
(1143, 20, 'San Francisco Lachigoló'),
(1144, 20, 'San Francisco Logueche'),
(1145, 20, 'San Francisco Nuxaño'),
(1146, 20, 'San Francisco Ozolotepec'),
(1147, 20, 'San Francisco Sola'),
(1148, 20, 'San Francisco Telixtlahuaca'),
(1149, 20, 'San Francisco Teopan'),
(1150, 20, 'San Francisco Tlapancingo'),
(1151, 20, 'San Gabriel Mixtepec'),
(1152, 20, 'San Ildefonso Amatlán'),
(1153, 20, 'San Ildefonso Sola'),
(1154, 20, 'San Ildefonso Villa Alta'),
(1155, 20, 'San Jacinto Amilpas'),
(1156, 20, 'San Jacinto Tlacotepec'),
(1157, 20, 'San Jerónimo Coatlán'),
(1158, 20, 'San Jerónimo Silacayoapilla'),
(1159, 20, 'San Jerónimo Sosola'),
(1160, 20, 'San Jerónimo Taviche'),
(1161, 20, 'San Jerónimo Tecoatl'),
(1162, 20, 'San Jerónimo Tlacochahuaya'),
(1163, 20, 'San Jorge Nuchita'),
(1164, 20, 'San José Ayuquila'),
(1165, 20, 'San José Chiltepec'),
(1166, 20, 'San José del Peñasco'),
(1167, 20, 'San José del Progreso'),
(1168, 20, 'San José Estancia Grande'),
(1169, 20, 'San José Independencia'),
(1170, 20, 'San José Lachiguiri'),
(1171, 20, 'San José Tenango'),
(1172, 20, 'San Juan Achiutla'),
(1173, 20, 'San Juan Atepec'),
(1174, 20, 'San Juan Bautista Atatlahuca'),
(1175, 20, 'San Juan Bautista Coixtlahuaca'),
(1176, 20, 'San Juan Bautista Cuicatlán'),
(1177, 20, 'San Juan Bautista Guelache'),
(1178, 20, 'San Juan Bautista Jayacatlán'),
(1179, 20, 'San Juan Bautista Lo de Soto'),
(1180, 20, 'San Juan Bautista Suchitepec'),
(1181, 20, 'San Juan Bautista Tlacoatzintepec'),
(1182, 20, 'San Juan Bautista Tlachichilco'),
(1183, 20, 'San Juan Bautista Tuxtepec'),
(1184, 20, 'San Juan Bautista Valle Nacional'),
(1185, 20, 'San Juan Cacahuatepec'),
(1186, 20, 'San Juan Chicomezúchil'),
(1187, 20, 'San Juan Chilateca'),
(1188, 20, 'San Juan Cieneguilla'),
(1189, 20, 'San Juan Coatzóspam'),
(1190, 20, 'San Juan Colorado'),
(1191, 20, 'San Juan Comaltepec'),
(1192, 20, 'San Juan Cotzocón'),
(1193, 20, 'San Juan del Estado'),
(1194, 20, 'San Juan de los Cués'),
(1195, 20, 'San Juan del Río'),
(1196, 20, 'San Juan Diuxi'),
(1197, 20, 'San Juan Evangelista Analco'),
(1198, 20, 'San Juan Guelavia'),
(1199, 20, 'San Juan Guichicovi'),
(1200, 20, 'San Juan Ihualtepec'),
(1201, 20, 'San Juan Juquila Mixes'),
(1202, 20, 'San Juan Juquila Vijanos'),
(1203, 20, 'San Juan Lachao'),
(1204, 20, 'San Juan Lachigalla'),
(1205, 20, 'San Juan Lajarcia'),
(1206, 20, 'San Juan Lalana'),
(1207, 20, 'San Juan Mazatlán'),
(1208, 20, 'San Juan Mixtepec, distrito 08'),
(1209, 20, 'San Juan Mixtepec, distrito 26'),
(1210, 20, 'San Juan Ñumi'),
(1211, 20, 'San Juan Ozolotepec'),
(1212, 20, 'San Juan Petlapa'),
(1213, 20, 'San Juan Quiahije'),
(1214, 20, 'San Juan Quiotepec'),
(1215, 20, 'San Juan Sayultepec'),
(1216, 20, 'San Juan Tabaá'),
(1217, 20, 'San Juan Tamazola'),
(1218, 20, 'San Juan Teita'),
(1219, 20, 'San Juan Teitipac'),
(1220, 20, 'San Juan Tepeuxila'),
(1221, 20, 'San Juan Teposcolula'),
(1222, 20, 'San Juan Yaeé'),
(1223, 20, 'San Juan Yatzona'),
(1224, 20, 'San Juan Yucuita'),
(1225, 20, 'San Lorenzo'),
(1226, 20, 'San Lorenzo Albarradas'),
(1227, 20, 'San Lorenzo Cacaotepec'),
(1228, 20, 'San Lorenzo Cuaunecuiltitla'),
(1229, 20, 'San Lorenzo Texmelucan'),
(1230, 20, 'San Lorenzo Victoria'),
(1231, 20, 'San Lucas Camotlán'),
(1232, 20, 'San Lucas Ojitlán'),
(1233, 20, 'San Lucas Quiaviní'),
(1234, 20, 'San Lucas Zoquiápam'),
(1235, 20, 'San Luis Amatlán'),
(1236, 20, 'San Marcial Ozolotepec'),
(1237, 20, 'San Marcos Arteaga'),
(1238, 20, 'San Martín de los Cansecos'),
(1239, 20, 'San Martín Huamelúlpam'),
(1240, 20, 'San Martín Itunyoso'),
(1241, 20, 'San Martín Lachilá'),
(1242, 20, 'San Martín Peras'),
(1243, 20, 'San Martín Tilcajete'),
(1244, 20, 'San Martín Toxpalan'),
(1245, 20, 'San Martín Zacatepec'),
(1246, 20, 'San Mateo Cajonos'),
(1247, 20, 'San Mateo del Mar'),
(1248, 20, 'San Mateo Etlatongo'),
(1249, 20, 'San Mateo Nejápam'),
(1250, 20, 'San Mateo Peñasco'),
(1251, 20, 'San Mateo Piñas'),
(1252, 20, 'San Mateo Río Hondo'),
(1253, 20, 'San Mateo Sindihui'),
(1254, 20, 'San Mateo Tlapiltepec'),
(1255, 20, 'San Mateo Yoloxochitlán'),
(1256, 20, 'San Melchor Betaza'),
(1257, 20, 'San Miguel Achiutla'),
(1258, 20, 'San Miguel Ahuehuetitlán'),
(1259, 20, 'San Miguel Aloápam'),
(1260, 20, 'San Miguel Amatitlán'),
(1261, 20, 'San Miguel Amatlán'),
(1262, 20, 'San Miguel Coatlán'),
(1263, 20, 'San Miguel Chicahua'),
(1264, 20, 'San Miguel Chimalapa'),
(1265, 20, 'San Miguel del Puerto'),
(1266, 20, 'San Miguel del Río'),
(1267, 20, 'San Miguel Ejutla'),
(1268, 20, 'San Miguel el Grande'),
(1269, 20, 'San Miguel Huautla'),
(1270, 20, 'San Miguel Mixtepec'),
(1271, 20, 'San Miguel Panixtlahuaca'),
(1272, 20, 'San Miguel Peras'),
(1273, 20, 'San Miguel Piedras'),
(1274, 20, 'San Miguel Quetzaltepec'),
(1275, 20, 'San Miguel Santa Flor'),
(1276, 20, 'San Miguel Soyaltepec'),
(1277, 20, 'San Miguel Suchixtepec'),
(1278, 20, 'San Miguel Tecomatlán'),
(1279, 20, 'San Miguel Tenango'),
(1280, 20, 'San Miguel Tequixtepec'),
(1281, 20, 'San Miguel Tilquiápam'),
(1282, 20, 'San Miguel Tlacamama'),
(1283, 20, 'San Miguel Tlacotepec'),
(1284, 20, 'San Miguel Tulancingo'),
(1285, 20, 'San Miguel Yotao'),
(1286, 20, 'San Nicolás'),
(1287, 20, 'San Nicolás Hidalgo'),
(1288, 20, 'San Pablo Coatlán'),
(1289, 20, 'San Pablo Cuatro Venados'),
(1290, 20, 'San Pablo Etla'),
(1291, 20, 'San Pablo Huitzo'),
(1292, 20, 'San Pablo Huixtepec'),
(1293, 20, 'San Pablo Macuiltianguis'),
(1294, 20, 'San Pablo Tijaltepec'),
(1295, 20, 'San Pablo Villa de Mitla'),
(1296, 20, 'San Pablo Yaganiza'),
(1297, 20, 'San Pedro Amuzgos'),
(1298, 20, 'San Pedro Apóstol'),
(1299, 20, 'San Pedro Atoyac'),
(1300, 20, 'San Pedro Cajonos'),
(1301, 20, 'San Pedro Comitancillo'),
(1302, 20, 'San Pedro Cocaltepec Cántaros'),
(1303, 20, 'San Pedro el Alto'),
(1304, 20, 'San Pedro Huamelula'),
(1305, 20, 'San Pedro Huilotepec'),
(1306, 20, 'San Pedro Ixcatlán'),
(1307, 20, 'San Pedro Ixtlahuaca'),
(1308, 20, 'San Pedro Jaltepetongo'),
(1309, 20, 'San Pedro Jicayán'),
(1310, 20, 'San Pedro Jocotipac'),
(1311, 20, 'San Pedro Juchatengo'),
(1312, 20, 'San Pedro Mártir'),
(1313, 20, 'San Pedro Mártir Quiechapa'),
(1314, 20, 'San Pedro Mártir Yucuxaco'),
(1315, 20, 'San Pedro Mixtepec, distrito 22'),
(1316, 20, 'San Pedro Mixtepec, distrito 26'),
(1317, 20, 'San Pedro Molinos'),
(1318, 20, 'San Pedro Nopala'),
(1319, 20, 'San Pedro Ocopetatillo'),
(1320, 20, 'San Pedro Ocotepec'),
(1321, 20, 'San Pedro Pochutla'),
(1322, 20, 'San Pedro Quiatoni'),
(1323, 20, 'San Pedro Sochiápam'),
(1324, 20, 'San Pedro Tapanatepec'),
(1325, 20, 'San Pedro Taviche'),
(1326, 20, 'San Pedro Teozacoalco'),
(1327, 20, 'San Pedro Teutila'),
(1328, 20, 'San Pedro Tidaá'),
(1329, 20, 'San Pedro Topiltepec'),
(1330, 20, 'San Pedro Totolápam'),
(1331, 20, 'San Pedro y San Pablo Ayutla'),
(1332, 20, 'San Pedro y San Pablo Teposcolula'),
(1333, 20, 'San Pedro y San Pablo Tequixtepec'),
(1334, 20, 'San Pedro Yaneri'),
(1335, 20, 'San Pedro Yólox'),
(1336, 20, 'San Pedro Yucunama'),
(1337, 20, 'San Raymundo Jalpan'),
(1338, 20, 'San Sebastián Abasolo'),
(1339, 20, 'San Sebastián Coatlán'),
(1340, 20, 'San Sebastián Ixcapa'),
(1341, 20, 'San Sebastián Nicananduta'),
(1342, 20, 'San Sebastián Río Hondo'),
(1343, 20, 'San Sebastián Tecomaxtlahuaca'),
(1344, 20, 'San Sebastián Teitipac'),
(1345, 20, 'San Sebastián Tutla'),
(1346, 20, 'San Simón Almolongas'),
(1347, 20, 'San Simón Zahuatlán  '),
(1348, 20, 'Santa Ana'),
(1349, 20, 'Santa Ana Ateixtlahuaca'),
(1350, 20, 'Santa Ana Cuauhtémoc'),
(1351, 20, 'Santa Ana del Valle'),
(1352, 20, 'Santa Ana Tavela'),
(1353, 20, 'Santa Ana Tlapacoyan'),
(1354, 20, 'Santa Ana Yareni'),
(1355, 20, 'Santa Ana Zegache'),
(1356, 20, 'Santa Catalina Quieri'),
(1357, 20, 'Santa Catarina Cuixtla'),
(1358, 20, 'Santa Catarina Ixtepeji'),
(1359, 20, 'Santa Catarina Juquila'),
(1360, 20, 'Santa Catarina Lachatao'),
(1361, 20, 'Santa Catarina Loxicha'),
(1362, 20, 'Santa Catarina Mechoacán'),
(1363, 20, 'Santa Catarina Minas'),
(1364, 20, 'Santa Catarina Quiané'),
(1365, 20, 'Santa Catarina Quioquitani'),
(1366, 20, 'Santa CatarinaTayata'),
(1367, 20, 'Santa Catarina Ticuá'),
(1368, 20, 'Santa Catarina Yosonotú'),
(1369, 20, 'Santa Catarina Zapoquila'),
(1370, 20, 'Santa Cruz Acatepec'),
(1371, 20, 'Santa Cruz Amilpas'),
(1372, 20, 'Santa Cruz de Bravo'),
(1373, 20, 'Santa Cruz Itundujia'),
(1374, 20, 'Santa Cruz Mixtepec'),
(1375, 20, 'Santa Cruz Nundaco'),
(1376, 20, 'Santa Cruz Papalutla'),
(1377, 20, 'Santa Cruz Tacache de Mina'),
(1378, 20, 'Santa Cruz Tacahua'),
(1379, 20, 'Santa Cruz Tayata'),
(1380, 20, 'Santa Cruz Xitla'),
(1381, 20, 'Santa Cruz Xoxocotlán'),
(1382, 20, 'Santa Cruz Zenzontepec'),
(1383, 20, 'Santa Gertrudis'),
(1384, 20, 'Santa Inés del Monte'),
(1385, 20, 'Santa Inés de Zaragoza'),
(1386, 20, 'Santa Inés Yatzeche'),
(1387, 20, 'Santa Lucía del Camino'),
(1388, 20, 'Santa Lucía Miahuatlán'),
(1389, 20, 'Santa Lucía Monteverde'),
(1390, 20, 'Santa Lucía Ocotlán'),
(1391, 20, 'Santa Magdalena Jicotlán'),
(1392, 20, 'Santa María Alotepec'),
(1393, 20, 'Santa María Apazco'),
(1394, 20, 'Santa María Atzompa'),
(1395, 20, 'Santa María Camotlán'),
(1396, 20, 'Santa María Chachoápam'),
(1397, 20, 'Santa María Chilchotla'),
(1398, 20, 'Santa María Chimalapa'),
(1399, 20, 'Santa María Colotepec'),
(1400, 20, 'Santa María Cortijo'),
(1401, 20, 'Santa María Coyotepec'),
(1402, 20, 'Santa María del Rosario'),
(1403, 20, 'Santa María del Tule'),
(1404, 20, 'Santa María Ecatepec'),
(1405, 20, 'Santa María Guelacé'),
(1406, 20, 'Santa María Guienagati'),
(1407, 20, 'Santa María Huatulco'),
(1408, 20, 'Santa María Huazolotitlán'),
(1409, 20, 'Santa María Ipalapa'),
(1410, 20, 'Santa María Ixcatlán'),
(1411, 20, 'Santa María Jacatepec'),
(1412, 20, 'Santa María Jalapa del Marqués'),
(1413, 20, 'Santa María Jaltianguis'),
(1414, 20, 'Santa María la Asunción'),
(1415, 20, 'Santa María Lachixío'),
(1416, 20, 'Santa María Mixtequilla'),
(1417, 20, 'Santa María Nativitas'),
(1418, 20, 'Santa María Nduayaco'),
(1419, 20, 'Santa María Ozolotepec'),
(1420, 20, 'Santa María Pápalo'),
(1421, 20, 'Santa María Peñoles'),
(1422, 20, 'Santa María Petapa'),
(1423, 20, 'Santa María Quiegolani'),
(1424, 20, 'Santa María Sola'),
(1425, 20, 'Santa María Tataltepec'),
(1426, 20, 'Santa María Tecomavaca'),
(1427, 20, 'Santa María Temaxcalapa'),
(1428, 20, 'Santa María Temaxcaltepec'),
(1429, 20, 'Santa María Teopoxco'),
(1430, 20, 'Santa María Tepantlali'),
(1431, 20, 'Santa María Texcatitlán'),
(1432, 20, 'Santa María Tlahuitoltepec'),
(1433, 20, 'Santa María Tlalixtac'),
(1434, 20, 'Santa María Tonameca'),
(1435, 20, 'Santa María Totolapilla'),
(1436, 20, 'Santa María Xadani'),
(1437, 20, 'Santa María Yalina'),
(1438, 20, 'Santa María Yavesía'),
(1439, 20, 'Santa María Yolotepec'),
(1440, 20, 'Santa María Yosoyua'),
(1441, 20, 'Santa María Yucuhiti'),
(1442, 20, 'Santa María Zacatepec'),
(1443, 20, 'Santa María Zaniza'),
(1444, 20, 'Santa María Zoquitlán'),
(1445, 20, 'Santiago Amoltepec'),
(1446, 20, 'Santiago Apoala'),
(1447, 20, 'Santiago Apóstol'),
(1448, 20, 'Santiago Astata'),
(1449, 20, 'Santiago Atitlán'),
(1450, 20, 'Santiago Ayuquililla'),
(1451, 20, 'Santiago Cacaloxtepec'),
(1452, 20, 'Santiago Camotlán'),
(1453, 20, 'Santiago Chazumba'),
(1454, 20, 'Santiago Choápam'),
(1455, 20, 'Santiago Comaltepec'),
(1456, 20, 'Santiago del Río'),
(1457, 20, 'Santiago Huajolotitlán'),
(1458, 20, 'Santiago Huauclilla'),
(1459, 20, 'Santiago Ihuitlán Plumas'),
(1460, 20, 'Santiago Ixcuintepec'),
(1461, 20, 'Santiago Ixtayutla'),
(1462, 20, 'Santiago Jamiltepec'),
(1463, 20, 'Santiago Jocotepec'),
(1464, 20, 'Santiago Juxtlahuaca'),
(1465, 20, 'Santiago Lachiguiri'),
(1466, 20, 'Santiago Lalopa'),
(1467, 20, 'Santiago Laollaga'),
(1468, 20, 'Santiago Laxopa'),
(1469, 20, 'Santiago Llano Grande'),
(1470, 20, 'Santiago Matatlán'),
(1471, 20, 'Santiago Miltepec'),
(1472, 20, 'Santiago Minas'),
(1473, 20, 'Santiago Nacaltepec'),
(1474, 20, 'Santiago Nejapilla'),
(1475, 20, 'Santiago Niltepec'),
(1476, 20, 'Santiago Nundiche'),
(1477, 20, 'Santiago Nuyoó'),
(1478, 20, 'Santiago Pinotepa Nacional'),
(1479, 20, 'Santiago Suchilquitongo'),
(1480, 20, 'Santiago Tamazola'),
(1481, 20, 'Santiago Tapextla'),
(1482, 20, 'Santiago Tenango'),
(1483, 20, 'Santiago Tepetlapa'),
(1484, 20, 'Santiago Tetepec'),
(1485, 20, 'Santiago Texcalcingo'),
(1486, 20, 'Santiago Textitlán'),
(1487, 20, 'Santiago Tilantongo'),
(1488, 20, 'Santiago Tillo'),
(1489, 20, 'Santiago Tlazoyaltepec'),
(1490, 20, 'Santiago Xanica'),
(1491, 20, 'Santiago Xiacuí'),
(1492, 20, 'Santiago Yaitepec'),
(1493, 20, 'Santiago Yaveo'),
(1494, 20, 'Santiago Yolomécatl'),
(1495, 20, 'Santiago Yosondúa'),
(1496, 20, 'Santiago Yucuyachi'),
(1497, 20, 'Santiago Zacatepec'),
(1498, 20, 'Santiago Zoochila'),
(1499, 20, 'Santo Domingo Albarradas'),
(1500, 20, 'Santo Domingo Armenta'),
(1501, 20, 'Santo Domingo Chihuitán'),
(1502, 20, 'Santo Domingo de Morelos'),
(1503, 20, 'Santo Domingo Ingenio'),
(1504, 20, 'Santo Domingo Ixcatlán'),
(1505, 20, 'Santo Domingo Nuxaá'),
(1506, 20, 'Santo Domingo Ozolotepec'),
(1507, 20, 'Santo Domingo Petapa'),
(1508, 20, 'Santo Domingo Roayaga'),
(1509, 20, 'Santo Domingo Tehuantepec'),
(1510, 20, 'Santo Domingo Teojomulco'),
(1511, 20, 'Santo Domingo Tepuxtepec'),
(1512, 20, 'Santo Domingo Tlatayapam'),
(1513, 20, 'Santo Domingo Tomaltepec'),
(1514, 20, 'Santo Domingo Tonalá'),
(1515, 20, 'Santo Domingo Tonaltepec'),
(1516, 20, 'Santo Domingo Xagacía'),
(1517, 20, 'Santo Domingo Yanhuitlán'),
(1518, 20, 'Santo Domingo Yodohino'),
(1519, 20, 'Santo Domingo Zanatepec'),
(1520, 20, 'Santo Tomás Jalieza'),
(1521, 20, 'Santo Tomás Mazaltepec'),
(1522, 20, 'Santo Tomás Ocotepec'),
(1523, 20, 'Santo Tomás Tamazulapan'),
(1524, 20, 'Santos Reyes Nopala'),
(1525, 20, 'Santos Reyes Pápalo'),
(1526, 20, 'Santos Reyes Tepejillo'),
(1527, 20, 'Santos Reyes Yucuná'),
(1528, 20, 'San Vicente Coatlán'),
(1529, 20, 'San Vicente Lachixío'),
(1530, 20, 'San Vicente Nuñú'),
(1531, 20, 'Silacayoápam'),
(1532, 20, 'Sitio de Xitlapehua'),
(1533, 20, 'Soledad Etla'),
(1534, 20, 'Tamazulápam del Espíritu Santo'),
(1535, 20, 'Tanetze de Zaragoza'),
(1536, 20, 'Taniche'),
(1537, 20, 'Tataltepec de Valdés'),
(1538, 20, 'Teococuilco de Marcos Pérez'),
(1539, 20, 'Teotitlán de Flores Magón'),
(1540, 20, 'Teotitlán del Valle'),
(1541, 20, 'Teotongo'),
(1542, 20, 'Tepelmeme Villa de Morelos'),
(1543, 20, 'Tezoatlán de Segura y Luna'),
(1544, 20, 'Tlacolula de Matamoros'),
(1545, 20, 'Tlacotepec Plumas'),
(1546, 20, 'Tlalixtac de Cabrera'),
(1547, 20, 'Totontepec Villa de Morelos'),
(1548, 20, 'Trinidad Zaáchila'),
(1549, 20, 'Unión Hidalgo'),
(1550, 20, 'Valerio Trujano'),
(1551, 20, 'Villa de Chilapa de Díaz'),
(1552, 20, 'Villa de Etla'),
(1553, 20, 'Villa de Tamazulápam del Progreso'),
(1554, 20, 'Villa de Tututepec de Melchor Ocampo'),
(1555, 20, 'Villa de Zaáchila'),
(1556, 20, 'Villa Díaz Ordaz'),
(1557, 20, 'Villa Hidalgo'),
(1558, 20, 'Villa Sola de Vega'),
(1559, 20, 'Villa Talea de Castro'),
(1560, 20, 'Villa Tejupam de la Unión'),
(1561, 20, 'Yaxe'),
(1562, 20, 'Yogana'),
(1563, 20, 'Yutanduchi de Guerrero'),
(1564, 20, 'Zapotitlán del Río'),
(1565, 20, 'Zapotitlán Lagunas'),
(1566, 20, 'Zapotitlán Palmas'),
(1567, 20, 'Zimatlán de Álvarez'),
(1568, 21, 'Acajete'),
(1569, 21, 'Acateno'),
(1570, 21, 'Acatlán'),
(1571, 21, 'Acatzingo'),
(1572, 21, 'Acteopan'),
(1573, 21, 'Ahuacatlán'),
(1574, 21, 'Ahuatlán'),
(1575, 21, 'Ahuazotepec'),
(1576, 21, 'Ahuehuetitla'),
(1577, 21, 'Ajalpan'),
(1578, 21, 'Albino Zertuche'),
(1579, 21, 'Aljojuca'),
(1580, 21, 'Altepexi'),
(1581, 21, 'Amixtlán'),
(1582, 21, 'Amozoc'),
(1583, 21, 'Aquixtla'),
(1584, 21, 'Atempan'),
(1585, 21, 'Atexcal'),
(1586, 21, 'Atlequizayan'),
(1587, 21, 'Atlixco'),
(1588, 21, 'Atoyatempan'),
(1589, 21, 'Atzala'),
(1590, 21, 'Atzitzihuacán'),
(1591, 21, 'Atzitzintla'),
(1592, 21, 'Axutla'),
(1593, 21, 'Ayotoxco de Guerrero'),
(1594, 21, 'Calpan'),
(1595, 21, 'Caltepec'),
(1596, 21, 'Camocuautla'),
(1597, 21, 'Cañada Morelos'),
(1598, 21, 'Caxhuacan'),
(1599, 21, 'Chalchicomula de Sesma'),
(1600, 21, 'Chapulco'),
(1601, 21, 'Chiautla'),
(1602, 21, 'Chiautzingo'),
(1603, 21, 'Chichiquila'),
(1604, 21, 'Chiconcuautla'),
(1605, 21, 'Chietla'),
(1606, 21, 'Chigmecatitlán'),
(1607, 21, 'Chignahuapan'),
(1608, 21, 'Chignautla'),
(1609, 21, 'Chila'),
(1610, 21, 'Chila de la Sal'),
(1611, 21, 'Chilchotla'),
(1612, 21, 'Chinantla'),
(1613, 21, 'Coatepec'),
(1614, 21, 'Coatzingo'),
(1615, 21, 'Cohetzala'),
(1616, 21, 'Cohuecan'),
(1617, 21, 'Coronango'),
(1618, 21, 'Coxcatlán'),
(1619, 21, 'Coyomeapan'),
(1620, 21, 'Coyotepec'),
(1621, 21, 'Cuapiaxtla de Madero'),
(1622, 21, 'Cuautempan'),
(1623, 21, 'Cuautinchán'),
(1624, 21, 'Cuautlancingo'),
(1625, 21, 'Cuayuca de Andradre'),
(1626, 21, 'Cuetzalan del Progreso'),
(1627, 21, 'Cuyoaco'),
(1628, 21, 'Domingo Arenas'),
(1629, 21, 'Eloxochitlán'),
(1630, 21, 'Epatlán'),
(1631, 21, 'Esperanza'),
(1632, 21, 'Francisco Z. Mena'),
(1633, 21, 'General Felipe Ángeles'),
(1634, 21, 'Guadalupe'),
(1635, 21, 'Guadalupe Victoria'),
(1636, 21, 'Hermenegildo Galeana'),
(1637, 21, 'Honey'),
(1638, 21, 'Huaquechula'),
(1639, 21, 'Huatlatlauca'),
(1640, 21, 'Huauchinango'),
(1641, 21, 'Huehuetla'),
(1642, 21, 'Huehuetlán el Chico'),
(1643, 21, 'Huehuetlán el Grande'),
(1644, 21, 'Huejotzingo'),
(1645, 21, 'Hueyapan'),
(1646, 21, 'Hueytamalco'),
(1647, 21, 'Hueytlalpan'),
(1648, 21, 'Huitzilán de Serdán'),
(1649, 21, 'Huitziltepec'),
(1650, 21, 'Ixcamilpa de Guerrero'),
(1651, 21, 'Ixcaquixtla'),
(1652, 21, 'Ixtacamaxtitlán'),
(1653, 21, 'Ixtepec'),
(1654, 21, 'Izúcar de Matamoros'),
(1655, 21, 'Jalpan'),
(1656, 21, 'Jolalpan'),
(1657, 21, 'Jonotla'),
(1658, 21, 'Jopala'),
(1659, 21, 'Juan C. Bonilla'),
(1660, 21, 'Juan Galindo'),
(1661, 21, 'Juan N. Méndez'),
(1662, 21, 'Lafragua'),
(1663, 21, 'Libres'),
(1664, 21, 'Los Reyes de Juárez'),
(1665, 21, 'Magdalena Tlatlauquitepec'),
(1666, 21, 'Mazapiltepec de Juárez'),
(1667, 21, 'Mixtla'),
(1668, 21, 'Molcaxac'),
(1669, 21, 'Naupan'),
(1670, 21, 'Nauzontla'),
(1671, 21, 'Nealtican'),
(1672, 21, 'Nicolás Bravo'),
(1673, 21, 'Nopalucan'),
(1674, 21, 'Ocotepec'),
(1675, 21, 'Ocoyucan'),
(1676, 21, 'Olintla'),
(1677, 21, 'Oriental'),
(1678, 21, 'Pahuatlán'),
(1679, 21, 'Palmar de Bravo'),
(1680, 21, 'Pantepec'),
(1681, 21, 'Petlalcingo'),
(1682, 21, 'Piaxtla'),
(1683, 21, 'Puebla de Zaragoza'),
(1684, 21, 'Quecholac'),
(1685, 21, 'Quimixtlán'),
(1686, 21, 'Rafael Lara Grajales'),
(1687, 21, 'San Andrés Cholula'),
(1688, 21, 'San Antonio Cañada'),
(1689, 21, 'San Diego La Meza Tochimiltzingo'),
(1690, 21, 'San Felipe Teotlalcingo'),
(1691, 21, 'San Felipe Tepatlán'),
(1692, 21, 'San Gabriel Chilac'),
(1693, 21, 'San Gregorio Atzompa'),
(1694, 21, 'San Jerónimo Tecuanipan'),
(1695, 21, 'San Jerónimo Xayacatlán'),
(1696, 21, 'San José Chiapa'),
(1697, 21, 'San José Miahuatlán'),
(1698, 21, 'San Juan Atenco'),
(1699, 21, 'San Juan Atzompa'),
(1700, 21, 'San Martín Texmelucan'),
(1701, 21, 'San Martín Totoltepec'),
(1702, 21, 'San Matías Tlalancaleca'),
(1703, 21, 'San Miguel Ixtitlán'),
(1704, 21, 'San Miguel Xoxtla'),
(1705, 21, 'San Nicolás Buenos Aires'),
(1706, 21, 'San Nicolás de los Ranchos'),
(1707, 21, 'San Pablo Anicano'),
(1708, 21, 'San Pedro Cholula'),
(1709, 21, 'San Pedro Yeloixtlahuaca'),
(1710, 21, 'San Salvador el Seco'),
(1711, 21, 'San Salvador el Verde'),
(1712, 21, 'San Salvador Huixcolotla'),
(1713, 21, 'San Sebastián Tlacotepec'),
(1714, 21, 'Santa Catarina Tlaltempan'),
(1715, 21, 'San Inés Ahuatempan'),
(1716, 21, 'Santa Isabel Cholula'),
(1717, 21, 'Santiago Miahuatlán '),
(1718, 21, 'Santo Tomás Hueyotlipan'),
(1719, 21, 'Soltepec'),
(1720, 21, 'Tecali de Herrera'),
(1721, 21, 'Tecamachalco'),
(1722, 21, 'Tecomatlán'),
(1723, 21, 'Tehuacán'),
(1724, 21, 'Tehuitzingo'),
(1725, 21, 'Tenampulco'),
(1726, 21, 'Teopantlán'),
(1727, 21, 'Teotlalco'),
(1728, 21, 'Tepanco de López'),
(1729, 21, 'Tepango de Rodríguez'),
(1730, 21, 'Tepatlaxco de Hidalgo'),
(1731, 21, 'Tepeaca'),
(1732, 21, 'Tepemaxalco'),
(1733, 21, 'Tepeojuma'),
(1734, 21, 'Tepetzintla'),
(1735, 21, 'Tepexco'),
(1736, 21, 'Tepexi de Rodríguez'),
(1737, 21, 'Tepeyahualco'),
(1738, 21, 'Tepeyahualco de Cuauhtémoc'),
(1739, 21, 'Tetela de Ocampo'),
(1740, 21, 'Teteles de Ávila Castillo'),
(1741, 21, 'Teziutlán'),
(1742, 21, 'Tianguismanalco'),
(1743, 21, 'Tilapa'),
(1744, 21, 'Tlacotepec de Benito Juárez'),
(1745, 21, 'Tlacuilotepec'),
(1746, 21, 'Tlachichuca'),
(1747, 21, 'Tlahuapan'),
(1748, 21, 'Tlaltenango'),
(1749, 21, 'Tlanepantla'),
(1750, 21, 'Tlaola'),
(1751, 21, 'Tlapacoya'),
(1752, 21, 'Tlapanalá'),
(1753, 21, 'Tlatlauquitepec'),
(1754, 21, 'Tlaxco'),
(1755, 21, 'Tochimilco'),
(1756, 21, 'Tochtepec'),
(1757, 21, 'Totoltepec de Guerrero'),
(1758, 21, 'Tulcingo'),
(1759, 21, 'Tuzamapan de Galeana'),
(1760, 21, 'Tzicatlacoyan'),
(1761, 21, 'Venustiano Carranza'),
(1762, 21, 'Vicente Guerrero'),
(1763, 21, 'Xayacatlán de Bravo'),
(1764, 21, 'Xicotepec'),
(1765, 21, 'Xicotlán'),
(1766, 21, 'Xiutetelco'),
(1767, 21, 'Xochiapulco'),
(1768, 21, 'Xochiltepec'),
(1769, 21, 'Xochitlán de Vicente Suárez'),
(1770, 21, 'Xochitlán Todos Santos'),
(1771, 21, 'Yaonahuac'),
(1772, 21, 'Yehualtepec'),
(1773, 21, 'Zacapala'),
(1774, 21, 'Zacapoaxtla'),
(1775, 21, 'Zacatlán'),
(1776, 21, 'Zapotitlán'),
(1777, 21, 'Zapotitlán de Méndez'),
(1778, 21, 'Zaragoza'),
(1779, 21, 'Zautla'),
(1780, 21, 'Zihuateutla'),
(1781, 21, 'Zinacatepec'),
(1782, 21, 'Zongozotla'),
(1783, 21, 'Zoquiapan'),
(1784, 21, 'Zoquitlán'),
(1785, 22, 'Amealco de Bonfil'),
(1786, 22, 'Arroyo Seco'),
(1787, 22, 'Cadereyta de Montes'),
(1788, 22, 'Colón'),
(1789, 22, 'Corregidora'),
(1790, 22, 'El Marqués'),
(1791, 22, 'Ezequiel Montes'),
(1792, 22, 'Huimilpan'),
(1793, 22, 'Jalpan de Serra'),
(1794, 22, 'Landa de Matamoros'),
(1795, 22, 'Pedro Escobedo'),
(1796, 22, 'Peñamiller'),
(1797, 22, 'Pinal de Amoles'),
(1798, 22, 'Querétaro'),
(1799, 22, 'San Joaquín'),
(1800, 22, 'San Juan del Río'),
(1801, 22, 'Tequisquiapan'),
(1802, 22, 'Tolimán'),
(1803, 23, 'Benito Juárez'),
(1804, 23, 'Cozumel'),
(1805, 23, 'Felipe Carrillo Puerto'),
(1806, 23, 'Isla Mujeres'),
(1807, 23, 'José María Morelos'),
(1808, 23, 'Lázaro Cárdenas'),
(1809, 23, 'Othon P. Blanco');
INSERT INTO `town` (`town_id`, `state_id`, `name`) VALUES
(1810, 23, 'Solidaridad'),
(1811, 23, 'Tulum'),
(1812, 24, 'Ahualulco'),
(1813, 24, 'Alaquines'),
(1814, 24, 'Aquismón'),
(1815, 24, 'Armadillo de los Infante'),
(1816, 24, 'Axtla de Terrazas'),
(1817, 24, 'Cárdenas'),
(1818, 24, 'Catorce'),
(1819, 24, 'Cedral'),
(1820, 24, 'Cerritos'),
(1821, 24, 'Cerro de San Pedro'),
(1822, 24, 'Charcas'),
(1823, 24, 'Ciudad del Maíz'),
(1824, 24, 'Ciudad Fernández'),
(1825, 24, 'Ciudad Valles'),
(1826, 24, 'Coxcatlán'),
(1827, 24, 'Ebano'),
(1828, 24, 'El Naranjo'),
(1829, 24, 'Guadalcázar'),
(1830, 24, 'Huehuetlán'),
(1831, 24, 'Lagunillas'),
(1832, 24, 'Matehuala'),
(1833, 24, 'Matlapa'),
(1834, 24, 'Mexquitic de Carmona'),
(1835, 24, 'Moctezuma'),
(1836, 24, 'Rayón'),
(1837, 24, 'Rioverde'),
(1838, 24, 'Salinas'),
(1839, 24, 'San Antonio'),
(1840, 24, 'San Ciro de Acosta'),
(1841, 24, 'San Luis Potosí'),
(1842, 24, 'San Martín Chalchicuautla'),
(1843, 24, 'San Nicolás Tolentino'),
(1844, 24, 'Santa Catarina'),
(1845, 24, 'Santa María del Río'),
(1846, 24, 'Santo Domingo'),
(1847, 24, 'San Vicente Tancuayalab'),
(1848, 24, 'Soledad de Graciano Sánchez'),
(1849, 24, 'Tamasopo'),
(1850, 24, 'Tamazunchale'),
(1851, 24, 'Tampacán'),
(1852, 24, 'Tampamolón Corona'),
(1853, 24, 'Tamuín'),
(1854, 24, 'Tancanhuitz de Santos'),
(1855, 24, 'Tanlajás'),
(1856, 24, 'Tanquián de Escobedo'),
(1857, 24, 'Tierra Nueva'),
(1858, 24, 'Vanegas'),
(1859, 24, 'Venado'),
(1860, 24, 'Villa de Arriaga'),
(1861, 24, 'Villa de Arista'),
(1862, 24, 'Villa de Guadalupe'),
(1863, 24, 'Villa de la Paz'),
(1864, 24, 'Villa de Ramos'),
(1865, 24, 'Villa de Reyes'),
(1866, 24, 'Villa Hidalgo'),
(1867, 24, 'Villa Juárez'),
(1868, 24, 'Xilitla'),
(1869, 24, 'Zaragoza'),
(1870, 25, 'Ahome'),
(1871, 25, 'Angostura'),
(1872, 25, 'Badiraguato'),
(1873, 25, 'Choix'),
(1874, 25, 'Concordia'),
(1875, 25, 'Cosalá'),
(1876, 25, 'Culiacán'),
(1877, 25, 'El Fuerte'),
(1878, 25, 'Elota'),
(1879, 25, 'El Rosario'),
(1880, 25, 'Escuinapa'),
(1881, 25, 'Guasave'),
(1882, 25, 'Mazatlán'),
(1883, 25, 'Mocorito'),
(1884, 25, 'Navolato'),
(1885, 25, 'Salvador Alvarado'),
(1886, 25, 'San Ignacio'),
(1887, 25, 'Sinaloa de Leyva'),
(1888, 26, 'Aconchi'),
(1889, 26, 'Agua Prieta'),
(1890, 26, 'Alamos'),
(1891, 26, 'Altar'),
(1892, 26, 'Arivechi'),
(1893, 26, 'Arizpe'),
(1894, 26, 'Atil'),
(1895, 26, 'Bacadéhuachi'),
(1896, 26, 'Bacanora'),
(1897, 26, 'Bacerac'),
(1898, 26, 'Bacoachi'),
(1899, 26, 'Bácum'),
(1900, 26, 'Banámichi'),
(1901, 26, 'Baviácora'),
(1902, 26, 'Bavíspe'),
(1903, 26, 'Benito Juárez'),
(1904, 26, 'Benjamín Hill'),
(1905, 26, 'Caborca'),
(1906, 26, 'Cajeme'),
(1907, 26, 'Cananea'),
(1908, 26, 'Carbó'),
(1909, 26, 'Cocurpe'),
(1910, 26, 'Cumpas'),
(1911, 26, 'Divisaderos'),
(1912, 26, 'Empalme'),
(1913, 26, 'Etchojoa'),
(1914, 26, 'Fronteras'),
(1915, 26, 'General Plutarco Elías Calles'),
(1916, 26, 'Granados'),
(1917, 26, 'Guaymas'),
(1918, 26, 'Hermosillo'),
(1919, 26, 'Huachinera'),
(1920, 26, 'Huásabas'),
(1921, 26, 'Huatabampo'),
(1922, 26, 'Huépac'),
(1923, 26, 'Imuris'),
(1924, 26, 'La Colorada'),
(1925, 26, 'Magdalena'),
(1926, 26, 'Mazatán'),
(1927, 26, 'Moctezuma'),
(1928, 26, 'Naco'),
(1929, 26, 'Nácori Chico'),
(1930, 26, 'Nacozari de García'),
(1931, 26, 'Navojoa'),
(1932, 26, 'Nogales'),
(1933, 26, 'Onavas'),
(1934, 26, 'Opodepe'),
(1935, 26, 'Oquitoa'),
(1936, 26, 'Pitiquito'),
(1937, 26, 'Puerto Peñasco'),
(1938, 26, 'Quiriego'),
(1939, 26, 'Rayón'),
(1940, 26, 'Rosario'),
(1941, 26, 'Sahuaripa'),
(1942, 26, 'San Felipe de Jesús'),
(1943, 26, 'San Ignacio Río Muerto'),
(1944, 26, 'San Javier'),
(1945, 26, 'San Luis Río Colorado'),
(1946, 26, 'San Miguel de Horcasitas'),
(1947, 26, 'San Pedro de la Cueva'),
(1948, 26, 'Santa Ana'),
(1949, 26, 'Santa Cruz'),
(1950, 26, 'Sáric'),
(1951, 26, 'Soyopa'),
(1952, 26, 'Suaqui Grande'),
(1953, 26, 'Tepache'),
(1954, 26, 'Trincheras'),
(1955, 26, 'Tubutama'),
(1956, 26, 'Ures'),
(1957, 26, 'Villa Hidalgo'),
(1958, 26, 'Villa Pesqueira'),
(1959, 26, 'Yécora'),
(1960, 27, 'Balancán'),
(1961, 27, 'Cárdenas'),
(1962, 27, 'Centla'),
(1963, 27, 'Centro'),
(1964, 27, 'Comalcalco'),
(1965, 27, 'Cunduacán'),
(1966, 27, 'Emiliano Zapata'),
(1967, 27, 'Huimanguillo'),
(1968, 27, 'Jalapa'),
(1969, 27, 'Jalpa de Méndez'),
(1970, 27, 'Jonuta'),
(1971, 27, 'Macuspana'),
(1972, 27, 'Nacajuca'),
(1973, 27, 'Paraíso'),
(1974, 27, 'Tacotalpa'),
(1975, 27, 'Teapa'),
(1976, 27, 'Tenosique'),
(1977, 28, 'Abasolo'),
(1978, 28, 'Aldama'),
(1979, 28, 'Altamira'),
(1980, 28, 'Antiguo Morelos'),
(1981, 28, 'Burgos'),
(1982, 28, 'Bustamante'),
(1983, 28, 'Camargo'),
(1984, 28, 'Casas'),
(1985, 28, 'Ciudad Madero'),
(1986, 28, 'Cruillas'),
(1987, 28, 'Gómez Farías'),
(1988, 28, 'González'),
(1989, 28, 'Güemez'),
(1990, 28, 'Guerrero'),
(1991, 28, 'Gustavo Díaz Ordaz'),
(1992, 28, 'Hidalgo'),
(1993, 28, 'Jaumave'),
(1994, 28, 'Jiménez'),
(1995, 28, 'Llera'),
(1996, 28, 'Mainero'),
(1997, 28, 'Mante'),
(1998, 28, 'Matamoros'),
(1999, 28, 'Méndez'),
(2000, 28, 'Mier'),
(2001, 28, 'Miguel Alemán'),
(2002, 28, 'Miquihuana'),
(2003, 28, 'Nuevo Laredo'),
(2004, 28, 'Nuevo Morelos'),
(2005, 28, 'Ocampo'),
(2006, 28, 'Padilla'),
(2007, 28, 'Palmillas'),
(2008, 28, 'Reynosa'),
(2009, 28, 'Río Bravo'),
(2010, 28, 'San Carlos'),
(2011, 28, 'San Fernando'),
(2012, 28, 'San Nicolás'),
(2013, 28, 'Soto La Marina'),
(2014, 28, 'Tampico'),
(2015, 28, 'Tula'),
(2016, 28, 'Valle Hermoso'),
(2017, 28, 'Victoria'),
(2018, 28, 'Villagrán'),
(2019, 28, 'Xicotencatl'),
(2020, 29, 'Acuamanala de Miguel Hidalgo'),
(2021, 29, 'Altzayanca'),
(2022, 29, 'Amaxac de Guerrero'),
(2023, 29, 'Apetatitlán de Antonio Carvajal'),
(2024, 29, 'Atlangatepec'),
(2025, 29, 'Apizaco'),
(2026, 29, 'Benito Juárez'),
(2027, 29, 'Calpulalpan'),
(2028, 29, 'Chiautempan'),
(2029, 29, 'Contla de Juan Cuamatzi'),
(2030, 29, 'Cuapiaxtla'),
(2031, 29, 'Cuaxomulco'),
(2032, 29, 'El Carmen Tequexquitla'),
(2033, 29, 'Emiliano Zapata'),
(2034, 29, 'Españita'),
(2035, 29, 'Huamantla'),
(2036, 29, 'Hueyotlipan'),
(2037, 29, 'Ixtacuixtla de Mariano Matamoros'),
(2038, 29, 'Ixtenco'),
(2039, 29, 'La Magdalena Tlaltelulco'),
(2040, 29, 'Lázaro Cárdenas'),
(2041, 29, 'Mazatecochco de José María Morelos'),
(2042, 29, 'Muñoz de Domingo Arenas'),
(2043, 29, 'Nanacamilpa de Mariano Arista'),
(2044, 29, 'Nativitas'),
(2045, 29, 'Panotla'),
(2046, 29, 'Papalotla de Xicohténcatl'),
(2047, 29, 'Sanctorum de Lázaro Cárdenas'),
(2048, 29, 'San Damián Texoloc'),
(2049, 29, 'San Francisco Tetlanohcan'),
(2050, 29, 'San Jerónimo Zacualpan'),
(2051, 29, 'San José Teacalco'),
(2052, 29, 'San Juan Huactzinco'),
(2053, 29, 'San Lorenzo Axocomanitla'),
(2054, 29, 'San Lucas Tecopilco'),
(2055, 29, 'San Pablo del Monte'),
(2056, 29, 'Santa Ana Nopalucan'),
(2057, 29, 'Santa Apolonia Teacalco'),
(2058, 29, 'Santa Catarina Ayometla'),
(2059, 29, 'Santa Cruz Quilehtla'),
(2060, 29, 'Santa Cruz Tlaxcala'),
(2061, 29, 'Santa Isabel Xiloxoxtla'),
(2062, 29, 'Tenancingo'),
(2063, 29, 'Teolocholco'),
(2064, 29, 'Tepetitla de Lardizábal'),
(2065, 29, 'Tepeyanco'),
(2066, 29, 'Terrenate'),
(2067, 29, 'Tetla de la Solidaridad'),
(2068, 29, 'Tetlatlahuca'),
(2069, 29, 'Tlaxcala'),
(2070, 29, 'Tlaxco'),
(2071, 29, 'Tocatlán'),
(2072, 29, 'Totolac'),
(2073, 29, 'Tzompantepec'),
(2074, 29, 'Xaloztoc'),
(2075, 29, 'Xaltocan'),
(2076, 29, 'Xicohtzinco'),
(2077, 29, 'Yauhquemecan'),
(2078, 29, 'Zacatelco'),
(2079, 29, 'Zitlaltepec de Trinidad Sánchez Santos'),
(2080, 30, 'Acajete'),
(2081, 30, 'Acatlán'),
(2082, 30, 'Acayucan'),
(2083, 30, 'Actopan'),
(2084, 30, 'Acula'),
(2085, 30, 'Acultzingo'),
(2086, 30, 'Agua Dulce'),
(2087, 30, 'Álamo Temapache'),
(2088, 30, 'Alpatláhuac'),
(2089, 30, 'Alto Lucero de Gutiérrez Barrios'),
(2090, 30, 'Altotonga'),
(2091, 30, 'Alvarado'),
(2092, 30, 'Amatitlán'),
(2093, 30, 'Amatlán de los Reyes'),
(2094, 30, 'Ángel R. Cabada'),
(2095, 30, 'Apazapan'),
(2096, 30, 'Aquila'),
(2097, 30, 'Astacinga'),
(2098, 30, 'Atlahuilco'),
(2099, 30, 'Atoyac'),
(2100, 30, 'Atzacan'),
(2101, 30, 'Atzalan'),
(2102, 30, 'Ayahualulco'),
(2103, 30, 'Banderilla'),
(2104, 30, 'Benito Juárez'),
(2105, 30, 'Boca del Río'),
(2106, 30, 'Calcahualco'),
(2107, 30, 'Camarón de Tejeda'),
(2108, 30, 'Camerino Z. Mendoza'),
(2109, 30, 'Carlos A. Carrillo'),
(2110, 30, 'Carrillo Puerto'),
(2111, 30, 'Castillo de Teayo'),
(2112, 30, 'Catemaco'),
(2113, 30, 'Cazones de Herrera'),
(2114, 30, 'Cerro Azul'),
(2115, 30, 'Chacaltianguis'),
(2116, 30, 'Chalma'),
(2117, 30, 'Chiconamel'),
(2118, 30, 'Chiconquiaco'),
(2119, 30, 'Chicontepec'),
(2120, 30, 'Chinameca'),
(2121, 30, 'Chinampa de Gorostiza'),
(2122, 30, 'Chocamán'),
(2123, 30, 'Chontla'),
(2124, 30, 'Chumatlán'),
(2125, 30, 'Citlaltépetl'),
(2126, 30, 'Coacoatzintla'),
(2127, 30, 'Coahuitlán'),
(2128, 30, 'Coatepec'),
(2129, 30, 'Coatzacoalcos'),
(2130, 30, 'Coatzintla'),
(2131, 30, 'Coetzala'),
(2132, 30, 'Colipa'),
(2133, 30, 'Comapa'),
(2134, 30, 'Córdoba'),
(2135, 30, 'Cosamaloapan de Carpio'),
(2136, 30, 'Consautlán de Carvajal'),
(2137, 30, 'Coscomatepec'),
(2138, 30, 'Cosoleacaque'),
(2139, 30, 'Cotaxtla'),
(2140, 30, 'Coxquihui'),
(2141, 30, 'Coyutla'),
(2142, 30, 'Cuichapa'),
(2143, 30, 'Cuitláhuac'),
(2144, 30, 'El Higo'),
(2145, 30, 'Emiliano Zapata'),
(2146, 30, 'Espinal'),
(2147, 30, 'Filomeno Mata'),
(2148, 30, 'Fortín'),
(2149, 30, 'Gutiérrez Zamora'),
(2150, 30, 'Hidalgotitlán'),
(2151, 30, 'Huayacocotla'),
(2152, 30, 'Hueyapan de Ocampo'),
(2153, 30, 'Huiloapan de Cuauhtémoc'),
(2154, 30, 'Ignacio de la Llave'),
(2155, 30, 'Ilamatlán'),
(2156, 30, 'Isla'),
(2157, 30, 'Ixcatepec'),
(2158, 30, 'Ixhuacán de los Reyes'),
(2159, 30, 'Ixhuatlancillo'),
(2160, 30, 'Ixhuatlán del Café'),
(2161, 30, 'Ixhuatlán de Madero'),
(2162, 30, 'Ixhuatlán del Sureste'),
(2163, 30, 'Ixmatlahuacan'),
(2164, 30, 'Ixtaczoquitlán'),
(2165, 30, 'Jalacingo'),
(2166, 30, 'Jalcomulco'),
(2167, 30, 'Jáltipan'),
(2168, 30, 'Jamapa'),
(2169, 30, 'Jesús Carranza'),
(2170, 30, 'Jilotepec'),
(2171, 30, 'José Azueta'),
(2172, 30, 'Juan Rodríguez Clara'),
(2173, 30, 'Juchique de Ferrer'),
(2174, 30, 'La Antigua'),
(2175, 30, 'Landero y Coss'),
(2176, 30, 'La Perla'),
(2177, 30, 'Las Choapas'),
(2178, 30, 'Las Minas'),
(2179, 30, 'Las Vigas de Ramírez'),
(2180, 30, 'Lerdo de Tejada'),
(2181, 30, 'Los Reyes'),
(2182, 30, 'Magdalena'),
(2183, 30, 'Maltrata'),
(2184, 30, 'Manlio Fabio Altamirano'),
(2185, 30, 'Mariano Escobedo'),
(2186, 30, 'Martínez de la Torre'),
(2187, 30, 'Mecatlán'),
(2188, 30, 'Mecayapan'),
(2189, 30, 'Medellín'),
(2190, 30, 'Miahuatlán'),
(2191, 30, 'Minatitlán'),
(2192, 30, 'Misantla'),
(2193, 30, 'Mixtla de Altamirano'),
(2194, 30, 'Moloacán'),
(2195, 30, 'Nanchital de Lázaro Cárdenas del Río'),
(2196, 30, 'Naolinco'),
(2197, 30, 'Naranjal'),
(2198, 30, 'Naranjos Amatlán'),
(2199, 30, 'Nautla'),
(2200, 30, 'Nogales'),
(2201, 30, 'Oluta'),
(2202, 30, 'Omealca'),
(2203, 30, 'Orizaba'),
(2204, 30, 'Otatitlán'),
(2205, 30, 'Oteapan'),
(2206, 30, 'Ozuluama de Mascañeras'),
(2207, 30, 'Pajapan'),
(2208, 30, 'Pánuco'),
(2209, 30, 'Papantla'),
(2210, 30, 'Paso del Macho'),
(2211, 30, 'Paso de Ovejas'),
(2212, 30, 'Perote'),
(2213, 30, 'Platón Sánchez'),
(2214, 30, 'Playa Vicente'),
(2215, 30, 'Poza Rica de Hidalgo'),
(2216, 30, 'Pueblo Viejo'),
(2217, 30, 'Puente Nacional'),
(2218, 30, 'Rafael Delgado'),
(2219, 30, 'Rafael Lucio'),
(2220, 30, 'Río Blanco'),
(2221, 30, 'Saltabarranca'),
(2222, 30, 'San Andrés Tenejapan'),
(2223, 30, 'San Andrés Tuxtla'),
(2224, 30, 'San Juan Evangelista'),
(2225, 30, 'San Rafael'),
(2226, 30, 'Santiago Sochiapan'),
(2227, 30, 'Santiago Tuxtla'),
(2228, 30, 'Sayula de Alemán'),
(2229, 30, 'Soconusco'),
(2230, 30, 'Sochiapa'),
(2231, 30, 'Soledad Atzompa'),
(2232, 30, 'Soledad de Doblado'),
(2233, 30, 'Soteapan'),
(2234, 30, 'Tamalín'),
(2235, 30, 'Tamiahua'),
(2236, 30, 'Tampico Alto'),
(2237, 30, 'Tancoco'),
(2238, 30, 'Tantima'),
(2239, 30, 'Tantoyuca'),
(2240, 30, 'Tatatila'),
(2241, 30, 'Tatahuicapan de Juárez'),
(2242, 30, 'Tecolutla'),
(2243, 30, 'Tehuipango'),
(2244, 30, 'Tempoal'),
(2245, 30, 'Tenampa'),
(2246, 30, 'Tenochtitlán'),
(2247, 30, 'Teocelo'),
(2248, 30, 'Tepatlaxco'),
(2249, 30, 'Tepetlán'),
(2250, 30, 'Tepetzintla'),
(2251, 30, 'Tequila'),
(2252, 30, 'Texcatepec'),
(2253, 30, 'Texhuacán'),
(2254, 30, 'Texistepec'),
(2255, 30, 'Tezonapa'),
(2256, 30, 'Tihuatlán'),
(2257, 30, 'Tierra Blanca'),
(2258, 30, 'Tlacojalpan'),
(2259, 30, 'Tlacolulan'),
(2260, 30, 'Tlacotalpan'),
(2261, 30, 'Tlacotepec de Mejía'),
(2262, 30, 'Tlachichilco'),
(2263, 30, 'Tlalixcoyan'),
(2264, 30, 'Tlalnelhuayocan'),
(2265, 30, 'Tlaltetela'),
(2266, 30, 'Tlapacoyan'),
(2267, 30, 'Tlaquilpa'),
(2268, 30, 'Tlilapan'),
(2269, 30, 'Tomatlán'),
(2270, 30, 'Tonayán'),
(2271, 30, 'Totutla'),
(2272, 30, 'Tres Valles'),
(2273, 30, 'Tuxpan'),
(2274, 30, 'Tuxtilla'),
(2275, 30, 'Úrsulo Galván'),
(2276, 30, 'Uxpanapa'),
(2277, 30, 'Vega de Alatorre'),
(2278, 30, 'Veracruz'),
(2279, 30, 'Villa Aldama'),
(2280, 30, 'Xalapa'),
(2281, 30, 'Xico'),
(2282, 30, 'Xoxocotla'),
(2283, 30, 'Yanga'),
(2284, 30, 'Yecuatla'),
(2285, 30, 'Zacualpan'),
(2286, 30, 'Zaragoza'),
(2287, 30, 'Zentla'),
(2288, 30, 'Zongolica'),
(2289, 30, 'Zontecomatlán'),
(2290, 30, 'Zozocolco de Hidalgo'),
(2291, 31, 'Abalá'),
(2292, 31, 'Acanceh'),
(2293, 31, 'Akil'),
(2294, 31, 'Baca'),
(2295, 31, 'Bokobá'),
(2296, 31, 'Buctzotz'),
(2297, 31, 'Cacalchén'),
(2298, 31, 'Calotmul'),
(2299, 31, 'Cansahcab'),
(2300, 31, 'Cantamayec'),
(2301, 31, 'Calestún'),
(2302, 31, 'Cenotillo'),
(2303, 31, 'Conkal'),
(2304, 31, 'Cuncunul'),
(2305, 31, 'Cuzamá'),
(2306, 31, 'Chacsinkín'),
(2307, 31, 'Chankom'),
(2308, 31, 'Chapab'),
(2309, 31, 'Chemax'),
(2310, 31, 'Chicxulub Pueblo'),
(2311, 31, 'Chichimilá'),
(2312, 31, 'Chikindzonot'),
(2313, 31, 'Chocholá'),
(2314, 31, 'Chumayel'),
(2315, 31, 'Dzán'),
(2316, 31, 'Dzemul'),
(2317, 31, 'Dzidzantún'),
(2318, 31, 'Dzilam de Bravo'),
(2319, 31, 'Dzilam González'),
(2320, 31, 'Dzitás'),
(2321, 31, 'Dzoncauich'),
(2322, 31, 'Espita'),
(2323, 31, 'Halachó'),
(2324, 31, 'Hocabá'),
(2325, 31, 'Hoctún'),
(2326, 31, 'Homún'),
(2327, 31, 'Huhí'),
(2328, 31, 'Hunucmá'),
(2329, 31, 'Ixtil'),
(2330, 31, 'Izamal'),
(2331, 31, 'Kanasín'),
(2332, 31, 'Kantunil'),
(2333, 31, 'Kaua'),
(2334, 31, 'Kinchil'),
(2335, 31, 'Kopomá'),
(2336, 31, 'Mama'),
(2337, 31, 'Maní'),
(2338, 31, 'Maxcanú'),
(2339, 31, 'Mayapán'),
(2340, 31, 'Mérida'),
(2341, 31, 'Mocochá'),
(2342, 31, 'Motul'),
(2343, 31, 'Muna'),
(2344, 31, 'Muxupip'),
(2345, 31, 'Opichén'),
(2346, 31, 'Oxkutzcab'),
(2347, 31, 'Panabá'),
(2348, 31, 'Peto'),
(2349, 31, 'Progreso'),
(2350, 31, 'Quintana Roo'),
(2351, 31, 'Río Lagartos'),
(2352, 31, 'Sacalum'),
(2353, 31, 'Samahil'),
(2354, 31, 'Sanahcat'),
(2355, 31, 'San Felipe'),
(2356, 31, 'Santa Elena'),
(2357, 31, 'Seyé'),
(2358, 31, 'Sinanché'),
(2359, 31, 'Sotuta'),
(2360, 31, 'Sucilá'),
(2361, 31, 'Sudzal'),
(2362, 31, 'Suma de Hidalgo'),
(2363, 31, 'Tahdziú'),
(2364, 31, 'Tahmek'),
(2365, 31, 'Teabo'),
(2366, 31, 'Tecoh'),
(2367, 31, 'Tekal de Venegas'),
(2368, 31, 'Tekantó'),
(2369, 31, 'Tekax'),
(2370, 31, 'Tekit'),
(2371, 31, 'Tekom'),
(2372, 31, 'Telchac Pueblo'),
(2373, 31, 'Telchac Puerto'),
(2374, 31, 'Temax'),
(2375, 31, 'Temozón'),
(2376, 31, 'Tepakán'),
(2377, 31, 'Tetiz'),
(2378, 31, 'Teya'),
(2379, 31, 'Ticul'),
(2380, 31, 'Timucuy'),
(2381, 31, 'Tinúm'),
(2382, 31, 'Tixcacalcupul'),
(2383, 31, 'Tixkokob'),
(2384, 31, 'Tixméhuac'),
(2385, 31, 'Tixpéhual'),
(2386, 31, 'Tizimín'),
(2387, 31, 'Tunkás'),
(2388, 31, 'Tzucacab'),
(2389, 31, 'Uayma'),
(2390, 31, 'Ucú'),
(2391, 31, 'Umán'),
(2392, 31, 'Valladolid'),
(2393, 31, 'Xocchel'),
(2394, 31, 'Yaxcabá'),
(2395, 31, 'Yaxkukul'),
(2396, 31, 'Yobaín'),
(2397, 32, 'Apozol'),
(2398, 32, 'Apulco'),
(2399, 32, 'Atolinga'),
(2400, 32, 'Benito Juárez'),
(2401, 32, 'Calera'),
(2402, 32, 'Cañitas de Felipe Pescador'),
(2403, 32, 'Concepción del Oro'),
(2404, 32, 'Cuauhtémoc'),
(2405, 32, 'Chalchihuites'),
(2406, 32, 'Fresnillo'),
(2407, 32, 'Trinidad García de la Cadena'),
(2408, 32, 'Genaro Codina'),
(2409, 32, 'General Enrique Estrada'),
(2410, 32, 'General Francisco R. Murguía'),
(2411, 32, 'El Plateado de Joaquín Amaro'),
(2412, 32, 'El Salvador'),
(2413, 32, 'General Pánfilo Natera'),
(2414, 32, 'Guadalupe'),
(2415, 32, 'Huanusco'),
(2416, 32, 'Jalpa'),
(2417, 32, 'Jerez'),
(2418, 32, 'Jiménez del Teul'),
(2419, 32, 'Juan Aldama'),
(2420, 32, 'Juchipila'),
(2421, 32, 'Loreto'),
(2422, 32, 'Luis Moya'),
(2423, 32, 'Mazapil'),
(2424, 32, 'Melchor Ocampo'),
(2425, 32, 'Mezquital del Oro'),
(2426, 32, 'Miguel Auza'),
(2427, 32, 'Momax'),
(2428, 32, 'Monte Escobedo'),
(2429, 32, 'Morelos'),
(2430, 32, 'Moyahua de Estrada'),
(2431, 32, 'Nochistlán de Mejía'),
(2432, 32, 'Noria de Ángeles'),
(2433, 32, 'Ojocaliente'),
(2434, 32, 'Pánuco'),
(2435, 32, 'Pinos'),
(2436, 32, 'Río Grande'),
(2437, 32, 'Sain Alto'),
(2438, 32, 'Santa María de la Paz'),
(2439, 32, 'Sombrerete'),
(2440, 32, 'Susticacán'),
(2441, 32, 'Tabasco'),
(2442, 32, 'Tepechitlán'),
(2443, 32, 'Tepetongo'),
(2444, 32, 'Teul de González Ortega'),
(2445, 32, 'Tlaltenango de Sánchez Román'),
(2446, 32, 'Trancoso'),
(2447, 32, 'Valparaíso'),
(2448, 32, 'Vetagrande'),
(2449, 32, 'Villa de Cos'),
(2450, 32, 'Villa García'),
(2451, 32, 'Villa González Ortega'),
(2452, 32, 'Villa Hidalgo'),
(2453, 32, 'Villanueva'),
(2454, 32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `npassword` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_google` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `npassword_google` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `npassword_facebook` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `valid_until` date DEFAULT '0000-00-00',
  `remember_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `conekta_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `npassword`, `password_google`, `npassword_google`, `password_facebook`, `npassword_facebook`, `email`, `rol_id`, `step`, `name`, `telephone`, `facebook_id`, `facebook_photo`, `google_id`, `google_photo`, `photo_selected`, `user_hometown`, `instagram_basic`, `age_range`, `birthday`, `gender`, `link`, `location`, `valid_until`, `remember_token`, `conekta_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$gWZk2NUivOkJ7vwvNBNWbOkqd.C9u2h3Cdyx8cWNbzQFjBtK9bACW', NULL, NULL, NULL, NULL, NULL, 'admin@admin.com', 100, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'G4A8I2qA3KjaiK3G5r2sZc4fapiBB7qCzCo89ziK97RIIRT4NmMFuYWQLt9r', NULL, '2015-11-08 21:03:51', '2019-10-26 17:36:54'),
(2, 'bandatest', '$2y$10$QrT28Hxgg/jtQMn3sYwmxuP0ub95HHOd8NSNY0K.UD0R9GwtLp6Zq', NULL, NULL, NULL, NULL, NULL, 'bandatest@bandatest.com', 210, 2, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-31', 'F52ksm4AHB41VMOQcgIVRbqWYVeXeZ41bJgwC4DVe1Lj4NywWpdurTsV3PKi', NULL, '2015-12-13 03:09:53', '2017-08-01 18:08:03'),
(3, 'salontest', '$2y$10$vAHvAWE14vvq7BebhD6Quec0nMdGYjizW2F6rGFQateoIOBXsnDAm', NULL, NULL, NULL, NULL, NULL, 'salontest@salontest.com', 310, 2, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31', 'fKABAa6ovpaGxWOjHbDmXUcpnXiDGQK1H7Oi5AVjz4JUPrKDFN3RdBwMErAc', NULL, '2015-12-13 03:11:51', '2017-02-03 18:07:24'),
(7, 'crisalon', '$2y$10$EEGTMxGA4dSXnb5aLmCDSus9kAnfyUw8Qb17o.xFnrWpu4wJUp/Py', NULL, NULL, NULL, NULL, NULL, 'administracion@enbibo.com', 310, 2, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31', 'B9n0CqtUddkCwsYvyoF3JwWDO9blYr2iDmJHyrsv0ze7hMh52nF6osX7tSp1', NULL, '2016-01-12 18:42:43', '2019-12-08 04:49:35'),
(10, 'admin2', '$2y$10$Krlpu2opARahhbwVqdtwuOyys5ooz0dsivNicuP4wTPdqIQaZRMyG', NULL, NULL, NULL, NULL, NULL, 'admin@sokolabs.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-31', '2Vm72TpBpas2AyEAFTMc4EKNIMABULSYuvUi9jlOG8bBBqD085EOUg6SR53h', NULL, '2016-02-18 03:41:26', '2016-05-19 18:28:35'),
(11, 'CristinaB', '$2y$10$cnoXRd.Db5PL2iRzS8fbXuOgTdKVT1t4TILng9VJKhNnskSs0gKmS', NULL, NULL, NULL, NULL, NULL, 'mercadotecnia@enbibo.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'GokDF4DbPX1cRrSwLaPri4eFDXNScg9ceKwWcQ21Jqq0qsuuQjdeHHDijN2N', NULL, '2016-03-14 16:31:11', '2016-07-09 19:26:00'),
(17, 'betabanda1', '$2y$10$EaqYo6J4G/acSMlSWsVA3uPmor4li8XRSszGMhRDWymtnAduUwzNq', NULL, NULL, NULL, NULL, NULL, 'betabanda1@enbibo.com', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-31', 'wtpXpuYuMjhqx6ugarAoV9gUZk5AxUHSMyuVpkdHNCfAzTVnqkEfudehxN6o', NULL, '2016-05-21 23:01:02', '2016-05-21 23:04:37'),
(18, 'betabanda2', '$2y$10$94wRBYLU5kgYzXXLSH2IAO9EXNspqbAnMb4w4dcR/vPQJCpQEn0SC', NULL, NULL, NULL, NULL, NULL, 'betabanda2@enbibo.com', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-31', 'IIu12sl9BwKI1NiJJNXqmspoQz2WuBGtcJOwevt8Dw29W06VXcIBaDK0TBhq', NULL, '2016-05-21 23:01:34', '2016-05-21 23:05:05'),
(19, 'salonbeta1', '$2y$10$U50OiVVzeaG1L5oVLgIp..Ra4tfqGTMvNZ78AYyavr7ZCKVbvll5.', NULL, NULL, NULL, NULL, NULL, 'salonbeta1@enbibo.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-09-30', 'uSYRawNIDVT9U7B5GOkMpyV4HJCZd2uxOhx7E2nOPM07GjLmEUetetZt61zg', NULL, '2016-05-21 23:02:32', '2016-07-07 20:59:32'),
(20, 'salonbeta2', '$2y$10$2PF6X0QrusB3UT7zTNS.UOnhxvavt0xOHrlZ6MBiJIfSubxutQExS', NULL, NULL, NULL, NULL, NULL, 'salonbeta2@enbibo.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-31', 'AFtsXqSVqyuvfkn15VMpLPE85rhhqUYKUdQ4i2lo1GTKon2A5wOJkWGFLUXB', NULL, '2016-05-21 23:02:54', '2016-05-21 23:02:58'),
(22, 'bandabasico', '$2y$10$3FaQWeBR5.cY1SVo/R0hb.PonrvjQlx2Q5eJ5h64ygFXkZ7AzUr1O', NULL, NULL, NULL, NULL, NULL, 'bandabasico@enbibo.com', 200, 2, 'banda basico', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9999-01-01', 'HH4ywH5rQsHdVjRbibXnept5YwWptGN3FQDxxzEt6tkEjYEPadgwr0ZFDdZj', NULL, '2016-07-10 22:34:40', '2016-12-05 21:58:15'),
(23, 'bandapremium', '$2y$10$9pHZzWJ/CKKpbhmvXRU5xufLaC2okixVwzRS5RwoLTwocB9D.O9nO', NULL, NULL, NULL, NULL, NULL, 'bandapremium@enbibo.com', 210, 2, 'banda premium', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9999-01-01', 'QUfJtHLrCVhPEVMSHFnIVUhtQ2PRT9fbCtoat6Mxw9XDayTC0fyOttitRwcg', NULL, '2016-07-10 22:37:52', '2018-06-07 21:50:48'),
(24, 'salonbasico', '$2y$10$5p2DkU1Dihy656ZK/0N0W./nmeJQgI1m.k6s0rGzcUbfgBj.vQgP.', NULL, NULL, NULL, NULL, NULL, 'salonbasico@enbibo.com', 300, 2, 'salon basico', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9999-01-01', 'lAkQs7uhYH5fLliKDDQh5uVoGvwEKjJGXUGIqMDJC3j5QxT0PBwhReLkFOVk', NULL, '2016-07-10 22:55:29', '2019-05-21 00:33:27'),
(25, 'salonpremium', '$2y$10$QTrikgKQ0k10j1zsNjbeMeSL1mbs0DnPz3ERvQhasw34uy0jkvEhC', NULL, NULL, NULL, NULL, NULL, 'salonpremium@enbibo.com', 310, 2, 'salon premium', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9999-01-01', '4ZnojrIIWaVhVBAIOH0IJa3P8X9qRRTwg58wbYfmm7wxhQu9sRyyU6nNGMjv', NULL, '2016-07-10 22:56:29', '2019-10-24 21:12:16'),
(29, 'CANACINTRA', '$2y$10$EqFj7MRa7zGfYnRRO.RTVO0L./xTgNbdDidplCUL9mca3sIRVZe4m', NULL, NULL, NULL, NULL, NULL, 'gerencia.canacintra@gmail.com', 310, 2, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12', 'PhjdtcEfUomnw2HUDwjQl4MLjgDdvKoHb2Uv5IO93unV40SuWJaDcGrvHdcZ', NULL, '2016-08-11 16:57:36', '2019-06-12 18:53:29'),
(31, 'hjkh', '$2y$10$PIiLLjV3C50k5V1OOcbWneYS2AU7JEy0l1LLTXUT1a6EOw7D.8bPC', NULL, NULL, NULL, NULL, NULL, 'ivanfljklj@hotmail.com', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-06', 'dEhJjtC4TaBuW6l9C1lAAzDGPz242I9TmSEhxIXfbfvphl0NAm42kxeC6qtK', NULL, '2016-09-01 20:17:38', '2019-06-19 00:35:44'),
(32, 'LaAntiguaHacienda', '$2y$10$6KzbHHyDCPDmWOUTcCsk1u444KzxX65FVuc1r.G44Q6tDIxZ/Tzza', NULL, NULL, NULL, NULL, NULL, 'aksolys_@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12', 'Ue8VnHjDl6TIgPcN4LTDwzZvBdgFWoHHULahyh2GUYn1q0EggL9AciQ2BMQY', NULL, '2016-09-04 19:35:50', '2019-06-12 19:10:56'),
(33, 'Hotelmirador', '$2y$10$0wlW3Nq225UU5Rq0CmoLR.ZUc2ytxbK8HHEU4/YfPV5Ed375FU/ae', NULL, NULL, NULL, NULL, NULL, 'fanya.roman@hotelesbalderrama.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12', '4d9e7WKb5qLbubNwAb1izlJv45XYxkWqILfIA0Ex5TpzlMtVMJtsksXIdsEK', NULL, '2016-09-04 19:42:41', '2019-06-12 19:50:58'),
(34, 'Haciendadesalamanca', '$2y$10$xlCW0lknRMWxIqmrHGatnerx7MgIgxMl7g1hCaStdnTtAwuAc8QUu', NULL, NULL, NULL, NULL, NULL, 'salamanca.lupita@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12', 'iu7ZytnUNrZWTiypXpjfGCLPPC41mGfEuLotlQKJJGGiRVXKUY5ZXMW4qFTA', NULL, '2016-09-04 19:54:06', '2019-06-12 20:01:39'),
(35, 'Latinoorquesta', '$2y$10$2/22q5xJsc3Y9VcCRrvnEu72qQOBrMheoQJ.DkBw1fMyVbHIoGQka', NULL, NULL, NULL, NULL, NULL, 'latinolaorquesta@gmail.com', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12', '6jkrBoegXdDwv05bdv210ATSgIbI1eqjoUn5iKcNYBtDp6JRZQv0alNvwCEr', NULL, '2016-09-04 20:04:40', '2019-06-12 20:23:11'),
(36, 'Keniabecerra', '$2y$10$AXF5VjrQpd89u.haVV.J5OGsOFgqrqgSA8z1nqr.yS5PTCjRHxyvy', NULL, NULL, NULL, NULL, NULL, 'kenitabon@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-12', '3avsMCxvn31KDIm2OXz6dSrp879E4CswD13w72bx2YHbGFl0HbU1zmNiYawx', NULL, '2016-09-04 20:21:22', '2019-06-12 20:32:01'),
(37, 'flamboyan2014', '$2y$10$rfoxsdbbsdd8/1DAORtcDu.7te4SB1zympTZyb6PTYGWdUhWDqlne', NULL, NULL, NULL, NULL, NULL, 'flamboyan_eventos@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19', 'QsJNL24ZJjbya3VSwwzI4TVfVSotuGMdFkLIAc5cD4fMBcAbUNAJ85GKqOxL', NULL, '2016-09-04 20:32:18', '2019-06-19 20:00:43'),
(38, 'Nenacastello', '$2y$10$A5sFgQHUdrRYw9WcbeeBQOADiI5U6cJzM.UMFsm/FabzXPv4GxCiC', NULL, NULL, NULL, NULL, NULL, 'rentaschihuahua@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19', 'mNiKo4cYhI0BKBDwrlEhBRAS8Hmq5iQrbvIeotHdfxvXG3Th1aKLCOALe1jx', NULL, '2016-09-04 20:41:45', '2019-06-19 20:07:33'),
(39, 'Erincastellanos', '$2y$10$9OTRnaQOemm19wlM0X.utOPjGuEBlCjkX/B3tuYcxxvPagvvYWar2', NULL, NULL, NULL, NULL, NULL, 'erin_castellanos@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19', 'ZCG7eoRdEHdkLnC4RVTFcnK6eOrlA385Ivcxsd9mUKN928bRLYCuwLwEi4AZ', NULL, '2016-09-04 20:43:55', '2019-06-19 20:20:14'),
(40, 'Delvic', '$2y$10$wYqc2.0w1.7LCR9QCxvfJu/5/kWBDlDIlCGhI.mfeniBbsncMGYZ6', NULL, NULL, NULL, NULL, NULL, 'delvic_eventos@hotmail.com', 310, 2, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19', 'EHJz5s0dMvHG3uJLLggSQm9d19IUgcWsBVT6tLK91OSpJeqzUjf5tpZnEgpU', NULL, '2016-09-04 20:53:49', '2019-06-19 20:21:02'),
(41, 'Luisangelrodriguez', '$2y$10$K2XF1rxIg4RHL2exKS0mdeOcWXsmuNKcPFKAXbtwmEuys1ooVcjZO', NULL, NULL, NULL, NULL, NULL, 'wichin2301@hotmail.com', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-19', 'vaOvCFGhJMIrBn5BECTecIxqkoOzMAuN83r2vkYoqmzkmqmeH5rVpndMKcPt', NULL, '2016-09-04 21:29:47', '2019-06-19 20:30:56'),
(42, 'Cinthiaorozcopinela', '$2y$10$6FsxfONADwvfVklHxKJxdOZQA7rJoFzhXZXy2AYn2Aq5HhS6oExg6', NULL, NULL, NULL, NULL, NULL, 'siintyaoroz_27@outlook.es', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-04', 'b7yRSwYsCgDKyVlxH2H3gVVL8jnrE35wa9oDkO8abIAfWDnpeOOw6b8Mo1z3', NULL, '2016-09-04 21:44:58', '2016-09-05 01:27:14'),
(43, 'fmmusic', '$2y$10$kkPYX/jA/M0edxGvjZwcPuckS04I.o.G3fJlCxrzSTMhLAhFljmhW', NULL, NULL, NULL, NULL, NULL, 'ommmmm51@gmail.com', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'k7mG49AUguJmFBopAmY9ZUOtqqczBuuho5E2HS9zSN8W4NWttURikNVOjIM2', NULL, '2016-09-04 21:56:50', '2019-06-20 19:29:43'),
(44, 'Ileana', '$2y$10$0iujDVApKHGaDpHp1mO/ouJYxLfI3mU8zhX/Vlt5cu54iLCAEImxO', NULL, NULL, NULL, NULL, NULL, 'ileana_del_val@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-04', 'dQTOT8TdDHBOMRjkndvfcxuBaEfIAIAjnYpVCuNzC5SfYfkazDKbADjEiaQ0', NULL, '2016-09-04 22:04:03', '2016-09-05 01:27:44'),
(45, 'LluviaC', '$2y$10$aGa2odt1RvtNE7USccmfEuu.XLzkDTsYpfXiXqFxIVaCbB7zg4r.e', NULL, NULL, NULL, NULL, NULL, 'a_correa08@hotmail.com', 310, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'qfSh7Flw9KgVSzBt1u7J4qRTSQe0WwbviPXEhBkbPGkiQjBiXGwYrW5ibSVB', NULL, '2016-09-04 22:12:45', '2016-09-05 01:27:56'),
(47, 'Fcoega33', '$2y$10$TV5.T9c0QXL0/N5VL2VBu.W.iy9EUxS1wHcPEBBaj9So8KM2I9aua', NULL, NULL, NULL, NULL, NULL, 'fcoega33@gmail.com', 210, 1, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-04', '8UI85DVgtJPFWeY1PawM8kPhiT7H9OVg8tXoQO8FT2WKSAAN73cRBsje1UYb', NULL, '2016-09-04 23:40:43', '2016-09-05 01:28:30'),
(48, 'ivanflores', '$2y$10$kMRsnL1ZmrWdv7dDDG1o..pcXGQYztDhrP8uPy3E2ySmf9DUAHko6', NULL, NULL, NULL, NULL, NULL, 'sehima.canacintra@gmail.com', 210, 2, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-18', '5LBQWvjF98IVXLLZLzTfnaDCX38OBtYps8AeALJRbgMvv6raQLdVy1jNqK7Z', NULL, '2016-09-05 01:08:40', '2019-07-08 23:44:37'),
(54, 'GrupoVodka', '$2y$10$iaDFLMjRtgc4Pq/KKoTYG.3QpYPODY0QiiwZR6ZZpOhsc1jEtQwxK', NULL, NULL, NULL, NULL, NULL, 'galaxy_audio@hotmail.com', 210, 2, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-09-04', 'ftBbVQmcwvgomgecZlBCsx2z9PGAScjB3AZMdVqodiV6AHn7vLIEac8axnyX', NULL, '2016-09-05 01:08:40', '2016-09-16 22:13:09'),
(69, 'sebashgghj', '$2y$10$GHHXL5gKsa7AqOHW8GljNOAKEh1wrSsBiP0xp4VaEFzyAz1Xl3t/m', NULL, NULL, NULL, NULL, NULL, 'sebasuyuyu@sokolabs.com', 200, 1, 'sebastian romero', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2034-02-16', 'FRSBfoTHsNvTXNSQwWugLoZp6KBcmT7EziOT1fiumbuOEbHjt4XnFvkgv8rz', 'cus_2fcmPojgNVg5F2wMz', '2016-12-06 01:07:02', '2017-01-17 17:04:31'),
(70, 'Terraza2030', '$2y$10$Lz.e3TIxS07EH5pee0NTNu.X15KYt9TQJ3t3NbFHYFHp3XKC2hC4K', NULL, NULL, NULL, NULL, NULL, 'gerencia20-30@hotmail.com', 300, 2, 'Valeria Gpe. Zavala Nevarez ', '472-20-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-17', 'VbF2pTZmqL2RWmOTB5y80Oh7d6trX3xTBKN2NJeIA2zDfHTsj6wUczN2fNMQ', 'cus_2fd4edBGJTY7PhfyN', '2016-12-06 22:57:29', '2019-06-19 16:23:50'),
(71, 'antares_eventos', '$2y$10$52s4Bj.Djnx8N9oGpWOdHuZ37dKLh87SJby3WCdg7z6Unt1NO/g/2', NULL, NULL, NULL, NULL, NULL, 'antares.eventos@hotmail.com', 310, 2, 'Antares Eventos', '6391369471', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'eDzSVIQOxgl8B7D4W1Npds8u31h3SgRYdZLeu3SvPnrZ5ZrMP48oPVt4qIG6', 'cus_2fhe67sYJL9xX4vkE', '2016-12-20 22:56:00', '2019-06-20 17:58:39'),
(73, 'greengarden', '$2y$10$vwulUTLn2X2IGPSz9/yCquvj30DeK7gZ31Ap91QYqGfxwJPjdQgte', NULL, NULL, NULL, NULL, NULL, 'marisela123451@hotmail.com', 310, 2, 'Marisela Franco', '6391240625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-17', 'Pis5KauRSdIk486kR9Bi7mNmCLV9jNtWa803NCuWW1DlW3HGQPht3tJsUPte', 'cus_2froGhNeU7tjTU6f1', '2017-01-17 23:16:04', '2017-01-19 23:58:02'),
(74, 'sebas', '$2y$10$YR1/MIGGiZwzHOWRI.IqkexUi5U0mxZtUP4IeXzQH2qaB67yyuTtO', NULL, NULL, NULL, NULL, NULL, 'sebas@sokolabs.com', 210, 1, 'sebas', '1234567899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-04-02', 'w98SDRaOiBY7ns3EaTcOa3CcPyASxJSBRMEd5E3J3LSXW1dkj0N3kfPOEqEK', 'cus_2gBzdHrCJX9xKkB6Q', '2017-02-17 17:54:57', '2017-06-16 18:48:41'),
(75, 'gasamy', '$2y$10$JkGSyWjF67.GNSGMLkXmMeZWKLlknrd27RHZ2AMycPX2oRWHQ5GFS', NULL, NULL, NULL, NULL, NULL, 'fletesmarquez@hotmail.com', 210, 2, 'Samuel Ortiz Burciaga', '6391299119', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'Obo65aItl2kBL5qXDcNj5BNNFglopcLtkk7f4DcaahOMVg4gP9tlIjMbnxfM', 'cus_2gBzrwu3z95e1G8mn', '2017-03-14 22:15:02', '2019-06-20 17:59:38'),
(78, 'criszo', '$2y$10$lKvgVC0F.a1GN/2P1hQ8k.CAxpJBjwe.RKeyOLqi3gDOhzfbqQRny', NULL, NULL, NULL, NULL, NULL, 'cris.ortiz.co@gmail.com', 210, 2, 'Cristina Ortiz', '6391287011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-05', 'IOQ5WKIFXE8ivMAyd7C5HROmeukmVr0arwVbmUjnXUAhPIdCBjHXGDxAGZl1', 'cus_2gC23yWEdGZgsiahU', '2017-03-17 17:16:52', '2019-12-11 22:58:16'),
(79, 'Fer', '$2y$10$OfEgOBdp8N.CqHMgcXvMq..NwsivXnf4Ivhlkqi7X/AeeL7vNJw62', NULL, NULL, NULL, NULL, NULL, 'fer_saenz89@hotmail.com', 210, 2, 'Fernando', '639 489 0695', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'D0D8Wt84xScVjPr8XNMyVS1AnHkr7VuYo21wuHCJsWPsUeoB3t2LTIaP6Iqw', 'cus_2gdGSm28BgFdPUx4T', '2017-06-02 23:48:35', '2019-06-20 19:29:29'),
(80, 'Contraste', '$2y$10$tzSLNe6Xvd1l1S2EeKRwt.TdkJJcHQrb.quTmrFRkcaO1nUhAKkeq', NULL, NULL, NULL, NULL, NULL, 'contrastem.oficial@gmail.com', 210, 2, 'Agustín Rodríguez', '6141779802', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'JOQVfATMP3xNLerMsGdpQVeBQIxFcgREWfDIpWixa7i5beiXtmtQvX25zzGW', 'cus_2ggRCqS12Pvui6Pdz', '2017-06-12 15:08:05', '2019-06-20 19:11:19'),
(81, 'GabrielVegaR', '$2y$10$wu7E/nNWBZqG2gy..TzFUOKQHLyM.neWbg7jguyoinxdulKi1wxqO', NULL, NULL, NULL, NULL, NULL, 'gabriel.vega.rico@gmail.com', 210, 2, 'Gabriel Vega', '6391076558', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-12', 'IGtw1gjHNitMvjd6amrYBqpPX3ujKpOhp9UlxB4YeDjROwKTqDgdnt2m8rSo', 'cus_2ggTRfQMp88YJ5gw9', '2017-06-12 17:56:46', '2017-06-12 18:23:16'),
(84, 'asdadas', '$2y$10$yHWeqf41NZk0cCJplHpjDeydTNs.lFVoxb.sgWTC5z05kBmI0oGx2', NULL, NULL, NULL, NULL, NULL, 'sads@sdasd.com', 200, 0, 'weqew', '123133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0VDvuOKqul5FT9AR26D5XevuqZpHVnu3ITdHNk4ttCa5HG3jJQZEADPlkeeK', 'cus_2gmNM7HHXUF4REyBY', '2017-06-27 18:34:49', '2017-06-27 18:34:58'),
(85, 'Hola', '$2y$10$lXwcXXw2kcyhgB/A6tZ9XuzbZVX/QVUygiQZ95ZtccPSo8QQSBTJG', NULL, NULL, NULL, NULL, NULL, 'ccoa204@hotmail.com', 210, 1, 'Hola', '6391287011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-11', 'tcjCTlfH19Mlh9altWGUTw78En6c8h1KASxkzwkS9rL501wHO850EnTkNWeF', 'cus_2gqyyrM5HBwB2wrrg', '2017-07-11 21:19:57', '2019-12-11 06:00:53'),
(86, 'HaciendasCampestre', '$2y$10$zSsC0N/w3SSg6P7RtDzci.AgsxeUfRmONsIdZs/FhIOkwKTWGs.sS', NULL, NULL, NULL, NULL, NULL, 'haciendascampestre@gmial.com', 310, 2, 'CARMEN KARINA ORTIZ ORTIZ', '611372874', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-10', '397ixXomQfdFbx7QATHPBjCjr1n77FjVTYmTOMLE5u9Rp9sFeNaHnnRYIACX', 'cus_2h1oMSDJ3yGXy1emt', '2017-08-10 22:00:18', '2017-08-10 22:09:36'),
(87, 'edicionlimitada', '$2y$10$UlrfqDUV/XeVYf64y8rHdOMuscp8cwraEGPCrz8fOCXIfL5lRcpv.', NULL, NULL, NULL, NULL, NULL, 'fofolp@hotmail.com', 210, 2, 'jesùs adolfo pizarro rodrìguez', '6391345908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'jrBIvR8zjYDUPZb2VMSymzB8szN47MBuQSnKEJCD013IjN3Acvie0f1r3iQr', 'cus_2h3SFRhkxKoGhYoCG', '2017-08-15 22:07:06', '2019-06-20 18:50:13'),
(88, 'vinotinto', '$2y$10$fHPhGMhnCgsHPI.Vdeyqe.wprxpaLcAAH9kzazfuqzsLDwUZO1r5O', NULL, NULL, NULL, NULL, NULL, 'alejandroparadaruiz@gmail.com', 210, 2, 'Carolina Dominguez Torres', '6393987938', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-18', 'PZboETFQBCZEJLj9lvTdxrky5yPgYZ9M7Jrt9ovfZNoi3ZW849Uw0DvXxZyr', 'cus_2h5SvHvCgxAHtwVBM', '2017-08-22 01:47:29', '2019-07-08 20:09:27'),
(89, 'HaciendaYairubi', '$2y$10$RFG9GSnQRb2J4eOJGuWpnO5sMOfqAqvmvL6B/svbzgp/FzkeyWg7S', NULL, NULL, NULL, NULL, NULL, 'yoli_0411@hotmail.com', 310, 1, 'Jorge', '6141963732', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'aQYwuaAIZ5MHWzACmD18YXM32mLbdyfZE5k0TYk4fN25LBcrEYSk9JJyNuja', 'cus_2h9xoEk6AeFv98Dqr', '2017-09-04 21:15:33', '2019-06-20 18:53:59'),
(90, 'eljurado1', '$2y$10$V2JDTOPIYisrgmUe1PJskOeH9IAUXWMPU6a/cGrqb6DZTu0kp0igK', NULL, NULL, NULL, NULL, NULL, 'eljurado1@hotmail.com', 210, 2, 'Jesùs Javier Jurado Osorio', '639-115-90-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'Ep2Fl2Fs90rbR1K6GH30qg2sEjURLoFzZLZW7yiDncGME6NWAHM2AUftobZm', 'cus_2hAMysYg7gf9wWRsf', '2017-09-06 02:36:10', '2019-06-20 18:44:26'),
(92, 'test1', '$2y$10$rl1J0NGygqFcmxkvgZ76ZuVh7x5hfHJAtDI0fbcuGeOviYR.VlEMe', NULL, NULL, NULL, NULL, NULL, 'test1@adad.com', 200, 0, 'sdfsdf', 'sfdsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '0rNzYCpW7xKIZDi0ATlPT6vtV8q2ehmH0a377jLkiHcHuV96AFueIxvXSq92', 'cus_2hAXjSqcRsPRdDiHq', '2017-09-06 14:56:43', '2017-09-06 14:56:45'),
(93, 'UrbanQuartet', '$2y$10$1.IGfTWoNIR92XrShUn6wuwY/TXSpZPlFMwPnqgiRRWe8o4sj2X7a', NULL, NULL, NULL, NULL, NULL, 'gonzalez.tania.bg@gmail.com', 210, 1, 'Tania Gonzalez', '016141915760', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', '5ioOotYv1HMBIVOf93SgCTJNcOsi2Q9qddPo8YQzRz49XZVfFYWijjMKUFwF', 'cus_2hCquJva6ha7UAmwB', '2017-09-13 16:46:08', '2019-06-20 19:03:43'),
(94, 'pablobarrera', '$2y$10$dARklKQ0T6juq9xnwnzoDucISR3BWWDN0c1Yhv/FBDWbzViJA2ArG', NULL, NULL, NULL, NULL, NULL, 'pablo@sokolabs.com', 200, 1, 'pablo', '6142490391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'tmi6BLCxBNobtpUJMV0j7wePjKm2Lwssn7aLDWUBTLyRiKkcCU7VBkMQvpGI', 'cus_2hGpSiKgrWcV5oH6x', '2017-09-25 20:34:20', '2017-09-25 20:34:21'),
(95, 'Grupolosgaray', '$2y$10$/CeUcDscBtg3L0gTm9nM.uP60WCWzVB24Feoi1YA4v31FZp98lbTW', NULL, NULL, NULL, NULL, NULL, 'grupolosgaray1@hotmail.com', 210, 1, 'Grupo Los Garay', '6144863211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'LHGcRDqMJ8Uaf4NNZQuEW2PX439OI4r8wgFfZnmr3Rd2QjWIMEYXRDh2cEMm', 'cus_2hMU2WbemwzZ32ziZ', '2017-10-10 01:47:31', '2019-06-20 18:55:10'),
(96, 'USOR', '$2y$10$D08w8kw0b/wOtBnvHaVWqOJ6VLbSXbL.vtOu8cM7g2m/yHmCYoW7u', NULL, NULL, NULL, NULL, NULL, 'ceabpam@hotmail.com', 210, 2, 'Uso Recreativo', '656 6570704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', 'v3RwZ8PsrjwhLM637nFvEdQh4jPoKmxFOGMrl3gyrnmJ1wNJHLdctjgAw60x', 'cus_2huZ7jH56thBkcLz2', '2018-01-16 05:25:57', '2019-06-20 18:42:34'),
(97, 'sinestesia', '$2y$10$m8hgqys9MdxNa2lhuepXhetG7ggGfT12xpwNDxI3gQz34eGarFqzO', NULL, NULL, NULL, NULL, NULL, 'al131077@alumnos.uacj.mx', 210, 2, 'Edu', '6564325716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-20', '79iIP7Lznf1rSHrupCMMtQPRx7j89Bn1WpL19iEOgKiHbNPedy5iQlnO3bQK', 'cus_2huhUx7jAnyfNx848', '2018-01-16 16:01:18', '2019-06-20 18:43:21'),
(98, 'EMAJIN', '$2y$10$Xc4bxsXLlCKyX.TWovZ6MeRDgXaGpkhFGqETgDrESUnx.AbXuYn0i', NULL, NULL, NULL, NULL, NULL, 'jonatanb_@hotmail.com', 210, 2, 'Jonatan Benitez', '6391107998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-10', 'kWu8vpcikNQvkQWQhGL9lhkOg0AFDntX4Kt3KAmLXyNQPERpPzgKQi8mN7HM', 'cus_2iJbq4onbDecXUKav', '2018-03-27 16:21:09', '2019-07-12 06:51:22'),
(99, 'sucursal', '$2y$10$D09N66z3B/9sAI0iyNb/1O3FWM5mEnedhRhEmn4AZxMJAeN3flPw6', NULL, NULL, NULL, NULL, NULL, 'sucursalgm@eissaonline.com', 210, 2, 'eduardo ochoa', '1231231234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-18', 'RceK2Eo5gsj6SzzraaXo78BEPiOn1A0YciPYW7IFaa3SOoI06GKVXjasN5bF', 'cus_2jTkCUpKMWC7KkJS9', '2018-10-19 02:34:46', '2018-10-19 02:41:09'),
(100, 'deyser', '$2y$10$3.vZkWUMNF/VIk.lyKYvC.Qb52EStpkVW.3uVLCbnA5Vou/SY8n52', NULL, NULL, NULL, NULL, NULL, 'luisldoct@gmail.com', 310, 1, 'luis david', '1231231234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-18', 'oJp7E8Ay9YG4u3tfLlv2J7GlRIkrVT4EjNikP5S5Gkt63DJEk8KPaChiqiKQ', 'cus_2jTkWUfo6Q91gXgBA', '2018-10-19 02:58:20', '2019-04-23 03:33:04'),
(101, 'carmen', '$2y$10$lw7t1dXMnL0.tU6SlRq2WOqe/b9RccMKsrMBB8x5a6dhCAiJZ1Tk6', NULL, NULL, NULL, NULL, NULL, 'carmen.alvarez@eissaonline.com', 300, 1, 'carmen alvarez', '1231231234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-18', '4BlyNfcLQskOgo3vCFDJFWcjf9LKTd29M2KZL7PvZZ2kcd7DxtfQ0ixIjjZQ', 'cus_2jTkfTCTfx2Hqmi9Z', '2018-10-19 03:10:05', '2018-10-19 04:41:52'),
(102, 'compras', '$2y$10$JiQSJtiL0If8eKNh2gKwbe8jqJ.XK/0T5xISLOmXCRjkS3jOtDZ/i', NULL, NULL, NULL, NULL, NULL, 'compras@eissaonline.com', 210, 2, 'Compras Cristina', '6394740742', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-03', 't75uhNJAobc3CFJi7elRKz8S2l69A7B2MCLcHZmbD50LAJRfVSLpavvSl7O4', 'cus_2jZ1bUUVKakPNHwhr', '2018-11-04 04:07:45', '2019-12-11 06:01:15'),
(103, 'conekta', '$2y$10$2xBPo.DnAJ8eF8DBDyMQdO8kvXteS9syEgrG/VbKNlB9EVqhHmtl6', NULL, NULL, NULL, NULL, NULL, 'prueba@conekta.com', 210, 1, 'prueba', '016677440655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-10', 'Rpy2nay5Bt4ETcsjnFV8wD09hDsjXfzCZUf56WdU6vW9xUn8IXQHfsilyRB6', 'cus_2jkzykm5W5KQeQKHK', '2018-12-10 21:17:58', '2018-12-10 21:17:58'),
(133, 'salonpremium2019', '$2y$10$ARjZiuPpejyJQ6qx8xy.sevgGSpuPmO7MEf/LTYABc9JVwqg17DoC', NULL, NULL, NULL, NULL, NULL, 'enbibosalonpremium@gmail.com', 310, 1, 'Prueba Salon Premium 2019', '6391287011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-01', '4vxzJZM9gcI9egFu6Z8nYqm4nfc5BZku3CWkqpdZdw4y81lZLz45jZKijHSR', 'cus_2kjXsLcP712zgYZjo', '2019-06-01 21:29:37', '2019-10-10 19:37:26'),
(134, 'larikasonora', '$2y$10$JFxK09QRwFnU2pA12SlDae90fL59HwOuo/W3mxIC5F3QHKVlyGSVm', NULL, NULL, NULL, NULL, NULL, 'elioyjr@hotmail.com', 200, 0, 'Eliodoro Gonzalez', '6566088542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'zGaKdAqwVrBjHko0GKVJhvH8kFeI3dGV7pvLxaJnHSC4JZxihoPl3zMm4EL7', 'cus_2koWx6ivL8W7ZvdS3', '2019-06-14 01:58:54', '2019-06-14 01:59:30'),
(135, 'Gustavo', '$2y$10$uHcWLMb6wnCtxbmwXZ0hGuEY/f.VtgEiFr9Pro11U4nXQ8NA5jUG6', NULL, NULL, NULL, NULL, NULL, 'gustavo.ituarte.ochoa@gmail.com', 200, 0, 'Gustavo Itiarte', '6391285400', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'nSC6rcSSViPwdVY9p89ThhbN6HsVjG6cxc0Dl34mtNrGCU8qM66yFadqk67J', 'cus_2kvBtroEdBe1MaZdb', '2019-07-04 11:44:57', '2019-07-04 11:44:58'),
(136, 'IreneHope', '$2y$10$GLM/rXYxN1XiSPCZGOV0H.NNFWQNWd8QLWKHhxefINI5iwONTS3QK', NULL, NULL, NULL, NULL, NULL, 'rilh.eneri16@gmail.com', 200, 0, 'Irene Hope', '+1526143020283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'MxAxuX9rQLxQM5o23fiRHnwO1QOEu60X1kHPyoLxi97plw7XxfxYi4WJvqrY', 'cus_2kwdoLo8r2LZWUTzi', '2019-07-08 21:57:02', '2019-07-08 21:57:02'),
(137, 'elsaxofonistacuu', '$2y$10$HAhoDKM6B62WNli/y213.uyl.0MnONVJvlZKHkpXY1cQWy66RPaAq', NULL, NULL, NULL, NULL, NULL, 'jovy_sax@hotmail.com', 210, 2, 'Jorge Antonio Dávila Romero', '6141811002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-10', 'FYPcO9NuN5WzIQt9faTpVIN07dCF6or6Y8ka56XDQN5Iu4KB4eQSQXuGJv4i', 'cus_2kxFR2rDQuRc7A5YH', '2019-07-10 19:01:47', '2019-07-26 23:47:33'),
(138, 'alonsosfera', '$2y$10$IxCcOllTGlK.IBbLN6CysuYgnkSkQBCXjs67zqCronyjglNXCcXQ6', NULL, NULL, NULL, NULL, NULL, 'alonso@prueba.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'WSGFalTERW6U9fFlVQxOhz0kBrrXJSKnRjNBHuveB6tFUGgMwXjr3w2jchIJ', NULL, '2019-10-10 05:22:51', '2019-10-10 05:22:51'),
(139, 'trioparabodas', '$2y$10$.6vxJrKFKg/o2bX0xOOCWum/EKYC9T49iBOxDz/aouNcYyUVwaiFu', NULL, NULL, NULL, NULL, NULL, 'ivanfloresnieto04@gmail.com', 210, 2, 'Carmen Cristina Ortiz Alvarez', '6391287011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-16', 'AKCMbE6rtX8AFF3IyN3aL8AnA5feUM7g6Vj6fafMRapn3WNB0rzaVxmWzRtH', 'cus_2mWGLssJhBkUZ2fwL', '2019-10-16 17:24:12', '2019-10-16 19:02:44'),
(140, 'TerrazalasFuentes', '$2y$10$w0/MIZ9ov4TpUiCmXZq.UuWA1724rXEzfeVSd5TkPXS6rO1GAgfdy', NULL, NULL, NULL, NULL, NULL, 'alejandranadon87@gmail.com', 310, 2, 'Alejandra Andon Gardea', '6391191810', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-23', 'PLGMPAhRfW95A31Kwpbeba6CqPDjEUAM66sYyYjoirkMSrWgJeN8DaMgXlqd', 'cus_2mYfXtWJjq8gphRby', '2019-10-24 01:34:49', '2019-10-24 23:47:42'),
(141, 'pruebaBanda', '$2y$10$OsWDrE4tjFhR.luJGcr7YeHs6sx3CLwMr26Y0qGESODvL6cOgGN5G', NULL, NULL, NULL, NULL, NULL, 'p@b.com', 200, 0, 'Prueba P', '1231231231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'kxI8hPfwymlYRD9yHAHX91374raqVVv9y1mCsyM6vuXWIShONw3vt0uXtcW9', 'cus_2mZLXRNtkc9GaXDzV', '2019-10-26 02:56:01', '2019-10-26 02:56:01'),
(142, 'alonsog', '$2y$10$A6UW5RpCN1lfFgKbAe7yFeIaBiHtKI9vrcyF1hTp7r/bcaPqp9G7C', NULL, NULL, NULL, NULL, NULL, 'asd@asd.com', 200, 0, 'Prueba', '1231231231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'gWyYWDrpPWM966lozpttzMBk3OWf1kpggMHVYT5lG6ur42fBZInXMzWLEJWx', 'cus_2mZfVj9Ymvi1vs5rb', '2019-10-27 02:56:44', '2019-10-27 02:56:44'),
(143, 'GRUPO KAMELOT OLDIES ROCK AND MORE', '$2y$10$I7Vv798WIVB7dPLlVYIjWeWoJtahV7dceWSM7n4Hq2NG.wWjMOSVu', NULL, NULL, NULL, NULL, NULL, 'bluemanie2@hotmail.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'Ae2etX7ikpipJTxkTVBWKrU0Wj8FB6QOyb4v5EStsakm2yGBclgAdkQGnI9X', NULL, '2019-11-20 05:07:34', '2019-11-20 05:07:34'),
(144, 'testlu', '$2y$10$qGPBcKBax51QxiOZUhwXy.eaE2cdkIJSG0qLKkIH4awOYgcs7EQsu', NULL, NULL, NULL, NULL, NULL, 'testlu@gmail.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'NqCw892ctLrH3elCqh1QHqdyEoP4IjxXzjrtqpOhyUDh8QTzeOsiVZMoH7Ar', NULL, '2019-12-08 03:38:45', '2019-12-08 03:38:45'),
(145, 'test4', '$2y$10$gLf78SHFjZMbn2WsHtDUbOIt3uF0092o3dmctSIvLGEIGncMXsDxe', NULL, NULL, NULL, NULL, NULL, 'test4@test.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, '2019-12-08 15:14:56', '2019-12-08 15:14:56'),
(146, 'alonsou', '$2y$10$rDYo9wuJOdY/GXHYxe7Xu.2TVFH4iU../V9B..lnwkfKBtFft3fvi', NULL, NULL, NULL, NULL, NULL, 'asasdd@asd.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'ngEhyZfn5g3p2xV1rSl9HCQK8ZpEq4rU98Kx7xhaCR3lJvWMOdBQShLjPISU', NULL, '2019-12-08 19:13:56', '2019-12-08 19:13:56'),
(147, 'festivo producciones', '$2y$10$1iPDlvURbSsmn9vaChyUV.WOFEn3qd6/D8o3y./3e/g/7eZwxY9Zy', NULL, NULL, NULL, NULL, NULL, 'jleonmusic@gmail.com', 200, 0, 'Jaime Leon', '6142787090', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', 'uJtygU1YCykjwm2ZNpKFzr4hZ8egGSdXrJocuMDhahSxlbEV6YeaNhOb5pbw', 'cus_2mpKAsUEgDUh2AiCM', '2019-12-10 21:24:21', '2019-12-10 21:24:22'),
(148, 'alonsoprueba', '$2y$10$O7JOyZ0DcNibutqYjkSTEui.yHi2WV.qkvLn3nKdH8gvEucGpZru.', NULL, NULL, NULL, NULL, NULL, 'citayix944@mail1web.org', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', '47xWRD0MbEs2RUe9dRN0t2GggN8lzkEdI88ACIeNXtqFDsZRrlvW2PR1lFWg', NULL, '2019-12-11 22:31:11', '2019-12-11 22:31:22'),
(150, 'Anita y sus tinas', '$2y$10$zFsx3B/ve6iTWe6GwsIg.eVEL9MbNuZu777YT4vmefHabQrqu206e', NULL, NULL, NULL, NULL, NULL, 'anita@hotmail.com', 200, 1, 'Anita', '6142686330', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 'azm39XkwUpSN0H3SA1ymwhEmcLXRyrh2suKZkOQ8hx8yd455k7saf1KXPCpI', 'cus_2mtJsEiBWPsdsgCH2', '2019-12-23 02:40:15', '2019-12-23 02:41:17'),
(151, 'teest5', '$2y$10$dEfTYT0h7bUQtk1/ktns4.QqbvlshEnKUh.HfITZCuWzbUo7dArnW', NULL, NULL, NULL, NULL, NULL, 'vatoslocos@test.com', 200, 0, 'Luismiguel Ortiz Alvarez', '+526141252557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'cus_2mti8EgkYpRhRAx8Y', '2019-12-24 08:06:36', '2019-12-24 08:06:37'),
(152, 'test45', '$2y$10$/0AHRwfqXqk3XaJDGLSg0uGDVrNHOYmUwnRu1GQGwn3jNjLtvpRzu', NULL, NULL, NULL, NULL, NULL, 'testy@ute.com', 200, 0, 'Luismiguel Ortiz Alvarez', '+526141252557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'cus_2mti9PsJvxhsVreoC', '2019-12-24 08:08:08', '2019-12-24 08:08:08'),
(154, 'fdsdfdtest', '$2y$10$vnNhX/o5GHfU/iUThvOUEu/9NYouzjtRRUUt84hWDPiPPIqBdOM8C', NULL, NULL, NULL, NULL, NULL, 'asdf@gmail.com', 200, 0, 'Luismiguel Ortiz Alvarez', '+526141252557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'cus_2mtiV7Z2BEcnEahmi', '2019-12-24 08:33:57', '2019-12-24 08:33:57'),
(155, 'admineeeeeeeeeetest', '$2y$10$fGHCMiIywRO3Cw9CKScD9OlNz8OvT3oSP2C6HAFirWkPG3WNSS672', NULL, NULL, NULL, NULL, NULL, 'luisrrrrrrrmi.luu@gmail.com', 200, 0, 'Luismiguel Ortiz Alvarez', '+526141252557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'cus_2mtj85ULEBKy8MQQp', '2019-12-24 09:22:21', '2019-12-24 09:22:21'),
(156, 'adminTESTTEST', '$2y$10$ANSFOVJ.MK0oeBUTEpCil.0A5XrltjMUD6bD3xsHat8XD/75N4Y0W', NULL, NULL, NULL, NULL, NULL, 'TESTluismi.luu@gmail.com', 200, 0, 'Luismiguel Ortiz Alvarez', '+526141252557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, 'cus_2mtr1GoL34NThXnzu', '2019-12-24 18:05:02', '2019-12-24 18:05:03'),
(157, 'test', '$2y$10$yNlEHR.RYBrNRSABMBlTfOjDRVLRt/ekswjx3C9m/8HSzWVFK1LA6', NULL, NULL, NULL, NULL, NULL, 'test3@gmail.com', 400, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, '2019-12-28 15:45:20', '2019-12-28 15:45:20'),
(160, '10217813100651554', '$2y$10$iSOxiVM2oRvlU82vSHJr0ubpuGprI4E9PwUoVKB3LUYjfnGHdutoy', NULL, NULL, NULL, NULL, NULL, 'luismi.luu@gmail.com', 400, 0, '', '', '10217813100651554', 'https://graph.facebook.com/10217813100651554/picture?type=large', NULL, NULL, 'FACEBOOK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, '2020-01-05 21:43:37', '2020-01-05 21:43:37'),
(166, '10217813100651551', '$2y$10$xC6aiOKmjKA/rjYKBnhABOSYAXrjqDJo4fNG//Y7Vut87Z3EKmrUW', NULL, '$2y$10$ir7hnB1Ee6GaJ8/7YxUvVOBZhz5N4cpdAOfjLecOKjCkxpQ48cFYO', NULL, '$2y$10$r.vLVyiT8mf/B68FrEor.OwtldSP99lSlQ6gkiiggg1SjKq4rPTIi', NULL, 'luismi.luaaau@gmail.com', 400, 0, 'Luismi test', '', '10217813100651551', 'https://graph.facebook.com/10217813100651554/picture?type=large', '10217813100651551', 'https://graph.facebook.com/10217813100651554/picture?type=large', 'GOOGLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00', NULL, NULL, '2020-01-08 23:48:11', '2020-01-08 23:49:11');

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
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ads`
--
ALTER TABLE `ads`
  MODIFY `ads_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `band`
--
ALTER TABLE `band`
  MODIFY `band_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `band_coment`
--
ALTER TABLE `band_coment`
  MODIFY `coment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `band_contact`
--
ALTER TABLE `band_contact`
  MODIFY `band_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `band_event_type`
--
ALTER TABLE `band_event_type`
  MODIFY `band_event_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `band_favorite`
--
ALTER TABLE `band_favorite`
  MODIFY `band_favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT de la tabla `band_package`
--
ALTER TABLE `band_package`
  MODIFY `band_package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `band_slider`
--
ALTER TABLE `band_slider`
  MODIFY `band_slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT de la tabla `band_video`
--
ALTER TABLE `band_video`
  MODIFY `band_video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `commission`
--
ALTER TABLE `commission`
  MODIFY `commission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `conekta`
--
ALTER TABLE `conekta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `event_hall`
--
ALTER TABLE `event_hall`
  MODIFY `event_hall_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `event_hall_coment`
--
ALTER TABLE `event_hall_coment`
  MODIFY `coment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `event_hall_contact`
--
ALTER TABLE `event_hall_contact`
  MODIFY `event_hall_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `event_hall_exterior`
--
ALTER TABLE `event_hall_exterior`
  MODIFY `event_hall_exterior_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `event_hall_favorite`
--
ALTER TABLE `event_hall_favorite`
  MODIFY `event_hall_favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `event_hall_interior`
--
ALTER TABLE `event_hall_interior`
  MODIFY `event_hall_interior_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `event_hall_package`
--
ALTER TABLE `event_hall_package`
  MODIFY `event_hall_package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `event_hall_slider`
--
ALTER TABLE `event_hall_slider`
  MODIFY `event_hall_slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de la tabla `event_hall_video`
--
ALTER TABLE `event_hall_video`
  MODIFY `event_hall_video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `instrument`
--
ALTER TABLE `instrument`
  MODIFY `instrument_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `musical_genre`
--
ALTER TABLE `musical_genre`
  MODIFY `musical_genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `subscription_plan`
--
ALTER TABLE `subscription_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subscription_type`
--
ALTER TABLE `subscription_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `town`
--
ALTER TABLE `town`
  MODIFY `town_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2455;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

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
