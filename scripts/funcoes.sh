#!/bin/bash

# Função para cumprimentar o usuário
cumprimentar() {
    echo "Olá, $1";
}

#cumprimentar $1

# Função para imprimir arquivo
imprime_arquivo() {
    # verifica se é arquivo
    if [ -f $1 ]; then
        cat $1
    else
        echo "Arquivo não existe"
    fi
}

# Usuário deve inserir o nome do arquivo
read -p "Qual o nome do arquivo: " nome
# Chamada da função
imprime_arquivo $nome