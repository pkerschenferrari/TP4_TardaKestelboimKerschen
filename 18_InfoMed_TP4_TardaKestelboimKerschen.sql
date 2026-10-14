-- Consigna 18: medicamento con su total de recetas, junto con el médico que lo recetó y el paciente
WITH total_por_medicamento AS (
    SELECT id_medicamento,
           COUNT(*) AS total_recetas
    FROM recetas
    GROUP BY id_medicamento
)
SELECT med.nombre AS medicamento,
       t.total_recetas,
       m.nombre AS medico,
       p.nombre AS paciente
FROM recetas r
JOIN total_por_medicamento t ON r.id_medicamento = t.id_medicamento
JOIN medicamentos med        ON r.id_medicamento = med.id_medicamento
JOIN medicos m               ON r.id_medico = m.id_medico
JOIN pacientes p             ON r.id_paciente = p.id_paciente
ORDER BY t.total_recetas DESC, med.nombre, m.nombre, p.nombre;
