#!/bin/bash
nom_usuari=$(whoami)
echo "Hola $nom_usuari!"
echo
directori_actual=$(pwd)
echo "El directori actual és: $directori_actual"
echo
data_hora_actual=$(date)
echo "La data i hora actuals són: $data_hora_actual"
echo
echo "Els arxius del directori actual són:"
ls -1
echo
nom_sistema_operatiu=$(uname -s)
echo "El nom del sistema operatiu és: $nom_sistema_operatiu"
echo
versio_nucli=$(uname -r)
echo "La versió del nucli és: $versio_nucli"
echo
memoria=$(free -m | grep Mem)
echo "Memòria utilitzada i disponble:" 
echo "${memoria} GB"
echo
espaidisc=$(df -h / | grep '/')

echo "Espai disponible en disc per al directori arrel:"
echo $espaidisc
