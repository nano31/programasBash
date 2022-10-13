# ! /bin/bash
# 30. Realice un script que mueva todos los programas del directorio actual (archivos ejecutables)
# hacia el subdirectorio “bin” del directorio HOME del usuario actualmente logueado. El script
# debe imprimir en pantalla los nombres de los que mueve, e indicar cuántos ha movido, o
# que no ha movido ninguno. Si el directorio “bin” no existe,deberá ser creado.

if [ $# -ne 0; then
    echo "No se deben recibir parametros"
    exit 1
else
    bin=$HOME/bin
    if [ ! -e $bin]; then
        mkdir bin
    else
        for i in $(find $(pwd) -name *.exe); do
            mv $i $bin
            if [ $? -eq 0 ]; then
                echo "El archivo fue movido con exito"
            else
                echo "El archivo no pudo ser movido"
            fi
         done
    fi
fi
exit 0