 
  CREATE DATABASE comercial;

USE comercial;

CREATE TABLE oficina (
id_oficina INT UNIQUE AUTO_INCREMENT PRIMARY KEY NOT NULL,
ciudad VARCHAR(100) NOT NULL,
telefono VARCHAR(20) NOT NULL,
direccion VARCHAR(200) NOT NULL,
departamento VARCHAR(100) NOT NULL,
pais VARCHAR(100) NOT NULL,
creado TIMESTAMP
);
INSERT INTO oficina (ciudad, telefono, direccion, departamento, pais, creado)
VALUES
    ('Bogotá', '+57 1 1234567', 'Calle 123', 'Cundinamarca', 'Colombia', NOW()),
    ('Medellín', '+57 2 2345678', 'Carrera 456', 'Antioquia', 'Colombia', NOW()),
    ('Cali', '+57 2 3456789', 'Avenida 789', 'Valle del Cauca', 'Colombia', NOW()),
    ('Barranquilla', '+57 5 4567890', 'Calle 901', 'Atlántico', 'Colombia', NOW()),
    ('Cartagena', '+57 5 5678901', 'Avenida 234', 'Bolívar', 'Colombia', NOW()),
    ('Santa Marta', '+57 5 6789012', 'Carrera 567', 'Magdalena', 'Colombia', NOW()),
    ('Bucaramanga', '+57 7 7890123', 'Calle 890', 'Santander', 'Colombia', NOW()),
    ('Pereira', '+57 6 8901234', 'Avenida 123', 'Risaralda', 'Colombia', NOW()),
    ('Manizales', '+57 6 9012345', 'Carrera 456', 'Caldas', 'Colombia', NOW()),
    ('Cúcuta', '+57 7 0123456', 'Avenida 789', 'Norte de Santander', 'Colombia', NOW()),
    ('Ibagué', '+57 8 1234567', 'Calle 901', 'Tolima', 'Colombia', NOW()),
    ('Pasto', '+57 2 2345678', 'Carrera 234', 'Nariño', 'Colombia', NOW()),
    ('Villavicencio', '+57 8 3456789', 'Avenida 567', 'Meta', 'Colombia', NOW()),
    ('Montería', '+57 4 4567890', 'Calle 890', 'Córdoba', 'Colombia', NOW()),
    ('Neiva', '+57 8 5678901', 'Carrera 123', 'Huila', 'Colombia', NOW());

