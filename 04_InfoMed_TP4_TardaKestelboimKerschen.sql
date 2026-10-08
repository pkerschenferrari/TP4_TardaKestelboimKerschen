-- Consigna 4: actualización de la dirección de Luciana Gómez
UPDATE pacientes
SET calle  = 'Calle Corrientes',
    numero = '500',
    ciudad = 'Buenos Aires'
WHERE nombre = 'Luciana Gómez'
  AND calle  = 'Avenida Las Heras'
  AND numero = '121';

SELECT id_paciente, nombre, calle, numero, ciudad
FROM pacientes
WHERE nombre = 'Luciana Gómez';
