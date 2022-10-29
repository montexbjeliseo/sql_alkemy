SELECT nombre as "Pasajero", SUM(monto) as "Total pagos"
FROM PASAJERO
INNER JOIN PAGO pag ON PASAJERO.idpasajero = pag.idpasajero
GROUP BY nombre;