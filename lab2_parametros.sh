#!/bin/bash

#Ejecución de variables especiales
echo "Script: $0"
echo "Cantidad de parámetros $#"
echo "Parámetros $@"

#Validación sencilla
validar_parametros(){
	if [ "$#" -lt 2 ]; then
		echo "Uso: $0 <origen> <destino>"
		exit 1
	fi
}

validar_parametros "$@"

#Verificación
cat archivo.txt 2> error.log

#Estado de salida
echo "Salida: $?"
