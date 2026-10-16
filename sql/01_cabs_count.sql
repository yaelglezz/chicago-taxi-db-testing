-- =============================================================================
-- Ejercicio 1: Conteo total de vehículos en servicio
-- Objetivo: Determinar si el número de taxis en las calles cumple con la meta 
--           de 10,550 vehículos disponibles.
-- =============================================================================

SELECT COUNT(DISTINCT(vehicle_id)) 
FROM cabs;
