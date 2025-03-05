#!/bin/bash

tot=$(( ($(date -d "12/31" +%s) - $(date +%s)) / 86400 ))  # Calcula los días hasta el 31 de diciembre

echo "Estos son los días que quedan hasta el 31 de diciembre: $tot"  # Muestra el resultado
