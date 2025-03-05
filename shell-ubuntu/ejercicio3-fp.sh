#!/bin/bash

echo "El nombre del script es: $0"  # Muestra el nombre del script

echo "Los números que se han pasado: $# "  # Muestra la cantidad de argumentos pasados al script

echo "Esto es una lista con los parámetros introducidos: $@ "  # Muestra todos los parámetros pasados al script

echo "Este es tu identificador de usuario: $(id -u)"  # Muestra el UID del usuario

echo "Tu nombre de usuario: $(whoami)"  # Muestra el nombre de usuario

echo "El home de tu usuario: $HOME "  # Muestra el directorio home del usuario

echo "Directorio actual: $(pwd)"  # Muestra el directorio actual