CREATE TABLE empleado(
    documento INT UNIQUE PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    id_oficina INT NOT NULL,
    jefe VARCHAR(100) NOT NULL,
    cargo TEXT NOT NULL,
    creado TIMESTAMP
);
INSERT INTO empleado (documento, nombre, apellido, correo, id_oficina, jefe, cargo, creado)
VALUES
    (123456789, 'Juan', 'Perez', 'juan.perez@example.com', 1, 'Pedro', 'Analista', NOW()),
    (987654321, 'Maria', 'Gomez', 'maria.gomez@example.com', 2, 'Pedro', 'Gerente de Ventas', NOW()),
    (456789123, 'Carlos', 'Lopez', 'carlos.lopez@example.com', 1, 'Pedro', 'Desarrollador', NOW()),
    (789123456, 'Laura', 'Rodriguez', 'laura.rodriguez@example.com', 3, 'Pedro', 'Diseñadora Gráfica', NOW()),
    (321654987, 'Andres', 'Hernandez', 'andres.hernandez@example.com', 2, 'Pedro', 'Asistente Administrativo', NOW()),
    (654789123, 'Ana', 'Sanchez', 'ana.sanchez@example.com', 1, 'Pedro', 'Contadora', NOW()),
    (987321654, 'Pedro', 'Gonzalez', 'pedro.gonzalez@example.com', 3, 'Juan', 'Gerente de Proyectos', NOW()),
    (159753852, 'Sofia', 'Torres', 'sofia.torres@example.com', 1, 'Juan', 'Analista de Marketing', NOW()),
    (852963741, 'Daniel', 'Romero', 'daniel.romero@example.com', 2, 'Juan', 'Desarrollador Full Stack', NOW()),
    (369258147, 'Carolina', 'Morales', 'carolina.morales@example.com', 1, 'Juan', 'Diseñadora UX/UI', NOW()),
    (741258963, 'Luisa', 'Martinez', 'luisa.martinez@example.com', 3, 'Juan', 'Analista de Recursos Humanos', NOW()),
    (258369147, 'Javier', 'Ramirez', 'javier.ramirez@example.com', 2, 'Pedro', 'Especialista de Ventas', NOW()),
    (963852741, 'Valeria', 'Vargas', 'valeria.vargas@example.com', 1, 'Pedro', 'Asistente de Proyectos', NOW()),
    (147852369, 'Camila', 'Luna', 'camila.luna@example.com', 3, 'Pedro', 'Diseñadora Web', NOW()),
    (369147852, 'Alejandro', 'Ortega', 'alejandro.ortega@example.com', 2, 'Pedro', 'Analista Financiero', NOW()),
    (852741963, 'Mariana', 'Rojas', 'mariana.rojas@example.com', 1, 'Pedro', 'Ejecutiva de Ventas', NOW()),
    (741963852, 'Gonzalo', 'Silva', 'gonzalo.silva@example.com', 3, 'Juan', 'Gerente de Operaciones', NOW()),
    (963852741, 'Diana', 'Herrera', 'diana.herrera@example.com', 1, 'Juan', 'Analista de Sistemas', NOW()),
    (369147852, 'Andrea', 'Castro', 'andrea.castro@example.com', 2, 'Juan', 'Coordinadora de Proyectos', NOW()),
    (852741963, 'Felipe', 'Garcia', 'felipe.garcia@example.com', 3, 'Juan', 'Especialista en Marketing Digital', NOW()),
    (741963852, 'Daniela', 'Velez', 'daniela.velez@example.com', 1, 'Juan', 'Asistente de Recursos Humanos', NOW()),
    (963852741, 'Sebastian', 'Mendoza', 'sebastian.mendoza@example.com', 2, 'Pedro', 'Desarrollador Backend', NOW()),
    (369147852, 'Paula', 'Rios', 'paula.rios@example.com', 3, 'Pedro', 'Analista de Calidad', NOW()),
    (852741963, 'Mateo', 'Gomez', 'mateo.gomez@example.com', 1, 'Pedro', 'Gerente de Finanzas', NOW()),
    (741963852, 'Isabella', 'Lopez', 'isabella.lopez@example.com', 2, 'Pedro', 'Especialista en Logística', NOW()),
    (1234567890, 'Gabriel', 'Herrera', 'gabriel.herrera@example.com', 3, 'Juan', 'Analista de Proyectos', NOW()),
    (2345678901, 'Valentina', 'Rojas', 'valentina.rojas@example.com', 1, 'Pedro', 'Especialista en Ventas', NOW()),
    (3456789012, 'Jorge', 'Paredes', 'jorge.paredes@example.com', 2, 'Pedro', 'Coordinador de Marketing', NOW()),
    (4567890123, 'Fernanda', 'Gutierrez', 'fernanda.gutierrez@example.com', 3, 'Juan', 'Analista de Operaciones', NOW()),
    (5678901234, 'Santiago', 'Vargas', 'santiago.vargas@example.com', 1, 'Juan', 'Desarrollador Frontend', NOW()),
    (6789012345, 'Juliana', 'Lopez', 'juliana.lopez@example.com', 2, 'Pedro', 'Analista de Datos', NOW()),
    (7890123456, 'Matias', 'Sanchez', 'matias.sanchez@example.com', 3, 'Juan', 'Especialista en Recursos Humanos', NOW()),
    (8901234567, 'Gabriela', 'Torres', 'gabriela.torres@example.com', 1, 'Pedro', 'Ejecutivo de Cuentas', NOW()),
    (9012345678, 'Ricardo', 'Castro', 'ricardo.castro@example.com', 2, 'Pedro', 'Analista de Marketing Digital', NOW()),
    (0123456789, 'Catalina', 'Gomez', 'catalina.gomez@example.com', 3, 'Juan', 'Coordinadora de Ventas', NOW()),
    (2345678901, 'Javier', 'Hernandez', 'javier.hernandez@example.com', 1, 'Pedro', 'Diseñador Gráfico', NOW()),
    (3456789012, 'Daniela', 'Mendoza', 'daniela.mendoza@example.com', 2, 'Pedro', 'Gerente de Proyectos', NOW()),
    (4567890123, 'Gustavo', 'Rios', 'gustavo.rios@example.com', 3, 'Juan', 'Analista Financiero', NOW()),
    (5678901234, 'Carolina', 'Rodriguez', 'carolina.rodriguez@example.com', 1, 'Juan', 'Especialista en Operaciones', NOW()),
    (6789012345, 'Sebastian', 'Herrera', 'sebastian.herrera@example.com', 2, 'Pedro', 'Desarrollador Full Stack', NOW()),
    (7890123456, 'Valeria', 'Mendoza', 'valeria.mendoza@example.com', 3, 'Juan', 'Ejecutiva de Ventas', NOW()),
    (8901234567, 'Diego', 'Sanchez', 'diego.sanchez@example.com', 1, 'Pedro', 'Gerente de Marketing', NOW());



