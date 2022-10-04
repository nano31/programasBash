# !/bin/bash

pila=() #para almacenar los elementos que iran a la pila se utiliza un array

function lenght(){
    echo "El tamaño de la pila es: ${#pila[@]}"  
}

function pop(){
    unset pila[$(expr ${#pila[@]} - 1)] 
    echo "El tamaño de la pila es: ${#pila[@]}"
    #expr ${pila[*]} - 1) --> le resta uno al tamño de la pila
    #con unset se elimina el elemento 
}

function push(){
    pila[${#pila[@]}]=$1 #añade el valor pasado como parametro a la pila
}

function print(){
    for elem in ${pila[@]}; do
        echo $elem
    done
}

#test
push 4
push 3
push 10
lenght
print
echo "Pop"
pop
print
 
exit 0 