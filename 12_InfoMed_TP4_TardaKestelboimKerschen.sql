-- Consigna 12: cantidad total de recetas recibidas por cada paciente
SELECT p.id_paciente,
       p.nombre,
       COUNT(r.id_receta) AS cantidad_recetas
FROM pacientes p
LEFT JOIN recetas r ON p.id_paciente = r.id_paciente
GROUP BY p.id_paciente, p.nombre
ORDER BY cantidad_recetas DESC, p.nombre;
