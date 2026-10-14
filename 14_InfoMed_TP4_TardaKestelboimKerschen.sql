-- Consigna 14: pacientes con edad mayor al promedio de edad de todos los pacientes (usa la vista de la consigna 2)
SELECT nombre, edad
FROM vista_pacientes
WHERE edad > (SELECT AVG(edad) FROM vista_pacientes)
ORDER BY edad DESC;
