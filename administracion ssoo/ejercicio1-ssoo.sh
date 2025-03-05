#!/bin/bash

vali='^[0-9]+$'

if [ $# -eq 3 ]
then
    if [[ $1 =~ $vali ]] && [[ $3 =~ $vali ]]
    then
        if [ $2 == '+' ]
        then
            sum=$(($1 + $3))
            echo "El resultado de la suma es de $sum"
        elif [ $2 == '-' ]
        then
            res=$(($1 - $3))
            echo "El resultado de la resta es de $res"
        elif [ $2 == 'x' ]
        then
            mul=$(($1 * $3))
            echo "El resultado de la multiplicacion es de $mul"
        elif [ $2 == '/' ]
        then
            if [ $3 -eq 0 ]
            then
                echo "Error: No se puede dividir por cero."
            else
                div=$(($1 / $3))
                echo "El resultado de la division es de $div"
            fi
        elif [ $2 == '^' ]
        then
            ele=$(($1 ** $3))
            echo "El resultado de la elevacion es de $ele"
        else
            echo "Debes de insertar estos parametros: +, -, x, /, ^"
        fi
    else
        echo "Los primeros y tercer parametros deben ser numeros."
    fi
else
    echo "Debes de insertar 3 parametros"
fi
