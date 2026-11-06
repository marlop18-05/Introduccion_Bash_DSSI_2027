#!/bin/bash

# Verificar que se ingresen dos argumentos
if (( $# != 2 )); then
    echo "Uso: $0 <numero1> <numero2>"
    exit 1
fi

# Verificar que sean enteros positivos
if ! [[ $1 =~ ^[0-9]+$ && $2 =~ ^[0-9]+$ ]] || (( $1 == 0 || $2 == 0 )); then
    echo "Error: ambos números deben ser enteros mayores que cero."
    exit 1
fi

# Guardar los números
a=$1
b=$2

# Realizar las operaciones
suma=$((a + b))
diferencia=$((a - b))
producto=$((a * b))

# Mostrar los resultados
echo "Número 1: $a"
echo "Número 2: $b"
echo ""
echo "Suma: $suma"
echo "Diferencia: $diferencia"
echo "Producto: $producto"
