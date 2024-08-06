#!/bin/bash

a=10
b=2
c=8

# Maior que
if [ $a -gt $b ]
then
	echo "$a > $b"
fi

if (( $a > $b ));then
	echo "$a maior que $b"
fi

# Menor que
if [ $c -lt $b ];then
	echo "$c < $b"
fi

# Igual a
if [ $a -eq 10 ]; then
	echo "$a é 10"
fi

# Maior ou Igual a
if [ $a -ge $b ]
then
	echo "$a >= $b"
fi

# Negação
if [ ! $a -ge $b ]
then
	echo "$a <= $b"
fi
