#!/bin/bash

cont="si"  # Variable de control per continuar el bucle

while [ "$cont" = "si" ]; do
    echo "Calculadora bàsica"
    echo "1. Suma  2. Resta  3. Multiplicació  4. Divisió  5. Sortir"
    read -p "Tria una opció (1-5): " opcio

    if [ "$opcio" -eq 5 ]; then
        echo "Sortint..."
        cont="no"  # Canviem el valor de 'cont' per aturar el bucle
        continue
    fi

    read -p "Introdueix el primer número: " num1
    read -p "Introdueix el segon número: " num2

    case $opcio in
        1) echo "Resultat: $((num1 + num2))" ;;
        2) echo "Resultat: $((num1 - num2))" ;;
        3) echo "Resultat: $((num1 * num2))" ;;
        4)
            if [ "$num2" -eq 0 ]; then
                echo "Error: No es pot dividir per zero."
            else
                echo "Resultat: $((num1 / num2))"
            fi
            ;;
        *) echo "Opció no vàlida. Si us plau, tria un número entre 1 i 5." ;;
    esac

    echo ""
done


