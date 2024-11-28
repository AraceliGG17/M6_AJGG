#!/bin/bash

for fitxer in *.tmp
do
  if [ -f "$fitxer" ]; then
    echo "Eliminant el fitxer: $fitxer"
    rm "$fitxer"
  fi

done

echo "se han eliminado todos los ficheros .tmp"
