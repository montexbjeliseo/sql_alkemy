SELECT e.nombre, e.apellido, COUNT(i.ESTUDIANTE_legajo) as "Cursos" FROM
ESTUDIANTE e
INNER JOIN INSCRIPCION i On i.ESTUDIANTE_legajo = legajo
INNER JOIN CURSO c ON c.codigo = i.CURSO_codigo GROUP BY e.nombre ORDER BY c.nombre; 