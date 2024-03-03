#!/bin/bash

sudo apt install cowsay

# Solicitar al usuario su código de usuario y su nombre
echo "Por favor, introduce tu código de usuario:"
read codigo_usuario
echo "Por favor, introduce tu nombre:"
read nombre_usuario

#se ubica en el  directorio home

cd $HOME

# Mostrar el nombre y código del usuario en cowsay
cowsay "Nombre: $nombre_usuario, Código: $codigo_usuario"

echo "creando carpetas  de trabajo"
# Crear una carpeta llamada "evaluación 1" y dos subcarpetas "data" y "exercises"
mkdir -p "evaluacion01/data"
mkdir -p "evaluacion01/exercises"

echo "creando archivos de  trabajo"
# En la carpeta "data" se debe almacenar un archivo de texto con el nombre y código introducidos
echo "Nombre: $nombre_usuario, Código: $codigo_usuario" > "evaluacion01/data/usuario.txt"

# En la carpeta "exercises" deben ir dos documentos txt en blanco
touch "evaluacion01/exercises/ejercicio1.txt"
touch "evaluacion01/exercises/ejercicio2.txt"

# Mostrar en cowsay la frase "script terminado" y salir
cowsay "Script terminado"
# exit 0

