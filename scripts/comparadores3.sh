#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Utilização: $0 NUMERO"
	echo "Onde NUMERO = 1, 2 ou 3"
	exit 1
fi

case $1 in
	1)
	echo "Parâmetro 1 igual a UM"
	;;
	2)
	echo "Parâmetro 1 igual a DOIS"
	;;
	3)
	echo "Parâmetro 1 igual a TRÊS"
	;;
	*)
	echo "Parâmetro diferente de 1, 2 ou 3"
esac
exit 0
