SELECT nombre as "Pasajero", AVG(monto) as "Promedio de pagos"
FROM PASAJERO
INNER JOIN PAGO pag ON PASAJERO.idpasajero = pag.idpasajero
GROUP BY nombre;