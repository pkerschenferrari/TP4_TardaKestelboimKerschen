-- Consigna 15: medicamentos que ocupan las dos primeras posiciones en cantidad de recetas
-- Se contemplan empates: se devuelven todos los medicamentos cuya cantidad de recetas
-- coincide con alguno de los dos valores más altos.
WITH recetas_por_medicamento AS (
    SELECT m.nombre AS medicamento,
           COUNT(r.id_receta) AS cantidad_recetas
    FROM medicamentos m
    JOIN recetas r ON r.id_medicamento = m.id_medicamento
    GROUP BY m.id_medicamento, m.nombre
)
SELECT medicamento, cantidad_recetas
FROM recetas_por_medicamento
WHERE cantidad_recetas IN (
    SELECT DISTINCT cantidad_recetas
    FROM recetas_por_medicamento
    ORDER BY cantidad_recetas DESC
    LIMIT 2
)
ORDER BY cantidad_recetas DESC, medicamento;
