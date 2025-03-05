#!/bin/bash

read -p "Introduce el nombre del fichero que creaste en el ejercicio 2: " fic  # Solicita el nombre del fichero
al="$HOME/$fic"  # Asigna la ruta completa del fichero

if [ -e "$al" ]; then  # Verifica si el fichero existe
    if [ -f "$al" ]; then  # Verifica si es un fichero regular
        if [ -r "$al" ]; then  # Verifica si tiene permisos de lectura
            echo "El fichero '$fic' tiene permisos de lectura. Mostrando contenido..."

            # Muestra el contenido en formato tabla usando awk
            echo "--------------------------------------------"
            awk -F ':' 'BEGIN { printf "| %-3s | %-10s | %-10s | %-10s |\n", "Nº", "Nombre", "Apellido1", "Apellido2"; print "|-----|------------|------------|------------|"} 
            { printf "| %-3s | %-10s | %-10s | %-10s |\n", $1, $2, $3, $4 }' "$al"
            echo "--------------------------------------------"

        else
            echo "No tienes permisos de lectura sobre el fichero '$fic'."  # Si no tiene permisos de lectura
        fi
    else
        echo "'$fic' no es un fichero regular."  # Si no es un fichero regular
    fi
else
    echo "El fichero '$fic' no existe en tu directorio de inicio."  # Si el fichero no existe
fi
