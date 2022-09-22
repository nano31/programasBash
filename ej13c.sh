if [ -f $1 ]; then
    echo "Existe y es un archivo"
elif [ -d $1 ]; then
    echo "Existe y es un directorio"
else
    echo "No existe, hay que crearlo"
    mkdir $HOME/$1
    echo "$(ls $HOME)"
fi
exit 0