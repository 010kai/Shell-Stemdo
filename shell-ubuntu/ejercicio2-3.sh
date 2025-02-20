#!/bin/bash



tot=$(( ($(date -d "12/31" +%s) - $(date +%s) ) / 86400 ))



echo "Estos son los dias que quedan hasta el 31 de Diciembre" $tot
