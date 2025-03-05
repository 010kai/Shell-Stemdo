#!/bin/bash

if [ -f $1 ]; then  # Verifica si el archivo existe
  echo "El archivo $1 existe"

  if [ -x $1 ]; then  # Verifica si el archivo tiene permisos de ejecución
    echo "El archivo $1 tiene permisos de ejecución"
  else
    echo "El archivo $1 no tiene permisos de ejecución"
  fi
else
  echo "El archivo $1 no existe"
fi
