peso_g = c(3100, 2800, 3400, 3000, 2600, 3700, 3200, 3500, 2900, 3300)
talla_cm = c(49, 47, 51, 48, 46, 53, 50, 52, 47, 50)

plot(peso_g, talla_cm, main = "Peso vs Talla en Recien Nacidos", xlab = "Peso (g)", 
     ylab = "talla (cm)", pch = 19, col = "purple")

correlacion = cor(peso_g, talla_cm)
correlacion
