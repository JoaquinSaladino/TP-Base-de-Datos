-- SQLBook: Code
CREATE SCHEMA bdd_tp;

SET search_path TO bdd_tp;

CREATE DOMAIN dominio_correo AS VARCHAR(64) CHECK (VALUE LIKE '%@%.%' AND POSITION(' ' IN VALUE) = 0);
CREATE DOMAIN dominio_pais AS VARCHAR(30) CHECK (UPPER(pais) IN ('ARGENTINA', 'CHILE', 'PARAGUAY', 'URUGUAY', 'BRASIL'));


CREATE TABLE Usuarios (
    correo dominio_correo PRIMARY KEY,
    pais dominio_pais,
    ingresos INT CHECK (ingresos > 0)
);


CREATE TABLE Canales (
    nombre VARCHAR(32) PRIMARY KEY,
    tema VARCHAR(32),
    correo_usuario VARCHAR(64),
    FOREIGN KEY (correo_usuario) REFERENCES Usuarios(correo)
);


CREATE TABLE Videos (
    enlace VARCHAR(255) PRIMARY KEY,
    me_gustas INT DEFAULT 0 CHECK (me_gustas >= 0),
    no_me_gustas INT DEFAULT 0 CHECK (no_me_gustas >= 0),
    precio_por_vista FLOAT DEFAULT 1 CHECK (precio_por_vista > 0),
    vistas INT DEFAULT 0 CHECK (vistas >= 0),
    nombre_canal VARCHAR(32),
    FOREIGN KEY (nombre_canal) REFERENCES Canales(nombre)
);


CREATE TABLE Suscripciones (
    correo_usuario VARCHAR(64),
    nombre_canal VARCHAR(32),
    FOREIGN KEY (correo_usuario) REFERENCES Usuarios(correo),
    FOREIGN KEY (nombre_canal) REFERENCES Canales(nombre),
    PRIMARY KEY (correo_usuario, nombre_canal)
);