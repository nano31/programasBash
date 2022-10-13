# ! /bin/bash
# 2. Escriba un script que reciba una cantidad desconocida de parámetros al momento de su 
#invocación (debe validar que al menos reciba 1). Cada parámetro representa la ruta absoluta de un archivo o 
#directorio del sistema. El script deberá iterar por todos los parámetros recibidos, y:
#     1. Si el parámetro es un archivo existente del file system deberá comprimirlo dejando el archivo comprimido en 
#lugar del original.
#     2. Si el parámetro es un directorio existente del file system:
#         1. Si tiene permiso de lectura deberá empaquetarlo y comprimirlo.
#         2. Si tiene permiso de escritura deberá eliminarlo junto con todo su contenido.
#     3. Si el parámetro no es un elemento del file system (no existe), deberá contarlo e indicar la cantidad total al 
#finalizar el script.

if [ $# -ne 1 ]; then
    echo "No se recibieron parametros"
    exit 1
else
    inexistentes=0
    for elem in $* do

        if [ -f $elem ]; then
            tar -cvf archivo.tar $1
        elif [ -d $elem ];
            if [ -r $elem ]; then
                tar -cvzf archivoCompyEmp.tar.gz $1 
            elif [ -w $elem ]; then
                rm $1
            fi
        else 
            inexistentes=$(expr $inexistentes + 1)
        fi

    done
fi
#############################################################
if [ $# -ne 2 ]; then
    echo "El script debe recibir 2 parametros"
    exit 1
else
    if [ "$2" = "-f" ]; then
        cantidadArch=0
        for elem in $1 do
            if [ -f $elem ]; then
                cantidad=$(expr $cantidadArch + 1)
            fi
        done
        echo "La cantidad de archivos en $1 es: $cantidadArch"
        exit 0
    elif [ "$2" = "-d" ]; then
        cantidadDir=0
        for elem in $1 do
            if [ -d $elem ]; then
                cantidadDir=$(expr $cantidadDir + 1)
            fi
        done
        echo "La cantidad de directorios en $1 es: $cantidadDir"
        exit 0
    elif [ ! -d $1 ] || [ "$2" != "-d" ] || [ "$2" != "-f"]; then
        echo "Error"
        exit 2
    fi
fi