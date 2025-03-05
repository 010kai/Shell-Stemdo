#!/bin/bash

read -p "Introduce nombres de usuario: " usu  # Pide los nombres de usuario

for i in $usu  # Itera sobre cada nombre de usuario ingresado
do
  gre=$(grep ^$i /etc/passwd | cut -f 1 -d':' | wc -l)  # Verifica si el usuario existe en el sistema

  if [ $gre -eq 0 ]; then  # Si el usuario no existe
    echo "El usuario $i no existe"
  else  # Si el usuario existe
    echo "El usuario $i existe"
  fi
done
