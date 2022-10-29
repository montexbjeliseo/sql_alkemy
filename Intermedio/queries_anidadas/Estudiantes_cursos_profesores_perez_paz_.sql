/*Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.*/
SELECT * 
  FROM ESTUDIANTE 
  WHERE legajo in (SELECT e.legajo 
                   FROm ESTUDIANTE e
                   INNER JOIN INSCRIPCION i ON i.ESTUDIANTE_legajo = e.legajo
                   INNER JOIN CURSO c ON i.CURSO_codigo = c.codigo
                   INNER JOIN PROFESOR p ON p.id = c.profesor_id
                   WHERE (p.apellido = "Pérez" OR p.apellido = "Paz")
                  )