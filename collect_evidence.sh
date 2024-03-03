#!/bin/bash

# Solicitar al usuario su código de usuario y su nombre
cowsay "este script recolecta evidencia  de su trabajo desarrollado"
echo "Por favor, introduce tu código de usuario:"
read codigo_usuario
echo "Por favor, introduce tu nombre:"
read nombre_usuario


# Mostrar el nombre y código del usuario en cowsay
cowsay "Se recopila evidencia para:  $nombre_usuario, Código: $codigo_usuario"


# Definir los archivos a verificar
archivos=("$HOME/evaluacion01/data/usuario.txt" "$HOME/evaluacion01/exercises/ejercicio1.txt" "$HOME/evaluacion01/exercises/ejercicio2.txt" "$HOME/evaluacion01/exercises/momazo.png")

# Crear o vaciar el archivo de evidencias
echo "Evidencias para $nombre_usuario ( $codigo_usuario )" > evidencias.txt

cowsay "Existen los archivos solicitados?"

# Verificar la existencia de cada archivo
for archivo in "${archivos[@]}"
do
    if [ -f "$archivo" ]
    then
        echo "ok - $archivo" | tee -a evidencias.txt
    else
        echo "fail - $archivo"| tee -a evidencias.txt
    fi
done

cowsay "recopilando datos de los comandos usados"

history 20 | tee -a evidencias.txt




