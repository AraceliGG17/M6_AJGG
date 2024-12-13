#!/bin/bash

read -p "Ingrese el número de segundos para el conteo regresivo:" segundos

while [ $segundos -ge 0 ]; do
  echo "$segundos"
  sleep 1
  segundos=$((segundos - 1))
done

echo "¡Tiempo acabado!"
