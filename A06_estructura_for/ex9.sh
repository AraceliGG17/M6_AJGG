#!/bin/bash

read -p "introduce una palabra:" palabra

contador=0

for ((i=0; i<${#palabra}; i++))
do
	((contador++))
done
echo "la palabra '$palabra' tiene $contador letras"
