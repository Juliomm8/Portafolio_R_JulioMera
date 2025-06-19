# Punto fijo a y probabilidad deseada
a <- -1
p <- 0.70

# Calcular P(Z ≤ a)
p_a <- pnorm(a)

# Área acumulada requerida para hallar z
p_total <- p + p_a
z <- qnorm(p_total)

# Gráfico
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = paste("Área entre Z =", a, "y z tal que P =", p),
     xlab = "Valores de Z", ylab = "Densidad")

# Sombrear área entre a y z
x_sombra <- x[x >= a & x <= z]
y_sombra <- y[x >= a & x <= z]
polygon(c(a, x_sombra, z),
        c(0, y_sombra, 0),
        col = "skyblue",border = NA)

# Líneas verticales
abline(v = a, col = "red", lty = 2)
abline(v = z, col = "red", lty = 2)

# Mostrar valor z calculado
text((a + z) / 2, 0.02, paste("z =", round(z, 4)), col = "black")
