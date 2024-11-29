#!/bin/bash

for usuari in $(cat usuaris.txt);
do
    if id "$usuari" &>/dev/null; then
        echo "L'usuari $usuari ja existeix."
    else
        sudo useradd -m "$usuari" && echo "S'ha creat l'usuari $usuari." || echo "Error al crear l'usuari $usuari."
    fi
done
