SELECT c.nombre, 
  CASE 
    WHEN c.codigo IN (SELECT i.CURSO_codigo)  THEN c.cupo - COUNT()
    ELSE c.cupo
  END "cupos"
FROM CURSO c
LEFT JOIN INSCRIPCION i ON i.CURSO_codigo = c.codigo GROUP BY c.nombre;