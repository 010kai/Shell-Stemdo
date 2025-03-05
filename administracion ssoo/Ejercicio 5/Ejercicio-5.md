## Ejercicio 5 configuración de escritorio remoto con terminal server.  

### Configuración en ubuntu.  
Para poder hacer la configuración del escritorio remoto en ubuntu tendremos que primero instalar u paquete llamado xrdp (permite conexiones remotas).  
![primero](./inst-1.png)  
Una vez instalado este paquete podemos proceder con la comprobacion de que este paquete este activo, en caso de no estar activo deberemos de activarlo.  
Para ver si esta o no con este comando lo podremos ver:  
![segundo](./status-2.png)  
Si no nos sale activado tendremos que poner el siguiente comando para activarlo:  
![segundo](./status-3.png)  

Despues de la comprobacion del paquete tendremos que configurar el firewall y en un puerto (3389).  
Tendremos que utilizar el siguiente comando para configurarlo:  
![segundo](./firewa-3.png)  

Y por ultimo verificamos si se han aplicado los cambios correctamente:  
![segundo](./verifi-4.png)
### Configuración en windows.  

Para windows es diferente aqui solo deberemos de habilitar opciones del propio windows, deberemos de habilitar la configuracion de escritorio remoto en propiedades del sistema >> Acceso remoto >> permitir las conexiones remotas a este equipo.  
![segundo](./w-1.png)  

Despues deberemos de comprobar el puerto 3389 este abierto y habilitado, deberemos de entrar en Windows defender con seguridad avanzada y buscar en reglas de entrada la regla de Escritorio remotot-Modo usuario (TCP de entrada).  
![segundo](./w-2.png)  

Una vez hecho esto abriremos la aplicacion de escritorio remoto e introducimos la ip de nuestra otra maquina y le daremos a aceptar.  
![segundo](./w-3.png)  

Y esto es lo que no saldria:  
![segundo](./succ.png)