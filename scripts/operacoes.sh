#!/bin/bash

a=10

# Incremento
(( a++ )) # a =11
echo "a++ = $a"

# Atribuição de novo valor a variável
a=$(( a+1 ))
echo "a + 1 = $a"

# Multiplicação
b=$(( a * 2 ))
echo "a *2 = $b"

# Divisão
c=$(( b / a))
echo "$b / $a = $c"

# Resto da divisão
c=$(( 10 % 4))
echo "Resto de 10 / 4 = $c"