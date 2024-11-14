#!/bin/bash

archivo1="$1"
archivo2="$2"

mida_archivo1=$(ls -la $1 | cut -d " " -f5 )
mida_archivo2=$(ls -la $2 | cut -d " " -f5 )

if [ $mida_archivo1 -eq $mida_archivo2 ]; then
	echo "El archivo1 y el archivo2 tienen la misma medida"
elif [ $mida_archivo1 -gt $mida_archivo2 ]; then
	echo "el $1 es mayor: $mida_archivo1 bytes"
else
	echo "el $2 es mayor: $mida_archivo2 bytes"
fi
