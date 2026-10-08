-- Consigna 16: nombre del paciente con la fecha de su última consulta y el diagnóstico asociado
WITH ultima_consulta AS (
    SELECT id_paciente,
           MAX(fecha) AS fecha_ultima
    FROM consultas
    GROUP BY id_paciente
)
SELECT p.nombre,
       c.fecha AS fecha_ultima_consulta,
       c.diagnostico
FROM ultima_consulta u
JOIN consultas c ON c.id_paciente = u.id_paciente
                AND c.fecha = u.fecha_ultima
JOIN pacientes p ON p.id_paciente = u.id_paciente
ORDER BY c.fecha DESC, p.nombre;
