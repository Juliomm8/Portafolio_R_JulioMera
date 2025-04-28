# Nombre: Julio Mera
# Fecha: 24/04/2025
# NCR 5498
#Examen Progreso 1

# Ejercicio 1

# En sus palabras responda las siguientes preguntas
# a) Que es una distribucion de freceuncia?
# Es una tabla o una grafica que sirve para ver los datos distruidos en ellos.

# b) Que representa la mediana?
# La mediana es el valor del medio de los datos, si el numero de los datos es impar 
# es el del medio, si son datos pares, se saca la los 2 dotos que estan en el medio y 
# se saca el promedio

# c) Que representa la media?
# Es la suma de los valores, y se divide por la cantidad de datos

# Ejercicio 2
# 

set.seed(711)
znorm = rnorm(1000, mean = 50, sd = 10)
z = -exp(znorm/20)+100

nclases = 11
aclass = (max(z)- min(z))/nclases
breaks = seq(floor(min(z)), floor(min(z)) + nclases * round(aclass), by = round(aclass))
frec = table(cut(z, breaks = breaks, right = FALSE))

frec_rel = prop.table(frec)
frec_por = frec_rel*100

frec_acum = cumsum(frec)
frec_acum_rel = cumsum(frec_rel)
frec_acum_por = cumsum(frec_acum)

data.frame(Clase = names(frec), 
           Frecuencia = as.numeric(frec),
           FrecuenciaRelativa = round(as.numeric(frec_rel),3), 
           FrecuenciaPorcentual = round(as.numeric(frec_por), 2),
           FrecuenciaAcumuulada = as.numeric(frec_acum),
           FrecuenciaRelativaAcumulada = round(as.numeric(frec_acum_rel), 3),
           FrecuanciaPorcentualAcumulada = round(as.numeric(frec_acum_por), 2)
           )

hist(z, breaks = breaks)

# b) Respindeer las siguientes preguntas 
# Cuantas veces el sistema cargo entre 81 y 86 milisegundos?
# Cargo 215

# Que porpocion de veces cargo 66 y 71
# 2.0 

# Que porcentaje de accesos fue mas rapido que 86 milisegundos
# un 0.39% 


# Pregunta 3 
# La forma que tiene asietrica con una cola hacia la izquierda

# Pregunra 4
 
mean(z)
# Media es 86.28

median(z)
# Mediana es 88.18


library(modeest)
moda = mfv(z)
moda
# Moda, sale que existe varias modas, interpreto que no va a ser que les cargue a todos igual
# y que no se puede definir



#Pregunta 5
HorasDeUsosDeREdes = c(9, 8, 7, 6, 5, 4, 3, 2)
Calificaciones = c(5, 6, 6.5, 7, 8, 8.5, 9, 10)
plot(HorasDeUsosDeREdes, Calificaciones, main = "x",
     xlab = "",
     ylab = "",
     pch = 19,
     col = "blue")
r = cor(HorasDeUsosDeREdes, Calificaciones)
