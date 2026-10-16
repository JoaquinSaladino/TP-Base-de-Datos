-- Registrar Varios Usuarios.

INSERT INTO Usuarios (correo,pais)
VALUES 
    ('cvasquez@fi.uba.ar','Argentina'),
    ('flamas@fi.uba.ar','Argentina'),
    ('lcascini@fi.uba.ar','Argentina'),
    ('jsaladino@fi.uba.ar','Argentina'),
    ('mgomez@fi.uba.ar','Argentina');


-- Registrar Varios Videos

INSERT INTO Videos (enlace, precio_por_vista)
VALUES
    ('https://youtu.be/fOW8Y09GVek', 2),
    ('https://youtu.be/bBZF6PWEL0o', 5),
    ('https://youtu.be/0B3gUBkeSo8', 8),
    ('https://youtu.be/xeXV1KoX034', 3),
    ('https://youtu.be/MUztVYnj0-Y', 1);

INSERT INTO Videos(enlace, likes, dislikes, precio_por_vista, vistas)
VALUES 
    ('https://youtu.be/le10Vvapvh0', 100, 30, 2, 200000),
    ('https://youtu.be/qTE6hE1a_vU', 5000, 4142, 1, 1000000),
    ('https://youtu.be/yFwPswAfvqw', 5000, 4000, 4, 100000);
    ('https://youtu.be/jPCJIB1f7jk', 4300000,5000,9,180000000)

INSERT INTO Videos(enlace, vistas)
VALUES 
    ('https://youtu.be/s12W7MrivnY', 9999999),
    ('https://youtu.be/LUORMA2NvmM', 9999999);

INSERT INTO Videos(enlace, likes)
VALUES 
    ('https://youtu.be/y3cvKK9wDUw', 9999999),
    ('https://youtu.be/A6xe4tKdx_c', 9999999);


-- Registrar canales

INSERT INTO Canales(nombre, tema)
VALUES 
    ('Base de Datos - FIUBA','Bases de Datos'),
    ('Algoritmos Fiuba Curso Buchwald','Algoritmos')
    ('Probabilidad Fiuba','Probabilidad y Estadisticas'),
    ('fiuba-sisop','Sistemas Operativos');

INSERT INTO Suscripciones(correo,nombre)
VALUES 
    ('flamas@fi.uba.ar','Base de Datos - FIUBA'),
    ('flamas@fi.uba.ar','Algoritmos Fiuba Curso Buchwald'),
    ('cvasquez@fi.uba.ar','Base de Datos - FIUBA'),
    ('jsaladino@fi.uba.ar','Base de Datos - FIUBA'),
    ('jsaladino@fi.uba.ar','Probabilidad Fiuba'),
    ('jsaladino@fi.uba.ar','Algoritmos Fiuba Curso Buchwald'),
    ('mgomez@fi.uba.ar','Base de Datos - FIUBA'),
    ('mgomez@fi.uba.ar','fiuba-sisop'),
    ('lcascini@fi.uba.ar','Base de Datos - FIUBA'),
    ('lcascini@fi.uba.ar','Probabilidad Fiuba');