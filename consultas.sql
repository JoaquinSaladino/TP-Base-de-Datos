-- Registrar un usuario.

INSERT INTO Usuarios (correo, pais, ingresos)
VALUES ('jsaladino@fi.uba.ar, Argentina, 1000');


-- Editar un usuario.

UPDATE Usuarios
SET ingreso = ingreso + 1
WHERE correo = 'jsaladino@fi.uba.ar'; 


-- Eliminar un usuario.

DELETE
FROM Usuarios
WHERE correo = 'jsaladino@fi.uba.ar';


-- Crear un video.

INSERT INTO Videos (enlace, precio_por_vista)
VALUES ('https://www.youtube.com/watch?v=hPr-Yc92qaY', 2);


-- Editar un video.

UPDATE Videos
SET vistas = vistas + 1
WHERE enlace = 'https://www.youtube.com/watch?v=hPr-Yc92qaY';


-- Eliminar un video.

DELETE
FROM Videos
WHERE enlace = 'https://www.youtube.com/watch?v=hPr-Yc92qaY';


-- Crear un canal.

INSERT INTO Canales(nombre, tema)
VALUES ('HolaSoyGerman','Entretenimiento');


-- Editar un canal.

UPDATE Canales 
SET tema = 'Polvos Magicos'
WHERE nombre = 'HolaSoyGerman'; 


-- Eliminar un canal.

DELETE  
FROM Canales
WHERE nombre = 'HolaSoyGerman'


-- Listar todos los usuarios de la aplicación.

SELECT *
FROM Usuarios;


-- Listar los canales más populares (los que tienen más suscritptores).

SELECT c.*, COUNT(*) AS suscriptores
FROM Canales AS c
JOIN Suscripciones AS s
    ON c.nombre = s.nombre
GROUP BY c.nombre
HAVING COUNT(*) >= ALL (
    SELECT COUNT(*)
    FROM Suscripciones
    GROUP BY nombre
);


-- Listar los videos más populares (los que tienen más “me gusta”).

SELECT *
FROM Videos
WHERE likes >= ALL(
    SELECT likes FROM videos
);


-- Contabilizar la cantidad de usuarios, agrupados por país.

SELECT pais, COUNT(*) AS cantidad_usuarios
FROM Usuarios
GROUP BY pais;