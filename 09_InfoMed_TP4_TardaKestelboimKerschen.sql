-- Consigna 9: cantidad de recetas emitidas por cada médico
SELECT m.id_medico,
       m.nombre,
       COUNT(r.id_receta) AS cantidad_recetas
FROM medicos m
LEFT JOIN recetas r ON m.id_medico = r.id_medico
GROUP BY m.id_medico, m.nombre
ORDER BY cantidad_recetas DESC, m.nombre;
