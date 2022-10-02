#!/bin/bash
#con el comando mv, se puede renombrar los archivos
#si se utiliza -v seguido de mv, muestra en la terminal
#el cambio realizado
if [ $# -ne 3 ]; then
    echo "No se enviaron los parametros necesarios"
    exit 1
else
    if [ -d $1 ] then
        case $2 in
            "-a")   
                    for FILE in $(ls $1); do
                        mv $1$FILE $1$FILE$3
                    done
                    ;;
            "-b")
                    for FILE in $(ls $1); do
                        mv $1$FILE $1$3FILE
                    done
                    ;;
            *)
                echo "No se envio correctamente el parametro"
                exit 1
                ;;
        esac
    else
        echo "No se envio un directorio"
    fi

fi
exit 0

