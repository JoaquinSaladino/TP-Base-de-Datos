SET search_path TO bdd_TP;

CREATE SCHEMA bdd_tp;

CREATE DOMAIN dominio_correo AS VARCHAR(64) CHECK (VALUE LIKE '%@%.%' AND POSITION(' ' IN VALUE) = 0) -- chequear si funciona que no haya espacios
CREATE DOMAIN dominio_pais AS VARCHAR(30) CHECK (UPPER(pais) IN ('ARGENTINA', 'CHILE', 'PARAGUAY', 'URUGUAY', 'BRASIL'))


CREATE TABLE Videos (
    enlace VARCHAR(255) PRIMARY KEY,
    likes INT DEFAULT 0,
    dislikes INT DEFAULT 0,
    precio_por_vista FLOAT DEFAULT 1,
    vistas INT DEFAULT 0
);


CREATE TABLE Usuarios (
    correo dominio_correo PRIMARY KEY,
    pais dominio_pais,
    ingresos SERIAL INT DEFAULT 1
);


CREATE TABLE Canales (
    nombre VARCHAR(32) PRIMARY KEY,
    tema VARCHAR(32)
);


CREATE TABLE Suscripciones (
    correo VARCHAR(64),
    nombre VARCHAR(32),
    FOREIGN KEY (correo) REFERENCES Usuarios(correo),
    FOREIGN KEY (nombre) REFERENCES Canales(nombre),
    PRIMARY KEY (correo, nombre)
);