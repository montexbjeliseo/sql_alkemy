SELECT codigo,
              nombre,
              CASE 
                      WHEN descripcion is null THEN "El curso no tiene descripción" 
                        ELSE descripcion
              END "Descripción"
FROM CURSO;