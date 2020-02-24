CREATE DATABASE DB_CHISPITAS_CAR
go
USE DB_CHISPITAS_CAR

CREATE TABLE CIUDAD
(
	ID_CIUDAD INT PRIMARY KEY,
	NOMBRE_CIUDAD VARCHAR(100)
)

CREATE TABLE MARCA
(
	ID_MARCA INT IDENTITY(1,1) PRIMARY KEY,
	NOMBRE_MARCA VARCHAR(100)
)

CREATE TABLE MODELO
(
	ID_MODELO INT IDENTITY(1,1) PRIMARY KEY,
	NOMBRE_MODELO VARCHAR(100),
	ID_MARCA INT,
	FOREIGN KEY (ID_MARCA) REFERENCES MARCA(ID_MARCA)
)
select * from modelo

CREATE TABLE VEHICULO 
(
	ID_VEHICULO INT IDENTITY(1,1) PRIMARY KEY,
	ID_MARCA INT,
	ID_MODELO INT,
	PLACA VARCHAR(6),
	PUERTAS INT,
	ID_CIUDAD INT,
	FECHA Datetime Default GetDate(),
	FOREIGN KEY (ID_MARCA) REFERENCES MARCA(ID_MARCA),
	FOREIGN KEY (ID_MODELO) REFERENCES MODELO(ID_MODELO),
	FOREIGN KEY (ID_CIUDAD) REFERENCES CIUDAD(ID_CIUDAD)
)

INSERT INTO VEHICULO VALUES(1,1,'FH234',4,2,GetDate())


SELECT SYSDATETIME();

SELECT * FROM MARCA
-- REGISTROS DE MARCAS
INSERT INTO MARCA VALUES
('Chevrolet'),
('BMW'),
('Audi'),
('Ford'),
('Hyundai'),
('KIA'),
('Mazda'),
('Nissan'),
('Renault'),
('Toyota')

SELECT * FROM MODELO
-- REGISTRO DE MODELOS
INSERT INTO MODELO VALUES
('Camaro', 1),
('Captiva', 1),
('Corvette', 1),
('Cruze', 1),
('Malibu', 1),
('Orlando', 1),
('Spark', 1),
('Aveo', 1),
('i Hydrogen NEXT', 2),
('i3', 2),
('i4', 2),
('iX3', 2),
('Serie 1', 2),
('Serie 2', 2),
('Serie 3', 2),
('A5 2020', 3),
('A1 2019', 3),
('A5 2016', 3),
('A1 2015', 3),
('e-tron', 3),
('Audi TT', 3),
('GT', 4),
('EcoSport', 4),
('Edge', 4),
('Focus', 4),
('Explorer', 4),
('Fiesta', 4),
('Galaxy', 4),
('Ranger', 4),
('Elantra', 5),
('Genesis', 5),
('Grand Santa Fe', 5),
('Ioniq', 5),
('Veloster', 5),
('Palisade', 5),
('Carens', 6),
('CeeD', 6),
('Stinger', 6),
('Telluride', 6),
('Stonic', 6),
('XCeed', 6),
('Mazda2', 7),
('Mazda3', 7),
('Mazda6', 7),
('Mazda CX-3', 7),
('Mazda CX-30', 7),
('Mazda CX-5', 7),
('MX-30 2020', 7),
('Pathfinder ', 8),
('8GT-R', 8),
('Juke', 8),
('Navara', 8),
('370Z', 8),
('Talismán', 9),
('Latitude', 9),
('Twingo', 9),
('Espace', 9),
('Clio', 9),
('Captur', 9),
('Kadjar', 9),
('Avensis ', 10),
('GT86', 10),
('Land Cruiser', 10),
('ProAce', 10),
('Verso', 10),
('Yaris', 10)

