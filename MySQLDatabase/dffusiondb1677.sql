-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Servidor: custsql-ipg02.eigbox.net
-- Tiempo de generación: 19-02-2017 a las 17:26:24
-- Versión del servidor: 5.6.32
-- Versión de PHP: 4.4.9
-- 
-- Base de datos: `dffusiondb1677`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `categoria`
-- 

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `imagen` varchar(200) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `categoria`
-- 

INSERT INTO `categoria` VALUES (1, 'Restaurant', 'http://www.papannis.com/img/restaurant.jpg');
INSERT INTO `categoria` VALUES (2, 'Nightlife', 'https://balioutboardtransport.files.wordpress.com/2014/11/bali-nightlife-11.jpg');
INSERT INTO `categoria` VALUES (3, 'Bar', 'http://www.seatholidays.com/asia/maldives/hotels/hilton-irufushi-beach-and-spa-resort/img/wine-bar.jpg');
INSERT INTO `categoria` VALUES (4, 'Servicios financieros', 'https://developer.ibm.com/apimanagement/wp-content/uploads/sites/23/2015/03/financial-services.png');
INSERT INTO `categoria` VALUES (5, 'Servicios para empresas', 'http://theoutsourcing-guide.com/wp-content/uploads/2015/06/global-business-services.jpg');
INSERT INTO `categoria` VALUES (6, 'Transporte', 'http://www.careerealism.com/wp-content/uploads/2012/12/career-transportation-management.jpg');
INSERT INTO `categoria` VALUES (7, 'Deportes', 'https://theinfluencermedia.files.wordpress.com/2014/08/clinics.jpg');
INSERT INTO `categoria` VALUES (8, 'Mascotas', 'http://www.femeninas.com/images/201307251900_mascotas.jpg');
INSERT INTO `categoria` VALUES (9, 'Salud', 'http://www.ministryofhealing.org/wp-content/uploads/2015/01/health.jpg');
INSERT INTO `categoria` VALUES (10, 'Educación', 'http://www.bloglet.com/gallery/4-modern-solutions-to-current-education-problems/2351233_orig.jpg');
INSERT INTO `categoria` VALUES (11, 'Otros', 'http://cdn.dubai-online.com/wp-content/uploads/2012/06/jumeirah-lakes-towers-11-750x552.jpg');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `comentarioMomento`
-- 

