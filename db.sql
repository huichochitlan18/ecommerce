DROP DATABASE IF EXISTS store;
CREATE DATABASE store;
  USE store;

  CREATE TABLE users (
    idUser INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idSocialNetwork VARCHAR(254) COLLATE utf8_spanish_ci,
    provider VARCHAR(10) COLLATE utf8_spanish_ci,
    photoUrl VARCHAR(254) COLLATE utf8_spanish_ci,
    user VARCHAR(80) COLLATE utf8_spanish_ci,
    password VARCHAR(254) COLLATE utf8_spanish_ci,
    email VARCHAR(80) COLLATE utf8_spanish_ci,    
    authToken VARCHAR(254) COLLATE utf8_spanish_ci,    
    name VARCHAR(80) COLLATE utf8_spanish_ci,
    surnames VARCHAR(80) COLLATE utf8_spanish_ci,
    createAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
    lastUpdate INT
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



  CREATE TABLE usuario_telefono (
    id_telefono INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,    
    telefono VARCHAR(80) COLLATE utf8_spanish_ci    
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;    

  CREATE TABLE producto_categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(80) COLLATE utf8_spanish_ci
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;  


  CREATE TABLE producto (
    id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    nombre VARCHAR(80) COLLATE utf8_spanish_ci,
    descripcion VARCHAR(254) COLLATE utf8_spanish_ci    
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

  CREATE TABLE producto_etiquetas (
    id_producto_etiqueta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,        
    etiqueta VARCHAR(254) COLLATE utf8_spanish_ci
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

  CREATE TABLE producto_precio (
    id_producto_precio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    precio DECIMAL(10,2)
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

  
   CREATE TABLE producto_img (
    id_producto_img INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_producto INT,
    img VARCHAR(200) COLLATE utf8_spanish_ci,
    thumbnail VARCHAR(200) COLLATE utf8_spanish_ci    
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

  CREATE TABLE carrito (
    id_carrito INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_producto INT,    
    cantidad INT    
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

   CREATE TABLE venta (
    id_venta INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_producto INT,    
    id_precio INT,
    cantidad INT,
    estado_venta INT    
  )ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
