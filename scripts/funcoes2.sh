#!/bin/bash

# Função responsável por calcular um fatorial
fatorial() {
    v=$1
    # verificar se o parâmetro foi passado
    if [ $# -eq 1 ]; then
        resultado=1
        while (( v > 1 )); do
            resultado=$(( resultado * v ))
            v=$(( v-1 ))
        done
    else
        resultado=1
    fi
    # return $resultado
    echo "O fatorial de $1 é $resultado"
}

fatorial $1
#echo $?