CREATE TABLE `comentarioMomento` (
  `idcomentarioM` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(500) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `fk_user` bigint(20) NOT NULL,
  `fk_momento` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcomentarioM`),
  KEY `fk_comentarioM_usuario1_idx` (`fk_user`),
  KEY `fk_comentarioM_momento1_idx` (`fk_momento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `comentarioMomento`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empleo`
-- 

CREATE TABLE `empleo` (
  `idempleo` int(6) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `sueldo` int(11) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `fk_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idempleo`),
  KEY `fk_empresa` (`fk_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Volcar la base de datos para la tabla `empleo`
-- 

INSERT INTO `empleo` VALUES (2, 'empleo1', 2000, 'descripcion', '', 0, '2016-06-18 12:16:03', '2016-06-28 21:33:12', 10);
INSERT INTO `empleo` VALUES (3, 'empleo3', 3000, 'descripcion', '', 0, '2016-06-18 12:16:13', '2016-06-28 21:33:07', 10);
INSERT INTO `empleo` VALUES (4, 'Desarrollador Java', 30000, 'ACTIVIDADES:\r\nDesarrollar, mantener y mejorar los contenidos en los sitios web e intranets\r\nActualizar contenido local.\r\nRealización de pruebas completas de aplicaciones web, compatibilidad cruzada entre browsers y SOs.\r\nMantener y mejorar sitios de WordPress, Joomla u otro sitio de contenido.\r\n \r\n ', '', 1, '2016-06-18 13:27:00', '2016-06-18 13:27:00', 10);
INSERT INTO `empleo` VALUES (5, 'Example1', 12000, 'Descri', 'haha@hotmail.com', 0, '2016-06-18 14:45:43', '2016-06-28 21:33:04', 10);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa`
-- 

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `domicilio` varchar(200) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `horarios` varchar(300) DEFAULT NULL,
  `disponible` int(11) DEFAULT NULL,
  `mapa` varchar(100) DEFAULT NULL,
  `carpeta` varchar(150) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `tipo` int(11) NOT NULL DEFAULT '1',
  `fk_user` bigint(20) NOT NULL,
  `fk_categoria` int(11) NOT NULL,
  `fk_estado` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`idempresa`),
  KEY `fk_empresa_usuario1_idx` (`fk_user`),
  KEY `fk_empresa_categoria1_idx` (`fk_categoria`),
  KEY `fk_empresa_estado1_idx` (`fk_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `empresa`
-- 

INSERT INTO `empresa` VALUES (10, 'Dffusion', 'And Islitas #37, Colonia Fovissste', '311107097', 'Somos encargados de realizar publicidad de manera rápida y efectiva, fortaleciendo el lazo entre cliente y empresa. ', NULL, 1, NULL, '/resources/assets/images/495849780/', 1, 2, 49584978, 5, 18, '2016-06-07 03:34:31', '2016-06-28 21:48:00');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `estado`
-- 

CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(2) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `abrev` varchar(16) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- 
-- Volcar la base de datos para la tabla `estado`
-- 

INSERT INTO `estado` VALUES (1, '01', 'Aguascalientes', 'Ags.', 0);
INSERT INTO `estado` VALUES (2, '02', 'Baja California', 'BC', 0);
INSERT INTO `estado` VALUES (3, '03', 'Baja California Sur', 'BCS', 0);
INSERT INTO `estado` VALUES (4, '04', 'Campeche', 'Camp.', 0);
INSERT INTO `estado` VALUES (5, '05', 'Coahuila de Zaragoza', 'Coah.', 0);
INSERT INTO `estado` VALUES (6, '06', 'Colima', 'Col.', 0);
INSERT INTO `estado` VALUES (7, '07', 'Chiapas', 'Chis.', 0);
INSERT INTO `estado` VALUES (8, '08', 'Chihuahua', 'Chih.', 0);
INSERT INTO `estado` VALUES (9, '09', 'Distrito Federal', 'DF', 0);
INSERT INTO `estado` VALUES (10, '10', 'Durango', 'Dgo.', 0);
INSERT INTO `estado` VALUES (11, '11', 'Guanajuato', 'Gto.', 0);
INSERT INTO `estado` VALUES (12, '12', 'Guerrero', 'Gro.', 0);
INSERT INTO `estado` VALUES (13, '13', 'Hidalgo', 'Hgo.', 0);
INSERT INTO `estado` VALUES (14, '14', 'Jalisco', 'Jal.', 0);
INSERT INTO `estado` VALUES (15, '15', 'México', 'Mex.', 0);
INSERT INTO `estado` VALUES (16, '16', 'Michoacán de Ocampo', 'Mich.', 0);
INSERT INTO `estado` VALUES (17, '17', 'Morelos', 'Mor.', 0);
INSERT INTO `estado` VALUES (18, '18', 'Nayarit', 'Nay.', 1);
INSERT INTO `estado` VALUES (19, '19', 'Nuevo León', 'NL', 0);
INSERT INTO `estado` VALUES (20, '20', 'Oaxaca', 'Oax.', 0);
INSERT INTO `estado` VALUES (21, '21', 'Puebla', 'Pue.', 0);
INSERT INTO `estado` VALUES (22, '22', 'Querétaro', 'Qro.', 0);
INSERT INTO `estado` VALUES (23, '23', 'Quintana Roo', 'Q. Roo', 0);
INSERT INTO `estado` VALUES (24, '24', 'San Luis Potosí', 'SLP', 0);
INSERT INTO `estado` VALUES (25, '25', 'Sinaloa', 'Sin.', 0);
INSERT INTO `estado` VALUES (26, '26', 'Sonora', 'Son.', 0);
INSERT INTO `estado` VALUES (27, '27', 'Tabasco', 'Tab.', 0);
INSERT INTO `estado` VALUES (28, '28', 'Tamaulipas', 'Tamps.', 0);
INSERT INTO `estado` VALUES (29, '29', 'Tlaxcala', 'Tlax.', 0);
INSERT INTO `estado` VALUES (30, '30', 'Veracruz de Ignacio de la Llave', 'Ver.', 0);
INSERT INTO `estado` VALUES (31, '31', 'Yucatán', 'Yuc.', 0);
INSERT INTO `estado` VALUES (32, '32', 'Zacatecas', 'Zac.', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `extras`
-- 

CREATE TABLE `extras` (
  `idextras` int(11) NOT NULL AUTO_INCREMENT,
  `vistas` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `webpage` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `fk_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idextras`),
  KEY `fk_extras_empresa1_idx` (`fk_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `extras`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `galeria`
-- 

CREATE TABLE `galeria` (
  `idgaleria` int(6) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `fk_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idgaleria`),
  KEY `fk_empresa` (`fk_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- Volcar la base de datos para la tabla `galeria`
-- 

INSERT INTO `galeria` VALUES (2, '/resources/assets/images/495849780/1465881614819088863.jpg', 0, '2016-06-14 00:20:14', '2016-06-15 20:46:32', 10);
INSERT INTO `galeria` VALUES (3, '/resources/assets/images/495849780/1465881638325841195.jpg', 0, '2016-06-14 00:20:38', '2016-06-15 20:42:33', 10);
INSERT INTO `galeria` VALUES (4, '/resources/assets/images/495849780/1465881638403283506.jpg', 0, '2016-06-14 00:20:38', '2016-06-15 20:42:53', 10);
INSERT INTO `galeria` VALUES (5, '/resources/assets/images/495849780/1465881709347403598.jpg', 0, '2016-06-14 00:21:49', '2016-06-15 20:47:22', 10);
INSERT INTO `galeria` VALUES (6, '/resources/assets/images/495849780/1465881735841848035.jpg', 0, '2016-06-14 00:22:15', '2016-06-15 20:48:52', 10);
INSERT INTO `galeria` VALUES (7, '/resources/assets/images/495849780/1466041765130705854.jpg', 0, '2016-06-15 20:49:25', '2016-06-15 20:52:46', 10);
INSERT INTO `galeria` VALUES (8, '/resources/assets/images/495849780/1466041765466276891.jpg', 0, '2016-06-15 20:49:25', '2016-06-15 20:52:56', 10);
INSERT INTO `galeria` VALUES (9, '/resources/assets/images/495849780/1466041765970948200.jpg', 0, '2016-06-15 20:49:25', '2016-06-15 20:54:36', 10);
INSERT INTO `galeria` VALUES (10, '/resources/assets/images/495849780/1466041765890152293.jpg', 0, '2016-06-15 20:49:25', '2016-06-15 20:54:38', 10);
INSERT INTO `galeria` VALUES (11, '/resources/assets/images/495849780/1466041765177307282.jpg', 0, '2016-06-15 20:49:25', '2016-06-15 20:53:13', 10);
INSERT INTO `galeria` VALUES (12, '/resources/assets/images/495849780/1466041765112371421.jpg', 0, '2016-06-15 20:49:25', '2016-06-15 20:53:10', 10);
INSERT INTO `galeria` VALUES (13, '/resources/assets/images/495849780/1466041765317513386.jpg', 0, '2016-06-15 20:49:25', '2016-06-15 20:52:51', 10);
INSERT INTO `galeria` VALUES (14, '/resources/assets/images/495849780/1466042103247484882.jpg', 0, '2016-06-15 20:55:03', '2016-06-15 20:55:19', 10);
INSERT INTO `galeria` VALUES (15, '/resources/assets/images/495849780/1466042103953411872.jpg', 0, '2016-06-15 20:55:03', '2016-06-15 20:55:18', 10);
INSERT INTO `galeria` VALUES (16, '/resources/assets/images/495849780/1466042103749197394.jpg', 0, '2016-06-15 20:55:03', '2016-06-15 20:55:22', 10);
INSERT INTO `galeria` VALUES (17, '/resources/assets/images/495849780/1466042103912277064.jpg', 1, '2016-06-15 20:55:03', '2016-06-15 20:55:03', 10);
INSERT INTO `galeria` VALUES (18, '/resources/assets/images/495849780/1466042103128951947.jpg', 0, '2016-06-15 20:55:03', '2016-06-15 20:55:23', 10);
INSERT INTO `galeria` VALUES (19, '/resources/assets/images/495849780/1466042103526145983.jpg', 0, '2016-06-15 20:55:03', '2016-06-15 20:55:16', 10);
INSERT INTO `galeria` VALUES (20, '/resources/assets/images/495849780/1466042103334365249.jpg', 0, '2016-06-15 20:55:03', '2016-06-15 20:55:20', 10);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `momento`
-- 

CREATE TABLE `momento` (
  `idmomento` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(30) NOT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `imagen` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT '1',
  `fecha` datetime DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `fk_empresa` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`idmomento`),
  KEY `fk_momento_empresa_idx` (`fk_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=13 ;

-- 
-- Volcar la base de datos para la tabla `momento`
-- 

INSERT INTO `momento` VALUES (1, 'we', 'we', '/resources/assets/images/495849780/1465703014.jpg', 2, '2016-06-12 03:43:34', 0, 0, 10, '2016-06-12 03:43:34', '2016-06-15 21:44:02');
INSERT INTO `momento` VALUES (3, 'Cervezas 2x1', 'Hoy a parti de las 2 hay cervezas dos por uno', '/resources/assets/images/495849780/1465704643.jpg', 2, '2016-06-12 04:10:43', 0, 0, 10, '2016-06-12 04:10:43', '2016-06-15 22:17:31');
INSERT INTO `momento` VALUES (4, 'Cervezas 3x1', 'Solo hasta las 5 de la tarde', '/resources/assets/images/495849780/1465749418.jpg', 2, '2016-06-12 16:36:58', 0, 0, 10, '2016-06-12 16:36:58', '2016-06-28 21:33:45');
INSERT INTO `momento` VALUES (5, 'Otra publicacion', 'jijijiji', '/resources/assets/images/495849780/1465749458.jpg', 2, '2016-06-12 16:37:38', 0, 0, 10, '2016-06-12 16:37:38', '2016-06-28 21:33:59');
INSERT INTO `momento` VALUES (6, 'Que ', 'onda', '/resources/assets/images/495849780/1465752107.jpg', 2, '2016-06-12 12:21:47', 0, 0, 10, '2016-06-12 12:21:47', '2016-06-28 21:33:52');
INSERT INTO `momento` VALUES (7, 'Tengo 2 años', 'Tres años', '/resources/assets/images/495849780/1465752802.jpg', 2, '2016-06-12 12:33:22', 0, 0, 10, '2016-06-12 12:33:22', '2016-06-15 21:17:24');
INSERT INTO `momento` VALUES (8, 'Publicacion', '45', '/resources/assets/images/495849780/1465752816.jpg', 2, '2016-06-12 12:33:36', 0, 0, 10, '2016-06-12 12:33:36', '2016-06-28 21:33:56');
INSERT INTO `momento` VALUES (9, 'Crepas 2x1', 'Hoy crepas 2x2', '/resources/assets/images/495849780/1465777461.jpg', 2, '2016-06-12 19:24:21', 0, 0, 10, '2016-06-12 19:24:21', '2016-06-28 21:34:06');
INSERT INTO `momento` VALUES (10, 'nueva', 'nueva', '/resources/assets/images/495849780/1465778132.jpg', 2, '2016-06-12 19:35:32', 0, 0, 10, '2016-06-12 19:35:32', '2016-06-15 21:16:28');
INSERT INTO `momento` VALUES (11, 'Bienvenidos', 'Nuestra nueva plataforma', '/resources/assets/images/495849780/1466047097.jpg', 2, '2016-06-15 22:18:17', 0, 1, 10, '2016-06-15 22:18:17', '2016-06-15 22:18:17');
INSERT INTO `momento` VALUES (12, 'Dffusion', 'A punto de comenzar', '/resources/assets/images/495849780/1466276774.jpg', 2, '2016-06-18 14:06:14', 0, 0, 10, '2016-06-18 14:06:14', '2016-06-28 21:34:15');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `municipio`
-- 

CREATE TABLE `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_id` int(11) NOT NULL,
  `clave` varchar(3) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `sigla` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_municipios_estado1_idx` (`estado_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2493 DEFAULT CHARSET=utf8 AUTO_INCREMENT=2493 ;

-- 
-- Volcar la base de datos para la tabla `municipio`
-- 

INSERT INTO `municipio` VALUES (1, 1, '001', 'Aguascalientes', '');
INSERT INTO `municipio` VALUES (2, 1, '002', 'Asientos', '');
INSERT INTO `municipio` VALUES (3, 1, '003', 'Calvillo', '');
INSERT INTO `municipio` VALUES (4, 1, '004', 'Cosío', '');
INSERT INTO `municipio` VALUES (5, 1, '005', 'Jesús María', '');
INSERT INTO `municipio` VALUES (6, 1, '006', 'Pabellón de Arteaga', '');
INSERT INTO `municipio` VALUES (7, 1, '007', 'Rincón de Romos', '');
INSERT INTO `municipio` VALUES (8, 1, '008', 'San José de Gracia', '');
INSERT INTO `municipio` VALUES (9, 1, '009', 'Tepezalá', '');
INSERT INTO `municipio` VALUES (10, 1, '010', 'El Llano', '');
INSERT INTO `municipio` VALUES (11, 1, '011', 'San Francisco de los Romo', '');
INSERT INTO `municipio` VALUES (12, 2, '001', 'Ensenada', '');
INSERT INTO `municipio` VALUES (13, 2, '002', 'Mexicali', '');
INSERT INTO `municipio` VALUES (14, 2, '003', 'Tecate', '');
INSERT INTO `municipio` VALUES (15, 2, '004', 'Tijuana', '');
INSERT INTO `municipio` VALUES (16, 2, '005', 'Playas de Rosarito', '');
INSERT INTO `municipio` VALUES (17, 3, '001', 'Comondú', '');
INSERT INTO `municipio` VALUES (18, 3, '002', 'Mulegé', '');
INSERT INTO `municipio` VALUES (19, 3, '003', 'La Paz', '');
INSERT INTO `municipio` VALUES (20, 3, '008', 'Los Cabos', '');
INSERT INTO `municipio` VALUES (21, 3, '009', 'Loreto', '');
INSERT INTO `municipio` VALUES (22, 4, '001', 'Calkiní', '');
INSERT INTO `municipio` VALUES (23, 4, '002', 'Campeche', '');
INSERT INTO `municipio` VALUES (24, 4, '003', 'Carmen', '');
INSERT INTO `municipio` VALUES (25, 4, '004', 'Champotón', '');
INSERT INTO `municipio` VALUES (26, 4, '005', 'Hecelchakán', '');
INSERT INTO `municipio` VALUES (27, 4, '006', 'Hopelchén', '');
INSERT INTO `municipio` VALUES (28, 4, '007', 'Palizada', '');
INSERT INTO `municipio` VALUES (29, 4, '008', 'Tenabo', '');
INSERT INTO `municipio` VALUES (30, 4, '009', 'Escárcega', '');
INSERT INTO `municipio` VALUES (31, 4, '010', 'Calakmul', '');
INSERT INTO `municipio` VALUES (32, 4, '011', 'Candelaria', '');
INSERT INTO `municipio` VALUES (33, 5, '001', 'Abasolo', '');
INSERT INTO `municipio` VALUES (34, 5, '002', 'Acuña', '');
INSERT INTO `municipio` VALUES (35, 5, '003', 'Allende', '');
INSERT INTO `municipio` VALUES (36, 5, '004', 'Arteaga', '');
INSERT INTO `municipio` VALUES (37, 5, '005', 'Candela', '');
INSERT INTO `municipio` VALUES (38, 5, '006', 'Castaños', '');
INSERT INTO `municipio` VALUES (39, 5, '007', 'Cuatro Ciénegas', '');
INSERT INTO `municipio` VALUES (40, 5, '008', 'Escobedo', '');
INSERT INTO `municipio` VALUES (41, 5, '009', 'Francisco I. Madero', '');
INSERT INTO `municipio` VALUES (42, 5, '010', 'Frontera', '');
INSERT INTO `municipio` VALUES (43, 5, '011', 'General Cepeda', '');
INSERT INTO `municipio` VALUES (44, 5, '012', 'Guerrero', '');
INSERT INTO `municipio` VALUES (45, 5, '013', 'Hidalgo', '');
INSERT INTO `municipio` VALUES (46, 5, '014', 'Jiménez', '');
INSERT INTO `municipio` VALUES (47, 5, '015', 'Juárez', '');
INSERT INTO `municipio` VALUES (48, 5, '016', 'Lamadrid', '');
INSERT INTO `municipio` VALUES (49, 5, '017', 'Matamoros', '');
INSERT INTO `municipio` VALUES (50, 5, '018', 'Monclova', '');
INSERT INTO `municipio` VALUES (51, 5, '019', 'Morelos', '');
INSERT INTO `municipio` VALUES (52, 5, '020', 'Múzquiz', '');
INSERT INTO `municipio` VALUES (53, 5, '021', 'Nadadores', '');
INSERT INTO `municipio` VALUES (54, 5, '022', 'Nava', '');
INSERT INTO `municipio` VALUES (55, 5, '023', 'Ocampo', '');
INSERT INTO `municipio` VALUES (56, 5, '024', 'Parras', '');
INSERT INTO `municipio` VALUES (57, 5, '025', 'Piedras Negras', '');
INSERT INTO `municipio` VALUES (58, 5, '026', 'Progreso', '');
INSERT INTO `municipio` VALUES (59, 5, '027', 'Ramos Arizpe', '');
INSERT INTO `municipio` VALUES (60, 5, '028', 'Sabinas', '');
INSERT INTO `municipio` VALUES (61, 5, '029', 'Sacramento', '');
INSERT INTO `municipio` VALUES (62, 5, '030', 'Saltillo', '');
INSERT INTO `municipio` VALUES (63, 5, '031', 'San Buenaventura', '');
INSERT INTO `municipio` VALUES (64, 5, '032', 'San Juan de Sabinas', '');
INSERT INTO `municipio` VALUES (65, 5, '033', 'San Pedro', '');
INSERT INTO `municipio` VALUES (66, 5, '034', 'Sierra Mojada', '');
INSERT INTO `municipio` VALUES (67, 5, '035', 'Torreón', '');
INSERT INTO `municipio` VALUES (68, 5, '036', 'Viesca', '');
INSERT INTO `municipio` VALUES (69, 5, '037', 'Villa Unión', '');
INSERT INTO `municipio` VALUES (70, 5, '038', 'Zaragoza', '');
INSERT INTO `municipio` VALUES (71, 6, '001', 'Armería', '');
INSERT INTO `municipio` VALUES (72, 6, '002', 'Colima', '');
INSERT INTO `municipio` VALUES (73, 6, '003', 'Comala', '');
INSERT INTO `municipio` VALUES (74, 6, '004', 'Coquimatlán', '');
INSERT INTO `municipio` VALUES (75, 6, '005', 'Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (76, 6, '006', 'Ixtlahuacán', '');
INSERT INTO `municipio` VALUES (77, 6, '007', 'Manzanillo', '');
INSERT INTO `municipio` VALUES (78, 6, '008', 'Minatitlán', '');
INSERT INTO `municipio` VALUES (79, 6, '009', 'Tecomán', '');
INSERT INTO `municipio` VALUES (80, 6, '010', 'Villa de Álvarez', '');
INSERT INTO `municipio` VALUES (81, 7, '001', 'Acacoyagua', '');
INSERT INTO `municipio` VALUES (82, 7, '002', 'Acala', '');
INSERT INTO `municipio` VALUES (83, 7, '003', 'Acapetahua', '');
INSERT INTO `municipio` VALUES (84, 7, '004', 'Altamirano', '');
INSERT INTO `municipio` VALUES (85, 7, '005', 'Amatán', '');
INSERT INTO `municipio` VALUES (86, 7, '006', 'Amatenango de la Frontera', '');
INSERT INTO `municipio` VALUES (87, 7, '007', 'Amatenango del Valle', '');
INSERT INTO `municipio` VALUES (88, 7, '008', 'Angel Albino Corzo', '');
INSERT INTO `municipio` VALUES (89, 7, '009', 'Arriaga', '');
INSERT INTO `municipio` VALUES (90, 7, '010', 'Bejucal de Ocampo', '');
INSERT INTO `municipio` VALUES (91, 7, '011', 'Bella Vista', '');
INSERT INTO `municipio` VALUES (92, 7, '012', 'Berriozábal', '');
INSERT INTO `municipio` VALUES (93, 7, '013', 'Bochil', '');
INSERT INTO `municipio` VALUES (94, 7, '014', 'El Bosque', '');
INSERT INTO `municipio` VALUES (95, 7, '015', 'Cacahoatán', '');
INSERT INTO `municipio` VALUES (96, 7, '016', 'Catazajá', '');
INSERT INTO `municipio` VALUES (97, 7, '017', 'Cintalapa', '');
INSERT INTO `municipio` VALUES (98, 7, '018', 'Coapilla', '');
INSERT INTO `municipio` VALUES (99, 7, '019', 'Comitán de Domínguez', '');
INSERT INTO `municipio` VALUES (100, 7, '020', 'La Concordia', '');
INSERT INTO `municipio` VALUES (101, 7, '021', 'Copainalá', '');
INSERT INTO `municipio` VALUES (102, 7, '022', 'Chalchihuitán', '');
INSERT INTO `municipio` VALUES (103, 7, '023', 'Chamula', '');
INSERT INTO `municipio` VALUES (104, 7, '024', 'Chanal', '');
INSERT INTO `municipio` VALUES (105, 7, '025', 'Chapultenango', '');
INSERT INTO `municipio` VALUES (106, 7, '026', 'Chenalhó', '');
INSERT INTO `municipio` VALUES (107, 7, '027', 'Chiapa de Corzo', '');
INSERT INTO `municipio` VALUES (108, 7, '028', 'Chiapilla', '');
INSERT INTO `municipio` VALUES (109, 7, '029', 'Chicoasén', '');
INSERT INTO `municipio` VALUES (110, 7, '030', 'Chicomuselo', '');
INSERT INTO `municipio` VALUES (111, 7, '031', 'Chilón', '');
INSERT INTO `municipio` VALUES (112, 7, '032', 'Escuintla', '');
INSERT INTO `municipio` VALUES (113, 7, '033', 'Francisco León', '');
INSERT INTO `municipio` VALUES (114, 7, '034', 'Frontera Comalapa', '');
INSERT INTO `municipio` VALUES (115, 7, '035', 'Frontera Hidalgo', '');
INSERT INTO `municipio` VALUES (116, 7, '036', 'La Grandeza', '');
INSERT INTO `municipio` VALUES (117, 7, '037', 'Huehuetán', '');
INSERT INTO `municipio` VALUES (118, 7, '038', 'Huixtán', '');
INSERT INTO `municipio` VALUES (119, 7, '039', 'Huitiupán', '');
INSERT INTO `municipio` VALUES (120, 7, '040', 'Huixtla', '');
INSERT INTO `municipio` VALUES (121, 7, '041', 'La Independencia', '');
INSERT INTO `municipio` VALUES (122, 7, '042', 'Ixhuatán', '');
INSERT INTO `municipio` VALUES (123, 7, '043', 'Ixtacomitán', '');
INSERT INTO `municipio` VALUES (124, 7, '044', 'Ixtapa', '');
INSERT INTO `municipio` VALUES (125, 7, '045', 'Ixtapangajoya', '');
INSERT INTO `municipio` VALUES (126, 7, '046', 'Jiquipilas', '');
INSERT INTO `municipio` VALUES (127, 7, '047', 'Jitotol', '');
INSERT INTO `municipio` VALUES (128, 7, '048', 'Juárez', '');
INSERT INTO `municipio` VALUES (129, 7, '049', 'Larráinzar', '');
INSERT INTO `municipio` VALUES (130, 7, '050', 'La Libertad', '');
INSERT INTO `municipio` VALUES (131, 7, '051', 'Mapastepec', '');
INSERT INTO `municipio` VALUES (132, 7, '052', 'Las Margaritas', '');
INSERT INTO `municipio` VALUES (133, 7, '053', 'Mazapa de Madero', '');
INSERT INTO `municipio` VALUES (134, 7, '054', 'Mazatán', '');
INSERT INTO `municipio` VALUES (135, 7, '055', 'Metapa', '');
INSERT INTO `municipio` VALUES (136, 7, '056', 'Mitontic', '');
INSERT INTO `municipio` VALUES (137, 7, '057', 'Motozintla', '');
INSERT INTO `municipio` VALUES (138, 7, '058', 'Nicolás Ruíz', '');
INSERT INTO `municipio` VALUES (139, 7, '059', 'Ocosingo', '');
INSERT INTO `municipio` VALUES (140, 7, '060', 'Ocotepec', '');
INSERT INTO `municipio` VALUES (141, 7, '061', 'Ocozocoautla de Espinosa', '');
INSERT INTO `municipio` VALUES (142, 7, '062', 'Ostuacán', '');
INSERT INTO `municipio` VALUES (143, 7, '063', 'Osumacinta', '');
INSERT INTO `municipio` VALUES (144, 7, '064', 'Oxchuc', '');
INSERT INTO `municipio` VALUES (145, 7, '065', 'Palenque', '');
INSERT INTO `municipio` VALUES (146, 7, '066', 'Pantelhó', '');
INSERT INTO `municipio` VALUES (147, 7, '067', 'Pantepec', '');
INSERT INTO `municipio` VALUES (148, 7, '068', 'Pichucalco', '');
INSERT INTO `municipio` VALUES (149, 7, '069', 'Pijijiapan', '');
INSERT INTO `municipio` VALUES (150, 7, '070', 'El Porvenir', '');
INSERT INTO `municipio` VALUES (151, 7, '071', 'Villa Comaltitlán', '');
INSERT INTO `municipio` VALUES (152, 7, '072', 'Pueblo Nuevo Solistahuacán', '');
INSERT INTO `municipio` VALUES (153, 7, '073', 'Rayón', '');
INSERT INTO `municipio` VALUES (154, 7, '074', 'Reforma', '');
INSERT INTO `municipio` VALUES (155, 7, '075', 'Las Rosas', '');
INSERT INTO `municipio` VALUES (156, 7, '076', 'Sabanilla', '');
INSERT INTO `municipio` VALUES (157, 7, '077', 'Salto de Agua', '');
INSERT INTO `municipio` VALUES (158, 7, '078', 'San Cristóbal de las Casas', '');
INSERT INTO `municipio` VALUES (159, 7, '079', 'San Fernando', '');
INSERT INTO `municipio` VALUES (160, 7, '080', 'Siltepec', '');
INSERT INTO `municipio` VALUES (161, 7, '081', 'Simojovel', '');
INSERT INTO `municipio` VALUES (162, 7, '082', 'Sitalá', '');
INSERT INTO `municipio` VALUES (163, 7, '083', 'Socoltenango', '');
INSERT INTO `municipio` VALUES (164, 7, '084', 'Solosuchiapa', '');
INSERT INTO `municipio` VALUES (165, 7, '085', 'Soyaló', '');
INSERT INTO `municipio` VALUES (166, 7, '086', 'Suchiapa', '');
INSERT INTO `municipio` VALUES (167, 7, '087', 'Suchiate', '');
INSERT INTO `municipio` VALUES (168, 7, '088', 'Sunuapa', '');
INSERT INTO `municipio` VALUES (169, 7, '089', 'Tapachula', '');
INSERT INTO `municipio` VALUES (170, 7, '090', 'Tapalapa', '');
INSERT INTO `municipio` VALUES (171, 7, '091', 'Tapilula', '');
INSERT INTO `municipio` VALUES (172, 7, '092', 'Tecpatán', '');
INSERT INTO `municipio` VALUES (173, 7, '093', 'Tenejapa', '');
INSERT INTO `municipio` VALUES (174, 7, '094', 'Teopisca', '');
INSERT INTO `municipio` VALUES (175, 7, '096', 'Tila', '');
INSERT INTO `municipio` VALUES (176, 7, '097', 'Tonalá', '');
INSERT INTO `municipio` VALUES (177, 7, '098', 'Totolapa', '');
INSERT INTO `municipio` VALUES (178, 7, '099', 'La Trinitaria', '');
INSERT INTO `municipio` VALUES (179, 7, '100', 'Tumbalá', '');
INSERT INTO `municipio` VALUES (180, 7, '101', 'Tuxtla Gutiérrez', '');
INSERT INTO `municipio` VALUES (181, 7, '102', 'Tuxtla Chico', '');
INSERT INTO `municipio` VALUES (182, 7, '103', 'Tuzantán', '');
INSERT INTO `municipio` VALUES (183, 7, '104', 'Tzimol', '');
INSERT INTO `municipio` VALUES (184, 7, '105', 'Unión Juárez', '');
INSERT INTO `municipio` VALUES (185, 7, '106', 'Venustiano Carranza', '');
INSERT INTO `municipio` VALUES (186, 7, '107', 'Villa Corzo', '');
INSERT INTO `municipio` VALUES (187, 7, '108', 'Villaflores', '');
INSERT INTO `municipio` VALUES (188, 7, '109', 'Yajalón', '');
INSERT INTO `municipio` VALUES (189, 7, '110', 'San Lucas', '');
INSERT INTO `municipio` VALUES (190, 7, '111', 'Zinacantán', '');
INSERT INTO `municipio` VALUES (191, 7, '112', 'San Juan Cancuc', '');
INSERT INTO `municipio` VALUES (192, 7, '113', 'Aldama', '');
INSERT INTO `municipio` VALUES (193, 7, '114', 'Benemérito de las Américas', '');
INSERT INTO `municipio` VALUES (194, 7, '115', 'Maravilla Tenejapa', '');
INSERT INTO `municipio` VALUES (195, 7, '116', 'Marqués de Comillas', '');
INSERT INTO `municipio` VALUES (196, 7, '117', 'Montecristo de Guerrero', '');
INSERT INTO `municipio` VALUES (197, 7, '118', 'San Andrés Duraznal', '');
INSERT INTO `municipio` VALUES (198, 7, '119', 'Santiago el Pinar', '');
INSERT INTO `municipio` VALUES (199, 8, '001', 'Ahumada', '');
INSERT INTO `municipio` VALUES (200, 8, '002', 'Aldama', '');
INSERT INTO `municipio` VALUES (201, 8, '003', 'Allende', '');
INSERT INTO `municipio` VALUES (202, 8, '004', 'Aquiles Serdán', '');
INSERT INTO `municipio` VALUES (203, 8, '005', 'Ascensión', '');
INSERT INTO `municipio` VALUES (204, 8, '006', 'Bachíniva', '');
INSERT INTO `municipio` VALUES (205, 8, '007', 'Balleza', '');
INSERT INTO `municipio` VALUES (206, 8, '008', 'Batopilas', '');
INSERT INTO `municipio` VALUES (207, 8, '009', 'Bocoyna', '');
INSERT INTO `municipio` VALUES (208, 8, '010', 'Buenaventura', '');
INSERT INTO `municipio` VALUES (209, 8, '011', 'Camargo', '');
INSERT INTO `municipio` VALUES (210, 8, '012', 'Carichí', '');
INSERT INTO `municipio` VALUES (211, 8, '013', 'Casas Grandes', '');
INSERT INTO `municipio` VALUES (212, 8, '014', 'Coronado', '');
INSERT INTO `municipio` VALUES (213, 8, '015', 'Coyame del Sotol', '');
INSERT INTO `municipio` VALUES (214, 8, '016', 'La Cruz', '');
INSERT INTO `municipio` VALUES (215, 8, '017', 'Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (216, 8, '018', 'Cusihuiriachi', '');
INSERT INTO `municipio` VALUES (217, 8, '019', 'Chihuahua', '');
INSERT INTO `municipio` VALUES (218, 8, '020', 'Chínipas', '');
INSERT INTO `municipio` VALUES (219, 8, '021', 'Delicias', '');
INSERT INTO `municipio` VALUES (220, 8, '022', 'Dr. Belisario Domínguez', '');
INSERT INTO `municipio` VALUES (221, 8, '023', 'Galeana', '');
INSERT INTO `municipio` VALUES (222, 8, '024', 'Santa Isabel', '');
INSERT INTO `municipio` VALUES (223, 8, '025', 'Gómez Farías', '');
INSERT INTO `municipio` VALUES (224, 8, '026', 'Gran Morelos', '');
INSERT INTO `municipio` VALUES (225, 8, '027', 'Guachochi', '');
INSERT INTO `municipio` VALUES (226, 8, '028', 'Guadalupe', '');
INSERT INTO `municipio` VALUES (227, 8, '029', 'Guadalupe y Calvo', '');
INSERT INTO `municipio` VALUES (228, 8, '030', 'Guazapares', '');
INSERT INTO `municipio` VALUES (229, 8, '031', 'Guerrero', '');
INSERT INTO `municipio` VALUES (230, 8, '032', 'Hidalgo del Parral', '');
INSERT INTO `municipio` VALUES (231, 8, '033', 'Huejotitán', '');
INSERT INTO `municipio` VALUES (232, 8, '034', 'Ignacio Zaragoza', '');
INSERT INTO `municipio` VALUES (233, 8, '035', 'Janos', '');
INSERT INTO `municipio` VALUES (234, 8, '036', 'Jiménez', '');
INSERT INTO `municipio` VALUES (235, 8, '037', 'Juárez', '');
INSERT INTO `municipio` VALUES (236, 8, '038', 'Julimes', '');
INSERT INTO `municipio` VALUES (237, 8, '039', 'López', '');
INSERT INTO `municipio` VALUES (238, 8, '040', 'Madera', '');
INSERT INTO `municipio` VALUES (239, 8, '041', 'Maguarichi', '');
INSERT INTO `municipio` VALUES (240, 8, '042', 'Manuel Benavides', '');
INSERT INTO `municipio` VALUES (241, 8, '043', 'Matachí', '');
INSERT INTO `municipio` VALUES (242, 8, '044', 'Matamoros', '');
INSERT INTO `municipio` VALUES (243, 8, '045', 'Meoqui', '');
INSERT INTO `municipio` VALUES (244, 8, '046', 'Morelos', '');
INSERT INTO `municipio` VALUES (245, 8, '047', 'Moris', '');
INSERT INTO `municipio` VALUES (246, 8, '048', 'Namiquipa', '');
INSERT INTO `municipio` VALUES (247, 8, '049', 'Nonoava', '');
INSERT INTO `municipio` VALUES (248, 8, '050', 'Nuevo Casas Grandes', '');
INSERT INTO `municipio` VALUES (249, 8, '051', 'Ocampo', '');
INSERT INTO `municipio` VALUES (250, 8, '052', 'Ojinaga', '');
INSERT INTO `municipio` VALUES (251, 8, '053', 'Praxedis G. Guerrero', '');
INSERT INTO `municipio` VALUES (252, 8, '054', 'Riva Palacio', '');
INSERT INTO `municipio` VALUES (253, 8, '055', 'Rosales', '');
INSERT INTO `municipio` VALUES (254, 8, '056', 'Rosario', '');
INSERT INTO `municipio` VALUES (255, 8, '057', 'San Francisco de Borja', '');
INSERT INTO `municipio` VALUES (256, 8, '058', 'San Francisco de Conchos', '');
INSERT INTO `municipio` VALUES (257, 8, '059', 'San Francisco del Oro', '');
INSERT INTO `municipio` VALUES (258, 8, '060', 'Santa Bárbara', '');
INSERT INTO `municipio` VALUES (259, 8, '061', 'Satevó', '');
INSERT INTO `municipio` VALUES (260, 8, '062', 'Saucillo', '');
INSERT INTO `municipio` VALUES (261, 8, '063', 'Temósachic', '');
INSERT INTO `municipio` VALUES (262, 8, '064', 'El Tule', '');
INSERT INTO `municipio` VALUES (263, 8, '065', 'Urique', '');
INSERT INTO `municipio` VALUES (264, 8, '066', 'Uruachi', '');
INSERT INTO `municipio` VALUES (265, 8, '067', 'Valle de Zaragoza', '');
INSERT INTO `municipio` VALUES (266, 9, '002', 'Azcapotzalco', '');
INSERT INTO `municipio` VALUES (267, 9, '003', 'Coyoacán', '');
INSERT INTO `municipio` VALUES (268, 9, '004', 'Cuajimalpa de Morelos', '');
INSERT INTO `municipio` VALUES (269, 9, '005', 'Gustavo A. Madero', '');
INSERT INTO `municipio` VALUES (270, 9, '006', 'Iztacalco', '');
INSERT INTO `municipio` VALUES (271, 9, '007', 'Iztapalapa', '');
INSERT INTO `municipio` VALUES (272, 9, '008', 'La Magdalena Contreras', '');
INSERT INTO `municipio` VALUES (273, 9, '009', 'Milpa Alta', '');
INSERT INTO `municipio` VALUES (274, 9, '010', 'Álvaro Obregón', '');
INSERT INTO `municipio` VALUES (275, 9, '011', 'Tláhuac', '');
INSERT INTO `municipio` VALUES (276, 9, '012', 'Tlalpan', '');
INSERT INTO `municipio` VALUES (277, 9, '013', 'Xochimilco', '');
INSERT INTO `municipio` VALUES (278, 9, '014', 'Benito Juárez', '');
INSERT INTO `municipio` VALUES (279, 9, '015', 'Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (280, 9, '016', 'Miguel Hidalgo', '');
INSERT INTO `municipio` VALUES (281, 9, '017', 'Venustiano Carranza', '');
INSERT INTO `municipio` VALUES (282, 10, '001', 'Canatlán', '');
INSERT INTO `municipio` VALUES (283, 10, '002', 'Canelas', '');
INSERT INTO `municipio` VALUES (284, 10, '003', 'Coneto de Comonfort', '');
INSERT INTO `municipio` VALUES (285, 10, '004', 'Cuencamé', '');
INSERT INTO `municipio` VALUES (286, 10, '005', 'Durango', '');
INSERT INTO `municipio` VALUES (287, 10, '006', 'General Simón Bolívar', '');
INSERT INTO `municipio` VALUES (288, 10, '007', 'Gómez Palacio', '');
INSERT INTO `municipio` VALUES (289, 10, '008', 'Guadalupe Victoria', '');
INSERT INTO `municipio` VALUES (290, 10, '009', 'Guanaceví', '');
INSERT INTO `municipio` VALUES (291, 10, '010', 'Hidalgo', '');
INSERT INTO `municipio` VALUES (292, 10, '011', 'Indé', '');
INSERT INTO `municipio` VALUES (293, 10, '012', 'Lerdo', '');
INSERT INTO `municipio` VALUES (294, 10, '013', 'Mapimí', '');
INSERT INTO `municipio` VALUES (295, 10, '014', 'Mezquital', '');
INSERT INTO `municipio` VALUES (296, 10, '015', 'Nazas', '');
INSERT INTO `municipio` VALUES (297, 10, '016', 'Nombre de Dios', '');
INSERT INTO `municipio` VALUES (298, 10, '017', 'Ocampo', '');
INSERT INTO `municipio` VALUES (299, 10, '018', 'El Oro', '');
INSERT INTO `municipio` VALUES (300, 10, '019', 'Otáez', '');
INSERT INTO `municipio` VALUES (301, 10, '020', 'Pánuco de Coronado', '');
INSERT INTO `municipio` VALUES (302, 10, '021', 'Peñón Blanco', '');
INSERT INTO `municipio` VALUES (303, 10, '022', 'Poanas', '');
INSERT INTO `municipio` VALUES (304, 10, '023', 'Pueblo Nuevo', '');
INSERT INTO `municipio` VALUES (305, 10, '024', 'Rodeo', '');
INSERT INTO `municipio` VALUES (306, 10, '025', 'San Bernardo', '');
INSERT INTO `municipio` VALUES (307, 10, '026', 'San Dimas', '');
INSERT INTO `municipio` VALUES (308, 10, '027', 'San Juan de Guadalupe', '');
INSERT INTO `municipio` VALUES (309, 10, '028', 'San Juan del Río', '');
INSERT INTO `municipio` VALUES (310, 10, '029', 'San Luis del Cordero', '');
INSERT INTO `municipio` VALUES (311, 10, '030', 'San Pedro del Gallo', '');
INSERT INTO `municipio` VALUES (312, 10, '031', 'Santa Clara', '');
INSERT INTO `municipio` VALUES (313, 10, '032', 'Santiago Papasquiaro', '');
INSERT INTO `municipio` VALUES (314, 10, '033', 'Súchil', '');
INSERT INTO `municipio` VALUES (315, 10, '034', 'Tamazula', '');
INSERT INTO `municipio` VALUES (316, 10, '035', 'Tepehuanes', '');
INSERT INTO `municipio` VALUES (317, 10, '036', 'Tlahualilo', '');
INSERT INTO `municipio` VALUES (318, 10, '037', 'Topia', '');
INSERT INTO `municipio` VALUES (319, 10, '038', 'Vicente Guerrero', '');
INSERT INTO `municipio` VALUES (320, 10, '039', 'Nuevo Ideal', '');
INSERT INTO `municipio` VALUES (321, 11, '001', 'Abasolo', '');
INSERT INTO `municipio` VALUES (322, 11, '002', 'Acámbaro', '');
INSERT INTO `municipio` VALUES (323, 11, '003', 'San Miguel de Allende', '');
INSERT INTO `municipio` VALUES (324, 11, '004', 'Apaseo el Alto', '');
INSERT INTO `municipio` VALUES (325, 11, '005', 'Apaseo el Grande', '');
INSERT INTO `municipio` VALUES (326, 11, '006', 'Atarjea', '');
INSERT INTO `municipio` VALUES (327, 11, '007', 'Celaya', '');
INSERT INTO `municipio` VALUES (328, 11, '008', 'Manuel Doblado', '');
INSERT INTO `municipio` VALUES (329, 11, '009', 'Comonfort', '');
INSERT INTO `municipio` VALUES (330, 11, '010', 'Coroneo', '');
INSERT INTO `municipio` VALUES (331, 11, '011', 'Cortazar', '');
INSERT INTO `municipio` VALUES (332, 11, '012', 'Cuerámaro', '');
INSERT INTO `municipio` VALUES (333, 11, '013', 'Doctor Mora', '');
INSERT INTO `municipio` VALUES (334, 11, '014', 'Dolores Hidalgo Cuna de la Independencia Nacional', '');
INSERT INTO `municipio` VALUES (335, 11, '015', 'Guanajuato', '');
INSERT INTO `municipio` VALUES (336, 11, '016', 'Huanímaro', '');
INSERT INTO `municipio` VALUES (337, 11, '017', 'Irapuato', '');
INSERT INTO `municipio` VALUES (338, 11, '018', 'Jaral del Progreso', '');
INSERT INTO `municipio` VALUES (339, 11, '019', 'Jerécuaro', '');
INSERT INTO `municipio` VALUES (340, 11, '020', 'León', '');
INSERT INTO `municipio` VALUES (341, 11, '021', 'Moroleón', '');
INSERT INTO `municipio` VALUES (342, 11, '022', 'Ocampo', '');
INSERT INTO `municipio` VALUES (343, 11, '023', 'Pénjamo', '');
INSERT INTO `municipio` VALUES (344, 11, '024', 'Pueblo Nuevo', '');
INSERT INTO `municipio` VALUES (345, 11, '025', 'Purísima del Rincón', '');
INSERT INTO `municipio` VALUES (346, 11, '026', 'Romita', '');
INSERT INTO `municipio` VALUES (347, 11, '027', 'Salamanca', '');
INSERT INTO `municipio` VALUES (348, 11, '028', 'Salvatierra', '');
INSERT INTO `municipio` VALUES (349, 11, '029', 'San Diego de la Unión', '');
INSERT INTO `municipio` VALUES (350, 11, '030', 'San Felipe', '');
INSERT INTO `municipio` VALUES (351, 11, '031', 'San Francisco del Rincón', '');
INSERT INTO `municipio` VALUES (352, 11, '032', 'San José Iturbide', '');
INSERT INTO `municipio` VALUES (353, 11, '033', 'San Luis de la Paz', '');
INSERT INTO `municipio` VALUES (354, 11, '034', 'Santa Catarina', '');
INSERT INTO `municipio` VALUES (355, 11, '035', 'Santa Cruz de Juventino Rosas', '');
INSERT INTO `municipio` VALUES (356, 11, '036', 'Santiago Maravatío', '');
INSERT INTO `municipio` VALUES (357, 11, '037', 'Silao', '');
INSERT INTO `municipio` VALUES (358, 11, '038', 'Tarandacuao', '');
INSERT INTO `municipio` VALUES (359, 11, '039', 'Tarimoro', '');
INSERT INTO `municipio` VALUES (360, 11, '040', 'Tierra Blanca', '');
INSERT INTO `municipio` VALUES (361, 11, '041', 'Uriangato', '');
INSERT INTO `municipio` VALUES (362, 11, '042', 'Valle de Santiago', '');
INSERT INTO `municipio` VALUES (363, 11, '043', 'Victoria', '');
INSERT INTO `municipio` VALUES (364, 11, '044', 'Villagrán', '');
INSERT INTO `municipio` VALUES (365, 11, '045', 'Xichú', '');
INSERT INTO `municipio` VALUES (366, 11, '046', 'Yuriria', '');
INSERT INTO `municipio` VALUES (367, 12, '001', 'Acapulco de Juárez', '');
INSERT INTO `municipio` VALUES (368, 12, '002', 'Ahuacuotzingo', '');
INSERT INTO `municipio` VALUES (369, 12, '003', 'Ajuchitlán del Progreso', '');
INSERT INTO `municipio` VALUES (370, 12, '004', 'Alcozauca de Guerrero', '');
INSERT INTO `municipio` VALUES (371, 12, '005', 'Alpoyeca', '');
INSERT INTO `municipio` VALUES (372, 12, '006', 'Apaxtla', '');
INSERT INTO `municipio` VALUES (373, 12, '007', 'Arcelia', '');
INSERT INTO `municipio` VALUES (374, 12, '008', 'Atenango del Río', '');
INSERT INTO `municipio` VALUES (375, 12, '009', 'Atlamajalcingo del Monte', '');
INSERT INTO `municipio` VALUES (376, 12, '010', 'Atlixtac', '');
INSERT INTO `municipio` VALUES (377, 12, '011', 'Atoyac de Álvarez', '');
INSERT INTO `municipio` VALUES (378, 12, '012', 'Ayutla de los Libres', '');
INSERT INTO `municipio` VALUES (379, 12, '013', 'Azoyú', '');
INSERT INTO `municipio` VALUES (380, 12, '014', 'Benito Juárez', '');
INSERT INTO `municipio` VALUES (381, 12, '015', 'Buenavista de Cuéllar', '');
INSERT INTO `municipio` VALUES (382, 12, '016', 'Coahuayutla de José María Izazaga', '');
INSERT INTO `municipio` VALUES (383, 12, '017', 'Cocula', '');
INSERT INTO `municipio` VALUES (384, 12, '018', 'Copala', '');
INSERT INTO `municipio` VALUES (385, 12, '019', 'Copalillo', '');
INSERT INTO `municipio` VALUES (386, 12, '020', 'Copanatoyac', '');
INSERT INTO `municipio` VALUES (387, 12, '021', 'Coyuca de Benítez', '');
INSERT INTO `municipio` VALUES (388, 12, '022', 'Coyuca de Catalán', '');
INSERT INTO `municipio` VALUES (389, 12, '023', 'Cuajinicuilapa', '');
INSERT INTO `municipio` VALUES (390, 12, '024', 'Cualác', '');
INSERT INTO `municipio` VALUES (391, 12, '025', 'Cuautepec', '');
INSERT INTO `municipio` VALUES (392, 12, '026', 'Cuetzala del Progreso', '');
INSERT INTO `municipio` VALUES (393, 12, '027', 'Cutzamala de Pinzón', '');
INSERT INTO `municipio` VALUES (394, 12, '028', 'Chilapa de Álvarez', '');
INSERT INTO `municipio` VALUES (395, 12, '029', 'Chilpancingo de los Bravo', '');
INSERT INTO `municipio` VALUES (396, 12, '030', 'Florencio Villarreal', '');
INSERT INTO `municipio` VALUES (397, 12, '031', 'General Canuto A. Neri', '');
INSERT INTO `municipio` VALUES (398, 12, '032', 'General Heliodoro Castillo', '');
INSERT INTO `municipio` VALUES (399, 12, '033', 'Huamuxtitlán', '');
INSERT INTO `municipio` VALUES (400, 12, '034', 'Huitzuco de los Figueroa', '');
INSERT INTO `municipio` VALUES (401, 12, '035', 'Iguala de la Independencia', '');
INSERT INTO `municipio` VALUES (402, 12, '036', 'Igualapa', '');
INSERT INTO `municipio` VALUES (403, 12, '037', 'Ixcateopan de Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (404, 12, '038', 'Zihuatanejo de Azueta', '');
INSERT INTO `municipio` VALUES (405, 12, '039', 'Juan R. Escudero', '');
INSERT INTO `municipio` VALUES (406, 12, '040', 'Leonardo Bravo', '');
INSERT INTO `municipio` VALUES (407, 12, '041', 'Malinaltepec', '');
INSERT INTO `municipio` VALUES (408, 12, '042', 'Mártir de Cuilapan', '');
INSERT INTO `municipio` VALUES (409, 12, '043', 'Metlatónoc', '');
INSERT INTO `municipio` VALUES (410, 12, '044', 'Mochitlán', '');
INSERT INTO `municipio` VALUES (411, 12, '045', 'Olinalá', '');
INSERT INTO `municipio` VALUES (412, 12, '046', 'Ometepec', '');
INSERT INTO `municipio` VALUES (413, 12, '047', 'Pedro Ascencio Alquisiras', '');
INSERT INTO `municipio` VALUES (414, 12, '048', 'Petatlán', '');
INSERT INTO `municipio` VALUES (415, 12, '049', 'Pilcaya', '');
INSERT INTO `municipio` VALUES (416, 12, '050', 'Pungarabato', '');
INSERT INTO `municipio` VALUES (417, 12, '051', 'Quechultenango', '');
INSERT INTO `municipio` VALUES (418, 12, '052', 'San Luis Acatlán', '');
INSERT INTO `municipio` VALUES (419, 12, '053', 'San Marcos', '');
INSERT INTO `municipio` VALUES (420, 12, '054', 'San Miguel Totolapan', '');
INSERT INTO `municipio` VALUES (421, 12, '055', 'Taxco de Alarcón', '');
INSERT INTO `municipio` VALUES (422, 12, '056', 'Tecoanapa', '');
INSERT INTO `municipio` VALUES (423, 12, '057', 'Técpan de Galeana', '');
INSERT INTO `municipio` VALUES (424, 12, '058', 'Teloloapan', '');
INSERT INTO `municipio` VALUES (425, 12, '059', 'Tepecoacuilco de Trujano', '');
INSERT INTO `municipio` VALUES (426, 12, '060', 'Tetipac', '');
INSERT INTO `municipio` VALUES (427, 12, '061', 'Tixtla de Guerrero', '');
INSERT INTO `municipio` VALUES (428, 12, '062', 'Tlacoachistlahuaca', '');
INSERT INTO `municipio` VALUES (429, 12, '063', 'Tlacoapa', '');
INSERT INTO `municipio` VALUES (430, 12, '064', 'Tlalchapa', '');
INSERT INTO `municipio` VALUES (431, 12, '065', 'Tlalixtaquilla de Maldonado', '');
INSERT INTO `municipio` VALUES (432, 12, '066', 'Tlapa de Comonfort', '');
INSERT INTO `municipio` VALUES (433, 12, '067', 'Tlapehuala', '');
INSERT INTO `municipio` VALUES (434, 12, '068', 'La Unión de Isidoro Montes de Oca', '');
INSERT INTO `municipio` VALUES (435, 12, '069', 'Xalpatláhuac', '');
INSERT INTO `municipio` VALUES (436, 12, '070', 'Xochihuehuetlán', '');
INSERT INTO `municipio` VALUES (437, 12, '071', 'Xochistlahuaca', '');
INSERT INTO `municipio` VALUES (438, 12, '072', 'Zapotitlán Tablas', '');
INSERT INTO `municipio` VALUES (439, 12, '073', 'Zirándaro', '');
INSERT INTO `municipio` VALUES (440, 12, '074', 'Zitlala', '');
INSERT INTO `municipio` VALUES (441, 12, '075', 'Eduardo Neri', '');
INSERT INTO `municipio` VALUES (442, 12, '076', 'Acatepec', '');
INSERT INTO `municipio` VALUES (443, 12, '077', 'Marquelia', '');
INSERT INTO `municipio` VALUES (444, 12, '078', 'Cochoapa el Grande', '');
INSERT INTO `municipio` VALUES (445, 12, '079', 'José Joaquín de Herrera', '');
INSERT INTO `municipio` VALUES (446, 12, '080', 'Juchitán', '');
INSERT INTO `municipio` VALUES (447, 12, '081', 'Iliatenco', '');
INSERT INTO `municipio` VALUES (448, 13, '001', 'Acatlán', '');
INSERT INTO `municipio` VALUES (449, 13, '002', 'Acaxochitlán', '');
INSERT INTO `municipio` VALUES (450, 13, '003', 'Actopan', '');
INSERT INTO `municipio` VALUES (451, 13, '004', 'Agua Blanca de Iturbide', '');
INSERT INTO `municipio` VALUES (452, 13, '005', 'Ajacuba', '');
INSERT INTO `municipio` VALUES (453, 13, '006', 'Alfajayucan', '');
INSERT INTO `municipio` VALUES (454, 13, '007', 'Almoloya', '');
INSERT INTO `municipio` VALUES (455, 13, '008', 'Apan', '');
INSERT INTO `municipio` VALUES (456, 13, '009', 'El Arenal', '');
INSERT INTO `municipio` VALUES (457, 13, '010', 'Atitalaquia', '');
INSERT INTO `municipio` VALUES (458, 13, '011', 'Atlapexco', '');
INSERT INTO `municipio` VALUES (459, 13, '012', 'Atotonilco el Grande', '');
INSERT INTO `municipio` VALUES (460, 13, '013', 'Atotonilco de Tula', '');
INSERT INTO `municipio` VALUES (461, 13, '014', 'Calnali', '');
INSERT INTO `municipio` VALUES (462, 13, '015', 'Cardonal', '');
INSERT INTO `municipio` VALUES (463, 13, '016', 'Cuautepec de Hinojosa', '');
INSERT INTO `municipio` VALUES (464, 13, '017', 'Chapantongo', '');
INSERT INTO `municipio` VALUES (465, 13, '018', 'Chapulhuacán', '');
INSERT INTO `municipio` VALUES (466, 13, '019', 'Chilcuautla', '');
INSERT INTO `municipio` VALUES (467, 13, '020', 'Eloxochitlán', '');
INSERT INTO `municipio` VALUES (468, 13, '021', 'Emiliano Zapata', '');
INSERT INTO `municipio` VALUES (469, 13, '022', 'Epazoyucan', '');
INSERT INTO `municipio` VALUES (470, 13, '023', 'Francisco I. Madero', '');
INSERT INTO `municipio` VALUES (471, 13, '024', 'Huasca de Ocampo', '');
INSERT INTO `municipio` VALUES (472, 13, '025', 'Huautla', '');
INSERT INTO `municipio` VALUES (473, 13, '026', 'Huazalingo', '');
INSERT INTO `municipio` VALUES (474, 13, '027', 'Huehuetla', '');
INSERT INTO `municipio` VALUES (475, 13, '028', 'Huejutla de Reyes', '');
INSERT INTO `municipio` VALUES (476, 13, '029', 'Huichapan', '');
INSERT INTO `municipio` VALUES (477, 13, '030', 'Ixmiquilpan', '');
INSERT INTO `municipio` VALUES (478, 13, '031', 'Jacala de Ledezma', '');
INSERT INTO `municipio` VALUES (479, 13, '032', 'Jaltocán', '');
INSERT INTO `municipio` VALUES (480, 13, '033', 'Juárez Hidalgo', '');
INSERT INTO `municipio` VALUES (481, 13, '034', 'Lolotla', '');
INSERT INTO `municipio` VALUES (482, 13, '035', 'Metepec', '');
INSERT INTO `municipio` VALUES (483, 13, '036', 'San Agustín Metzquititlán', '');
INSERT INTO `municipio` VALUES (484, 13, '037', 'Metztitlán', '');
INSERT INTO `municipio` VALUES (485, 13, '038', 'Mineral del Chico', '');
INSERT INTO `municipio` VALUES (486, 13, '039', 'Mineral del Monte', '');
INSERT INTO `municipio` VALUES (487, 13, '040', 'La Misión', '');
INSERT INTO `municipio` VALUES (488, 13, '041', 'Mixquiahuala de Juárez', '');
INSERT INTO `municipio` VALUES (489, 13, '042', 'Molango de Escamilla', '');
INSERT INTO `municipio` VALUES (490, 13, '043', 'Nicolás Flores', '');
INSERT INTO `municipio` VALUES (491, 13, '044', 'Nopala de Villagrán', '');
INSERT INTO `municipio` VALUES (492, 13, '045', 'Omitlán de Juárez', '');
INSERT INTO `municipio` VALUES (493, 13, '046', 'San Felipe Orizatlán', '');
INSERT INTO `municipio` VALUES (494, 13, '047', 'Pacula', '');
INSERT INTO `municipio` VALUES (495, 13, '048', 'Pachuca de Soto', '');
INSERT INTO `municipio` VALUES (496, 13, '049', 'Pisaflores', '');
INSERT INTO `municipio` VALUES (497, 13, '050', 'Progreso de Obregón', '');
INSERT INTO `municipio` VALUES (498, 13, '051', 'Mineral de la Reforma', '');
INSERT INTO `municipio` VALUES (499, 13, '052', 'San Agustín Tlaxiaca', '');
INSERT INTO `municipio` VALUES (500, 13, '053', 'San Bartolo Tutotepec', '');
INSERT INTO `municipio` VALUES (501, 13, '054', 'San Salvador', '');
INSERT INTO `municipio` VALUES (502, 13, '055', 'Santiago de Anaya', '');
INSERT INTO `municipio` VALUES (503, 13, '056', 'Santiago Tulantepec de Lugo Guerrero', '');
INSERT INTO `municipio` VALUES (504, 13, '057', 'Singuilucan', '');
INSERT INTO `municipio` VALUES (505, 13, '058', 'Tasquillo', '');
INSERT INTO `municipio` VALUES (506, 13, '059', 'Tecozautla', '');
INSERT INTO `municipio` VALUES (507, 13, '060', 'Tenango de Doria', '');
INSERT INTO `municipio` VALUES (508, 13, '061', 'Tepeapulco', '');
INSERT INTO `municipio` VALUES (509, 13, '062', 'Tepehuacán de Guerrero', '');
INSERT INTO `municipio` VALUES (510, 13, '063', 'Tepeji del Río de Ocampo', '');
INSERT INTO `municipio` VALUES (511, 13, '064', 'Tepetitlán', '');
INSERT INTO `municipio` VALUES (512, 13, '065', 'Tetepango', '');
INSERT INTO `municipio` VALUES (513, 13, '066', 'Villa de Tezontepec', '');
INSERT INTO `municipio` VALUES (514, 13, '067', 'Tezontepec de Aldama', '');
INSERT INTO `municipio` VALUES (515, 13, '068', 'Tianguistengo', '');
INSERT INTO `municipio` VALUES (516, 13, '069', 'Tizayuca', '');
INSERT INTO `municipio` VALUES (517, 13, '070', 'Tlahuelilpan', '');
INSERT INTO `municipio` VALUES (518, 13, '071', 'Tlahuiltepa', '');
INSERT INTO `municipio` VALUES (519, 13, '072', 'Tlanalapa', '');
INSERT INTO `municipio` VALUES (520, 13, '073', 'Tlanchinol', '');
INSERT INTO `municipio` VALUES (521, 13, '074', 'Tlaxcoapan', '');
INSERT INTO `municipio` VALUES (522, 13, '075', 'Tolcayuca', '');
INSERT INTO `municipio` VALUES (523, 13, '076', 'Tula de Allende', '');
INSERT INTO `municipio` VALUES (524, 13, '077', 'Tulancingo de Bravo', '');
INSERT INTO `municipio` VALUES (525, 13, '078', 'Xochiatipan', '');
INSERT INTO `municipio` VALUES (526, 13, '079', 'Xochicoatlán', '');
INSERT INTO `municipio` VALUES (527, 13, '080', 'Yahualica', '');
INSERT INTO `municipio` VALUES (528, 13, '081', 'Zacualtipán de Ángeles', '');
INSERT INTO `municipio` VALUES (529, 13, '082', 'Zapotlán de Juárez', '');
INSERT INTO `municipio` VALUES (530, 13, '083', 'Zempoala', '');
INSERT INTO `municipio` VALUES (531, 13, '084', 'Zimapán', '');
INSERT INTO `municipio` VALUES (532, 14, '001', 'Acatic', '');
INSERT INTO `municipio` VALUES (533, 14, '002', 'Acatlán de Juárez', '');
INSERT INTO `municipio` VALUES (534, 14, '003', 'Ahualulco de Mercado', '');
INSERT INTO `municipio` VALUES (535, 14, '004', 'Amacueca', '');
INSERT INTO `municipio` VALUES (536, 14, '005', 'Amatitán', '');
INSERT INTO `municipio` VALUES (537, 14, '006', 'Ameca', '');
INSERT INTO `municipio` VALUES (538, 14, '007', 'San Juanito de Escobedo', '');
INSERT INTO `municipio` VALUES (539, 14, '008', 'Arandas', '');
INSERT INTO `municipio` VALUES (540, 14, '009', 'El Arenal', '');
INSERT INTO `municipio` VALUES (541, 14, '010', 'Atemajac de Brizuela', '');
INSERT INTO `municipio` VALUES (542, 14, '011', 'Atengo', '');
INSERT INTO `municipio` VALUES (543, 14, '012', 'Atenguillo', '');
INSERT INTO `municipio` VALUES (544, 14, '013', 'Atotonilco el Alto', '');
INSERT INTO `municipio` VALUES (545, 14, '014', 'Atoyac', '');
INSERT INTO `municipio` VALUES (546, 14, '015', 'Autlán de Navarro', '');
INSERT INTO `municipio` VALUES (547, 14, '016', 'Ayotlán', '');
INSERT INTO `municipio` VALUES (548, 14, '017', 'Ayutla', '');
INSERT INTO `municipio` VALUES (549, 14, '018', 'La Barca', '');
INSERT INTO `municipio` VALUES (550, 14, '019', 'Bolaños', '');
INSERT INTO `municipio` VALUES (551, 14, '020', 'Cabo Corrientes', '');
INSERT INTO `municipio` VALUES (552, 14, '021', 'Casimiro Castillo', '');
INSERT INTO `municipio` VALUES (553, 14, '022', 'Cihuatlán', '');
INSERT INTO `municipio` VALUES (554, 14, '023', 'Zapotlán el Grande', '');
INSERT INTO `municipio` VALUES (555, 14, '024', 'Cocula', '');
INSERT INTO `municipio` VALUES (556, 14, '025', 'Colotlán', '');
INSERT INTO `municipio` VALUES (557, 14, '026', 'Concepción de Buenos Aires', '');
INSERT INTO `municipio` VALUES (558, 14, '027', 'Cuautitlán de García Barragán', '');
INSERT INTO `municipio` VALUES (559, 14, '028', 'Cuautla', '');
INSERT INTO `municipio` VALUES (560, 14, '029', 'Cuquío', '');
INSERT INTO `municipio` VALUES (561, 14, '030', 'Chapala', '');
INSERT INTO `municipio` VALUES (562, 14, '031', 'Chimaltitán', '');
INSERT INTO `municipio` VALUES (563, 14, '032', 'Chiquilistlán', '');
INSERT INTO `municipio` VALUES (564, 14, '033', 'Degollado', '');
INSERT INTO `municipio` VALUES (565, 14, '034', 'Ejutla', '');
INSERT INTO `municipio` VALUES (566, 14, '035', 'Encarnación de Díaz', '');
INSERT INTO `municipio` VALUES (567, 14, '036', 'Etzatlán', '');
INSERT INTO `municipio` VALUES (568, 14, '037', 'El Grullo', '');
INSERT INTO `municipio` VALUES (569, 14, '038', 'Guachinango', '');
INSERT INTO `municipio` VALUES (570, 14, '039', 'Guadalajara', '');
INSERT INTO `municipio` VALUES (571, 14, '040', 'Hostotipaquillo', '');
INSERT INTO `municipio` VALUES (572, 14, '041', 'Huejúcar', '');
INSERT INTO `municipio` VALUES (573, 14, '042', 'Huejuquilla el Alto', '');
INSERT INTO `municipio` VALUES (574, 14, '043', 'La Huerta', '');
INSERT INTO `municipio` VALUES (575, 14, '044', 'Ixtlahuacán de los Membrillos', '');
INSERT INTO `municipio` VALUES (576, 14, '045', 'Ixtlahuacán del Río', '');
INSERT INTO `municipio` VALUES (577, 14, '046', 'Jalostotitlán', '');
INSERT INTO `municipio` VALUES (578, 14, '047', 'Jamay', '');
INSERT INTO `municipio` VALUES (579, 14, '048', 'Jesús María', '');
INSERT INTO `municipio` VALUES (580, 14, '049', 'Jilotlán de los Dolores', '');
INSERT INTO `municipio` VALUES (581, 14, '050', 'Jocotepec', '');
INSERT INTO `municipio` VALUES (582, 14, '051', 'Juanacatlán', '');
INSERT INTO `municipio` VALUES (583, 14, '052', 'Juchitlán', '');
INSERT INTO `municipio` VALUES (584, 14, '053', 'Lagos de Moreno', '');
INSERT INTO `municipio` VALUES (585, 14, '054', 'El Limón', '');
INSERT INTO `municipio` VALUES (586, 14, '055', 'Magdalena', '');
INSERT INTO `municipio` VALUES (587, 14, '056', 'Santa María del Oro', '');
INSERT INTO `municipio` VALUES (588, 14, '057', 'La Manzanilla de la Paz', '');
INSERT INTO `municipio` VALUES (589, 14, '058', 'Mascota', '');
INSERT INTO `municipio` VALUES (590, 14, '059', 'Mazamitla', '');
INSERT INTO `municipio` VALUES (591, 14, '060', 'Mexticacán', '');
INSERT INTO `municipio` VALUES (592, 14, '061', 'Mezquitic', '');
INSERT INTO `municipio` VALUES (593, 14, '062', 'Mixtlán', '');
INSERT INTO `municipio` VALUES (594, 14, '063', 'Ocotlán', '');
INSERT INTO `municipio` VALUES (595, 14, '064', 'Ojuelos de Jalisco', '');
INSERT INTO `municipio` VALUES (596, 14, '065', 'Pihuamo', '');
INSERT INTO `municipio` VALUES (597, 14, '066', 'Poncitlán', '');
INSERT INTO `municipio` VALUES (598, 14, '067', 'Puerto Vallarta', '');
INSERT INTO `municipio` VALUES (599, 14, '068', 'Villa Purificación', '');
INSERT INTO `municipio` VALUES (600, 14, '069', 'Quitupan', '');
INSERT INTO `municipio` VALUES (601, 14, '070', 'El Salto', '');
INSERT INTO `municipio` VALUES (602, 14, '071', 'San Cristóbal de la Barranca', '');
INSERT INTO `municipio` VALUES (603, 14, '072', 'San Diego de Alejandría', '');
INSERT INTO `municipio` VALUES (604, 14, '073', 'San Juan de los Lagos', '');
INSERT INTO `municipio` VALUES (605, 14, '074', 'San Julián', '');
INSERT INTO `municipio` VALUES (606, 14, '075', 'San Marcos', '');
INSERT INTO `municipio` VALUES (607, 14, '076', 'San Martín de Bolaños', '');
INSERT INTO `municipio` VALUES (608, 14, '077', 'San Martín Hidalgo', '');
INSERT INTO `municipio` VALUES (609, 14, '078', 'San Miguel el Alto', '');
INSERT INTO `municipio` VALUES (610, 14, '079', 'Gómez Farías', '');
INSERT INTO `municipio` VALUES (611, 14, '080', 'San Sebastián del Oeste', '');
INSERT INTO `municipio` VALUES (612, 14, '081', 'Santa María de los Ángeles', '');
INSERT INTO `municipio` VALUES (613, 14, '082', 'Sayula', '');
INSERT INTO `municipio` VALUES (614, 14, '083', 'Tala', '');
INSERT INTO `municipio` VALUES (615, 14, '084', 'Talpa de Allende', '');
INSERT INTO `municipio` VALUES (616, 14, '085', 'Tamazula de Gordiano', '');
INSERT INTO `municipio` VALUES (617, 14, '086', 'Tapalpa', '');
INSERT INTO `municipio` VALUES (618, 14, '087', 'Tecalitlán', '');
INSERT INTO `municipio` VALUES (619, 14, '088', 'Tecolotlán', '');
INSERT INTO `municipio` VALUES (620, 14, '089', 'Techaluta de Montenegro', '');
INSERT INTO `municipio` VALUES (621, 14, '090', 'Tenamaxtlán', '');
INSERT INTO `municipio` VALUES (622, 14, '091', 'Teocaltiche', '');
INSERT INTO `municipio` VALUES (623, 14, '092', 'Teocuitatlán de Corona', '');
INSERT INTO `municipio` VALUES (624, 14, '093', 'Tepatitlán de Morelos', '');
INSERT INTO `municipio` VALUES (625, 14, '094', 'Tequila', '');
INSERT INTO `municipio` VALUES (626, 14, '095', 'Teuchitlán', '');
INSERT INTO `municipio` VALUES (627, 14, '096', 'Tizapán el Alto', '');
INSERT INTO `municipio` VALUES (628, 14, '097', 'Tlajomulco de Zúñiga', '');
INSERT INTO `municipio` VALUES (629, 14, '098', 'San Pedro Tlaquepaque', '');
INSERT INTO `municipio` VALUES (630, 14, '099', 'Tolimán', '');
INSERT INTO `municipio` VALUES (631, 14, '100', 'Tomatlán', '');
INSERT INTO `municipio` VALUES (632, 14, '101', 'Tonalá', '');
INSERT INTO `municipio` VALUES (633, 14, '102', 'Tonaya', '');
INSERT INTO `municipio` VALUES (634, 14, '103', 'Tonila', '');
INSERT INTO `municipio` VALUES (635, 14, '104', 'Totatiche', '');
INSERT INTO `municipio` VALUES (636, 14, '105', 'Tototlán', '');
INSERT INTO `municipio` VALUES (637, 14, '106', 'Tuxcacuesco', '');
INSERT INTO `municipio` VALUES (638, 14, '107', 'Tuxcueca', '');
INSERT INTO `municipio` VALUES (639, 14, '108', 'Tuxpan', '');
INSERT INTO `municipio` VALUES (640, 14, '109', 'Unión de San Antonio', '');
INSERT INTO `municipio` VALUES (641, 14, '110', 'Unión de Tula', '');
INSERT INTO `municipio` VALUES (642, 14, '111', 'Valle de Guadalupe', '');
INSERT INTO `municipio` VALUES (643, 14, '112', 'Valle de Juárez', '');
INSERT INTO `municipio` VALUES (644, 14, '113', 'San Gabriel', '');
INSERT INTO `municipio` VALUES (645, 14, '114', 'Villa Corona', '');
INSERT INTO `municipio` VALUES (646, 14, '115', 'Villa Guerrero', '');
INSERT INTO `municipio` VALUES (647, 14, '116', 'Villa Hidalgo', '');
INSERT INTO `municipio` VALUES (648, 14, '117', 'Cañadas de Obregón', '');
INSERT INTO `municipio` VALUES (649, 14, '118', 'Yahualica de González Gallo', '');
INSERT INTO `municipio` VALUES (650, 14, '119', 'Zacoalco de Torres', '');
INSERT INTO `municipio` VALUES (651, 14, '120', 'Zapopan', '');
INSERT INTO `municipio` VALUES (652, 14, '121', 'Zapotiltic', '');
INSERT INTO `municipio` VALUES (653, 14, '122', 'Zapotitlán de Vadillo', '');
INSERT INTO `municipio` VALUES (654, 14, '123', 'Zapotlán del Rey', '');
INSERT INTO `municipio` VALUES (655, 14, '124', 'Zapotlanejo', '');
INSERT INTO `municipio` VALUES (656, 14, '125', 'San Ignacio Cerro Gordo', '');
INSERT INTO `municipio` VALUES (657, 15, '001', 'Acambay', '');
INSERT INTO `municipio` VALUES (658, 15, '002', 'Acolman', '');
INSERT INTO `municipio` VALUES (659, 15, '003', 'Aculco', '');
INSERT INTO `municipio` VALUES (660, 15, '004', 'Almoloya de Alquisiras', '');
INSERT INTO `municipio` VALUES (661, 15, '005', 'Almoloya de Juárez', '');
INSERT INTO `municipio` VALUES (662, 15, '006', 'Almoloya del Río', '');
INSERT INTO `municipio` VALUES (663, 15, '007', 'Amanalco', '');
INSERT INTO `municipio` VALUES (664, 15, '008', 'Amatepec', '');
INSERT INTO `municipio` VALUES (665, 15, '009', 'Amecameca', '');
INSERT INTO `municipio` VALUES (666, 15, '010', 'Apaxco', '');
INSERT INTO `municipio` VALUES (667, 15, '011', 'Atenco', '');
INSERT INTO `municipio` VALUES (668, 15, '012', 'Atizapán', '');
INSERT INTO `municipio` VALUES (669, 15, '013', 'Atizapán de Zaragoza', '');
INSERT INTO `municipio` VALUES (670, 15, '014', 'Atlacomulco', '');
INSERT INTO `municipio` VALUES (671, 15, '015', 'Atlautla', '');
INSERT INTO `municipio` VALUES (672, 15, '016', 'Axapusco', '');
INSERT INTO `municipio` VALUES (673, 15, '017', 'Ayapango', '');
INSERT INTO `municipio` VALUES (674, 15, '018', 'Calimaya', '');
INSERT INTO `municipio` VALUES (675, 15, '019', 'Capulhuac', '');
INSERT INTO `municipio` VALUES (676, 15, '020', 'Coacalco de Berriozábal', '');
INSERT INTO `municipio` VALUES (677, 15, '021', 'Coatepec Harinas', '');
INSERT INTO `municipio` VALUES (678, 15, '022', 'Cocotitlán', '');
INSERT INTO `municipio` VALUES (679, 15, '023', 'Coyotepec', '');
INSERT INTO `municipio` VALUES (680, 15, '024', 'Cuautitlán', '');
INSERT INTO `municipio` VALUES (681, 15, '025', 'Chalco', '');
INSERT INTO `municipio` VALUES (682, 15, '026', 'Chapa de Mota', '');
INSERT INTO `municipio` VALUES (683, 15, '027', 'Chapultepec', '');
INSERT INTO `municipio` VALUES (684, 15, '028', 'Chiautla', '');
INSERT INTO `municipio` VALUES (685, 15, '029', 'Chicoloapan', '');
INSERT INTO `municipio` VALUES (686, 15, '030', 'Chiconcuac', '');
INSERT INTO `municipio` VALUES (687, 15, '031', 'Chimalhuacán', '');
INSERT INTO `municipio` VALUES (688, 15, '032', 'Donato Guerra', '');
INSERT INTO `municipio` VALUES (689, 15, '033', 'Ecatepec de Morelos', '');
INSERT INTO `municipio` VALUES (690, 15, '034', 'Ecatzingo', '');
INSERT INTO `municipio` VALUES (691, 15, '035', 'Huehuetoca', '');
INSERT INTO `municipio` VALUES (692, 15, '036', 'Hueypoxtla', '');
INSERT INTO `municipio` VALUES (693, 15, '037', 'Huixquilucan', '');
INSERT INTO `municipio` VALUES (694, 15, '038', 'Isidro Fabela', '');
INSERT INTO `municipio` VALUES (695, 15, '039', 'Ixtapaluca', '');
INSERT INTO `municipio` VALUES (696, 15, '040', 'Ixtapan de la Sal', '');
INSERT INTO `municipio` VALUES (697, 15, '041', 'Ixtapan del Oro', '');
INSERT INTO `municipio` VALUES (698, 15, '042', 'Ixtlahuaca', '');
INSERT INTO `municipio` VALUES (699, 15, '043', 'Xalatlaco', '');
INSERT INTO `municipio` VALUES (700, 15, '044', 'Jaltenco', '');
INSERT INTO `municipio` VALUES (701, 15, '045', 'Jilotepec', '');
INSERT INTO `municipio` VALUES (702, 15, '046', 'Jilotzingo', '');
INSERT INTO `municipio` VALUES (703, 15, '047', 'Jiquipilco', '');
INSERT INTO `municipio` VALUES (704, 15, '048', 'Jocotitlán', '');
INSERT INTO `municipio` VALUES (705, 15, '049', 'Joquicingo', '');
INSERT INTO `municipio` VALUES (706, 15, '050', 'Juchitepec', '');
INSERT INTO `municipio` VALUES (707, 15, '051', 'Lerma', '');
INSERT INTO `municipio` VALUES (708, 15, '052', 'Malinalco', '');
INSERT INTO `municipio` VALUES (709, 15, '053', 'Melchor Ocampo', '');
INSERT INTO `municipio` VALUES (710, 15, '054', 'Metepec', '');
INSERT INTO `municipio` VALUES (711, 15, '055', 'Mexicaltzingo', '');
INSERT INTO `municipio` VALUES (712, 15, '056', 'Morelos', '');
INSERT INTO `municipio` VALUES (713, 15, '057', 'Naucalpan de Juárez', '');
INSERT INTO `municipio` VALUES (714, 15, '058', 'Nezahualcóyotl', '');
INSERT INTO `municipio` VALUES (715, 15, '059', 'Nextlalpan', '');
INSERT INTO `municipio` VALUES (716, 15, '060', 'Nicolás Romero', '');
INSERT INTO `municipio` VALUES (717, 15, '061', 'Nopaltepec', '');
INSERT INTO `municipio` VALUES (718, 15, '062', 'Ocoyoacac', '');
INSERT INTO `municipio` VALUES (719, 15, '063', 'Ocuilan', '');
INSERT INTO `municipio` VALUES (720, 15, '064', 'El Oro', '');
INSERT INTO `municipio` VALUES (721, 15, '065', 'Otumba', '');
INSERT INTO `municipio` VALUES (722, 15, '066', 'Otzoloapan', '');
INSERT INTO `municipio` VALUES (723, 15, '067', 'Otzolotepec', '');
INSERT INTO `municipio` VALUES (724, 15, '068', 'Ozumba', '');
INSERT INTO `municipio` VALUES (725, 15, '069', 'Papalotla', '');
INSERT INTO `municipio` VALUES (726, 15, '070', 'La Paz', '');
INSERT INTO `municipio` VALUES (727, 15, '071', 'Polotitlán', '');
INSERT INTO `municipio` VALUES (728, 15, '072', 'Rayón', '');
INSERT INTO `municipio` VALUES (729, 15, '073', 'San Antonio la Isla', '');
INSERT INTO `municipio` VALUES (730, 15, '074', 'San Felipe del Progreso', '');
INSERT INTO `municipio` VALUES (731, 15, '075', 'San Martín de las Pirámides', '');
INSERT INTO `municipio` VALUES (732, 15, '076', 'San Mateo Atenco', '');
INSERT INTO `municipio` VALUES (733, 15, '077', 'San Simón de Guerrero', '');
INSERT INTO `municipio` VALUES (734, 15, '078', 'Santo Tomás', '');
INSERT INTO `municipio` VALUES (735, 15, '079', 'Soyaniquilpan de Juárez', '');
INSERT INTO `municipio` VALUES (736, 15, '080', 'Sultepec', '');
INSERT INTO `municipio` VALUES (737, 15, '081', 'Tecámac', '');
INSERT INTO `municipio` VALUES (738, 15, '082', 'Tejupilco', '');
INSERT INTO `municipio` VALUES (739, 15, '083', 'Temamatla', '');
INSERT INTO `municipio` VALUES (740, 15, '084', 'Temascalapa', '');
INSERT INTO `municipio` VALUES (741, 15, '085', 'Temascalcingo', '');
INSERT INTO `municipio` VALUES (742, 15, '086', 'Temascaltepec', '');
INSERT INTO `municipio` VALUES (743, 15, '087', 'Temoaya', '');
INSERT INTO `municipio` VALUES (744, 15, '088', 'Tenancingo', '');
INSERT INTO `municipio` VALUES (745, 15, '089', 'Tenango del Aire', '');
INSERT INTO `municipio` VALUES (746, 15, '090', 'Tenango del Valle', '');
INSERT INTO `municipio` VALUES (747, 15, '091', 'Teoloyucan', '');
INSERT INTO `municipio` VALUES (748, 15, '092', 'Teotihuacán', '');
INSERT INTO `municipio` VALUES (749, 15, '093', 'Tepetlaoxtoc', '');
INSERT INTO `municipio` VALUES (750, 15, '094', 'Tepetlixpa', '');
INSERT INTO `municipio` VALUES (751, 15, '095', 'Tepotzotlán', '');
INSERT INTO `municipio` VALUES (752, 15, '096', 'Tequixquiac', '');
INSERT INTO `municipio` VALUES (753, 15, '097', 'Texcaltitlán', '');
INSERT INTO `municipio` VALUES (754, 15, '098', 'Texcalyacac', '');
INSERT INTO `municipio` VALUES (755, 15, '099', 'Texcoco', '');
INSERT INTO `municipio` VALUES (756, 15, '100', 'Tezoyuca', '');
INSERT INTO `municipio` VALUES (757, 15, '101', 'Tianguistenco', '');
INSERT INTO `municipio` VALUES (758, 15, '102', 'Timilpan', '');
INSERT INTO `municipio` VALUES (759, 15, '103', 'Tlalmanalco', '');
INSERT INTO `municipio` VALUES (760, 15, '104', 'Tlalnepantla de Baz', '');
INSERT INTO `municipio` VALUES (761, 15, '105', 'Tlatlaya', '');
INSERT INTO `municipio` VALUES (762, 15, '106', 'Toluca', '');
INSERT INTO `municipio` VALUES (763, 15, '107', 'Tonatico', '');
INSERT INTO `municipio` VALUES (764, 15, '108', 'Tultepec', '');
INSERT INTO `municipio` VALUES (765, 15, '109', 'Tultitlán', '');
INSERT INTO `municipio` VALUES (766, 15, '110', 'Valle de Bravo', '');
INSERT INTO `municipio` VALUES (767, 15, '111', 'Villa de Allende', '');
INSERT INTO `municipio` VALUES (768, 15, '112', 'Villa del Carbón', '');
INSERT INTO `municipio` VALUES (769, 15, '113', 'Villa Guerrero', '');
INSERT INTO `municipio` VALUES (770, 15, '114', 'Villa Victoria', '');
INSERT INTO `municipio` VALUES (771, 15, '115', 'Xonacatlán', '');
INSERT INTO `municipio` VALUES (772, 15, '116', 'Zacazonapan', '');
INSERT INTO `municipio` VALUES (773, 15, '117', 'Zacualpan', '');
INSERT INTO `municipio` VALUES (774, 15, '118', 'Zinacantepec', '');
INSERT INTO `municipio` VALUES (775, 15, '119', 'Zumpahuacán', '');
INSERT INTO `municipio` VALUES (776, 15, '120', 'Zumpango', '');
INSERT INTO `municipio` VALUES (777, 15, '121', 'Cuautitlán Izcalli', '');
INSERT INTO `municipio` VALUES (778, 15, '122', 'Valle de Chalco Solidaridad', '');
INSERT INTO `municipio` VALUES (779, 15, '123', 'Luvianos', '');
INSERT INTO `municipio` VALUES (780, 15, '124', 'San José del Rincón', '');
INSERT INTO `municipio` VALUES (781, 15, '125', 'Tonanitla', '');
INSERT INTO `municipio` VALUES (782, 16, '001', 'Acuitzio', '');
INSERT INTO `municipio` VALUES (783, 16, '002', 'Aguililla', '');
INSERT INTO `municipio` VALUES (784, 16, '003', 'Álvaro Obregón', '');
INSERT INTO `municipio` VALUES (785, 16, '004', 'Angamacutiro', '');
INSERT INTO `municipio` VALUES (786, 16, '005', 'Angangueo', '');
INSERT INTO `municipio` VALUES (787, 16, '006', 'Apatzingán', '');
INSERT INTO `municipio` VALUES (788, 16, '007', 'Aporo', '');
INSERT INTO `municipio` VALUES (789, 16, '008', 'Aquila', '');
INSERT INTO `municipio` VALUES (790, 16, '009', 'Ario', '');
INSERT INTO `municipio` VALUES (791, 16, '010', 'Arteaga', '');
INSERT INTO `municipio` VALUES (792, 16, '011', 'Briseñas', '');
INSERT INTO `municipio` VALUES (793, 16, '012', 'Buenavista', '');
INSERT INTO `municipio` VALUES (794, 16, '013', 'Carácuaro', '');
INSERT INTO `municipio` VALUES (795, 16, '014', 'Coahuayana', '');
INSERT INTO `municipio` VALUES (796, 16, '015', 'Coalcomán de Vázquez Pallares', '');
INSERT INTO `municipio` VALUES (797, 16, '016', 'Coeneo', '');
INSERT INTO `municipio` VALUES (798, 16, '017', 'Contepec', '');
INSERT INTO `municipio` VALUES (799, 16, '018', 'Copándaro', '');
INSERT INTO `municipio` VALUES (800, 16, '019', 'Cotija', '');
INSERT INTO `municipio` VALUES (801, 16, '020', 'Cuitzeo', '');
INSERT INTO `municipio` VALUES (802, 16, '021', 'Charapan', '');
INSERT INTO `municipio` VALUES (803, 16, '022', 'Charo', '');
INSERT INTO `municipio` VALUES (804, 16, '023', 'Chavinda', '');
INSERT INTO `municipio` VALUES (805, 16, '024', 'Cherán', '');
INSERT INTO `municipio` VALUES (806, 16, '025', 'Chilchota', '');
INSERT INTO `municipio` VALUES (807, 16, '026', 'Chinicuila', '');
INSERT INTO `municipio` VALUES (808, 16, '027', 'Chucándiro', '');
INSERT INTO `municipio` VALUES (809, 16, '028', 'Churintzio', '');
INSERT INTO `municipio` VALUES (810, 16, '029', 'Churumuco', '');
INSERT INTO `municipio` VALUES (811, 16, '030', 'Ecuandureo', '');
INSERT INTO `municipio` VALUES (812, 16, '031', 'Epitacio Huerta', '');
INSERT INTO `municipio` VALUES (813, 16, '032', 'Erongarícuaro', '');
INSERT INTO `municipio` VALUES (814, 16, '033', 'Gabriel Zamora', '');
INSERT INTO `municipio` VALUES (815, 16, '034', 'Hidalgo', '');
INSERT INTO `municipio` VALUES (816, 16, '035', 'La Huacana', '');
INSERT INTO `municipio` VALUES (817, 16, '036', 'Huandacareo', '');
INSERT INTO `municipio` VALUES (818, 16, '037', 'Huaniqueo', '');
INSERT INTO `municipio` VALUES (819, 16, '038', 'Huetamo', '');
INSERT INTO `municipio` VALUES (820, 16, '039', 'Huiramba', '');
INSERT INTO `municipio` VALUES (821, 16, '040', 'Indaparapeo', '');
INSERT INTO `municipio` VALUES (822, 16, '041', 'Irimbo', '');
INSERT INTO `municipio` VALUES (823, 16, '042', 'Ixtlán', '');
INSERT INTO `municipio` VALUES (824, 16, '043', 'Jacona', '');
INSERT INTO `municipio` VALUES (825, 16, '044', 'Jiménez', '');
INSERT INTO `municipio` VALUES (826, 16, '045', 'Jiquilpan', '');
INSERT INTO `municipio` VALUES (827, 16, '046', 'Juárez', '');
INSERT INTO `municipio` VALUES (828, 16, '047', 'Jungapeo', '');
INSERT INTO `municipio` VALUES (829, 16, '048', 'Lagunillas', '');
INSERT INTO `municipio` VALUES (830, 16, '049', 'Madero', '');
INSERT INTO `municipio` VALUES (831, 16, '050', 'Maravatío', '');
INSERT INTO `municipio` VALUES (832, 16, '051', 'Marcos Castellanos', '');
INSERT INTO `municipio` VALUES (833, 16, '052', 'Lázaro Cárdenas', '');
INSERT INTO `municipio` VALUES (834, 16, '053', 'Morelia', '');
INSERT INTO `municipio` VALUES (835, 16, '054', 'Morelos', '');
INSERT INTO `municipio` VALUES (836, 16, '055', 'Múgica', '');
INSERT INTO `municipio` VALUES (837, 16, '056', 'Nahuatzen', '');
INSERT INTO `municipio` VALUES (838, 16, '057', 'Nocupétaro', '');
INSERT INTO `municipio` VALUES (839, 16, '058', 'Nuevo Parangaricutiro', '');
INSERT INTO `municipio` VALUES (840, 16, '059', 'Nuevo Urecho', '');
INSERT INTO `municipio` VALUES (841, 16, '060', 'Numarán', '');
INSERT INTO `municipio` VALUES (842, 16, '061', 'Ocampo', '');
INSERT INTO `municipio` VALUES (843, 16, '062', 'Pajacuarán', '');
INSERT INTO `municipio` VALUES (844, 16, '063', 'Panindícuaro', '');
INSERT INTO `municipio` VALUES (845, 16, '064', 'Parácuaro', '');
INSERT INTO `municipio` VALUES (846, 16, '065', 'Paracho', '');
INSERT INTO `municipio` VALUES (847, 16, '066', 'Pátzcuaro', '');
INSERT INTO `municipio` VALUES (848, 16, '067', 'Penjamillo', '');
INSERT INTO `municipio` VALUES (849, 16, '068', 'Peribán', '');
INSERT INTO `municipio` VALUES (850, 16, '069', 'La Piedad', '');
INSERT INTO `municipio` VALUES (851, 16, '070', 'Purépero', '');
INSERT INTO `municipio` VALUES (852, 16, '071', 'Puruándiro', '');
INSERT INTO `municipio` VALUES (853, 16, '072', 'Queréndaro', '');
INSERT INTO `municipio` VALUES (854, 16, '073', 'Quiroga', '');
INSERT INTO `municipio` VALUES (855, 16, '074', 'Cojumatlán de Régules', '');
INSERT INTO `municipio` VALUES (856, 16, '075', 'Los Reyes', '');
INSERT INTO `municipio` VALUES (857, 16, '076', 'Sahuayo', '');
INSERT INTO `municipio` VALUES (858, 16, '077', 'San Lucas', '');
INSERT INTO `municipio` VALUES (859, 16, '078', 'Santa Ana Maya', '');
INSERT INTO `municipio` VALUES (860, 16, '079', 'Salvador Escalante', '');
INSERT INTO `municipio` VALUES (861, 16, '080', 'Senguio', '');
INSERT INTO `municipio` VALUES (862, 16, '081', 'Susupuato', '');
INSERT INTO `municipio` VALUES (863, 16, '082', 'Tacámbaro', '');
INSERT INTO `municipio` VALUES (864, 16, '083', 'Tancítaro', '');
INSERT INTO `municipio` VALUES (865, 16, '084', 'Tangamandapio', '');
INSERT INTO `municipio` VALUES (866, 16, '085', 'Tangancícuaro', '');
INSERT INTO `municipio` VALUES (867, 16, '086', 'Tanhuato', '');
INSERT INTO `municipio` VALUES (868, 16, '087', 'Taretan', '');
INSERT INTO `municipio` VALUES (869, 16, '088', 'Tarímbaro', '');
INSERT INTO `municipio` VALUES (870, 16, '089', 'Tepalcatepec', '');
INSERT INTO `municipio` VALUES (871, 16, '090', 'Tingambato', '');
INSERT INTO `municipio` VALUES (872, 16, '091', 'Tingüindín', '');
INSERT INTO `municipio` VALUES (873, 16, '092', 'Tiquicheo de Nicolás Romero', '');
INSERT INTO `municipio` VALUES (874, 16, '093', 'Tlalpujahua', '');
INSERT INTO `municipio` VALUES (875, 16, '094', 'Tlazazalca', '');
INSERT INTO `municipio` VALUES (876, 16, '095', 'Tocumbo', '');
INSERT INTO `municipio` VALUES (877, 16, '096', 'Tumbiscatío', '');
INSERT INTO `municipio` VALUES (878, 16, '097', 'Turicato', '');
INSERT INTO `municipio` VALUES (879, 16, '098', 'Tuxpan', '');
INSERT INTO `municipio` VALUES (880, 16, '099', 'Tuzantla', '');
INSERT INTO `municipio` VALUES (881, 16, '100', 'Tzintzuntzan', '');
INSERT INTO `municipio` VALUES (882, 16, '101', 'Tzitzio', '');
INSERT INTO `municipio` VALUES (883, 16, '102', 'Uruapan', '');
INSERT INTO `municipio` VALUES (884, 16, '103', 'Venustiano Carranza', '');
INSERT INTO `municipio` VALUES (885, 16, '104', 'Villamar', '');
INSERT INTO `municipio` VALUES (886, 16, '105', 'Vista Hermosa', '');
INSERT INTO `municipio` VALUES (887, 16, '106', 'Yurécuaro', '');
INSERT INTO `municipio` VALUES (888, 16, '107', 'Zacapu', '');
INSERT INTO `municipio` VALUES (889, 16, '108', 'Zamora', '');
INSERT INTO `municipio` VALUES (890, 16, '109', 'Zináparo', '');
INSERT INTO `municipio` VALUES (891, 16, '110', 'Zinapécuaro', '');
INSERT INTO `municipio` VALUES (892, 16, '111', 'Ziracuaretiro', '');
INSERT INTO `municipio` VALUES (893, 16, '112', 'Zitácuaro', '');
INSERT INTO `municipio` VALUES (894, 16, '113', 'José Sixto Verduzco', '');
INSERT INTO `municipio` VALUES (895, 17, '001', 'Amacuzac', '');
INSERT INTO `municipio` VALUES (896, 17, '002', 'Atlatlahucan', '');
INSERT INTO `municipio` VALUES (897, 17, '003', 'Axochiapan', '');
INSERT INTO `municipio` VALUES (898, 17, '004', 'Ayala', '');
INSERT INTO `municipio` VALUES (899, 17, '005', 'Coatlán del Río', '');
INSERT INTO `municipio` VALUES (900, 17, '006', 'Cuautla', '');
INSERT INTO `municipio` VALUES (901, 17, '007', 'Cuernavaca', '');
INSERT INTO `municipio` VALUES (902, 17, '008', 'Emiliano Zapata', '');
INSERT INTO `municipio` VALUES (903, 17, '009', 'Huitzilac', '');
INSERT INTO `municipio` VALUES (904, 17, '010', 'Jantetelco', '');
INSERT INTO `municipio` VALUES (905, 17, '011', 'Jiutepec', '');
INSERT INTO `municipio` VALUES (906, 17, '012', 'Jojutla', '');
INSERT INTO `municipio` VALUES (907, 17, '013', 'Jonacatepec', '');
INSERT INTO `municipio` VALUES (908, 17, '014', 'Mazatepec', '');
INSERT INTO `municipio` VALUES (909, 17, '015', 'Miacatlán', '');
INSERT INTO `municipio` VALUES (910, 17, '016', 'Ocuituco', '');
INSERT INTO `municipio` VALUES (911, 17, '017', 'Puente de Ixtla', '');
INSERT INTO `municipio` VALUES (912, 17, '018', 'Temixco', '');
INSERT INTO `municipio` VALUES (913, 17, '019', 'Tepalcingo', '');
INSERT INTO `municipio` VALUES (914, 17, '020', 'Tepoztlán', '');
INSERT INTO `municipio` VALUES (915, 17, '021', 'Tetecala', '');
INSERT INTO `municipio` VALUES (916, 17, '022', 'Tetela del Volcán', '');
INSERT INTO `municipio` VALUES (917, 17, '023', 'Tlalnepantla', '');
INSERT INTO `municipio` VALUES (918, 17, '024', 'Tlaltizapán de Zapata', '');
INSERT INTO `municipio` VALUES (919, 17, '025', 'Tlaquiltenango', '');
INSERT INTO `municipio` VALUES (920, 17, '026', 'Tlayacapan', '');
INSERT INTO `municipio` VALUES (921, 17, '027', 'Totolapan', '');
INSERT INTO `municipio` VALUES (922, 17, '028', 'Xochitepec', '');
INSERT INTO `municipio` VALUES (923, 17, '029', 'Yautepec', '');
INSERT INTO `municipio` VALUES (924, 17, '030', 'Yecapixtla', '');
INSERT INTO `municipio` VALUES (925, 17, '031', 'Zacatepec', '');
INSERT INTO `municipio` VALUES (926, 17, '032', 'Zacualpan', '');
INSERT INTO `municipio` VALUES (927, 17, '033', 'Temoac', '');
INSERT INTO `municipio` VALUES (928, 18, '001', 'Acaponeta', '');
INSERT INTO `municipio` VALUES (929, 18, '002', 'Ahuacatlán', '');
INSERT INTO `municipio` VALUES (930, 18, '003', 'Amatlán de Cañas', '');
INSERT INTO `municipio` VALUES (931, 18, '004', 'Compostela', '');
INSERT INTO `municipio` VALUES (932, 18, '005', 'Huajicori', '');
INSERT INTO `municipio` VALUES (933, 18, '006', 'Ixtlán del Río', '');
INSERT INTO `municipio` VALUES (934, 18, '007', 'Jala', '');
INSERT INTO `municipio` VALUES (935, 18, '008', 'Xalisco', '');
INSERT INTO `municipio` VALUES (936, 18, '009', 'Del Nayar', '');
INSERT INTO `municipio` VALUES (937, 18, '010', 'Rosamorada', '');
INSERT INTO `municipio` VALUES (938, 18, '011', 'Ruíz', '');
INSERT INTO `municipio` VALUES (939, 18, '012', 'San Blas', '');
INSERT INTO `municipio` VALUES (940, 18, '013', 'San Pedro Lagunillas', '');
INSERT INTO `municipio` VALUES (941, 18, '014', 'Santa María del Oro', '');
INSERT INTO `municipio` VALUES (942, 18, '015', 'Santiago Ixcuintla', '');
INSERT INTO `municipio` VALUES (943, 18, '016', 'Tecuala', '');
INSERT INTO `municipio` VALUES (944, 18, '017', 'Tepic', '');
INSERT INTO `municipio` VALUES (945, 18, '018', 'Tuxpan', '');
INSERT INTO `municipio` VALUES (946, 18, '019', 'La Yesca', '');
INSERT INTO `municipio` VALUES (947, 18, '020', 'Bahía de Banderas', '');
INSERT INTO `municipio` VALUES (948, 19, '001', 'Abasolo', '');
INSERT INTO `municipio` VALUES (949, 19, '002', 'Agualeguas', '');
INSERT INTO `municipio` VALUES (950, 19, '003', 'Los Aldamas', '');
INSERT INTO `municipio` VALUES (951, 19, '004', 'Allende', '');
INSERT INTO `municipio` VALUES (952, 19, '005', 'Anáhuac', '');
INSERT INTO `municipio` VALUES (953, 19, '006', 'Apodaca', '');
INSERT INTO `municipio` VALUES (954, 19, '007', 'Aramberri', '');
INSERT INTO `municipio` VALUES (955, 19, '008', 'Bustamante', '');
INSERT INTO `municipio` VALUES (956, 19, '009', 'Cadereyta Jiménez', '');
INSERT INTO `municipio` VALUES (957, 19, '010', 'El Carmen', '');
INSERT INTO `municipio` VALUES (958, 19, '011', 'Cerralvo', '');
INSERT INTO `municipio` VALUES (959, 19, '012', 'Ciénega de Flores', '');
INSERT INTO `municipio` VALUES (960, 19, '013', 'China', '');
INSERT INTO `municipio` VALUES (961, 19, '014', 'Doctor Arroyo', '');
INSERT INTO `municipio` VALUES (962, 19, '015', 'Doctor Coss', '');
INSERT INTO `municipio` VALUES (963, 19, '016', 'Doctor González', '');
INSERT INTO `municipio` VALUES (964, 19, '017', 'Galeana', '');
INSERT INTO `municipio` VALUES (965, 19, '018', 'García', '');
INSERT INTO `municipio` VALUES (966, 19, '019', 'San Pedro Garza García', '');
INSERT INTO `municipio` VALUES (967, 19, '020', 'General Bravo', '');
INSERT INTO `municipio` VALUES (968, 19, '021', 'General Escobedo', '');
INSERT INTO `municipio` VALUES (969, 19, '022', 'General Terán', '');
INSERT INTO `municipio` VALUES (970, 19, '023', 'General Treviño', '');
INSERT INTO `municipio` VALUES (971, 19, '024', 'General Zaragoza', '');
INSERT INTO `municipio` VALUES (972, 19, '025', 'General Zuazua', '');
INSERT INTO `municipio` VALUES (973, 19, '026', 'Guadalupe', '');
INSERT INTO `municipio` VALUES (974, 19, '027', 'Los Herreras', '');
INSERT INTO `municipio` VALUES (975, 19, '028', 'Higueras', '');
INSERT INTO `municipio` VALUES (976, 19, '029', 'Hualahuises', '');
INSERT INTO `municipio` VALUES (977, 19, '030', 'Iturbide', '');
INSERT INTO `municipio` VALUES (978, 19, '031', 'Juárez', '');
INSERT INTO `municipio` VALUES (979, 19, '032', 'Lampazos de Naranjo', '');
INSERT INTO `municipio` VALUES (980, 19, '033', 'Linares', '');
INSERT INTO `municipio` VALUES (981, 19, '034', 'Marín', '');
INSERT INTO `municipio` VALUES (982, 19, '035', 'Melchor Ocampo', '');
INSERT INTO `municipio` VALUES (983, 19, '036', 'Mier y Noriega', '');
INSERT INTO `municipio` VALUES (984, 19, '037', 'Mina', '');
INSERT INTO `municipio` VALUES (985, 19, '038', 'Montemorelos', '');
INSERT INTO `municipio` VALUES (986, 19, '039', 'Monterrey', '');
INSERT INTO `municipio` VALUES (987, 19, '040', 'Parás', '');
INSERT INTO `municipio` VALUES (988, 19, '041', 'Pesquería', '');
INSERT INTO `municipio` VALUES (989, 19, '042', 'Los Ramones', '');
INSERT INTO `municipio` VALUES (990, 19, '043', 'Rayones', '');
INSERT INTO `municipio` VALUES (991, 19, '044', 'Sabinas Hidalgo', '');
INSERT INTO `municipio` VALUES (992, 19, '045', 'Salinas Victoria', '');
INSERT INTO `municipio` VALUES (993, 19, '046', 'San Nicolás de los Garza', '');
INSERT INTO `municipio` VALUES (994, 19, '047', 'Hidalgo', '');
INSERT INTO `municipio` VALUES (995, 19, '048', 'Santa Catarina', '');
INSERT INTO `municipio` VALUES (996, 19, '049', 'Santiago', '');
INSERT INTO `municipio` VALUES (997, 19, '050', 'Vallecillo', '');
INSERT INTO `municipio` VALUES (998, 19, '051', 'Villaldama', '');
INSERT INTO `municipio` VALUES (999, 20, '001', 'Abejones', '');
INSERT INTO `municipio` VALUES (1000, 20, '002', 'Acatlán de Pérez Figueroa', '');
INSERT INTO `municipio` VALUES (1001, 20, '003', 'Asunción Cacalotepec', '');
INSERT INTO `municipio` VALUES (1002, 20, '004', 'Asunción Cuyotepeji', '');
INSERT INTO `municipio` VALUES (1003, 20, '005', 'Asunción Ixtaltepec', '');
INSERT INTO `municipio` VALUES (1004, 20, '006', 'Asunción Nochixtlán', '');
INSERT INTO `municipio` VALUES (1005, 20, '007', 'Asunción Ocotlán', '');
INSERT INTO `municipio` VALUES (1006, 20, '008', 'Asunción Tlacolulita', '');
INSERT INTO `municipio` VALUES (1007, 20, '009', 'Ayotzintepec', '');
INSERT INTO `municipio` VALUES (1008, 20, '010', 'El Barrio de la Soledad', '');
INSERT INTO `municipio` VALUES (1009, 20, '011', 'Calihualá', '');
INSERT INTO `municipio` VALUES (1010, 20, '012', 'Candelaria Loxicha', '');
INSERT INTO `municipio` VALUES (1011, 20, '013', 'Ciénega de Zimatlán', '');
INSERT INTO `municipio` VALUES (1012, 20, '014', 'Ciudad Ixtepec', '');
INSERT INTO `municipio` VALUES (1013, 20, '015', 'Coatecas Altas', '');
INSERT INTO `municipio` VALUES (1014, 20, '016', 'Coicoyán de las Flores', '');
INSERT INTO `municipio` VALUES (1015, 20, '017', 'La Compañía', '');
INSERT INTO `municipio` VALUES (1016, 20, '018', 'Concepción Buenavista', '');
INSERT INTO `municipio` VALUES (1017, 20, '019', 'Concepción Pápalo', '');
INSERT INTO `municipio` VALUES (1018, 20, '020', 'Constancia del Rosario', '');
INSERT INTO `municipio` VALUES (1019, 20, '021', 'Cosolapa', '');
INSERT INTO `municipio` VALUES (1020, 20, '022', 'Cosoltepec', '');
INSERT INTO `municipio` VALUES (1021, 20, '023', 'Cuilápam de Guerrero', '');
INSERT INTO `municipio` VALUES (1022, 20, '024', 'Cuyamecalco Villa de Zaragoza', '');
INSERT INTO `municipio` VALUES (1023, 20, '025', 'Chahuites', '');
INSERT INTO `municipio` VALUES (1024, 20, '026', 'Chalcatongo de Hidalgo', '');
INSERT INTO `municipio` VALUES (1025, 20, '027', 'Chiquihuitlán de Benito Juárez', '');
INSERT INTO `municipio` VALUES (1026, 20, '028', 'Heroica Ciudad de Ejutla de Crespo', '');
INSERT INTO `municipio` VALUES (1027, 20, '029', 'Eloxochitlán de Flores Magón', '');
INSERT INTO `municipio` VALUES (1028, 20, '030', 'El Espinal', '');
INSERT INTO `municipio` VALUES (1029, 20, '031', 'Tamazulápam del Espíritu Santo', '');
INSERT INTO `municipio` VALUES (1030, 20, '032', 'Fresnillo de Trujano', '');
INSERT INTO `municipio` VALUES (1031, 20, '033', 'Guadalupe Etla', '');
INSERT INTO `municipio` VALUES (1032, 20, '034', 'Guadalupe de Ramírez', '');
INSERT INTO `municipio` VALUES (1033, 20, '035', 'Guelatao de Juárez', '');
INSERT INTO `municipio` VALUES (1034, 20, '036', 'Guevea de Humboldt', '');
INSERT INTO `municipio` VALUES (1035, 20, '037', 'Mesones Hidalgo', '');
INSERT INTO `municipio` VALUES (1036, 20, '038', 'Villa Hidalgo', '');
INSERT INTO `municipio` VALUES (1037, 20, '039', 'Heroica Ciudad de Huajuapan de León', '');
INSERT INTO `municipio` VALUES (1038, 20, '040', 'Huautepec', '');
INSERT INTO `municipio` VALUES (1039, 20, '041', 'Huautla de Jiménez', '');
INSERT INTO `municipio` VALUES (1040, 20, '042', 'Ixtlán de Juárez', '');
INSERT INTO `municipio` VALUES (1041, 20, '043', 'Heroica Ciudad de Juchitán de Zaragoza', '');
INSERT INTO `municipio` VALUES (1042, 20, '044', 'Loma Bonita', '');
INSERT INTO `municipio` VALUES (1043, 20, '045', 'Magdalena Apasco', '');
INSERT INTO `municipio` VALUES (1044, 20, '046', 'Magdalena Jaltepec', '');
INSERT INTO `municipio` VALUES (1045, 20, '047', 'Santa Magdalena Jicotlán', '');
INSERT INTO `municipio` VALUES (1046, 20, '048', 'Magdalena Mixtepec', '');
INSERT INTO `municipio` VALUES (1047, 20, '049', 'Magdalena Ocotlán', '');
INSERT INTO `municipio` VALUES (1048, 20, '050', 'Magdalena Peñasco', '');
INSERT INTO `municipio` VALUES (1049, 20, '051', 'Magdalena Teitipac', '');
INSERT INTO `municipio` VALUES (1050, 20, '052', 'Magdalena Tequisistlán', '');
INSERT INTO `municipio` VALUES (1051, 20, '053', 'Magdalena Tlacotepec', '');
INSERT INTO `municipio` VALUES (1052, 20, '054', 'Magdalena Zahuatlán', '');
INSERT INTO `municipio` VALUES (1053, 20, '055', 'Mariscala de Juárez', '');
INSERT INTO `municipio` VALUES (1054, 20, '056', 'Mártires de Tacubaya', '');
INSERT INTO `municipio` VALUES (1055, 20, '057', 'Matías Romero Avendaño', '');
INSERT INTO `municipio` VALUES (1056, 20, '058', 'Mazatlán Villa de Flores', '');
INSERT INTO `municipio` VALUES (1057, 20, '059', 'Miahuatlán de Porfirio Díaz', '');
INSERT INTO `municipio` VALUES (1058, 20, '060', 'Mixistlán de la Reforma', '');
INSERT INTO `municipio` VALUES (1059, 20, '061', 'Monjas', '');
INSERT INTO `municipio` VALUES (1060, 20, '062', 'Natividad', '');
INSERT INTO `municipio` VALUES (1061, 20, '063', 'Nazareno Etla', '');
INSERT INTO `municipio` VALUES (1062, 20, '064', 'Nejapa de Madero', '');
INSERT INTO `municipio` VALUES (1063, 20, '065', 'Ixpantepec Nieves', '');
INSERT INTO `municipio` VALUES (1064, 20, '066', 'Santiago Niltepec', '');
INSERT INTO `municipio` VALUES (1065, 20, '067', 'Oaxaca de Juárez', '');
INSERT INTO `municipio` VALUES (1066, 20, '068', 'Ocotlán de Morelos', '');
INSERT INTO `municipio` VALUES (1067, 20, '069', 'La Pe', '');
INSERT INTO `municipio` VALUES (1068, 20, '070', 'Pinotepa de Don Luis', '');
INSERT INTO `municipio` VALUES (1069, 20, '071', 'Pluma Hidalgo', '');
INSERT INTO `municipio` VALUES (1070, 20, '072', 'San José del Progreso', '');
INSERT INTO `municipio` VALUES (1071, 20, '073', 'Putla Villa de Guerrero', '');
INSERT INTO `municipio` VALUES (1072, 20, '074', 'Santa Catarina Quioquitani', '');
INSERT INTO `municipio` VALUES (1073, 20, '075', 'Reforma de Pineda', '');
INSERT INTO `municipio` VALUES (1074, 20, '076', 'La Reforma', '');
INSERT INTO `municipio` VALUES (1075, 20, '077', 'Reyes Etla', '');
INSERT INTO `municipio` VALUES (1076, 20, '078', 'Rojas de Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (1077, 20, '079', 'Salina Cruz', '');
INSERT INTO `municipio` VALUES (1078, 20, '080', 'San Agustín Amatengo', '');
INSERT INTO `municipio` VALUES (1079, 20, '081', 'San Agustín Atenango', '');
INSERT INTO `municipio` VALUES (1080, 20, '082', 'San Agustín Chayuco', '');
INSERT INTO `municipio` VALUES (1081, 20, '083', 'San Agustín de las Juntas', '');
INSERT INTO `municipio` VALUES (1082, 20, '084', 'San Agustín Etla', '');
INSERT INTO `municipio` VALUES (1083, 20, '085', 'San Agustín Loxicha', '');
INSERT INTO `municipio` VALUES (1084, 20, '086', 'San Agustín Tlacotepec', '');
INSERT INTO `municipio` VALUES (1085, 20, '087', 'San Agustín Yatareni', '');
INSERT INTO `municipio` VALUES (1086, 20, '088', 'San Andrés Cabecera Nueva', '');
INSERT INTO `municipio` VALUES (1087, 20, '089', 'San Andrés Dinicuiti', '');
INSERT INTO `municipio` VALUES (1088, 20, '090', 'San Andrés Huaxpaltepec', '');
INSERT INTO `municipio` VALUES (1089, 20, '091', 'San Andrés Huayápam', '');
INSERT INTO `municipio` VALUES (1090, 20, '092', 'San Andrés Ixtlahuaca', '');
INSERT INTO `municipio` VALUES (1091, 20, '093', 'San Andrés Lagunas', '');
INSERT INTO `municipio` VALUES (1092, 20, '094', 'San Andrés Nuxiño', '');
INSERT INTO `municipio` VALUES (1093, 20, '095', 'San Andrés Paxtlán', '');
INSERT INTO `municipio` VALUES (1094, 20, '096', 'San Andrés Sinaxtla', '');
INSERT INTO `municipio` VALUES (1095, 20, '097', 'San Andrés Solaga', '');
INSERT INTO `municipio` VALUES (1096, 20, '098', 'San Andrés Teotilálpam', '');
INSERT INTO `municipio` VALUES (1097, 20, '099', 'San Andrés Tepetlapa', '');
INSERT INTO `municipio` VALUES (1098, 20, '100', 'San Andrés Yaá', '');
INSERT INTO `municipio` VALUES (1099, 20, '101', 'San Andrés Zabache', '');
INSERT INTO `municipio` VALUES (1100, 20, '102', 'San Andrés Zautla', '');
INSERT INTO `municipio` VALUES (1101, 20, '103', 'San Antonino Castillo Velasco', '');
INSERT INTO `municipio` VALUES (1102, 20, '104', 'San Antonino el Alto', '');
INSERT INTO `municipio` VALUES (1103, 20, '105', 'San Antonino Monte Verde', '');
INSERT INTO `municipio` VALUES (1104, 20, '106', 'San Antonio Acutla', '');
INSERT INTO `municipio` VALUES (1105, 20, '107', 'San Antonio de la Cal', '');
INSERT INTO `municipio` VALUES (1106, 20, '108', 'San Antonio Huitepec', '');
INSERT INTO `municipio` VALUES (1107, 20, '109', 'San Antonio Nanahuatípam', '');
INSERT INTO `municipio` VALUES (1108, 20, '110', 'San Antonio Sinicahua', '');
INSERT INTO `municipio` VALUES (1109, 20, '111', 'San Antonio Tepetlapa', '');
INSERT INTO `municipio` VALUES (1110, 20, '112', 'San Baltazar Chichicápam', '');
INSERT INTO `municipio` VALUES (1111, 20, '113', 'San Baltazar Loxicha', '');
INSERT INTO `municipio` VALUES (1112, 20, '114', 'San Baltazar Yatzachi el Bajo', '');
INSERT INTO `municipio` VALUES (1113, 20, '115', 'San Bartolo Coyotepec', '');
INSERT INTO `municipio` VALUES (1114, 20, '116', 'San Bartolomé Ayautla', '');
INSERT INTO `municipio` VALUES (1115, 20, '117', 'San Bartolomé Loxicha', '');
INSERT INTO `municipio` VALUES (1116, 20, '118', 'San Bartolomé Quialana', '');
INSERT INTO `municipio` VALUES (1117, 20, '119', 'San Bartolomé Yucuañe', '');
INSERT INTO `municipio` VALUES (1118, 20, '120', 'San Bartolomé Zoogocho', '');
INSERT INTO `municipio` VALUES (1119, 20, '121', 'San Bartolo Soyaltepec', '');
INSERT INTO `municipio` VALUES (1120, 20, '122', 'San Bartolo Yautepec', '');
INSERT INTO `municipio` VALUES (1121, 20, '123', 'San Bernardo Mixtepec', '');
INSERT INTO `municipio` VALUES (1122, 20, '124', 'San Blas Atempa', '');
INSERT INTO `municipio` VALUES (1123, 20, '125', 'San Carlos Yautepec', '');
INSERT INTO `municipio` VALUES (1124, 20, '126', 'San Cristóbal Amatlán', '');
INSERT INTO `municipio` VALUES (1125, 20, '127', 'San Cristóbal Amoltepec', '');
INSERT INTO `municipio` VALUES (1126, 20, '128', 'San Cristóbal Lachirioag', '');
INSERT INTO `municipio` VALUES (1127, 20, '129', 'San Cristóbal Suchixtlahuaca', '');
INSERT INTO `municipio` VALUES (1128, 20, '130', 'San Dionisio del Mar', '');
INSERT INTO `municipio` VALUES (1129, 20, '131', 'San Dionisio Ocotepec', '');
INSERT INTO `municipio` VALUES (1130, 20, '132', 'San Dionisio Ocotlán', '');
INSERT INTO `municipio` VALUES (1131, 20, '133', 'San Esteban Atatlahuca', '');
INSERT INTO `municipio` VALUES (1132, 20, '134', 'San Felipe Jalapa de Díaz', '');
INSERT INTO `municipio` VALUES (1133, 20, '135', 'San Felipe Tejalápam', '');
INSERT INTO `municipio` VALUES (1134, 20, '136', 'San Felipe Usila', '');
INSERT INTO `municipio` VALUES (1135, 20, '137', 'San Francisco Cahuacuá', '');
INSERT INTO `municipio` VALUES (1136, 20, '138', 'San Francisco Cajonos', '');
INSERT INTO `municipio` VALUES (1137, 20, '139', 'San Francisco Chapulapa', '');
INSERT INTO `municipio` VALUES (1138, 20, '140', 'San Francisco Chindúa', '');
INSERT INTO `municipio` VALUES (1139, 20, '141', 'San Francisco del Mar', '');
INSERT INTO `municipio` VALUES (1140, 20, '142', 'San Francisco Huehuetlán', '');
INSERT INTO `municipio` VALUES (1141, 20, '143', 'San Francisco Ixhuatán', '');
INSERT INTO `municipio` VALUES (1142, 20, '144', 'San Francisco Jaltepetongo', '');
INSERT INTO `municipio` VALUES (1143, 20, '145', 'San Francisco Lachigoló', '');
INSERT INTO `municipio` VALUES (1144, 20, '146', 'San Francisco Logueche', '');
INSERT INTO `municipio` VALUES (1145, 20, '147', 'San Francisco Nuxaño', '');
INSERT INTO `municipio` VALUES (1146, 20, '148', 'San Francisco Ozolotepec', '');
INSERT INTO `municipio` VALUES (1147, 20, '149', 'San Francisco Sola', '');
INSERT INTO `municipio` VALUES (1148, 20, '150', 'San Francisco Telixtlahuaca', '');
INSERT INTO `municipio` VALUES (1149, 20, '151', 'San Francisco Teopan', '');
INSERT INTO `municipio` VALUES (1150, 20, '152', 'San Francisco Tlapancingo', '');
INSERT INTO `municipio` VALUES (1151, 20, '153', 'San Gabriel Mixtepec', '');
INSERT INTO `municipio` VALUES (1152, 20, '154', 'San Ildefonso Amatlán', '');
INSERT INTO `municipio` VALUES (1153, 20, '155', 'San Ildefonso Sola', '');
INSERT INTO `municipio` VALUES (1154, 20, '156', 'San Ildefonso Villa Alta', '');
INSERT INTO `municipio` VALUES (1155, 20, '157', 'San Jacinto Amilpas', '');
INSERT INTO `municipio` VALUES (1156, 20, '158', 'San Jacinto Tlacotepec', '');
INSERT INTO `municipio` VALUES (1157, 20, '159', 'San Jerónimo Coatlán', '');
INSERT INTO `municipio` VALUES (1158, 20, '160', 'San Jerónimo Silacayoapilla', '');
INSERT INTO `municipio` VALUES (1159, 20, '161', 'San Jerónimo Sosola', '');
INSERT INTO `municipio` VALUES (1160, 20, '162', 'San Jerónimo Taviche', '');
INSERT INTO `municipio` VALUES (1161, 20, '163', 'San Jerónimo Tecóatl', '');
INSERT INTO `municipio` VALUES (1162, 20, '164', 'San Jorge Nuchita', '');
INSERT INTO `municipio` VALUES (1163, 20, '165', 'San José Ayuquila', '');
INSERT INTO `municipio` VALUES (1164, 20, '166', 'San José Chiltepec', '');
INSERT INTO `municipio` VALUES (1165, 20, '167', 'San José del Peñasco', '');
INSERT INTO `municipio` VALUES (1166, 20, '168', 'San José Estancia Grande', '');
INSERT INTO `municipio` VALUES (1167, 20, '169', 'San José Independencia', '');
INSERT INTO `municipio` VALUES (1168, 20, '170', 'San José Lachiguiri', '');
INSERT INTO `municipio` VALUES (1169, 20, '171', 'San José Tenango', '');
INSERT INTO `municipio` VALUES (1170, 20, '172', 'San Juan Achiutla', '');
INSERT INTO `municipio` VALUES (1171, 20, '173', 'San Juan Atepec', '');
INSERT INTO `municipio` VALUES (1172, 20, '174', 'Ánimas Trujano', '');
INSERT INTO `municipio` VALUES (1173, 20, '175', 'San Juan Bautista Atatlahuca', '');
INSERT INTO `municipio` VALUES (1174, 20, '176', 'San Juan Bautista Coixtlahuaca', '');
INSERT INTO `municipio` VALUES (1175, 20, '177', 'San Juan Bautista Cuicatlán', '');
INSERT INTO `municipio` VALUES (1176, 20, '178', 'San Juan Bautista Guelache', '');
INSERT INTO `municipio` VALUES (1177, 20, '179', 'San Juan Bautista Jayacatlán', '');
INSERT INTO `municipio` VALUES (1178, 20, '180', 'San Juan Bautista Lo de Soto', '');
INSERT INTO `municipio` VALUES (1179, 20, '181', 'San Juan Bautista Suchitepec', '');
INSERT INTO `municipio` VALUES (1180, 20, '182', 'San Juan Bautista Tlacoatzintepec', '');
INSERT INTO `municipio` VALUES (1181, 20, '183', 'San Juan Bautista Tlachichilco', '');
INSERT INTO `municipio` VALUES (1182, 20, '184', 'San Juan Bautista Tuxtepec', '');
INSERT INTO `municipio` VALUES (1183, 20, '185', 'San Juan Cacahuatepec', '');
INSERT INTO `municipio` VALUES (1184, 20, '186', 'San Juan Cieneguilla', '');
INSERT INTO `municipio` VALUES (1185, 20, '187', 'San Juan Coatzóspam', '');
INSERT INTO `municipio` VALUES (1186, 20, '188', 'San Juan Colorado', '');
INSERT INTO `municipio` VALUES (1187, 20, '189', 'San Juan Comaltepec', '');
INSERT INTO `municipio` VALUES (1188, 20, '190', 'San Juan Cotzocón', '');
INSERT INTO `municipio` VALUES (1189, 20, '191', 'San Juan Chicomezúchil', '');
INSERT INTO `municipio` VALUES (1190, 20, '192', 'San Juan Chilateca', '');
INSERT INTO `municipio` VALUES (1191, 20, '193', 'San Juan del Estado', '');
INSERT INTO `municipio` VALUES (1192, 20, '194', 'San Juan del Río', '');
INSERT INTO `municipio` VALUES (1193, 20, '195', 'San Juan Diuxi', '');
INSERT INTO `municipio` VALUES (1194, 20, '196', 'San Juan Evangelista Analco', '');
INSERT INTO `municipio` VALUES (1195, 20, '197', 'San Juan Guelavía', '');
INSERT INTO `municipio` VALUES (1196, 20, '198', 'San Juan Guichicovi', '');
INSERT INTO `municipio` VALUES (1197, 20, '199', 'San Juan Ihualtepec', '');
INSERT INTO `municipio` VALUES (1198, 20, '200', 'San Juan Juquila Mixes', '');
INSERT INTO `municipio` VALUES (1199, 20, '201', 'San Juan Juquila Vijanos', '');
INSERT INTO `municipio` VALUES (1200, 20, '202', 'San Juan Lachao', '');
INSERT INTO `municipio` VALUES (1201, 20, '203', 'San Juan Lachigalla', '');
INSERT INTO `municipio` VALUES (1202, 20, '204', 'San Juan Lajarcia', '');
INSERT INTO `municipio` VALUES (1203, 20, '205', 'San Juan Lalana', '');
INSERT INTO `municipio` VALUES (1204, 20, '206', 'San Juan de los Cués', '');
INSERT INTO `municipio` VALUES (1205, 20, '207', 'San Juan Mazatlán', '');
INSERT INTO `municipio` VALUES (1206, 20, '208', 'San Juan Mixtepec -Dto. 08 -', '');
INSERT INTO `municipio` VALUES (1207, 20, '209', 'San Juan Mixtepec -Dto. 26 -', '');
INSERT INTO `municipio` VALUES (1208, 20, '210', 'San Juan Ñumí', '');
INSERT INTO `municipio` VALUES (1209, 20, '211', 'San Juan Ozolotepec', '');
INSERT INTO `municipio` VALUES (1210, 20, '212', 'San Juan Petlapa', '');
INSERT INTO `municipio` VALUES (1211, 20, '213', 'San Juan Quiahije', '');
INSERT INTO `municipio` VALUES (1212, 20, '214', 'San Juan Quiotepec', '');
INSERT INTO `municipio` VALUES (1213, 20, '215', 'San Juan Sayultepec', '');
INSERT INTO `municipio` VALUES (1214, 20, '216', 'San Juan Tabaá', '');
INSERT INTO `municipio` VALUES (1215, 20, '217', 'San Juan Tamazola', '');
INSERT INTO `municipio` VALUES (1216, 20, '218', 'San Juan Teita', '');
INSERT INTO `municipio` VALUES (1217, 20, '219', 'San Juan Teitipac', '');
INSERT INTO `municipio` VALUES (1218, 20, '220', 'San Juan Tepeuxila', '');
INSERT INTO `municipio` VALUES (1219, 20, '221', 'San Juan Teposcolula', '');
INSERT INTO `municipio` VALUES (1220, 20, '222', 'San Juan Yaeé', '');
INSERT INTO `municipio` VALUES (1221, 20, '223', 'San Juan Yatzona', '');
INSERT INTO `municipio` VALUES (1222, 20, '224', 'San Juan Yucuita', '');
INSERT INTO `municipio` VALUES (1223, 20, '225', 'San Lorenzo', '');
INSERT INTO `municipio` VALUES (1224, 20, '226', 'San Lorenzo Albarradas', '');
INSERT INTO `municipio` VALUES (1225, 20, '227', 'San Lorenzo Cacaotepec', '');
INSERT INTO `municipio` VALUES (1226, 20, '228', 'San Lorenzo Cuaunecuiltitla', '');
INSERT INTO `municipio` VALUES (1227, 20, '229', 'San Lorenzo Texmelúcan', '');
INSERT INTO `municipio` VALUES (1228, 20, '230', 'San Lorenzo Victoria', '');
INSERT INTO `municipio` VALUES (1229, 20, '231', 'San Lucas Camotlán', '');
INSERT INTO `municipio` VALUES (1230, 20, '232', 'San Lucas Ojitlán', '');
INSERT INTO `municipio` VALUES (1231, 20, '233', 'San Lucas Quiaviní', '');
INSERT INTO `municipio` VALUES (1232, 20, '234', 'San Lucas Zoquiápam', '');
INSERT INTO `municipio` VALUES (1233, 20, '235', 'San Luis Amatlán', '');
INSERT INTO `municipio` VALUES (1234, 20, '236', 'San Marcial Ozolotepec', '');
INSERT INTO `municipio` VALUES (1235, 20, '237', 'San Marcos Arteaga', '');
INSERT INTO `municipio` VALUES (1236, 20, '238', 'San Martín de los Cansecos', '');
INSERT INTO `municipio` VALUES (1237, 20, '239', 'San Martín Huamelúlpam', '');
INSERT INTO `municipio` VALUES (1238, 20, '240', 'San Martín Itunyoso', '');
INSERT INTO `municipio` VALUES (1239, 20, '241', 'San Martín Lachilá', '');
INSERT INTO `municipio` VALUES (1240, 20, '242', 'San Martín Peras', '');
INSERT INTO `municipio` VALUES (1241, 20, '243', 'San Martín Tilcajete', '');
INSERT INTO `municipio` VALUES (1242, 20, '244', 'San Martín Toxpalan', '');
INSERT INTO `municipio` VALUES (1243, 20, '245', 'San Martín Zacatepec', '');
INSERT INTO `municipio` VALUES (1244, 20, '246', 'San Mateo Cajonos', '');
INSERT INTO `municipio` VALUES (1245, 20, '247', 'Capulálpam de Méndez', '');
INSERT INTO `municipio` VALUES (1246, 20, '248', 'San Mateo del Mar', '');
INSERT INTO `municipio` VALUES (1247, 20, '249', 'San Mateo Yoloxochitlán', '');
INSERT INTO `municipio` VALUES (1248, 20, '250', 'San Mateo Etlatongo', '');
INSERT INTO `municipio` VALUES (1249, 20, '251', 'San Mateo Nejápam', '');
INSERT INTO `municipio` VALUES (1250, 20, '252', 'San Mateo Peñasco', '');
INSERT INTO `municipio` VALUES (1251, 20, '253', 'San Mateo Piñas', '');
INSERT INTO `municipio` VALUES (1252, 20, '254', 'San Mateo Río Hondo', '');
INSERT INTO `municipio` VALUES (1253, 20, '255', 'San Mateo Sindihui', '');
INSERT INTO `municipio` VALUES (1254, 20, '256', 'San Mateo Tlapiltepec', '');
INSERT INTO `municipio` VALUES (1255, 20, '257', 'San Melchor Betaza', '');
INSERT INTO `municipio` VALUES (1256, 20, '258', 'San Miguel Achiutla', '');
INSERT INTO `municipio` VALUES (1257, 20, '259', 'San Miguel Ahuehuetitlán', '');
INSERT INTO `municipio` VALUES (1258, 20, '260', 'San Miguel Aloápam', '');
INSERT INTO `municipio` VALUES (1259, 20, '261', 'San Miguel Amatitlán', '');
INSERT INTO `municipio` VALUES (1260, 20, '262', 'San Miguel Amatlán', '');
INSERT INTO `municipio` VALUES (1261, 20, '263', 'San Miguel Coatlán', '');
INSERT INTO `municipio` VALUES (1262, 20, '264', 'San Miguel Chicahua', '');
INSERT INTO `municipio` VALUES (1263, 20, '265', 'San Miguel Chimalapa', '');
INSERT INTO `municipio` VALUES (1264, 20, '266', 'San Miguel del Puerto', '');
INSERT INTO `municipio` VALUES (1265, 20, '267', 'San Miguel del Río', '');
INSERT INTO `municipio` VALUES (1266, 20, '268', 'San Miguel Ejutla', '');
INSERT INTO `municipio` VALUES (1267, 20, '269', 'San Miguel el Grande', '');
INSERT INTO `municipio` VALUES (1268, 20, '270', 'San Miguel Huautla', '');
INSERT INTO `municipio` VALUES (1269, 20, '271', 'San Miguel Mixtepec', '');
INSERT INTO `municipio` VALUES (1270, 20, '272', 'San Miguel Panixtlahuaca', '');
INSERT INTO `municipio` VALUES (1271, 20, '273', 'San Miguel Peras', '');
INSERT INTO `municipio` VALUES (1272, 20, '274', 'San Miguel Piedras', '');
INSERT INTO `municipio` VALUES (1273, 20, '275', 'San Miguel Quetzaltepec', '');
INSERT INTO `municipio` VALUES (1274, 20, '276', 'San Miguel Santa Flor', '');
INSERT INTO `municipio` VALUES (1275, 20, '277', 'Villa Sola de Vega', '');
INSERT INTO `municipio` VALUES (1276, 20, '278', 'San Miguel Soyaltepec', '');
INSERT INTO `municipio` VALUES (1277, 20, '279', 'San Miguel Suchixtepec', '');
INSERT INTO `municipio` VALUES (1278, 20, '280', 'Villa Talea de Castro', '');
INSERT INTO `municipio` VALUES (1279, 20, '281', 'San Miguel Tecomatlán', '');
INSERT INTO `municipio` VALUES (1280, 20, '282', 'San Miguel Tenango', '');
INSERT INTO `municipio` VALUES (1281, 20, '283', 'San Miguel Tequixtepec', '');
INSERT INTO `municipio` VALUES (1282, 20, '284', 'San Miguel Tilquiápam', '');
INSERT INTO `municipio` VALUES (1283, 20, '285', 'San Miguel Tlacamama', '');
INSERT INTO `municipio` VALUES (1284, 20, '286', 'San Miguel Tlacotepec', '');
INSERT INTO `municipio` VALUES (1285, 20, '287', 'San Miguel Tulancingo', '');
INSERT INTO `municipio` VALUES (1286, 20, '288', 'San Miguel Yotao', '');
INSERT INTO `municipio` VALUES (1287, 20, '289', 'San Nicolás', '');
INSERT INTO `municipio` VALUES (1288, 20, '290', 'San Nicolás Hidalgo', '');
INSERT INTO `municipio` VALUES (1289, 20, '291', 'San Pablo Coatlán', '');
INSERT INTO `municipio` VALUES (1290, 20, '292', 'San Pablo Cuatro Venados', '');
INSERT INTO `municipio` VALUES (1291, 20, '293', 'San Pablo Etla', '');
INSERT INTO `municipio` VALUES (1292, 20, '294', 'San Pablo Huitzo', '');
INSERT INTO `municipio` VALUES (1293, 20, '295', 'San Pablo Huixtepec', '');
INSERT INTO `municipio` VALUES (1294, 20, '296', 'San Pablo Macuiltianguis', '');
INSERT INTO `municipio` VALUES (1295, 20, '297', 'San Pablo Tijaltepec', '');
INSERT INTO `municipio` VALUES (1296, 20, '298', 'San Pablo Villa de Mitla', '');
INSERT INTO `municipio` VALUES (1297, 20, '299', 'San Pablo Yaganiza', '');
INSERT INTO `municipio` VALUES (1298, 20, '300', 'San Pedro Amuzgos', '');
INSERT INTO `municipio` VALUES (1299, 20, '301', 'San Pedro Apóstol', '');
INSERT INTO `municipio` VALUES (1300, 20, '302', 'San Pedro Atoyac', '');
INSERT INTO `municipio` VALUES (1301, 20, '303', 'San Pedro Cajonos', '');
INSERT INTO `municipio` VALUES (1302, 20, '304', 'San Pedro Coxcaltepec Cántaros', '');
INSERT INTO `municipio` VALUES (1303, 20, '305', 'San Pedro Comitancillo', '');
INSERT INTO `municipio` VALUES (1304, 20, '306', 'San Pedro el Alto', '');
INSERT INTO `municipio` VALUES (1305, 20, '307', 'San Pedro Huamelula', '');
INSERT INTO `municipio` VALUES (1306, 20, '308', 'San Pedro Huilotepec', '');
INSERT INTO `municipio` VALUES (1307, 20, '309', 'San Pedro Ixcatlán', '');
INSERT INTO `municipio` VALUES (1308, 20, '310', 'San Pedro Ixtlahuaca', '');
INSERT INTO `municipio` VALUES (1309, 20, '311', 'San Pedro Jaltepetongo', '');
INSERT INTO `municipio` VALUES (1310, 20, '312', 'San Pedro Jicayán', '');
INSERT INTO `municipio` VALUES (1311, 20, '313', 'San Pedro Jocotipac', '');
INSERT INTO `municipio` VALUES (1312, 20, '314', 'San Pedro Juchatengo', '');
INSERT INTO `municipio` VALUES (1313, 20, '315', 'San Pedro Mártir', '');
INSERT INTO `municipio` VALUES (1314, 20, '316', 'San Pedro Mártir Quiechapa', '');
INSERT INTO `municipio` VALUES (1315, 20, '317', 'San Pedro Mártir Yucuxaco', '');
INSERT INTO `municipio` VALUES (1316, 20, '318', 'San Pedro Mixtepec -Dto. 22 -', '');
INSERT INTO `municipio` VALUES (1317, 20, '319', 'San Pedro Mixtepec -Dto. 26 -', '');
INSERT INTO `municipio` VALUES (1318, 20, '320', 'San Pedro Molinos', '');
INSERT INTO `municipio` VALUES (1319, 20, '321', 'San Pedro Nopala', '');
INSERT INTO `municipio` VALUES (1320, 20, '322', 'San Pedro Ocopetatillo', '');
INSERT INTO `municipio` VALUES (1321, 20, '323', 'San Pedro Ocotepec', '');
INSERT INTO `municipio` VALUES (1322, 20, '324', 'San Pedro Pochutla', '');
INSERT INTO `municipio` VALUES (1323, 20, '325', 'San Pedro Quiatoni', '');
INSERT INTO `municipio` VALUES (1324, 20, '326', 'San Pedro Sochiápam', '');
INSERT INTO `municipio` VALUES (1325, 20, '327', 'San Pedro Tapanatepec', '');
INSERT INTO `municipio` VALUES (1326, 20, '328', 'San Pedro Taviche', '');
INSERT INTO `municipio` VALUES (1327, 20, '329', 'San Pedro Teozacoalco', '');
INSERT INTO `municipio` VALUES (1328, 20, '330', 'San Pedro Teutila', '');
INSERT INTO `municipio` VALUES (1329, 20, '331', 'San Pedro Tidaá', '');
INSERT INTO `municipio` VALUES (1330, 20, '332', 'San Pedro Topiltepec', '');
INSERT INTO `municipio` VALUES (1331, 20, '333', 'San Pedro Totolápam', '');
INSERT INTO `municipio` VALUES (1332, 20, '334', 'Villa de Tututepec de Melchor Ocampo', '');
INSERT INTO `municipio` VALUES (1333, 20, '335', 'San Pedro Yaneri', '');
INSERT INTO `municipio` VALUES (1334, 20, '336', 'San Pedro Yólox', '');
INSERT INTO `municipio` VALUES (1335, 20, '337', 'San Pedro y San Pablo Ayutla', '');
INSERT INTO `municipio` VALUES (1336, 20, '338', 'Villa de Etla', '');
INSERT INTO `municipio` VALUES (1337, 20, '339', 'San Pedro y San Pablo Teposcolula', '');
INSERT INTO `municipio` VALUES (1338, 20, '340', 'San Pedro y San Pablo Tequixtepec', '');
INSERT INTO `municipio` VALUES (1339, 20, '341', 'San Pedro Yucunama', '');
INSERT INTO `municipio` VALUES (1340, 20, '342', 'San Raymundo Jalpan', '');
INSERT INTO `municipio` VALUES (1341, 20, '343', 'San Sebastián Abasolo', '');
INSERT INTO `municipio` VALUES (1342, 20, '344', 'San Sebastián Coatlán', '');
INSERT INTO `municipio` VALUES (1343, 20, '345', 'San Sebastián Ixcapa', '');
INSERT INTO `municipio` VALUES (1344, 20, '346', 'San Sebastián Nicananduta', '');
INSERT INTO `municipio` VALUES (1345, 20, '347', 'San Sebastián Río Hondo', '');
INSERT INTO `municipio` VALUES (1346, 20, '348', 'San Sebastián Tecomaxtlahuaca', '');
INSERT INTO `municipio` VALUES (1347, 20, '349', 'San Sebastián Teitipac', '');
INSERT INTO `municipio` VALUES (1348, 20, '350', 'San Sebastián Tutla', '');
INSERT INTO `municipio` VALUES (1349, 20, '351', 'San Simón Almolongas', '');
INSERT INTO `municipio` VALUES (1350, 20, '352', 'San Simón Zahuatlán', '');
INSERT INTO `municipio` VALUES (1351, 20, '353', 'Santa Ana', '');
INSERT INTO `municipio` VALUES (1352, 20, '354', 'Santa Ana Ateixtlahuaca', '');
INSERT INTO `municipio` VALUES (1353, 20, '355', 'Santa Ana Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (1354, 20, '356', 'Santa Ana del Valle', '');
INSERT INTO `municipio` VALUES (1355, 20, '357', 'Santa Ana Tavela', '');
INSERT INTO `municipio` VALUES (1356, 20, '358', 'Santa Ana Tlapacoyan', '');
INSERT INTO `municipio` VALUES (1357, 20, '359', 'Santa Ana Yareni', '');
INSERT INTO `municipio` VALUES (1358, 20, '360', 'Santa Ana Zegache', '');
INSERT INTO `municipio` VALUES (1359, 20, '361', 'Santa Catalina Quierí', '');
INSERT INTO `municipio` VALUES (1360, 20, '362', 'Santa Catarina Cuixtla', '');
INSERT INTO `municipio` VALUES (1361, 20, '363', 'Santa Catarina Ixtepeji', '');
INSERT INTO `municipio` VALUES (1362, 20, '364', 'Santa Catarina Juquila', '');
INSERT INTO `municipio` VALUES (1363, 20, '365', 'Santa Catarina Lachatao', '');
INSERT INTO `municipio` VALUES (1364, 20, '366', 'Santa Catarina Loxicha', '');
INSERT INTO `municipio` VALUES (1365, 20, '367', 'Santa Catarina Mechoacán', '');
INSERT INTO `municipio` VALUES (1366, 20, '368', 'Santa Catarina Minas', '');
INSERT INTO `municipio` VALUES (1367, 20, '369', 'Santa Catarina Quiané', '');
INSERT INTO `municipio` VALUES (1368, 20, '370', 'Santa Catarina Tayata', '');
INSERT INTO `municipio` VALUES (1369, 20, '371', 'Santa Catarina Ticuá', '');
INSERT INTO `municipio` VALUES (1370, 20, '372', 'Santa Catarina Yosonotú', '');
INSERT INTO `municipio` VALUES (1371, 20, '373', 'Santa Catarina Zapoquila', '');
INSERT INTO `municipio` VALUES (1372, 20, '374', 'Santa Cruz Acatepec', '');
INSERT INTO `municipio` VALUES (1373, 20, '375', 'Santa Cruz Amilpas', '');
INSERT INTO `municipio` VALUES (1374, 20, '376', 'Santa Cruz de Bravo', '');
INSERT INTO `municipio` VALUES (1375, 20, '377', 'Santa Cruz Itundujia', '');
INSERT INTO `municipio` VALUES (1376, 20, '378', 'Santa Cruz Mixtepec', '');
INSERT INTO `municipio` VALUES (1377, 20, '379', 'Santa Cruz Nundaco', '');
INSERT INTO `municipio` VALUES (1378, 20, '380', 'Santa Cruz Papalutla', '');
INSERT INTO `municipio` VALUES (1379, 20, '381', 'Santa Cruz Tacache de Mina', '');
INSERT INTO `municipio` VALUES (1380, 20, '382', 'Santa Cruz Tacahua', '');
INSERT INTO `municipio` VALUES (1381, 20, '383', 'Santa Cruz Tayata', '');
INSERT INTO `municipio` VALUES (1382, 20, '384', 'Santa Cruz Xitla', '');
INSERT INTO `municipio` VALUES (1383, 20, '385', 'Santa Cruz Xoxocotlán', '');
INSERT INTO `municipio` VALUES (1384, 20, '386', 'Santa Cruz Zenzontepec', '');
INSERT INTO `municipio` VALUES (1385, 20, '387', 'Santa Gertrudis', '');
INSERT INTO `municipio` VALUES (1386, 20, '388', 'Santa Inés del Monte', '');
INSERT INTO `municipio` VALUES (1387, 20, '389', 'Santa Inés Yatzeche', '');
INSERT INTO `municipio` VALUES (1388, 20, '390', 'Santa Lucía del Camino', '');
INSERT INTO `municipio` VALUES (1389, 20, '391', 'Santa Lucía Miahuatlán', '');
INSERT INTO `municipio` VALUES (1390, 20, '392', 'Santa Lucía Monteverde', '');
INSERT INTO `municipio` VALUES (1391, 20, '393', 'Santa Lucía Ocotlán', '');
INSERT INTO `municipio` VALUES (1392, 20, '394', 'Santa María Alotepec', '');
INSERT INTO `municipio` VALUES (1393, 20, '395', 'Santa María Apazco', '');
INSERT INTO `municipio` VALUES (1394, 20, '396', 'Santa María la Asunción', '');
INSERT INTO `municipio` VALUES (1395, 20, '397', 'Heroica Ciudad de Tlaxiaco', '');
INSERT INTO `municipio` VALUES (1396, 20, '398', 'Ayoquezco de Aldama', '');
INSERT INTO `municipio` VALUES (1397, 20, '399', 'Santa María Atzompa', '');
INSERT INTO `municipio` VALUES (1398, 20, '400', 'Santa María Camotlán', '');
INSERT INTO `municipio` VALUES (1399, 20, '401', 'Santa María Colotepec', '');
INSERT INTO `municipio` VALUES (1400, 20, '402', 'Santa María Cortijo', '');
INSERT INTO `municipio` VALUES (1401, 20, '403', 'Santa María Coyotepec', '');
INSERT INTO `municipio` VALUES (1402, 20, '404', 'Santa María Chachoápam', '');
INSERT INTO `municipio` VALUES (1403, 20, '405', 'Villa de Chilapa de Díaz', '');
INSERT INTO `municipio` VALUES (1404, 20, '406', 'Santa María Chilchotla', '');
INSERT INTO `municipio` VALUES (1405, 20, '407', 'Santa María Chimalapa', '');
INSERT INTO `municipio` VALUES (1406, 20, '408', 'Santa María del Rosario', '');
INSERT INTO `municipio` VALUES (1407, 20, '409', 'Santa María del Tule', '');
INSERT INTO `municipio` VALUES (1408, 20, '410', 'Santa María Ecatepec', '');
INSERT INTO `municipio` VALUES (1409, 20, '411', 'Santa María Guelacé', '');
INSERT INTO `municipio` VALUES (1410, 20, '412', 'Santa María Guienagati', '');
INSERT INTO `municipio` VALUES (1411, 20, '413', 'Santa María Huatulco', '');
INSERT INTO `municipio` VALUES (1412, 20, '414', 'Santa María Huazolotitlán', '');
INSERT INTO `municipio` VALUES (1413, 20, '415', 'Santa María Ipalapa', '');
INSERT INTO `municipio` VALUES (1414, 20, '416', 'Santa María Ixcatlán', '');
INSERT INTO `municipio` VALUES (1415, 20, '417', 'Santa María Jacatepec', '');
INSERT INTO `municipio` VALUES (1416, 20, '418', 'Santa María Jalapa del Marqués', '');
INSERT INTO `municipio` VALUES (1417, 20, '419', 'Santa María Jaltianguis', '');
INSERT INTO `municipio` VALUES (1418, 20, '420', 'Santa María Lachixío', '');
INSERT INTO `municipio` VALUES (1419, 20, '421', 'Santa María Mixtequilla', '');
INSERT INTO `municipio` VALUES (1420, 20, '422', 'Santa María Nativitas', '');
INSERT INTO `municipio` VALUES (1421, 20, '423', 'Santa María Nduayaco', '');
INSERT INTO `municipio` VALUES (1422, 20, '424', 'Santa María Ozolotepec', '');
INSERT INTO `municipio` VALUES (1423, 20, '425', 'Santa María Pápalo', '');
INSERT INTO `municipio` VALUES (1424, 20, '426', 'Santa María Peñoles', '');
INSERT INTO `municipio` VALUES (1425, 20, '427', 'Santa María Petapa', '');
INSERT INTO `municipio` VALUES (1426, 20, '428', 'Santa María Quiegolani', '');
INSERT INTO `municipio` VALUES (1427, 20, '429', 'Santa María Sola', '');
INSERT INTO `municipio` VALUES (1428, 20, '430', 'Santa María Tataltepec', '');
INSERT INTO `municipio` VALUES (1429, 20, '431', 'Santa María Tecomavaca', '');
INSERT INTO `municipio` VALUES (1430, 20, '432', 'Santa María Temaxcalapa', '');
INSERT INTO `municipio` VALUES (1431, 20, '433', 'Santa María Temaxcaltepec', '');
INSERT INTO `municipio` VALUES (1432, 20, '434', 'Santa María Teopoxco', '');
INSERT INTO `municipio` VALUES (1433, 20, '435', 'Santa María Tepantlali', '');
INSERT INTO `municipio` VALUES (1434, 20, '436', 'Santa María Texcatitlán', '');
INSERT INTO `municipio` VALUES (1435, 20, '437', 'Santa María Tlahuitoltepec', '');
INSERT INTO `municipio` VALUES (1436, 20, '438', 'Santa María Tlalixtac', '');
INSERT INTO `municipio` VALUES (1437, 20, '439', 'Santa María Tonameca', '');
INSERT INTO `municipio` VALUES (1438, 20, '440', 'Santa María Totolapilla', '');
INSERT INTO `municipio` VALUES (1439, 20, '441', 'Santa María Xadani', '');
INSERT INTO `municipio` VALUES (1440, 20, '442', 'Santa María Yalina', '');
INSERT INTO `municipio` VALUES (1441, 20, '443', 'Santa María Yavesía', '');
INSERT INTO `municipio` VALUES (1442, 20, '444', 'Santa María Yolotepec', '');
INSERT INTO `municipio` VALUES (1443, 20, '445', 'Santa María Yosoyúa', '');
INSERT INTO `municipio` VALUES (1444, 20, '446', 'Santa María Yucuhiti', '');
INSERT INTO `municipio` VALUES (1445, 20, '447', 'Santa María Zacatepec', '');
INSERT INTO `municipio` VALUES (1446, 20, '448', 'Santa María Zaniza', '');
INSERT INTO `municipio` VALUES (1447, 20, '449', 'Santa María Zoquitlán', '');
INSERT INTO `municipio` VALUES (1448, 20, '450', 'Santiago Amoltepec', '');
INSERT INTO `municipio` VALUES (1449, 20, '451', 'Santiago Apoala', '');
INSERT INTO `municipio` VALUES (1450, 20, '452', 'Santiago Apóstol', '');
INSERT INTO `municipio` VALUES (1451, 20, '453', 'Santiago Astata', '');
INSERT INTO `municipio` VALUES (1452, 20, '454', 'Santiago Atitlán', '');
INSERT INTO `municipio` VALUES (1453, 20, '455', 'Santiago Ayuquililla', '');
INSERT INTO `municipio` VALUES (1454, 20, '456', 'Santiago Cacaloxtepec', '');
INSERT INTO `municipio` VALUES (1455, 20, '457', 'Santiago Camotlán', '');
INSERT INTO `municipio` VALUES (1456, 20, '458', 'Santiago Comaltepec', '');
INSERT INTO `municipio` VALUES (1457, 20, '459', 'Santiago Chazumba', '');
INSERT INTO `municipio` VALUES (1458, 20, '460', 'Santiago Choápam', '');
INSERT INTO `municipio` VALUES (1459, 20, '461', 'Santiago del Río', '');
INSERT INTO `municipio` VALUES (1460, 20, '462', 'Santiago Huajolotitlán', '');
INSERT INTO `municipio` VALUES (1461, 20, '463', 'Santiago Huauclilla', '');
INSERT INTO `municipio` VALUES (1462, 20, '464', 'Santiago Ihuitlán Plumas', '');
INSERT INTO `municipio` VALUES (1463, 20, '465', 'Santiago Ixcuintepec', '');
INSERT INTO `municipio` VALUES (1464, 20, '466', 'Santiago Ixtayutla', '');
INSERT INTO `municipio` VALUES (1465, 20, '467', 'Santiago Jamiltepec', '');
INSERT INTO `municipio` VALUES (1466, 20, '468', 'Santiago Jocotepec', '');
INSERT INTO `municipio` VALUES (1467, 20, '469', 'Santiago Juxtlahuaca', '');
INSERT INTO `municipio` VALUES (1468, 20, '470', 'Santiago Lachiguiri', '');
INSERT INTO `municipio` VALUES (1469, 20, '471', 'Santiago Lalopa', '');
INSERT INTO `municipio` VALUES (1470, 20, '472', 'Santiago Laollaga', '');
INSERT INTO `municipio` VALUES (1471, 20, '473', 'Santiago Laxopa', '');
INSERT INTO `municipio` VALUES (1472, 20, '474', 'Santiago Llano Grande', '');
INSERT INTO `municipio` VALUES (1473, 20, '475', 'Santiago Matatlán', '');
INSERT INTO `municipio` VALUES (1474, 20, '476', 'Santiago Miltepec', '');
INSERT INTO `municipio` VALUES (1475, 20, '477', 'Santiago Minas', '');
INSERT INTO `municipio` VALUES (1476, 20, '478', 'Santiago Nacaltepec', '');
INSERT INTO `municipio` VALUES (1477, 20, '479', 'Santiago Nejapilla', '');
INSERT INTO `municipio` VALUES (1478, 20, '480', 'Santiago Nundiche', '');
INSERT INTO `municipio` VALUES (1479, 20, '481', 'Santiago Nuyoó', '');
INSERT INTO `municipio` VALUES (1480, 20, '482', 'Santiago Pinotepa Nacional', '');
INSERT INTO `municipio` VALUES (1481, 20, '483', 'Santiago Suchilquitongo', '');
INSERT INTO `municipio` VALUES (1482, 20, '484', 'Santiago Tamazola', '');
INSERT INTO `municipio` VALUES (1483, 20, '485', 'Santiago Tapextla', '');
INSERT INTO `municipio` VALUES (1484, 20, '486', 'Villa Tejúpam de la Unión', '');
INSERT INTO `municipio` VALUES (1485, 20, '487', 'Santiago Tenango', '');
INSERT INTO `municipio` VALUES (1486, 20, '488', 'Santiago Tepetlapa', '');
INSERT INTO `municipio` VALUES (1487, 20, '489', 'Santiago Tetepec', '');
INSERT INTO `municipio` VALUES (1488, 20, '490', 'Santiago Texcalcingo', '');
INSERT INTO `municipio` VALUES (1489, 20, '491', 'Santiago Textitlán', '');
INSERT INTO `municipio` VALUES (1490, 20, '492', 'Santiago Tilantongo', '');
INSERT INTO `municipio` VALUES (1491, 20, '493', 'Santiago Tillo', '');
INSERT INTO `municipio` VALUES (1492, 20, '494', 'Santiago Tlazoyaltepec', '');
INSERT INTO `municipio` VALUES (1493, 20, '495', 'Santiago Xanica', '');
INSERT INTO `municipio` VALUES (1494, 20, '496', 'Santiago Xiacuí', '');
INSERT INTO `municipio` VALUES (1495, 20, '497', 'Santiago Yaitepec', '');
INSERT INTO `municipio` VALUES (1496, 20, '498', 'Santiago Yaveo', '');
INSERT INTO `municipio` VALUES (1497, 20, '499', 'Santiago Yolomécatl', '');
INSERT INTO `municipio` VALUES (1498, 20, '500', 'Santiago Yosondúa', '');
INSERT INTO `municipio` VALUES (1499, 20, '501', 'Santiago Yucuyachi', '');
INSERT INTO `municipio` VALUES (1500, 20, '502', 'Santiago Zacatepec', '');
INSERT INTO `municipio` VALUES (1501, 20, '503', 'Santiago Zoochila', '');
INSERT INTO `municipio` VALUES (1502, 20, '504', 'Nuevo Zoquiápam', '');
INSERT INTO `municipio` VALUES (1503, 20, '505', 'Santo Domingo Ingenio', '');
INSERT INTO `municipio` VALUES (1504, 20, '506', 'Santo Domingo Albarradas', '');
INSERT INTO `municipio` VALUES (1505, 20, '507', 'Santo Domingo Armenta', '');
INSERT INTO `municipio` VALUES (1506, 20, '508', 'Santo Domingo Chihuitán', '');
INSERT INTO `municipio` VALUES (1507, 20, '509', 'Santo Domingo de Morelos', '');
INSERT INTO `municipio` VALUES (1508, 20, '510', 'Santo Domingo Ixcatlán', '');
INSERT INTO `municipio` VALUES (1509, 20, '511', 'Santo Domingo Nuxaá', '');
INSERT INTO `municipio` VALUES (1510, 20, '512', 'Santo Domingo Ozolotepec', '');
INSERT INTO `municipio` VALUES (1511, 20, '513', 'Santo Domingo Petapa', '');
INSERT INTO `municipio` VALUES (1512, 20, '514', 'Santo Domingo Roayaga', '');
INSERT INTO `municipio` VALUES (1513, 20, '515', 'Santo Domingo Tehuantepec', '');
INSERT INTO `municipio` VALUES (1514, 20, '516', 'Santo Domingo Teojomulco', '');
INSERT INTO `municipio` VALUES (1515, 20, '517', 'Santo Domingo Tepuxtepec', '');
INSERT INTO `municipio` VALUES (1516, 20, '518', 'Santo Domingo Tlatayápam', '');
INSERT INTO `municipio` VALUES (1517, 20, '519', 'Santo Domingo Tomaltepec', '');
INSERT INTO `municipio` VALUES (1518, 20, '520', 'Santo Domingo Tonalá', '');
INSERT INTO `municipio` VALUES (1519, 20, '521', 'Santo Domingo Tonaltepec', '');
INSERT INTO `municipio` VALUES (1520, 20, '522', 'Santo Domingo Xagacía', '');
INSERT INTO `municipio` VALUES (1521, 20, '523', 'Santo Domingo Yanhuitlán', '');
INSERT INTO `municipio` VALUES (1522, 20, '524', 'Santo Domingo Yodohino', '');
INSERT INTO `municipio` VALUES (1523, 20, '525', 'Santo Domingo Zanatepec', '');
INSERT INTO `municipio` VALUES (1524, 20, '526', 'Santos Reyes Nopala', '');
INSERT INTO `municipio` VALUES (1525, 20, '527', 'Santos Reyes Pápalo', '');
INSERT INTO `municipio` VALUES (1526, 20, '528', 'Santos Reyes Tepejillo', '');
INSERT INTO `municipio` VALUES (1527, 20, '529', 'Santos Reyes Yucuná', '');
INSERT INTO `municipio` VALUES (1528, 20, '530', 'Santo Tomás Jalieza', '');
INSERT INTO `municipio` VALUES (1529, 20, '531', 'Santo Tomás Mazaltepec', '');
INSERT INTO `municipio` VALUES (1530, 20, '532', 'Santo Tomás Ocotepec', '');
INSERT INTO `municipio` VALUES (1531, 20, '533', 'Santo Tomás Tamazulapan', '');
INSERT INTO `municipio` VALUES (1532, 20, '534', 'San Vicente Coatlán', '');
INSERT INTO `municipio` VALUES (1533, 20, '535', 'San Vicente Lachixío', '');
INSERT INTO `municipio` VALUES (1534, 20, '536', 'San Vicente Nuñú', '');
INSERT INTO `municipio` VALUES (1535, 20, '537', 'Silacayoápam', '');
INSERT INTO `municipio` VALUES (1536, 20, '538', 'Sitio de Xitlapehua', '');
INSERT INTO `municipio` VALUES (1537, 20, '539', 'Soledad Etla', '');
INSERT INTO `municipio` VALUES (1538, 20, '540', 'Villa de Tamazulápam del Progreso', '');
INSERT INTO `municipio` VALUES (1539, 20, '541', 'Tanetze de Zaragoza', '');
INSERT INTO `municipio` VALUES (1540, 20, '542', 'Taniche', '');
INSERT INTO `municipio` VALUES (1541, 20, '543', 'Tataltepec de Valdés', '');
INSERT INTO `municipio` VALUES (1542, 20, '544', 'Teococuilco de Marcos Pérez', '');
INSERT INTO `municipio` VALUES (1543, 20, '545', 'Teotitlán de Flores Magón', '');
INSERT INTO `municipio` VALUES (1544, 20, '546', 'Teotitlán del Valle', '');
INSERT INTO `municipio` VALUES (1545, 20, '547', 'Teotongo', '');
INSERT INTO `municipio` VALUES (1546, 20, '548', 'Tepelmeme Villa de Morelos', '');
INSERT INTO `municipio` VALUES (1547, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1548, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1549, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1550, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1551, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1552, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1553, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1554, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1555, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1556, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1557, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1558, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1559, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1560, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1561, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1562, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1563, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1564, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1565, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1566, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1567, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1568, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1569, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1570, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1571, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1572, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1573, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1574, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1575, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1576, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1577, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1578, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1579, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1580, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1581, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1582, 20, '549', 'Heroica Villa Tezoatlán de Segura y Luna, Cuna de ', '');
INSERT INTO `municipio` VALUES (1583, 20, '550', 'San Jerónimo Tlacochahuaya', '');
INSERT INTO `municipio` VALUES (1584, 20, '551', 'Tlacolula de Matamoros', '');
INSERT INTO `municipio` VALUES (1585, 20, '552', 'Tlacotepec Plumas', '');
INSERT INTO `municipio` VALUES (1586, 20, '553', 'Tlalixtac de Cabrera', '');
INSERT INTO `municipio` VALUES (1587, 20, '554', 'Totontepec Villa de Morelos', '');
INSERT INTO `municipio` VALUES (1588, 20, '555', 'Trinidad Zaachila', '');
INSERT INTO `municipio` VALUES (1589, 20, '556', 'La Trinidad Vista Hermosa', '');
INSERT INTO `municipio` VALUES (1590, 20, '557', 'Unión Hidalgo', '');
INSERT INTO `municipio` VALUES (1591, 20, '558', 'Valerio Trujano', '');
INSERT INTO `municipio` VALUES (1592, 20, '559', 'San Juan Bautista Valle Nacional', '');
INSERT INTO `municipio` VALUES (1593, 20, '560', 'Villa Díaz Ordaz', '');
INSERT INTO `municipio` VALUES (1594, 20, '561', 'Yaxe', '');
INSERT INTO `municipio` VALUES (1595, 20, '562', 'Magdalena Yodocono de Porfirio Díaz', '');
INSERT INTO `municipio` VALUES (1596, 20, '563', 'Yogana', '');
INSERT INTO `municipio` VALUES (1597, 20, '564', 'Yutanduchi de Guerrero', '');
INSERT INTO `municipio` VALUES (1598, 20, '565', 'Villa de Zaachila', '');
INSERT INTO `municipio` VALUES (1599, 20, '566', 'San Mateo Yucutindó', '');
INSERT INTO `municipio` VALUES (1600, 20, '567', 'Zapotitlán Lagunas', '');
INSERT INTO `municipio` VALUES (1601, 20, '568', 'Zapotitlán Palmas', '');
INSERT INTO `municipio` VALUES (1602, 20, '569', 'Santa Inés de Zaragoza', '');
INSERT INTO `municipio` VALUES (1603, 20, '570', 'Zimatlán de Álvarez', '');
INSERT INTO `municipio` VALUES (1604, 21, '001', 'Acajete', '');
INSERT INTO `municipio` VALUES (1605, 21, '002', 'Acateno', '');
INSERT INTO `municipio` VALUES (1606, 21, '003', 'Acatlán', '');
INSERT INTO `municipio` VALUES (1607, 21, '004', 'Acatzingo', '');
INSERT INTO `municipio` VALUES (1608, 21, '005', 'Acteopan', '');
INSERT INTO `municipio` VALUES (1609, 21, '006', 'Ahuacatlán', '');
INSERT INTO `municipio` VALUES (1610, 21, '007', 'Ahuatlán', '');
INSERT INTO `municipio` VALUES (1611, 21, '008', 'Ahuazotepec', '');
INSERT INTO `municipio` VALUES (1612, 21, '009', 'Ahuehuetitla', '');
INSERT INTO `municipio` VALUES (1613, 21, '010', 'Ajalpan', '');
INSERT INTO `municipio` VALUES (1614, 21, '011', 'Albino Zertuche', '');
INSERT INTO `municipio` VALUES (1615, 21, '012', 'Aljojuca', '');
INSERT INTO `municipio` VALUES (1616, 21, '013', 'Altepexi', '');
INSERT INTO `municipio` VALUES (1617, 21, '014', 'Amixtlán', '');
INSERT INTO `municipio` VALUES (1618, 21, '015', 'Amozoc', '');
INSERT INTO `municipio` VALUES (1619, 21, '016', 'Aquixtla', '');
INSERT INTO `municipio` VALUES (1620, 21, '017', 'Atempan', '');
INSERT INTO `municipio` VALUES (1621, 21, '018', 'Atexcal', '');
INSERT INTO `municipio` VALUES (1622, 21, '019', 'Atlixco', '');
INSERT INTO `municipio` VALUES (1623, 21, '020', 'Atoyatempan', '');
INSERT INTO `municipio` VALUES (1624, 21, '021', 'Atzala', '');
INSERT INTO `municipio` VALUES (1625, 21, '022', 'Atzitzihuacán', '');
INSERT INTO `municipio` VALUES (1626, 21, '023', 'Atzitzintla', '');
INSERT INTO `municipio` VALUES (1627, 21, '024', 'Axutla', '');
INSERT INTO `municipio` VALUES (1628, 21, '025', 'Ayotoxco de Guerrero', '');
INSERT INTO `municipio` VALUES (1629, 21, '026', 'Calpan', '');
INSERT INTO `municipio` VALUES (1630, 21, '027', 'Caltepec', '');
INSERT INTO `municipio` VALUES (1631, 21, '028', 'Camocuautla', '');
INSERT INTO `municipio` VALUES (1632, 21, '029', 'Caxhuacan', '');
INSERT INTO `municipio` VALUES (1633, 21, '030', 'Coatepec', '');
INSERT INTO `municipio` VALUES (1634, 21, '031', 'Coatzingo', '');
INSERT INTO `municipio` VALUES (1635, 21, '032', 'Cohetzala', '');
INSERT INTO `municipio` VALUES (1636, 21, '033', 'Cohuecan', '');
INSERT INTO `municipio` VALUES (1637, 21, '034', 'Coronango', '');
INSERT INTO `municipio` VALUES (1638, 21, '035', 'Coxcatlán', '');
INSERT INTO `municipio` VALUES (1639, 21, '036', 'Coyomeapan', '');
INSERT INTO `municipio` VALUES (1640, 21, '037', 'Coyotepec', '');
INSERT INTO `municipio` VALUES (1641, 21, '038', 'Cuapiaxtla de Madero', '');
INSERT INTO `municipio` VALUES (1642, 21, '039', 'Cuautempan', '');
INSERT INTO `municipio` VALUES (1643, 21, '040', 'Cuautinchán', '');
INSERT INTO `municipio` VALUES (1644, 21, '041', 'Cuautlancingo', '');
INSERT INTO `municipio` VALUES (1645, 21, '042', 'Cuayuca de Andrade', '');
INSERT INTO `municipio` VALUES (1646, 21, '043', 'Cuetzalan del Progreso', '');
INSERT INTO `municipio` VALUES (1647, 21, '044', 'Cuyoaco', '');
INSERT INTO `municipio` VALUES (1648, 21, '045', 'Chalchicomula de Sesma', '');
INSERT INTO `municipio` VALUES (1649, 21, '046', 'Chapulco', '');
INSERT INTO `municipio` VALUES (1650, 21, '047', 'Chiautla', '');
INSERT INTO `municipio` VALUES (1651, 21, '048', 'Chiautzingo', '');
INSERT INTO `municipio` VALUES (1652, 21, '049', 'Chiconcuautla', '');
INSERT INTO `municipio` VALUES (1653, 21, '050', 'Chichiquila', '');
INSERT INTO `municipio` VALUES (1654, 21, '051', 'Chietla', '');
INSERT INTO `municipio` VALUES (1655, 21, '052', 'Chigmecatitlán', '');
INSERT INTO `municipio` VALUES (1656, 21, '053', 'Chignahuapan', '');
INSERT INTO `municipio` VALUES (1657, 21, '054', 'Chignautla', '');
INSERT INTO `municipio` VALUES (1658, 21, '055', 'Chila', '');
INSERT INTO `municipio` VALUES (1659, 21, '056', 'Chila de la Sal', '');
INSERT INTO `municipio` VALUES (1660, 21, '057', 'Honey', '');
INSERT INTO `municipio` VALUES (1661, 21, '058', 'Chilchotla', '');
INSERT INTO `municipio` VALUES (1662, 21, '059', 'Chinantla', '');
INSERT INTO `municipio` VALUES (1663, 21, '060', 'Domingo Arenas', '');
INSERT INTO `municipio` VALUES (1664, 21, '061', 'Eloxochitlán', '');
INSERT INTO `municipio` VALUES (1665, 21, '062', 'Epatlán', '');
INSERT INTO `municipio` VALUES (1666, 21, '063', 'Esperanza', '');
INSERT INTO `municipio` VALUES (1667, 21, '064', 'Francisco Z. Mena', '');
INSERT INTO `municipio` VALUES (1668, 21, '065', 'General Felipe Ángeles', '');
INSERT INTO `municipio` VALUES (1669, 21, '066', 'Guadalupe', '');
INSERT INTO `municipio` VALUES (1670, 21, '067', 'Guadalupe Victoria', '');
INSERT INTO `municipio` VALUES (1671, 21, '068', 'Hermenegildo Galeana', '');
INSERT INTO `municipio` VALUES (1672, 21, '069', 'Huaquechula', '');
INSERT INTO `municipio` VALUES (1673, 21, '070', 'Huatlatlauca', '');
INSERT INTO `municipio` VALUES (1674, 21, '071', 'Huauchinango', '');
INSERT INTO `municipio` VALUES (1675, 21, '072', 'Huehuetla', '');
INSERT INTO `municipio` VALUES (1676, 21, '073', 'Huehuetlán el Chico', '');
INSERT INTO `municipio` VALUES (1677, 21, '074', 'Huejotzingo', '');
INSERT INTO `municipio` VALUES (1678, 21, '075', 'Hueyapan', '');
INSERT INTO `municipio` VALUES (1679, 21, '076', 'Hueytamalco', '');
INSERT INTO `municipio` VALUES (1680, 21, '077', 'Hueytlalpan', '');
INSERT INTO `municipio` VALUES (1681, 21, '078', 'Huitzilan de Serdán', '');
INSERT INTO `municipio` VALUES (1682, 21, '079', 'Huitziltepec', '');
INSERT INTO `municipio` VALUES (1683, 21, '080', 'Atlequizayan', '');
INSERT INTO `municipio` VALUES (1684, 21, '081', 'Ixcamilpa de Guerrero', '');
INSERT INTO `municipio` VALUES (1685, 21, '082', 'Ixcaquixtla', '');
INSERT INTO `municipio` VALUES (1686, 21, '083', 'Ixtacamaxtitlán', '');
INSERT INTO `municipio` VALUES (1687, 21, '084', 'Ixtepec', '');
INSERT INTO `municipio` VALUES (1688, 21, '085', 'Izúcar de Matamoros', '');
INSERT INTO `municipio` VALUES (1689, 21, '086', 'Jalpan', '');
INSERT INTO `municipio` VALUES (1690, 21, '087', 'Jolalpan', '');
INSERT INTO `municipio` VALUES (1691, 21, '088', 'Jonotla', '');
INSERT INTO `municipio` VALUES (1692, 21, '089', 'Jopala', '');
INSERT INTO `municipio` VALUES (1693, 21, '090', 'Juan C. Bonilla', '');
INSERT INTO `municipio` VALUES (1694, 21, '091', 'Juan Galindo', '');
INSERT INTO `municipio` VALUES (1695, 21, '092', 'Juan N. Méndez', '');
INSERT INTO `municipio` VALUES (1696, 21, '093', 'Lafragua', '');
INSERT INTO `municipio` VALUES (1697, 21, '094', 'Libres', '');
INSERT INTO `municipio` VALUES (1698, 21, '095', 'La Magdalena Tlatlauquitepec', '');
INSERT INTO `municipio` VALUES (1699, 21, '096', 'Mazapiltepec de Juárez', '');
INSERT INTO `municipio` VALUES (1700, 21, '097', 'Mixtla', '');
INSERT INTO `municipio` VALUES (1701, 21, '098', 'Molcaxac', '');
INSERT INTO `municipio` VALUES (1702, 21, '099', 'Cañada Morelos', '');
INSERT INTO `municipio` VALUES (1703, 21, '100', 'Naupan', '');
INSERT INTO `municipio` VALUES (1704, 21, '101', 'Nauzontla', '');
INSERT INTO `municipio` VALUES (1705, 21, '102', 'Nealtican', '');
INSERT INTO `municipio` VALUES (1706, 21, '103', 'Nicolás Bravo', '');
INSERT INTO `municipio` VALUES (1707, 21, '104', 'Nopalucan', '');
INSERT INTO `municipio` VALUES (1708, 21, '105', 'Ocotepec', '');
INSERT INTO `municipio` VALUES (1709, 21, '106', 'Ocoyucan', '');
INSERT INTO `municipio` VALUES (1710, 21, '107', 'Olintla', '');
INSERT INTO `municipio` VALUES (1711, 21, '108', 'Oriental', '');
INSERT INTO `municipio` VALUES (1712, 21, '109', 'Pahuatlán', '');
INSERT INTO `municipio` VALUES (1713, 21, '110', 'Palmar de Bravo', '');
INSERT INTO `municipio` VALUES (1714, 21, '111', 'Pantepec', '');
INSERT INTO `municipio` VALUES (1715, 21, '112', 'Petlalcingo', '');
INSERT INTO `municipio` VALUES (1716, 21, '113', 'Piaxtla', '');
INSERT INTO `municipio` VALUES (1717, 21, '114', 'Puebla', '');
INSERT INTO `municipio` VALUES (1718, 21, '115', 'Quecholac', '');
INSERT INTO `municipio` VALUES (1719, 21, '116', 'Quimixtlán', '');
INSERT INTO `municipio` VALUES (1720, 21, '117', 'Rafael Lara Grajales', '');
INSERT INTO `municipio` VALUES (1721, 21, '118', 'Los Reyes de Juárez', '');
INSERT INTO `municipio` VALUES (1722, 21, '119', 'San Andrés Cholula', '');
INSERT INTO `municipio` VALUES (1723, 21, '120', 'San Antonio Cañada', '');
INSERT INTO `municipio` VALUES (1724, 21, '121', 'San Diego la Mesa Tochimiltzingo', '');
INSERT INTO `municipio` VALUES (1725, 21, '122', 'San Felipe Teotlalcingo', '');
INSERT INTO `municipio` VALUES (1726, 21, '123', 'San Felipe Tepatlán', '');
INSERT INTO `municipio` VALUES (1727, 21, '124', 'San Gabriel Chilac', '');
INSERT INTO `municipio` VALUES (1728, 21, '125', 'San Gregorio Atzompa', '');
INSERT INTO `municipio` VALUES (1729, 21, '126', 'San Jerónimo Tecuanipan', '');
INSERT INTO `municipio` VALUES (1730, 21, '127', 'San Jerónimo Xayacatlán', '');
INSERT INTO `municipio` VALUES (1731, 21, '128', 'San José Chiapa', '');
INSERT INTO `municipio` VALUES (1732, 21, '129', 'San José Miahuatlán', '');
INSERT INTO `municipio` VALUES (1733, 21, '130', 'San Juan Atenco', '');
INSERT INTO `municipio` VALUES (1734, 21, '131', 'San Juan Atzompa', '');
INSERT INTO `municipio` VALUES (1735, 21, '132', 'San Martín Texmelucan', '');
INSERT INTO `municipio` VALUES (1736, 21, '133', 'San Martín Totoltepec', '');
INSERT INTO `municipio` VALUES (1737, 21, '134', 'San Matías Tlalancaleca', '');
INSERT INTO `municipio` VALUES (1738, 21, '135', 'San Miguel Ixitlán', '');
INSERT INTO `municipio` VALUES (1739, 21, '136', 'San Miguel Xoxtla', '');
INSERT INTO `municipio` VALUES (1740, 21, '137', 'San Nicolás Buenos Aires', '');
INSERT INTO `municipio` VALUES (1741, 21, '138', 'San Nicolás de los Ranchos', '');
INSERT INTO `municipio` VALUES (1742, 21, '139', 'San Pablo Anicano', '');
INSERT INTO `municipio` VALUES (1743, 21, '140', 'San Pedro Cholula', '');
INSERT INTO `municipio` VALUES (1744, 21, '141', 'San Pedro Yeloixtlahuaca', '');
INSERT INTO `municipio` VALUES (1745, 21, '142', 'San Salvador el Seco', '');
INSERT INTO `municipio` VALUES (1746, 21, '143', 'San Salvador el Verde', '');
INSERT INTO `municipio` VALUES (1747, 21, '144', 'San Salvador Huixcolotla', '');
INSERT INTO `municipio` VALUES (1748, 21, '145', 'San Sebastián Tlacotepec', '');
INSERT INTO `municipio` VALUES (1749, 21, '146', 'Santa Catarina Tlaltempan', '');
INSERT INTO `municipio` VALUES (1750, 21, '147', 'Santa Inés Ahuatempan', '');
INSERT INTO `municipio` VALUES (1751, 21, '148', 'Santa Isabel Cholula', '');
INSERT INTO `municipio` VALUES (1752, 21, '149', 'Santiago Miahuatlán', '');
INSERT INTO `municipio` VALUES (1753, 21, '150', 'Huehuetlán el Grande', '');
INSERT INTO `municipio` VALUES (1754, 21, '151', 'Santo Tomás Hueyotlipan', '');
INSERT INTO `municipio` VALUES (1755, 21, '152', 'Soltepec', '');
INSERT INTO `municipio` VALUES (1756, 21, '153', 'Tecali de Herrera', '');
INSERT INTO `municipio` VALUES (1757, 21, '154', 'Tecamachalco', '');
INSERT INTO `municipio` VALUES (1758, 21, '155', 'Tecomatlán', '');
INSERT INTO `municipio` VALUES (1759, 21, '156', 'Tehuacán', '');
INSERT INTO `municipio` VALUES (1760, 21, '157', 'Tehuitzingo', '');
INSERT INTO `municipio` VALUES (1761, 21, '158', 'Tenampulco', '');
INSERT INTO `municipio` VALUES (1762, 21, '159', 'Teopantlán', '');
INSERT INTO `municipio` VALUES (1763, 21, '160', 'Teotlalco', '');
INSERT INTO `municipio` VALUES (1764, 21, '161', 'Tepanco de López', '');
INSERT INTO `municipio` VALUES (1765, 21, '162', 'Tepango de Rodríguez', '');
INSERT INTO `municipio` VALUES (1766, 21, '163', 'Tepatlaxco de Hidalgo', '');
INSERT INTO `municipio` VALUES (1767, 21, '164', 'Tepeaca', '');
INSERT INTO `municipio` VALUES (1768, 21, '165', 'Tepemaxalco', '');
INSERT INTO `municipio` VALUES (1769, 21, '166', 'Tepeojuma', '');
INSERT INTO `municipio` VALUES (1770, 21, '167', 'Tepetzintla', '');
INSERT INTO `municipio` VALUES (1771, 21, '168', 'Tepexco', '');
INSERT INTO `municipio` VALUES (1772, 21, '169', 'Tepexi de Rodríguez', '');
INSERT INTO `municipio` VALUES (1773, 21, '170', 'Tepeyahualco', '');
INSERT INTO `municipio` VALUES (1774, 21, '171', 'Tepeyahualco de Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (1775, 21, '172', 'Tetela de Ocampo', '');
INSERT INTO `municipio` VALUES (1776, 21, '173', 'Teteles de Avila Castillo', '');
INSERT INTO `municipio` VALUES (1777, 21, '174', 'Teziutlán', '');
INSERT INTO `municipio` VALUES (1778, 21, '175', 'Tianguismanalco', '');
INSERT INTO `municipio` VALUES (1779, 21, '176', 'Tilapa', '');
INSERT INTO `municipio` VALUES (1780, 21, '177', 'Tlacotepec de Benito Juárez', '');
INSERT INTO `municipio` VALUES (1781, 21, '178', 'Tlacuilotepec', '');
INSERT INTO `municipio` VALUES (1782, 21, '179', 'Tlachichuca', '');
INSERT INTO `municipio` VALUES (1783, 21, '180', 'Tlahuapan', '');
INSERT INTO `municipio` VALUES (1784, 21, '181', 'Tlaltenango', '');
INSERT INTO `municipio` VALUES (1785, 21, '182', 'Tlanepantla', '');
INSERT INTO `municipio` VALUES (1786, 21, '183', 'Tlaola', '');
INSERT INTO `municipio` VALUES (1787, 21, '184', 'Tlapacoya', '');
INSERT INTO `municipio` VALUES (1788, 21, '185', 'Tlapanalá', '');
INSERT INTO `municipio` VALUES (1789, 21, '186', 'Tlatlauquitepec', '');
INSERT INTO `municipio` VALUES (1790, 21, '187', 'Tlaxco', '');
INSERT INTO `municipio` VALUES (1791, 21, '188', 'Tochimilco', '');
INSERT INTO `municipio` VALUES (1792, 21, '189', 'Tochtepec', '');
INSERT INTO `municipio` VALUES (1793, 21, '190', 'Totoltepec de Guerrero', '');
INSERT INTO `municipio` VALUES (1794, 21, '191', 'Tulcingo', '');
INSERT INTO `municipio` VALUES (1795, 21, '192', 'Tuzamapan de Galeana', '');
INSERT INTO `municipio` VALUES (1796, 21, '193', 'Tzicatlacoyan', '');
INSERT INTO `municipio` VALUES (1797, 21, '194', 'Venustiano Carranza', '');
INSERT INTO `municipio` VALUES (1798, 21, '195', 'Vicente Guerrero', '');
INSERT INTO `municipio` VALUES (1799, 21, '196', 'Xayacatlán de Bravo', '');
INSERT INTO `municipio` VALUES (1800, 21, '197', 'Xicotepec', '');
INSERT INTO `municipio` VALUES (1801, 21, '198', 'Xicotlán', '');
INSERT INTO `municipio` VALUES (1802, 21, '199', 'Xiutetelco', '');
INSERT INTO `municipio` VALUES (1803, 21, '200', 'Xochiapulco', '');
INSERT INTO `municipio` VALUES (1804, 21, '201', 'Xochiltepec', '');
INSERT INTO `municipio` VALUES (1805, 21, '202', 'Xochitlán de Vicente Suárez', '');
INSERT INTO `municipio` VALUES (1806, 21, '203', 'Xochitlán Todos Santos', '');
INSERT INTO `municipio` VALUES (1807, 21, '204', 'Yaonáhuac', '');
INSERT INTO `municipio` VALUES (1808, 21, '205', 'Yehualtepec', '');
INSERT INTO `municipio` VALUES (1809, 21, '206', 'Zacapala', '');
INSERT INTO `municipio` VALUES (1810, 21, '207', 'Zacapoaxtla', '');
INSERT INTO `municipio` VALUES (1811, 21, '208', 'Zacatlán', '');
INSERT INTO `municipio` VALUES (1812, 21, '209', 'Zapotitlán', '');
INSERT INTO `municipio` VALUES (1813, 21, '210', 'Zapotitlán de Méndez', '');
INSERT INTO `municipio` VALUES (1814, 21, '211', 'Zaragoza', '');
INSERT INTO `municipio` VALUES (1815, 21, '212', 'Zautla', '');
INSERT INTO `municipio` VALUES (1816, 21, '213', 'Zihuateutla', '');
INSERT INTO `municipio` VALUES (1817, 21, '214', 'Zinacatepec', '');
INSERT INTO `municipio` VALUES (1818, 21, '215', 'Zongozotla', '');
INSERT INTO `municipio` VALUES (1819, 21, '216', 'Zoquiapan', '');
INSERT INTO `municipio` VALUES (1820, 21, '217', 'Zoquitlán', '');
INSERT INTO `municipio` VALUES (1821, 22, '001', 'Amealco de Bonfil', '');
INSERT INTO `municipio` VALUES (1822, 22, '002', 'Pinal de Amoles', '');
INSERT INTO `municipio` VALUES (1823, 22, '003', 'Arroyo Seco', '');
INSERT INTO `municipio` VALUES (1824, 22, '004', 'Cadereyta de Montes', '');
INSERT INTO `municipio` VALUES (1825, 22, '005', 'Colón', '');
INSERT INTO `municipio` VALUES (1826, 22, '006', 'Corregidora', '');
INSERT INTO `municipio` VALUES (1827, 22, '007', 'Ezequiel Montes', '');
INSERT INTO `municipio` VALUES (1828, 22, '008', 'Huimilpan', '');
INSERT INTO `municipio` VALUES (1829, 22, '009', 'Jalpan de Serra', '');
INSERT INTO `municipio` VALUES (1830, 22, '010', 'Landa de Matamoros', '');
INSERT INTO `municipio` VALUES (1831, 22, '011', 'El Marqués', '');
INSERT INTO `municipio` VALUES (1832, 22, '012', 'Pedro Escobedo', '');
INSERT INTO `municipio` VALUES (1833, 22, '013', 'Peñamiller', '');
INSERT INTO `municipio` VALUES (1834, 22, '014', 'Querétaro', '');
INSERT INTO `municipio` VALUES (1835, 22, '015', 'San Joaquín', '');
INSERT INTO `municipio` VALUES (1836, 22, '016', 'San Juan del Río', '');
INSERT INTO `municipio` VALUES (1837, 22, '017', 'Tequisquiapan', '');
INSERT INTO `municipio` VALUES (1838, 22, '018', 'Tolimán', '');
INSERT INTO `municipio` VALUES (1839, 23, '001', 'Cozumel', '');
INSERT INTO `municipio` VALUES (1840, 23, '002', 'Felipe Carrillo Puerto', '');
INSERT INTO `municipio` VALUES (1841, 23, '003', 'Isla Mujeres', '');
INSERT INTO `municipio` VALUES (1842, 23, '004', 'Othón P. Blanco', '');
INSERT INTO `municipio` VALUES (1843, 23, '005', 'Benito Juárez', '');
INSERT INTO `municipio` VALUES (1844, 23, '006', 'José María Morelos', '');
INSERT INTO `municipio` VALUES (1845, 23, '007', 'Lázaro Cárdenas', '');
INSERT INTO `municipio` VALUES (1846, 23, '008', 'Solidaridad', '');
INSERT INTO `municipio` VALUES (1847, 23, '009', 'Tulum', '');
INSERT INTO `municipio` VALUES (1848, 23, '010', 'Bacalar', '');
INSERT INTO `municipio` VALUES (1849, 24, '001', 'Ahualulco', '');
INSERT INTO `municipio` VALUES (1850, 24, '002', 'Alaquines', '');
INSERT INTO `municipio` VALUES (1851, 24, '003', 'Aquismón', '');
INSERT INTO `municipio` VALUES (1852, 24, '004', 'Armadillo de los Infante', '');
INSERT INTO `municipio` VALUES (1853, 24, '005', 'Cárdenas', '');
INSERT INTO `municipio` VALUES (1854, 24, '006', 'Catorce', '');
INSERT INTO `municipio` VALUES (1855, 24, '007', 'Cedral', '');
INSERT INTO `municipio` VALUES (1856, 24, '008', 'Cerritos', '');
INSERT INTO `municipio` VALUES (1857, 24, '009', 'Cerro de San Pedro', '');
INSERT INTO `municipio` VALUES (1858, 24, '010', 'Ciudad del Maíz', '');
INSERT INTO `municipio` VALUES (1859, 24, '011', 'Ciudad Fernández', '');
INSERT INTO `municipio` VALUES (1860, 24, '012', 'Tancanhuitz', '');
INSERT INTO `municipio` VALUES (1861, 24, '013', 'Ciudad Valles', '');
INSERT INTO `municipio` VALUES (1862, 24, '014', 'Coxcatlán', '');
INSERT INTO `municipio` VALUES (1863, 24, '015', 'Charcas', '');
INSERT INTO `municipio` VALUES (1864, 24, '016', 'Ebano', '');
INSERT INTO `municipio` VALUES (1865, 24, '017', 'Guadalcázar', '');
INSERT INTO `municipio` VALUES (1866, 24, '018', 'Huehuetlán', '');
INSERT INTO `municipio` VALUES (1867, 24, '019', 'Lagunillas', '');
INSERT INTO `municipio` VALUES (1868, 24, '020', 'Matehuala', '');
INSERT INTO `municipio` VALUES (1869, 24, '021', 'Mexquitic de Carmona', '');
INSERT INTO `municipio` VALUES (1870, 24, '022', 'Moctezuma', '');
INSERT INTO `municipio` VALUES (1871, 24, '023', 'Rayón', '');
INSERT INTO `municipio` VALUES (1872, 24, '024', 'Rioverde', '');
INSERT INTO `municipio` VALUES (1873, 24, '025', 'Salinas', '');
INSERT INTO `municipio` VALUES (1874, 24, '026', 'San Antonio', '');
INSERT INTO `municipio` VALUES (1875, 24, '027', 'San Ciro de Acosta', '');
INSERT INTO `municipio` VALUES (1876, 24, '028', 'San Luis Potosí', '');
INSERT INTO `municipio` VALUES (1877, 24, '029', 'San Martín Chalchicuautla', '');
INSERT INTO `municipio` VALUES (1878, 24, '030', 'San Nicolás Tolentino', '');
INSERT INTO `municipio` VALUES (1879, 24, '031', 'Santa Catarina', '');
INSERT INTO `municipio` VALUES (1880, 24, '032', 'Santa María del Río', '');
INSERT INTO `municipio` VALUES (1881, 24, '033', 'Santo Domingo', '');
INSERT INTO `municipio` VALUES (1882, 24, '034', 'San Vicente Tancuayalab', '');
INSERT INTO `municipio` VALUES (1883, 24, '035', 'Soledad de Graciano Sánchez', '');
INSERT INTO `municipio` VALUES (1884, 24, '036', 'Tamasopo', '');
INSERT INTO `municipio` VALUES (1885, 24, '037', 'Tamazunchale', '');
INSERT INTO `municipio` VALUES (1886, 24, '038', 'Tampacán', '');
INSERT INTO `municipio` VALUES (1887, 24, '039', 'Tampamolón Corona', '');
INSERT INTO `municipio` VALUES (1888, 24, '040', 'Tamuín', '');
INSERT INTO `municipio` VALUES (1889, 24, '041', 'Tanlajás', '');
INSERT INTO `municipio` VALUES (1890, 24, '042', 'Tanquián de Escobedo', '');
INSERT INTO `municipio` VALUES (1891, 24, '043', 'Tierra Nueva', '');
INSERT INTO `municipio` VALUES (1892, 24, '044', 'Vanegas', '');
INSERT INTO `municipio` VALUES (1893, 24, '045', 'Venado', '');
INSERT INTO `municipio` VALUES (1894, 24, '046', 'Villa de Arriaga', '');
INSERT INTO `municipio` VALUES (1895, 24, '047', 'Villa de Guadalupe', '');
INSERT INTO `municipio` VALUES (1896, 24, '048', 'Villa de la Paz', '');
INSERT INTO `municipio` VALUES (1897, 24, '049', 'Villa de Ramos', '');
INSERT INTO `municipio` VALUES (1898, 24, '050', 'Villa de Reyes', '');
INSERT INTO `municipio` VALUES (1899, 24, '051', 'Villa Hidalgo', '');
INSERT INTO `municipio` VALUES (1900, 24, '052', 'Villa Juárez', '');
INSERT INTO `municipio` VALUES (1901, 24, '053', 'Axtla de Terrazas', '');
INSERT INTO `municipio` VALUES (1902, 24, '054', 'Xilitla', '');
INSERT INTO `municipio` VALUES (1903, 24, '055', 'Zaragoza', '');
INSERT INTO `municipio` VALUES (1904, 24, '056', 'Villa de Arista', '');
INSERT INTO `municipio` VALUES (1905, 24, '057', 'Matlapa', '');
INSERT INTO `municipio` VALUES (1906, 24, '058', 'El Naranjo', '');
INSERT INTO `municipio` VALUES (1907, 25, '001', 'Ahome', '');
INSERT INTO `municipio` VALUES (1908, 25, '002', 'Angostura', '');
INSERT INTO `municipio` VALUES (1909, 25, '003', 'Badiraguato', '');
INSERT INTO `municipio` VALUES (1910, 25, '004', 'Concordia', '');
INSERT INTO `municipio` VALUES (1911, 25, '005', 'Cosalá', '');
INSERT INTO `municipio` VALUES (1912, 25, '006', 'Culiacán', '');
INSERT INTO `municipio` VALUES (1913, 25, '007', 'Choix', '');
INSERT INTO `municipio` VALUES (1914, 25, '008', 'Elota', '');
INSERT INTO `municipio` VALUES (1915, 25, '009', 'Escuinapa', '');
INSERT INTO `municipio` VALUES (1916, 25, '010', 'El Fuerte', '');
INSERT INTO `municipio` VALUES (1917, 25, '011', 'Guasave', '');
INSERT INTO `municipio` VALUES (1918, 25, '012', 'Mazatlán', '');
INSERT INTO `municipio` VALUES (1919, 25, '013', 'Mocorito', '');
INSERT INTO `municipio` VALUES (1920, 25, '014', 'Rosario', '');
INSERT INTO `municipio` VALUES (1921, 25, '015', 'Salvador Alvarado', '');
INSERT INTO `municipio` VALUES (1922, 25, '016', 'San Ignacio', '');
INSERT INTO `municipio` VALUES (1923, 25, '017', 'Sinaloa', '');
INSERT INTO `municipio` VALUES (1924, 25, '018', 'Navolato', '');
INSERT INTO `municipio` VALUES (1925, 26, '001', 'Aconchi', '');
INSERT INTO `municipio` VALUES (1926, 26, '002', 'Agua Prieta', '');
INSERT INTO `municipio` VALUES (1927, 26, '003', 'Alamos', '');
INSERT INTO `municipio` VALUES (1928, 26, '004', 'Altar', '');
INSERT INTO `municipio` VALUES (1929, 26, '005', 'Arivechi', '');
INSERT INTO `municipio` VALUES (1930, 26, '006', 'Arizpe', '');
INSERT INTO `municipio` VALUES (1931, 26, '007', 'Atil', '');
INSERT INTO `municipio` VALUES (1932, 26, '008', 'Bacadéhuachi', '');
INSERT INTO `municipio` VALUES (1933, 26, '009', 'Bacanora', '');
INSERT INTO `municipio` VALUES (1934, 26, '010', 'Bacerac', '');
INSERT INTO `municipio` VALUES (1935, 26, '011', 'Bacoachi', '');
INSERT INTO `municipio` VALUES (1936, 26, '012', 'Bácum', '');
INSERT INTO `municipio` VALUES (1937, 26, '013', 'Banámichi', '');
INSERT INTO `municipio` VALUES (1938, 26, '014', 'Baviácora', '');
INSERT INTO `municipio` VALUES (1939, 26, '015', 'Bavispe', '');
INSERT INTO `municipio` VALUES (1940, 26, '016', 'Benjamín Hill', '');
INSERT INTO `municipio` VALUES (1941, 26, '017', 'Caborca', '');
INSERT INTO `municipio` VALUES (1942, 26, '018', 'Cajeme', '');
INSERT INTO `municipio` VALUES (1943, 26, '019', 'Cananea', '');
INSERT INTO `municipio` VALUES (1944, 26, '020', 'Carbó', '');
INSERT INTO `municipio` VALUES (1945, 26, '021', 'La Colorada', '');
INSERT INTO `municipio` VALUES (1946, 26, '022', 'Cucurpe', '');
INSERT INTO `municipio` VALUES (1947, 26, '023', 'Cumpas', '');
INSERT INTO `municipio` VALUES (1948, 26, '024', 'Divisaderos', '');
INSERT INTO `municipio` VALUES (1949, 26, '025', 'Empalme', '');
INSERT INTO `municipio` VALUES (1950, 26, '026', 'Etchojoa', '');
INSERT INTO `municipio` VALUES (1951, 26, '027', 'Fronteras', '');
INSERT INTO `municipio` VALUES (1952, 26, '028', 'Granados', '');
INSERT INTO `municipio` VALUES (1953, 26, '029', 'Guaymas', '');
INSERT INTO `municipio` VALUES (1954, 26, '030', 'Hermosillo', '');
INSERT INTO `municipio` VALUES (1955, 26, '031', 'Huachinera', '');
INSERT INTO `municipio` VALUES (1956, 26, '032', 'Huásabas', '');
INSERT INTO `municipio` VALUES (1957, 26, '033', 'Huatabampo', '');
INSERT INTO `municipio` VALUES (1958, 26, '034', 'Huépac', '');
INSERT INTO `municipio` VALUES (1959, 26, '035', 'Imuris', '');
INSERT INTO `municipio` VALUES (1960, 26, '036', 'Magdalena', '');
INSERT INTO `municipio` VALUES (1961, 26, '037', 'Mazatán', '');
INSERT INTO `municipio` VALUES (1962, 26, '038', 'Moctezuma', '');
INSERT INTO `municipio` VALUES (1963, 26, '039', 'Naco', '');
INSERT INTO `municipio` VALUES (1964, 26, '040', 'Nácori Chico', '');
INSERT INTO `municipio` VALUES (1965, 26, '041', 'Nacozari de García', '');
INSERT INTO `municipio` VALUES (1966, 26, '042', 'Navojoa', '');
INSERT INTO `municipio` VALUES (1967, 26, '043', 'Nogales', '');
INSERT INTO `municipio` VALUES (1968, 26, '044', 'Onavas', '');
INSERT INTO `municipio` VALUES (1969, 26, '045', 'Opodepe', '');
INSERT INTO `municipio` VALUES (1970, 26, '046', 'Oquitoa', '');
INSERT INTO `municipio` VALUES (1971, 26, '047', 'Pitiquito', '');
INSERT INTO `municipio` VALUES (1972, 26, '048', 'Puerto Peñasco', '');
INSERT INTO `municipio` VALUES (1973, 26, '049', 'Quiriego', '');
INSERT INTO `municipio` VALUES (1974, 26, '050', 'Rayón', '');
INSERT INTO `municipio` VALUES (1975, 26, '051', 'Rosario', '');
INSERT INTO `municipio` VALUES (1976, 26, '052', 'Sahuaripa', '');
INSERT INTO `municipio` VALUES (1977, 26, '053', 'San Felipe de Jesús', '');
INSERT INTO `municipio` VALUES (1978, 26, '054', 'San Javier', '');
INSERT INTO `municipio` VALUES (1979, 26, '055', 'San Luis Río Colorado', '');
INSERT INTO `municipio` VALUES (1980, 26, '056', 'San Miguel de Horcasitas', '');
INSERT INTO `municipio` VALUES (1981, 26, '057', 'San Pedro de la Cueva', '');
INSERT INTO `municipio` VALUES (1982, 26, '058', 'Santa Ana', '');
INSERT INTO `municipio` VALUES (1983, 26, '059', 'Santa Cruz', '');
INSERT INTO `municipio` VALUES (1984, 26, '060', 'Sáric', '');
INSERT INTO `municipio` VALUES (1985, 26, '061', 'Soyopa', '');
INSERT INTO `municipio` VALUES (1986, 26, '062', 'Suaqui Grande', '');
INSERT INTO `municipio` VALUES (1987, 26, '063', 'Tepache', '');
INSERT INTO `municipio` VALUES (1988, 26, '064', 'Trincheras', '');
INSERT INTO `municipio` VALUES (1989, 26, '065', 'Tubutama', '');
INSERT INTO `municipio` VALUES (1990, 26, '066', 'Ures', '');
INSERT INTO `municipio` VALUES (1991, 26, '067', 'Villa Hidalgo', '');
INSERT INTO `municipio` VALUES (1992, 26, '068', 'Villa Pesqueira', '');
INSERT INTO `municipio` VALUES (1993, 26, '069', 'Yécora', '');
INSERT INTO `municipio` VALUES (1994, 26, '070', 'General Plutarco Elías Calles', '');
INSERT INTO `municipio` VALUES (1995, 26, '071', 'Benito Juárez', '');
INSERT INTO `municipio` VALUES (1996, 26, '072', 'San Ignacio Río Muerto', '');
INSERT INTO `municipio` VALUES (1997, 27, '001', 'Balancán', '');
INSERT INTO `municipio` VALUES (1998, 27, '002', 'Cárdenas', '');
INSERT INTO `municipio` VALUES (1999, 27, '003', 'Centla', '');
INSERT INTO `municipio` VALUES (2000, 27, '004', 'Centro', '');
INSERT INTO `municipio` VALUES (2001, 27, '005', 'Comalcalco', '');
INSERT INTO `municipio` VALUES (2002, 27, '006', 'Cunduacán', '');
INSERT INTO `municipio` VALUES (2003, 27, '007', 'Emiliano Zapata', '');
INSERT INTO `municipio` VALUES (2004, 27, '008', 'Huimanguillo', '');
INSERT INTO `municipio` VALUES (2005, 27, '009', 'Jalapa', '');
INSERT INTO `municipio` VALUES (2006, 27, '010', 'Jalpa de Méndez', '');
INSERT INTO `municipio` VALUES (2007, 27, '011', 'Jonuta', '');
INSERT INTO `municipio` VALUES (2008, 27, '012', 'Macuspana', '');
INSERT INTO `municipio` VALUES (2009, 27, '013', 'Nacajuca', '');
INSERT INTO `municipio` VALUES (2010, 27, '014', 'Paraíso', '');
INSERT INTO `municipio` VALUES (2011, 27, '015', 'Tacotalpa', '');
INSERT INTO `municipio` VALUES (2012, 27, '016', 'Teapa', '');
INSERT INTO `municipio` VALUES (2013, 27, '017', 'Tenosique', '');
INSERT INTO `municipio` VALUES (2014, 28, '001', 'Abasolo', '');
INSERT INTO `municipio` VALUES (2015, 28, '002', 'Aldama', '');
INSERT INTO `municipio` VALUES (2016, 28, '003', 'Altamira', '');
INSERT INTO `municipio` VALUES (2017, 28, '004', 'Antiguo Morelos', '');
INSERT INTO `municipio` VALUES (2018, 28, '005', 'Burgos', '');
INSERT INTO `municipio` VALUES (2019, 28, '006', 'Bustamante', '');
INSERT INTO `municipio` VALUES (2020, 28, '007', 'Camargo', '');
INSERT INTO `municipio` VALUES (2021, 28, '008', 'Casas', '');
INSERT INTO `municipio` VALUES (2022, 28, '009', 'Ciudad Madero', '');
INSERT INTO `municipio` VALUES (2023, 28, '010', 'Cruillas', '');
INSERT INTO `municipio` VALUES (2024, 28, '011', 'Gómez Farías', '');
INSERT INTO `municipio` VALUES (2025, 28, '012', 'González', '');
INSERT INTO `municipio` VALUES (2026, 28, '013', 'Güémez', '');
INSERT INTO `municipio` VALUES (2027, 28, '014', 'Guerrero', '');
INSERT INTO `municipio` VALUES (2028, 28, '015', 'Gustavo Díaz Ordaz', '');
INSERT INTO `municipio` VALUES (2029, 28, '016', 'Hidalgo', '');
INSERT INTO `municipio` VALUES (2030, 28, '017', 'Jaumave', '');
INSERT INTO `municipio` VALUES (2031, 28, '018', 'Jiménez', '');
INSERT INTO `municipio` VALUES (2032, 28, '019', 'Llera', '');
INSERT INTO `municipio` VALUES (2033, 28, '020', 'Mainero', '');
INSERT INTO `municipio` VALUES (2034, 28, '021', 'El Mante', '');
INSERT INTO `municipio` VALUES (2035, 28, '022', 'Matamoros', '');
INSERT INTO `municipio` VALUES (2036, 28, '023', 'Méndez', '');
INSERT INTO `municipio` VALUES (2037, 28, '024', 'Mier', '');
INSERT INTO `municipio` VALUES (2038, 28, '025', 'Miguel Alemán', '');
INSERT INTO `municipio` VALUES (2039, 28, '026', 'Miquihuana', '');
INSERT INTO `municipio` VALUES (2040, 28, '027', 'Nuevo Laredo', '');
INSERT INTO `municipio` VALUES (2041, 28, '028', 'Nuevo Morelos', '');
INSERT INTO `municipio` VALUES (2042, 28, '029', 'Ocampo', '');
INSERT INTO `municipio` VALUES (2043, 28, '030', 'Padilla', '');
INSERT INTO `municipio` VALUES (2044, 28, '031', 'Palmillas', '');
INSERT INTO `municipio` VALUES (2045, 28, '032', 'Reynosa', '');
INSERT INTO `municipio` VALUES (2046, 28, '033', 'Río Bravo', '');
INSERT INTO `municipio` VALUES (2047, 28, '034', 'San Carlos', '');
INSERT INTO `municipio` VALUES (2048, 28, '035', 'San Fernando', '');
INSERT INTO `municipio` VALUES (2049, 28, '036', 'San Nicolás', '');
INSERT INTO `municipio` VALUES (2050, 28, '037', 'Soto la Marina', '');
INSERT INTO `municipio` VALUES (2051, 28, '038', 'Tampico', '');
INSERT INTO `municipio` VALUES (2052, 28, '039', 'Tula', '');
INSERT INTO `municipio` VALUES (2053, 28, '040', 'Valle Hermoso', '');
INSERT INTO `municipio` VALUES (2054, 28, '041', 'Victoria', '');
INSERT INTO `municipio` VALUES (2055, 28, '042', 'Villagrán', '');
INSERT INTO `municipio` VALUES (2056, 28, '043', 'Xicoténcatl', '');
INSERT INTO `municipio` VALUES (2057, 29, '001', 'Amaxac de Guerrero', '');
INSERT INTO `municipio` VALUES (2058, 29, '002', 'Apetatitlán de Antonio Carvajal', '');
INSERT INTO `municipio` VALUES (2059, 29, '003', 'Atlangatepec', '');
INSERT INTO `municipio` VALUES (2060, 29, '004', 'Atltzayanca', '');
INSERT INTO `municipio` VALUES (2061, 29, '005', 'Apizaco', '');
INSERT INTO `municipio` VALUES (2062, 29, '006', 'Calpulalpan', '');
INSERT INTO `municipio` VALUES (2063, 29, '007', 'El Carmen Tequexquitla', '');
INSERT INTO `municipio` VALUES (2064, 29, '008', 'Cuapiaxtla', '');
INSERT INTO `municipio` VALUES (2065, 29, '009', 'Cuaxomulco', '');
INSERT INTO `municipio` VALUES (2066, 29, '010', 'Chiautempan', '');
INSERT INTO `municipio` VALUES (2067, 29, '011', 'Muñoz de Domingo Arenas', '');
INSERT INTO `municipio` VALUES (2068, 29, '012', 'Españita', '');
INSERT INTO `municipio` VALUES (2069, 29, '013', 'Huamantla', '');
INSERT INTO `municipio` VALUES (2070, 29, '014', 'Hueyotlipan', '');
INSERT INTO `municipio` VALUES (2071, 29, '015', 'Ixtacuixtla de Mariano Matamoros', '');
INSERT INTO `municipio` VALUES (2072, 29, '016', 'Ixtenco', '');
INSERT INTO `municipio` VALUES (2073, 29, '017', 'Mazatecochco de José María Morelos', '');
INSERT INTO `municipio` VALUES (2074, 29, '018', 'Contla de Juan Cuamatzi', '');
INSERT INTO `municipio` VALUES (2075, 29, '019', 'Tepetitla de Lardizábal', '');
INSERT INTO `municipio` VALUES (2076, 29, '020', 'Sanctórum de Lázaro Cárdenas', '');
INSERT INTO `municipio` VALUES (2077, 29, '021', 'Nanacamilpa de Mariano Arista', '');
INSERT INTO `municipio` VALUES (2078, 29, '022', 'Acuamanala de Miguel Hidalgo', '');
INSERT INTO `municipio` VALUES (2079, 29, '023', 'Natívitas', '');
INSERT INTO `municipio` VALUES (2080, 29, '024', 'Panotla', '');
INSERT INTO `municipio` VALUES (2081, 29, '025', 'San Pablo del Monte', '');
INSERT INTO `municipio` VALUES (2082, 29, '026', 'Santa Cruz Tlaxcala', '');
INSERT INTO `municipio` VALUES (2083, 29, '027', 'Tenancingo', '');
INSERT INTO `municipio` VALUES (2084, 29, '028', 'Teolocholco', '');
INSERT INTO `municipio` VALUES (2085, 29, '029', 'Tepeyanco', '');
INSERT INTO `municipio` VALUES (2086, 29, '030', 'Terrenate', '');
INSERT INTO `municipio` VALUES (2087, 29, '031', 'Tetla de la Solidaridad', '');
INSERT INTO `municipio` VALUES (2088, 29, '032', 'Tetlatlahuca', '');
INSERT INTO `municipio` VALUES (2089, 29, '033', 'Tlaxcala', '');
INSERT INTO `municipio` VALUES (2090, 29, '034', 'Tlaxco', '');
INSERT INTO `municipio` VALUES (2091, 29, '035', 'Tocatlán', '');
INSERT INTO `municipio` VALUES (2092, 29, '036', 'Totolac', '');
INSERT INTO `municipio` VALUES (2093, 29, '037', 'Ziltlaltépec de Trinidad Sánchez Santos', '');
INSERT INTO `municipio` VALUES (2094, 29, '038', 'Tzompantepec', '');
INSERT INTO `municipio` VALUES (2095, 29, '039', 'Xaloztoc', '');
INSERT INTO `municipio` VALUES (2096, 29, '040', 'Xaltocan', '');
INSERT INTO `municipio` VALUES (2097, 29, '041', 'Papalotla de Xicohténcatl', '');
INSERT INTO `municipio` VALUES (2098, 29, '042', 'Xicohtzinco', '');
INSERT INTO `municipio` VALUES (2099, 29, '043', 'Yauhquemehcan', '');
INSERT INTO `municipio` VALUES (2100, 29, '044', 'Zacatelco', '');
INSERT INTO `municipio` VALUES (2101, 29, '045', 'Benito Juárez', '');
INSERT INTO `municipio` VALUES (2102, 29, '046', 'Emiliano Zapata', '');
INSERT INTO `municipio` VALUES (2103, 29, '047', 'Lázaro Cárdenas', '');
INSERT INTO `municipio` VALUES (2104, 29, '048', 'La Magdalena Tlaltelulco', '');
INSERT INTO `municipio` VALUES (2105, 29, '049', 'San Damián Texóloc', '');
INSERT INTO `municipio` VALUES (2106, 29, '050', 'San Francisco Tetlanohcan', '');
INSERT INTO `municipio` VALUES (2107, 29, '051', 'San Jerónimo Zacualpan', '');
INSERT INTO `municipio` VALUES (2108, 29, '052', 'San José Teacalco', '');
INSERT INTO `municipio` VALUES (2109, 29, '053', 'San Juan Huactzinco', '');
INSERT INTO `municipio` VALUES (2110, 29, '054', 'San Lorenzo Axocomanitla', '');
INSERT INTO `municipio` VALUES (2111, 29, '055', 'San Lucas Tecopilco', '');
INSERT INTO `municipio` VALUES (2112, 29, '056', 'Santa Ana Nopalucan', '');
INSERT INTO `municipio` VALUES (2113, 29, '057', 'Santa Apolonia Teacalco', '');
INSERT INTO `municipio` VALUES (2114, 29, '058', 'Santa Catarina Ayometla', '');
INSERT INTO `municipio` VALUES (2115, 29, '059', 'Santa Cruz Quilehtla', '');
INSERT INTO `municipio` VALUES (2116, 29, '060', 'Santa Isabel Xiloxoxtla', '');
INSERT INTO `municipio` VALUES (2117, 30, '001', 'Acajete', '');
INSERT INTO `municipio` VALUES (2118, 30, '002', 'Acatlán', '');
INSERT INTO `municipio` VALUES (2119, 30, '003', 'Acayucan', '');
INSERT INTO `municipio` VALUES (2120, 30, '004', 'Actopan', '');
INSERT INTO `municipio` VALUES (2121, 30, '005', 'Acula', '');
INSERT INTO `municipio` VALUES (2122, 30, '006', 'Acultzingo', '');
INSERT INTO `municipio` VALUES (2123, 30, '007', 'Camarón de Tejeda', '');
INSERT INTO `municipio` VALUES (2124, 30, '008', 'Alpatláhuac', '');
INSERT INTO `municipio` VALUES (2125, 30, '009', 'Alto Lucero de Gutiérrez Barrios', '');
INSERT INTO `municipio` VALUES (2126, 30, '010', 'Altotonga', '');
INSERT INTO `municipio` VALUES (2127, 30, '011', 'Alvarado', '');
INSERT INTO `municipio` VALUES (2128, 30, '012', 'Amatitlán', '');
INSERT INTO `municipio` VALUES (2129, 30, '013', 'Naranjos Amatlán', '');
INSERT INTO `municipio` VALUES (2130, 30, '014', 'Amatlán de los Reyes', '');
INSERT INTO `municipio` VALUES (2131, 30, '015', 'Angel R. Cabada', '');
INSERT INTO `municipio` VALUES (2132, 30, '016', 'La Antigua', '');
INSERT INTO `municipio` VALUES (2133, 30, '017', 'Apazapan', '');
INSERT INTO `municipio` VALUES (2134, 30, '018', 'Aquila', '');
INSERT INTO `municipio` VALUES (2135, 30, '019', 'Astacinga', '');
INSERT INTO `municipio` VALUES (2136, 30, '020', 'Atlahuilco', '');
INSERT INTO `municipio` VALUES (2137, 30, '021', 'Atoyac', '');
INSERT INTO `municipio` VALUES (2138, 30, '022', 'Atzacan', '');
INSERT INTO `municipio` VALUES (2139, 30, '023', 'Atzalan', '');
INSERT INTO `municipio` VALUES (2140, 30, '024', 'Tlaltetela', '');
INSERT INTO `municipio` VALUES (2141, 30, '025', 'Ayahualulco', '');
INSERT INTO `municipio` VALUES (2142, 30, '026', 'Banderilla', '');
INSERT INTO `municipio` VALUES (2143, 30, '027', 'Benito Juárez', '');
INSERT INTO `municipio` VALUES (2144, 30, '028', 'Boca del Río', '');
INSERT INTO `municipio` VALUES (2145, 30, '029', 'Calcahualco', '');
INSERT INTO `municipio` VALUES (2146, 30, '030', 'Camerino Z. Mendoza', '');
INSERT INTO `municipio` VALUES (2147, 30, '031', 'Carrillo Puerto', '');
INSERT INTO `municipio` VALUES (2148, 30, '032', 'Catemaco', '');
INSERT INTO `municipio` VALUES (2149, 30, '033', 'Cazones de Herrera', '');
INSERT INTO `municipio` VALUES (2150, 30, '034', 'Cerro Azul', '');
INSERT INTO `municipio` VALUES (2151, 30, '035', 'Citlaltépetl', '');
INSERT INTO `municipio` VALUES (2152, 30, '036', 'Coacoatzintla', '');
INSERT INTO `municipio` VALUES (2153, 30, '037', 'Coahuitlán', '');
INSERT INTO `municipio` VALUES (2154, 30, '038', 'Coatepec', '');
INSERT INTO `municipio` VALUES (2155, 30, '039', 'Coatzacoalcos', '');
INSERT INTO `municipio` VALUES (2156, 30, '040', 'Coatzintla', '');
INSERT INTO `municipio` VALUES (2157, 30, '041', 'Coetzala', '');
INSERT INTO `municipio` VALUES (2158, 30, '042', 'Colipa', '');
INSERT INTO `municipio` VALUES (2159, 30, '043', 'Comapa', '');
INSERT INTO `municipio` VALUES (2160, 30, '044', 'Córdoba', '');
INSERT INTO `municipio` VALUES (2161, 30, '045', 'Cosamaloapan de Carpio', '');
INSERT INTO `municipio` VALUES (2162, 30, '046', 'Cosautlán de Carvajal', '');
INSERT INTO `municipio` VALUES (2163, 30, '047', 'Coscomatepec', '');
INSERT INTO `municipio` VALUES (2164, 30, '048', 'Cosoleacaque', '');
INSERT INTO `municipio` VALUES (2165, 30, '049', 'Cotaxtla', '');
INSERT INTO `municipio` VALUES (2166, 30, '050', 'Coxquihui', '');
INSERT INTO `municipio` VALUES (2167, 30, '051', 'Coyutla', '');
INSERT INTO `municipio` VALUES (2168, 30, '052', 'Cuichapa', '');
INSERT INTO `municipio` VALUES (2169, 30, '053', 'Cuitláhuac', '');
INSERT INTO `municipio` VALUES (2170, 30, '054', 'Chacaltianguis', '');
INSERT INTO `municipio` VALUES (2171, 30, '055', 'Chalma', '');
INSERT INTO `municipio` VALUES (2172, 30, '056', 'Chiconamel', '');
INSERT INTO `municipio` VALUES (2173, 30, '057', 'Chiconquiaco', '');
INSERT INTO `municipio` VALUES (2174, 30, '058', 'Chicontepec', '');
INSERT INTO `municipio` VALUES (2175, 30, '059', 'Chinameca', '');
INSERT INTO `municipio` VALUES (2176, 30, '060', 'Chinampa de Gorostiza', '');
INSERT INTO `municipio` VALUES (2177, 30, '061', 'Las Choapas', '');
INSERT INTO `municipio` VALUES (2178, 30, '062', 'Chocamán', '');
INSERT INTO `municipio` VALUES (2179, 30, '063', 'Chontla', '');
INSERT INTO `municipio` VALUES (2180, 30, '064', 'Chumatlán', '');
INSERT INTO `municipio` VALUES (2181, 30, '065', 'Emiliano Zapata', '');
INSERT INTO `municipio` VALUES (2182, 30, '066', 'Espinal', '');
INSERT INTO `municipio` VALUES (2183, 30, '067', 'Filomeno Mata', '');
INSERT INTO `municipio` VALUES (2184, 30, '068', 'Fortín', '');
INSERT INTO `municipio` VALUES (2185, 30, '069', 'Gutiérrez Zamora', '');
INSERT INTO `municipio` VALUES (2186, 30, '070', 'Hidalgotitlán', '');
INSERT INTO `municipio` VALUES (2187, 30, '071', 'Huatusco', '');
INSERT INTO `municipio` VALUES (2188, 30, '072', 'Huayacocotla', '');
INSERT INTO `municipio` VALUES (2189, 30, '073', 'Hueyapan de Ocampo', '');
INSERT INTO `municipio` VALUES (2190, 30, '074', 'Huiloapan de Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (2191, 30, '075', 'Ignacio de la Llave', '');
INSERT INTO `municipio` VALUES (2192, 30, '076', 'Ilamatlán', '');
INSERT INTO `municipio` VALUES (2193, 30, '077', 'Isla', '');
INSERT INTO `municipio` VALUES (2194, 30, '078', 'Ixcatepec', '');
INSERT INTO `municipio` VALUES (2195, 30, '079', 'Ixhuacán de los Reyes', '');
INSERT INTO `municipio` VALUES (2196, 30, '080', 'Ixhuatlán del Café', '');
INSERT INTO `municipio` VALUES (2197, 30, '081', 'Ixhuatlancillo', '');
INSERT INTO `municipio` VALUES (2198, 30, '082', 'Ixhuatlán del Sureste', '');
INSERT INTO `municipio` VALUES (2199, 30, '083', 'Ixhuatlán de Madero', '');
INSERT INTO `municipio` VALUES (2200, 30, '084', 'Ixmatlahuacan', '');
INSERT INTO `municipio` VALUES (2201, 30, '085', 'Ixtaczoquitlán', '');
INSERT INTO `municipio` VALUES (2202, 30, '086', 'Jalacingo', '');
INSERT INTO `municipio` VALUES (2203, 30, '087', 'Xalapa', '');
INSERT INTO `municipio` VALUES (2204, 30, '088', 'Jalcomulco', '');
INSERT INTO `municipio` VALUES (2205, 30, '089', 'Jáltipan', '');
INSERT INTO `municipio` VALUES (2206, 30, '090', 'Jamapa', '');
INSERT INTO `municipio` VALUES (2207, 30, '091', 'Jesús Carranza', '');
INSERT INTO `municipio` VALUES (2208, 30, '092', 'Xico', '');
INSERT INTO `municipio` VALUES (2209, 30, '093', 'Jilotepec', '');
INSERT INTO `municipio` VALUES (2210, 30, '094', 'Juan Rodríguez Clara', '');
INSERT INTO `municipio` VALUES (2211, 30, '095', 'Juchique de Ferrer', '');
INSERT INTO `municipio` VALUES (2212, 30, '096', 'Landero y Coss', '');
INSERT INTO `municipio` VALUES (2213, 30, '097', 'Lerdo de Tejada', '');
INSERT INTO `municipio` VALUES (2214, 30, '098', 'Magdalena', '');
INSERT INTO `municipio` VALUES (2215, 30, '099', 'Maltrata', '');
INSERT INTO `municipio` VALUES (2216, 30, '100', 'Manlio Fabio Altamirano', '');
INSERT INTO `municipio` VALUES (2217, 30, '101', 'Mariano Escobedo', '');
INSERT INTO `municipio` VALUES (2218, 30, '102', 'Martínez de la Torre', '');
INSERT INTO `municipio` VALUES (2219, 30, '103', 'Mecatlán', '');
INSERT INTO `municipio` VALUES (2220, 30, '104', 'Mecayapan', '');
INSERT INTO `municipio` VALUES (2221, 30, '105', 'Medellín', '');
INSERT INTO `municipio` VALUES (2222, 30, '106', 'Miahuatlán', '');
INSERT INTO `municipio` VALUES (2223, 30, '107', 'Las Minas', '');
INSERT INTO `municipio` VALUES (2224, 30, '108', 'Minatitlán', '');
INSERT INTO `municipio` VALUES (2225, 30, '109', 'Misantla', '');
INSERT INTO `municipio` VALUES (2226, 30, '110', 'Mixtla de Altamirano', '');
INSERT INTO `municipio` VALUES (2227, 30, '111', 'Moloacán', '');
INSERT INTO `municipio` VALUES (2228, 30, '112', 'Naolinco', '');
INSERT INTO `municipio` VALUES (2229, 30, '113', 'Naranjal', '');
INSERT INTO `municipio` VALUES (2230, 30, '114', 'Nautla', '');
INSERT INTO `municipio` VALUES (2231, 30, '115', 'Nogales', '');
INSERT INTO `municipio` VALUES (2232, 30, '116', 'Oluta', '');
INSERT INTO `municipio` VALUES (2233, 30, '117', 'Omealca', '');
INSERT INTO `municipio` VALUES (2234, 30, '118', 'Orizaba', '');
INSERT INTO `municipio` VALUES (2235, 30, '119', 'Otatitlán', '');
INSERT INTO `municipio` VALUES (2236, 30, '120', 'Oteapan', '');
INSERT INTO `municipio` VALUES (2237, 30, '121', 'Ozuluama de Mascareñas', '');
INSERT INTO `municipio` VALUES (2238, 30, '122', 'Pajapan', '');
INSERT INTO `municipio` VALUES (2239, 30, '123', 'Pánuco', '');
INSERT INTO `municipio` VALUES (2240, 30, '124', 'Papantla', '');
INSERT INTO `municipio` VALUES (2241, 30, '125', 'Paso del Macho', '');
INSERT INTO `municipio` VALUES (2242, 30, '126', 'Paso de Ovejas', '');
INSERT INTO `municipio` VALUES (2243, 30, '127', 'La Perla', '');
INSERT INTO `municipio` VALUES (2244, 30, '128', 'Perote', '');
INSERT INTO `municipio` VALUES (2245, 30, '129', 'Platón Sánchez', '');
INSERT INTO `municipio` VALUES (2246, 30, '130', 'Playa Vicente', '');
INSERT INTO `municipio` VALUES (2247, 30, '131', 'Poza Rica de Hidalgo', '');
INSERT INTO `municipio` VALUES (2248, 30, '132', 'Las Vigas de Ramírez', '');
INSERT INTO `municipio` VALUES (2249, 30, '133', 'Pueblo Viejo', '');
INSERT INTO `municipio` VALUES (2250, 30, '134', 'Puente Nacional', '');
INSERT INTO `municipio` VALUES (2251, 30, '135', 'Rafael Delgado', '');
INSERT INTO `municipio` VALUES (2252, 30, '136', 'Rafael Lucio', '');
INSERT INTO `municipio` VALUES (2253, 30, '137', 'Los Reyes', '');
INSERT INTO `municipio` VALUES (2254, 30, '138', 'Río Blanco', '');
INSERT INTO `municipio` VALUES (2255, 30, '139', 'Saltabarranca', '');
INSERT INTO `municipio` VALUES (2256, 30, '140', 'San Andrés Tenejapan', '');
INSERT INTO `municipio` VALUES (2257, 30, '141', 'San Andrés Tuxtla', '');
INSERT INTO `municipio` VALUES (2258, 30, '142', 'San Juan Evangelista', '');
INSERT INTO `municipio` VALUES (2259, 30, '143', 'Santiago Tuxtla', '');
INSERT INTO `municipio` VALUES (2260, 30, '144', 'Sayula de Alemán', '');
INSERT INTO `municipio` VALUES (2261, 30, '145', 'Soconusco', '');
INSERT INTO `municipio` VALUES (2262, 30, '146', 'Sochiapa', '');
INSERT INTO `municipio` VALUES (2263, 30, '147', 'Soledad Atzompa', '');
INSERT INTO `municipio` VALUES (2264, 30, '148', 'Soledad de Doblado', '');
INSERT INTO `municipio` VALUES (2265, 30, '149', 'Soteapan', '');
INSERT INTO `municipio` VALUES (2266, 30, '150', 'Tamalín', '');
INSERT INTO `municipio` VALUES (2267, 30, '151', 'Tamiahua', '');
INSERT INTO `municipio` VALUES (2268, 30, '152', 'Tampico Alto', '');
INSERT INTO `municipio` VALUES (2269, 30, '153', 'Tancoco', '');
INSERT INTO `municipio` VALUES (2270, 30, '154', 'Tantima', '');
INSERT INTO `municipio` VALUES (2271, 30, '155', 'Tantoyuca', '');
INSERT INTO `municipio` VALUES (2272, 30, '156', 'Tatatila', '');
INSERT INTO `municipio` VALUES (2273, 30, '157', 'Castillo de Teayo', '');
INSERT INTO `municipio` VALUES (2274, 30, '158', 'Tecolutla', '');
INSERT INTO `municipio` VALUES (2275, 30, '159', 'Tehuipango', '');
INSERT INTO `municipio` VALUES (2276, 30, '160', 'Álamo Temapache', '');
INSERT INTO `municipio` VALUES (2277, 30, '161', 'Tempoal', '');
INSERT INTO `municipio` VALUES (2278, 30, '162', 'Tenampa', '');
INSERT INTO `municipio` VALUES (2279, 30, '163', 'Tenochtitlán', '');
INSERT INTO `municipio` VALUES (2280, 30, '164', 'Teocelo', '');
INSERT INTO `municipio` VALUES (2281, 30, '165', 'Tepatlaxco', '');
INSERT INTO `municipio` VALUES (2282, 30, '166', 'Tepetlán', '');
INSERT INTO `municipio` VALUES (2283, 30, '167', 'Tepetzintla', '');
INSERT INTO `municipio` VALUES (2284, 30, '168', 'Tequila', '');
INSERT INTO `municipio` VALUES (2285, 30, '169', 'José Azueta', '');
INSERT INTO `municipio` VALUES (2286, 30, '170', 'Texcatepec', '');
INSERT INTO `municipio` VALUES (2287, 30, '171', 'Texhuacán', '');
INSERT INTO `municipio` VALUES (2288, 30, '172', 'Texistepec', '');
INSERT INTO `municipio` VALUES (2289, 30, '173', 'Tezonapa', '');
INSERT INTO `municipio` VALUES (2290, 30, '174', 'Tierra Blanca', '');
INSERT INTO `municipio` VALUES (2291, 30, '175', 'Tihuatlán', '');
INSERT INTO `municipio` VALUES (2292, 30, '176', 'Tlacojalpan', '');
INSERT INTO `municipio` VALUES (2293, 30, '177', 'Tlacolulan', '');
INSERT INTO `municipio` VALUES (2294, 30, '178', 'Tlacotalpan', '');
INSERT INTO `municipio` VALUES (2295, 30, '179', 'Tlacotepec de Mejía', '');
INSERT INTO `municipio` VALUES (2296, 30, '180', 'Tlachichilco', '');
INSERT INTO `municipio` VALUES (2297, 30, '181', 'Tlalixcoyan', '');
INSERT INTO `municipio` VALUES (2298, 30, '182', 'Tlalnelhuayocan', '');
INSERT INTO `municipio` VALUES (2299, 30, '183', 'Tlapacoyan', '');
INSERT INTO `municipio` VALUES (2300, 30, '184', 'Tlaquilpa', '');
INSERT INTO `municipio` VALUES (2301, 30, '185', 'Tlilapan', '');
INSERT INTO `municipio` VALUES (2302, 30, '186', 'Tomatlán', '');
INSERT INTO `municipio` VALUES (2303, 30, '187', 'Tonayán', '');
INSERT INTO `municipio` VALUES (2304, 30, '188', 'Totutla', '');
INSERT INTO `municipio` VALUES (2305, 30, '189', 'Tuxpan', '');
INSERT INTO `municipio` VALUES (2306, 30, '190', 'Tuxtilla', '');
INSERT INTO `municipio` VALUES (2307, 30, '191', 'Ursulo Galván', '');
INSERT INTO `municipio` VALUES (2308, 30, '192', 'Vega de Alatorre', '');
INSERT INTO `municipio` VALUES (2309, 30, '193', 'Veracruz', '');
INSERT INTO `municipio` VALUES (2310, 30, '194', 'Villa Aldama', '');
INSERT INTO `municipio` VALUES (2311, 30, '195', 'Xoxocotla', '');
INSERT INTO `municipio` VALUES (2312, 30, '196', 'Yanga', '');
INSERT INTO `municipio` VALUES (2313, 30, '197', 'Yecuatla', '');
INSERT INTO `municipio` VALUES (2314, 30, '198', 'Zacualpan', '');
INSERT INTO `municipio` VALUES (2315, 30, '199', 'Zaragoza', '');
INSERT INTO `municipio` VALUES (2316, 30, '200', 'Zentla', '');
INSERT INTO `municipio` VALUES (2317, 30, '201', 'Zongolica', '');
INSERT INTO `municipio` VALUES (2318, 30, '202', 'Zontecomatlán de López y Fuentes', '');
INSERT INTO `municipio` VALUES (2319, 30, '203', 'Zozocolco de Hidalgo', '');
INSERT INTO `municipio` VALUES (2320, 30, '204', 'Agua Dulce', '');
INSERT INTO `municipio` VALUES (2321, 30, '205', 'El Higo', '');
INSERT INTO `municipio` VALUES (2322, 30, '206', 'Nanchital de Lázaro Cárdenas del Río', '');
INSERT INTO `municipio` VALUES (2323, 30, '207', 'Tres Valles', '');
INSERT INTO `municipio` VALUES (2324, 30, '208', 'Carlos A. Carrillo', '');
INSERT INTO `municipio` VALUES (2325, 30, '209', 'Tatahuicapan de Juárez', '');
INSERT INTO `municipio` VALUES (2326, 30, '210', 'Uxpanapa', '');
INSERT INTO `municipio` VALUES (2327, 30, '211', 'San Rafael', '');
INSERT INTO `municipio` VALUES (2328, 30, '212', 'Santiago Sochiapan', '');
INSERT INTO `municipio` VALUES (2329, 31, '001', 'Abalá', '');
INSERT INTO `municipio` VALUES (2330, 31, '002', 'Acanceh', '');
INSERT INTO `municipio` VALUES (2331, 31, '003', 'Akil', '');
INSERT INTO `municipio` VALUES (2332, 31, '004', 'Baca', '');
INSERT INTO `municipio` VALUES (2333, 31, '005', 'Bokobá', '');
INSERT INTO `municipio` VALUES (2334, 31, '006', 'Buctzotz', '');
INSERT INTO `municipio` VALUES (2335, 31, '007', 'Cacalchén', '');
INSERT INTO `municipio` VALUES (2336, 31, '008', 'Calotmul', '');
INSERT INTO `municipio` VALUES (2337, 31, '009', 'Cansahcab', '');
INSERT INTO `municipio` VALUES (2338, 31, '010', 'Cantamayec', '');
INSERT INTO `municipio` VALUES (2339, 31, '011', 'Celestún', '');
INSERT INTO `municipio` VALUES (2340, 31, '012', 'Cenotillo', '');
INSERT INTO `municipio` VALUES (2341, 31, '013', 'Conkal', '');
INSERT INTO `municipio` VALUES (2342, 31, '014', 'Cuncunul', '');
INSERT INTO `municipio` VALUES (2343, 31, '015', 'Cuzamá', '');
INSERT INTO `municipio` VALUES (2344, 31, '016', 'Chacsinkín', '');
INSERT INTO `municipio` VALUES (2345, 31, '017', 'Chankom', '');
INSERT INTO `municipio` VALUES (2346, 31, '018', 'Chapab', '');
INSERT INTO `municipio` VALUES (2347, 31, '019', 'Chemax', '');
INSERT INTO `municipio` VALUES (2348, 31, '020', 'Chicxulub Pueblo', '');
INSERT INTO `municipio` VALUES (2349, 31, '021', 'Chichimilá', '');
INSERT INTO `municipio` VALUES (2350, 31, '022', 'Chikindzonot', '');
INSERT INTO `municipio` VALUES (2351, 31, '023', 'Chocholá', '');
INSERT INTO `municipio` VALUES (2352, 31, '024', 'Chumayel', '');
INSERT INTO `municipio` VALUES (2353, 31, '025', 'Dzán', '');
INSERT INTO `municipio` VALUES (2354, 31, '026', 'Dzemul', '');
INSERT INTO `municipio` VALUES (2355, 31, '027', 'Dzidzantún', '');
INSERT INTO `municipio` VALUES (2356, 31, '028', 'Dzilam de Bravo', '');
INSERT INTO `municipio` VALUES (2357, 31, '029', 'Dzilam González', '');
INSERT INTO `municipio` VALUES (2358, 31, '030', 'Dzitás', '');
INSERT INTO `municipio` VALUES (2359, 31, '031', 'Dzoncauich', '');
INSERT INTO `municipio` VALUES (2360, 31, '032', 'Espita', '');
INSERT INTO `municipio` VALUES (2361, 31, '033', 'Halachó', '');
INSERT INTO `municipio` VALUES (2362, 31, '034', 'Hocabá', '');
INSERT INTO `municipio` VALUES (2363, 31, '035', 'Hoctún', '');
INSERT INTO `municipio` VALUES (2364, 31, '036', 'Homún', '');
INSERT INTO `municipio` VALUES (2365, 31, '037', 'Huhí', '');
INSERT INTO `municipio` VALUES (2366, 31, '038', 'Hunucmá', '');
INSERT INTO `municipio` VALUES (2367, 31, '039', 'Ixil', '');
INSERT INTO `municipio` VALUES (2368, 31, '040', 'Izamal', '');
INSERT INTO `municipio` VALUES (2369, 31, '041', 'Kanasín', '');
INSERT INTO `municipio` VALUES (2370, 31, '042', 'Kantunil', '');
INSERT INTO `municipio` VALUES (2371, 31, '043', 'Kaua', '');
INSERT INTO `municipio` VALUES (2372, 31, '044', 'Kinchil', '');
INSERT INTO `municipio` VALUES (2373, 31, '045', 'Kopomá', '');
INSERT INTO `municipio` VALUES (2374, 31, '046', 'Mama', '');
INSERT INTO `municipio` VALUES (2375, 31, '047', 'Maní', '');
INSERT INTO `municipio` VALUES (2376, 31, '048', 'Maxcanú', '');
INSERT INTO `municipio` VALUES (2377, 31, '049', 'Mayapán', '');
INSERT INTO `municipio` VALUES (2378, 31, '050', 'Mérida', '');
INSERT INTO `municipio` VALUES (2379, 31, '051', 'Mocochá', '');
INSERT INTO `municipio` VALUES (2380, 31, '052', 'Motul', '');
INSERT INTO `municipio` VALUES (2381, 31, '053', 'Muna', '');
INSERT INTO `municipio` VALUES (2382, 31, '054', 'Muxupip', '');
INSERT INTO `municipio` VALUES (2383, 31, '055', 'Opichén', '');
INSERT INTO `municipio` VALUES (2384, 31, '056', 'Oxkutzcab', '');
INSERT INTO `municipio` VALUES (2385, 31, '057', 'Panabá', '');
INSERT INTO `municipio` VALUES (2386, 31, '058', 'Peto', '');
INSERT INTO `municipio` VALUES (2387, 31, '059', 'Progreso', '');
INSERT INTO `municipio` VALUES (2388, 31, '060', 'Quintana Roo', '');
INSERT INTO `municipio` VALUES (2389, 31, '061', 'Río Lagartos', '');
INSERT INTO `municipio` VALUES (2390, 31, '062', 'Sacalum', '');
INSERT INTO `municipio` VALUES (2391, 31, '063', 'Samahil', '');
INSERT INTO `municipio` VALUES (2392, 31, '064', 'Sanahcat', '');
INSERT INTO `municipio` VALUES (2393, 31, '065', 'San Felipe', '');
INSERT INTO `municipio` VALUES (2394, 31, '066', 'Santa Elena', '');
INSERT INTO `municipio` VALUES (2395, 31, '067', 'Seyé', '');
INSERT INTO `municipio` VALUES (2396, 31, '068', 'Sinanché', '');
INSERT INTO `municipio` VALUES (2397, 31, '069', 'Sotuta', '');
INSERT INTO `municipio` VALUES (2398, 31, '070', 'Sucilá', '');
INSERT INTO `municipio` VALUES (2399, 31, '071', 'Sudzal', '');
INSERT INTO `municipio` VALUES (2400, 31, '072', 'Suma', '');
INSERT INTO `municipio` VALUES (2401, 31, '073', 'Tahdziú', '');
INSERT INTO `municipio` VALUES (2402, 31, '074', 'Tahmek', '');
INSERT INTO `municipio` VALUES (2403, 31, '075', 'Teabo', '');
INSERT INTO `municipio` VALUES (2404, 31, '076', 'Tecoh', '');
INSERT INTO `municipio` VALUES (2405, 31, '077', 'Tekal de Venegas', '');
INSERT INTO `municipio` VALUES (2406, 31, '078', 'Tekantó', '');
INSERT INTO `municipio` VALUES (2407, 31, '079', 'Tekax', '');
INSERT INTO `municipio` VALUES (2408, 31, '080', 'Tekit', '');
INSERT INTO `municipio` VALUES (2409, 31, '081', 'Tekom', '');
INSERT INTO `municipio` VALUES (2410, 31, '082', 'Telchac Pueblo', '');
INSERT INTO `municipio` VALUES (2411, 31, '083', 'Telchac Puerto', '');
INSERT INTO `municipio` VALUES (2412, 31, '084', 'Temax', '');
INSERT INTO `municipio` VALUES (2413, 31, '085', 'Temozón', '');
INSERT INTO `municipio` VALUES (2414, 31, '086', 'Tepakán', '');
INSERT INTO `municipio` VALUES (2415, 31, '087', 'Tetiz', '');
INSERT INTO `municipio` VALUES (2416, 31, '088', 'Teya', '');
INSERT INTO `municipio` VALUES (2417, 31, '089', 'Ticul', '');
INSERT INTO `municipio` VALUES (2418, 31, '090', 'Timucuy', '');
INSERT INTO `municipio` VALUES (2419, 31, '091', 'Tinum', '');
INSERT INTO `municipio` VALUES (2420, 31, '092', 'Tixcacalcupul', '');
INSERT INTO `municipio` VALUES (2421, 31, '093', 'Tixkokob', '');
INSERT INTO `municipio` VALUES (2422, 31, '094', 'Tixmehuac', '');
INSERT INTO `municipio` VALUES (2423, 31, '095', 'Tixpéhual', '');
INSERT INTO `municipio` VALUES (2424, 31, '096', 'Tizimín', '');
INSERT INTO `municipio` VALUES (2425, 31, '097', 'Tunkás', '');
INSERT INTO `municipio` VALUES (2426, 31, '098', 'Tzucacab', '');
INSERT INTO `municipio` VALUES (2427, 31, '099', 'Uayma', '');
INSERT INTO `municipio` VALUES (2428, 31, '100', 'Ucú', '');
INSERT INTO `municipio` VALUES (2429, 31, '101', 'Umán', '');
INSERT INTO `municipio` VALUES (2430, 31, '102', 'Valladolid', '');
INSERT INTO `municipio` VALUES (2431, 31, '103', 'Xocchel', '');
INSERT INTO `municipio` VALUES (2432, 31, '104', 'Yaxcabá', '');
INSERT INTO `municipio` VALUES (2433, 31, '105', 'Yaxkukul', '');
INSERT INTO `municipio` VALUES (2434, 31, '106', 'Yobaín', '');
INSERT INTO `municipio` VALUES (2435, 32, '001', 'Apozol', '');
INSERT INTO `municipio` VALUES (2436, 32, '002', 'Apulco', '');
INSERT INTO `municipio` VALUES (2437, 32, '003', 'Atolinga', '');
INSERT INTO `municipio` VALUES (2438, 32, '004', 'Benito Juárez', '');
INSERT INTO `municipio` VALUES (2439, 32, '005', 'Calera', '');
INSERT INTO `municipio` VALUES (2440, 32, '006', 'Cañitas de Felipe Pescador', '');
INSERT INTO `municipio` VALUES (2441, 32, '007', 'Concepción del Oro', '');
INSERT INTO `municipio` VALUES (2442, 32, '008', 'Cuauhtémoc', '');
INSERT INTO `municipio` VALUES (2443, 32, '009', 'Chalchihuites', '');
INSERT INTO `municipio` VALUES (2444, 32, '010', 'Fresnillo', '');
INSERT INTO `municipio` VALUES (2445, 32, '011', 'Trinidad García de la Cadena', '');
INSERT INTO `municipio` VALUES (2446, 32, '012', 'Genaro Codina', '');
INSERT INTO `municipio` VALUES (2447, 32, '013', 'General Enrique Estrada', '');
INSERT INTO `municipio` VALUES (2448, 32, '014', 'General Francisco R. Murguía', '');
INSERT INTO `municipio` VALUES (2449, 32, '015', 'El Plateado de Joaquín Amaro', '');
INSERT INTO `municipio` VALUES (2450, 32, '016', 'General Pánfilo Natera', '');
INSERT INTO `municipio` VALUES (2451, 32, '017', 'Guadalupe', '');
INSERT INTO `municipio` VALUES (2452, 32, '018', 'Huanusco', '');
INSERT INTO `municipio` VALUES (2453, 32, '019', 'Jalpa', '');
INSERT INTO `municipio` VALUES (2454, 32, '020', 'Jerez', '');
INSERT INTO `municipio` VALUES (2455, 32, '021', 'Jiménez del Teul', '');
INSERT INTO `municipio` VALUES (2456, 32, '022', 'Juan Aldama', '');
INSERT INTO `municipio` VALUES (2457, 32, '023', 'Juchipila', '');
INSERT INTO `municipio` VALUES (2458, 32, '024', 'Loreto', '');
INSERT INTO `municipio` VALUES (2459, 32, '025', 'Luis Moya', '');
INSERT INTO `municipio` VALUES (2460, 32, '026', 'Mazapil', '');
INSERT INTO `municipio` VALUES (2461, 32, '027', 'Melchor Ocampo', '');
INSERT INTO `municipio` VALUES (2462, 32, '028', 'Mezquital del Oro', '');
INSERT INTO `municipio` VALUES (2463, 32, '029', 'Miguel Auza', '');
INSERT INTO `municipio` VALUES (2464, 32, '030', 'Momax', '');
INSERT INTO `municipio` VALUES (2465, 32, '031', 'Monte Escobedo', '');
INSERT INTO `municipio` VALUES (2466, 32, '032', 'Morelos', '');
INSERT INTO `municipio` VALUES (2467, 32, '033', 'Moyahua de Estrada', '');
INSERT INTO `municipio` VALUES (2468, 32, '034', 'Nochistlán de Mejía', '');
INSERT INTO `municipio` VALUES (2469, 32, '035', 'Noria de Ángeles', '');
INSERT INTO `municipio` VALUES (2470, 32, '036', 'Ojocaliente', '');
INSERT INTO `municipio` VALUES (2471, 32, '037', 'Pánuco', '');
INSERT INTO `municipio` VALUES (2472, 32, '038', 'Pinos', '');
INSERT INTO `municipio` VALUES (2473, 32, '039', 'Río Grande', '');
INSERT INTO `municipio` VALUES (2474, 32, '040', 'Sain Alto', '');
INSERT INTO `municipio` VALUES (2475, 32, '041', 'El Salvador', '');
INSERT INTO `municipio` VALUES (2476, 32, '042', 'Sombrerete', '');
INSERT INTO `municipio` VALUES (2477, 32, '043', 'Susticacán', '');
INSERT INTO `municipio` VALUES (2478, 32, '044', 'Tabasco', '');
INSERT INTO `municipio` VALUES (2479, 32, '045', 'Tepechitlán', '');
INSERT INTO `municipio` VALUES (2480, 32, '046', 'Tepetongo', '');
INSERT INTO `municipio` VALUES (2481, 32, '047', 'Teúl de González Ortega', '');
INSERT INTO `municipio` VALUES (2482, 32, '048', 'Tlaltenango de Sánchez Román', '');
INSERT INTO `municipio` VALUES (2483, 32, '049', 'Valparaíso', '');
INSERT INTO `municipio` VALUES (2484, 32, '050', 'Vetagrande', '');
INSERT INTO `municipio` VALUES (2485, 32, '051', 'Villa de Cos', '');
INSERT INTO `municipio` VALUES (2486, 32, '052', 'Villa García', '');
INSERT INTO `municipio` VALUES (2487, 32, '053', 'Villa González Ortega', '');
INSERT INTO `municipio` VALUES (2488, 32, '054', 'Villa Hidalgo', '');
INSERT INTO `municipio` VALUES (2489, 32, '055', 'Villanueva', '');
INSERT INTO `municipio` VALUES (2490, 32, '056', 'Zacatecas', '');
INSERT INTO `municipio` VALUES (2491, 32, '057', 'Trancoso', '');
INSERT INTO `municipio` VALUES (2492, 32, '058', 'Santa María de la Paz', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `notificacion`
-- 

CREATE TABLE `notificacion` (
  `idnotificacion` int(11) NOT NULL,
  `notificacion` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `fk_user` bigint(20) NOT NULL,
  PRIMARY KEY (`idnotificacion`),
  KEY `fk_notificacion_usuario1_idx` (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `notificacion`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `sesion`
-- 

CREATE TABLE `sesion` (
  `idsesion` int(11) NOT NULL AUTO_INCREMENT,
  `device` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `fk_user` bigint(20) NOT NULL,
  PRIMARY KEY (`idsesion`),
  KEY `fk_sesion_usuario1_idx` (`fk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `sesion`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `users`
-- 

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '				',
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '18',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Volcar la base de datos para la tabla `users`
-- 

INSERT INTO `users` VALUES (49584978, 'Hangtu Wong Ley', '', '', NULL, 'https://graph.facebook.com/v2.6/1706294249584978/picture?type=normal', 18, 'AX90dpka072UWQV9aoadlIVEkAQX6amoH03xrOYTYauAjxlf2B2vNYEKr3Uy', NULL, '2016-09-28 20:33:21');
INSERT INTO `users` VALUES (73379452, 'Ignacio Rodrigo Ibarra', '', 'irim_06@hotmail.com', NULL, 'https://graph.facebook.com/v2.6/1199867673379452/picture?type=normal', 18, 'XROs107PL1rGUPHPzKoBJeuV38YHMg4EncXuqPNA2zNk8GfWUpix70BLZLrR', NULL, '2016-06-22 23:19:01');
INSERT INTO `users` VALUES (480277418, 'Jackelyn Reyes', '', 'jackii.o0146@hotmail.com', NULL, 'https://graph.facebook.com/v2.6/10208594480277418/picture?type=normal', 18, NULL, NULL, NULL);
INSERT INTO `users` VALUES (563721351, 'Andrés Gómez Orea', '', 'andres@gomezorea.com', NULL, 'https://graph.facebook.com/v2.6/10154212563721351/picture?type=normal', 14, NULL, NULL, '2016-07-25 19:17:54');
INSERT INTO `users` VALUES (590884202, 'Gisela Galindo Castellón', '', 'la_china001@hotmail.com', NULL, 'https://graph.facebook.com/v2.6/10155161590884202/picture?type=normal', 18, NULL, NULL, NULL);
INSERT INTO `users` VALUES (599475852, 'Cesar Navarrete', '', 'cesar_5513@hotmail.com', NULL, 'https://graph.facebook.com/v2.6/10154001599475852/picture?type=normal', 18, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `welcome`
-- 

CREATE TABLE `welcome` (
  `id_welcome` int(11) NOT NULL,
  `vistas` bigint(20) NOT NULL,
  `vistas_temp` bigint(20) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id_welcome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Volcar la base de datos para la tabla `welcome`
-- 

INSERT INTO `welcome` VALUES (1, 1407, 1294, '2017-02-19 15:17:30', '0000-00-00 00:00:00');

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `comentarioMomento`
-- 
ALTER TABLE `comentarioMomento`
  ADD CONSTRAINT `fk_comentarioM_momento1` FOREIGN KEY (`fk_momento`) REFERENCES `momento` (`idmomento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comentarioM_usuario1` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `empleo`
-- 
ALTER TABLE `empleo`
  ADD CONSTRAINT `empleo_ibfk_1` FOREIGN KEY (`fk_empresa`) REFERENCES `empresa` (`idempresa`);

-- 
-- Filtros para la tabla `empresa`
-- 
ALTER TABLE `empresa`
  ADD CONSTRAINT `fk_empresa_categoria1` FOREIGN KEY (`fk_categoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empresa_estado1` FOREIGN KEY (`fk_estado`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_empresa_usuario1` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `extras`
-- 
ALTER TABLE `extras`
  ADD CONSTRAINT `fk_extras_empresa1` FOREIGN KEY (`fk_empresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `galeria`
-- 
ALTER TABLE `galeria`
  ADD CONSTRAINT `galeria_ibfk_1` FOREIGN KEY (`fk_empresa`) REFERENCES `empresa` (`idempresa`);

-- 
-- Filtros para la tabla `momento`
-- 
ALTER TABLE `momento`
  ADD CONSTRAINT `fk_momento_empresa` FOREIGN KEY (`fk_empresa`) REFERENCES `empresa` (`idempresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `municipio`
-- 
ALTER TABLE `municipio`
  ADD CONSTRAINT `fk_municipios_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `notificacion`
-- 
ALTER TABLE `notificacion`
  ADD CONSTRAINT `fk_notificacion_usuario1` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `sesion`
-- 
ALTER TABLE `sesion`
  ADD CONSTRAINT `fk_sesion_usuario1` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
