#/bin/bash
while true; do
  read -p "Introduce piedra, papel, tijera o 'salir' para acabar: " usuario

  if [ "$usuario" == "salir" ]; then
    echo "chao!"
    break
  fi

  ordenador=$((RANDOM % 3))
  case $ordenador in
    0) ordenador="piedra" ;;
    1) ordenador="papel" ;;
    2) ordenador="tijera" ;;
  esac
  echo
  echo "El ordenador a escogido: $ordenador"

  if [ "$usuario" == "$ordenador" ]; then
    echo "Empate!"
  elif [ "$usuario" == "piedra" -a "$ordenador" == "tijera" ] ||
       [ "$usuario" == "papel" -a "$ordenador" == "piedra" ] ||
       [ "$usuario" == "tijera" -a "$ordenador" == "papel" ]; then
    echo "Has ganado!"
  else
    echo "Has perdido!"
  fi
    echo
done
