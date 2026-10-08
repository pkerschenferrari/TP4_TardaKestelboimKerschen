-- Consigna 8: consultas del médico con ID 3 durante agosto de 2024
SELECT *
FROM consultas
WHERE id_medico = 3
  AND fecha >= '2024-08-01'
  AND fecha <  '2024-09-01'
ORDER BY fecha;
