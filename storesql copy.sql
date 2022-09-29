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

CREATE TABLE ProductoPrecio (
  idProductoPrecio INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  idProducto INT,
  precio DECIMAL(10, 2),
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
  idProductoPrecio INT,
  cantidad INT,
  estadoVenta INT,
  FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
  FOREIGN KEY (idProducto) REFERENCES producto(idProducto),
  FOREIGN KEY (idProductoPrecio) REFERENCES ProductoPrecio(idProductoPrecio)
) 

