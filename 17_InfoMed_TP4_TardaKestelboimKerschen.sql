-- Consigna 17: total de consultas de cada médico con cada paciente
SELECT m.nombre AS medico,
       p.nombre AS paciente,
       COUNT(c.id_consulta) AS total_consultas
FROM consultas c
JOIN medicos m   ON c.id_medico = m.id_medico
JOIN pacientes p ON c.id_paciente = p.id_paciente
GROUP BY m.id_medico, m.nombre, p.id_paciente, p.nombre
ORDER BY m.nombre, p.nombre;
