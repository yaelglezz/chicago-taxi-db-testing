-- =============================================================================
-- Ejercicio 3: Clasificación de condiciones meteorológicas para tarifas
-- Objetivo: Agrupar el clima en 'Bad' (lluvia/tormenta) o 'Good' para auditar 
--           el cálculo correcto del coeficiente multiplicador de tarifa.
-- Periodo: 05-Nov-2017 12:00 AM a 06-Nov-2017 12:00 AM
-- =============================================================================

SELECT 
    ts,
    CASE 
        WHEN description LIKE '%rain%' OR description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM weather_records
WHERE ts BETWEEN '2017-11-05 00:00:00' AND '2017-11-06 00:00:00';
