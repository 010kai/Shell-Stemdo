#!/bin/bash

echo "Mostrando valores en columna"

printf "%-10s %-10s %-10s\n" "Ciudad" "Pueblo" "Pais"  # Encabezado
printf "%-10s %-10s %-10s\n" "Huelva" "Lepe" "Espana"
printf "%-10s %-10s %-10s\n" "Sevilla" "Chucena" "Espana"

echo ""

echo "Mostrando números con decimales"
valor=33,123
printf "Valor: %.2f\n" $valor  # Error: usa ',' en vez de '.'

peso=55,241
printf "Peso: %.1f\n" $peso  # Mismo problema que arriba
echo ""

echo "Caracteres especiales"

printf "Hola buenos días\tcon adiós buenas noches\n"  # Usa tabulación
printf "\u2764\n"  # Imprime un corazón (❤️)
