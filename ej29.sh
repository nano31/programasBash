# ! /bin/bash
# 29. Implemente un script que agregue a un arreglo todos los archivos del directorio /home cuya
# terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan
# acceder a la estructura creada:
# verArchivo <nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se
# encuentra en el arreglo. Caso contrario imprime el mensaje de error “Archivo no encontrado” 
# y devuelve como valor de retorno 5
# cantidadArchivos: Imprime la cantidad de archivos del /home con terminación .doc
# borrarArchivo <nombre_de_archivo>: Consulta al usuario si quiere eliminar el archivo lógicamente. 
# Si el usuario responde Si, elimina el elemento solo del arreglo. Si el
# usuario responde No, elimina el archivo del arreglo y también del FileSystem. Debe
# validar que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje
# de error “Archivo no encontrado” y devuelve como valor de retorno 10

arreglo=($(find $HOME -name "*.doc")) #crea el arreglo con todos los archivos .doc que hay en /home

function verArchivo{
    existe=false
    for i in ${arreglo[@]}; do
        if [ echo "$1" = echo "$i" ]; then
            existe=true
            echo "$i"
            break
        fi
    done
    if [ $existe="false" ]; then
        echo "Archivo no encontrado"
        exit 5
    fi
}

function borrarArchivo{
    existe=false
    j=0
    for i in ${arreglo[@]}; do
        if [ echo "$1" = echo "$i" ]; then
            existe=true
            echo "Archivo encontrado"
            echo "Eliminar logicawmente? s/n"
            read opc
            if [ $opc = "s" ]; then
                unset ${arreglo[$i]}
            else
                rm $1 #se puede hacer?
            fi
        fi
    done
    if [ $existe = "false"]; then
        echo "No se encontro el archivo"
        exit 10
    fi
}

function cantidadArchivos{
    echo "${#arreglo[@]}"
}