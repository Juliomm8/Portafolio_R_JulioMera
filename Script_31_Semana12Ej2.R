# Valores de z
z1 <- -1
z2 <- 1.5

# Eje x
x <- seq(-4, 4, length = 1000)

# Densidad normal estándar
y <- dnorm(x)

# Graficar curva
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = paste("Área bajo la curva entre Z =", z1, "y Z =", z2),
     xlab = "Valores de Z", ylab = "Densidad")

# Sombrear área entre z1 y z2
x_sombra <- x[x >= z1 & x <= z2]
y_sombra <- y[x >= z1 & x <= z2]
polygon(c(z1, x_sombra, z2),
        c(0, y_sombra, 0),
        col = "skyblue",border = NA)

# Líneas verticales
abline(v = z1, col = "red", lty = 2)
abline(v = z2, col = "red", lty = 2)

# Calcular probabilidad
prob <- pnorm(z2) - pnorm(z1)
text((z1 + z2) / 2, 0.02, paste("P(", z1, "≤ Z ≤", z2, ") ≈", round(prob, 4)), col = "black")