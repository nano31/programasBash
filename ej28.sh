# ! /bin/bash
# 28. Realice un script que reciba como parámetro el nombre de un directorio. Deberá validar que
# el mismo exista y de no existir causar la terminación del script con código de error 4. Si el
# directorio existe deberá contar por separado la cantidad de archivos que en él se encuentran
# para los cuales el usuario que ejecuta el script tiene permiso de lectura y escritura, e informar
# dichos valores en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y
# tampoco deberán ser tenidos en cuenta para la suma a informar.

if [ $# -ne 1 ]; then
    echo "El script debe recibir un parametro"
    exit 1
else
    if [ -d $1 ]; then
        cont=0
        #se utiliza ls -l, ya que con el parametro -l dentro del ls, podemos
        # observar los permisos que tiene el usuario sobre el archivo.
        for i in $(ls -l $1); do  
            if [ -f $1/$i ]; then
                if [ -r $1/$i ] && [ -w $1/$i ]; then
                    cont=$(expr $cont + 1)
                fi
            fi
        done
        echo "Cantidad de archivos que cumplen la condicion: $cont"
    else
        echo "Erro 4, el direcotorio no existe"
        exit 4
    fi
fi