-- REGISTROS DE CIUDADES
INSERT INTO CIUDAD VALUES 
(1, 'Bello'),
(2, 'Caldas'),
(3, 'Copacabana'),
(4, 'Envigado'),
(5, 'Guarne'),
(6, 'Itagui'),
(7, 'La Ceja'),
(8, 'La Estrella'),
(9, 'La Tablaza'),
(10, 'Marinilla'),
(11, 'Medellín'),
(12, 'Rionegro'),
(13, 'Sabaneta'),
(14, 'San Antonio de Prado'),
(15, 'San Cristóbal'),
(16, 'Caucasia'),
(17, 'Barranquilla'),
(18, 'Malambo'),
(19, 'Puerto Colombia'),
(20, 'Soledad'),
(21, 'Arjona'),
(22, 'Bayunca'),
(23, 'Carmen de Bolívar'),
(24, 'Cartagena'),
(25, 'Turbaco'),
(26, 'Arcabuco'),
(27, 'Belencito'),
(28, 'Chiquinquirá'),
(29, 'Combita'),
(30, 'Cucaita'),
(31, 'Duitama'),
(32, 'Mongui'),
(33, 'Nobsa'),
(34, 'Paipa'),
(35, 'Puerto Boyacá'),
(36, 'Ráquira'),
(37, 'Samaca'),
(38, 'Santa Rosa de Viterbo'),
(39, 'Sogamoso'),
(40, 'Sutamerchán'),
(41, 'Tibasosa'),
(42, 'Tinjaca'),
(43, 'Tunja'),
(44, 'Ventaquemada'),
(45, 'Villa de Leiva'),
(46, 'La Dorada'),
(47, 'Manizales'),
(48, 'Villamaria'),
(49, 'Caloto'),
(50, 'Ortigal'),
(51, 'Piendamo'),
(52, 'Popayán'),
(53, 'Puerto Tejada'),
(54, 'Santander Quilichao'),
(55, 'Tunia'),
(56, 'Villarica'),
(57, 'Valledupar'),
(58, 'Cerete'),
(59, 'Montería'),
(60, 'Planeta Rica'),
(61, 'Alban'),
(62, 'Bogotá'),
(63, 'Bojaca'),
(64, 'Bosa'),
(65, 'Briceño'),
(66, 'Cajicá'),
(67, 'Chía'),
(68, 'Chinauta'),
(69, 'Choconta'),
(70, 'Cota'),
(71, 'El Muña'),
(72, 'El Rosal'),
(73, 'Engativá'),
(74, 'Facatativa'),
(75, 'Fontibón'),
(76, 'Funza'),
(77, 'Fusagasuga'),
(78, 'Gachancipá'),
(79, 'Girardot'),
(80, 'Guaduas'),
(81, 'Guayavetal'),
(82, 'La Calera'),
(83, 'La Caro'),
(84, 'Madrid'),
(85, 'Mosquera'),
(86, 'Nemocón'),
(87, 'Puente Piedra'),
(88, 'Puente Quetame'),
(89, 'Puerto Bogotá'),
(90, 'Puerto Salgar'),
(91, 'Quetame'),
(92, 'Sasaima'),
(93, 'Sesquile'),
(94, 'Sibaté'),
(95, 'Silvania'),
(96, 'Simijaca'),
(97, 'Soacha'),
(98, 'Sopo'),
(99, 'Suba'),
(100, 'Subachoque'),
(101, 'Susa'),
(102, 'Tabio'),
(103, 'Tenjo'),
(104, 'Tocancipa'),
(105, 'Ubaté'),
(106, 'Usaquén'),
(107, 'Usme'),
(108, 'Villapinzón'),
(109, 'Villeta'),
(110, 'Zipaquirá'),
(111, 'Maicao'),
(112, 'Riohacha'),
(113, 'Aipe'),
(114, 'Neiva'),
(115, 'Cienaga'),
(116, 'Gaira'),
(117, 'Rodadero'),
(118, 'Santa Marta'),
(119, 'Taganga'),
(120, 'Villavicencio'),
(121, 'Ipiales'),
(122, 'Pasto'),
(123, 'Cúcuta'),
(124, 'El Zulia'),
(125, 'La Parada'),
(126, 'Los Patios'),
(127, 'Villa del Rosario'),
(128, 'Armenia'),
(129, 'Calarcá'),
(130, 'Circasia'),
(131, 'La Tebaida'),
(132, 'Montenegro'),
(133, 'Quimbaya'),
(134, 'Dosquebradas'),
(135, 'Pereira'),
(136, 'Aratoca'),
(137, 'Barbosa'),
(138, 'Bucaramanga'),
(139, 'Floridablanca'),
(140, 'Girón'),
(141, 'Lebrija'),
(142, 'Oiba'),
(143, 'Piedecuesta'),
(144, 'Pinchote'),
(145, 'San Gil'),
(146, 'Socorro'),
(147, 'Sincelejo'),
(148, 'Armero'),
(149, 'Buenos Aires'),
(150, 'Castilla'),
(151, 'Espinal'),
(152, 'Flandes'),
(153, 'Guamo'),
(154, 'Honda'),
(155, 'Ibagué'),
(156, 'Mariquita'),
(157, 'Melgar'),
(158, 'Natagaima'),
(159, 'Payande'),
(160, 'Purificación'),
(161, 'Saldaña'),
(162, 'Tolemaida'),
(163, 'Amaime'),
(164, 'Andalucía'),
(165, 'Buenaventura'),
(166, 'Buga'),
(167, 'Buga La Grande'),
(168, 'Caicedonia'),
(169, 'Cali'),
(170, 'Candelaria'),
(171, 'Cartago'),
(172, 'Cavasa'),
(173, 'Costa Rica'),
(174, 'Dagua'),
(175, 'El Carmelo'),
(176, 'El Cerrito'),
(177, 'El Placer'),
(178, 'Florida'),
(179, 'Ginebra'),
(180, 'Guacarí'),
(181, 'Jamundi'),
(182, 'La Paila'),
(183, 'La Unión'),
(184, 'La Victoria'),
(185, 'Loboguerrero'),
(186, 'Palmira'),
(187, 'Pradera'),
(188, 'Roldanillo'),
(189, 'Rozo'),
(190, 'San Pedro'),
(191, 'Sevilla'),
(192, 'Sonso'),
(193, 'Tulúa'),
(194, 'Vijes'),
(195, 'Villa Gorgona'),
(196, 'Yotoco'),
(197, 'Yumbo'),
(198, 'Zarzal'); 

