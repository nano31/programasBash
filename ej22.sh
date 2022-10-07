# ! /bin/bash
# 22. Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad
# de elementos del arreglo puede variar). Implemente la función productoria dentro de este
# script, cuya tarea sea multiplicar todos los números del arreglo


num=(1 2 3 4 5)

function productoria{
    for num in ${num[@]}; do
        mul=$(expr $mul \* num)
    done
    echo "El resultado es $mul"
}