#!/bin/bash

archivo1="$1"
archivo2="$2"

mida_archivo1=$(ls -la $1 | cut -d " " -f5 )
mida_archivo2=$(ls -la $2 | cut -d " " -f5 )
#mida_F1=$(wc -c < $1)
#mida_F2=$(wc -c < $2)
#echo $mida_archivo1
#echo $mida_archivo2
#exit

if [ $mida_archivo1 -eq $mida_archivo2 ]; then
	echo "El archivo1 y el archivo2 tienen la misma medida"
elif [ $mida_archivo1 -gt $mida_archivo2 ]; then
	echo "el $1 es mayor"
else
	echo "el $2 es mayor"
fi
