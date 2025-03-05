#!/bin/bash

vali='^[0-9]+$'  # Expresión regular para verificar si un parámetro es un número entero positivo

if [ $# -eq 3 ]  # Verifica si se han pasado exactamente 3 parámetros
then
    if [[ $1 =~ $vali ]] && [[ $3 =~ $vali ]]  # Verifica que el primer y tercer parámetro sean números
    then
        if [ $2 == '+' ]  # Suma
        then
            sum=$(($1 + $3))
            echo "El resultado de la suma es de $sum"
        elif [ $2 == '-' ]  # Resta
        then
            res=$(($1 - $3))
            echo "El resultado de la resta es de $res"
        elif [ $2 == 'x' ]  # Multiplicación
        then
            mul=$(($1 * $3))
            echo "El resultado de la multiplicación es de $mul"
        elif [ $2 == '/' ]  # División
        then
            if [ $3 -eq 0 ]  # Verifica si el divisor es 0
            then
                echo "Error: No se puede dividir por cero."
            else
                div=$(($1 / $3))
                echo "El resultado de la división es de $div"
            fi
        elif [ $2 == '^' ]  # Exponente
        then
            ele=$(($1 ** $3))
            echo "El resultado de la elevación es de $ele"
        else
            echo "Debes de insertar estos parámetros: +, -, x, /, ^"  # Mensaje si el operador no es válido
        fi
    else
        echo "Los primeros y tercer parámetros deben ser números."  # Mensaje si el primer o tercer parámetro no son números
    fi
else
    echo "Debes de insertar 3 parámetros"  # Mensaje si no se pasan exactamente 3 parámetros
fi
