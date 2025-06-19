# Probabilidad en la cola superior
p <- 0.10

# Encontrar z
z <- qnorm(p, lower.tail = FALSE)

# Secuencia de valores
x <- seq(-4, 4, length = 1000)
y <- dnorm(x)

# Graficar curva normal
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = paste("Área en la cola superior: P(Z ≥ z) =", p),
     xlab = "Valores de Z", ylab = "Densidad")

# Sombrear cola derecha
polygon(c(z, x[x >= z], max(x)),
        c(0, y[x >= z], 0),
        col = "skyblue",border = NA)

# Línea vertical
abline(v = z, col = "red", lty = 2)

# Mostrar z calculado
text(z + 0.5, 0.02, paste("z =", round(z, 4)), col = "black")