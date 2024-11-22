#!/bin/bash

read -p "Introduce un número: " num

for (( i=2; i<num; i++ )); 
do
    if (( num % i == 0 )); then
        echo "$num no és primero."
        exit 0
    fi
done

echo "$num és un número primer."

