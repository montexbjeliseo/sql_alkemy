/*Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.*/
SELECT e.legajo, COUNT(i.ESTUDIANTE_legajo) as "Cursos" FROM
ESTUDIANTE e
LEFT JOIN INSCRIPCION i On i.ESTUDIANTE_legajo = legajo
LEFT JOIN CURSO c ON c.codigo = i.CURSO_codigo GROUP BY e.nombre HAVING (COUNT(i.ESTUDIANTE_legajo) > 1);