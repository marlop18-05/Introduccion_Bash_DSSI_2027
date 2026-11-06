#!/bin/bash

# Verificar que se ingrese un argumento
if (( $# != 1 )); then
    echo "Uso: $0 <ruta>"
    exit 1
fi

archivo=$1

# Verificar si existe
if [ -e "$archivo" ]; then
    echo "El archivo sí existe"
else
    echo "El archivo no existe"
    exit 1
fi

# Verificar si es un archivo regular
if [ -f "$archivo" ]; then
    echo "Es un archivo regular"
fi

# Verificar si es un directorio
if [ -d "$archivo" ]; then
    echo "Es un directorio"
fi

# Verificar permisos de lectura
if [ -r "$archivo" ]; then
    echo "Tiene permisos de lectura"
else
    echo "No tiene permisos de lectura"
fi

# Verificar permisos de escritura
if [ -w "$archivo" ]; then
    echo "Tiene permisos de escritura"
else
    echo "No tiene permisos de escritura"
fi
