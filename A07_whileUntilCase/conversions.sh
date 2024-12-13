#/bin/bash
clear
operacio="x"
while [ $operacio != "salir" ] && [ $operacio != "salir" ] && [ $operacio != "salir" ]; do
	clear
	echo "Bienvenido a la conversion"
	echo
	read -p "introduce la cantidad en metro:" metro
	echo
	echo  "a que unidad quieres convertirlo:"
	echo
	echo "Introduce mm, cm o km, Para salir, introduce 'salir'"
	read $operacio
	echo
	if [$operacio == "mm"]; then
		echo "$metro = $(($metro*1000))$operacio"
		echo
		read -n 1 -p "toca cualquier boton para continuar"
	elif [$operacio == "cm"]; then
		echo "$metro = $(($metro*100))$operacio"
		echo
		read -n 1 -p "toca cualquier boton para continuar"
	elif [$operacio == "km"]; then
		echo "$metro=$(($metro/1000 | bc))$operacio"
		echo
		read -n 1 -p "toca cualquier boton para continuar"
	elif [$operacio == "salir"] && [$operacio == "salir"] && [$operacio == "salir"]; then
		clear
	else
		echo "error"
	fi
done
