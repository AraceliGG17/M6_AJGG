#!/bin/bash
read -p "Indica un numero: " num
if [ $((num%2)) -eq 0 ]; then
	echo "El numero es par"
else
	echo "EL numero es impar"
fi
