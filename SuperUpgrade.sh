#!/bin/bash

read -p "Para actualizar el sistema introduca 'actualizar': " decision

if [ "$decision" = "actualizar" ]; then
	apt-get update 
	apt-get upgrade -y
	apt-get dist-upgrade -y
	apt autoremove -y
	echo "Todo actualizado correctamente."
	exit
else
	echo "El comando introducido no es valido"
	echo "Adios"
	exit
fi

