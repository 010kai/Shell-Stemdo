#!/bin/bash

read -p "Ingrese dos numeros: " num1 num2

read -p "¿Que quieres hacer con estos 2 numeros (+,x,/,-)?: " val

if [ $val == '+' ]
then

sum=$(( $num1 + $num2 ))

echo "El resultado de $num1 + $num2 es $sum"

elif [ $val == '-' ]
then
res=$(( $num1 - $num2 ))

echo "El resultado de $num1 - $num2 es $res"
fi

if [ $val == 'x' ]
then

mul=$(( $num1 * $num2 ))

echo "El resultado de $num1 x $num2 es $mul "

elif [ $val == '/' ]
then

dic=$(( $num1 / $num2 ))
echo "El resultado de $num1 / $num2 es $dic"
fi
