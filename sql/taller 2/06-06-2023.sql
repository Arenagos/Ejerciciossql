CREATE DATABASE sena;

USE sena;

CREATE TABLE aprendices(
id INT (20) UNIQUE PRIMARY KEY,
nombre_apellido VARCHAR (50) UNIQUE NOT NULL,
correo VARCHAR(50) UNIQUE NOT NULL,
edad INT UNSIGNED NOT NULL,
direccion VARCHAR(20) NOT NULL,
ciudad VARCHAR(20) NOT NULL,
estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO aprendices (id, nombre_apellido, correo, edad, direccion, ciudad, estado)
VALUES
    (1075678987, 'eliana lozano', 'eylozano@sena.edu.co', 25, 'Calle 123', 'Bogotá', 'Activo'),
    (1077870134, 'María López', 'maria.lopez@example.com', 28, 'Carrera 456', 'Medellín', 'Activo'),
    (1077870145, 'Ana Rodriguez', 'ana.rodriguez@example.com', 26, 'Calle 456', 'Bogotá', 'Activo'),
    (1077870173, 'Luisa Torres', 'luisa.torres@example.com', 24, 'Carrera 789', 'Medellín', 'Inactivo'),
    (1077870179, 'Carlos Ramirez', 'carlos.ramirez@example.com', 27, 'Avenida 123', 'Cali', 'Activo'),
    (1077870174, 'Laura González', 'laura.gonzalez@example.com', 29, 'Calle 789', 'Bogotá', 'Inactivo'),
    (1077870123, 'Andrés Vargas', 'andres.vargas@example.com', 22, 'Carrera 123', 'Medellín', 'Activo'),
    (1077870172, 'Sofía Castro', 'sofia.castro@example.com', 25, 'Avenida 456', 'Cali', 'Inactivo'),
    (1077870175, 'Julio Hernandez', 'julio.hernandez@example.com', 26, 'Calle 123', 'Bogotá', 'Activo'),
    (1077870124, 'Valentina Ruiz', 'valentina.ruiz@example.com', 27, 'Carrera 456', 'Medellín', 'Inactivo'),
    (1077870178, 'David Silva', 'david.silva@example.com', 24, 'Avenida 789', 'Cali', 'Activo'),
    (1077870171, 'Camila Vargas', 'camila.vargas@example.com', 29, 'Calle 456', 'Bogotá', 'Inactivo'),
    (1077870177, 'Daniel López', 'daniel.lopez@example.com', 23, 'Carrera 789', 'Medellín', 'Activo'),
    (5678345, 'Paula Ramirez', 'paula.ramirez@example.com', 28, 'Avenida 123', 'Cali', 'Inactivo');

SELECT id FROM aprendices\G;

SELECT nombre_apellido, edad, estado FROM aprendices\G;

SELECT * FROM aprendices\G;

SELECT * FROM aprendices WHERE id = 1075678987;


SELECT * FROM aprendices WHERE correo = 'eylozano@sena.edu.co';

SELECT * FROM aprendices WHERE edad >= 24;

SELECT * FROM aprendices WHERE creado > '2023-06-05 00:00:01';

SELECT * FROM aprendices WHERE id IN (1075678987, 5678345);

SELECT * FROM aprendices ORDER BY edad;

SELECT * FROM aprendices ORDER BY edad DESC;

SELECT nombre_apellido, correo FROM aprendices ORDER BY edad DESC LIMIT 1;

SELECT * FROM aprendices WHERE correo LIKE '%.com';