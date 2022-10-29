SELECT COUNT(*) 
FROM PROFESOR p
INNER JOIN CURSO c ON c.profesor_id = p.id
WHERE c.turno = "Noche"