# Cargar datos
data("airquality")

# Ver resumen
summary(airquality$Temp)

# Quitar valores faltantes (NA)
temp = na.omit(airquality$Temp)

# Definir parametros
aclase = 5  #amplitud de clase
liminf = floor(min(temp))
limsup = ceiling(max(temp))
breaks = seq(liminf, limsup, by = aclase)

#tabla de frecuencia 
tabla_frec = table(cut(temp, breaks = breaks, right = FALSE))

# Generar tabla final
tabla_final = data.frame(Clase = names(tabla_frec), 
                         Frecuencia = as.numeric(tabla_frec)
)

tabla_final

#calcular puntos medios (marcas de clase)
puntos_medios<-(head(breaks, -1)+tail(breaks,-1))/2

#extraer frecuencias
frecuencias <-as.numeric(tabla_frec)

#calcular la media estimada
media_estim <- sum(frecuencias*puntos_medios)/sum(frecuencias)

#mostrar resultado
media_estim

mean(temp)
