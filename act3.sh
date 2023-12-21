#!/bin/bash
#Escribe un script que procese el fichero listado.txt. Cada línea de este fichero tiene un usuario, un sistema operativo 
#y un valor numérico que indica el número de procesos que tiene en ejecución ese usuario en este sistema. 
#Lo que se pretende que haga el script es que, recorra las líneas del fichero y calcule cuántos usuarios tienen Linux, 
#cuántos Windows y el total de procesos de cada sistema. El resultado del script debería ser algo como:



contlinux=0
contwindows=0
practlinux=0
practwindows=0

while read linea; do
sist=$(echo $linea | awk '{print $2}')
proc=$(echo $linea | awk '{print $3}')

if [ $so = "linux" ]; then
contlinux=$((contlinux+1))
practlinux=$((practlinux+proc))
else
contwindows=$((contlinux+1))
practwindows=$((practlinux+proc))
fi
done < listado.txt
echo "Linux -> $contlinux $practlinux"
echo "Windows -> $contwindows $practwindows"