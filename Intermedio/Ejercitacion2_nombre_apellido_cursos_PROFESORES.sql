SELECT p.nombre, p.apellido, COUNT(c.profesor_id) as "Cursos" FROM
PROFESOR p
INNER JOIN CURSO c ON c.profesor_id = p.id GROUP BY p.nombre; 