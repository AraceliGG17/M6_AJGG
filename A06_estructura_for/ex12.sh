#!/bin/bash

for dir in dir1 dir2 dir3; do
	if [ -d "$dir" ]; then
	     sudo cp -r "$dir" "${dir}_backup"
	else
		echo "El directorio $dir no existe"
	fi
done

