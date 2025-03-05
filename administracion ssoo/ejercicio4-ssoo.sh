#!/bin/bash

read -p "Introduce el nombre del fichero (Ejercicio 2): " fic
al="$HOME/$fic"

[ ! -f "$al" ] && echo "Error: No existe o no es un fichero válido." && exit 1
[ ! -r "$al" ] && echo "Error: No tienes permisos de lectura." && exit 1

read -p "Introduce el nombre o apellido a buscar: " query

resultados=$(grep -i "$query" "$al")

[ -z "$resultados" ] && echo "No se encontraron usuarios con '$query'." && exit 1

echo -e "\nResultados encontrados:"
echo "-----------------------------------"
echo -e "Nº\tNombre\tApellido1\tApellido2"
echo "-----------------------------------"
echo "$resultados" | awk -F ',' '{ printf "%-3s\t%-10s\t%-10s\t%-10s\n", $1, $2, $3, $4 }'
echo "-----------------------------------"

fecha=$(date +"%d-%m-%Y")
log_general="$HOME/$fecha.log"
logindividual="$HOME/${fecha}$(date +%s).txt"

echo "[$(date +"%T")] Consulta: '$query'" >> "$log_general"
echo "$resultados" >> "$log_general"
echo "[$(date +"%T")] Consulta: '$query'" > "$log_individual"
echo "$resultados" >> "$log_individual"

echo "Consulta guardada en:"
echo "  - General: $log_general"
echo "  - Individual: $log_individual"
