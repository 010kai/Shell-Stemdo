#!/bin/bash

read -p "Introduce nombres de usuario: " usu

for i in $usu
do
gre=$(grep ^$i /etc/passwd | cut -f 1 -d':' | wc -l)

if [ $gre -eq 0 ]
then

echo "El usuario $i no existe"

else
echo "El usuario $i existe"
fi
done
