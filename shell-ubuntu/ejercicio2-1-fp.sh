#!/bin/bash
read -p "Introduce 3 valores: " n1 n2 n3

n1=${n1:-NULL}
n2=${n2:-NULL}
n3=${n3:-NULL}

echo "$n1 $n2 $n3"

all=$n1$n2$n3

echo "$all"
