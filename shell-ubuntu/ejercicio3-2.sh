#!/bin/bash

read -p "Escribe tu peso en Kg: " kg  # Pide el peso en kg

read -p "Escribe tu altura en metros: " m  # Pide la altura en metros

imc=$(echo "scale=2; $kg / ($m * $m)" | bc)  # Calcula el IMC usando bc para mayor precisión

echo "Tu IMC es de $imc"  # Muestra el IMC calculado
