#!/bin/bash
#Escribe un script que cree un listado de todas las direcciones IP que están conectadas en nuestra red local. 
#Para ello, debemos utilizar el comando ping que nos devuelve cuántos paquetes han sido enviados correctamente. Podemos
#enviar un número concreto de paquetes mediante alguna opción de este comando (utilizar el man si no lo sabes). 
#El resultado de un ping a una máquina que está conectada sería el que se ve en la siguiente imagen. 
#Como puedes ver, en este caso se ha enviado un paquete y se ha recibido correctamente (1 received),
#mientras que si no se recibe nada, el mensaje seríadiferente:


inicio_ip=1
fin_ip=255

function verificar_ip() {
    ip="10.2.10.$1"
    resultado=$(ping  1 1 $ip 2>/dev/null)

    if [[ $? -eq 0 ]]; then
        echo "La IP $ip está conectada."
    else
        echo "La IP $ip no está conectada."
    fi
}

for ((i=$inicio_ip; i<=$fin_ip; i++)); do
    verificar_ip $i
done
#Este no se hace