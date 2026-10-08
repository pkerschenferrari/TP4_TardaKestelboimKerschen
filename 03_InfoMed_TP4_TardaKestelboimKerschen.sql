-- Consigna 3: pacientes menores de edad (usa la vista creada en la consigna 2)
SELECT nombre, edad
FROM vista_pacientes
WHERE edad < 18
ORDER BY edad;
