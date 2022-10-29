/*Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.*/

SELECT carrera, COUNT(*) as "alumnos" FROM ESTUDIANTE WHERE carrera = "Mecánica";