#!/bin/bash

read -p "Ingrese dos números: " num1 num2  # Pide dos números

read -p "¿Qué quieres hacer con estos 2 números (+,x,/,-)?: " val  # Pide la operación

if [ $val == '+' ]; then
  sum=$(( $num1 + $num2 ))  # Suma
  echo "El resultado de $num1 + $num2 es $sum"

elif [ $val == '-' ]; then
  res=$(( $num1 - $num2 ))  # Resta
  echo "El resultado de $num1 - $num2 es $res"
fi

if [ $val == 'x' ]; then
  mul=$(( $num1 * $num2 ))  # Multiplicación
  echo "El resultado de $num1 x $num2 es $mul"

elif [ $val == '/' ]; then
  dic=$(( $num1 / $num2 ))  # División
  echo "El resultado de $num1 / $num2 es $dic"
fi
