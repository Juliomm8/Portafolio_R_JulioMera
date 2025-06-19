tiempos =c(215, 220, 222, 230, 225, 228, 245, 249, 251, 240,
           235, 237, 260, 262, 265, 270, 275, 280, 285, 290,
           295, 300, 310, 320, 315, 312, 305, 299, 289, 278)

tiempos2=c(241, 246, 241, 278, 250, 234, 262, 232, 253, 221, 
           230, 253, 261, 253, 248, 245, 228, 239, 243, 266, 
           255, 224, 255, 244, 240, 259, 265, 264, 170, 330)

# Rango
range(tiempos)
rango1=diff(range(tiempos))
rango1

range(tiempos2)
rango2=diff(range(tiempos2))
rango2

# Varianza
var(tiempos)
var(tiempos2)

# Desviacion estandar
sd(tiempos)
sd(tiempos2)

# Coeficiente de variacion
cv_muestral1=sd(tiempos)/mean(tiempos)*100
cv_muestral1
cv_muestral2=sd(tiempos2)/mean(tiempos2)*100
cv_muestral2

# Cuartiles(1, 2, 3)
quantile(tiempos, probs = c(0.25,0.5,0.75)) #cuartiles
quantile(tiempos, probs = c(0.1,0.9))

quantile(tiempos2, probs = c(0.25,0.5,0.75)) #cuartiles
quantile(tiempos2, probs = c(0.1,0.9))

# Rango interacualtilico
Q1_t1= as.numeric(quantile(tiempos,0.25))
Q3_t1=as.numeric(quantile(tiempos,0.75))

Q1_t2= as.numeric(quantile(tiempos2,0.25))
Q3_t2=as.numeric(quantile(tiempos2,0.75))

RIQ1= Q3_t1-Q1_t1
RIQ1

RIQ2= Q3_t2-Q1_t2
RIQ2


boxplot(tiempos, tiempos2, names=c("Servidor 1","Sevidor 2"), 
        col = c("skyblue", "blue"), main = "Tiempos de respuesta", 
        ylab = "Servidor", xlab = "Tiempo (ms)", border = c("darkblue", "lightblue"),
        horizontal = TRUE)
