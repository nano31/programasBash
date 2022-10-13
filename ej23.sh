# ! /bin/bash
# 23. Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla
# sólo los números pares y que cuente sólo los números impares y los informe en pantalla al
# finalizar el recorrido.


if [ $# -ne 0 ] then
    echo "Este script no necesita parametros"
    exit 1
else
    array=(1 2 5 4 9 8 10 11)
    cont=0
    for i in ${array[@]}; do
        if [ ${array[i]} % 2 -eq 0 ] then
            echo "Numero $i"
        else
            cont=$(expr $cont + 1)
        fi
    done
    echo "La cantidad de elemento impares fue $cont"
fi
exit 0