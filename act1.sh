#!/bin/bash
#. Escribe un Shell script que cree una estructura de directorios similar a la siguiente para los nombres que se encuentren 
#en el fichero nombres.txt, y teniendo en cuenta un número X de subdirectorios personal que se deben crear (para el caso de la imagen, 
#X=3). El valor de la X será introducido por el usuario como parámetro a la llamada del script. Por ejemplo, si queremos crear 3
#subdirectoriosrealizaríamosla siguiente llamada: ./script.sh 3

#EJERCICIO CARLOS
#num_subdir=$1

#cat "nombres.txt" | while read -r nombre; do
# for ((i=1; i<=num_subdir; i++)); do
#   mkdir  "dir_$i/$nombre"
# done
#done
#echo "Estructura de directorios creada."


#EJERCICIO VICENT
while read nombre; do
mkdir $nombre
i=1;
while [ $i -le $1 ];do
mkdir "$nombre/persona$x"
x=$((i+1))
done
done < nombres.txt