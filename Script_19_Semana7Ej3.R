#Rango
datos = c(12,15,14,19,22,18,21)
rango = max(datos) - min(datos)
rango

#min(x)#devuelve el valor más bajo
#max(x)#devuelve el valor más alto

range(datos)
rango1=diff(range(datos))
rango1


#desviacion standard 
#mide la dispercion respecto a la media
#son las mismas unidades de los valores trabajados

#para una poblacion

desv_poblacional = sqrt(sum((datos-mean(datos))^2)/length(datos))
desv_poblacional                      

#varianza muestral
var(datos)

#varianza poblacional
var_poblacional = sum((datos-mean(datos))^2)/length(datos)
var_poblacional
#varianza
# es igual al cuadrado de la div. std.
#no es comun usar, unidades son trabajadas al cuadrado

#coeficiente de variacion 
#para un conjuto de datos muestrales o poblaciones
#no negativos, expresado como % describe la desviacion estandar en relacion con 
#la media


# muestra : /x
#poblacion:  /u
cv_muestral=sd(datos)/mean(datos)*100
cv_muestral


#medias de poscion relativa
#indica la ubicacion de valores en relacion con los demas valores dentro del mismo conjunto 
#puntuacion z: a cuantas divisiones std. se ecuentra un valor respecto de la media
valor_z = (sort(datos)-mean(datos))/sd(datos)
valor_z
#numeros sin medida
#permite indetificar valores por encima o debjao de la medida
#permite comparar mas datos en diferentes escalas
#permite comparar datos en diferentes escalas

#percentiles
quantile(datos, probs = c(0.25,0.5,0.75)) #cuartiles
quantile(datos, probs = c(0.1,0.9))
#cuartiles
#si quiero solo parte numerica unicamnete uso "as.numeric"
as.numeric(quantile(datos,probs=c(0.1,0.9)))

#Rango intercuartílico RIQ: "QUARTIL 3 - QUARTIL 1"

#Rango semi-intercuartílico  : Mitad del RIQ

#Cuartil Medio: Promedio de "Q1 y Q3"

#Rango percentil 10-90: Dispecion del 80% central

Q1= as.numeric(quantile(datos,0.25))

Q3=as.numeric(quantile(datos,0.75))

RIQ= Q3-Q1
RIQ

RSIQ= RIQ/2
RSIQ

CM= (Q1+Q3)/2
CM
#rango percentil 10,90
diff(as.numeric(quantile(datos,probs=c(0.1,0.9))))

summary(datos)

#graficar
boxplot(datos,range =0, main = "diagrama de caja y bigotes", horizontal = TRUE)

LI=Q1-1.5*RIQ
LS=Q3+1.5*RIQ
outliers = datos [datos < LI | datos > LS]
outliers

boxplot(datos, main = "diagrama de caja y bigotes", horizontal = TRUE)

datos =  c(-50,12,15,14,19,22,18,21,100)

