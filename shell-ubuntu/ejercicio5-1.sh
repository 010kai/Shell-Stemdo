#!/bin/bash
clear
echo "========================================================================="

echo "Hola de nuevo $USER"
echo ""
echo "1) Inserta el nombre de usuario que quieras crear con el ID 999"
echo "2) Crear un grupo"
echo "3) Inserta el nombre de grupo que quieres renombrar"
echo "4) Crear un usuario cualquiera y después asignarlo a un grupo"
echo "========================================================================="
echo ""
read -p "Escribe la opción que quieres hacer: " op

case $op in

  # Opción 1: Crear un usuario con ID específico
  1) read -p "Introduce el nombre de usuario que quieres crear: " usu
     read -p "Introduce el ID que desees que tenga el usuario: " id
     gre=$(grep ^$usu /etc/passwd | cut -f 1 -d':' | wc -l)  # Verifica si el usuario ya existe
     gre2=$(grep $id /etc/passwd | cut -f 3 -d':' | wc -l)  # Verifica si el ID ya está en uso
     if [ $gre -eq 0 ] && [ $gre2 -eq 0 ]; then  # Si el usuario y el ID no existen, los crea
       sudo useradd $usu -u $id -s /bin/bash
       echo "Ya se ha creado el usuario con el ID correspondiente"
     else
       echo "El usuario o el ID ya existe"
     fi
  ;;
  
  # Opción 2: Crear un grupo
  2) read -p "Introduce el grupo que quieres crear: " gru
     gre=$(grep ^$gru /etc/group | cut -f 1 -d':' | wc -l)  # Verifica si el grupo ya existe
     if [ $gre -eq 0 ]; then  # Si el grupo no existe, lo crea
       sudo groupadd $gru
       echo "Se ha creado el grupo $gru"
     else
       echo "Este grupo $gru ya está creado"
     fi
  ;;
  
  # Opción 3: Renombrar un grupo
  3) read -p "Inserta el nombre del grupo que quieres renombrar: " gru
     read -p "Inserta el nuevo nombre del grupo: " gru2
     gre=$(grep ^$gru2 /etc/group | cut -f 1 -d':' | wc -l)  # Verifica si el nuevo nombre ya está en uso
     if [ $gre -eq 0 ]; then  # Si el nuevo nombre no está en uso, renombra el grupo
       sudo groupmod -n $gru2 $gru
       echo "Se ha modificado el grupo $gru"
     else
       echo "Este grupo $gru ya está creado con ese nombre"
     fi
  ;;
  
  # Opción 4: Crear un usuario y asignarlo a un grupo
  4) read -p "Introduce el nombre de usuario que quieres crear: " usu
     read -p "Introduce el grupo que desees que tenga el usuario: " gru
     gre=$(grep ^$usu /etc/passwd | cut -f 1 -d':' | wc -l)  # Verifica si el usuario ya existe
     gre2=$(grep ^$gru /etc/group | cut -f 3 -d':' | wc -l)  # Verifica si el grupo existe
     if [ $gre -eq 0 ] && [ $gre2 -eq 0 ]; then  # Si el usuario y el grupo no existen, crea el usuario y lo asigna al grupo
       sudo useradd -m -g $gru $usu -s /bin/bash
       echo "Ya se ha creado el usuario con el grupo correspondiente"
     else
       echo "El usuario o el grupo ya existe"
     fi
  ;;
esac

