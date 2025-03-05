#!/bin/bash

read -p "Introduce el nombre de un directorio: " dir
read -p "Introduce el nombre de un fichero: " nom

if [ -d "$dir" ]; then
    if [ -f "$dir/$nom" ]; then
        echo "El fichero '$nom' tiene los siguientes permisos:"
        ls -l "$dir/$nom"
        
        echo "Introduce 5 nombres completos (nombre, primer apellido, segundo apellido):"
        
        for numero_usuario in {1..5}
        do
            read -p "Introduce el nombre completo del usuario $numero_usuario: " nombre_completo
            
            IFS=' ' read -r nombre apellido1 apellido2 <<< "$nombre_completo"
            
            if [ -z "$nombre" ] || [ -z "$apellido1" ] || [ -z "$apellido2" ]; then
                echo "Error: Por favor, introduce un nombre completo válido con nombre y dos apellidos."
                ((numero_usuario--))  
            else
                echo "$numero_usuario:$nombre:$apellido1:$apellido2" >> "$dir/$nom"
                echo "Datos almacenados para el usuario $numero_usuario."
            fi
        done
        
    else
        echo "El fichero '$nom' no existe en el directorio '$dir'."
    fi
else
    echo "El directorio '$dir' no existe."
fi

