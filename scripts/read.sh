#!/bin/bash

read -p "Qual é o seu nome? " nome
echo "Olá, $nome"

read -s -n1 -p "Você aceita continuar? (y/n) " continuar
echo

read -n1 -p "Digite qualquer tecla para sair " 

exit 0
