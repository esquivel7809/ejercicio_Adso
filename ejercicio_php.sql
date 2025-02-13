-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 14:01:49
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
-- Base de datos: `ejercicio_php`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambiente`
--

CREATE TABLE `ambiente` (
  `id_amb` int(4) NOT NULL,
  `id_nave` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ambiente`
--

INSERT INTO `ambiente` (`id_amb`, `id_nave`) VALUES
(1101, 1),
(1102, 1),
(1103, 1),
(1104, 1),
(1105, 1),
(1106, 1),
(1107, 1),
(1108, 1),
(1109, 1),
(1110, 1),
(1201, 1),
(1202, 1),
(1203, 1),
(1204, 1),
(1205, 1),
(1206, 1),
(1207, 1),
(1208, 1),
(1209, 1),
(1210, 1),
(2101, 2),
(2102, 2),
(2103, 2),
(2104, 2),
(2105, 2),
(2106, 2),
(2107, 2),
(2108, 2),
(2109, 2),
(2110, 2),
(2201, 2),
(2202, 2),
(2203, 2),
(2204, 2),
(2205, 2),
(2206, 2),
(2207, 2),
(2208, 2),
(2209, 2),
(2210, 2),
(3101, 3),
(3102, 3),
(3103, 3),
(3104, 3),
(3105, 3),
(3106, 3),
(3107, 3),
(3108, 3),
(3109, 3),
(3110, 3),
(3201, 3),
(3202, 3),
(3203, 3),
(3204, 3),
(3205, 3),
(3206, 3),
(3207, 3),
(3208, 3),
(3209, 3),
(3210, 3),
(4101, 4),
(4102, 4),
(4103, 4),
(4104, 4),
(4105, 4),
(4106, 4),
(4107, 4),
(4108, 4),
(4109, 4),
(4110, 4),
(4201, 4),
(4202, 4),
(4203, 4),
(4204, 4),
(4205, 4),
(4206, 4),
(4207, 4),
(4208, 4),
(4209, 4),
(4210, 4),
(5101, 5),
(5102, 5),
(5103, 5),
(5104, 5),
(5105, 5),
(5106, 5),
(5107, 5),
(5108, 5),
(5109, 5),
(5110, 5),
(5201, 5),
(5202, 5),
(5203, 5),
(5204, 5),
(5205, 5),
(5206, 5),
(5207, 5),
(5208, 5),
(5209, 5),
(5210, 5),
(6101, 6),
(6102, 6),
(6103, 6),
(6104, 6),
(6105, 6),
(6106, 6),
(6107, 6),
(6108, 6),
(6109, 6),
(6110, 6),
(6201, 6),
(6202, 6),
(6203, 6),
(6204, 6),
(6205, 6),
(6206, 6),
(6207, 6),
(6208, 6),
(6209, 6),
(6210, 6),
(7101, 7),
(7102, 7),
(7103, 7),
(7104, 7),
(7105, 7),
(7106, 7),
(7107, 7),
(7108, 7),
(7109, 7),
(7110, 7),
(7201, 7),
(7202, 7),
(7203, 7),
(7204, 7),
(7205, 7),
(7206, 7),
(7207, 7),
(7208, 7),
(7209, 7),
(7210, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asig_tecnica`
--

CREATE TABLE `asig_tecnica` (
  `id` int(11) NOT NULL,
  `ficha` int(11) NOT NULL,
  `docum` int(11) NOT NULL,
  `id_compet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asig_tecnica`
--

INSERT INTO `asig_tecnica` (`id`, `ficha`, `docum`, `id_compet`) VALUES
(7, 1111111, 93401268, 1),
(8, 2222222, 65782435, 1),
(9, 3333333, 28541804, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asig_transv`
--

CREATE TABLE `asig_transv` (
  `id` int(11) NOT NULL,
  `ficha` int(11) NOT NULL,
  `docum_trans` int(11) NOT NULL,
  `lun` varchar(10) DEFAULT NULL,
  `mar` varchar(10) DEFAULT NULL,
  `mier` varchar(10) DEFAULT NULL,
  `ju` varchar(10) DEFAULT NULL,
  `vie` varchar(10) DEFAULT NULL,
  `sab` varchar(10) DEFAULT NULL,
  `dom` varchar(10) DEFAULT NULL,
  `id_trim` int(11) NOT NULL,
  `id_compet` int(11) NOT NULL,
  `id_jornada` int(11) DEFAULT NULL,
  `id_horario` int(11) DEFAULT NULL,
  `id_detal_trim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asig_transv`
--

INSERT INTO `asig_transv` (`id`, `ficha`, `docum_trans`, `lun`, `mar`, `mier`, `ju`, `vie`, `sab`, `dom`, `id_trim`, `id_compet`, `id_jornada`, `id_horario`, `id_detal_trim`) VALUES
(201, 1111111, 14298041, '0', '1', '0', '1', '0', '0', '0', 1, 37802, 3, 1, 0),
(202, 1111111, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37800, 5, 37, 0),
(203, 1111111, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37799, 5, 37, 0),
(204, 1111111, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 38558, 5, 37, 0),
(205, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37799, 5, 37, 0),
(206, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 38560, 5, 37, 0),
(207, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37801, 5, 37, 0),
(208, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37714, 5, 37, 0),
(209, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37800, 5, 37, 0),
(210, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37371, 5, 37, 0),
(211, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37802, 5, 37, 0),
(212, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37714, 5, 37, 0),
(213, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 38558, 5, 37, 0),
(214, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 38561, 5, 37, 0),
(215, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 36180, 5, 37, 0),
(216, 2222222, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 37714, 5, 37, 0),
(217, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37799, 5, 37, 0),
(218, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 38560, 5, 37, 0),
(219, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 37714, 5, 37, 0),
(220, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37800, 5, 37, 0),
(221, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37801, 5, 37, 0),
(222, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 37714, 5, 37, 0),
(223, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 36180, 5, 37, 0),
(224, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 37802, 5, 37, 0),
(225, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 37714, 5, 37, 0),
(226, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 37371, 5, 37, 0),
(227, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 37714, 5, 37, 0),
(228, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 38199, 5, 37, 0),
(229, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 37714, 5, 37, 0),
(230, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 38561, 5, 37, 0),
(231, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 37714, 5, 37, 0),
(232, 3333333, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 38558, 5, 37, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencia`
--

CREATE TABLE `competencia` (
  `id_compe` int(11) NOT NULL,
  `competencia` varchar(90) NOT NULL,
  `id_tip_comp` int(11) NOT NULL,
  `id_transvers` int(11) NOT NULL,
  `id_formacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `competencia`
--

INSERT INTO `competencia` (`id_compe`, `competencia`, `id_tip_comp`, `id_transvers`, `id_formacion`) VALUES
(0, 'Competencia Tecnica', 1, 20, 0),
(1, 'Gerente Grupo', 1, 20, 0),
(2, 'Etapa Practica', 1, 20, 0),
(36180, 'Enrique Low Murtra', 1, 4, 0),
(37371, 'Utilizar herramientas informáticas', 1, 20, 0),
(37714, ' Interactuar en Lengua Inglesa', 2, 2, 0),
(37799, 'Aplicar practicas de protección Ambiental', 2, 11, 0),
(37800, 'Generar hábitos saludables', 2, 8, 0),
(37801, 'Aplicación Ciencias Naturales', 2, 12, 0),
(37802, 'Desarrollar procesos de comunicación', 2, 3, 0),
(38199, 'Orientar Investigación', 2, 9, 0),
(38356, 'Implementar la Solución de Software', 1, 20, 2),
(38362, 'Diseñar la Solución de Software', 1, 20, 2),
(38367, 'Estructurar propuesta técnica', 1, 20, 2),
(38368, 'Desarrollar Solución Software', 1, 20, 2),
(38369, 'Controlar calidad del servicio', 1, 20, 2),
(38376, 'Evaluar Requisitos', 1, 20, 2),
(38392, 'Establecer Requisitos', 1, 20, 2),
(38558, 'Ejercer derechos fundamentales', 2, 7, 0),
(38560, 'Razonar cuantitativamente', 2, 1, 0),
(38561, 'Gestionar procesos emprendimiento', 2, 5, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_trans`
--

CREATE TABLE `detalle_trans` (
  `id_det_trans` int(11) NOT NULL,
  `documen` int(11) NOT NULL,
  `id_transv` int(11) NOT NULL,
  `asignado` varchar(2) NOT NULL DEFAULT 'Si'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_trans`
--

INSERT INTO `detalle_trans` (`id_det_trans`, `documen`, `id_transv`, `asignado`) VALUES
(1, 78873733, 2, 'Si'),
(2, 1113621557, 2, 'Si'),
(3, 26795318, 9, 'Si'),
(4, 38364891, 4, 'Si'),
(7, 1110494781, 3, 'Si'),
(8, 1110520737, 2, 'Si'),
(9, 93154220, 2, 'Si'),
(10, 1110457664, 2, 'Si'),
(11, 1085288558, 2, 'Si'),
(12, 65709757, 4, 'Si'),
(13, 65630769, 11, 'Si'),
(14, 14298041, 3, 'Si'),
(15, 14215420, 1, 'Si'),
(16, 93407251, 11, 'Si'),
(17, 1110481685, 2, 'Si'),
(18, 1110555849, 2, 'Si'),
(19, 65552524, 11, 'Si'),
(20, 28551015, 8, 'Si'),
(21, 1110538532, 2, 'Si'),
(22, 65773261, 1, 'Si'),
(23, 13821090, 7, 'Si'),
(24, 93368084, 5, 'Si'),
(25, 1110477623, 9, 'Si'),
(26, 14231945, 7, 'Si'),
(27, 65631596, 5, 'Si'),
(28, 38246775, 11, 'Si'),
(29, 65630425, 9, 'Si'),
(30, 1110449153, 9, 'Si'),
(31, 1110456488, 9, 'Si'),
(32, 28549431, 2, 'Si'),
(33, 1067711012, 9, 'Si'),
(34, 65775642, 7, 'Si'),
(35, 1, 13, 'Si'),
(36, 93409436, 21, 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detal_form`
--

CREATE TABLE `detal_form` (
  `id` int(11) NOT NULL,
  `ficha` int(11) NOT NULL,
  `docum` int(11) NOT NULL,
  `id_compet` int(11) NOT NULL,
  `id_trimestre` int(11) DEFAULT NULL,
  `id_hora` int(11) DEFAULT NULL,
  `id_detal_trim` int(11) NOT NULL,
  `lun` varchar(1) DEFAULT NULL,
  `mart` varchar(1) DEFAULT NULL,
  `mierc` varchar(1) DEFAULT NULL,
  `juev` varchar(1) DEFAULT NULL,
  `vier` varchar(1) DEFAULT NULL,
  `sab` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deta_trim`
--

CREATE TABLE `deta_trim` (
  `id_detal_trim` int(11) NOT NULL,
  `f_ini_trim` date NOT NULL,
  `f_fin_trim` date NOT NULL,
  `est_trim` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `deta_trim`
--

INSERT INTO `deta_trim` (`id_detal_trim`, `f_ini_trim`, `f_fin_trim`, `est_trim`) VALUES
(0, '0000-00-00', '0000-00-00', 1),
(1, '2023-01-23', '2023-03-31', 1),
(2, '2023-04-01', '2023-06-30', 1),
(3, '2023-07-01', '2023-09-30', 1),
(4, '2023-10-01', '2023-12-16', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion`
--

CREATE TABLE `formacion` (
  `id_formacion` int(11) NOT NULL,
  `formacion` varchar(90) NOT NULL,
  `id_tip_form` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formacion`
--

INSERT INTO `formacion` (`id_formacion`, `formacion`, `id_tip_form`) VALUES
(1, 'PRODUCCION MULTIMEDIA', 2),
(2, 'ADSO', 2),
(3, 'ADSI', 2),
(4, 'ANIMACION 3D', 2),
(5, 'CONTROL Y SEGURIDAD VIAL', 2),
(6, 'ELECTROMECANICO INDUSTRIAL', 2),
(7, 'IITIC', 2),
(8, 'MANTENIMIENTO MOTOCICLETAS Y MOTOCARROS', 2),
(9, 'MANTENIMIENTO ELECTROMECANICO INDUSTRIAL', 2),
(10, 'MANTENIMIENTO MECATRONICO INDUSTRIAL', 2),
(11, 'MECANICA DE MAQUINARIA INDUSTRIAL', 2),
(12, 'MECANICA AUTOMOTRIZ', 2),
(13, 'MOTOCICLETAS Y MOTOCARROS', 1),
(14, 'PROGRAMACION DE SOFTWARE', 1),
(15, 'TECNICO SISTEMAS', 1),
(16, 'SOLDADURA DE PRODUCTOS METALICOS', 1),
(17, 'MANTENIMIENTO MECATRÓNICO DE AUTOMOTORES', 2),
(18, 'MECANIZADO EN TORNO Y FRESADORA', 1),
(19, 'GESTION DEL MANTENIMIENTO DE AUTOMOTORES', 2),
(20, 'MANTENIMIENTO DE LOS MOTORES DIESEL', 2),
(21, 'DES. VIDEOJUEGOS  ENT. INTERACTIVOS', 2),
(22, 'GESTIÓN INTEGRADA DE LA CALIDAD, MEDIO AMBIENTE, S', 1),
(23, 'PREVENCION Y CONTROL AMBIENTAL', 1),
(24, 'IMPLEMENTACION DE REDES Y SERVICIOS', 2),
(26, 'MANTENIMIENTO Y OPERACIÓN DE PISCINAS', 3),
(27, ' MANEJO DE MAQUINARIA DE CONFECCIÓN INDUSTRIAL', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formaciones`
--

CREATE TABLE `formaciones` (
  `ficha` int(11) NOT NULL,
  `id_amb` int(11) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_formac` int(11) NOT NULL,
  `id_jornada` int(11) NOT NULL,
  `f_ini` date NOT NULL,
  `f_fin` date NOT NULL,
  `est_form` int(1) NOT NULL,
  `id_trim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formaciones`
--

INSERT INTO `formaciones` (`ficha`, `id_amb`, `id_horario`, `id_formac`, `id_jornada`, `f_ini`, `f_fin`, `est_form`, `id_trim`) VALUES
(1111111, 1101, 9, 27, 1, '2023-10-11', '2023-12-11', 1, 1),
(2222222, 1102, 9, 22, 1, '2023-10-11', '2023-10-12', 1, 1),
(3333333, 1104, 9, 3, 1, '2023-10-08', '2023-10-17', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_hora` int(11) NOT NULL,
  `horario` varchar(50) NOT NULL,
  `c_hor` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_hora`, `horario`, `c_hor`) VALUES
(1, '16:00 - 18:00', 2),
(2, '18:00 -  20:00', 2),
(3, '20:00 -  22:00', 2),
(8, '09:00 - 12:00', 3),
(9, '06:00 - 09:00', 3),
(10, '12:00 - 15:00', 3),
(11, '13:00 - 15:00', 3),
(12, '14:00 - 17:00', 3),
(13, '15:00 - 18:00', 3),
(14, '17:00 - 20:00', 3),
(15, '18:00 - 21:00', 3),
(19, '06:00 - 10:00', 4),
(20, '08:00 - 12:00', 4),
(21, '12:00 - 16:00', 4),
(22, '14:00 - 18:00', 4),
(23, '18:00 - 22:00', 4),
(28, '06:00 - 12:00', 6),
(29, '12:00 - 18:00', 6),
(30, '16:00 - 22:00', 6),
(36, '07:00 - 17:00', 10),
(37, 'Sin Asignar', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `id_jornada` int(11) NOT NULL,
  `jornada` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`id_jornada`, `jornada`) VALUES
(1, 'Mañana'),
(2, 'Tarde'),
(3, 'Noche'),
(4, 'Mixta'),
(5, 'Sin Asignar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nave`
--

CREATE TABLE `nave` (
  `id_nave` int(1) NOT NULL,
  `nave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `nave`
--

INSERT INTO `nave` (`id_nave`, `nave`) VALUES
(1, 'Uno'),
(2, 'Dos'),
(3, 'Tres'),
(4, 'Cuatro'),
(5, 'Cinco'),
(6, 'Seis'),
(7, 'Siete');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_competencia`
--

CREATE TABLE `tipo_competencia` (
  `id_tip_comp` int(11) NOT NULL,
  `tip_compete` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_competencia`
--

INSERT INTO `tipo_competencia` (`id_tip_comp`, `tip_compete`) VALUES
(1, 'Técnica'),
(2, 'Transversal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usu`
--

CREATE TABLE `tipo_usu` (
  `id_tip_usu` int(11) NOT NULL,
  `tip_usu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usu`
--

INSERT INTO `tipo_usu` (`id_tip_usu`, `tip_usu`) VALUES
(1, 'Coordinador'),
(2, 'Instructor Técnico'),
(3, 'Instructor Transversal'),
(4, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tip_formacion`
--

CREATE TABLE `tip_formacion` (
  `id_tip_form` int(11) NOT NULL,
  `tip_form` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tip_formacion`
--

INSERT INTO `tip_formacion` (`id_tip_form`, `tip_form`) VALUES
(1, 'Técnica'),
(2, 'Tecnologo'),
(3, 'Operario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transversales`
--

CREATE TABLE `transversales` (
  `id_transv` int(11) NOT NULL,
  `transversal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transversales`
--

INSERT INTO `transversales` (`id_transv`, `transversal`) VALUES
(1, 'Matematicas'),
(2, 'Ingles'),
(3, 'Comunicacion'),
(4, 'Etica'),
(5, 'Emprendimiento'),
(6, '-'),
(7, 'EDFT'),
(8, 'Cultura Fisica'),
(9, 'Investigación'),
(10, 'Lectoesritura'),
(11, 'SST'),
(12, 'C. Naturales'),
(13, 'Sin Asignar'),
(20, 'Técnica'),
(21, 'Informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre`
--

CREATE TABLE `trimestre` (
  `id_trim` int(11) NOT NULL,
  `trimestre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trimestre`
--

INSERT INTO `trimestre` (`id_trim`, `trimestre`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `doc` int(11) NOT NULL,
  `nombres` text NOT NULL,
  `id_tip_usu` int(11) NOT NULL,
  `coordinador` int(1) NOT NULL,
  `estado` int(1) NOT NULL,
  `contra` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`doc`, `nombres`, `id_tip_usu`, `coordinador`, `estado`, `contra`) VALUES
(1, 'Sin Asignar', 3, 1, 1, NULL),
(112222, 'ricardo gonzalez', 2, 1, 1, NULL),
(124444, 'maria eugenia', 2, 1, 1, NULL),
(133333, 'orlado urueña', 2, 1, 1, NULL),
(144444, 'diana yara', 2, 1, 1, NULL),
(166666, 'robinson silva', 2, 1, 1, NULL),
(188888, 'diego velandia', 2, 1, 1, NULL),
(199999, 'gina otero', 2, 1, 1, NULL),
(211111, 'nelson gurin', 2, 1, 1, NULL),
(222222, 'ricardo gil', 2, 1, 1, NULL),
(333333, 'andres mosquera', 2, 1, 1, NULL),
(412200, 'veronica diaz', 2, 1, 1, NULL),
(444444, 'jehyson galvis', 2, 1, 1, NULL),
(555555, 'magnolia cardozo', 2, 1, 1, NULL),
(666666, 'camilo davila', 2, 1, 1, NULL),
(888888, 'tatiana forero', 2, 1, 1, NULL),
(893443, 'carlos guanizo', 2, 1, 1, NULL),
(999999, 'lexy paola gomez', 2, 1, 1, NULL),
(1010011, 'hector evelio', 2, 1, 1, NULL),
(1011111, 'leidy duarte', 2, 1, 1, NULL),
(1200122, 'diana giraldo', 2, 1, 1, NULL),
(1223333, 'jose aigner', 2, 1, 1, NULL),
(1232111, 'yeison a b c', 2, 1, 1, NULL),
(1255555, 'cristina reboledo', 2, 1, 1, NULL),
(1266666, 'heriberto lombo', 2, 1, 1, NULL),
(1289999, 'jorge william', 2, 1, 1, NULL),
(1290222, 'juan camilo', 2, 1, 1, NULL),
(1777777, 'anderson devia', 2, 1, 1, NULL),
(1901111, 'maria clemencia', 2, 1, 1, NULL),
(1999999, 'laura santamaria', 2, 1, 1, NULL),
(2112111, 'diana valderrama', 2, 1, 1, NULL),
(3123000, 'gloria a b', 2, 1, 1, NULL),
(4439990, 'argenis criollo', 2, 1, 1, NULL),
(5433432, 'magda trilleras', 2, 1, 1, NULL),
(5822416, 'jhon fredy lizcano', 2, 1, 1, NULL),
(7777777, 'nohora ordoñez', 2, 1, 1, NULL),
(8723456, 'james armando morales', 2, 1, 1, NULL),
(9012233, 'julia lozada', 2, 1, 1, NULL),
(9890123, 'yeny peña', 3, 1, 1, NULL),
(10231111, 'robinson silva', 2, 1, 1, NULL),
(11319476, 'jaime romero', 2, 1, 1, NULL),
(12198998, 'javier andres acosta', 2, 1, 1, NULL),
(13821090, 'alvaro quiñonez', 3, 1, 1, NULL),
(14111111, 'Cesar Esquivel', 4, 0, 1, '12345678'),
(14123456, 'Marco Tulio Ramirez', 1, 1, 1, '12345678r'),
(14135176, 'jhon fredy rojas', 2, 1, 1, NULL),
(14138513, 'cristian caleño', 2, 1, 1, NULL),
(14138942, 'cesar augusto gomez', 2, 1, 1, NULL),
(14138982, 'james armando morales', 2, 1, 1, NULL),
(14215420, 'jesus aurelio triana', 3, 1, 1, NULL),
(14224142, 'jaiver ocaña', 2, 1, 1, NULL),
(14224823, 'marco leon mora', 2, 1, 1, NULL),
(14226916, 'victor julio flore', 2, 1, 1, NULL),
(14231945, 'carlos emilo gonzalez', 3, 1, 1, NULL),
(14240294, 'jairo cubillos', 2, 1, 1, NULL),
(14295592, 'juan guillermo zuluaga', 2, 1, 1, NULL),
(14298041, 'hugo hernandez', 3, 1, 1, NULL),
(14395380, 'jorge mario gonzalez', 2, 1, 1, NULL),
(14399847, 'jimmy echeverry', 2, 1, 1, NULL),
(14399984, 'miguel portilla', 2, 1, 1, NULL),
(19331878, 'william zabala', 2, 1, 1, NULL),
(19432921, 'pitter Borrero', 2, 1, 1, NULL),
(22121112, 'julian garrido', 2, 1, 1, NULL),
(26795318, 'diana palacios', 3, 1, 1, NULL),
(28541804, 'adriana rincon', 2, 1, 1, NULL),
(28542808, 'jenny carolina botero', 2, 1, 1, NULL),
(28544637, 'sandra chilitro', 2, 1, 1, NULL),
(28549431, 'maribel sanchez', 3, 1, 1, NULL),
(28551015, 'olga lucrecia hernandez', 3, 1, 1, NULL),
(28632136, 'luz helena molina', 2, 1, 1, NULL),
(28698649, 'sandra serrato', 2, 1, 1, NULL),
(28796827, 'olga lucia perez', 2, 1, 1, NULL),
(37817746, 'martha lucia ochoa', 2, 1, 1, NULL),
(38142352, 'maritza mondragon', 2, 1, 1, NULL),
(38143073, 'angie quiñonez', 2, 1, 1, NULL),
(38230871, 'rosa elvira rubio', 2, 1, 1, NULL),
(38240117, 'deyanira bohorquez', 2, 1, 1, NULL),
(38243125, 'matilde ramirez', 2, 1, 1, NULL),
(38246775, 'esmeralda lozano', 3, 1, 1, NULL),
(38362426, 'jennnifer karina salgado', 2, 1, 1, NULL),
(38364891, 'luisa rojas', 3, 1, 1, NULL),
(52052420, 'fabiola muñoz', 2, 1, 1, NULL),
(65552524, 'luz angela del campo', 3, 1, 1, NULL),
(65630425, 'eyleen torres', 3, 1, 1, NULL),
(65630769, 'gaby agudelo', 3, 1, 1, NULL),
(65631596, 'diana alejandra uruena', 3, 1, 1, NULL),
(65709757, 'duly andrade', 3, 1, 1, NULL),
(65715611, 'gloria lourdes gonzalez', 2, 1, 1, NULL),
(65747631, 'gladys zapata', 2, 1, 1, NULL),
(65747897, 'luz adriana castro', 2, 1, 1, NULL),
(65759169, 'yenny moreno', 2, 1, 1, NULL),
(65761595, 'ana emilia bueno', 2, 1, 1, NULL),
(65768012, 'nohora ortiz', 2, 1, 1, NULL),
(65773261, 'sandra milena vargas', 3, 1, 1, NULL),
(65775642, 'nidia gabriela caro', 3, 1, 1, NULL),
(65780591, 'Heidy Molano', 1, 1, 1, '12345678h'),
(65782435, 'adriana castillo', 2, 1, 1, NULL),
(65786351, 'carolina vanegas', 2, 1, 1, NULL),
(65786466, 'sandra cruz', 2, 1, 1, NULL),
(78873733, 'julian vanegas', 3, 1, 1, NULL),
(79280836, 'Jorge Jaime Mendoza', 1, 1, 1, '12345678m'),
(79348994, 'william barreto', 2, 1, 1, NULL),
(79351963, 'fabio albeto potes', 2, 1, 1, NULL),
(79500962, 'cesar augusto ramirez', 2, 1, 1, NULL),
(80006297, 'fabian yepes', 2, 1, 1, NULL),
(80834128, 'diego mauricio hernandez', 2, 1, 1, NULL),
(93086513, 'carlos fernando ramirez', 2, 1, 1, NULL),
(93087557, 'fredy javier moncaleano', 2, 1, 1, NULL),
(93123456, 'Alvaro Eliu ', 1, 2, 1, '87654321ae'),
(93154220, 'Bladimir Pacheco', 3, 1, 1, NULL),
(93238082, 'james leonado sandoval', 2, 1, 1, NULL),
(93238871, 'arnulfo rodriguez', 2, 1, 1, NULL),
(93290284, 'orlando sanchez', 2, 1, 1, NULL),
(93300279, 'duber leonardo lozano', 2, 1, 1, NULL),
(93358535, 'ricardo palacio', 2, 1, 1, NULL),
(93368084, 'ancizar patino', 3, 1, 1, NULL),
(93380529, 'jorge yesid vasquez', 2, 1, 1, NULL),
(93380550, 'jose mauricio mahecha', 2, 1, 1, NULL),
(93381438, 'cesareo garcia', 2, 1, 1, NULL),
(93397673, 'jhon fredy romero', 2, 1, 1, NULL),
(93401268, 'abdonias cubides', 2, 1, 1, NULL),
(93401374, 'jaiver augusto lugo', 2, 1, 1, NULL),
(93405358, 'fredy antonio vargas', 2, 1, 1, NULL),
(93405609, 'luis leonardo ramirez', 2, 1, 1, NULL),
(93407251, 'jhon fredy moreno', 3, 1, 1, NULL),
(93408818, 'javier alejandro garcia', 2, 1, 1, NULL),
(93409436, 'cesar arturo esquivel', 2, 1, 1, NULL),
(93410164, 'francisco mirquez', 2, 1, 1, NULL),
(93415032, 'diego edinson ramirez', 2, 1, 1, NULL),
(93448339, 'jhon jairo saavedra', 2, 1, 1, NULL),
(93471278, 'romulo betancourt', 2, 1, 1, NULL),
(1031125017, 'anyilaine torres', 2, 1, 1, NULL),
(1067711012, 'miguel manotas', 3, 1, 1, NULL),
(1085288558, 'diana rosero', 3, 1, 1, NULL),
(1110445578, 'jhon edward vaquiro', 2, 1, 1, NULL),
(1110449153, 'leidy carolina ayala', 3, 1, 1, NULL),
(1110453237, 'pablo cesar monroy', 2, 1, 1, NULL),
(1110456488, 'maggy estefany gonzalez', 3, 1, 1, NULL),
(1110457664, 'camilo niño', 3, 1, 1, NULL),
(1110463261, 'daniel zanabria', 2, 1, 1, NULL),
(1110477128, 'lina maria trujillo', 2, 1, 1, NULL),
(1110477623, 'andres felipe rios', 3, 1, 1, NULL),
(1110481685, 'laura del sol herandez', 3, 1, 1, NULL),
(1110494781, 'Adriana guzman', 3, 1, 1, NULL),
(1110505792, 'jose algonso marin', 2, 1, 1, NULL),
(1110512545, 'jose andres useche', 2, 1, 1, NULL),
(1110520737, 'Ana Maria lozada', 3, 1, 1, NULL),
(1110538532, 'oscar steven serrato', 3, 1, 1, NULL),
(1110544170, 'santiago gonzalez', 2, 1, 1, NULL),
(1110555849, 'lina sofia mendoza', 3, 1, 1, NULL),
(1113621557, 'andres criollo', 3, 1, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambiente`
--
ALTER TABLE `ambiente`
  ADD PRIMARY KEY (`id_amb`),
  ADD KEY `id_nave` (`id_nave`);

--
-- Indices de la tabla `asig_tecnica`
--
ALTER TABLE `asig_tecnica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asig_transv`
--
ALTER TABLE `asig_transv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_compet` (`id_compet`),
  ADD KEY `id_trim` (`id_trim`),
  ADD KEY `docum_trans` (`docum_trans`),
  ADD KEY `id_jornada` (`id_jornada`),
  ADD KEY `id_horario` (`id_horario`);

--
-- Indices de la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD PRIMARY KEY (`id_compe`),
  ADD KEY `id_tip_comp` (`id_tip_comp`),
  ADD KEY `id_transvers` (`id_transvers`);

--
-- Indices de la tabla `detalle_trans`
--
ALTER TABLE `detalle_trans`
  ADD PRIMARY KEY (`id_det_trans`),
  ADD KEY `documen` (`documen`),
  ADD KEY `id_transv` (`id_transv`);

--
-- Indices de la tabla `detal_form`
--
ALTER TABLE `detal_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ficha` (`ficha`),
  ADD KEY `docum` (`docum`),
  ADD KEY `id_compet` (`id_compet`);

--
-- Indices de la tabla `deta_trim`
--
ALTER TABLE `deta_trim`
  ADD PRIMARY KEY (`id_detal_trim`);

--
-- Indices de la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD PRIMARY KEY (`id_formacion`),
  ADD KEY `id_tip_form` (`id_tip_form`);

--
-- Indices de la tabla `formaciones`
--
ALTER TABLE `formaciones`
  ADD PRIMARY KEY (`ficha`),
  ADD KEY `id_amb` (`id_amb`),
  ADD KEY `id_formac` (`id_formac`),
  ADD KEY `id_horario` (`id_horario`),
  ADD KEY `id_jornada` (`id_jornada`),
  ADD KEY `id_trim` (`id_trim`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_hora`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`id_jornada`);

--
-- Indices de la tabla `nave`
--
ALTER TABLE `nave`
  ADD PRIMARY KEY (`id_nave`);

--
-- Indices de la tabla `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  ADD PRIMARY KEY (`id_tip_comp`);

--
-- Indices de la tabla `tipo_usu`
--
ALTER TABLE `tipo_usu`
  ADD PRIMARY KEY (`id_tip_usu`);

--
-- Indices de la tabla `tip_formacion`
--
ALTER TABLE `tip_formacion`
  ADD PRIMARY KEY (`id_tip_form`);

--
-- Indices de la tabla `transversales`
--
ALTER TABLE `transversales`
  ADD PRIMARY KEY (`id_transv`);

--
-- Indices de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`id_trim`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`doc`),
  ADD KEY `id_tip_usu` (`id_tip_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asig_tecnica`
--
ALTER TABLE `asig_tecnica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `asig_transv`
--
ALTER TABLE `asig_transv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `detalle_trans`
--
ALTER TABLE `detalle_trans`
  MODIFY `id_det_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `detal_form`
--
ALTER TABLE `detal_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `deta_trim`
--
ALTER TABLE `deta_trim`
  MODIFY `id_detal_trim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `formacion`
--
ALTER TABLE `formacion`
  MODIFY `id_formacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_hora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `id_jornada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_competencia`
--
ALTER TABLE `tipo_competencia`
  MODIFY `id_tip_comp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_usu`
--
ALTER TABLE `tipo_usu`
  MODIFY `id_tip_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tip_formacion`
--
ALTER TABLE `tip_formacion`
  MODIFY `id_tip_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `transversales`
--
ALTER TABLE `transversales`
  MODIFY `id_transv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `id_trim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ambiente`
--
ALTER TABLE `ambiente`
  ADD CONSTRAINT `ambiente_ibfk_1` FOREIGN KEY (`id_nave`) REFERENCES `nave` (`id_nave`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `asig_transv`
--
ALTER TABLE `asig_transv`
  ADD CONSTRAINT `asig_transv_ibfk_1` FOREIGN KEY (`id_compet`) REFERENCES `competencia` (`id_compe`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asig_transv_ibfk_2` FOREIGN KEY (`id_trim`) REFERENCES `trimestre` (`id_trim`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asig_transv_ibfk_3` FOREIGN KEY (`docum_trans`) REFERENCES `usuario` (`doc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asig_transv_ibfk_4` FOREIGN KEY (`id_jornada`) REFERENCES `jornada` (`id_jornada`) ON UPDATE CASCADE,
  ADD CONSTRAINT `asig_transv_ibfk_5` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_hora`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD CONSTRAINT `competencia_ibfk_2` FOREIGN KEY (`id_tip_comp`) REFERENCES `tipo_competencia` (`id_tip_comp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `competencia_ibfk_3` FOREIGN KEY (`id_transvers`) REFERENCES `transversales` (`id_transv`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_trans`
--
ALTER TABLE `detalle_trans`
  ADD CONSTRAINT `detalle_trans_ibfk_1` FOREIGN KEY (`documen`) REFERENCES `usuario` (`doc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_trans_ibfk_2` FOREIGN KEY (`id_transv`) REFERENCES `transversales` (`id_transv`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detal_form`
--
ALTER TABLE `detal_form`
  ADD CONSTRAINT `detal_form_ibfk_1` FOREIGN KEY (`ficha`) REFERENCES `formaciones` (`ficha`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detal_form_ibfk_2` FOREIGN KEY (`docum`) REFERENCES `usuario` (`doc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detal_form_ibfk_3` FOREIGN KEY (`id_compet`) REFERENCES `competencia` (`id_compe`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `formacion`
--
ALTER TABLE `formacion`
  ADD CONSTRAINT `formacion_ibfk_1` FOREIGN KEY (`id_tip_form`) REFERENCES `tip_formacion` (`id_tip_form`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `formaciones`
--
ALTER TABLE `formaciones`
  ADD CONSTRAINT `formaciones_ibfk_1` FOREIGN KEY (`id_amb`) REFERENCES `ambiente` (`id_amb`) ON UPDATE CASCADE,
  ADD CONSTRAINT `formaciones_ibfk_2` FOREIGN KEY (`id_formac`) REFERENCES `formacion` (`id_formacion`) ON UPDATE CASCADE,
  ADD CONSTRAINT `formaciones_ibfk_3` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_hora`) ON UPDATE CASCADE,
  ADD CONSTRAINT `formaciones_ibfk_4` FOREIGN KEY (`id_jornada`) REFERENCES `jornada` (`id_jornada`) ON UPDATE CASCADE,
  ADD CONSTRAINT `formaciones_ibfk_5` FOREIGN KEY (`id_trim`) REFERENCES `trimestre` (`id_trim`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tip_usu`) REFERENCES `tipo_usu` (`id_tip_usu`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
