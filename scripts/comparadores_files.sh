#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Utilização: $0 Parametro1"
	echo "Onde Parametro1 = Arquivo ou Diretório"
	exit 1
fi

if [ ! -e $1 ]; then
	echo "Arquivo ou diretório não existe"
	exit 1
fi

if [ -f $1 ]; then
	echo "$1: Arquivo"
elif [ -d $1 ]; then
	echo "$1: Diretório"
else
	echo "Indeterminado"
fi

if [ -r $1 ]; then
	echo "$1: Leitura habilitada"
else
	echo "$1: Leitura não habilitada"
fi

if [ -x $1 ]; then
	echo "$1: Execução habilitada"
else
	echo "$1: Execução não habilitada"
fi
