if [ $# -ne 0 ] then
    echo "Error, no se deben pasar parametros"
    exit 1
else
    echo "Menu de opciones"
    select opcion in $(ls); do
        case $opcion in
            "salir")
                echo "Saliendo"
                exit 0
            ;;
            *) bash $opcion
            ;;
        esac
done
fi
exit 0