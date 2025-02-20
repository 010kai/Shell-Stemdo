#!/bin/bash
clear
echo "========================================================================="

echo "Hola de nuevo $USER"
echo ""
echo "1) Inserta el nombre de usuario que quieras crear con el ID 999"
echo "2) Crear un grupo"
echo "3) Inserta el nombre de grupo que quieres renombrar"
echo "4) Crear un usuario cualquiera y despues a un grupo"
echo "========================================================================="
echo ""
read -p "Escribe la opcion que quieres hacer: " op

case $op in

	1) read -p "Introduce el nombre de usuario que quieres crear: " usu
	   read -p "Introduce el id que desees que tenga el usuario: " id
	   gre=$(grep ^$usu /etc/passwd | cut -f 1 -d':' | wc -l)
	   gre2=$(grep $id /etc/passwd | cut -f 3 -d':' | wc -l)
		if [ $gre -eq 0 ] && [ $gre2 -eq 0 ]
		then
		sudo useradd $usu -u $id -s /bin/bash
		echo "Ya se ha creado el usuario con el id correspondiente"
		else
		echo "El usuario o el id ya existe"
		fi
	;;
	2) read -p "Introduce el grupo que quieres crear: " gru
	   gre=$(grep ^$gru /etc/group | cut -f 1 -d':' | wc -l )
		if [ $gre -eq 0 ]
		then
		sudo groupadd $gru
		echo "se ha creado el grupo $gru"
		else
		echo "Este grupo $gru ya esta creado"
		fi
	;;
	3) read -p "Inserta el nombre de grupo que quieres renombrar: " gru
	   read -p "Inserta el nuevo nombre del grupo" gru2
		gre=$(grep ^$gru2 /etc/group | cut -f 1 -d':' | wc -l )
		if [ $gre -eq 0 ]
                then
                sudo groupmod -n $gru2 $gru
                echo "se ha modificado el grupo $gru"
                else
                echo "Este grupo $gru ya esta creado con ese nombre"
                fi

	;;
	4) read -p "Introduce el nombre de usuario que quieres crear: " usu
           read -p "Introduce el grupo que desees que tenga el usuario: " gru
           gre=$(grep ^$usu /etc/passwd | cut -f 1 -d':' | wc -l)
           gre2=$(grep ^$gru /etc/group | cut -f 3 -d':' | wc -l)
                if [ $gre -eq 0 ] && [ $gre2 -eq 0 ]
                then
                sudo useradd -m -g $usu $gru -s /bin/bash
                echo "Ya se ha creado el usuario con el grupo correspondiente"
                else
                echo "El usuario o el grupo ya existe"
                fi

	;;
esac
