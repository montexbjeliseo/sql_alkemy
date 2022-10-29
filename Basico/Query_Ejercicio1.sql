SELECT profesor.Apellido , curso.Nombre, curso.turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;