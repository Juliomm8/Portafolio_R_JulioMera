# Probabilidad en la cola inferior
p <- 0.10

# Encontrar z
z <- qnorm(p)

# Gráfico
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = paste("Área en la cola inferior: P(Z ≤ z) =", p),
     xlab = "Valores de Z", ylab = "Densidad")

# Sombrear cola izquierda
polygon(c(min(x), x[x <= z], z),
        c(0, y[x <= z], 0),
        col = "skyblue",border = NA)

# Línea vertical
abline(v = z, col = "red", lty = 2)

# Mostrar z calculado
text(z - 0.5, 0.02, paste("z =", round(z, 4)), col = "black")