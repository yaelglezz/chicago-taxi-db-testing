-- =============================================================================
-- Ejercicio 4: Auditoría de volumen de viajes por compañía
-- Objetivo: Reconciliar discrepancias en ganancias reportadas tras actualización,
--           vinculando tablas relacionales y agrupando el total de viajes.
-- Fechas analizadas: 15 y 16 de noviembre de 2017
-- =============================================================================

SELECT 
    c.company_name,
    COUNT(t.trip_id) AS trips_amount
FROM cabs c
LEFT JOIN trips t ON c.cab_id = t.cab_id
WHERE t.start_ts::date BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY c.company_name
ORDER BY trips_amount DESC;
