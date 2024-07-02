DROP DATABASE IF EXISTS proyecto_final;
CREATE DATABASE proyecto_final;
USE proyecto_final;

-- TABLA LOCALIDADES  
CREATE TABLE localidades (
    id_localidad INT AUTO_INCREMENT PRIMARY KEY,
    provincia VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL
);

-- TABLA CLIENTES
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL DEFAULT 'USUARIO_UNKNOWN',
    apellido VARCHAR(50) NOT NULL,
    id_localidad INT,
    telefono VARCHAR(20) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    instagram VARCHAR(50) NOT NULL UNIQUE,
    fidelidad BOOLEAN COMMENT "si es cliente habitual"
);

-- TABLA ADMINISTRATIVAS 
CREATE TABLE administrativas (
    id_administrativa INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL
);

-- TABLA OPERARIO
CREATE TABLE operario (
    id_operario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL DEFAULT 'USUARIO_UNKNOWN',
    apellido VARCHAR(50) NOT NULL,
    id_localidad INT
);

-- TABLA SERVICIOS 
CREATE TABLE servicios (
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    tipo_servicio VARCHAR(30) NOT NULL,
    precio INT NOT NULL
);

-- TABLA TURNOS
CREATE TABLE turno (
    id_turno INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    horario TIME NOT NULL,
    id_operario INT,
    id_cliente INT,
    id_localidad INT,
    id_administrativa INT,
    asignado BOOLEAN COMMENT "SI EL TURNO ESTA ASIGNADO ES TRUE"
);

-- TABLA TURNO_SERVICIOS
CREATE TABLE turno_servicios (
    id_turno INT,
    id_servicio INT,
    PRIMARY KEY (id_turno, id_servicio)
);

-- FOREIGN KEYS DEFINITION

-- CLIENTES
ALTER TABLE clientes
    ADD CONSTRAINT FK_clientes_localidades
    FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);

-- OPERARIO
ALTER TABLE operario
    ADD CONSTRAINT FK_operario_localidades
    FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);

-- TURNOS
ALTER TABLE turno
    ADD CONSTRAINT FK_turno_operario
    FOREIGN KEY (id_operario) REFERENCES operario(id_operario);

ALTER TABLE turno
    ADD CONSTRAINT FK_turno_cliente
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente);

ALTER TABLE turno
    ADD CONSTRAINT FK_turno_localidades
    FOREIGN KEY (id_localidad) REFERENCES localidades(id_localidad);

ALTER TABLE turno
    ADD CONSTRAINT FK_turno_administrativas
    FOREIGN KEY (id_administrativa) REFERENCES administrativas(id_administrativa);

-- TURNO_SERVICIOS
ALTER TABLE turno_servicios
    ADD CONSTRAINT FK_turno_servicios_turno
    FOREIGN KEY (id_turno) REFERENCES turno(id_turno);

ALTER TABLE turno_servicios
    ADD CONSTRAINT FK_turno_servicios_servicios
    FOREIGN KEY (id_servicio) REFERENCES servicios(id_servicio);
