DROP DATABASE IF EXISTS tienda;

CREATE DATABASE tienda;

USE tienda;

CREATE TABLE usuario (
  idUsuario INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  provider VARCHAR(80),
  idSocialNetwork VARCHAR(254),
  email VARCHAR(80),
  name VARCHAR(80),
  photoUrl VARCHAR(80),
  firstName VARCHAR(80),
  lastName VARCHAR(80),
  authToken VARCHAR(80),
  idToken VARCHAR(80),
  authorizationCode VARCHAR(80)  
) 

CREATE TABLE direccion (
  idDireccion INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  idUsuario INT,
  calle VARCHAR(80),
  calleNumero VARCHAR(80),
  codigoPostal INT,
  informacionAdicional VARCHAR(80),
  latitude DECIMAL(10, 2),
  longitude DECIMAL(10, 2),
  FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
) 

CREATE TABLE telefono (
  idTelefono INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  idUsuario INT,
  telefono VARCHAR(80),
  FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
) 

CREATE TABLE producto (
  idProducto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  idUsuario INT,
  stock int,
  precio DECIMAL(10, 2),
  nombre VARCHAR(80),
  descripcion VARCHAR(80),
  FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
) 

CREATE TABLE productoImg (
  idProductoImg INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  idProducto INT,
  img VARCHAR(254),
  thumbnail VARCHAR(254),
  FOREIGN KEY (idProducto) REFERENCES producto(idProducto)
) 

CREATE TABLE carrito (
  idCarrito INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  idUsuario INT,
  idProducto INT,
  cantidad INT,
  FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
  FOREIGN KEY (idProducto) REFERENCES producto(idProducto)
) 

CREATE TABLE venta (
  idVenta INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  idUsuario INT,
  idProducto INT,
  precio DECIMAL(10, 2),
  cantidad INT,
  estadoVenta INT,
  FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
  FOREIGN KEY (idProducto) REFERENCES producto(idProducto),  
) 

