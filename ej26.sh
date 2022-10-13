# ! /bin/bash
# 26. Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invocación 
# (debe validar que al menos se reciba uno). Cada parámetro representa la ruta absoluta
# de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros recibidos, y 
# solo para aquellos parámetros que se encuentren en posiciones impares 
# (el primero, el tercero, ...)verificar si el archivo o directorio existen en el sistema, 
# imprimiendo en pantalla que tipo de objeto es (archivo o directorio). Además, 
# deberá informar la cantidad de archivos o directorios inexistentes en el sistema.

if [ $# -eq 0 ] then
    echo "El script debe recibir al menos 1 parametro"
    exit 1
else
    cantInex=0
    vector=($*) #almacena en el arreglo todos los parametros recibidos
    for i in ${#vector[@]}; do

        if [ $i % 2 -ne 0 ]; then
            if [ -e ${vector[$i]} ] then
                echo "No existe"
                cantInex=$(expr $cantInex + 1)
            else
                if [ -d ${vector[$i]} ] then
                    echo "Existe y es un directorio"
                elif [ -f ${vector[$i]} ] then
                    echo "Existe y es un archivo"
                fi
            fi
        fi
    done
fi
exit 0