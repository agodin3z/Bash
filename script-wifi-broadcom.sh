#!/bin/bash
# Script para instalar driver wifi de tarjetas broadcom en Debian y derivados

echo ""
echo "Instalando los paquetes: module-assistant y wireless-tools"
sleep 1
apt-get -y install module-assistant wireless-tools
echo ""
echo "Se instalaran otros paquetes necesarios, digite 'S' o 'Y' a todo...."
m-a a-i broadcom-sta
sleep 1
echo ""
echo "Actualizando kernel..."
update-initramfs -u -k $(uname -r)
sleep 1
echo ""
echo "Deshabilitando modulos conflictivos..."
modprobe -r b44 b43 b43legacy ssb
sleep 1
echo ""
echo "Cargando la wireless..."
modprobe wl
sleep 1
echo ""
echo "Interfaces inalambricas disponibles"
iwconfig
sleep 1
echo ""
echo "Levantando la red inalambrica.."
#Comunmente la interfaz inalambrica por defecto es wlan0
ifconfig wlan0 up
sleep 1
echo ""
echo "Listo! :D"
echo ""
