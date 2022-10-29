SELECT codigo,
              nombre,
              CASE 
                      WHEN descripcion is null THEN "El curso no tiene descripci�n" 
                        ELSE descripcion
              END "Descripci�n"
FROM CURSO;