SELECT * 
FROM ESTUDIANTE
WHERE legajo in (
  SELECT e.legajo FROM ESTUDIANTE e
  LEFT JOIN INSCRIPCION i On i.ESTUDIANTE_legajo = e.legajo
  LEFT JOIN CURSO c ON c.codigo = i.curso_codigo
  WHERE NOT(i.CURSO_codigo = 105)
)