SELECT p.id, count(*) as 'Cantidad de estudiantes' 
from PROFESOR p 
INNER JOIN CURSO c on p.id = c.profesor_id 
INNER JOIN INSCRIPCION i on c.codigo = i.CURSO_codigo GROUP by p.id;