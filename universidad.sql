USE universidad;

CREATE TABLE Profesor(
nombre_profesor varchar(15),
id_consultas numeric(10),
despacho varchar(30) not null,
PRIMARY KEY(nombre_profesor),
FOREIGN KEY(id_consultas) references Consultas(id_consultas)
);

CREATE TABLE Consultas(
id_consultas numeric(10),
dia date not null,
hora time not null,
PRIMARY KEY(id_consultas)
);

CREATE TABLE Areas(
nombre_area varchar(15),
nombre_profesor varchar(15),
nombre_departamento varchar(15),
PRIMARY KEY(nombre_area),
FOREIGN KEY(nombre_profesor) references Profesor(nombre_profesor), 
FOREIGN KEY(nombre_departamento) references Departamento(nombre_departamento)
);

CREATE TABLE Departamento(
nombre_departamento varchar(15),
nombre_profesor varchar(15),
PRIMARY KEY(nombre_departamento),
FOREIGN KEY(nombre_profesor) references Profesor(nombre_profesor)
);

CREATE TABLE Creditos(
id_creditos numeric(15),
creditos_teo numeric(10) not null,
creditos_prac numeric(10) not null,
PRIMARY KEY(id_creditos)
);

CREATE TABLE Grupos(
id_grupos numeric(15),
grupos_teo varchar(10) not null,
grupos_prac varchar(10) not null,
PRIMARY KEY(id_grupos)
);


CREATE TABLE Asignatura(
codigo_asignatura numeric(10),
nombre_area varchar(15),
nombre_titulacion varchar(20),
id_creditos numeric(15),
id_grupos numeric(15),
numero_asignatura numeric(05),
tipo varchar(15) not null,
curso varchar(15) not null,
duracion time(06),
lib_conf_asignatura  varchar(15),
lim_adm varchar(10),
es_compatible_con bit not null,
es_equival_con bit not null,
PRIMARY KEY(codigo_asignatura),
FOREIGN KEY(nombre_area) REFERENCES Areas(nombre_area),
FOREIGN KEY(nombre_titulacion) REFERENCES Titulacion(nombre_titulacion),
FOREIGN KEY(id_creditos) REFERENCES Creditos(id_creditos),
FOREIGN KEY(id_grupos) REFERENCES Grupos(id_grupos)
);

CREATE TABLE Titulacion(
nombre_titulacion varchar(20),
lib_conf_titulacion varchar(15) not null, 
PRIMARY KEY(nombre_titulacion)
);

INSERT INTO Consultas VALUES('012', '2024-01-01', '15:00');
INSERT INTO profesor VALUES('juan alberto', '012', 'universidad');
INSERT INTO Departamento VALUES('ingenieria');
INSERT INTO Creditos VALUES('022', '15', '25');
INSERT INTO Grupos VALUES('023', '15', '25' );
INSERT INTO Titulacion VALUES('ingenieria civil', '1');
INSERT INTO Asignatura VALUES('03', '05', 'ingenieria civil', 'diurno', 'ingenieria', '532:00', '03', '04', '', '');

SELECT*FROM Consultas;
SELECT*FROM Profesor;
SELECT*FROM Departamento;
SELECT*FROM Creditos;
SELECT*FROM Grupos;
SELECT*FROM Titulacion;
SELECT*FROM Asignatura;



