-- Consigna 20: consultas de cada médico a pacientes menores de edad e indicación de si es pediatra
-- Usa la vista de la consigna 2 para obtener la edad de los pacientes
SELECT m.nombre AS medico,
       COUNT(v.id_paciente) AS consultas_menores,
       CASE WHEN e.nombre = 'Pediatría' THEN TRUE ELSE FALSE END AS es_pediatra
FROM medicos m
LEFT JOIN especialidades e  ON m.especialidad_id = e.id_especialidad
LEFT JOIN consultas c       ON c.id_medico = m.id_medico
LEFT JOIN vista_pacientes v ON v.id_paciente = c.id_paciente
                           AND v.edad < 18
GROUP BY m.id_medico, m.nombre, e.nombre
ORDER BY consultas_menores DESC, m.nombre;
