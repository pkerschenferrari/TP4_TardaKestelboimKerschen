-- Consigna 7: cantidad de pacientes por sexo en cada ciudad
SELECT p.ciudad,
       s.descripcion AS sexo_biologico,
       COUNT(*) AS cantidad_pacientes
FROM pacientes p
JOIN sexobiologico s ON p.id_sexo = s.id_sexo
GROUP BY p.ciudad, s.descripcion
ORDER BY p.ciudad, s.descripcion;
