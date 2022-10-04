pila=() #para almacenar los elementos que iran a la pila se utiliza un array
function lenght{
    return ${#pila[*]} #devuelve el tamaño de la pila 
}

function pop{
    unset pila[$(expr ${pila[*]} - 1)] #expr ${pila[*]} - 1) --> le resta uno al tamño de la pila
    #con unset se elimina el elemento 
}

function push{
    return pila[${#pila[pila[*]]}]=$1 #añade el valor pasado como parametro a la pila
}

function print{
    echo "${pila[*]}"
}
exit 0 