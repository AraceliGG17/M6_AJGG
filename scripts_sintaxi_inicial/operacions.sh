#!/bin/bash
read -p "Introdueix el primer numero: " num1
read -p "Itrodueix el segon numero: " num2

echo "Suma: $((num1+num2))"
echo "Resta: $((num1-num2))"
echo "Multiplicacio: $((num1*num2))"
echo "divisio: $((num1/num2))"
echo "Modul: $((num1%num2))"
echo "Potencia: $((num1**num2))"
