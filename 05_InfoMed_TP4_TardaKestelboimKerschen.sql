-- Consigna 5: nombre y dirección de los pacientes que viven en Buenos Aires
SELECT nombre, calle, numero, ciudad
FROM pacientes
WHERE ciudad = 'Buenos Aires'
ORDER BY nombre;
