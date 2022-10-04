# !/bin/bash
array=(1 2 3)
echo "Se imprime el elemento en la pos 1 del array: ${array[1]}"

echo "Se imprimen todos los elementos del array"
for i in "${array[@]}"
do
    echo $i
done

echo "El tamaño del array es: ${#array[@]}"

echo "Se agrega un elemento al array"
numero=98

function add(){
    array[${#array[@]}]=$1
}

add $numero

echo "Se imprimen todos los elementos del array"
for i in "${array[@]}"
do
    echo $i
done

echo "Se elimina el elemento en la pos 1 del array"

function sub(){
    unset array[$(expr ${#array[@]} - 1)]
    echo "tamaño del array es: ${#array[@]}"
}

sub
echo "Se imprimen todos los elementos del array"
for i in "${array[@]}"
do
    echo $i
done
