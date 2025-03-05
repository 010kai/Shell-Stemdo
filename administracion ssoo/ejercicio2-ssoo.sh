#!/bin/bash

read -p "Introduce el nombre de un directorio: " dir  # Solicita el directorio
read -p "Introduce el nombre de un fichero: " nom  # Solicita el fichero

if [ -d "$dir" ]; then  # Verifica si el directorio existe
    if [ -f "$dir/$nom" ]; then  # Verifica si el fichero existe
        echo "El fichero '$nom' tiene los siguientes permisos:"
        ls -l "$dir/$nom"  # Muestra permisos del fichero

        echo "Introduce 5 nombres completos:"

        for numero_usuario in {1..5}  # Bucle para 5 usuarios
        do
            read -p "Introduce el nombre completo del usuario $numero_usuario: " nombre_completo  # Solicita nombre completo

            IFS=' ' read -r nombre apellido1 apellido2 <<< "$nombre_completo"  # Separa el nombre en partes

            if [ -z "$nombre" ] || [ -z "$apellido1" ] || [ -z "$apellido2" ]; then  # Verifica datos completos
                echo "Error: Nombre completo inválido."
                ((numero_usuario--))  # Repite si es inválido
            else
                echo "$numero_usuario:$nombre:$apellido1:$apellido2" >> "$dir/$nom"  # Guarda los datos
                echo "Datos almacenados para el usuario $numero_usuario."
            fi
        done

    else
        echo "El fichero '$nom' no existe."  # Si no existe el fichero
    fi
else
    echo "El directorio '$dir' no existe."  # Si no existe el directorio
fi
