/*Escriba una consulta para saber, de la tabla PROFESOR, 
el salario m�nimo de los profesores nacidos en la d�cada del 80*/

SELECT MIN(salario) FROM PROFESOR WHERE fecha_nacimiento BETWEEN "1980-*-*" AND "1989-*-*";