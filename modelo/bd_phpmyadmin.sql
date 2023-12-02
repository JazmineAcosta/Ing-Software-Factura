-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2023 a las 13:22:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_facturacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` smallint(6) NOT NULL,
  `nom_categoria` varchar(35) NOT NULL,
  `estado_categoria` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nom_categoria`, `estado_categoria`) VALUES
(1, 'Lácteos, huevos y refrigerados', 'A'),
(2, 'Licores', 'A'),
(3, 'Limpieza del hogar', 'A'),
(4, 'Frutas y verduras', 'A'),
(5, 'Despensa', 'A'),
(6, 'Delicatessen', 'A'),
(7, 'Congelados', 'A'),
(8, 'Pollo, Carne Y Pescado', 'A'),
(9, 'Panadería y repostería', 'I'),
(10, 'Bebidas y Snacks', 'I'),
(11, 'Fiesta', 'A'),
(12, 'Bebidas y Snacks', 'A'),
(13, 'Maquillaje', 'I'),
(14, 'Cuidado corporal', 'A'),
(15, 'Protección solar', 'A'),
(16, 'Higiene intima', 'I'),
(17, 'Cuidado capilar', 'A'),
(18, 'Cuidado personal', 'I'),
(19, 'Cuidado oral', 'A'),
(20, 'Cuidado facial', 'A'),
(21, 'Cuidado masculino', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` smallint(6) NOT NULL,
  `cod_ciudad` varchar(6) NOT NULL,
  `nombre_ciudad` varchar(40) NOT NULL,
  `id_dpto_ciudad` smallint(6) NOT NULL,
  `estado_ciudad` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `cod_ciudad`, `nombre_ciudad`, `id_dpto_ciudad`, `estado_ciudad`) VALUES
(1, '1', 'Medellin', 1, 'I'),
(2, '2', 'Abejorral', 1, 'I'),
(3, '4', 'Abriaqui', 1, 'I'),
(4, '21', 'Alejandria', 1, 'I'),
(5, '30', 'Amaga', 1, 'I'),
(6, '31', 'Amalfi', 1, 'I'),
(7, '34', 'Andes', 1, 'A'),
(8, '36', 'Angelopolis', 1, 'A'),
(9, '38', 'Angostura', 1, 'I'),
(10, '40', 'Anori', 1, 'A'),
(11, '42', 'Santafe De Antioquia', 1, 'A'),
(12, '44', 'Anza', 1, 'A'),
(13, '45', 'Apartado', 1, 'I'),
(14, '51', 'Arboletes', 1, 'I'),
(15, '55', 'Argelia', 1, 'A'),
(16, '59', 'Armenia', 1, 'I'),
(17, '79', 'Barbosa', 1, 'A'),
(18, '86', 'Belmira', 1, 'A'),
(19, '88', 'Bello', 1, 'A'),
(20, '91', 'Betania', 1, 'A'),
(21, '93', 'Betulia', 1, 'A'),
(22, '101', 'Ciudad Bolivar', 1, 'I'),
(23, '107', 'Briceño', 1, 'I'),
(24, '113', 'Buritica', 1, 'A'),
(25, '120', 'Caceres', 1, 'I'),
(26, '125', 'Caicedo', 1, 'A'),
(27, '129', 'Caldas', 1, 'I'),
(28, '134', 'Campamento', 1, 'I'),
(29, '138', 'Cañasgordas', 1, 'I'),
(30, '142', 'Caracoli', 1, 'A'),
(31, '145', 'Caramanta', 1, 'A'),
(32, '147', 'Carepa', 1, 'A'),
(33, '148', 'El Carmen De Viboral', 1, 'A'),
(34, '150', 'Carolina', 1, 'A'),
(35, '154', 'Caucasia', 1, 'A'),
(36, '172', 'Chigorodo', 1, 'A'),
(37, '190', 'Cisneros', 1, 'A'),
(38, '197', 'Cocorna', 1, 'A'),
(39, '206', 'Concepcion', 1, 'I'),
(40, '209', 'Concordia', 1, 'A'),
(41, '212', 'Copacabana', 1, 'I'),
(42, '234', 'Dabeiba', 1, 'I'),
(43, '237', 'Don Matias', 1, 'I'),
(44, '240', 'Ebejico', 1, 'A'),
(45, '250', 'El Bagre', 1, 'A'),
(46, '264', 'Entrerrios', 1, 'A'),
(47, '266', 'Envigado', 1, 'I'),
(48, '282', 'Fredonia', 1, 'I'),
(49, '284', 'Frontino', 1, 'I'),
(50, '306', 'Giraldo', 1, 'A'),
(51, '308', 'Girardota', 1, 'A'),
(52, '310', 'Gomez Plata', 1, 'A'),
(53, '313', 'Granada', 1, 'A'),
(54, '315', 'Guadalupe', 1, 'I'),
(55, '318', 'Guarne', 1, 'A'),
(56, '321', 'Guatape', 1, 'A'),
(57, '347', 'Heliconia', 1, 'A'),
(58, '353', 'Hispania', 1, 'A'),
(59, '360', 'Itagüi', 1, 'A'),
(60, '361', 'Ituango', 1, 'A'),
(61, '364', 'Jardin', 1, 'A'),
(62, '368', 'Jerico', 1, 'I'),
(63, '376', 'La Ceja', 1, 'A'),
(64, '380', 'La Estrella', 1, 'I'),
(65, '390', 'La Pintada', 1, 'A'),
(66, '400', 'La Union', 1, 'I'),
(67, '411', 'Liborina', 1, 'I'),
(68, '425', 'Maceo', 1, 'A'),
(69, '440', 'Marinilla', 1, 'A'),
(70, '467', 'Montebello', 1, 'A'),
(71, '475', 'Murindo', 1, 'I'),
(72, '480', 'Mutata', 1, 'A'),
(73, '483', 'Nariño', 1, 'A'),
(74, '490', 'Necocli', 1, 'I'),
(75, '495', 'Nechi', 1, 'A'),
(76, '501', 'Olaya', 1, 'A'),
(77, '541', 'Peñol', 1, 'I'),
(78, '543', 'Peque', 1, 'I'),
(79, '576', 'Pueblorrico', 1, 'A'),
(80, '579', 'Puerto Berrio', 1, 'A'),
(81, '585', 'Puerto Nare', 1, 'I'),
(82, '591', 'Puerto Triunfo', 1, 'I'),
(83, '604', 'Remedios', 1, 'A'),
(84, '607', 'Retiro', 1, 'A'),
(85, '615', 'Rionegro', 1, 'A'),
(86, '628', 'Sabanalarga', 1, 'A'),
(87, '631', 'Sabaneta', 1, 'A'),
(88, '642', 'Salgar', 1, 'A'),
(89, '647', 'San Andres', 1, 'A'),
(90, '649', 'San Carlos', 1, 'I'),
(91, '652', 'San Francisco', 1, 'A'),
(92, '656', 'San Jeronimo', 1, 'I'),
(93, '658', 'San Jose De La Montaña', 1, 'A'),
(94, '659', 'San Juan De Uraba', 1, 'I'),
(95, '660', 'San Luis', 1, 'A'),
(96, '664', 'San Pedro', 1, 'A'),
(97, '665', 'San Pedro De Uraba', 1, 'I'),
(98, '667', 'San Rafael', 1, 'A'),
(99, '670', 'San Roque', 1, 'A'),
(100, '674', 'San Vicente', 1, 'A'),
(101, '679', 'Santa Barbara', 1, 'I'),
(102, '686', 'Santa Rosa De Osos', 1, 'I'),
(103, '690', 'Santo Domingo', 1, 'A'),
(104, '697', 'El Santuario', 1, 'A'),
(105, '736', 'Segovia', 1, 'I'),
(106, '756', 'Sonson', 1, 'A'),
(107, '761', 'Sopetran', 1, 'I'),
(108, '789', 'Tamesis', 1, 'A'),
(109, '790', 'Taraza', 1, 'A'),
(110, '792', 'Tarso', 1, 'A'),
(111, '809', 'Titiribi', 1, 'I'),
(112, '819', 'Toledo', 1, 'I'),
(113, '837', 'Turbo', 1, 'I'),
(114, '842', 'Uramita', 1, 'I'),
(115, '847', 'Urrao', 1, 'I'),
(116, '854', 'Valdivia', 1, 'A'),
(117, '856', 'Valparaiso', 1, 'A'),
(118, '858', 'Vegachi', 1, 'A'),
(119, '861', 'Venecia', 1, 'I'),
(120, '873', 'Vigia Del Fuerte', 1, 'I'),
(121, '885', 'Yali', 1, 'I'),
(122, '887', 'Yarumal', 1, 'I'),
(123, '890', 'Yolombo', 1, 'I'),
(124, '893', 'Yondo', 1, 'I'),
(125, '895', 'Zaragoza', 1, 'I'),
(126, '1', 'Barranquilla', 2, 'A'),
(127, '78', 'Baranoa', 2, 'I'),
(128, '137', 'Campo De La Cruz', 2, 'I'),
(129, '141', 'Candelaria', 2, 'A'),
(130, '296', 'Galapa', 2, 'I'),
(131, '372', 'Juan De Acosta', 2, 'I'),
(132, '421', 'Luruaco', 2, 'I'),
(133, '433', 'Malambo', 2, 'I'),
(134, '436', 'Manati', 2, 'A'),
(135, '520', 'Palmar De Varela', 2, 'I'),
(136, '549', 'Piojo', 2, 'I'),
(137, '558', 'Polonuevo', 2, 'A'),
(138, '560', 'Ponedera', 2, 'A'),
(139, '573', 'Puerto Colombia', 2, 'I'),
(140, '606', 'Repelon', 2, 'A'),
(141, '634', 'Sabanagrande', 2, 'I'),
(142, '638', 'Sabanalarga', 2, 'I'),
(143, '675', 'Santa Lucia', 2, 'A'),
(144, '685', 'Santo Tomas', 2, 'I'),
(145, '758', 'Soledad', 2, 'I'),
(146, '770', 'Suan', 2, 'I'),
(147, '832', 'Tubara', 2, 'A'),
(148, '849', 'Usiacuri', 2, 'I'),
(149, '1', 'Bogota', 3, 'A'),
(150, '1', 'Cartagena', 4, 'I'),
(151, '6', 'Achi', 4, 'A'),
(152, '30', 'Altos Del Rosario', 4, 'A'),
(153, '42', 'Arenal', 4, 'A'),
(154, '52', 'Arjona', 4, 'I'),
(155, '62', 'Arroyohondo', 4, 'A'),
(156, '74', 'Barranco De Loba', 4, 'A'),
(157, '140', 'Calamar', 4, 'I'),
(158, '160', 'Cantagallo', 4, 'I'),
(159, '188', 'Cicuco', 4, 'A'),
(160, '212', 'Cordoba', 4, 'I'),
(161, '222', 'Clemencia', 4, 'I'),
(162, '244', 'El Carmen De Bolivar', 4, 'A'),
(163, '248', 'El Guamo', 4, 'I'),
(164, '268', 'El Peñon', 4, 'A'),
(165, '300', 'Hatillo De Loba', 4, 'A'),
(166, '430', 'Magangue', 4, 'I'),
(167, '433', 'Mahates', 4, 'A'),
(168, '440', 'Margarita', 4, 'A'),
(169, '442', 'Maria La Baja', 4, 'I'),
(170, '458', 'Montecristo', 4, 'I'),
(171, '468', 'Mompos', 4, 'I'),
(172, '473', 'Morales', 4, 'A'),
(173, '549', 'Pinillos', 4, 'I'),
(174, '580', 'Regidor', 4, 'A'),
(175, '600', 'Rio Viejo', 4, 'I'),
(176, '620', 'San Cristobal', 4, 'A'),
(177, '647', 'San Estanislao', 4, 'A'),
(178, '650', 'San Fernando', 4, 'A'),
(179, '654', 'San Jacinto', 4, 'I'),
(180, '655', 'San Jacinto Del Cauca', 4, 'I'),
(181, '657', 'San Juan Nepomuceno', 4, 'I'),
(182, '667', 'San Martin De Loba', 4, 'A'),
(183, '670', 'San Pablo', 4, 'A'),
(184, '673', 'Santa Catalina', 4, 'I'),
(185, '683', 'Santa Rosa', 4, 'A'),
(186, '688', 'Santa Rosa Del Sur', 4, 'I'),
(187, '744', 'Simiti', 4, 'I'),
(188, '760', 'Soplaviento', 4, 'A'),
(189, '780', 'Talaigua Nuevo', 4, 'I'),
(190, '810', 'Tiquisio', 4, 'A'),
(191, '836', 'Turbaco', 4, 'A'),
(192, '838', 'Turbana', 4, 'I'),
(193, '873', 'Villanueva', 4, 'A'),
(194, '894', 'Zambrano', 4, 'I'),
(195, '1', 'Tunja', 5, 'A'),
(196, '22', 'Almeida', 5, 'I'),
(197, '47', 'Aquitania', 5, 'I'),
(198, '51', 'Arcabuco', 5, 'A'),
(199, '87', 'Belen', 5, 'I'),
(200, '90', 'Berbeo', 5, 'I'),
(201, '92', 'Beteitiva', 5, 'I'),
(202, '97', 'Boavita', 5, 'A'),
(203, '104', 'Boyaca', 5, 'I'),
(204, '106', 'Briceño', 5, 'A'),
(205, '109', 'Buenavista', 5, 'I'),
(206, '114', 'Busbanza', 5, 'A'),
(207, '131', 'Caldas', 5, 'I'),
(208, '135', 'Campohermoso', 5, 'I'),
(209, '162', 'Cerinza', 5, 'A'),
(210, '172', 'Chinavita', 5, 'I'),
(211, '176', 'Chiquinquira', 5, 'A'),
(212, '180', 'Chiscas', 5, 'A'),
(213, '183', 'Chita', 5, 'A'),
(214, '185', 'Chitaraque', 5, 'A'),
(215, '187', 'Chivata', 5, 'A'),
(216, '189', 'Cienega', 5, 'A'),
(217, '204', 'Combita', 5, 'A'),
(218, '212', 'Coper', 5, 'A'),
(219, '215', 'Corrales', 5, 'I'),
(220, '218', 'Covarachia', 5, 'I'),
(221, '223', 'Cubara', 5, 'A'),
(222, '224', 'Cucaita', 5, 'A'),
(223, '226', 'Cuitiva', 5, 'A'),
(224, '232', 'Chiquiza', 5, 'A'),
(225, '236', 'Chivor', 5, 'I'),
(226, '238', 'Duitama', 5, 'A'),
(227, '244', 'El Cocuy', 5, 'A'),
(228, '248', 'El Espino', 5, 'I'),
(229, '272', 'Firavitoba', 5, 'I'),
(230, '276', 'Floresta', 5, 'A'),
(231, '293', 'Gachantiva', 5, 'A'),
(232, '296', 'Gameza', 5, 'I'),
(233, '299', 'Garagoa', 5, 'A'),
(234, '317', 'Guacamayas', 5, 'I'),
(235, '322', 'Guateque', 5, 'I'),
(236, '325', 'Guayata', 5, 'I'),
(237, '332', 'Güican', 5, 'A'),
(238, '362', 'Iza', 5, 'I'),
(239, '367', 'Jenesano', 5, 'I'),
(240, '368', 'Jerico', 5, 'A'),
(241, '377', 'Labranzagrande', 5, 'I'),
(242, '380', 'La Capilla', 5, 'A'),
(243, '401', 'La Victoria', 5, 'I'),
(244, '403', 'La Uvita', 5, 'A'),
(245, '407', 'Villa De Leyva', 5, 'A'),
(246, '425', 'Macanal', 5, 'I'),
(247, '442', 'Maripi', 5, 'A'),
(248, '455', 'Miraflores', 5, 'I'),
(249, '464', 'Mongua', 5, 'A'),
(250, '466', 'Mongui', 5, 'A'),
(251, '469', 'Moniquira', 5, 'I'),
(252, '476', 'Motavita', 5, 'I'),
(253, '480', 'Muzo', 5, 'I'),
(254, '491', 'Nobsa', 5, 'I'),
(255, '494', 'Nuevo Colon', 5, 'A'),
(256, '500', 'Oicata', 5, 'I'),
(257, '507', 'Otanche', 5, 'A'),
(258, '511', 'Pachavita', 5, 'I'),
(259, '514', 'Paez', 5, 'I'),
(260, '516', 'Paipa', 5, 'I'),
(261, '518', 'Pajarito', 5, 'I'),
(262, '522', 'Panqueba', 5, 'A'),
(263, '531', 'Pauna', 5, 'A'),
(264, '533', 'Paya', 5, 'A'),
(265, '537', 'Paz De Rio', 5, 'I'),
(266, '542', 'Pesca', 5, 'I'),
(267, '550', 'Pisba', 5, 'A'),
(268, '572', 'Puerto Boyaca', 5, 'A'),
(269, '580', 'Quipama', 5, 'I'),
(270, '599', 'Ramiriqui', 5, 'I'),
(271, '600', 'Raquira', 5, 'I'),
(272, '621', 'Rondon', 5, 'I'),
(273, '632', 'Saboya', 5, 'A'),
(274, '638', 'Sachica', 5, 'A'),
(275, '646', 'Samaca', 5, 'I'),
(276, '660', 'San Eduardo', 5, 'A'),
(277, '664', 'San Jose De Pare', 5, 'A'),
(278, '667', 'San Luis De Gaceno', 5, 'I'),
(279, '673', 'San Mateo', 5, 'I'),
(280, '676', 'San Miguel De Sema', 5, 'A'),
(281, '681', 'San Pablo De Borbur', 5, 'I'),
(282, '686', 'Santana', 5, 'I'),
(283, '690', 'Santa Maria', 5, 'A'),
(284, '693', 'Santa Rosa De Viterbo', 5, 'A'),
(285, '696', 'Santa Sofia', 5, 'I'),
(286, '720', 'Sativanorte', 5, 'I'),
(287, '723', 'Sativasur', 5, 'A'),
(288, '740', 'Siachoque', 5, 'I'),
(289, '753', 'Soata', 5, 'I'),
(290, '755', 'Socota', 5, 'I'),
(291, '757', 'Socha', 5, 'A'),
(292, '759', 'Sogamoso', 5, 'A'),
(293, '761', 'Somondoco', 5, 'A'),
(294, '762', 'Sora', 5, 'I'),
(295, '763', 'Sotaquira', 5, 'I'),
(296, '764', 'Soraca', 5, 'I'),
(297, '774', 'Susacon', 5, 'A'),
(298, '776', 'Sutamarchan', 5, 'A'),
(299, '778', 'Sutatenza', 5, 'I'),
(300, '790', 'Tasco', 5, 'I'),
(301, '798', 'Tenza', 5, 'I'),
(302, '804', 'Tibana', 5, 'I'),
(303, '806', 'Tibasosa', 5, 'I'),
(304, '808', 'Tinjaca', 5, 'I'),
(305, '810', 'Tipacoque', 5, 'I'),
(306, '814', 'Toca', 5, 'I'),
(307, '816', 'Togüi', 5, 'A'),
(308, '820', 'Topaga', 5, 'A'),
(309, '822', 'Tota', 5, 'A'),
(310, '832', 'Tunungua', 5, 'A'),
(311, '835', 'Turmeque', 5, 'A'),
(312, '837', 'Tuta', 5, 'I'),
(313, '839', 'Tutaza', 5, 'A'),
(314, '842', 'Umbita', 5, 'I'),
(315, '861', 'Ventaquemada', 5, 'I'),
(316, '879', 'Viracacha', 5, 'I'),
(317, '897', 'Zetaquira', 5, 'A'),
(318, '1', 'Manizales', 6, 'I'),
(319, '13', 'Aguadas', 6, 'A'),
(320, '42', 'Anserma', 6, 'I'),
(321, '50', 'Aranzazu', 6, 'A'),
(322, '88', 'Belalcazar', 6, 'A'),
(323, '174', 'Chinchina', 6, 'A'),
(324, '272', 'Filadelfia', 6, 'A'),
(325, '380', 'La Dorada', 6, 'I'),
(326, '388', 'La Merced', 6, 'I'),
(327, '433', 'Manzanares', 6, 'A'),
(328, '442', 'Marmato', 6, 'A'),
(329, '444', 'Marquetalia', 6, 'A'),
(330, '446', 'Marulanda', 6, 'I'),
(331, '486', 'Neira', 6, 'I'),
(332, '495', 'Norcasia', 6, 'A'),
(333, '513', 'Pacora', 6, 'A'),
(334, '524', 'Palestina', 6, 'A'),
(335, '541', 'Pensilvania', 6, 'A'),
(336, '614', 'Riosucio', 6, 'I'),
(337, '616', 'Risaralda', 6, 'I'),
(338, '653', 'Salamina', 6, 'I'),
(339, '662', 'Samana', 6, 'A'),
(340, '665', 'San Jose', 6, 'I'),
(341, '777', 'Supia', 6, 'I'),
(342, '867', 'Victoria', 6, 'I'),
(343, '873', 'Villamaria', 6, 'A'),
(344, '877', 'Viterbo', 6, 'I'),
(345, '1', 'Florencia', 7, 'A'),
(346, '29', 'Albania', 7, 'A'),
(347, '94', 'Belen De Los Andaquies', 7, 'I'),
(348, '150', 'Cartagena Del Chaira', 7, 'I'),
(349, '205', 'Curillo', 7, 'A'),
(350, '247', 'El Doncello', 7, 'A'),
(351, '256', 'El Paujil', 7, 'I'),
(352, '410', 'La Montañita', 7, 'A'),
(353, '460', 'Milan', 7, 'A'),
(354, '479', 'Morelia', 7, 'A'),
(355, '592', 'Puerto Rico', 7, 'I'),
(356, '610', 'San Jose De La Fragua', 7, 'A'),
(357, '753', 'San Vicente Del Caguan', 7, 'I'),
(358, '756', 'Solano', 7, 'A'),
(359, '785', 'Solita', 7, 'A'),
(360, '860', 'Valparaiso', 7, 'I'),
(361, '1', 'Popayan', 8, 'A'),
(362, '22', 'Almaguer', 8, 'A'),
(363, '50', 'Argelia', 8, 'I'),
(364, '75', 'Balboa', 8, 'I'),
(365, '100', 'Bolivar', 8, 'I'),
(366, '110', 'Buenos Aires', 8, 'A'),
(367, '130', 'Cajibio', 8, 'I'),
(368, '137', 'Caldono', 8, 'A'),
(369, '142', 'Caloto', 8, 'A'),
(370, '212', 'Corinto', 8, 'I'),
(371, '256', 'El Tambo', 8, 'I'),
(372, '290', 'Florencia', 8, 'A'),
(373, '318', 'Guapi', 8, 'I'),
(374, '355', 'Inza', 8, 'I'),
(375, '364', 'Jambalo', 8, 'A'),
(376, '392', 'La Sierra', 8, 'A'),
(377, '397', 'La Vega', 8, 'I'),
(378, '418', 'Lopez', 8, 'I'),
(379, '450', 'Mercaderes', 8, 'A'),
(380, '455', 'Miranda', 8, 'I'),
(381, '473', 'Morales', 8, 'I'),
(382, '513', 'Padilla', 8, 'I'),
(383, '517', 'Paez', 8, 'A'),
(384, '532', 'Patia', 8, 'I'),
(385, '533', 'Piamonte', 8, 'A'),
(386, '548', 'Piendamo', 8, 'I'),
(387, '573', 'Puerto Tejada', 8, 'A'),
(388, '585', 'Purace', 8, 'I'),
(389, '622', 'Rosas', 8, 'A'),
(390, '693', 'San Sebastian', 8, 'A'),
(391, '698', 'Santander De Quilichao', 8, 'I'),
(392, '701', 'Santa Rosa', 8, 'A'),
(393, '743', 'Silvia', 8, 'I'),
(394, '760', 'Sotara', 8, 'A'),
(395, '780', 'Suarez', 8, 'A'),
(396, '785', 'Sucre', 8, 'I'),
(397, '807', 'Timbio', 8, 'A'),
(398, '809', 'Timbiqui', 8, 'A'),
(399, '821', 'Toribio', 8, 'A'),
(400, '824', 'Totoro', 8, 'A'),
(401, '845', 'Villa Rica', 8, 'I'),
(402, '1', 'Valledupar', 9, 'I'),
(403, '11', 'Aguachica', 9, 'A'),
(404, '13', 'Agustin Codazzi', 9, 'A'),
(405, '32', 'Astrea', 9, 'A'),
(406, '45', 'Becerril', 9, 'I'),
(407, '60', 'Bosconia', 9, 'A'),
(408, '175', 'Chimichagua', 9, 'A'),
(409, '178', 'Chiriguana', 9, 'I'),
(410, '228', 'Curumani', 9, 'I'),
(411, '238', 'El Copey', 9, 'I'),
(412, '250', 'El Paso', 9, 'I'),
(413, '295', 'Gamarra', 9, 'A'),
(414, '310', 'Gonzalez', 9, 'I'),
(415, '383', 'La Gloria', 9, 'I'),
(416, '400', 'La Jagua De Ibirico', 9, 'A'),
(417, '443', 'Manaure', 9, 'A'),
(418, '517', 'Pailitas', 9, 'I'),
(419, '550', 'Pelaya', 9, 'A'),
(420, '570', 'Pueblo Bello', 9, 'I'),
(421, '614', 'Rio De Oro', 9, 'I'),
(422, '621', 'La Paz', 9, 'I'),
(423, '710', 'San Alberto', 9, 'A'),
(424, '750', 'San Diego', 9, 'I'),
(425, '770', 'San Martin', 9, 'I'),
(426, '787', 'Tamalameque', 9, 'I'),
(427, '1', 'Monteria', 10, 'I'),
(428, '68', 'Ayapel', 10, 'I'),
(429, '79', 'Buenavista', 10, 'A'),
(430, '90', 'Canalete', 10, 'A'),
(431, '162', 'Cerete', 10, 'I'),
(432, '168', 'Chima', 10, 'A'),
(433, '182', 'Chinu', 10, 'I'),
(434, '189', 'Cienaga De Oro', 10, 'I'),
(435, '300', 'Cotorra', 10, 'I'),
(436, '350', 'La Apartada', 10, 'I'),
(437, '417', 'Lorica', 10, 'A'),
(438, '419', 'Los Cordobas', 10, 'A'),
(439, '464', 'Momil', 10, 'I'),
(440, '466', 'Montelibano', 10, 'I'),
(441, '500', 'Moñitos', 10, 'I'),
(442, '555', 'Planeta Rica', 10, 'A'),
(443, '570', 'Pueblo Nuevo', 10, 'I'),
(444, '574', 'Puerto Escondido', 10, 'A'),
(445, '580', 'Puerto Libertador', 10, 'I'),
(446, '586', 'Purisima', 10, 'A'),
(447, '660', 'Sahagun', 10, 'I'),
(448, '670', 'San Andres De Sotavento', 10, 'A'),
(449, '672', 'San Antero', 10, 'I'),
(450, '675', 'San Bernardo Del Viento', 10, 'I'),
(451, '678', 'San Carlos', 10, 'I'),
(452, '686', 'San Pelayo', 10, 'I'),
(453, '807', 'Tierralta', 10, 'A'),
(454, '855', 'Valencia', 10, 'A'),
(455, '1', 'Agua De Dios', 11, 'I'),
(456, '19', 'Alban', 11, 'I'),
(457, '35', 'Anapoima', 11, 'I'),
(458, '40', 'Anolaima', 11, 'A'),
(459, '53', 'Arbelaez', 11, 'A'),
(460, '86', 'Beltran', 11, 'A'),
(461, '95', 'Bituima', 11, 'I'),
(462, '99', 'Bojaca', 11, 'A'),
(463, '120', 'Cabrera', 11, 'I'),
(464, '123', 'Cachipay', 11, 'A'),
(465, '126', 'Cajica', 11, 'I'),
(466, '148', 'Caparrapi', 11, 'A'),
(467, '151', 'Caqueza', 11, 'I'),
(468, '154', 'Carmen De Carupa', 11, 'I'),
(469, '168', 'Chaguani', 11, 'A'),
(470, '175', 'Chia', 11, 'I'),
(471, '178', 'Chipaque', 11, 'I'),
(472, '181', 'Choachi', 11, 'I'),
(473, '183', 'Choconta', 11, 'I'),
(474, '200', 'Cogua', 11, 'I'),
(475, '214', 'Cota', 11, 'A'),
(476, '224', 'Cucunuba', 11, 'I'),
(477, '245', 'El Colegio', 11, 'I'),
(478, '258', 'El Peñon', 11, 'A'),
(479, '260', 'El Rosal', 11, 'A'),
(480, '269', 'Facatativa', 11, 'I'),
(481, '279', 'Fomeque', 11, 'I'),
(482, '281', 'Fosca', 11, 'I'),
(483, '286', 'Funza', 11, 'I'),
(484, '288', 'Fuquene', 11, 'I'),
(485, '290', 'Fusagasuga', 11, 'I'),
(486, '293', 'Gachala', 11, 'I'),
(487, '295', 'Gachancipa', 11, 'A'),
(488, '297', 'Gacheta', 11, 'A'),
(489, '299', 'Gama', 11, 'A'),
(490, '307', 'Girardot', 11, 'A'),
(491, '312', 'Granada', 11, 'A'),
(492, '317', 'Guacheta', 11, 'I'),
(493, '320', 'Guaduas', 11, 'A'),
(494, '322', 'Guasca', 11, 'A'),
(495, '324', 'Guataqui', 11, 'A'),
(496, '326', 'Guatavita', 11, 'I'),
(497, '328', 'Guayabal De Siquima', 11, 'I'),
(498, '335', 'Guayabetal', 11, 'I'),
(499, '339', 'Gutierrez', 11, 'A'),
(500, '368', 'Jerusalen', 11, 'A'),
(501, '372', 'Junin', 11, 'I'),
(502, '377', 'La Calera', 11, 'A'),
(503, '386', 'La Mesa', 11, 'A'),
(504, '394', 'La Palma', 11, 'I'),
(505, '398', 'La Peña', 11, 'I'),
(506, '402', 'La Vega', 11, 'I'),
(507, '407', 'Lenguazaque', 11, 'A'),
(508, '426', 'Macheta', 11, 'I'),
(509, '430', 'Madrid', 11, 'A'),
(510, '436', 'Manta', 11, 'I'),
(511, '438', 'Medina', 11, 'A'),
(512, '473', 'Mosquera', 11, 'I'),
(513, '483', 'Nariño', 11, 'A'),
(514, '486', 'Nemocon', 11, 'I'),
(515, '488', 'Nilo', 11, 'I'),
(516, '489', 'Nimaima', 11, 'I'),
(517, '491', 'Nocaima', 11, 'I'),
(518, '506', 'Venecia', 11, 'I'),
(519, '513', 'Pacho', 11, 'A'),
(520, '518', 'Paime', 11, 'I'),
(521, '524', 'Pandi', 11, 'I'),
(522, '530', 'Paratebueno', 11, 'I'),
(523, '535', 'Pasca', 11, 'A'),
(524, '572', 'Puerto Salgar', 11, 'I'),
(525, '580', 'Puli', 11, 'I'),
(526, '592', 'Quebradanegra', 11, 'I'),
(527, '594', 'Quetame', 11, 'I'),
(528, '596', 'Quipile', 11, 'I'),
(529, '599', 'Apulo', 11, 'A'),
(530, '612', 'Ricaurte', 11, 'A'),
(531, '645', 'San Antonio Del Tequendama', 11, 'A'),
(532, '649', 'San Bernardo', 11, 'A'),
(533, '653', 'San Cayetano', 11, 'I'),
(534, '658', 'San Francisco', 11, 'A'),
(535, '662', 'San Juan De Rio Seco', 11, 'A'),
(536, '718', 'Sasaima', 11, 'I'),
(537, '736', 'Sesquile', 11, 'I'),
(538, '740', 'Sibate', 11, 'I'),
(539, '743', 'Silvania', 11, 'I'),
(540, '745', 'Simijaca', 11, 'I'),
(541, '754', 'Soacha', 11, 'A'),
(542, '758', 'Sopo', 11, 'A'),
(543, '769', 'Subachoque', 11, 'A'),
(544, '772', 'Suesca', 11, 'A'),
(545, '777', 'Supata', 11, 'A'),
(546, '779', 'Susa', 11, 'A'),
(547, '781', 'Sutatausa', 11, 'A'),
(548, '785', 'Tabio', 11, 'A'),
(549, '793', 'Tausa', 11, 'I'),
(550, '797', 'Tena', 11, 'A'),
(551, '799', 'Tenjo', 11, 'I'),
(552, '805', 'Tibacuy', 11, 'I'),
(553, '807', 'Tibirita', 11, 'A'),
(554, '815', 'Tocaima', 11, 'I'),
(555, '817', 'Tocancipa', 11, 'A'),
(556, '823', 'Topaipi', 11, 'I'),
(557, '839', 'Ubala', 11, 'I'),
(558, '841', 'Ubaque', 11, 'I'),
(559, '843', 'Villa De San Diego De Ubate', 11, 'I'),
(560, '845', 'Une', 11, 'A'),
(561, '851', 'Utica', 11, 'A'),
(562, '862', 'Vergara', 11, 'A'),
(563, '867', 'Viani', 11, 'I'),
(564, '871', 'Villagomez', 11, 'I'),
(565, '873', 'Villapinzon', 11, 'A'),
(566, '875', 'Villeta', 11, 'I'),
(567, '878', 'Viota', 11, 'I'),
(568, '885', 'Yacopi', 11, 'I'),
(569, '898', 'Zipacon', 11, 'A'),
(570, '899', 'Zipaquira', 11, 'I'),
(571, '1', 'Quibdo', 12, 'I'),
(572, '6', 'Acandi', 12, 'I'),
(573, '25', 'Alto Baudo', 12, 'A'),
(574, '50', 'Atrato', 12, 'A'),
(575, '73', 'Bagado', 12, 'A'),
(576, '75', 'Bahia Solano', 12, 'A'),
(577, '77', 'Bajo Baudo', 12, 'A'),
(578, '86', 'Belen De Bajira', 12, 'I'),
(579, '99', 'Bojaya', 12, 'I'),
(580, '135', 'El Canton Del San Pablo', 12, 'A'),
(581, '150', 'Carmen Del Darien', 12, 'A'),
(582, '160', 'Certegui', 12, 'A'),
(583, '205', 'Condoto', 12, 'I'),
(584, '245', 'El Carmen De Atrato', 12, 'I'),
(585, '250', 'El Litoral Del San Juan', 12, 'I'),
(586, '361', 'Istmina', 12, 'I'),
(587, '372', 'Jurado', 12, 'I'),
(588, '413', 'Lloro', 12, 'A'),
(589, '425', 'Medio Atrato', 12, 'I'),
(590, '430', 'Medio Baudo', 12, 'A'),
(591, '450', 'Medio San Juan', 12, 'I'),
(592, '491', 'Novita', 12, 'I'),
(593, '495', 'Nuqui', 12, 'I'),
(594, '580', 'Rio Iro', 12, 'A'),
(595, '600', 'Rio Quito', 12, 'A'),
(596, '615', 'Riosucio', 12, 'I'),
(597, '660', 'San Jose Del Palmar', 12, 'A'),
(598, '745', 'Sipi', 12, 'A'),
(599, '787', 'Tado', 12, 'I'),
(600, '800', 'Unguia', 12, 'A'),
(601, '810', 'Union Panamericana', 12, 'I'),
(602, '1', 'Neiva', 13, 'A'),
(603, '6', 'Acevedo', 13, 'A'),
(604, '13', 'Agrado', 13, 'I'),
(605, '16', 'Aipe', 13, 'I'),
(606, '20', 'Algeciras', 13, 'I'),
(607, '26', 'Altamira', 13, 'I'),
(608, '78', 'Baraya', 13, 'A'),
(609, '132', 'Campoalegre', 13, 'I'),
(610, '206', 'Colombia', 13, 'I'),
(611, '244', 'Elias', 13, 'A'),
(612, '298', 'Garzon', 13, 'I'),
(613, '306', 'Gigante', 13, 'I'),
(614, '319', 'Guadalupe', 13, 'I'),
(615, '349', 'Hobo', 13, 'A'),
(616, '357', 'Iquira', 13, 'I'),
(617, '359', 'Isnos', 13, 'A'),
(618, '378', 'La Argentina', 13, 'A'),
(619, '396', 'La Plata', 13, 'A'),
(620, '483', 'Nataga', 13, 'A'),
(621, '503', 'Oporapa', 13, 'A'),
(622, '518', 'Paicol', 13, 'A'),
(623, '524', 'Palermo', 13, 'A'),
(624, '530', 'Palestina', 13, 'I'),
(625, '548', 'Pital', 13, 'I'),
(626, '551', 'Pitalito', 13, 'I'),
(627, '615', 'Rivera', 13, 'I'),
(628, '660', 'Saladoblanco', 13, 'A'),
(629, '668', 'San Agustin', 13, 'I'),
(630, '676', 'Santa Maria', 13, 'A'),
(631, '770', 'Suaza', 13, 'I'),
(632, '791', 'Tarqui', 13, 'I'),
(633, '797', 'Tesalia', 13, 'I'),
(634, '799', 'Tello', 13, 'I'),
(635, '801', 'Teruel', 13, 'A'),
(636, '807', 'Timana', 13, 'A'),
(637, '872', 'Villavieja', 13, 'A'),
(638, '885', 'Yaguara', 13, 'I'),
(639, '1', 'Riohacha', 14, 'A'),
(640, '35', 'Albania', 14, 'A'),
(641, '78', 'Barrancas', 14, 'I'),
(642, '90', 'Dibulla', 14, 'A'),
(643, '98', 'Distraccion', 14, 'I'),
(644, '110', 'El Molino', 14, 'I'),
(645, '279', 'Fonseca', 14, 'I'),
(646, '378', 'Hatonuevo', 14, 'I'),
(647, '420', 'La Jagua Del Pilar', 14, 'I'),
(648, '430', 'Maicao', 14, 'A'),
(649, '560', 'Manaure', 14, 'I'),
(650, '650', 'San Juan Del Cesar', 14, 'I'),
(651, '847', 'Uribia', 14, 'A'),
(652, '855', 'Urumita', 14, 'I'),
(653, '874', 'Villanueva', 14, 'I'),
(654, '1', 'Santa Marta', 15, 'I'),
(655, '30', 'Algarrobo', 15, 'I'),
(656, '53', 'Aracataca', 15, 'I'),
(657, '58', 'Ariguani', 15, 'A'),
(658, '161', 'Cerro San Antonio', 15, 'A'),
(659, '170', 'Chivolo', 15, 'A'),
(660, '189', 'Cienaga', 15, 'A'),
(661, '205', 'Concordia', 15, 'I'),
(662, '245', 'El Banco', 15, 'A'),
(663, '258', 'El Piñon', 15, 'I'),
(664, '268', 'El Reten', 15, 'A'),
(665, '288', 'Fundacion', 15, 'I'),
(666, '318', 'Guamal', 15, 'I'),
(667, '460', 'Nueva Granada', 15, 'A'),
(668, '541', 'Pedraza', 15, 'I'),
(669, '545', 'Pijiño Del Carmen', 15, 'I'),
(670, '551', 'Pivijay', 15, 'A'),
(671, '555', 'Plato', 15, 'I'),
(672, '570', 'Puebloviejo', 15, 'I'),
(673, '605', 'Remolino', 15, 'I'),
(674, '660', 'Sabanas De San Angel', 15, 'A'),
(675, '675', 'Salamina', 15, 'A'),
(676, '692', 'San', 16, 'I'),
(677, '703', 'San Zenon', 15, 'A'),
(678, '707', 'Santa Ana', 15, 'A'),
(679, '720', 'Santa Barbara De Pinto', 15, 'I'),
(680, '745', 'Sitionuevo', 15, 'I'),
(681, '798', 'Tenerife', 15, 'A'),
(682, '960', 'Zapayan', 15, 'A'),
(683, '980', 'Zona Bananera', 15, 'A'),
(684, '1', 'Villavicencio', 17, 'I'),
(685, '6', 'Acacias', 17, 'I'),
(686, '110', 'Barranca De Upia', 17, 'A'),
(687, '124', 'Cabuyaro', 17, 'I'),
(688, '150', 'Castilla La Nueva', 17, 'A'),
(689, '223', 'Cubarral', 17, 'A'),
(690, '226', 'Cumaral', 17, 'I'),
(691, '245', 'El Calvario', 17, 'A'),
(692, '251', 'El Castillo', 17, 'I'),
(693, '270', 'El Dorado', 17, 'A'),
(694, '287', 'Fuente De Oro', 17, 'I'),
(695, '313', 'Granada', 17, 'I'),
(696, '318', 'Guamal', 17, 'I'),
(697, '325', 'Mapiripan', 17, 'A'),
(698, '330', 'Mesetas', 17, 'I'),
(699, '350', 'La Macarena', 17, 'I'),
(700, '370', 'Uribe', 17, 'I'),
(701, '400', 'Lejanias', 17, 'A'),
(702, '450', 'Puerto Concordia', 17, 'A'),
(703, '568', 'Puerto Gaitan', 17, 'I'),
(704, '573', 'Puerto Lopez', 17, 'A'),
(705, '577', 'Puerto Lleras', 17, 'A'),
(706, '590', 'Puerto Rico', 17, 'I'),
(707, '606', 'Restrepo', 17, 'I'),
(708, '680', 'San Carlos De Guaroa', 17, 'A'),
(709, '683', 'San Juan De Arama', 17, 'I'),
(710, '686', 'San Juanito', 17, 'I'),
(711, '689', 'San Martin', 17, 'I'),
(712, '711', 'Vista Hermosa', 17, 'A'),
(713, '1', 'Pasto', 18, 'A'),
(714, '19', 'Alban', 18, 'I'),
(715, '22', 'Aldana', 18, 'I'),
(716, '36', 'Ancuya', 18, 'A'),
(717, '51', 'Arboleda', 18, 'I'),
(718, '79', 'Barbacoas', 18, 'I'),
(719, '83', 'Belen', 18, 'I'),
(720, '110', 'Buesaco', 18, 'A'),
(721, '203', 'Colon', 18, 'A'),
(722, '207', 'Consaca', 18, 'I'),
(723, '210', 'Contadero', 18, 'A'),
(724, '215', 'Cordoba', 18, 'I'),
(725, '224', 'Cuaspud', 18, 'I'),
(726, '227', 'Cumbal', 18, 'A'),
(727, '233', 'Cumbitara', 18, 'I'),
(728, '240', 'Chachagüi', 18, 'I'),
(729, '250', 'El Charco', 18, 'A'),
(730, '254', 'El Peñol', 18, 'A'),
(731, '256', 'El Rosario', 18, 'I'),
(732, '258', 'El Tablon De Gomez', 18, 'A'),
(733, '260', 'El Tambo', 18, 'A'),
(734, '287', 'Funes', 18, 'A'),
(735, '317', 'Guachucal', 18, 'A'),
(736, '320', 'Guaitarilla', 18, 'I'),
(737, '323', 'Gualmatan', 18, 'I'),
(738, '352', 'Iles', 18, 'I'),
(739, '354', 'Imues', 18, 'A'),
(740, '356', 'Ipiales', 18, 'A'),
(741, '378', 'La Cruz', 18, 'I'),
(742, '381', 'La Florida', 18, 'I'),
(743, '385', 'La Llanada', 18, 'I'),
(744, '390', 'La Tola', 18, 'I'),
(745, '399', 'La Union', 18, 'I'),
(746, '405', 'Leiva', 18, 'A'),
(747, '411', 'Linares', 18, 'A'),
(748, '418', 'Los Andes', 18, 'I'),
(749, '427', 'Magüi', 18, 'I'),
(750, '435', 'Mallama', 18, 'I'),
(751, '473', 'Mosquera', 18, 'A'),
(752, '480', 'Nariño', 18, 'I'),
(753, '490', 'Olaya Herrera', 18, 'A'),
(754, '506', 'Ospina', 18, 'I'),
(755, '520', 'Francisco Pizarro', 18, 'A'),
(756, '540', 'Policarpa', 18, 'A'),
(757, '560', 'Potosi', 18, 'A'),
(758, '565', 'Providencia', 18, 'I'),
(759, '573', 'Puerres', 18, 'A'),
(760, '585', 'Pupiales', 18, 'A'),
(761, '612', 'Ricaurte', 18, 'I'),
(762, '621', 'Roberto Payan', 18, 'A'),
(763, '678', 'Samaniego', 18, 'I'),
(764, '683', 'Sandona', 18, 'A'),
(765, '685', 'San Bernardo', 18, 'A'),
(766, '687', 'San Lorenzo', 18, 'A'),
(767, '693', 'San Pablo', 18, 'I'),
(768, '694', 'San Pedro De Cartago', 18, 'I'),
(769, '696', 'Santa Barbara', 18, 'A'),
(770, '699', 'Santacruz', 18, 'A'),
(771, '720', 'Sapuyes', 18, 'A'),
(772, '786', 'Taminango', 18, 'A'),
(773, '788', 'Tangua', 18, 'A'),
(774, '835', 'Tumaco', 18, 'I'),
(775, '838', 'Tuquerres', 18, 'I'),
(776, '885', 'Yacuanquer', 18, 'A'),
(777, '1', 'Cucuta', 19, 'I'),
(778, '3', 'Abrego', 19, 'A'),
(779, '51', 'Arboledas', 19, 'A'),
(780, '99', 'Bochalema', 19, 'I'),
(781, '109', 'Bucarasica', 19, 'I'),
(782, '125', 'Cacota', 19, 'A'),
(783, '128', 'Cachira', 19, 'I'),
(784, '172', 'Chinacota', 19, 'A'),
(785, '174', 'Chitaga', 19, 'I'),
(786, '206', 'Convencion', 19, 'A'),
(787, '223', 'Cucutilla', 19, 'I'),
(788, '239', 'Durania', 19, 'I'),
(789, '245', 'El Carmen', 19, 'I'),
(790, '250', 'El Tarra', 19, 'I'),
(791, '261', 'El Zulia', 19, 'I'),
(792, '313', 'Gramalote', 19, 'I'),
(793, '344', 'Hacari', 19, 'I'),
(794, '347', 'Herran', 19, 'A'),
(795, '377', 'Labateca', 19, 'A'),
(796, '385', 'La Esperanza', 19, 'A'),
(797, '398', 'La Playa', 19, 'A'),
(798, '405', 'Los Patios', 19, 'A'),
(799, '418', 'Lourdes', 19, 'A'),
(800, '480', 'Mutiscua', 19, 'I'),
(801, '498', 'Ocaña', 19, 'A'),
(802, '518', 'Pamplona', 19, 'A'),
(803, '520', 'Pamplonita', 19, 'I'),
(804, '553', 'Puerto Santander', 19, 'I'),
(805, '599', 'Ragonvalia', 19, 'I'),
(806, '660', 'Salazar', 19, 'A'),
(807, '670', 'San Calixto', 19, 'A'),
(808, '673', 'San Cayetano', 19, 'A'),
(809, '680', 'Santiago', 19, 'A'),
(810, '720', 'Sardinata', 19, 'I'),
(811, '743', 'Silos', 19, 'A'),
(812, '800', 'Teorama', 19, 'I'),
(813, '810', 'Tibu', 19, 'I'),
(814, '820', 'Toledo', 19, 'I'),
(815, '871', 'Villa Caro', 19, 'A'),
(816, '874', 'Villa Del Rosario', 19, 'I'),
(817, '1', 'Armenia', 20, 'A'),
(818, '111', 'Buenavista', 20, 'I'),
(819, '130', 'Calarca', 20, 'I'),
(820, '190', 'Circasia', 20, 'A'),
(821, '212', 'Cordoba', 20, 'I'),
(822, '272', 'Filandia', 20, 'A'),
(823, '302', 'Genova', 20, 'I'),
(824, '401', 'La Tebaida', 20, 'I'),
(825, '470', 'Montenegro', 20, 'I'),
(826, '548', 'Pijao', 20, 'A'),
(827, '594', 'Quimbaya', 20, 'A'),
(828, '690', 'Salento', 20, 'A'),
(829, '1', 'Pereira', 21, 'A'),
(830, '45', 'Apia', 21, 'A'),
(831, '75', 'Balboa', 21, 'I'),
(832, '88', 'Belen De Umbria', 21, 'I'),
(833, '170', 'Dosquebradas', 21, 'A'),
(834, '318', 'Guatica', 21, 'A'),
(835, '383', 'La Celia', 21, 'A'),
(836, '400', 'La Virginia', 21, 'I'),
(837, '440', 'Marsella', 21, 'I'),
(838, '456', 'Mistrato', 21, 'A'),
(839, '572', 'Pueblo Rico', 21, 'I'),
(840, '594', 'Quinchia', 21, 'I'),
(841, '682', 'Santa Rosa De Cabal', 21, 'I'),
(842, '687', 'Santuario', 21, 'A'),
(843, '1', 'Bucaramanga', 22, 'I'),
(844, '13', 'Aguada', 22, 'A'),
(845, '20', 'Albania', 22, 'A'),
(846, '51', 'Aratoca', 22, 'A'),
(847, '77', 'Barbosa', 22, 'A'),
(848, '79', 'Barichara', 22, 'A'),
(849, '81', 'Barrancabermeja', 22, 'A'),
(850, '92', 'Betulia', 22, 'I'),
(851, '101', 'Bolivar', 22, 'A'),
(852, '121', 'Cabrera', 22, 'I'),
(853, '132', 'California', 22, 'I'),
(854, '147', 'Capitanejo', 22, 'I'),
(855, '152', 'Carcasi', 22, 'I'),
(856, '160', 'Cepita', 22, 'A'),
(857, '162', 'Cerrito', 22, 'I'),
(858, '167', 'Charala', 22, 'A'),
(859, '169', 'Charta', 22, 'I'),
(860, '176', 'Chima', 22, 'I'),
(861, '179', 'Chipata', 22, 'I'),
(862, '190', 'Cimitarra', 22, 'I'),
(863, '207', 'Concepcion', 22, 'I'),
(864, '209', 'Confines', 22, 'A'),
(865, '211', 'Contratacion', 22, 'I'),
(866, '217', 'Coromoro', 22, 'I'),
(867, '229', 'Curiti', 22, 'I'),
(868, '235', 'El Carmen De Chucuri', 22, 'I'),
(869, '245', 'El Guacamayo', 22, 'A'),
(870, '250', 'El Peñon', 22, 'A'),
(871, '255', 'El Playon', 22, 'A'),
(872, '264', 'Encino', 22, 'I'),
(873, '266', 'Enciso', 22, 'I'),
(874, '271', 'Florian', 22, 'I'),
(875, '276', 'Floridablanca', 22, 'I'),
(876, '296', 'Galan', 22, 'I'),
(877, '298', 'Gambita', 22, 'I'),
(878, '307', 'Giron', 22, 'I'),
(879, '318', 'Guaca', 22, 'A'),
(880, '320', 'Guadalupe', 22, 'A'),
(881, '322', 'Guapota', 22, 'A'),
(882, '324', 'Guavata', 22, 'A'),
(883, '327', 'Güepsa', 22, 'A'),
(884, '344', 'Hato', 22, 'A'),
(885, '368', 'Jesus Maria', 22, 'A'),
(886, '370', 'Jordan', 22, 'A'),
(887, '377', 'La Belleza', 22, 'I'),
(888, '385', 'Landazuri', 22, 'I'),
(889, '397', 'La Paz', 22, 'I'),
(890, '406', 'Lebrija', 22, 'I'),
(891, '418', 'Los Santos', 22, 'A'),
(892, '425', 'Macaravita', 22, 'I'),
(893, '432', 'Malaga', 22, 'I'),
(894, '444', 'Matanza', 22, 'A'),
(895, '464', 'Mogotes', 22, 'A'),
(896, '468', 'Molagavita', 22, 'A'),
(897, '498', 'Ocamonte', 22, 'A'),
(898, '500', 'Oiba', 22, 'A'),
(899, '502', 'Onzaga', 22, 'A'),
(900, '522', 'Palmar', 22, 'A'),
(901, '524', 'Palmas Del Socorro', 22, 'A'),
(902, '533', 'Paramo', 22, 'I'),
(903, '547', 'Piedecuesta', 22, 'A'),
(904, '549', 'Pinchote', 22, 'A'),
(905, '572', 'Puente Nacional', 22, 'I'),
(906, '573', 'Puerto Parra', 22, 'I'),
(907, '575', 'Puerto Wilches', 22, 'A'),
(908, '615', 'Rionegro', 22, 'I'),
(909, '655', 'Sabana De Torres', 22, 'I'),
(910, '669', 'San Andres', 22, 'I'),
(911, '673', 'San Benito', 22, 'A'),
(912, '679', 'San Gil', 22, 'A'),
(913, '682', 'San Joaquin', 22, 'A'),
(914, '684', 'San Jose De Miranda', 22, 'I'),
(915, '686', 'San Miguel', 22, 'A'),
(916, '689', 'San Vicente De Chucuri', 22, 'I'),
(917, '705', 'Santa Barbara', 22, 'I'),
(918, '720', 'Santa Helena Del Opon', 22, 'I'),
(919, '745', 'Simacota', 22, 'I'),
(920, '755', 'Socorro', 22, 'A'),
(921, '770', 'Suaita', 22, 'A'),
(922, '773', 'Sucre', 22, 'A'),
(923, '780', 'Surata', 22, 'A'),
(924, '820', 'Tona', 22, 'A'),
(925, '855', 'Valle De San Jose', 22, 'I'),
(926, '861', 'Velez', 22, 'I'),
(927, '867', 'Vetas', 22, 'A'),
(928, '872', 'Villanueva', 22, 'I'),
(929, '895', 'Zapatoca', 22, 'I'),
(930, '1', 'Sincelejo', 23, 'I'),
(931, '110', 'Buenavista', 23, 'I'),
(932, '124', 'Caimito', 23, 'I'),
(933, '204', 'Coloso', 23, 'I'),
(934, '215', 'Corozal', 23, 'A'),
(935, '230', 'Chalan', 23, 'A'),
(936, '233', 'El Roble', 23, 'A'),
(937, '235', 'Galeras', 23, 'I'),
(938, '265', 'Guaranda', 23, 'I'),
(939, '400', 'La Union', 23, 'I'),
(940, '418', 'Los Palmitos', 23, 'A'),
(941, '429', 'Majagual', 23, 'I'),
(942, '473', 'Morroa', 23, 'A'),
(943, '508', 'Ovejas', 23, 'I'),
(944, '523', 'Palmito', 23, 'A'),
(945, '670', 'Sampues', 23, 'A'),
(946, '678', 'San Benito Abad', 23, 'I'),
(947, '702', 'San Juan De Betulia', 23, 'A'),
(948, '708', 'San Marcos', 23, 'I'),
(949, '713', 'San Onofre', 23, 'A'),
(950, '717', 'San Pedro', 23, 'A'),
(951, '742', 'Since', 23, 'A'),
(952, '771', 'Sucre', 23, 'A'),
(953, '820', 'Santiago De Tolu', 23, 'I'),
(954, '823', 'Toluviejo', 23, 'I'),
(955, '1', 'Ibague', 24, 'A'),
(956, '24', 'Alpujarra', 24, 'I'),
(957, '26', 'Alvarado', 24, 'A'),
(958, '30', 'Ambalema', 24, 'I'),
(959, '43', 'Anzoategui', 24, 'I'),
(960, '55', 'Armero', 24, 'A'),
(961, '67', 'Ataco', 24, 'I'),
(962, '124', 'Cajamarca', 24, 'I'),
(963, '148', 'Carmen De Apicala', 24, 'I'),
(964, '152', 'Casabianca', 24, 'I'),
(965, '168', 'Chaparral', 24, 'A'),
(966, '200', 'Coello', 24, 'A'),
(967, '217', 'Coyaima', 24, 'A'),
(968, '226', 'Cunday', 24, 'A'),
(969, '236', 'Dolores', 24, 'I'),
(970, '268', 'Espinal', 24, 'I'),
(971, '270', 'Falan', 24, 'A'),
(972, '275', 'Flandes', 24, 'I'),
(973, '283', 'Fresno', 24, 'A'),
(974, '319', 'Guamo', 24, 'A'),
(975, '347', 'Herveo', 24, 'I'),
(976, '349', 'Honda', 24, 'I'),
(977, '352', 'Icononzo', 24, 'I'),
(978, '408', 'Lerida', 24, 'I'),
(979, '411', 'Libano', 24, 'I'),
(980, '443', 'Mariquita', 24, 'I'),
(981, '449', 'Melgar', 24, 'A'),
(982, '461', 'Murillo', 24, 'I'),
(983, '483', 'Natagaima', 24, 'I'),
(984, '504', 'Ortega', 24, 'I'),
(985, '520', 'Palocabildo', 24, 'A'),
(986, '547', 'Piedras', 24, 'I'),
(987, '555', 'Planadas', 24, 'A'),
(988, '563', 'Prado', 24, 'I'),
(989, '585', 'Purificacion', 24, 'A'),
(990, '616', 'Rioblanco', 24, 'I'),
(991, '622', 'Roncesvalles', 24, 'A'),
(992, '624', 'Rovira', 24, 'A'),
(993, '671', 'Saldaña', 24, 'A'),
(994, '675', 'San Antonio', 24, 'A'),
(995, '678', 'San Luis', 24, 'A'),
(996, '686', 'Santa Isabel', 24, 'I'),
(997, '770', 'Suarez', 24, 'I'),
(998, '854', 'Valle De San Juan', 24, 'I'),
(999, '861', 'Venadillo', 24, 'I'),
(1000, '870', 'Villahermosa', 24, 'I'),
(1001, '873', 'Villarrica', 24, 'A'),
(1002, '1', 'Cali', 25, 'I'),
(1003, '20', 'Alcala', 25, 'I'),
(1004, '36', 'Andalucia', 25, 'A'),
(1005, '41', 'Ansermanuevo', 25, 'I'),
(1006, '54', 'Argelia', 25, 'A'),
(1007, '100', 'Bolivar', 25, 'I'),
(1008, '109', 'Buenaventura', 25, 'A'),
(1009, '111', 'Guadalajara De Buga', 25, 'I'),
(1010, '113', 'Bugalagrande', 25, 'I'),
(1011, '122', 'Caicedonia', 25, 'A'),
(1012, '126', 'Calima', 25, 'A'),
(1013, '130', 'Candelaria', 25, 'A'),
(1014, '147', 'Cartago', 25, 'I'),
(1015, '233', 'Dagua', 25, 'A'),
(1016, '243', 'El Aguila', 25, 'I'),
(1017, '246', 'El Cairo', 25, 'I'),
(1018, '248', 'El Cerrito', 25, 'A'),
(1019, '250', 'El Dovio', 25, 'A'),
(1020, '275', 'Florida', 25, 'A'),
(1021, '306', 'Ginebra', 25, 'A'),
(1022, '318', 'Guacari', 25, 'I'),
(1023, '364', 'Jamundi', 25, 'I'),
(1024, '377', 'La Cumbre', 25, 'I'),
(1025, '400', 'La Union', 25, 'A'),
(1026, '403', 'La Victoria', 25, 'I'),
(1027, '497', 'Obando', 25, 'A'),
(1028, '520', 'Palmira', 25, 'I'),
(1029, '563', 'Pradera', 25, 'I'),
(1030, '606', 'Restrepo', 25, 'A'),
(1031, '616', 'Riofrio', 25, 'I'),
(1032, '622', 'Roldanillo', 25, 'I'),
(1033, '670', 'San Pedro', 25, 'I'),
(1034, '736', 'Sevilla', 25, 'I'),
(1035, '823', 'Toro', 25, 'A'),
(1036, '828', 'Trujillo', 25, 'I'),
(1037, '834', 'Tulua', 25, 'I'),
(1038, '845', 'Ulloa', 25, 'I'),
(1039, '863', 'Versalles', 25, 'A'),
(1040, '869', 'Vijes', 25, 'I'),
(1041, '890', 'Yotoco', 25, 'A'),
(1042, '892', 'Yumbo', 25, 'A'),
(1043, '895', 'Zarzal', 25, 'I'),
(1044, '1', 'Arauca', 26, 'A'),
(1045, '65', 'Arauquita', 26, 'I'),
(1046, '220', 'Cravo Norte', 26, 'A'),
(1047, '300', 'Fortul', 26, 'I'),
(1048, '591', 'Puerto Rondon', 26, 'I'),
(1049, '736', 'Saravena', 26, 'I'),
(1050, '794', 'Tame', 26, 'A'),
(1051, '1', 'Yopal', 27, 'A'),
(1052, '10', 'Aguazul', 27, 'A'),
(1053, '15', 'Chameza', 27, 'I'),
(1054, '125', 'Hato Corozal', 27, 'I'),
(1055, '136', 'La Salina', 27, 'I'),
(1056, '139', 'Mani', 27, 'I'),
(1057, '162', 'Monterrey', 27, 'I'),
(1058, '225', 'Nunchia', 27, 'I'),
(1059, '230', 'Orocue', 27, 'A'),
(1060, '250', 'Paz De Ariporo', 27, 'I'),
(1061, '263', 'Pore', 27, 'A'),
(1062, '279', 'Recetor', 27, 'I'),
(1063, '300', 'Sabanalarga', 27, 'I'),
(1064, '315', 'Sacama', 27, 'A'),
(1065, '325', 'San Luis De Palenque', 27, 'A'),
(1066, '400', 'Tamara', 27, 'A'),
(1067, '410', 'Tauramena', 27, 'I'),
(1068, '430', 'Trinidad', 27, 'I'),
(1069, '440', 'Villanueva', 27, 'A'),
(1070, '1', 'Mocoa', 28, 'I'),
(1071, '219', 'Colon', 28, 'A'),
(1072, '320', 'Orito', 28, 'I'),
(1073, '568', 'Puerto Asis', 28, 'A'),
(1074, '569', 'Puerto Caicedo', 28, 'I'),
(1075, '571', 'Puerto Guzman', 28, 'I'),
(1076, '573', 'Leguizamo', 28, 'I'),
(1077, '749', 'Sibundoy', 28, 'I'),
(1078, '755', 'San Francisco', 28, 'I'),
(1079, '757', 'San Miguel', 28, 'A'),
(1080, '760', 'Santiago', 28, 'I'),
(1081, '865', 'Valle Del Guamuez', 28, 'I'),
(1082, '885', 'Villagarzon', 28, 'A'),
(1083, '1', 'San Andres', 29, 'I'),
(1084, '564', 'Providencia', 29, 'A'),
(1085, '1', 'Leticia', 30, 'I'),
(1086, '263', 'El Encanto', 30, 'A'),
(1087, '405', 'La Chorrera', 30, 'A'),
(1088, '407', 'La Pedrera', 30, 'A'),
(1089, '430', 'La Victoria', 30, 'I'),
(1090, '460', 'Miriti - Parana', 30, 'I'),
(1091, '530', 'Puerto Alegria', 30, 'A'),
(1092, '536', 'Puerto Arica', 30, 'A'),
(1093, '540', 'Puerto Nariño', 30, 'A'),
(1094, '669', 'Puerto Santander', 30, 'A'),
(1095, '798', 'Tarapaca', 30, 'I'),
(1096, '1', 'Inirida', 31, 'A'),
(1097, '343', 'Barranco Minas', 31, 'A'),
(1098, '663', 'Mapiripana', 31, 'I'),
(1099, '883', 'San Felipe', 31, 'I'),
(1100, '884', 'Puerto Colombia', 31, 'I'),
(1101, '885', 'La Guadalupe', 31, 'I'),
(1102, '886', 'Cacahual', 31, 'A'),
(1103, '887', 'Pana Pana', 31, 'I'),
(1104, '888', 'Morichal', 31, 'A'),
(1105, '1', 'San Jose Del Guaviare', 32, 'A'),
(1106, '15', 'Calamar', 32, 'I'),
(1107, '25', 'El Retorno', 32, 'A'),
(1108, '200', 'Miraflores', 32, 'I'),
(1109, '1', 'Mitu', 33, 'I'),
(1110, '161', 'Caruru', 33, 'I'),
(1111, '511', 'Pacoa', 33, 'I'),
(1112, '666', 'Taraira', 33, 'A'),
(1113, '777', 'Papunaua', 33, 'I'),
(1114, '889', 'Yavarate', 33, 'A'),
(1115, '1', 'Puerto Carreño', 34, 'I'),
(1116, '524', 'La Primavera', 34, 'A'),
(1117, '624', 'Santa Rosalia', 34, 'I'),
(1118, '773', 'Cumaribo', 34, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `id_empresa` tinyint(4) DEFAULT NULL,
  `nit_cliente` varchar(15) NOT NULL,
  `rsocial_cliente` varchar(70) NOT NULL,
  `id_tipo_cliente` tinyint(4) NOT NULL,
  `nombre_cliente` varchar(75) NOT NULL,
  `apellido_cliente` varchar(75) NOT NULL,
  `dir_cliente` varchar(85) NOT NULL,
  `id_ciudad` smallint(6) DEFAULT NULL,
  `correo_cliente` varchar(85) DEFAULT NULL,
  `tel_cliente` varchar(30) NOT NULL,
  `codpostal_cliente` varchar(15) DEFAULT NULL,
  `cupocredito_cliente` bigint(20) DEFAULT 0,
  `saldo_cliente` bigint(20) DEFAULT 0,
  `comprasmes_cliente` bigint(20) DEFAULT 0,
  `pagosmes_cliente` bigint(20) DEFAULT 0,
  `estado_cliente` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `id_empresa`, `nit_cliente`, `rsocial_cliente`, `id_tipo_cliente`, `nombre_cliente`, `apellido_cliente`, `dir_cliente`, `id_ciudad`, `correo_cliente`, `tel_cliente`, `codpostal_cliente`, `cupocredito_cliente`, `saldo_cliente`, `comprasmes_cliente`, `pagosmes_cliente`, `estado_cliente`) VALUES
(1014578426, 64, '865467195-3', 'Sociedad Comandita por Acciones', 1, 'Constance', 'Eriksson', 'Dg. 34 #  187 - 32', 3, 'toughzucchini67@gmail.com', '304 849 8894', '140713', 549660542, 164898162, 6, 0, 'A'),
(1020354789, 1, '853546410-5', 'Persona natural', 2, 'London', 'Frothingham', 'Auto Sur. 158 #  70 - 22', 325, 'quartz@gmail.com', '317 962 3669', '330342', 64751832, 19425549, 6, 0, 'A'),
(1023487599, 1, '205995833-4', 'Persona natural', 2, 'Leonardo', 'Clowes', 'Cll. 82Este  #  236Sur  - 51', 3, 'noiselesszinc38@gmail.com', '318 584 6049', '110246', 60147452, 18044235, 6, 0, 'A'),
(1025489758, 16, '236655360-9', 'Sociedad por Acciones Simplificada', 1, 'Tommy', 'Giffard', 'Dg. 26 #  239 - 89', 554, 'waste@hotmail.com', '311 501 3553', '110770', 4674719522, 1402415856, 6, 0, 'A'),
(1032457842, 13, '297231468-4', 'Sociedad Anónima', 1, 'Kaylyn', 'Evans', 'Cll. 134Bis  #  200 - 63', 3, 'angry.rhubarb@gmail.com', '308 968 7368', '140329', 1088757622, 326627286, 6, 0, 'A'),
(1032478450, 36, '469887702-3', 'Empresa Asociativa de Trabajo', 1, 'Harriet', 'Carrasco', 'Cra. 63Sur  #  160C - 89', 3, 'blueberry@outlook.com', '303 625 5743', '330267', 1415395752, 424618725, 6, 0, 'A'),
(1035688742, 9, '235798364-6', 'Sociedad por Acciones Simplificada', 1, 'Isaak', 'Robertson', 'Av. Boyacá. #  53 - 29', 3, 'flavor1@outlook.com', '306 687 6718', '140878', 836667362, 251000208, 6, 0, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` tinyint(4) NOT NULL,
  `id_solicitud` tinyint(4) DEFAULT NULL,
  `id_empleado_solicita` bigint(20) DEFAULT NULL,
  `id_proveedor` tinyint(4) DEFAULT NULL,
  `id_producto` smallint(6) DEFAULT NULL,
  `cntd_producto` smallint(6) DEFAULT 0,
  `val_total_compra` decimal(8,2) DEFAULT 0.00,
  `fecha_compra` datetime NOT NULL,
  `estado_compra` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_solicitud`, `id_empleado_solicita`, `id_proveedor`, `id_producto`, `cntd_producto`, `val_total_compra`, `fecha_compra`, `estado_compra`) VALUES
(1, 1, 1359751023, 7, 4, 30, 497250.00, '2023-12-02 10:51:58', 'A'),
(2, 2, 1359751023, 10, 6, 50, 569400.00, '2023-12-02 10:51:58', 'D'),
(3, 3, 1359751023, 8, 7, 29, 587000.00, '2023-12-02 10:51:58', 'A'),
(4, 4, 1025756358, 9, 9, 45, 504000.00, '2023-12-02 10:51:58', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ctg_tipo_usuario`
--

CREATE TABLE `ctg_tipo_usuario` (
  `id_tipo_usuario` tinyint(4) NOT NULL,
  `tipo_usuario` varchar(100) NOT NULL,
  `descripcion_usuario` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ctg_tipo_usuario`
--

INSERT INTO `ctg_tipo_usuario` (`id_tipo_usuario`, `tipo_usuario`, `descripcion_usuario`) VALUES
(1, 'Gerente', 'El Gerente es un puesto de alto nivel dentro de la empresa. Tiene acceso a todas las funcionalidades de la aplicación web, lo que le permite supervisar y gestionar de manera integral todas las áreas de la empresa.'),
(2, 'Administración', 'El Administrativo es un puesto que desempeña tareas administrativas. Su función es garantizar un flujo eficiente de información y documentación relacionada con las operaciones comerciales y de recursos humanos de la empresa.'),
(3, 'Director de Ventas', 'El director de Ventas tiene acceso al módulo de facturación, en donde realiza el seguimiento a las actividades relacionadas con las ventas. Puede consultar el stock de productos y participar en la solicitud de compras.'),
(4, 'Comercial', 'El Comercial es un miembro del equipo de ventas, trabajan principalmente en el módulo de facturación y tienen la capacidad de consultar el stock de productos. Realizan las solicitudes al módulo de compras, estas deben ser aprobadas por el Gerente.'),
(5, 'Jefe de Almacén', 'El Jefe de Almacén se encarga de la operación y el flujo de productos dentro del almacén de la empresa. Tiene responsabilidades en el módulo almacén, como el control de stock, la gestión de ubicaciones de productos y solicitudes de compra.'),
(6, 'Mozo de Almacén', 'El Mozo de Almacén es un empleado que desempeña un papel esencial en la gestión diaria de las operaciones del almacén. Tienen tareas relacionadas con el control del stock y la gestión de ubicación de productos en el módulo almacén.'),
(7, 'Mantenimiento ', 'El personal de mantenimiento tiene acceso al módulo de almacén para consultar la ubicación de productos y registrar alguna incidencia.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_dpto` smallint(6) NOT NULL,
  `nombre_dpto` varchar(80) NOT NULL,
  `id_pais_dpto` smallint(6) NOT NULL,
  `estado_dpto` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_dpto`, `nombre_dpto`, `id_pais_dpto`, `estado_dpto`) VALUES
(1, 'Antioquia', 43, 'I'),
(2, 'Atlántico', 43, 'A'),
(3, 'D.C.', 43, 'A'),
(4, 'Bolívar', 43, 'I'),
(5, 'Boyacá', 43, 'I'),
(6, 'Caldas', 43, 'A'),
(7, 'Caquetá', 43, 'I'),
(8, 'Cauca', 43, 'A'),
(9, 'Cesar', 43, 'I'),
(10, 'Córdoba', 43, 'I'),
(11, 'Cundinamarca', 43, 'A'),
(12, 'Chocó', 43, 'I'),
(13, 'Huila', 43, 'I'),
(14, 'La Guajira', 43, 'I'),
(15, 'Magdalena', 43, 'A'),
(16, 'San Sebastián', 43, 'I'),
(17, 'Meta', 43, 'A'),
(18, 'Nariño', 43, 'A'),
(19, 'Norte de Santander', 43, 'A'),
(20, 'Quindio', 43, 'I'),
(21, 'Risaralda', 43, 'A'),
(22, 'Santander', 43, 'I'),
(23, 'Sucre', 43, 'I'),
(24, 'Tolima', 43, 'A'),
(25, 'Valle del Cauca', 43, 'A'),
(26, 'Arauca', 43, 'A'),
(27, 'Casanare', 43, 'A'),
(28, 'Putumayo', 43, 'I'),
(29, 'Archipiélago de San Andrés, Providencia y Santa Catalina', 43, 'I'),
(30, 'Amazonas', 43, 'A'),
(31, 'Guainía', 43, 'A'),
(32, 'Guaviare', 43, 'I'),
(33, 'Vaupés', 43, 'I'),
(34, 'Vichada', 43, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle_factura` smallint(6) NOT NULL,
  `id_factura` smallint(6) NOT NULL,
  `id_producto` smallint(6) NOT NULL,
  `cant_vendida` smallint(6) DEFAULT 0,
  `precio_venta` decimal(8,2) DEFAULT 0.00,
  `valor_iva` decimal(5,2) DEFAULT 0.00,
  `descto_detfac` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_recaudo`
--

CREATE TABLE `detalle_recaudo` (
  `id_detalle_recaudo` int(11) NOT NULL,
  `id_recaudo` int(11) NOT NULL,
  `id_med_pago` int(11) NOT NULL,
  `valor_recaudo` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `nom_ape_empleado` varchar(100) NOT NULL,
  `direc_empleado` varchar(100) DEFAULT NULL,
  `email_empleado` varchar(100) DEFAULT NULL,
  `tel_empleado` varchar(20) DEFAULT NULL,
  `fecha_naci_empleado` date DEFAULT NULL,
  `estado_empleado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `id_usuario`, `nom_ape_empleado`, `direc_empleado`, `email_empleado`, `tel_empleado`, `fecha_naci_empleado`, `estado_empleado`) VALUES
(1000465894, 5, 'Germán Garzón Pulgarín	', 'Carrera 7 # 147 - 23	', 'ggarzonp@gmail.com	', '3004450951', '1994-09-29', 'A'),
(1002458745, 7, 'Santiago Montealegre Soto	', 'Carrera 19 # 106 - 26	', 'smontealegres@gmail.com	', '3205693214', '1999-01-15', 'A'),
(1002478546, 6, 'Gustavo Hincapie Ruiz	', 'Carrera 10 # 2 - 42	', 'ghincapier@gmail.com	', '3002164332', '1990-05-05', 'A'),
(1002600489, 3, 'Juan Sebatián Gómez Umaña	', 'Calle 35 # 28 - 06	', 'jsgomezu@gmail.com	', '3044039621', '1999-06-25', 'A'),
(1025756358, 1, 'Andrea Moreno Restrepo	', 'Calle 152 # 55 - 37', 'amorenor@gmail.com	', '3102561498', '1998-06-11', 'A'),
(1359751023, 4, 'Laura Posada Tobon	', 'Calle 75 # 26 - 63	', 'lposadat@gmail.com	', '3059841685', '2001-08-18', 'A'),
(1579842653, 2, 'Felipe Molano Jiménez	', 'Carrera 19 # 75 - 23	', 'fmolanoj@gmail.com	', '3102561498', '1987-03-09', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_empresa` tinyint(4) NOT NULL,
  `razon_social` varchar(60) NOT NULL,
  `nit_empresa` varchar(12) NOT NULL,
  `dir_empresa` varchar(80) NOT NULL,
  `correo_empresa` varchar(90) NOT NULL,
  `representante` varchar(90) NOT NULL,
  `telefono_empresa` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_empresa`, `razon_social`, `nit_empresa`, `dir_empresa`, `correo_empresa`, `representante`, `telefono_empresa`) VALUES
(1, 'Sociedad por Acciones Simplificada', '765790341-8', 'Cra. 19H# 50 - 52 Sur.', 'info@innovacionempresarial.com', 'Juan García López', '323 246 1614'),
(2, 'Sociedad por Acciones Simplificada', '715828459-8', 'Av. Ciudad de Cali.  # 131 - 77', 'info@innovacionglobal.com', 'Mateo Martínez Kim', '328 174 1896'),
(3, 'Sociedad Limitada', '328961251-1', 'Cll. 13Bis. # 170 - 61 Este.', 'info@inversionesabc.com', 'Alejandro Smith Rodríguez', '399 156 4745'),
(4, 'Sociedad por Acciones Simplificada', '919794866-8', 'Cll. 179Este. # 125 Sur. - 81 Sur.', 'info@megamall.com', 'Andrés Nguyen González', '362 497 8975'),
(5, 'Sociedad Limitada', '737687569-7', 'Auto. Norte. G# 167 - 15 Sur.', 'info@alimentosfrescos.com', 'Carlos Johnson Fernández', '375 970 2215'),
(6, 'Sociedad por Acciones Simplificada', '763940467-8', 'Cra. 83P# 22 - 19 Sur.', 'info@supermercadoabc.com', 'Daniel Rossi Silva', '366 902 9156'),
(7, 'Empresa Unipersonal', '987181736-2', 'Av. Caracas.  # 177 - 27 Sur.', 'info@innovaciondigital.com', 'Diego López García', '336 717 7333'),
(8, 'Sociedad Limitada', '958239539-6', 'Dg. 28 # 41 - 48', 'contacto@abcsoluciones.com', 'Luis Wang Pérez', '380 334 9391'),
(9, 'Sociedad por Acciones Simplificada', '953390399-5', 'Cra. 6Bis. # 49 - 67', 'info@solucionesdigitales.com', 'Marco Lee Rodríguez', '347 621 8466'),
(10, 'Sociedad por Acciones Simplificada', '878849726-5', 'Cll. 166T# 122 - 47 Sur.', 'info@inversionesfutura.com', 'Gabriel Santos Pérez', '303 885 3668'),
(11, 'Sociedad Limitada', '811160577-5', 'Av. Caracas.  # 23 - 21 Sur.', 'contacto@maximarket.com', 'Francisco López Pérez', '364 110 5354'),
(12, 'Sociedad Limitada', '165424562-2', 'Cll. 187Sur. # 35 Este. - 20 Este.', 'contacto@plazadeleste.com', 'Javier González Kim', '305 931 6635'),
(13, 'Sociedad Anónima', '801806774-9', 'Dg. 1Y# 131 - 42 Sur.', 'contacto@construtechsas.com', 'José Silva Rodríguez', '355 896 9016'),
(14, 'Sociedad por Acciones Simplificada', '868886503-4', 'Av. Ciudad de Cali.  # 190 - 72 Este.', 'contacto@innovatech.com', 'Miguel Fernández García', '338 736 5438'),
(15, 'Sociedad Anónima', '678494297-7', 'Cra. 127 # 127 - 61 Este.', 'contacto@tecinova.com', 'Rafael Kim Smith', '353 147 6450'),
(16, 'Sociedad por Acciones Simplificada', '829604350-9', 'Cll. 61K# 61 - 87', 'contacto@comestiblesrapidossas.com', 'Sergio Patel López', '338 939 5440'),
(17, 'Empresa Unipersonal', '116828697-6', 'Dg. 19Sur. # 82 Este. - 39', 'info@deliciascaserasltda.com', 'Antonio Pérez Kim', '301 627 7373'),
(18, 'Sociedad Limitada', '306405613-6', 'Cll. 19 # 157 - 14', 'info@greentechsolutions.com', 'Bruno Fernández González', '389 436 7714'),
(19, 'Empresa Unipersonal', '722400128-7', 'Cll. 86I# 70 - 87', 'info@comercialexpress.com', 'Ernesto Rodríguez Wang', '360 954 2239'),
(20, 'Empresa Unipersonal', '763031007-8', 'Dg. 19 # 134 - 66', 'info@greensolutionsltda.com', 'Fernando López Silva', '333 938 3433'),
(21, 'Sociedad Anónima', '321365576-9', 'Av. Jiménez.  # 32 - 32', 'info@centralmall.com', 'Pedro Santos Silva', '381 591 7941'),
(22, 'Sociedad Anónima', '557354630-9', 'Av. 1° de Mayo.  # 87 - 51', 'contacto@construred.com', 'Ricardo Kim López', '320 349 9527'),
(23, 'Sociedad Anónima', '415388295-8', 'Auto. Sur. Sur. # 185 Este. - 19 Este.', 'info@constructoraprogreso.com', 'Hugo González Pérez', '388 747 6304'),
(24, 'Sociedad Colectiva', '254059987-5', 'Dg. 20X# 168 - 15 Este.', 'contacto@fooddelightenterprises.com', 'David Wang Rodríguez', '353 719 5059'),
(25, 'Sociedad Anónima', '172207869-5', 'Auto. Sur.  # 51 - 12 Este.', 'contacto@superfoodsa.com', 'Emilio Silva Kim', '346 206 3592'),
(26, 'Sociedad Colectiva', '442545744-1', 'Cll. 135Sur. # 43G - 72', 'contacto@mallciudad.com', 'Guillermo Pérez Rodríguez', '333 305 9184'),
(27, 'Empresa Unipersonal', '824440912-2', 'Auto. Norte. Y# 210 - 22 Este.', 'contacto@ecosolutions.com', 'Matías García Pérez', '391 839 6704'),
(28, 'Sociedad Anónima', '877153422-5', 'Auto. Sur. Bis. # 148 - 35 Sur.', 'contacto@saboresdelaabuela.com', 'Nicolás Rodríguez López', '337 435 1279'),
(29, 'Sociedad Comandita Simple', '695432679-9', 'Cra. 108Bis. # 221 - 41', 'contacto@comanditaexpress.com', 'Pablo Kim García', '392 592 7025'),
(30, 'Sociedad Colectiva', '433357291-1', 'Tv. 42Este. # 197 - 60 Sur.', 'contacto@fooddelightltda.com', 'Adrián Smith Rodríguez', '380 337 8538'),
(31, 'Sociedad por Acciones Simplificada', '491323975-3', 'Tv. 29K# 208 - 60 Sur.', 'info@plazadelsol.com', 'Esteban Pérez Kim', '395 146 2143'),
(32, 'Empresa Unipersonal', '652624452-5', 'Dg. 23 # 44 - 32 Sur.', 'contacto@acmeup.com', 'Leonardo Fernández López', '313 410 5396'),
(33, 'Sociedad Colectiva', '745932614-9', 'Av. 1° de Mayo.  # 61 - 57 Este.', 'info@discountmart.com', 'Manuel García Silva', '387 119 3468'),
(34, 'Sociedad Colectiva', '485776065-8', 'Tv. 27S# 149 - 46 Este.', 'contacto@fooddelight.com', 'Óscar Kim Wang', '381 832 6269'),
(35, 'Sociedad Colectiva', '586716998-4', 'Cra. 21Bis. # 204 - 10', 'info@productosgourmetco.com', 'Víctor López Rodríguez', '358 889 5754'),
(36, 'Empresa Asociativa de Trabajo', '183311271-5', 'Av. 1° de Mayo.  # 82 - 62', 'contacto@innovatechsolutionseat.com', 'Ignacio Wang Kim', '300 238 5383'),
(37, 'Sociedad Comandita por Acciones', '842290369-7', 'Auto. Norte. Bis. # 214 - 73', 'info@industriasfuturo.com', 'Arturo Pérez García', '339 270 9153'),
(38, 'Sociedad Limitada', '355814526-7', 'Cra. 123 # 177 - 15 Este.', 'contacto@cc-oeste.com', 'Javier López Kim', '356 189 8946'),
(39, 'Empresa Asociativa de Trabajo', '261712468-1', 'Cra. 17Bis. # 18 - 12', 'contacto@naturalfoodsolutionsltda.com', 'Raúl Smith González', '339 517 6097'),
(40, 'Empresa Asociativa de Trabajo', '415995414-5', 'Tv. 3Sur. # 86 - 86 Sur.', 'contacto@supergroceryltda.com', 'Sergio Kim Wang', '321 253 2354'),
(41, 'Sociedad Limitada', '746387098-3', 'Auto. Sur.  # 197 - 58 Sur.', 'contacto@innovatechsolucionesltda.com', 'Tomás Rodríguez Pérez', '316 302 6660'),
(42, 'Sociedad Limitada', '933061798-3', 'Tv. 32Bis. # 25 - 24', 'info@greenenergysolutions.com', 'Alejandro García Rodríguez', '310 405 4244'),
(43, 'Sociedad Comandita Simple', '333119081-6', 'Cra. 15Bis. # 161 - 83 Este.', 'info@alimentosaludablessa.com', 'Carlos Wang López', '343 170 3546'),
(44, 'Sociedad Comandita Simple', '468303558-2', 'Auto. Norte.  # 151 - 41 Este.', 'info@econostoresa.com', 'Daniel Smith Pérez', '386 517 1808'),
(45, 'Sociedad Comandita por Acciones', '117140128-6', 'Cll. 73Bis. # 15 - 31 Este.', 'info@energiaverde.com', 'Jorge Silva López', '322 197 1750'),
(46, 'Sociedad Comandita por Acciones', '286377979-3', 'Tv. 16Este. # 103 - 59', 'info@energygreenco.com', 'Juan Pablo Kim Silva', '344 286 6053'),
(47, 'Sociedad Comandita Simple', '487646032-8', 'Dg. 5Bis. # 36 - 73 Este.', 'info@grancc.com', 'Marcelo Rodríguez Kim', '386 242 8250'),
(48, 'Empresa Asociativa de Trabajo', '733881915-2', 'Av. Jiménez.  # 64 - 72', 'contacto@ctu.com', 'Mauricio Wang Smith', '388 292 9380'),
(49, 'Sociedad Anónima', '324436220-1', 'Cra. 161Sur. # 128F - 12', 'contacto@deliciosossac.com', 'Martín Pérez López', '383 392 8035'),
(50, 'Sociedad Comandita por Acciones', '444513762-4', 'Tv. 20Sur. # 20 Este. - 80', 'contacto@deliciosos.com', 'Camila Rossi Silva', '335 835 4839'),
(51, 'Sociedad Anónima', '712300827-2', 'Av. Boyacá.  # 206 - 58 Sur.', 'info@megatechinnov.com', 'Emma Wang Pérez', '339 648 9818'),
(52, 'Sociedad Limitada', '337431873-5', 'Cra. 68Sur. # 124 Este. - 41 Este.', 'contacto@alimentossabrosossa.com', 'Gustavo López Silva', '386 413 1279'),
(53, 'Empresa Asociativa de Trabajo', '665496394-8', 'Av. Eldorado.  # 84 - 59 Este.', 'contacto@constructoresunidos.com', 'Isabella Johnson Fernández', '374 185 8046'),
(54, 'Sociedad Colectiva', '640166261-6', 'Cll. 83B# 79 - 58', 'contacto@shoppingplaza.com', 'María García López', '356 179 7020'),
(55, 'Sociedad por Acciones Simplificada', '702564154-9', 'Auto. Norte. O# 185 - 22 Este.', 'contacto@familyfoodssas.com', 'Sofía Martínez Kim', '304 994 8578'),
(56, 'Sociedad por Acciones Simplificada', '836100657-3', 'Cll. 22Sur. # 132 Este. - 48 Sur.', 'contacto@saborynutricion.com', 'Valentina Smith Rodríguez', '324 330 7432'),
(57, 'Sociedad Limitada', '936728019-9', 'Av. Caracas.  # 38 - 46 Este.', 'contacto@deliciosossac.com', 'Valeria Nguyen González', '310 316 7638'),
(58, 'Sociedad por Acciones Simplificada', '512228226-8', 'Auto. Norte. Sur. # 123 Este. - 88 Sur.', 'info@ingenieriaavanzadasa.com', 'Martina López García', '309 934 4381'),
(59, 'Sociedad por Acciones Simplificada', '144077713-8', 'Dg. 26F# 132 - 38', 'info@ingenieriaproactivasa.com', 'Antonia Santos Pérez', '324 483 3774'),
(60, 'Sociedad Limitada', '643993222-9', 'Dg. 6Sur. # 214 - 27', 'info@comidasrapidasexpressltda.com', 'Catalina González Kim', '321 819 7927'),
(61, 'Sociedad por Acciones Simplificada', '870742657-3', 'Dg. 8Bis. # 192 - 69 Este.', 'info@ingenieriaprogresivasac.com', 'Laura Silva Rodríguez', '368 692 7538'),
(62, 'Sociedad por Acciones Simplificada', '114467478-8', 'Tv. 25Q# 28 - 60', 'info@solucionescreativas.com', 'Lucía Lee Rodríguez', '382 615 5236'),
(63, 'Sociedad Limitada', '894116346-5', 'Dg. 6 # 157 - 21 Sur.', 'info@foodmarketexpressltda.com', 'Paula Patel López', '340 271 9471'),
(64, 'Sociedad Comandita por Acciones', '638036876-5', 'Tv. 64Este. # 79W - 48 Sur.', 'contacto@megagrocerco.com', 'Amelia Kim Smith', '380 105 8362'),
(65, 'Sociedad Comandita por Acciones', '990470493-1', 'Av. NQS.  # 192 - 85', 'contacto@greeneatsfoodsolutions.com', 'Clara López Pérez', '300 931 5694'),
(66, 'Sociedad Limitada', '439228913-4', 'Dg. 10S# 19 - 74 Sur.', 'contacto@rmconstrucciones.com', 'Renata Fernández García', '342 402 1649'),
(67, 'Sociedad Limitada', '896030817-2', 'Tv. 65M# 14 - 68 Este.', 'contacto@biotechinnovations.com', 'Victoria Pérez Kim', '355 154 3770'),
(68, 'Sociedad Limitada', '705001739-8', 'Cra. 73Este. # 128 Sur. - 43', 'contacto@creativamarketingltda.com', 'Elena Rodríguez Wang', '332 734 2299'),
(69, 'Empresa Unipersonal', '723389632-7', 'Tv. 51Sur. # 89 Este. - 62', 'contacto@creatividadtotalsa.com', 'Olivia Santos Silva', '370 923 2331'),
(70, 'Sociedad Limitada', '133790361-1', 'Auto. Sur. R# 145 - 31', 'info@bargainmartsa.com', 'Gabriela Fernández González', '382 204 6405'),
(71, 'Sociedad Limitada', '594011096-5', 'Tv. 3Bis. # 32 - 18 Sur.', 'info@nutricionsaludablesa.com', 'Natalia Kim López', '315 434 3430'),
(72, 'Sociedad Comandita Simple', '162545175-6', 'Av. 1° de Mayo.  # 48 - 68 Sur.', 'info@energiaverdesolutions.com', 'Julia López Silva', '383 345 2446'),
(73, 'Sociedad Comandita por Acciones', '528075773-6', 'Tv. 17 # 3 - 90 Este.', 'contacto@ecotechinnovations.com', 'Francisca Silva Kim', '398 670 9557'),
(74, 'Empresa Unipersonal', '530127344-4', 'Av. Ciudad de Cali.  # 193 - 78 Sur.', 'contacto@grocerykingltda.com', 'Isidora Wang Rodríguez', '336 122 4384'),
(75, 'Empresa Unipersonal', '357883390-6', 'Dg. 1Bis. # 7 - 44', 'contacto@foodcraftersunipersonal.com', 'Josefina González Pérez', '327 922 1471'),
(76, 'Sociedad Comandita Simple', '124157171-5', 'Cll. 214 # 58 - 65', 'contacto@sabrosos.com', 'Antonella Pérez Rodríguez', '304 420 6083'),
(77, 'Sociedad por Acciones Simplificada', '152914006-5', 'Tv. 8Bis. # 206 - 33 Sur.', 'contacto@constructorainnovadorasac.com', 'Constanza Kim García', '318 658 4133'),
(78, 'Sociedad por Acciones Simplificada', '159626783-3', 'Cra. 93M# 184 - 77', 'info@deliciascaserasespresssa.com', 'Agustina Rodríguez López', '370 282 6276'),
(79, 'Sociedad por Acciones Simplificada', '993602208-7', 'Cll. 73V# 209 - 51 Sur.', 'info@gourmetgrocerysa.com', 'Florencia García Pérez', '389 852 8828'),
(80, 'Sociedad Limitada', '537008407-1', 'Cra. 160 # 52 - 47', 'info@construredsolutions.com', 'Rosario Smith Rodríguez', '321 296 3642'),
(81, 'Sociedad Colectiva', '332288697-3', 'Av. NQS.  # 216 - 81 Este.', 'info@proyectosprogresivossa.com', 'Javiera Kim Wang', '382 190 4439'),
(82, 'Sociedad Colectiva', '397689021-9', 'Auto. Sur. Este. # 131K - 75', 'contacto@alimentosnaturalessas.com', 'Amelia Pérez Kim', '369 496 5837'),
(83, 'Sociedad Colectiva', '185019974-1', 'Tv. 2Q# 96 - 17 Sur.', 'contacto@familymarketexpresssas.com', 'Romina Fernández López', '321 508 3018'),
(84, 'Empresa Unipersonal', '124726093-9', 'Cra. 121Sur. # 209D - 43 Sur.', 'contacto@innovatechtechltda.com', 'Trinidad López Rodríguez', '390 888 4369'),
(85, 'Sociedad por Acciones Simplificada', '192815903-3', 'Dg. 16A# 124 - 89', 'contacto@biomedsolutions.com', 'Francisca García Silva', '387 349 4727'),
(86, 'Sociedad Comandita por Acciones', '824352121-7', 'Av. Jiménez.  # 55 - 12 Este.', 'info@greenenergysas.com', 'Isabella Wang Kim', '358 591 9301'),
(87, 'Sociedad Comandita Simple', '519024041-1', 'Auto. Norte. Este. # 8X - 64 Este.', 'info@savemoresupermercadosltda.com', 'Valentina Rodríguez Pérez', '342 211 6926'),
(88, 'Sociedad Limitada', '981942902-6', 'Cll. 158Bis. # 67 - 48', 'info@saboresdelaabuelagourmet.com', 'Antonia Smith González', '320 977 4072'),
(89, 'Sociedad Colectiva', '979206891-7', 'Av. Jiménez.  # 27 - 28 Sur.', 'info@techinnovatorsea.com', 'Catalina López Kim', '336 792 5941'),
(90, 'Sociedad Comandita por Acciones', '708926531-3', 'Auto. Norte. Este. # 95 - 39', 'info@globaltradingco.com', 'Valeria Kim Wang', '351 627 6699'),
(91, 'Sociedad Limitada', '949999889-1', 'Dg. 10 # 113 - 60 Sur.', 'contacto@creativapublicidad.com', 'Josefina Pérez García', '392 851 3828'),
(92, 'Sociedad Colectiva', '670077316-6', 'Av. Boyacá.  # 80 - 29', 'contacto@grupoxyz.com', 'Martina Wang Smith', '355 310 2948'),
(93, 'Sociedad Anónima', '223506659-2', 'Cll. 97O# 29 - 22', 'info@innovacorp.com', 'Carolina Silva López', '325 242 3724'),
(94, 'Sociedad Limitada', '991026156-9', 'Av. 1° de Mayo.  # 100 - 44 Este.', 'contacto@ecotechsolutions.com', 'Renata García Rodríguez', '381 738 4944'),
(95, 'Empresa Unipersonal', '139796375-4', 'Tv. 36 # 213 - 88 Sur.', 'contacto@deliciosos.com', 'Valentina Kim Silva', '359 609 6461'),
(96, 'Sociedad Comandita Simple', '417073175-4', 'Av. NQS.  # 186 - 67 Sur.', 'info@electroworldcom', 'Florencia Wang López', '306 888 3980'),
(97, 'Sociedad por Acciones Simplificada', '677867871-1', 'Dg. 6 # 138 - 76', 'contacto@biotechsolutions.com', 'Camila Smith Pérez', '376 781 5477'),
(98, 'Sociedad Comandita por Acciones', '187640928-2', 'Cra. 86 # 8 - 86', 'info@construccionesrapidas.com', 'Gabriela Rodríguez Kim', '307 947 3772'),
(99, 'Sociedad Limitada', '264408859-7', 'Av. Jiménez.  # 65 - 89 Sur.', 'info@solucionesverdes.com', 'Fernanda Pérez López', '389 770 1731'),
(100, 'Empresa Asociativa de Trabajo', '483899131-4', 'Av. Jiménez.  # 52 - 17', 'contacto@constructoraprogresiva.com', 'María José López Silva', '307 405 9658');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` smallint(6) NOT NULL,
  `fecha_factura` datetime DEFAULT NULL,
  `id_tipofac` tinyint(4) NOT NULL,
  `cliente_factura` int(11) NOT NULL,
  `total_factura` decimal(8,2) DEFAULT 0.00,
  `descuento_factura` decimal(8,2) DEFAULT 0.00,
  `iva_factura` decimal(8,2) DEFAULT 0.00,
  `subtotal_factura` decimal(8,2) DEFAULT 0.00,
  `saldo_factura` decimal(8,2) DEFAULT 0.00,
  `estado_factura` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `fecha_factura`, `id_tipofac`, `cliente_factura`, `total_factura`, `descuento_factura`, `iva_factura`, `subtotal_factura`, `saldo_factura`, `estado_factura`) VALUES
(1, '2023-10-28 15:29:28', 3, 4, 221759.25, 10.00, 19.00, 177407.29, 0.00, 'I'),
(2, '2023-10-28 15:29:28', 5, 1, 477245.52, 10.00, 19.00, 477245.52, 0.00, 'A'),
(3, '2023-10-28 15:29:28', 2, 3, 590990.97, 10.00, 19.00, 480480.39, 0.00, 'A'),
(4, '2023-10-28 15:29:28', 1, 4, 190655.68, 10.00, 19.00, 179742.78, 0.00, 'A'),
(5, '2023-10-28 15:29:28', 6, 5, 163592.61, 10.00, 19.00, 157300.90, 0.00, 'A'),
(6, '2023-10-28 15:29:28', 5, 4, 283542.44, 10.00, 19.00, 0.00, 0.00, 'A'),
(7, '2023-10-28 15:29:28', 4, 2, 326930.72, 10.00, 19.00, 298695.46, 0.00, 'I'),
(8, '2023-10-28 15:29:28', 3, 1, 820659.53, 10.00, 19.00, 458469.07, 0.00, 'I'),
(9, '2023-10-28 15:29:28', 6, 2, 556221.72, 10.00, 19.00, 244095.73, 0.00, 'A'),
(10, '2023-10-28 15:29:28', 2, 3, 259161.88, 10.00, 19.00, 233479.08, 0.00, 'I'),
(11, '2023-10-28 15:29:28', 3, 4, 296011.57, 10.00, 19.00, 296011.57, 0.00, 'A'),
(12, '2023-10-28 15:29:28', 2, 3, 215124.04, 10.00, 19.00, 0.00, 0.00, 'A'),
(13, '2023-10-28 15:29:28', 1, 5, 427134.35, 10.00, 19.00, 363242.01, 0.00, 'A'),
(14, '2023-10-28 15:29:28', 1, 3, 442186.96, 10.00, 19.00, 374739.72, 0.00, 'A'),
(15, '2023-10-28 15:29:28', 4, 1, 437121.12, 10.00, 19.00, 428532.56, 0.00, 'A'),
(16, '2023-12-01 19:39:00', 1, 2, 250000.00, 10.00, 19.00, 250000.00, 0.00, 'A'),
(17, '2023-12-01 20:35:00', 4, 4, 850000.00, 10.00, 19.00, 850000.00, 0.00, 'I'),
(18, '2023-12-02 07:13:00', 6, 4, 25000.00, 10.00, 19.00, 18225.00, 0.00, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios_de_pago`
--

CREATE TABLE `medios_de_pago` (
  `id_med_pago` int(11) NOT NULL,
  `descrip_med_pago` varchar(45) NOT NULL,
  `estado_med_pago` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medios_de_pago`
--

INSERT INTO `medios_de_pago` (`id_med_pago`, `descrip_med_pago`, `estado_med_pago`) VALUES
(1, 'Efectivo', 'A'),
(2, 'TC-VISA', 'A'),
(3, 'TC-MC', 'A'),
(4, 'Nequi', 'A'),
(5, 'Banco Agrario', 'A'),
(6, 'Banco Caja Social', 'A'),
(7, 'Banco Cooperativo Coopcentral', 'A'),
(8, 'Banco Davivienda', 'A'),
(9, 'Banco De Bogota', 'A'),
(10, 'Banco De Occidente', 'A'),
(11, 'Banco Falabella', 'A'),
(12, 'Banco GNB Sudameris', 'A'),
(13, 'Banco Pichincha S.A.', 'A'),
(14, 'Banco Popular', 'A'),
(15, 'Bancolombia', 'A'),
(16, 'Bancoomeva S.A.', 'A'),
(17, 'Banco BBVA Colombia S.A.', 'A'),
(18, 'Citibank', 'A'),
(19, 'Banco Itaú', 'A'),
(20, 'Confiar Cooperativa Financiera', 'A'),
(21, 'DaviPlata', 'A'),
(22, 'Banco De Las Microfinanzas Bancamia', 'A'),
(23, 'Coltefinanciera', 'A'),
(24, 'Cfa Cooperativa Financiera', 'A'),
(25, 'Banco Credifinanciera', 'A'),
(26, 'Rappipay', 'A'),
(27, 'Cotrafa', 'A'),
(28, 'Banco Santander Colombia', 'A'),
(29, 'NBanco SerfinanzaN', 'A'),
(30, 'Banco Union', 'A'),
(31, 'Financiera Dann Regional - Iris', 'A'),
(32, 'Scotiabank Colpatria', 'A'),
(33, 'Dale', 'A'),
(34, 'Coofinep Cooperativa Financiera', 'A'),
(35, 'Lulo Bank', 'A'),
(36, 'Movii', 'A'),
(37, 'Banco Finandina', 'A'),
(38, 'Banco J.P. Morgan Colombia S.A.', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movproducto`
--

CREATE TABLE `movproducto` (
  `id_mov` int(11) NOT NULL,
  `id_tipomov` tinyint(4) NOT NULL,
  `cantidad_mov` smallint(6) NOT NULL,
  `id_producto` smallint(6) DEFAULT NULL,
  `fecha_movimiento` datetime NOT NULL,
  `estado_movimiento` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` smallint(6) NOT NULL,
  `nombre_pais` varchar(40) NOT NULL,
  `estado_pais` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre_pais`, `estado_pais`) VALUES
(1, 'AFGANISTAN', 'A'),
(2, 'ALBANIA', 'I'),
(3, 'ALEMANIA', 'I'),
(4, 'ANDORRA', 'I'),
(5, 'ANGOLA', 'A'),
(6, 'ANGUILLA', 'I'),
(7, 'ANTIGUA Y BARBUDA', 'A'),
(8, 'ANTILLAS HOLANDESAS', 'I'),
(9, 'ARABIA SAUDI', 'A'),
(10, 'ARGELIA', 'I'),
(11, 'ARGENTINA', 'A'),
(12, 'ARMENIA', 'A'),
(13, 'ARUBA', 'I'),
(14, 'AUSTRALIA', 'I'),
(15, 'AUSTRIA', 'A'),
(16, 'AZERBAIYAN', 'A'),
(17, 'BAHAMAS', 'I'),
(18, 'BAHREIN', 'A'),
(19, 'BANGLADESH', 'I'),
(20, 'BARBADOS', 'I'),
(21, 'BELARUS', 'A'),
(22, 'BELGICA', 'I'),
(23, 'BELICE', 'A'),
(24, 'BENIN', 'I'),
(25, 'BERMUDAS', 'A'),
(26, 'BHUTÁN', 'A'),
(27, 'BOLIVIA', 'A'),
(28, 'BOSNIA Y HERZEGOVINA', 'A'),
(29, 'BOTSWANA', 'I'),
(30, 'BRASIL', 'A'),
(31, 'BRUNEI', 'I'),
(32, 'BULGARIA', 'A'),
(33, 'BURKINA FASO', 'I'),
(34, 'BURUNDI', 'I'),
(35, 'CABO VERDE', 'I'),
(36, 'CAMBOYA', 'I'),
(37, 'CAMERUN', 'I'),
(38, 'CANADA', 'A'),
(39, 'CHAD', 'A'),
(40, 'CHILE', 'A'),
(41, 'CHINA', 'I'),
(42, 'CHIPRE', 'I'),
(43, 'COLOMBIA', 'A'),
(44, 'COMORES', 'I'),
(45, 'CONGO', 'A'),
(46, 'COREA', 'A'),
(47, 'COREA DEL NORTE ', 'I'),
(48, 'COSTA DE MARFIL', 'I'),
(49, 'COSTA RICA', 'A'),
(50, 'CROACIA', 'I'),
(51, 'CUBA', 'A'),
(52, 'DINAMARCA', 'A'),
(53, 'DJIBOUTI', 'I'),
(54, 'DOMINICA', 'A'),
(55, 'ECUADOR', 'A'),
(56, 'EGIPTO', 'I'),
(57, 'EL SALVADOR', 'A'),
(58, 'EMIRATOS ARABES UNIDOS', 'I'),
(59, 'ERITREA', 'A'),
(60, 'ESLOVENIA', 'I'),
(61, 'ESPAÑA', 'A'),
(62, 'ESTADOS UNIDOS DE AMERICA', 'A'),
(63, 'ESTONIA', 'A'),
(64, 'ETIOPIA', 'I'),
(65, 'FIJI', 'I'),
(66, 'FILIPINAS', 'I'),
(67, 'FINLANDIA', 'A'),
(68, 'FRANCIA', 'A'),
(69, 'GABON', 'I'),
(70, 'GAMBIA', 'I'),
(71, 'GEORGIA', 'A'),
(72, 'GHANA', 'I'),
(73, 'GIBRALTAR', 'A'),
(74, 'GRANADA', 'A'),
(75, 'GRECIA', 'A'),
(76, 'GROENLANDIA', 'I'),
(77, 'GUADALUPE', 'I'),
(78, 'GUAM', 'A'),
(79, 'GUATEMALA', 'A'),
(80, 'GUAYANA FRANCESA', 'A'),
(81, 'GUERNESEY', 'A'),
(82, 'GUINEA', 'I'),
(83, 'GUINEA ECUATORIAL', 'I'),
(84, 'GUINEA-BISSAU', 'A'),
(85, 'GUYANA', 'A'),
(86, 'HAITI', 'A'),
(87, 'HONDURAS', 'A'),
(88, 'HONG KONG', 'A'),
(89, 'HUNGRIA', 'A'),
(90, 'INDIA', 'A'),
(91, 'INDONESIA', 'A'),
(92, 'IRAN', 'I'),
(93, 'IRAQ', 'I'),
(94, 'IRLANDA', 'A'),
(95, 'ISLA DE MAN', 'A'),
(96, 'ISLA NORFOLK', 'I'),
(97, 'ISLANDIA', 'A'),
(98, 'ISLAS ALAND', 'I'),
(99, 'ISLAS CAIMÁN', 'I'),
(100, 'ISLAS COOK', 'I'),
(101, 'ISLAS DEL CANAL', 'I'),
(102, 'ISLAS FEROE', 'A'),
(103, 'ISLAS MALVINAS', 'I'),
(104, 'ISLAS MARIANAS DEL NORTE', 'A'),
(105, 'ISLAS MARSHALL', 'I'),
(106, 'ISLAS PITCAIRN', 'A'),
(107, 'ISLAS SALOMON', 'I'),
(108, 'ISLAS TURCAS Y CAICOS', 'I'),
(109, 'ISLAS VIRGENES BRITANICAS', 'A'),
(110, 'ISLAS VÍRGENES DE LOS ESTADOS UNIDOS', 'A'),
(111, 'ISRAEL', 'A'),
(112, 'ITALIA', 'I'),
(113, 'JAMAICA', 'A'),
(114, 'JAPON', 'A'),
(115, 'JERSEY', 'A'),
(116, 'JORDANIA', 'I'),
(117, 'KAZAJSTAN', 'A'),
(118, 'KENIA', 'I'),
(119, 'KIRGUISTAN', 'I'),
(120, 'KIRIBATI', 'I'),
(121, 'KUWAIT', 'I'),
(122, 'LAOS', 'I'),
(123, 'LESOTHO', 'I'),
(124, 'LETONIA', 'I'),
(125, 'LIBANO', 'I'),
(126, 'LIBERIA', 'A'),
(127, 'LIBIA', 'I'),
(128, 'LIECHTENSTEIN', 'I'),
(129, 'LITUANIA', 'A'),
(130, 'LUXEMBURGO', 'A'),
(131, 'MACAO', 'A'),
(132, 'MACEDONIA ', 'I'),
(133, 'MADAGASCAR', 'I'),
(134, 'MALASIA', 'I'),
(135, 'MALAWI', 'I'),
(136, 'MALDIVAS', 'I'),
(137, 'MALI', 'I'),
(138, 'MALTA', 'A'),
(139, 'MARRUECOS', 'A'),
(140, 'MARTINICA', 'I'),
(141, 'MAURICIO', 'I'),
(142, 'MAURITANIA', 'A'),
(143, 'MAYOTTE', 'A'),
(144, 'MEXICO', 'A'),
(145, 'MICRONESIA', 'A'),
(146, 'MOLDAVIA', 'A'),
(147, 'MONACO', 'I'),
(148, 'MONGOLIA', 'I'),
(149, 'MONTENEGRO', 'A'),
(150, 'MONTSERRAT', 'A'),
(151, 'MOZAMBIQUE', 'I'),
(152, 'MYANMAR', 'I'),
(153, 'NAMIBIA', 'I'),
(154, 'NAURU', 'A'),
(155, 'NEPAL', 'I'),
(156, 'NICARAGUA', 'A'),
(157, 'NIGER', 'A'),
(158, 'NIGERIA', 'I'),
(159, 'NIUE', 'A'),
(160, 'NORUEGA', 'I'),
(161, 'NUEVA CALEDONIA', 'I'),
(162, 'NUEVA ZELANDA', 'A'),
(163, 'OMAN', 'I'),
(164, 'PAISES BAJOS', 'I'),
(165, 'PAKISTAN', 'A'),
(166, 'PALAOS', 'A'),
(167, 'PALESTINA', 'I'),
(168, 'PANAMA', 'A'),
(169, 'PAPUA NUEVA GUINEA', 'A'),
(170, 'PARAGUAY', 'A'),
(171, 'PERU', 'A'),
(172, 'POLINESIA FRANCESA', 'I'),
(173, 'POLONIA', 'I'),
(174, 'PORTUGAL', 'I'),
(175, 'PUERTO RICO', 'A'),
(176, 'QATAR', 'A'),
(177, 'REINO UNIDO', 'A'),
(178, 'REP.DEMOCRATICA DEL CONGO', 'I'),
(179, 'REPUBLICA CENTROAFRICANA', 'A'),
(180, 'REPUBLICA CHECA', 'A'),
(181, 'REPUBLICA DOMINICANA', 'A'),
(182, 'REPUBLICA ESLOVACA', 'A'),
(183, 'REUNION', 'A'),
(184, 'RUANDA', 'A'),
(185, 'RUMANIA', 'I'),
(186, 'RUSIA', 'I'),
(187, 'SAHARA OCCIDENTAL', 'I'),
(188, 'SAMOA', 'A'),
(189, 'SAMOA AMERICANA', 'A'),
(190, 'SAN BARTOLOME', 'A'),
(191, 'SAN CRISTOBAL Y NIEVES', 'I'),
(192, 'SAN MARINO', 'I'),
(193, 'SAN MARTIN (PARTE FRANCESA)', 'A'),
(194, 'SAN PEDRO Y MIQUELON ', 'A'),
(195, 'SAN VICENTE Y LAS GRANADINAS', 'I'),
(196, 'SANTA HELENA', 'I'),
(197, 'SANTA LUCIA', 'I'),
(198, 'SANTA SEDE', 'A'),
(199, 'SANTO TOME Y PRINCIPE', 'A'),
(200, 'SENEGAL', 'I'),
(201, 'SERBIA', 'A'),
(202, 'SEYCHELLES', 'I'),
(203, 'SIERRA LEONA', 'I'),
(204, 'SINGAPUR', 'A'),
(205, 'SIRIA', 'I'),
(206, 'SOMALIA', 'A'),
(207, 'SRI LANKA', 'I'),
(208, 'SUDAFRICA', 'A'),
(209, 'SUDAN', 'I'),
(210, 'SUECIA', 'I'),
(211, 'SUIZA', 'A'),
(212, 'SURINAM', 'A'),
(213, 'SVALBARD Y JAN MAYEN', 'I'),
(214, 'SWAZILANDIA', 'I'),
(215, 'TADYIKISTAN', 'A'),
(216, 'TAILANDIA', 'I'),
(217, 'TANZANIA', 'A'),
(218, 'TIMOR ORIENTAL', 'A'),
(219, 'TOGO', 'I'),
(220, 'TOKELAU', 'I'),
(221, 'TONGA', 'A'),
(222, 'TRINIDAD Y TOBAGO', 'A'),
(223, 'TUNEZ', 'A'),
(224, 'TURKMENISTAN', 'A'),
(225, 'TURQUIA', 'I'),
(226, 'TUVALU', 'A'),
(227, 'UCRANIA', 'A'),
(228, 'UGANDA', 'A'),
(229, 'URUGUAY', 'A'),
(230, 'UZBEKISTAN', 'A'),
(231, 'VANUATU', 'I'),
(232, 'VENEZUELA', 'A'),
(233, 'VIETNAM', 'I'),
(234, 'WALLIS Y FORTUNA', 'I'),
(235, 'YEMEN', 'I'),
(236, 'ZAMBIA', 'I'),
(237, 'ZIMBABWE', 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro_general`
--

CREATE TABLE `parametro_general` (
  `id_parametro_general` tinyint(4) NOT NULL,
  `nombre_parametro` varchar(10) NOT NULL,
  `descripcion_parametro` varchar(60) NOT NULL,
  `valor_parametro` varchar(100) NOT NULL,
  `tipo_parametro` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` smallint(6) NOT NULL,
  `id_categoria` smallint(6) NOT NULL,
  `cod_producto` varchar(12) NOT NULL,
  `des_producto` varchar(60) NOT NULL,
  `exis_producto` smallint(6) DEFAULT 0,
  `bodega_producto` smallint(6) DEFAULT 0,
  `precio_venta_act` decimal(8,2) DEFAULT 0.00,
  `precio_venta_ant` decimal(8,2) DEFAULT 0.00,
  `dscto_minimo` smallint(6) DEFAULT 0,
  `dscto_maximo` smallint(6) DEFAULT 0,
  `costo_venta` decimal(8,2) DEFAULT 0.00,
  `margen_utilidad` decimal(5,2) DEFAULT 0.00,
  `valor_iva` decimal(5,2) DEFAULT 0.00,
  `stock_minimo` smallint(6) DEFAULT 0,
  `stock_maximo` smallint(6) DEFAULT 0,
  `estado_producto` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `id_categoria`, `cod_producto`, `des_producto`, `exis_producto`, `bodega_producto`, `precio_venta_act`, `precio_venta_ant`, `dscto_minimo`, `dscto_maximo`, `costo_venta`, `margen_utilidad`, `valor_iva`, `stock_minimo`, `stock_maximo`, `estado_producto`) VALUES
(1, 4, '22554', 'Limón Tahití Malla TAEQ 1000 gr', 80, 100, 2216.00, 3390.00, 10, 35, 3390.00, 10.00, 19.00, 50, 200, 'A'),
(2, 4, '85369', 'Aguacate Hass 1 und', 96, 100, 1072.00, 1340.00, 10, 50, 1340.00, 10.00, 10.00, 50, 200, 'A'),
(3, 5, '25478', 'Arroz Blanco Arroba DIANA 12500 gr', 95, 150, 49585.00, 52750.00, 10, 50, 52750.00, 10.00, 19.00, 50, 200, 'A'),
(4, 5, '1023046', ' Café Fuerte Tostado Y Molido X 600 gr', 32, 95, 16575.00, 22100.00, 10, 50, 22100.00, 10.00, 19.00, 50, 200, 'A'),
(5, 5, '75286', 'Azucar Alta Pureza MANUELITA 2000 gr', 82, 150, 6329.00, 8670.00, 10, 50, 8670.00, 10.00, 19.00, 50, 200, 'A'),
(6, 1, '52789', 'Queso Tipo Cheddar COLANTA', 35, 75, 11388.00, 14235.00, 10, 50, 14235.00, 10.00, 19.00, 50, 200, 'A'),
(7, 10, '89823', 'Té HATSU 2400 ml', 85, 90, 20250.00, 22500.00, 10, 50, 22500.00, 10.00, 19.00, 50, 200, 'A'),
(8, 10, '75842', 'Papa Familiar Pollo MARGARITA 105 gr', 82, 99, 4634.00, 7130.00, 10, 50, 7130.00, 10.00, 19.00, 50, 200, 'A'),
(9, 1, '7553', 'ALIM LCTEO CUCHAR M&M FOURP ALQUERIA 400 gr', 48, 63, 8800.00, 11200.00, 10, 50, 11200.00, 10.00, 19.00, 50, 200, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` tinyint(4) NOT NULL,
  `id_empresa` tinyint(4) NOT NULL,
  `NIT_Proveedor` varchar(11) NOT NULL,
  `Nom_Proveedor` varchar(255) NOT NULL,
  `Ciudad_Proveedor` varchar(255) DEFAULT NULL,
  `Dir_Proveedor` varchar(255) DEFAULT NULL,
  `Tel_Proveedor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `id_empresa`, `NIT_Proveedor`, `Nom_Proveedor`, `Ciudad_Proveedor`, `Dir_Proveedor`, `Tel_Proveedor`) VALUES
(7, 1, '765790341-8', 'Agrícola Hoja Redonda S.A.S', 'Boyaca', 'Cra. 19H# 50 - 52 Sur.', '3232461614'),
(8, 77, '152914006-5', 'Campesino Fresco ltda', 'D.C.', 'Cra. 86 # 8 - 86', '3079473772'),
(9, 52, '337431873-5', 'Fruitex Farms S.C.', 'Cocorna', 'Cll. 83B# 79 - 58', '3561797020'),
(10, 38, '355814526-7', 'AgroVida S.A.', 'Toledo', 'Dg. 28 # 41 - 48', '3803349391'),
(11, 35, '586716998-4', 'EcoCampo S.A.S', 'Nariño', 'Cra. 6Bis. # 49 - 67', '3476218466'),
(12, 99, '264408859-7', 'CampoDirecto', 'La Vega', 'Dg. 1Bis. # 7 - 44', '3279221471');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recaudo`
--

CREATE TABLE `recaudo` (
  `id_recaudo` int(11) NOT NULL,
  `id_cliente_recaudo` int(11) NOT NULL,
  `id_factura_recaudo` smallint(6) NOT NULL,
  `valor_racaudo` bigint(20) DEFAULT 0,
  `fecha_recaudo` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_compra`
--

CREATE TABLE `solicitud_compra` (
  `id_solicitud` tinyint(4) NOT NULL,
  `id_empleado_solicita` bigint(20) DEFAULT NULL,
  `id_producto` smallint(6) DEFAULT NULL,
  `cntd_producto` smallint(6) DEFAULT 0,
  `val_total_compra` decimal(8,2) DEFAULT 0.00,
  `fecha_solicitud` datetime NOT NULL,
  `estado_solicitud` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_compra`
--

INSERT INTO `solicitud_compra` (`id_solicitud`, `id_empleado_solicita`, `id_producto`, `cntd_producto`, `val_total_compra`, `fecha_solicitud`, `estado_solicitud`) VALUES
(1, 1359751023, 4, 30, 497250.00, '2023-12-02 10:42:44', 'E'),
(2, 1359751023, 6, 50, 569400.00, '2023-12-02 10:42:44', 'E'),
(3, 1359751023, 7, 29, 587000.00, '2023-12-02 10:42:44', 'E'),
(4, 1025756358, 9, 45, 504000.00, '2023-12-02 10:42:44', 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomov`
--

CREATE TABLE `tipomov` (
  `id_tipomov` tinyint(4) NOT NULL,
  `nom_tipomov` varchar(45) NOT NULL,
  `estado_tipomov` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipomov`
--

INSERT INTO `tipomov` (`id_tipomov`, `nom_tipomov`, `estado_tipomov`) VALUES
(1, 'Actualización de precios', 'A'),
(2, 'Ingreso por Compras', 'A'),
(3, 'Entrada por Ajuste', 'A'),
(4, 'Salida por Ajuste', 'A'),
(5, 'Ventas Crédito', 'A'),
(6, 'Ventas Contado', 'A'),
(7, 'Ingreso a Bodega', 'A'),
(8, 'Salida de Bodega', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cliente`
--

CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` tinyint(4) NOT NULL,
  `descripcion_tcliente` varchar(40) NOT NULL,
  `estado_tcliente` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_cliente`
--

INSERT INTO `tipo_cliente` (`id_tipo_cliente`, `descripcion_tcliente`, `estado_tcliente`) VALUES
(1, 'Persona Juridica', 'A'),
(2, 'Persona Natural', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_documento` tinyint(4) NOT NULL,
  `nombre_documento` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_documento`, `nombre_documento`) VALUES
(1, 'Cédula de Ciudadanía'),
(2, 'Cédula de Extranjería'),
(3, 'NIT'),
(4, 'Pasaporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_factura`
--

CREATE TABLE `tipo_factura` (
  `id_tipofac` tinyint(4) NOT NULL,
  `nom_tipofac` varchar(45) NOT NULL,
  `estado_tipofac` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_factura`
--

INSERT INTO `tipo_factura` (`id_tipofac`, `nom_tipofac`, `estado_tipofac`) VALUES
(1, 'Factura ordinaria', 'A'),
(2, 'Factura simplificada o ticket', 'I'),
(3, 'Factura proforma', 'I'),
(4, 'Factura rectificativa', 'A'),
(5, 'Factura recapitulativa', 'A'),
(6, 'Factura electrónica', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL,
  `nom_ape_usuario` varchar(100) NOT NULL,
  `e_mail_usuario` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_usuario` varchar(100) NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `estado_usuario` varchar(1) NOT NULL,
  `id_tipo_usuario` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nom_ape_usuario`, `e_mail_usuario`, `username`, `password_usuario`, `fecha_registro`, `estado_usuario`, `id_tipo_usuario`) VALUES
(1, 'Andrea Moreno Restrepo', 'amorenor@gmail.com', 'amorenor', 'amorenor12345', '2023-11-28 20:24:06', 'A', 1),
(2, 'Felipe Molano Jiménez ', 'fmolanoj@gmail.com', 'fmolanoj', 'fmolanoj12345', '2023-11-28 20:24:06', 'A', 2),
(3, 'Juan Sebatián Gómez Umaña', 'jsgomezu@gmail.com', 'jsgomezu', 'jsgomezu12345', '2023-11-28 20:27:35', 'A', 3),
(4, 'Laura Posada Tobon', 'lposadat@gmail.com', 'lposadat', 'lposadat12345', '2023-11-28 20:28:34', 'A', 4),
(5, 'Germán Garzón Pulgarín', 'ggarzonp@gmail.com', 'ggarzonp', 'ggarzonp12345', '2023-11-28 20:29:28', 'A', 5),
(6, 'Gustavo Hincapie Ruiz', 'ghincapier@gmail.com', 'ghincapier', 'ghincapier12345', '2023-11-28 20:30:29', 'A', 6),
(7, 'Santiago Montealegre Soto', 'smontealegres@gmail.com', 'smontealegres', 'smontealegres12345', '2023-11-28 20:31:44', 'A', 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_dpto_ciudad` (`id_dpto_ciudad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_ciudad` (`id_ciudad`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_solicitud` (`id_solicitud`),
  ADD KEY `id_empleado_solicita` (`id_empleado_solicita`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `ctg_tipo_usuario`
--
ALTER TABLE `ctg_tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_dpto`),
  ADD KEY `id_pais_dpto` (`id_pais_dpto`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_detalle_factura`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `detalle_recaudo`
--
ALTER TABLE `detalle_recaudo`
  ADD PRIMARY KEY (`id_detalle_recaudo`),
  ADD KEY `id_recaudo` (`id_recaudo`),
  ADD KEY `id_med_pago` (`id_med_pago`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_tipofac` (`id_tipofac`);

--
-- Indices de la tabla `medios_de_pago`
--
ALTER TABLE `medios_de_pago`
  ADD PRIMARY KEY (`id_med_pago`);

--
-- Indices de la tabla `movproducto`
--
ALTER TABLE `movproducto`
  ADD PRIMARY KEY (`id_mov`),
  ADD KEY `id_tipomov` (`id_tipomov`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `parametro_general`
--
ALTER TABLE `parametro_general`
  ADD PRIMARY KEY (`id_parametro_general`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `recaudo`
--
ALTER TABLE `recaudo`
  ADD PRIMARY KEY (`id_recaudo`),
  ADD KEY `id_cliente_recaudo` (`id_cliente_recaudo`),
  ADD KEY `id_factura_recaudo` (`id_factura_recaudo`);

--
-- Indices de la tabla `solicitud_compra`
--
ALTER TABLE `solicitud_compra`
  ADD PRIMARY KEY (`id_solicitud`),
  ADD KEY `id_empleado_solicita` (`id_empleado_solicita`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `tipomov`
--
ALTER TABLE `tipomov`
  ADD PRIMARY KEY (`id_tipomov`);

--
-- Indices de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  ADD PRIMARY KEY (`id_tipo_cliente`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `tipo_factura`
--
ALTER TABLE `tipo_factura`
  ADD PRIMARY KEY (`id_tipofac`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1119;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ctg_tipo_usuario`
--
ALTER TABLE `ctg_tipo_usuario`
  MODIFY `id_tipo_usuario` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_dpto` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle_factura` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_recaudo`
--
ALTER TABLE `detalle_recaudo`
  MODIFY `id_detalle_recaudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_empresa` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `medios_de_pago`
--
ALTER TABLE `medios_de_pago`
  MODIFY `id_med_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `movproducto`
--
ALTER TABLE `movproducto`
  MODIFY `id_mov` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de la tabla `parametro_general`
--
ALTER TABLE `parametro_general`
  MODIFY `id_parametro_general` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `recaudo`
--
ALTER TABLE `recaudo`
  MODIFY `id_recaudo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitud_compra`
--
ALTER TABLE `solicitud_compra`
  MODIFY `id_solicitud` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipomov`
--
ALTER TABLE `tipomov`
  MODIFY `id_tipomov` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tipo_cliente`
--
ALTER TABLE `tipo_cliente`
  MODIFY `id_tipo_cliente` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_documento` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipo_factura`
--
ALTER TABLE `tipo_factura`
  MODIFY `id_tipofac` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_dpto_ciudad`) REFERENCES `departamento` (`id_dpto`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_solicitud`) REFERENCES `solicitud_compra` (`id_solicitud`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_empleado_solicita`) REFERENCES `empleado` (`id_empleado`),
  ADD CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `compra_ibfk_4` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_pais_dpto`) REFERENCES `pais` (`id_pais`);

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  ADD CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `detalle_recaudo`
--
ALTER TABLE `detalle_recaudo`
  ADD CONSTRAINT `detalle_recaudo_ibfk_1` FOREIGN KEY (`id_recaudo`) REFERENCES `recaudo` (`id_recaudo`),
  ADD CONSTRAINT `detalle_recaudo_ibfk_2` FOREIGN KEY (`id_med_pago`) REFERENCES `medios_de_pago` (`id_med_pago`);

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_tipofac`) REFERENCES `tipo_factura` (`id_tipofac`);

--
-- Filtros para la tabla `movproducto`
--
ALTER TABLE `movproducto`
  ADD CONSTRAINT `movproducto_ibfk_1` FOREIGN KEY (`id_tipomov`) REFERENCES `tipomov` (`id_tipomov`),
  ADD CONSTRAINT `movproducto_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id_empresa`);

--
-- Filtros para la tabla `recaudo`
--
ALTER TABLE `recaudo`
  ADD CONSTRAINT `recaudo_ibfk_1` FOREIGN KEY (`id_cliente_recaudo`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `recaudo_ibfk_2` FOREIGN KEY (`id_factura_recaudo`) REFERENCES `factura` (`id_factura`);

--
-- Filtros para la tabla `solicitud_compra`
--
ALTER TABLE `solicitud_compra`
  ADD CONSTRAINT `solicitud_compra_ibfk_1` FOREIGN KEY (`id_empleado_solicita`) REFERENCES `empleado` (`id_empleado`),
  ADD CONSTRAINT `solicitud_compra_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `ctg_tipo_usuario` (`id_tipo_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
