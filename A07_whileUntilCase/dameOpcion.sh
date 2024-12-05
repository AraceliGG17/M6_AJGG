#!/bin/bash
operacion="iniciar"

until [ -z "$operacio" ]; do
	read -p "introduce una operacion (listas,usuarios,informacion,conexion o presiona enter para salir): " operacion
	
	if [ -z "$operacion"  ]; then
		echo "salir de el script. Chau!"
		break
	fi

	case $operacion in
	    "listas")
			echo "mostrando el contenido del directorio personal:"
			ls ~
			;;
	    "usuarios")
			echo "mosntrando informacion de los usuarios conectados al sistema:"
			w
			;;
	    "informacion")
			echo "mostrando informacion de identificacion del usuario actual:"
			id
			;;
	    "conexion")
			echo "comprobando la conexion a internet.."
			if ping -c 4 8.8.8.8 &>/dev/null; then
			   echo " el equipo tiene conexion a internet"
			else
			   echo "el equipo no tiene conexion"
			fi
			;;
	   *)
			echo "operacion no reconocida, vuelve a probar"
			;;
	esac
	echo
done
