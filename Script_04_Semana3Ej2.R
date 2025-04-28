set.seed(123)
resistencia <- rnorm(200, mean = 50, sd = 5)


nclase = 10
aclase = (max(resistencia)-min(resistencia))/nclase

breaks <- seq(floor(min(resistencia)), floor(min(resistencia))+ round(aclase)*nclase, by = round(aclase))

tabla_frec <- table(cut(resistencia, breaks = breaks, right = FALSE))

tabla_frec_rel <- prop.table(tabla_frec)
tabla_frec_por <- tabla_frec_rel*100

frec_acum <- cumsum(tabla_frec)
frec_rel_acum <- cumsum(tabla_frec_rel)
frec_por_acum <- cumsum(tabla_frec_por)

data.frame(Clase=names(tabla_frec), 
           Frecuencia=as.numeric(tabla_frec), 
           FrecuenciaRelativa = round(as.numeric(tabla_frec_rel), 3), 
           FrecuenciaPorcentual = round(as.numeric(tabla_frec_por), 2), 
           FrecuenciaAcumulada = as.numeric(frec_acum),
           FrecuanciaRelativaAcumulada = round(as.numeric(frec_rel_acum), 3),
           FrecuanciaPorcentualAcumulada = round(as.numeric(frec_acum), 2))

ggplot(data = data.frame(resistencia), aes(x = resistencia)) + geom_histogram(binwidth = round(aclase), 
fill = "steelblue", color = "black") + labs(title = "Histograma de Resistencia de Piezas", x
= "Resistencia (MPa)", y = "Frecuencia")












