ESTADISTICA:
  # Datos del ejercicio
  resistencia <- c(125, 203, 205, 221, 225, 229, 233, 233, 235, 236, 236, 237, 238, 238, 239,
                   240, 240, 240, 240, 241, 241, 242, 242, 243, 243, 244, 245, 245, 245, 246,
                   246, 248, 248, 248, 249, 249, 250, 251, 252, 253, 253, 255, 255, 256, 257,
                   258, 260, 264)
  
  # Ya no usamos set.seed ni rnorm porque usamos datos reales
  nclase = 10
  aclase = (max(resistencia) - min(resistencia)) / nclase
  
  breaks <- seq(floor(min(resistencia)), floor(min(resistencia)) + round(aclase) * nclase, by = round(aclase))
  
  tabla_frec <- table(cut(resistencia, breaks = breaks, right = FALSE))
  
  tabla_frec_rel <- prop.table(tabla_frec)
  tabla_frec_por <- tabla_frec_rel * 100
  
  frec_acum <- cumsum(tabla_frec)
  frec_rel_acum <- cumsum(tabla_frec_rel)
  frec_por_acum <- cumsum(tabla_frec_por)
  
  data.frame(Clase = names(tabla_frec), 
             Frecuencia = as.numeric(tabla_frec), 
             FrecuenciaRelativa = round(as.numeric(tabla_frec_rel), 3), 
             FrecuenciaPorcentual = round(as.numeric(tabla_frec_por), 2), 
             FrecuenciaAcumulada = as.numeric(frec_acum),
             FrecuenciaRelativaAcumulada = round(as.numeric(frec_rel_acum), 3),
             FrecuenciaPorcentualAcumulada = round(as.numeric(frec_por_acum), 2))
  
  # Histograma
  ggplot(data = data.frame(resistencia), aes(x = resistencia)) +
    geom_histogram(binwidth = round(aclase), 
                   fill = "steelblue", color = "black") +
    labs(title = "Histograma", 
         x = "Duración (segundos)", 
         y="Frecuencia")