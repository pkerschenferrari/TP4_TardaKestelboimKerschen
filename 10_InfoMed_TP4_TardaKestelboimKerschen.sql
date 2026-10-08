-- Consigna 10: pacientes con fecha y diagnóstico de las consultas de agosto de 2024
SELECT p.nombre,
       c.fecha,
       c.diagnostico
FROM consultas c
JOIN pacientes p ON c.id_paciente = p.id_paciente
WHERE c.fecha >= '2024-08-01'
  AND c.fecha <  '2024-09-01'
ORDER BY c.fecha, p.nombre;
