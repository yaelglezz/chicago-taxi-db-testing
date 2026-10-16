#!/bin/bash
# =============================================================================
# Análisis e Inspección de Logs en Servidor Remoto
# Objetivo: Extracción de patrones de error y aislamiento de peticiones HTTP
# =============================================================================

# 1. Búsqueda de tráfico por dirección IP en archivos de logs
grep -nR "^233\.201" ~/logs/2019/12

# 2. Creación de directorios para reporte de fallos (Bugs)
mkdir -p ~/bug1/events

# 3. Copia e inspección de logs principales
cat ~/logs/2019/12/apache_2019-12-30.txt > ~/bug1/main.txt

# 4. Filtrado de errores del cliente (HTTP 400 Bad Request)
grep -nR " 400 " ~/bug1/main.txt > ~/bug1/events/400.txt

# 5. Filtrado de errores del servidor (HTTP 500 Internal Server Error)
grep -nR " 500 " ~/bug1/main.txt > ~/bug1/events/500.txt
