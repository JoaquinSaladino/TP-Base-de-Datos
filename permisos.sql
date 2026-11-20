SET search_path TO bdd_tp;

-------------------- Administrador ------------------
CREATE ROLE administrador;
GRANT USAGE ON SCHEMA bdd_tp TO administrador;
GRANT CONNECT ON DATABASE postgres TO administrador;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA bdd_tp TO administrador;
CREATE USER usuarioAdmin WITH PASSWORD '123';
GRANT administrador TO usuarioAdmin;

-------------------- Observador ------------------
CREATE ROLE observador;
GRANT USAGE ON SCHEMA bdd_tp TO observador;
GRANT CONNECT ON DATABASE postgres TO observador;
GRANT SELECT ON ALL TABLES IN SCHEMA bdd_tp TO observador;
CREATE USER usuarioObservador WITH PASSWORD '456';
GRANT observador TO usuarioObservador;