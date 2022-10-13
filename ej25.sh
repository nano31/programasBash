# ! /bin/bash
# 25. Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema
# pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro:
# “-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso
# contrario, un mensaje de error.
# “-l”: Devuelve la longitud del arreglo
# “-i”: Imprime todos #1 los elementos del arreglo en pantalla
if [ $# -eq 0 ] then
    usuarios=($(cat /etc/group | grep users | cut -d -f4 | tr ',' ' '))
elif
    usuarios=($(cat /etc/group | grep users | cut -d -f4 | tr ',' ' '))
    case $1 in
        "-b") 
            if [ $2 -lt 0] || [$2 -gt ${#usuarios[@]}] then
                echo "valor de n invalido"
            else 
                echo "${arreglo[$2]}"
            fi
        ;;

        "-l")
            echo "La longitud del arreglo es: ${#usuarios[@]}"
        ;;
        
        "-i")
            for i in ${#usuarios[@]}; do
                echo $i
            done
            # echo "${usuarios[@]}"
        ;;
        *) echo "El parametro ingresado no es valido"
    esac
fi