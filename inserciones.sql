-- Registrar Varios Usuarios.

INSERT INTO Usuarios (correo, pais)
VALUES 
    ('cvasquez@fi.uba.ar','Argentina'),
    ('flamas@fi.uba.ar','Argentina'),
    ('lcascini@fi.uba.ar','Argentina'),
    ('jsaladino@fi.uba.ar','Argentina'),
    ('mgomez@fi.uba.ar','Argentina');
    ('profesor1@fi.uba.ar','Uruguay');
    ('profesor2@fi.uba.ar','Chile');
    ('profesor3@fi.uba.ar','Paraguay');

-- Registrar Varios Videos

INSERT INTO Videos (enlace, precio_por_vista, nombre_canal)
VALUES
    ('https://youtu.be/fOW8Y09GVek', 2 ,'Base de Datos - FIUBA'),
    ('https://youtu.be/bBZF6PWEL0o', 5,'Base de Datos - FIUBA'),
    ('https://youtu.be/0B3gUBkeSo8', 8,'Algoritmos Fiuba Curso Buchwald'),
    ('https://youtu.be/xeXV1KoX034', 3,'Probabilidad Fiuba'),
    ('https://youtu.be/MUztVYnj0-Y', 1,'fiuba-sisop');

INSERT INTO Videos (enlace, me_gustas, no_me_gustas, precio_por_vista, vistas, nombre_canal)
VALUES 
    ('https://youtu.be/le10Vvapvh0', 100, 30, 2, 200000,'Base de Datos - FIUBA'),
    ('https://youtu.be/qTE6hE1a_vU', 5000, 4142, 1, 1000000,'Probabilidad Fiuba'),
    ('https://youtu.be/yFwPswAfvqw', 5000, 4000, 4, 100000,'fiuba-sisop');
    ('https://youtu.be/jPCJIB1f7jk', 4300000,5000,9,180000000 , 'Algoritmos Fiuba Curso Buchwald')

INSERT INTO Videos (enlace, vistas, nombre_canal)
VALUES 
    ('https://youtu.be/s12W7MrivnY', 9999999 ,'Base de Datos - FIUBA'),
    ('https://youtu.be/LUORMA2NvmM', 9999999 ,'Probabilidad Fiuba');

INSERT INTO Videos (enlace, me_gustas, nombre_canal)
VALUES 
    ('https://youtu.be/y3cvKK9wDUw', 9999999 ,'fiuba-sisop'),
    ('https://youtu.be/A6xe4tKdx_c', 9999999 , 'Algoritmos Fiuba Curso Buchwald');


-- Registrar canales

INSERT INTO Canales (nombre, tema, correo_usuario)
VALUES 
    ('Base de Datos - FIUBA','Bases de Datos' , 'profesor1@fi.uba.ar'),
    ('Algoritmos Fiuba Curso Buchwald','Algoritmos' ,'profesor1@fi.uba.ar')
    ('Probabilidad Fiuba','Probabilidad y Estadisticas' ,'profesor2@fi.uba.ar'),
    ('fiuba-sisop','Sistemas Operativos' , 'profesor3@fi.uba.ar');

INSERT INTO Suscripciones (correo_usuario, nombre_canal)
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