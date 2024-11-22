#!/bin/bash
read -p "introduce una lista separado por espacios:" lista

echo "esto es lo qu has introducido:"
for lis in $lista;
do
	echo "- $lis"
done
