# EJERCICIO:
#1) Rendimiento de compilación en un equipo de desarrollo
#En una empresa de desarrollo de software, se estudian los tiempos de compilación de un proyecto grande.
#Se sabe que esos tiempos siguen una distribución normal con una media de 25 minutos y una desviación
#estándar de 3 minutos.

# Parámetros
x <- 28
u <- 25
v <- 3

# Cálculo del valor z
z <- (x - u) / v

# Rango del eje X (normal NO estándar)
x_vals <- seq(u - 4 * v, u + 4 * v, length = 1000)

# Densidad de la normal
y_vals <- dnorm(x_vals, mean = u, sd = v)

# Graficar la curva normal
plot(x_vals, y_vals, type = "l", lwd = 2, col = "blue",
     main = paste("Área bajo la curva normal hasta x =", x),
     xlab = "Tiempo de compilación (min)", ylab = "Densidad")

# Rellenar el área bajo la curva hasta x
polygon(c(x_vals[x_vals <= x], x), c(y_vals[x_vals <= x], 0), 
        col = "skyblue", border = NA)

# Línea vertical en x
abline(v = x, col = "red", lty = 2)

# Mostrar la probabilidad acumulada
prob <- pnorm(x, mean = u, sd = v)
text(x, max(y_vals)*0.7, paste("P(X ≤", x, ") =", round(prob, 4)), 
     pos = 4, col = "black")



# b) Cual es la probabilidad de que este entre 22 y 30 minutos?

  # Valores de z
x1 <- 22
x2 <- 30
u = 25

# Eje x
x <- seq(u - 4 * v,u + 4 * v, length = 1000)

# Densidad normal estándar
y <- dnorm(x, mean = u, sd = v)

# Graficar curva
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = paste("Área bajo la curva entre Z =", x1, "y Z =", x2),
     xlab = "Valores de Z", ylab = "Densidad")

# Sombrear área entre z1 y z2
x_sombra <- x[x >= x1 & x <= x2]
y_sombra <- y[x >= x1 & x <= x2]
polygon(c(x1, x_sombra, x2),
        c(0, y_sombra, 0),
        col = "skyblue",border = NA)

# Líneas verticales
abline(v = x1, col = "red", lty = 2)
abline(v = x2, col = "red", lty = 2)

# Calcular probabilidad
prob <- pnorm(x2, mean = u, sd = v) - pnorm(x1, mean = u, sd = v)
text((x1 + x2) / 2, 0.02, paste("P(", x1, "≤ Z ≤", x2, ") ≈", round(prob, 4)), col = "black")


# c) Un ingeniero registro un tiempo de compilacion de 33 minutos.
# - Cual es la puntuacion z correspondiente?
x= 33
u = 25
v = 3

z = (x - u)/v
z

# - Ese valor es considerado atipipico si el rango tipico es =- 2o?

# Verificar si es atípic

if (z >= 2) {
  cat("El valor es atípico (z =", round(z, 2), ")\n")
} else {
  cat("El valor NO es atípico (z =", round(z, 2), ")\n")
}






# A partir de que duracion una compilacion se concidera entre el 10 % mas lento  

u = 25 
v = 3
a = 1

x = z * v + u
x

# Probabilidad en la cola superior
p <- 0.10
z <- qnorm(p, mean = u, sd = v, lower.tail = FALSE)  # z ≈ 1.2816

# Secuencia para z
x_vals <- seq(u - 4 * v, u + 4 * v, length = 1000)
y_vals <- dnorm(x_vals, mean = u, sd = v)

# Graficar la curva normal estándar
plot(x_vals, y_vals, type = "l", lwd = 2, col = "blue",
     main = paste("Cola superior: P(Z ≥ z) =", p),
     xlab = "Valores de Z", ylab = "Densidad")

# Sombrear el área de la cola derecha
polygon(c(z, x_vals[x_vals >= z], max(x_vals)),
        c(0, y_vals[x_vals >= z], 0),
        col = "skyblue", border = NA)

# Línea vertical en z
abline(v = z, col = "red", lty = 2)

# Etiqueta del valor z
text(z + 0.9, 0.10, paste("z =", round(z, 4)), col = "black")






# e) que porcentaje de compilaciones se completan en menis de 20 min

a = 1
u = 25
x = 20
v = 3



# Probabilidad en la cola inferior
p <- pnorm(x, mean = u, sd = v)
p 

# Encontrar z
z <- qnorm(p)
z

# Valores para graficar (en escala real)
x_vals <- seq(u - 4 * v, u + 4 * v, length = 1000)
y_vals <- dnorm(x_vals, mean = u, sd = v)

# Gráfico
plot(x_vals, y_vals, type = "l", lwd = 2, col = "blue",
     main = paste("Compilaciones que tardan menos de", x, "min"),
     xlab = "Tiempo de compilación (min)", ylab = "Densidad")

# Sombrear el área a la izquierda de x
polygon(c(min(x_vals), x_vals[x_vals <= x], x),
        c(0, y_vals[x_vals <= x], 0),
        col = "skyblue", border = NA)

# Línea vertical en x = 20
abline(v = x, col = "red", lty = 2)

# Mostrar la probabilidad en el gráfico
text(x - 1, max(y_vals) * 0.4, 
     paste("P(X ≤", x, ") =", round(p, 4)),
     col = "black", pos = 4)


# f) que intervalo de tiempo contiene al 95% de las compilaciones mas comunes?

u = 25
a = 1
v = 3

p = 0.025
x1_vals <- qnorm(p, mean = u, sd = v, lower.tail = TRUE)
x2_vals <- qnorm(p, mean = u, sd = v, lower.tail = FALSE)

x1_vals # = 19.12 
x2_vals # = 30.87

# Conversión a puntuaciones Z
z1 <- x1_vals
z2 <- x2_vals 

# Crear eje x para la normal estándar
x <- seq(u -4 * v, u + 4 * v, length = 1000)
y <- dnorm(x_vals, mean = u, sd = v)


# Graficar curva
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = paste("Área bajo la curva entre X1 =", round(z1, 2), "y X2 =", round(z2, 2)),
     xlab = "Tiempo de compilacion", ylab = "Densidad")

# Sombrear área entre z1 y z2
x_sombra <- x[x >= z1 & x <= z2]
y_sombra <- y[x >= z1 & x <= z2]
polygon(c(z1, x_sombra, z2),
        c(0, y_sombra, 0),
        col = "skyblue",border = NA)

# Líneas verticales
abline(v = z1, col = "red", lty = 2)
abline(v = z2, col = "red", lty = 2)

# Calcular y mostrar probabilidad
prob <- pnorm(x2_vals, mean = u, sd = v) - pnorm(x1_vals, mean = u, sd = v)
text(u, max(y)*0.1, paste("P(", round(x1_vals, 2), "≤ X ≤", round(x2_vals, 2), ") ≈", round(prob, 4)),
     col = "black", cex = 0.9)