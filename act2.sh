#!/bin/bash
#Escribe un script que muestre un listado de los números pares que hay en el fichero numeros.txt así como un listado 
#de los números impares. Además, deberá mostrar el total de cada tipo.

pares=0
impares=0

echo "Números pares:"
while read par; do
  if [ $((par % 2)) -eq 0 ]; then
    echo $par
    ((pares++))
  fi
done < "numeros.txt"

echo "Números impares:"
while read impar; do
  if [ $((impar % 2)) -ne 0 ]; then
    echo $impar
    ((impares++))
  fi
done < "numeros.txt"

echo "El total de los números pares son: $pares"
echo "El total de los números impares son: $impares"
