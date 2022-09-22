#! /bin/bash
# se debe hacer una calculadora la cual recibe la operacion y los
# operandos como parametros
# siendo $1 y $3 los numeros y $2 el operador
if [ $# -ne 3 ]; then
    exit 1
else 
    echo "Resultado: $(expr $1 $2 $3)"
fi
exit 0