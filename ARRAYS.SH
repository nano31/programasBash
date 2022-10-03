#Los índices de los arreglos comienzan en cero (0)
#creación de un array vacío
arreglo_a=() 

#Creación de un array inicializado
arreglo_b=(1 2 3 4 5 6)

#Asignación de un valor a una posición concreta
arreglo_b[2]=spam

#Acceso a un valor dentro del arreglo
echo ${arreglo_b[2]}
copia=${arreglo_b[2]}

#Acceso a todos los valores del arreglo
echo ${arreglo[ @ ]}
#o también puede usarse:
echo ${arreglo[ * ]}