INSERT INTO usuario (name) VALUES ('Adel');
INSERT INTO usuario (name) VALUES ('Adonis');
INSERT INTO usuario (name) VALUES ('Ajaz');
INSERT INTO usuario (name) VALUES ('Akos');
INSERT INTO usuario (name) VALUES ('Aldo');
INSERT INTO usuario (name) VALUES ('Amets');
INSERT INTO usuario (name) VALUES ('Amaro');
INSERT INTO usuario (name) VALUES ('Aquiles');
INSERT INTO usuario (name) VALUES ('Algimantas');
INSERT INTO usuario (name) VALUES ('Alpidio');
INSERT INTO usuario (name) VALUES ('Amrane');
INSERT INTO usuario (name) VALUES ('Anish');
INSERT INTO usuario (name) VALUES ('Arián');
INSERT INTO usuario (name) VALUES ('Ayun');
INSERT INTO usuario (name) VALUES ('Azariel');
INSERT INTO usuario (name) VALUES ('Bagrat');
INSERT INTO usuario (name) VALUES ('Bencomo');
INSERT INTO usuario (name) VALUES ('Bertino');
INSERT INTO usuario (name) VALUES ('Candi');
INSERT INTO usuario (name) VALUES ('Cesc');
INSERT INTO usuario (name) VALUES ('Cirino');
INSERT INTO usuario (name) VALUES ('Crisólogo');
INSERT INTO usuario (name) VALUES ('Cruz');
INSERT INTO usuario (name) VALUES ('Danilo');
INSERT INTO usuario (name) VALUES ('Dareck');
INSERT INTO usuario (name) VALUES ('Dariel');
INSERT INTO usuario (name) VALUES ('Darin');
INSERT INTO usuario (name) VALUES ('Delmiro');
INSERT INTO usuario (name) VALUES ('Damen');
INSERT INTO usuario (name) VALUES ('Dilan');
INSERT INTO usuario (name) VALUES ('Dipa');
INSERT INTO usuario (name) VALUES ('Doménico');
INSERT INTO usuario (name) VALUES ('Drago');
INSERT INTO usuario (name) VALUES ('Edivaldo');
INSERT INTO usuario (name) VALUES ('Elvis');
INSERT INTO usuario (name) VALUES ('Elyan');
INSERT INTO usuario (name) VALUES ('Emeric');
INSERT INTO usuario (name) VALUES ('Engracio');
INSERT INTO usuario (name) VALUES ('Ensa');
INSERT INTO usuario (name) VALUES ('Eñaut');
INSERT INTO usuario (name) VALUES ('Eleazar');
INSERT INTO usuario (name) VALUES ('Eros');
INSERT INTO usuario (name) VALUES ('Eufemio');
INSERT INTO usuario (name) VALUES ('Feiyang');
INSERT INTO usuario (name) VALUES ('Fiorenzo');
INSERT INTO usuario (name) VALUES ('Foudil');
INSERT INTO usuario (name) VALUES ('Galo');
INSERT INTO usuario (name) VALUES ('Gastón');
INSERT INTO usuario (name) VALUES ('Giulio');
INSERT INTO usuario (name) VALUES ('Gautam');
INSERT INTO usuario (name) VALUES ('Gentil');
INSERT INTO usuario (name) VALUES ('Gianni');
INSERT INTO usuario (name) VALUES ('Gianluca');
INSERT INTO usuario (name) VALUES ('Giorgio');
INSERT INTO usuario (name) VALUES ('Gourav');
INSERT INTO usuario (name) VALUES ('Grober');
INSERT INTO usuario (name) VALUES ('Guido');
INSERT INTO usuario (name) VALUES ('Guifre');
INSERT INTO usuario (name) VALUES ('Guim');
INSERT INTO usuario (name) VALUES ('Hermes');
INSERT INTO usuario (name) VALUES ('Inge');
INSERT INTO usuario (name) VALUES ('Irai');
INSERT INTO usuario (name) VALUES ('Iraitz');
INSERT INTO usuario (name) VALUES ('Iyad');
INSERT INTO usuario (name) VALUES ('Iyán');
INSERT INTO usuario (name) VALUES ('Jeremías');
INSERT INTO usuario (name) VALUES ('Joao');
INSERT INTO usuario (name) VALUES ('Jun');
INSERT INTO usuario (name) VALUES ('Khaled');
INSERT INTO usuario (name) VALUES ('Leónidas');
INSERT INTO usuario (name) VALUES ('Lier');
INSERT INTO usuario (name) VALUES ('Lionel');
INSERT INTO usuario (name) VALUES ('Lisandro');
INSERT INTO usuario (name) VALUES ('Lucián');
INSERT INTO usuario (name) VALUES ('Mael');
INSERT INTO usuario (name) VALUES ('Misael');
INSERT INTO usuario (name) VALUES ('Moad');
INSERT INTO usuario (name) VALUES ('Munir');
INSERT INTO usuario (name) VALUES ('Nael');
INSERT INTO usuario (name) VALUES ('Najim');
INSERT INTO usuario (name) VALUES ('Neo');
INSERT INTO usuario (name) VALUES ('Neil');
INSERT INTO usuario (name) VALUES ('Nikita');
INSERT INTO usuario (name) VALUES ('Nilo');
INSERT INTO usuario (name) VALUES ('Otto');
INSERT INTO usuario (name) VALUES ('Pep');
INSERT INTO usuario (name) VALUES ('Policarpo');
INSERT INTO usuario (name) VALUES ('Radu');
INSERT INTO usuario (name) VALUES ('Ramsés');
INSERT INTO usuario (name) VALUES ('Rómulo');
INSERT INTO usuario (name) VALUES ('Roy');
INSERT INTO usuario (name) VALUES ('Severo');
INSERT INTO usuario (name) VALUES ('Sidi');
INSERT INTO usuario (name) VALUES ('Simeón');
INSERT INTO usuario (name) VALUES ('Taha');
INSERT INTO usuario (name) VALUES ('Tao');
INSERT INTO usuario (name) VALUES ('Vadim');
INSERT INTO usuario (name) VALUES ('Vincenzo');
INSERT INTO usuario (name) VALUES ('Zaid');
INSERT INTO usuario (name) VALUES ('Zigor');
INSERT INTO usuario (name) VALUES ('Zouhair');
INSERT INTO usuario (name) VALUES ('Hugo');
INSERT INTO usuario (name) VALUES ('Mateo');
INSERT INTO usuario (name) VALUES ('Martín');
INSERT INTO usuario (name) VALUES ('Lucas');
INSERT INTO usuario (name) VALUES ('Leo');
INSERT INTO usuario (name) VALUES ('Daniel');
INSERT INTO usuario (name) VALUES ('Alejandro');
INSERT INTO usuario (name) VALUES ('Manuel');
INSERT INTO usuario (name) VALUES ('Pablo');
INSERT INTO usuario (name) VALUES ('Álvaro');
INSERT INTO usuario (name) VALUES ('Adrián');
INSERT INTO usuario (name) VALUES ('Enzo');
INSERT INTO usuario (name) VALUES ('Mario');
INSERT INTO usuario (name) VALUES ('Diego');
INSERT INTO usuario (name) VALUES ('David');
INSERT INTO usuario (name) VALUES ('Oliver');
INSERT INTO usuario (name) VALUES ('Marcos');
INSERT INTO usuario (name) VALUES ('Thiago');
INSERT INTO usuario (name) VALUES ('Marco');
INSERT INTO usuario (name) VALUES ('Álex');
INSERT INTO usuario (name) VALUES ('Javier');
INSERT INTO usuario (name) VALUES ('Izan');
INSERT INTO usuario (name) VALUES ('Bruno');
INSERT INTO usuario (name) VALUES ('Miguel');
INSERT INTO usuario (name) VALUES ('Antonio');
INSERT INTO usuario (name) VALUES ('Gonzalo');
INSERT INTO usuario (name) VALUES ('Liam');
INSERT INTO usuario (name) VALUES ('Gael');
INSERT INTO usuario (name) VALUES ('Marc');
INSERT INTO usuario (name) VALUES ('Carlos');
INSERT INTO usuario (name) VALUES ('Juan');
INSERT INTO usuario (name) VALUES ('Ángel');
INSERT INTO usuario (name) VALUES ('Dylan');
INSERT INTO usuario (name) VALUES ('Nicolás');
INSERT INTO usuario (name) VALUES ('José');
INSERT INTO usuario (name) VALUES ('Sergio');
INSERT INTO usuario (name) VALUES ('Gabriel');
INSERT INTO usuario (name) VALUES ('Luca');
INSERT INTO usuario (name) VALUES ('Jorge');
INSERT INTO usuario (name) VALUES ('Darío');
INSERT INTO usuario (name) VALUES ('Íker');
INSERT INTO usuario (name) VALUES ('Samuel');
INSERT INTO usuario (name) VALUES ('Eric');
INSERT INTO usuario (name) VALUES ('Adam');
INSERT INTO usuario (name) VALUES ('Héctor');
INSERT INTO usuario (name) VALUES ('Francisco');
INSERT INTO usuario (name) VALUES ('Rodrigo');
INSERT INTO usuario (name) VALUES ('Jesús');
INSERT INTO usuario (name) VALUES ('Erik');
INSERT INTO usuario (name) VALUES ('Amir');
INSERT INTO usuario (name) VALUES ('Jaime');
INSERT INTO usuario (name) VALUES ('Ian');
INSERT INTO usuario (name) VALUES ('Rubén');
INSERT INTO usuario (name) VALUES ('Aarón');
INSERT INTO usuario (name) VALUES ('Iván');
INSERT INTO usuario (name) VALUES ('Pau');
INSERT INTO usuario (name) VALUES ('Víctor');
INSERT INTO usuario (name) VALUES ('Guillermo');
INSERT INTO usuario (name) VALUES ('Luis');
INSERT INTO usuario (name) VALUES ('Mohamed');
INSERT INTO usuario (name) VALUES ('Pedro');
INSERT INTO usuario (name) VALUES ('Julen');
INSERT INTO usuario (name) VALUES ('Unai');
INSERT INTO usuario (name) VALUES ('Rafael');
INSERT INTO usuario (name) VALUES ('Santiago');
INSERT INTO usuario (name) VALUES ('Saúl');
INSERT INTO usuario (name) VALUES ('Alberto');
INSERT INTO usuario (name) VALUES ('Noah');
INSERT INTO usuario (name) VALUES ('Aitor');
INSERT INTO usuario (name) VALUES ('Joel');
INSERT INTO usuario (name) VALUES ('Nil');
INSERT INTO usuario (name) VALUES ('Jan');
INSERT INTO usuario (name) VALUES ('Pol');
INSERT INTO usuario (name) VALUES ('Raúl');
INSERT INTO usuario (name) VALUES ('Matías');
INSERT INTO usuario (name) VALUES ('Martí');
INSERT INTO usuario (name) VALUES ('Fernando');
INSERT INTO usuario (name) VALUES ('Andrés');
INSERT INTO usuario (name) VALUES ('Rayan');
INSERT INTO usuario (name) VALUES ('Alonso');
INSERT INTO usuario (name) VALUES ('Ismael');
INSERT INTO usuario (name) VALUES ('Asier');
INSERT INTO usuario (name) VALUES ('Biel');
INSERT INTO usuario (name) VALUES ('Ander');
INSERT INTO usuario (name) VALUES ('Aleix');
INSERT INTO usuario (name) VALUES ('Axel');
INSERT INTO usuario (name) VALUES ('Alan');
INSERT INTO usuario (name) VALUES ('Ignacio');
INSERT INTO usuario (name) VALUES ('Fabio');
INSERT INTO usuario (name) VALUES ('Neizan');
INSERT INTO usuario (name) VALUES ('Jon');
INSERT INTO usuario (name) VALUES ('Teo');
INSERT INTO usuario (name) VALUES ('Isaac');
INSERT INTO usuario (name) VALUES ('Arnau');
INSERT INTO usuario (name) VALUES ('Luka');
INSERT INTO usuario (name) VALUES ('Max');
INSERT INTO usuario (name) VALUES ('Imran');
INSERT INTO usuario (name) VALUES ('Youssef');
INSERT INTO usuario (name) VALUES ('Anas');
INSERT INTO usuario (name) VALUES ('Elías');

