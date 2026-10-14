-- Consigna 19: total de pacientes distintos atendidos por cada médico
SELECT m.nombre AS medico,
       COUNT(DISTINCT c.id_paciente) AS total_pacientes
FROM medicos m
LEFT JOIN consultas c ON c.id_medico = m.id_medico
GROUP BY m.id_medico, m.nombre
ORDER BY total_pacientes DESC, m.nombre;
