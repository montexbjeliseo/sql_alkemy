SELECT turno, COUNT(*)
FROM CURSO
GROUP BY turno HAVING COUNT(*) >= 2;