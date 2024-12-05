#!/bin/bash

read -p "introduce 1 numero: " valor1
read -p "introduce otro numero: " valor2
read -p "introduce la operacion: " operacion

case "$operacion" in
  "+")
    resultado=$(($valor1 + $valor2))
    ;;
  "-")
    resultado=$(($valor1 - $valor2 ))
    ;;
  "*")
    resultado=$(($valor1 * $valor2))
    ;;
  "/")
    resultado=$(($valor1 / $valor2))
    ;;

esac

echo "El resultado es: $resultado"
