select var in Listar DondeEstoy QuienEsta
do
    case $var in
            "Listar")
                echo $(ls)
                break
            ;;
            "DondeEstoy")
                echo $(pdw)
                break
            ;;
            "QuienEsta")
                echo $(who)
                break
            ;;
        esac
done