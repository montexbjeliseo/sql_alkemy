/*Escriba una consulta para saber, de la tabla PROFESOR, 
el salario mínimo de los profesores nacidos en la década del 80*/

SELECT MIN(salario) FROM PROFESOR WHERE fecha_nacimiento BETWEEN "1980-*-*" AND "1989-*-*";