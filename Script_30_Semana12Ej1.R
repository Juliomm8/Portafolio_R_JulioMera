# Valor de z
z <- 1.2

# Secuencia de valores para el eje X
x <- seq(-4, 4, length = 1000)

# Densidad de la distribución normal estándar
y <- dnorm(x)

# Graficar la curva normal
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = paste("Área bajo la curva para Z ≥", z),
     xlab = "Valores de Z", ylab = "Densidad")

# Sombrear el área a la derecha de z
polygon(c(z, x[x >= z], max(x)),
        c(0, y[x >= z], 0),
        col = "skyblue",border = NA)

# Línea vertical en z
abline(v = z, col = "red", lty = 2)

# Mostrar valor de probabilidad
prob <- pnorm(z, lower.tail = FALSE)
text(z + 0.5, 0.02, paste("P(Z ≥", z, ") ≈", round(prob, 4)), col = "black")