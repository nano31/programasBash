#! /bin/bash
#con el comando tr (translate) se puede cambiar o eliminar caracteres
#en este caso se usa para cambiar minúsculas por mayúsculas y viceversa
for file in $(ls); do
    newName=$(ls | tr -d "aA" | tr '[:lower:][:upper:]' '[:upper:][:lower:]' )
    echo "mv $file $newName"
done