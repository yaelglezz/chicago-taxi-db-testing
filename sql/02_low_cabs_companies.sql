-- =============================================================================
-- Ejercicio 2: Identificación de compañías con flota baja (< 100 automóviles)
-- Objetivo: Filtrar empresas que cuentan con menos de 100 taxis utilizando
--           funciones de agregación y la cláusula HAVING.
-- =============================================================================

SELECT 
    company_name,
    COUNT(vehicle_id) AS cnt
FROM cabs
GROUP BY company_name
HAVING COUNT(vehicle_id) < 100
ORDER BY cnt DESC;
