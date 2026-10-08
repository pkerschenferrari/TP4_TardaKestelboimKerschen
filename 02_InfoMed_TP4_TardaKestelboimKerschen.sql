-- Consigna 2: vista con la edad calculada dinámicamente a partir de la fecha de nacimiento
CREATE VIEW vista_pacientes AS
SELECT
    p.id_paciente,
    p.nombre,
    p.fecha_nacimiento,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, p.fecha_nacimiento))::INT AS edad,
    s.descripcion AS sexo_biologico,
    p.calle,
    p.numero,
    p.ciudad
FROM pacientes p
JOIN sexobiologico s ON p.id_sexo = s.id_sexo;

SELECT * FROM vista_pacientes ORDER BY id_paciente;
