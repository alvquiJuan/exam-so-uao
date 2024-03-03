#!/bin/bash

# Solicitar al usuario su código de usuario y su nombre
cowsay "este script te deja limpio tu ambiente de desarrollo"
echo "Por favor, introduce tu nombre:"
read nombre_usuario

rm -ri evaluacion01

cowsay "Haz terminado tu evaluación, $nombre_usuario, fue MUUUUUy interesante acompañarte en esta evaluación"
sudo apt remove cowsay