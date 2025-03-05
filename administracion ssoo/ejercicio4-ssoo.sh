#!/bin/bash

read -p "Introduce el nombre del fichero (Ejercicio 2): " fic  # Solicita el nombre del fichero
al="$HOME/$fic"  # Define la ruta del fichero

[ ! -f "$al" ] && echo "Error: No existe o no es un fichero válido." && exit 1  # Verifica si el fichero es válido
[ ! -r "$al" ] && echo "Error: No tienes permisos de lectura." && exit 1  # Verifica los permisos de lectura

read -p "Introduce el nombre o apellido a buscar: " query  # Solicita el término a buscar

resultados=$(grep -i "$query" "$al")  # Busca el término en el fichero

[ -z "$resultados" ] && echo "No se encontraron usuarios con '$query'." && exit 1  # Si no hay resultados, muestra un mensaje

# Muestra los resultados en formato tabla
echo -e "\nResultados encontrados:"
echo "-----------------------------------"
echo -e "Nº\tNombre\tApellido1\tApellido2"
echo "-----------------------------------"
echo "$resultados" | awk -F ',' '{ printf "%-3s\t%-10s\t%-10s\t%-10s\n", $1, $2, $3, $4 }'  
echo "-----------------------------------"

fecha=$(date +"%d-%m-%Y")  # Fecha actual
log_general="$HOME/$fecha.log"  # Log general
logindividual="$HOME/${fecha}$(date +%s).txt"  # Log individual

# Guarda los resultados en los logs
echo "[$(date +"%T")] Consulta: '$query'" >> "$log_general"
echo "$resultados" >> "$log_general"
echo "[$(date +"%T")] Consulta: '$query'" > "$log_individual"
echo "$resultados" >> "$log_individual"

echo "Consulta guardada en:"
echo "  - General: $log_general"
echo "  - Individual: $log_individual"
