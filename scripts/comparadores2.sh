#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Utilização> $0 NUMERO"
	echo "Onde NUMERO = 1, 2, ou 3"
	exit 1;

fi

if [ $1 -eq 1 ]; then
	echo "Parâmetro 1 iguam a UM"
elif [ $1 -eq 2 ]; then
	echo "Parâmetro 1 igual a DOIS"
else
	echo "Parâmetro diferente de UM ou DOIS"

fi

exit 0
