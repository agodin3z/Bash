#!/bin/bash
# Script para contar el numero de archivos de un directorio
VAR0="$PWD"
echo ""
echo "Contador de archivos"
echo ""
read -p "Ruta del directorio: " VAR1
echo ""
read -p "Extensión del archivo: ('.*' para todos) " VAR2
echo ""
echo "Total de archivos contenidos en $VAR1: "
cd "$VAR1" ; ls -1 --file-type *$VAR2 | wc -l ; cd $VAR0
echo ""
