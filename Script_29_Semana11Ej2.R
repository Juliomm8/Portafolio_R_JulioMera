#Valor z referencias
z = 1.5

# Crear valores para el eje X (desde -4 a 4)
x <- seq(-4, 4, length = 1000)

#Densidad de la normal estándar
y = dnorm(x)

#Graficar la curva normal
plot(x, y, type= "l", lwd= 2, col = "blue",
main= paste("Area bajo la curva hasta z=", z),
xlab= "Valores de z", ylab= "Densidad")

# Rellenar el área bajo la curva hasta z
polygon(c(x[x<=z],z), c(y[x<=z], 0), col= "skyblue", border = NA)

# Añadir línea vertical en z
abline(v=z, col="red", lty= 2)

# Mostrar la probabilidad acumulada hasta z
prob <- pnorm(z)
text(z, 0.02, paste("P(Z <=", z,") = ", round(prob, 4)), pos = 4, col = "black")