#31-03-2025 Distribucion


#La table no hace distribucion de frecuencia
table(Tiempo_MacDonald$Tiempos)

LI = c(75,125, 175, 225, 275)
LS = c(124, 174, 224, 274, 324)
MC = (LI+LS)/2

#Automatizar el conteo de la frecuancia, en base LI  y LS
FA = c(11, 24, 10, 3, 2)

dist_fre = data.frame(LI, LS, MC, FA)

dist_fre$FR = FA/50


#Crear una nueva VAR: "FP",  FR*100

dist_fre$FP = dist_fre$FR*100
   
# Histograma
hist(Tiempo_MacDonald$Tiempos)

# Puede ser que en el segundo 200 se le acabo los productos hecho, 
# y tuvieron que hacer mas y por eso se acabo
# Puede ser que cambia la frecuencia en el dia y en la noche
# El empleado del mes estaba trabajando ese dia

