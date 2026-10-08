-- Consigna 1: índice sobre la columna ciudad para acelerar las consultas que filtran o agrupan por ciudad
CREATE INDEX idx_pacientes_ciudad ON pacientes (ciudad);

-- Verificación: índices existentes sobre la tabla pacientes
SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'pacientes';