SELECT * FROM CIUDAD

go

-- PROCEDIMIENTO PARA LISTAR LAS MARCAS
CREATE PROCEDURE SpListadoMarcas
AS
BEGIN
SELECT 0 AS ID_MARCA, 'Seleccione la marca' AS NOMBRE_MARCA
UNION
SELECT M.ID_MARCA, M.NOMBRE_MARCA
FROM MARCA AS M
END

EXECUTE SpListadoMarcas
go

-- PROCEDIMIENTO ALMACENADO PARA LISTAR LOS MODELOS POR SUS MARCAS
CREATE PROCEDURE SpListadoPorModelo
(
@CodigoMarca INT
)
AS 
BEGIN
SELECT 0 AS ID_MODELO, 'Seleccione el modelo' AS NOMBRE_MODELO
UNION
SELECT M.ID_MODELO, M.NOMBRE_MODELO
FROM MODELO AS M
WHERE ID_MARCA = @CodigoMarca
END

Execute SpListadoPorModelo 10

-- 
GO
--- PROCEDIMIENTO PARA LISTAR TODA LA INFORMACION
CREATE PROCEDURE SpListaVehiculos
AS BEGIN
SELECT V.ID_VEHICULO AS CODIGO,
	   MAR.NOMBRE_MARCA AS MARCA,
	   M.NOMBRE_MODELO AS MODELO,
	   V.PLACA AS PLACA,
	   V.PUERTAS AS PUERTAS,
	   C.NOMBRE_CIUDAD AS CIUDAD,
	   V.FECHA AS FECHA
	   FROM VEHICULO V INNER JOIN MARCA MAR ON MAR.ID_MARCA = V.ID_MARCA
	   INNER JOIN MODELO M ON M.ID_MODELO = V.ID_MODELO
	   INNER JOIN CIUDAD C ON C.ID_CIUDAD = V.ID_CIUDAD
	   ORDER BY ID_VEHICULO
END

	EXECUTE SpListaVehiculos
