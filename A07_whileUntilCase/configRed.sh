#!/bin/bash

echo "Que quieres hacer? "
echo "---Ver IP (IP)---"
echo "---Hacer Ping (PING)---"
echo "---Comprobar conexion (CONEXION)---"
echo "---Salir (SALIR)---"
echo "---------------------------------------"
read -p "Escoge una opcion: " opcion

case $opcion in
        "ip")
                ip a
                ;;
        "ping")
                echo "ha que ip quieres hacer ping:"
		read direccion
		ping -c 4 $direccion
                ;;
        "conexion")
                ping -c 4 8.8.8.8
                ;;
        "sortir")
                ;;
esac
