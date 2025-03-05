#!/bin/bash
read -p "Introduce 3 valores: " n1 n2 n3  # Pide 3 valores

n1=${n1:-NULL}  # Si está vacío, usa "NULL"
n2=${n2:-NULL}
n3=${n3:-NULL}

echo "$n1 $n2 $n3"  # Muestra los valores

all=$n1$n2$n3  # Concatena los valores

echo "$all"  # Muestra la concatenación
