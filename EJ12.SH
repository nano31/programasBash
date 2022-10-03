#! /bin/bash
#se deben ingresar dos numeros por teclado
#y luego realizar una operacion con ellos
#se debe informar al final el mayor numero leido
echo "Ingrese el primer numero: "
read num1
echo "Ingrese el segundo numero: "
read num2
echo "Multiplicacion: `expr $num1 \* $num2`"
echo "Suma: `expr $num1 + $num2`"
echo "Resta: `expr $num1 - $num2`"
echo "Division: `expr $num1 / $num2`"
if [ $num1 -gt $num2 ]; then
    echo "El numero mayor es $num1"
    exit
else
    echo "El numero mayor es $num2"
fi