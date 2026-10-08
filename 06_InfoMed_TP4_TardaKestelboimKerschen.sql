-- Consigna 6: corrección de inconsistencias en los nombres de las ciudades
-- Paso 1: se normaliza el texto (espacios sobrantes y mayúsculas/minúsculas)
-- Paso 2: se corrigen abreviaturas y errores de tipeo conocidos
UPDATE pacientes
SET ciudad = CASE LOWER(TRIM(REGEXP_REPLACE(ciudad, '\s+', ' ', 'g')))
                 WHEN 'bs aires'     THEN 'Buenos Aires'
                 WHEN 'buenos aiers' THEN 'Buenos Aires'
                 WHEN 'cordoba'      THEN 'Córdoba'
                 WHEN 'córodba'      THEN 'Córdoba'
                 WHEN 'mendzoa'      THEN 'Mendoza'
                 ELSE INITCAP(TRIM(REGEXP_REPLACE(ciudad, '\s+', ' ', 'g')))
             END;

-- Verificación: cada ciudad debe aparecer escrita de una única forma
SELECT ciudad, COUNT(*) AS cantidad_pacientes
FROM pacientes
GROUP BY ciudad
ORDER BY ciudad;
