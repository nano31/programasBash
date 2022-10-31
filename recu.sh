# ! /bin/bash
if [ $# -eq 0 ]; then
    echo "el programa necesita 1 parametro"
    exit 1
else
    users=()
    # IFS=$""
    for user in $(cat /etc/passwd | grep $1 | cut -d: -f1); do
        users[${#users[*]}]=$user
    done

    usuarioConectado=$(whoami)
    contador=0
    
    echo "usuario conectado => $usuarioConectado"
    for i in "${users[*]}" 
    do
        while [ $contador -ne 30 ]; do
            if [ "${users[$i]}" = "$usuarioConectado" ]; then
                echo "esta"
                contador=$(expr $contador + 1)
                #el error se encuentra en estas líneas, preguntar
                echo -e "Usuario: ${usuarioConectado} \t Fecha:"`date + %d%m%y`" \t Hora:"`%H:%M`"" >> $HOME/hola/access$1.txt
            fi
            sleep 30s
        done
    done
    echo "El proceso finalizó exitosamente"
    exit 0
fi

# ! /bin/bash
#EJERCICIO 18 DEL PARCIAL

archivos=()
for $arch in $HOME/var/log do
    if [ -f $arch ]; then
        archivos[${#archivos[*]}]=$arch
    fi
done
case $opt in Cantidad, Listar, Eliminar, Fin; do
        "Cantidad")
            cantidadDeArchivos
        ;;
        "Listar")
            listarArchivos
        ;;
        "Eliminar")
            echo "Seleccione el archivo a borra y una opcion: l (borrado logico) | f (borrado fisico)"
            eliminarArchivo
        ;;
        "Fin")
            exit 0
        ;;
        *)
            echo "Seleccion invalida"
            exit 1
        ;;
esac

function cantidadDeArchivos{
    echo "${#archivos[*]}"
}

function listarArchivos{
    for i in $archivos do
        echo $i
    done
}

function eliminarArchivo{
    indice=0
    if [ $# -ne 2 ]; then
        echo "La funcion debe recibir dos parametros"
        break
    else
        for elem in $archivos do
            if [ "$elem" = "$1" ]; then
                if [ "$2" = "l" ]; then
                    unset ${archivos[$indice]}
                elif [ "$2" = "f" ]; then
                    unset ${archivos[$indice]}
                    $(rm /var/log/$elem)
                fi
            fi
            indice=$(expr $indice + 1)
        done
    fi
}

#! /bin/bash
#EJERCICIO 19 DEL PARCIAL

if [ $# -eq 0 ]; then
    echo "El script debe recibir 1 parametro"
    exit 1
else
    if [ -z $SERVICE ]; then
        $SERVICE="local_service"
    else
        contador=0
        archivos=$(/var/log/$SERVICE | grep $1)
        for elem in $archivos do
            if [ -f $elem ]; then
                contador=$(expr $contaador + 1)
            fi
        done
    fi
    exit 0
fi

