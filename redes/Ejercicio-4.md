## Ejercicio 4

# 1. Tienes la red 10.0.0.0/8 y necesitas dividirla en subredes que soporten 1000 hosts cada una. ¿Cuantas subredes puedes crear?.  

Es de tipo clase A: 255.0.0.0/8.  
255 esto es para la parte de red y lo sobrante es la parte de host.  

2^10= 1024-2=1022  

32-10=22 esto son los bits para la parte de red /22.

22-8=14 2^14=16384 subredes.  

Se pueden crear 16384 subredes.  

# 2. Tienes la red 172.16.0.0/16. Necesitas crear 20 subredes con el máximo número posible de hosts por subred. ¿Cuantos hosts caben en cada subred?.  

Es de clase B: 255.255.0.0/16.  

2^5=32 subredes.  

Son ahora 21 bits para la red /21 sumandole los 5 que necesitamos para crear las subredes.  

Con los otros bits sobrantes lo elevamos a 2 y le restamos 2, 1 para la red y otra por el broadcast.  
 2^11=2048-2=2046 hosts en total.  

 # Tienes la red 192.168.1.0/24. Debes dividirla en subredes que puedan soportar 6 hosts **utilizables** cada una. ¿Cuantas subredes se pueden crear con esa condición?.  

Es de clase C: 255.255.255.0/24.  

2^3=8-2=6 host utilizables.  

32-3= 29 bits para la red /29.  

29-24=5 bits 2^5=32 subredes.