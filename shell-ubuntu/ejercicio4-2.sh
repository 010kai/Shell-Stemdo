#!/bin/bash
read -p "Introduce un nombre de usuario: " usu  # Pide un nombre de usuario

ps -u "$usu" | sort -k 4  # Muestra los procesos del usuario y los ordena por la cuarta columna (tiempo de CPU)
