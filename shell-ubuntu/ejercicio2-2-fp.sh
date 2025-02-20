#!/bin/bash

echo "Mostrando valores en colmna"

printf "%-10s %-10s %-10s\n" "Ciudad" "Pueblo" "Pais"
printf "%-10s %-10s %-10s\n" "Huelva" "Lepe" "Espana"
printf "%-10s %-10s %-10s\n" "Sevilla" "Chucena" "Espana"

echo ""


echo "Mostrando numeros con decimales"
valor=33,123
printf "Valor: %.2f\n" $valor

peso=55,241
printf "Peso: %.1f\n" $peso
echo ""

echo "Caracteres especiales"

printf "Hola buenos dias\tcon adios buenas noches\n"
printf "\u2764\n"
