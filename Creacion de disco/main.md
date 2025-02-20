# Comos instalar un disco nuevo en Virtual box #

Primero deberemos de apagar la maquina virtual para poder instalar el disco nuevo en nuestra maquina.  

Despues nos vamos a los detales de la maquina virtual de ubuntu y le damos a configuracion. Dentro de ahi entramos en la parte de discos duros.  

![primera](./ajustes.png)  

Dentro de ahi entramos en la parte de discos duros.
![segunda](./ajustes-2.png)  

Dentro de la configuracion de los discos le damos al segundo dibujo que tiene un mas para agregar un disco duro nuevo que no tengamos en el sistema.  
![tercera](./añadir.png)  

Despues le damos a crear disco y dentro de las opciones de la creacion del disco duro podemos elegir el tamaño que queremos que tenga el disco y el tipo de disco duro virtual.  
Una vez ya creado el disco en la maquina, le damos a iniciar la maquina ubuntu y una vez iniciada, abriremos la terminal de ubuntu y escribiremos el comando sudo fsdk -l.  
![cuarta](./sudo%20fdisk%20-l.png)  
Y buscamos el disco que hemos añadido para recordar el nombre del disco. Despues ejecutamos el comando fdisk y la ruta del nuevo disco que por defecto es /dev/sdb. Utilizaremos las opciones n (Para crear una nueva partición) p(Para que la particion sea primaria) y al final una w(Para guardar las modificaciones que le hemos hecho al disco).  
![quinta](./Captura%20de%20pantalla%202025-02-20%20203749.png)  

Y por ultimo montaremos el disco en el sistema con el comando mount 'ruta del disco' 'directorio donde queremos que se monte el disco'.  
![sexta](./mount.png)