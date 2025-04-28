datos = c(12, 15, 14, 19, 22, 18, 21)
rango = max(datos) - min(datos)
rango

#min(x) devuelve el valor mas bajo
#max(x) devuelve el valor mas alto

range(datos)
rango1 = diff(range(datos))


#Para una muestra
datos = c(12, 15, 14, 19, 22, 18, 21)
sd(datos)

#Para una poblacion 
desv_poblacional = sqrt(sum((datos-mean(datos))^2)/length(datos))
desv_poblacional


# Varianza muestral
var(datos)

# Varianza poblaciona
var_poblacional = sum((datos-mean(datos))^2)/length(datos)
var_poblacional


# sd() calcula la desviacion estandar muestral 
# var() calcula la varianza muestral 
# sqrt() calcula la raiz cuadrada 
# sum() sumatoria de valores
# mean() calcula la media 
# lenght() Cuanta cuantos datos hay

# Coeficiente de variacion 
cv_muestral = sd(datos)/mean(datos)*100
cv_muestral


# Medidas de posicion relativa

# puntuaciones Z
valor_z = (sort(datos)-mean(datos))/sd(datos)
valor_z 


