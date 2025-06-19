# Espacio muestral
# Resultados y frecuencias
resultados <- c("Éxito total", "Advertencias", "Falla")
frecuencias <- c(12, 5, 3)

# Probabilidades
total <- sum(frecuencias)
probabilidades <- frecuencias / total

# Tabla resumen
tabla <- data.frame(
  Resultado    = resultados,
  Frecuencia   = frecuencias,
  Probabilidad = round(probabilidades, 2)
)
print(tabla)
#     Resultado Frecuencia Probabilidad
# 1 Éxito total         12         0.60
# 2 Advertencias         5         0.25
# 3 Falla                3         0.15

# Complementos
A <- "Éxito total"
B <- "Advertencias"
C <- "Falla"

CA <- setdiff(resultados, A); CA    # Complemento de Éxito total
CB <- setdiff(resultados, B); CB    # Complemento de Advertencias
CC <- setdiff(resultados, C); CC    # Complemento de Falla

# Probabilidad de los complementos
PCA <- 1 - probabilidades[1]; PCA
PCB <- 1 - probabilidades[2]; PCB
PCC <- 1 - probabilidades[3]; PCC

# Evaluar si P(Falla) es significativamente baja
P_falla <- probabilidades[3]
P_falla <= 0.05   # Devuelve TRUE si ≤ 0.05, FALSE en caso contrario


