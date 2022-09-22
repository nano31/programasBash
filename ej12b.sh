#! /bin/bash
# se debe hacer un script parecido al 12a, pero en este caso
# los numero deben pasarse como parametros
echo "Se realiza una suma con los valore $*"
echo "Suma: `expr $1 + $2`"
echo "Resta: `expr $1 - $2`"
echo "Multiplicacion: `expr $1 \* $2`"
echo "Division: `expr $1 / $2`"
if [ $1 -gt $2 ]; then
    echo "El numero mayor fue $1"
    exit
else
    echo "El numero mayor fue $2"
fi