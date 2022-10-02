#! /bin/bash
#con el comando tr (translate) se puede cambiar o eliminar caracteres
#en este caso se usa para cambiar minúsculas por mayúsculas y viceversa
for file in $(ls); do
    newName=$(echo $file | tr 'a-z' 'A-Z' | tr -d "a")
    mv $file $newName
done