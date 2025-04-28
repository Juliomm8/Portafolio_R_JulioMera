estudio=c(2,3,5,6,7,8,9,10,12,14)
nota=c(60,65,70,72,74,78,82,85,88,90)

plot(estudio, nota, 
     main = "Diagrama de Dispersion: Horas de Estudio vs Nota",
     xlab = "Horas de Estudio",
     ylab = "Nota",
     pch = 19,
     col = "purple")
      
r = cor(estudio, nota)

gl = length(estudio)-2
alpha = 0.05
t_crit = qt(1 - alpha/2, df = gl)
r_critico = t_crit / sqrt(t_crit ^ 2 + gl)

if(abs(r) > r_critico) {
  print("Hay evidencia suficiente para apoyar la afirmacion de una correlacion lineal")
} else {
  print("No hay evidencia suficiente para apoyar la afirmacion de una correlacion lineal")
}