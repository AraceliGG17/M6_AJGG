#!/bin/bash

read -p "introduce un numero: " num
fact=1


for ((i=1; i<=num; i++))
do 
      fact=$((fact * i))
done
echo "el factorial de $num es $fact"
