# ! /bin/bash

ficheros=$HOME/users

echo "Imprimo el arreglo completo"
echo "${ficheros[*]}"
echo "tamaño del array"
echo "${#ficheros[*]}"

for ((i=0; i < ${#ficheros[*]}; i++)) do
    echo "valor de i: $i"
    if [ $(expr $i % 2) -eq 0 ]; then
        echo "Es par"
    else
        echo "Es impar"
    fi
done