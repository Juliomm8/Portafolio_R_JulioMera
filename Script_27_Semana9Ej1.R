fallas = 0:3
prob = c(0.4, 0.3, 0.2, 0.1)
df = data.frame(fallas, prob)
df
barplot(df$prob, names.arg = df$fallas,
        col = "skyblue", 
        main = "Distribución de Faltas", 
        ylab ="Probabilidad")

# Media (valor esparado)
media = sum(df$fallas * df$prob)
media

# Varianza
varianza = sum((df$fallas - media) ^2 * df$prob)
varianza

# Desviación estándar
desv = sqrt(varianza)
desv

