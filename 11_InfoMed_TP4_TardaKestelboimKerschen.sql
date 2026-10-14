-- Consigna 11: medicamentos prescritos más de una vez por el médico con ID 2
SELECT m.nombre AS medicamento,
       COUNT(*) AS veces_prescrito
FROM recetas r
JOIN medicamentos m ON r.id_medicamento = m.id_medicamento
WHERE r.id_medico = 2
GROUP BY m.id_medicamento, m.nombre
HAVING COUNT(*) > 1
ORDER BY veces_prescrito DESC;
