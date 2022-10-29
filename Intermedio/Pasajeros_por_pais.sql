SELECT p.nombre AS "país", COUNT(*) as "pasajeros" 
FROM PAIS p
INNER JOIN PASAJERO pax ON p.idpais = pax.idpais
GROUP BY p.nombre;