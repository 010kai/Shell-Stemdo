#!/bin/bash

read -p "Escribe tu peso en Kg: " kg

read -p "Escribe tu altura en metros: " m

imc=$(echo "scale=2; $kg / ($m * $m)" | bc)

echo "Tu IMC es de $imc"
