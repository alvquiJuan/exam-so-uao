#!/bin/bash

# Recopilar el código de estudiante
echo "Por favor, ingresa tu código de estudiante:"
read codigo_estudiante
echo "Código de estudiante: $codigo_estudiante" > evidencias.log

# Verificar si existe una interfaz de red llamada "if_parcial2"
echo "Verificando punto 1"
if ip addr show if_parcial2 &> /dev/null
then
    echo "La interfaz de red 'if_parcial2' existe." >> evidencias.log

    # Mostrar la IP, servidor DNS y estado de la interfaz "if_parcial2"
    echo "Información de la interfaz 'if_parcial2':" >> evidencias.log
    ip addr show if_parcial2 >> evidencias.log
else
    echo "La interfaz de red 'if_parcial2' no existe." >> evidencias.log
fi
echo "Verificando punto 2"
# Verificar si existe un usuario llamado "usr_parcial2"
if id -u usr_parcial2 &> /dev/null
then
    echo "El usuario 'usr_parcial2' existe." >> evidencias.log

    # Mostrar la línea del usuario "usr_parcial2" dentro del archivo /etc/passwd
    echo "Información del usuario 'usr_parcial2' en /etc/passwd:" >> evidencias.log
    grep usr_parcial2 /etc/passwd >> evidencias.log
else
    echo "El usuario 'usr_parcial2' no existe." >> evidencias.log
fi

# Verificar si existe el grupo "grp_parcial2"
if grep -q grp_parcial2 /etc/group
then
    echo "El grupo 'grp_parcial2' existe." >> evidencias.log

    # Mostrar la entrada en el archivo /etc/group del grupo "grp_parcial2"
    echo "Información del grupo 'grp_parcial2' en /etc/group:" >> evidencias.log
    grep grp_parcial2 /etc/group >> evidencias.log

    # Determinar si el usuario "usr_parcial2" pertenece al grupo "grp_parcial2"
    if groups usr_parcial2 | grep &> /dev/null grp_parcial2
    then
        echo "El usuario 'usr_parcial2' pertenece al grupo 'grp_parcial2'." >> evidencias.log
    else
        echo "El usuario 'usr_parcial2' no pertenece al grupo 'grp_parcial2'." >> evidencias.log
    fi
else
    echo "El grupo 'grp_parcial2' no existe." >> evidencias.log
fi
echo "Verificando punto 3"
# Determinar si existe el servicio ping_service.service y mostrar sus características
if systemctl --all --type=service | grep -q ping_service.service
then
    echo "El servicio 'ping_service.service' existe." >> evidencias.log

    # Mostrar las características del servicio ping_service.service
    echo "Características del servicio 'ping_service.service':" >> evidencias.log
    systemctl status ping_service.service >> evidencias.log
else
    echo "El servicio 'ping_service.service' no existe." >> evidencias.log
fi

echo "Las validaciones se han completado y se han recopilado en el archivo 'evidencias.log'."
