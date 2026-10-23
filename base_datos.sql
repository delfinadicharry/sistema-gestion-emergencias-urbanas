CREATE DATABASE emergencias_urbanas;
USE emergencias_urbanas;

CREATE TABLE ciudadanos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE equipos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    equipo_id INT,
    FOREIGN KEY (equipo_id) REFERENCES equipos(id)
);

CREATE TABLE reclamos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descripcion TEXT,
    ubicacion VARCHAR(100),
    fecha DATE,
    estado VARCHAR(20),
    ciudadano_id INT,
    categoria_id INT,
    equipo_id INT,
    FOREIGN KEY (ciudadano_id) REFERENCES ciudadanos(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    FOREIGN KEY (equipo_id) REFERENCES equipos(id)
);

CREATE TABLE intervenciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    reclamo_id INT,
    empleado_id INT,
    fecha DATE,
    tareas TEXT,
    FOREIGN KEY (reclamo_id) REFERENCES reclamos(id),
    FOREIGN KEY (empleado_id) REFERENCES empleados(id)
);