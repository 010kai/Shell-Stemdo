#!/bin/bash

read -p "Introduce el nombre del fichero que creaste en el ejercicio 2: " fic
al="$HOME/$fic"

if [ -e "$al" ]; then
    if [ -f "$al" ]; then
        if [ -r "$al" ]; then
            echo "El fichero '$fic' tiene permisos de lectura. Mostrando contenido..."

            # Mostrar el contenido en formato tabla usando cat, awk y printf
            echo "--------------------------------------------"
            awk -F ':' 'BEGIN { printf "| %-3s | %-10s | %-10s | %-10s |\n", "Nº", "Nombre", "Apellido1", "Apellido2"; print "|-----|------------|------------|------------|"} 
            { printf "| %-3s | %-10s | %-10s | %-10s |\n", $1, $2, $3, $4 }' "$al"
            echo "--------------------------------------------"

        else
            echo "No tienes permisos de lectura sobre el fichero '$fic'."
        fi
    else
        echo "'$fic' no es un fichero regular."
    fi
else
    echo "El fichero '$fic' no existe en tu directorio de inicio."
fi