INSERT INTO producto (idUsuario, nombre) VALUES (76,1228,'Cerveza tibetana Barley');
INSERT INTO producto (idUsuario, nombre) VALUES (64,276,'Sirope de regaliz');
INSERT INTO producto (idUsuario, nombre) VALUES (93,1392,'Especias Cajun del chef Anton');
INSERT INTO producto (idUsuario, nombre) VALUES (200,639,'Mezcla Gumbo del chef Anton');
INSERT INTO producto (idUsuario, nombre) VALUES (102,49,'Mermelada de grosellas de la abuela');
INSERT INTO producto (idUsuario, nombre) VALUES (23,1421,'Peras secas orgánicas del tío Bob');
INSERT INTO producto (idUsuario, nombre) VALUES (89,538,'Salsa de arándanos Northwoods');
INSERT INTO producto (idUsuario, nombre) VALUES (116,1735,'Buey Mishi Kobe');
INSERT INTO producto (idUsuario, nombre) VALUES (77,1055,'Pez espada');
INSERT INTO producto (idUsuario, nombre) VALUES (184,1277,'Queso Cabrales');
INSERT INTO producto (idUsuario, nombre) VALUES (148,1541,'Queso Manchego La Pastora');
INSERT INTO producto (idUsuario, nombre) VALUES (138,857,'Algas Konbu');
INSERT INTO producto (idUsuario, nombre) VALUES (190,917,'Cuajada de judías');
INSERT INTO producto (idUsuario, nombre) VALUES (75,1258,'Salsa de soja baja en sodio');
INSERT INTO producto (idUsuario, nombre) VALUES (89,972,'Postre de merengue Pavlova');
INSERT INTO producto (idUsuario, nombre) VALUES (195,1457,'Cordero Alice Springs');
INSERT INTO producto (idUsuario, nombre) VALUES (75,57,'Langostinos tigre Carnarvon');
INSERT INTO producto (idUsuario, nombre) VALUES (125,825,'Pastas de té de chocolate');
INSERT INTO producto (idUsuario, nombre) VALUES (118,678,'Mermelada de Sir Rodney');
INSERT INTO producto (idUsuario, nombre) VALUES (116,688,'Bollos de Sir Rodney');
INSERT INTO producto (idUsuario, nombre) VALUES (150,623,'Pan de centeno crujiente estilo Gustaf');
INSERT INTO producto (idUsuario, nombre) VALUES (118,889,'Pan fino');
INSERT INTO producto (idUsuario, nombre) VALUES (105,1194,'Refresco Guaraná Fantástica');
INSERT INTO producto (idUsuario, nombre) VALUES (141,1526,'Crema de chocolate y nueces NuNuCa');
INSERT INTO producto (idUsuario, nombre) VALUES (134,1518,'Ositos de goma Gumbär');
INSERT INTO producto (idUsuario, nombre) VALUES (170,227,'Chocolate Schoggi');
INSERT INTO producto (idUsuario, nombre) VALUES (164,527,'Col fermentada Rössle');
INSERT INTO producto (idUsuario, nombre) VALUES (47,1277,'Salchicha Thüringer');
INSERT INTO producto (idUsuario, nombre) VALUES (102,1339,'Arenque blanco del noroeste');
INSERT INTO producto (idUsuario, nombre) VALUES (143,1719,'Queso gorgonzola Telino');
INSERT INTO producto (idUsuario, nombre) VALUES (165,1423,'Queso Mascarpone Fabioli');
INSERT INTO producto (idUsuario, nombre) VALUES (62,1687,'Queso de cabra');
INSERT INTO producto (idUsuario, nombre) VALUES (92,777,'Cerveza Sasquatch');
INSERT INTO producto (idUsuario, nombre) VALUES (24,1496,'Cerveza negra Steeleye');
INSERT INTO producto (idUsuario, nombre) VALUES (174,526,'Escabeche de arenque');
INSERT INTO producto (idUsuario, nombre) VALUES (77,907,'Salmón ahumado Gravad');
INSERT INTO producto (idUsuario, nombre) VALUES (105,1441,'Vino Côte de Blaye');
INSERT INTO producto (idUsuario, nombre) VALUES (157,742,'Licor verde Chartreuse');
INSERT INTO producto (idUsuario, nombre) VALUES (61,165,'Carne de cangrejo de Boston');
INSERT INTO producto (idUsuario, nombre) VALUES (121,652,'Crema de almejas estilo Nueva Inglaterra');
INSERT INTO producto (idUsuario, nombre) VALUES (112,414,'Tallarines de Singapur');
INSERT INTO producto (idUsuario, nombre) VALUES (38,839,'Café de Malasia');
INSERT INTO producto (idUsuario, nombre) VALUES (169,235,'Azúcar negra Malacca');
INSERT INTO producto (idUsuario, nombre) VALUES (195,181,'Arenque ahumado');
INSERT INTO producto (idUsuario, nombre) VALUES (132,1224,'Arenque salado');
INSERT INTO producto (idUsuario, nombre) VALUES (67,250,'Galletas Zaanse');
INSERT INTO producto (idUsuario, nombre) VALUES (169,764,'Chocolate holandés');
INSERT INTO producto (idUsuario, nombre) VALUES (39,1462,'Regaliz');
INSERT INTO producto (idUsuario, nombre) VALUES (193,1677,'Chocolate blanco');
INSERT INTO producto (idUsuario, nombre) VALUES (78,762,'Manzanas secas Manjimup');
INSERT INTO producto (idUsuario, nombre) VALUES (189,894,'Cereales para Filo');
INSERT INTO producto (idUsuario, nombre) VALUES (146,401,'Empanada de carne');
INSERT INTO producto (idUsuario, nombre) VALUES (70,195,'Empanada de cerdo');
INSERT INTO producto (idUsuario, nombre) VALUES (30,462,'Paté chino');
INSERT INTO producto (idUsuario, nombre) VALUES (173,1785,'Gnocchi de la abuela Alicia');
INSERT INTO producto (idUsuario, nombre) VALUES (193,342,'Raviolis Angelo');
INSERT INTO producto (idUsuario, nombre) VALUES (19,1625,'Caracoles de Borgoña');
INSERT INTO producto (idUsuario, nombre) VALUES (85,312,'Raclet de queso Courdavault');
INSERT INTO producto (idUsuario, nombre) VALUES (26,1246,'Camembert Pierrot');
INSERT INTO producto (idUsuario, nombre) VALUES (65,1704,'Sirope de arce');
INSERT INTO producto (idUsuario, nombre) VALUES (141,329,'Tarta de azúcar');
INSERT INTO producto (idUsuario, nombre) VALUES (69,727,'Sandwich de vegetales');
INSERT INTO producto (idUsuario, nombre) VALUES (115,950,'Bollos de pan de Wimmer');
INSERT INTO producto (idUsuario, nombre) VALUES (152,1201,'Salsa de pimiento picante de Luisiana');
INSERT INTO producto (idUsuario, nombre) VALUES (59,1673,'Especias picantes de Luisiana');
INSERT INTO producto (idUsuario, nombre) VALUES (53,1729,'Cerveza Laughing Lumberjack');
INSERT INTO producto (idUsuario, nombre) VALUES (156,1458,'Barras de pan de Escocia');
INSERT INTO producto (idUsuario, nombre) VALUES (145,875,'Queso Gudbrandsdals');
INSERT INTO producto (idUsuario, nombre) VALUES (87,356,'Cerveza Outback');
INSERT INTO producto (idUsuario, nombre) VALUES (141,526,'Crema de queso Fløtemys');
INSERT INTO producto (idUsuario, nombre) VALUES (72,1322,'Queso Mozzarella Giovanni');
INSERT INTO producto (idUsuario, nombre) VALUES (33,636,'Caviar rojo');
INSERT INTO producto (idUsuario, nombre) VALUES (132,1309,'Queso de soja Longlife');
INSERT INTO producto (idUsuario, nombre) VALUES (55,513,'Cerveza Klosterbier Rhönbräu');
INSERT INTO producto (idUsuario, nombre) VALUES (108,324,'Licor Cloudberry');
INSERT INTO producto (idUsuario, nombre) VALUES (168,440,'Salsa verde original Frankfurter');


