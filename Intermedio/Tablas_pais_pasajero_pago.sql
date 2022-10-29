CREATE TABLE PAIS(
  idpais int PRIMARY key,
  nombre VARCHAR(45)
);

CREATE TABLE PASAJERO(
  idpasajero int PRIMARY Key,
  nombre VARCHAR(45),
  apaterno VARCHAR(45),
  amaterno VARCHAR(45),
  tipo_documento VARCHAR,
  numero_documento int Not NULL,
  fecha_nacimiento DATE,
  idpais int NOT NULL,
  telenofo int,
  email VARCHAR,
  clave VARCHAR,
  FOREIGN KEY(idpais) REFERENCES PAIS(idpais)
);

CREATE TABLE PAGO(
  idpago int PRIMARY KEY NOT NULL,
  idreserva int NOT NULL,
  fecha DATE NOT NULL,
  idpasajero int NOT NULL,
  monto float NOT NULL,
  tipo_comprobante VARCHAR NOT NULL,
  num_comprobante int NOT NULL,
  impuesto float,
  FOREIGN KEY(idpasajero) REFERENCES PASAJERO(idpasajero)
);