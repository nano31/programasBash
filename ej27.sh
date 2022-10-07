# ! /bin/bash
# 27. Realice un script que implemente a través de la utilización de funciones las operaciones
# básicas sobre arreglos:
# inicializar: Crea un arreglo llamado array vacío
# agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido
# eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en la
# posición recibida como parámetro. Debe validar que se reciba una posición válida
# longitud: Imprime la longitud del arreglo en pantalla
# imprimir: Imprime todos los elementos del arreglo en pantalla
# inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud
# <parametro1>y en todas las posiciones asigna el valor <parametro2>

function inicalizar{
    return array=()
}

function agregar_elem{
   if [ $# -ne 1 ]; then
        echo "Se debe pasar un parametro" 
   else
        array[${#array[@]}]=$1
   fi
}

function eliminar_elem{
    if [ $1 -le ${#array[@]} ]; then
        unset array[$1]
    else
        echo "La posicion recibida como parametro no es valida"
    fi
}

function longitud{
    echo "${#array[@]}"
}

function imprimir{
    echo "${array[@]}"
}

function inicializar_Con_Valores{
    if [ $# -ne 2 ]; then
        echo "Se deben recibir 2 parametros"
    else
        array=()
        for ((i=0; i < $1; i++)); do
            array[i]=$2
        done
        echo "Arreglo cargado ${array[@]}"
    fi
}
