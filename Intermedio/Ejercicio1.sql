/*Escriba una consulta para saber cu�ntos estudiantes son de la carrera Mec�nica.*/

SELECT carrera, COUNT(*) as "alumnos" FROM ESTUDIANTE WHERE carrera = "Mec�nica";