CREATE TABLE cliente (
    id_cliente INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    empresa VARCHAR(100),
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    telefono NUMERIC,
    direccion VARCHAR(100),
    departamento VARCHAR(100),
    pais VARCHAR(100),
    empleado_atiende NUMERIC NOT NULL,
    creado TIMESTAMP
);
INSERT INTO cliente (empresa, nombre, apellido, telefono, direccion, departamento, pais, empleado_atiende, creado)
VALUES
    ('ACME Corp', 'John', 'Doe', 123456789, '123 Main St', 'California', 'USA', 1, NOW()),
    ('XYZ Company', 'Jane', 'Smith', 987654321, '456 Elm St', 'New York', 'USA', 2, NOW()),
    ('ABC Inc', 'Michael', 'Johnson', 456789123, '789 Oak St', 'Texas', 'USA', 3, NOW()),
    ('123 Industries', 'Emily', 'Davis', 789123456, '567 Pine St', 'Florida', 'USA', 1, NOW()),
    ('Global Solutions', 'David', 'Wilson', 321654987, '901 Maple St', 'California', 'USA', 2, NOW()),
    ('Tech Innovators', 'Sarah', 'Taylor', 654789123, '234 Cedar St', 'Texas', 'USA', 3, NOW()),
    ('Acme Ltd', 'Robert', 'Anderson', 987321654, '890 Birch St', 'New York', 'USA', 1, NOW()),
    ('Infinite Systems', 'Jessica', 'Lee', 159753852, '123 Oak St', 'Florida', 'USA', 2, NOW()),
    ('Global Enterprises', 'Christopher', 'Clark', 852963741, '456 Pine St', 'California', 'USA', 3, NOW()),
    ('Sunrise Industries', 'Amanda', 'Walker', 369258147, '789 Elm St', 'Texas', 'USA', 1, NOW()),
    ('Silverline Corp', 'Matthew', 'Green', 741258963, '901 Maple St', 'New York', 'USA', 2, NOW()),
    ('Tech Solutions', 'Olivia', 'Martin', 258369147, '234 Cedar St', 'Florida', 'USA', 3, NOW()),
    ('Tech Solutions', 'Sophia', 'Harris', 369147852, '567 Pine St', 'California', 'USA', 1, NOW()),
    ('Innovative Designs', 'Noah', 'Clark', 852741963, '789 Elm St', 'Texas', 'USA', 2, NOW()),
    ('Global Services', 'Emma', 'Walker', 741963852, '901 Maple St', 'New York', 'USA', 3, NOW()),
    ('Sunrise Enterprises', 'Liam', 'Turner', 963852741, '123 Oak St', 'Florida', 'USA', 1, NOW()),
    ('Silverline Solutions', 'Mia', 'Adams', 369258147, '456 Pine St', 'California', 'USA', 2, NOW()),
    ('Tech Innovations', 'Jacob', 'Cook', 741258963, '789 Elm St', 'Texas', 'USA', 3, NOW()),
    ('Global Industries', 'Oliver', 'Baker', 258369147, '901 Maple St', 'New York', 'USA', 1, NOW()),
    ('Sunset Corporation', 'Ava', 'Gonzalez', 852963741, '234 Cedar St', 'Florida', 'USA', 2, NOW()),
    ('Infinite Solutions', 'Sophie', 'Gray', 963741852, '567 Pine St', 'California', 'USA', 3, NOW()),
    ('Tech Enterprise', 'Benjamin', 'Rivera', 741852963, '789 Elm St', 'Texas', 'USA', 1, NOW()),
    ('Silverline Ltd', 'Amelia', 'Collins', 369741852, '901 Maple St', 'New York', 'USA', 2, NOW()),
    ('Global Innovations', 'Henry', 'Torres', 852369741, '234 Cedar St', 'Florida', 'USA', 3, NOW());