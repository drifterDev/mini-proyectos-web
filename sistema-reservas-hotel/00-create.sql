/* 
 Autor: Mateo Álvarez Murillo
 Fecha de creación: 2023
 Este código se proporciona bajo la Licencia MIT.
 Para más información, consulta el archivo LICENSE en la raíz del repositorio. 
 */

CREATE DATABASE dbs_hotel;

USE dbs_hotel;

CREATE TABLE
    nacionalidad(
        id INT PRIMARY KEY AUTO_INCREMENT,
        nacionalidad VARCHAR(45) NOT NULL
    );

CREATE TABLE
    clientes(
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(45) NOT NULL,
        apellido VARCHAR(45) NOT NULL,
        email VARCHAR(50) UNIQUE,
        telefono VARCHAR(15),
        id_nacionalidad INT,
        CONSTRAINT fk_nacionalidad_usuario FOREIGN KEY (id_nacionalidad) REFERENCES nacionalidad(`id`) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    hoteles(
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(45) NOT NULL,
        calificacion ENUM('1', '2', '3', '4', '5') NOT NULL,
        ciudad VARCHAR(50) NOT NULL,
        email VARCHAR(50),
        sitio_web VARCHAR(50),
        pais VARCHAR(45) NOT NULL
    );

CREATE TABLE
    habitaciones(
        id INT PRIMARY KEY AUTO_INCREMENT,
        tipo ENUM('individual', 'doble', 'suite') NOT NULL,
        capacidad INT NOT NULL,
        precio INT NOT NULL,
        hotel_id INT NOT NULL,
        CONSTRAINT fk_habitaciones_hotel FOREIGN KEY (hotel_id) REFERENCES hoteles(`id`) ON UPDATE CASCADE ON DELETE CASCADE
    );

CREATE TABLE
    reservas(
        id INT PRIMARY KEY AUTO_INCREMENT,
        fecha_entrega DATETIME NOT NULL,
        fecha_recogida DATETIME NOT NULL,
        cliente_id INT NOT NULL,
        habitacion_id INT NOT NULL,
        CONSTRAINT fk_reserva_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(`id`) ON UPDATE CASCADE ON DELETE CASCADE,
        CONSTRAINT fk_reserva_habitacion FOREIGN KEY (habitacion_id) REFERENCES habitaciones(`id`) ON UPDATE CASCADE ON DELETE CASCADE
    );