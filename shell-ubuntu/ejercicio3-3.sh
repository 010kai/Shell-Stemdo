#!/bin/bash

if [ -f $1 ]
then
echo "El archivo $1 existe"

if [ -x $1 ]
then

echo "El archivo $1 tiene permisos de ejecucion"

else
echo "El archivo $1 no tiene permisos de ejecucion"
fi
else
echo "El archivo $1 no existe"
fi
