#las variables no tienen tipos definidos, es decir, pueden empezar siendo
#por ejemplo un string y pasar a ser un integer sin problema
#Ejemplo
variable=5
echo "Valor de la variable: $variable" #Valor de la variable: 5
variable="Franco"
echo "Valor de la variable nueva: $variable" #Valor de la variable nueva: Franco

#el nombre de las variables pueden tener mayusculas, minúsculas, underscores "_" y números,
#pero su nombre nunca puede iniciar con un número

#Utilizando comillas dobles a la hora de imprimir en consola, se puede utilizar $var y $(ls), 
#con las comillas simples, no puede utilizarse la sintaxis mencionada anteriormente.