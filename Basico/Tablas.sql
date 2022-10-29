CREATE TABLE PROFESOR(
  id int PRIMARY KEY, 
  nombre VARCHAR NOT NULL, 
  apellido VARCHAR NOT NULL, 
  fecha_nacimiento DATE, 
  salario FLOAT
);

CREATE TABLE CURSO(
  codigo int not NULL, 
  nombre VARCHAR NOT NULL,
  descripcion VARCHAR,
  cupo INT NOT NULL DEFAULT 20,
  turno VARCHAR NOT NULL,
  profesor_id int NOT NULL,
  PRIMARY key(codigo),
  FOREIGN KEY(profesor_id) REFERENCES PROFESOR(id)
);