INSERT INTO productoPrecio (idProducto, precio) values (1,303);
INSERT INTO productoPrecio (idProducto, precio) values (2,1670);
INSERT INTO productoPrecio (idProducto, precio) values (3,1709);
INSERT INTO productoPrecio (idProducto, precio) values (4,1774);
INSERT INTO productoPrecio (idProducto, precio) values (5,596);
INSERT INTO productoPrecio (idProducto, precio) values (6,1351);
INSERT INTO productoPrecio (idProducto, precio) values (7,104);
INSERT INTO productoPrecio (idProducto, precio) values (8,905);
INSERT INTO productoPrecio (idProducto, precio) values (9,1545);
INSERT INTO productoPrecio (idProducto, precio) values (10,443);
INSERT INTO productoPrecio (idProducto, precio) values (11,1796);
INSERT INTO productoPrecio (idProducto, precio) values (12,1615);
INSERT INTO productoPrecio (idProducto, precio) values (13,585);
INSERT INTO productoPrecio (idProducto, precio) values (14,714);
INSERT INTO productoPrecio (idProducto, precio) values (15,991);
INSERT INTO productoPrecio (idProducto, precio) values (16,452);
INSERT INTO productoPrecio (idProducto, precio) values (17,650);
INSERT INTO productoPrecio (idProducto, precio) values (18,795);
INSERT INTO productoPrecio (idProducto, precio) values (19,867);
INSERT INTO productoPrecio (idProducto, precio) values (20,108);
INSERT INTO productoPrecio (idProducto, precio) values (21,1252);
INSERT INTO productoPrecio (idProducto, precio) values (22,1305);
INSERT INTO productoPrecio (idProducto, precio) values (23,478);
INSERT INTO productoPrecio (idProducto, precio) values (24,1061);
INSERT INTO productoPrecio (idProducto, precio) values (25,1295);
INSERT INTO productoPrecio (idProducto, precio) values (26,694);
INSERT INTO productoPrecio (idProducto, precio) values (27,1403);
INSERT INTO productoPrecio (idProducto, precio) values (28,1229);
INSERT INTO productoPrecio (idProducto, precio) values (29,375);
INSERT INTO productoPrecio (idProducto, precio) values (30,784);
INSERT INTO productoPrecio (idProducto, precio) values (31,825);
INSERT INTO productoPrecio (idProducto, precio) values (32,904);
INSERT INTO productoPrecio (idProducto, precio) values (33,1086);
INSERT INTO productoPrecio (idProducto, precio) values (34,835);
INSERT INTO productoPrecio (idProducto, precio) values (35,1296);
INSERT INTO productoPrecio (idProducto, precio) values (36,1174);
INSERT INTO productoPrecio (idProducto, precio) values (37,1534);
INSERT INTO productoPrecio (idProducto, precio) values (38,1295);
INSERT INTO productoPrecio (idProducto, precio) values (39,1289);
INSERT INTO productoPrecio (idProducto, precio) values (40,1578);
INSERT INTO productoPrecio (idProducto, precio) values (41,317);
INSERT INTO productoPrecio (idProducto, precio) values (42,1143);
INSERT INTO productoPrecio (idProducto, precio) values (43,910);
INSERT INTO productoPrecio (idProducto, precio) values (44,807);
INSERT INTO productoPrecio (idProducto, precio) values (45,1524);
INSERT INTO productoPrecio (idProducto, precio) values (46,1793);
INSERT INTO productoPrecio (idProducto, precio) values (47,1223);
INSERT INTO productoPrecio (idProducto, precio) values (48,709);
INSERT INTO productoPrecio (idProducto, precio) values (49,1622);
INSERT INTO productoPrecio (idProducto, precio) values (50,1604);
INSERT INTO productoPrecio (idProducto, precio) values (51,1394);
INSERT INTO productoPrecio (idProducto, precio) values (52,1143);
INSERT INTO productoPrecio (idProducto, precio) values (53,466);
INSERT INTO productoPrecio (idProducto, precio) values (54,736);
INSERT INTO productoPrecio (idProducto, precio) values (55,340);
INSERT INTO productoPrecio (idProducto, precio) values (56,1176);
INSERT INTO productoPrecio (idProducto, precio) values (57,751);
INSERT INTO productoPrecio (idProducto, precio) values (58,681);
INSERT INTO productoPrecio (idProducto, precio) values (59,102);
INSERT INTO productoPrecio (idProducto, precio) values (60,875);
INSERT INTO productoPrecio (idProducto, precio) values (61,1084);
INSERT INTO productoPrecio (idProducto, precio) values (62,774);
INSERT INTO productoPrecio (idProducto, precio) values (63,1034);
INSERT INTO productoPrecio (idProducto, precio) values (64,447);
INSERT INTO productoPrecio (idProducto, precio) values (65,393);
INSERT INTO productoPrecio (idProducto, precio) values (66,1342);
INSERT INTO productoPrecio (idProducto, precio) values (67,752);
INSERT INTO productoPrecio (idProducto, precio) values (68,1354);
INSERT INTO productoPrecio (idProducto, precio) values (69,33);
INSERT INTO productoPrecio (idProducto, precio) values (70,53);
INSERT INTO productoPrecio (idProducto, precio) values (71,1300);
INSERT INTO productoPrecio (idProducto, precio) values (72,227);
INSERT INTO productoPrecio (idProducto, precio) values (73,907);
INSERT INTO productoPrecio (idProducto, precio) values (74,115);
INSERT INTO productoPrecio (idProducto, precio) values (75,1131);
INSERT INTO productoPrecio (idProducto, precio) values (76,210);
