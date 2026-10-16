SET search_path TO bdd_tp;

-------------------- Creacion grupo usuarios


CREATE ROLE administrador
LOGIN PASSWORD 'admin123';

CREATE ROLE observador
LOGIN NOINHERIT PASSWORD 'observador123';


GRANT USAGE ON SCHEMA bdd_tp TO administrador;
GRANT USAGE ON SCHEMA bdd_tp TO observador;

------------------------------ Cracion de vistas de las tablas

CREATE VIEW vista_usuarios AS
SELECT *
FROM usuarios;

CREATE VIEW vista_videos AS
SELECT *
FROM videos;

CREATE VIEW vista_canales AS
SELECT *
FROM canales;

CREATE VIEW vista_suscripciones AS
SELECT *
FROM suscripciones;

-----------------------------Creacion de permisos de los usuarios

REVOKE ALL PRIVILEGES
ON TABLE usuarios, videos, canales, suscripciones
FROM observador;

GRANT SELECT ON
    vista_usuarios,
    vista_videos,
    vista_canales,
    vista_suscripciones
TO observador;

REVOKE INSERT, UPDATE, DELETE, TRUNCATE
ON vista_usuarios, vista_videos,
   vista_canales, vista_suscripciones
FROM observador;

------------------- Crear permisos de administrador

GRANT USAGE ON SCHEMA bdd_tp TO administrador;

GRANT ALL PRIVILEGES
ON ALL TABLES IN SCHEMA bdd_tp
TO administrador;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA bdd_tp
TO administrador;


