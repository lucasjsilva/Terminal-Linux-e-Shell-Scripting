#!/bin/bash

s0=
s1="Teste Teste Teste"

lengthS0=${#s0}
lengthS1=${#s1}

echo "Quantidade caracteres s0: $lengthS0"
echo "Quantidade caracteres s1: $lengthS1"

if [ -z $s0 ]; then
	echo "s0: string vazia"
fi

if [ ! -z "$s1" ]; then
	echo "s1: string não vazia"
fi

if [ "$s1" == "Teste Teste Teste" ]; then
	echo "s1: Correspondência correta"
else
	echo "s1: Correspondência incorreta"
fi
