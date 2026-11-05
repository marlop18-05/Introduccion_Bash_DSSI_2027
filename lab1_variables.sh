#!/bin/bash

#Definicion de variables:
app="backup"
version=2

#Imprimiendo texto exacto
echo "Procesando ${app}_v${version}.tar.gz"

#Diferencia de comillas
echo "${HOME}"
echo '${HOME}'

#Variable whoami
usuario_actual=$(whoami)
echo $usuario_actual

