#!/bin/bash

echo "El nombre del script es: $0"


echo "Los numeros que se han pasado: $# "


echo "Esto es una lista con los parametros introducidos: $@ "


echo "Estes tu identificador de usuarios: $(id -u)"


echo "Tu nombre de usuario: $(whoami)"


echo "El home de tu usuario: $HOME "


echo "Directorio actual: $(pwd)"
