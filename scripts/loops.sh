#!/bin/bash

# Laço simples
for i in {1..10}; do
  echo "Número $i"
done

# Definindo máximo de iterações
max=10
for (( i=0; i < max; i++)); do
    echo "Número $i"
done

# While
j=1
max_j=7
while (( $j < $max_j)); do
    echo "Número $j"
    (( j++ ))
done

while [ $j -lt $max_j ]; do
    echo "Número $j"
    (( j++ ))
done

# Percorrendo arquivos
arquivos=`ls`
for i in $arquivos; do
  if [ -f $i ]; then
    echo "$i: Um arquivo";
  fi
  if [ -d $i ]; then 
    echo "$i: Um diretório";
  fi
done