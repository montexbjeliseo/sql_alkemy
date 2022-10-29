CREATE TABLE PROFESOR(
  id int PRIMARY KEY, 
  nombre VARCHAR(45) NOT NULL, 
  apellido VARCHAR(45) NOT NULL, 
  fecha_nacimiento DATE, 
  salario FLOAT
);

CREATE TABLE CURSO(
  codigo int not NULL, 
  nombre VARCHAR(45) NOT NULL,
  descripcion VARCHAR(45),
  cupo INT NOT NULL DEFAULT 20,
  turno VARCHAR(45) NOT NULL,
  profesor_id int NOT NULL,
  PRIMARY key(codigo),
  FOREIGN KEY(profesor_id) REFERENCES PROFESOR(id)
);

CREATE TABLE ESTUDIANTE(
  legajo int PRIMARY KEY,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  fecha_nacimiento DATE,
  carrera VARCHAR(45)
);

CREATE TABLE INSCRIPCION(
  numero int PRIMARY KEY,
  CURSO_codigo int,
  ESTUDIANTE_legajo int,
  fecha_hora TIMESTAMP,
  FOREIGN KEY(CURSO_codigo) REFERENCES CURSO(codigo),
  FOREIGN KEY(ESTUDIANTE_legajo) REFERENCES ESTUDIANTE(legajo)
);