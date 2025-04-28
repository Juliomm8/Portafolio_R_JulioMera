talla = ENV_2023$talla
summary(talla)


talla_final = talla[talla != 99]
summary(talla_final)


nclase = 8
aclase = (max(talla_final)-min(talla_final))/nclase

breaks = seq(floor(min(talla_final)),
                   floor(max(talla_final))+round(aclase),
                         by= round(aclase))

tabla_frec = table(cut(talla_final, breaks = breaks, right = FALSE))

tabla_frec_rel = prop.table(tabla_frec)   
tabla_frec_por = tabla_frec_rel*100   

frec_acum = cumsum(tabla_frec)
frec_rel_acum = cumsum(tabla_frec_rel)
frec_por_acum = cumsum(tabla_frec_por)

data.frame(Clase = names(tabla_frec), 
           Frecuencia = as.numeric(tabla_frec), 
           FrecuenciaRelativa = round(as.numeric(tabla_frec_rel), 3), 
           FrecuenciaPorcentual = round(as.numeric(tabla_frec_por), 2), 
           FrecuenciaAcumulada = as.numeric(frec_acum),
           FrecuenciaRelativaAcumulada = round(as.numeric(frec_rel_acum), 3),
           FrecuenciaPorcentualAcumulada = round(as.numeric(frec_por_acum), 2))

# Histograma
ggplot(data = data.frame(talla_final), aes(x = talla_final)) +
  geom_histogram(binwidth = round(aclase), 
                 fill = "steelblue", color = "black") +
  labs(title = "Histograma", 
       x = "talla", 
       y="Frecuencia")

 hist(talla_final, breaks = breaks)
 
 media = mean(talla_final)
 media
 
 mediana = median(talla_final)
 mediana

 # intall.packages("modeest") 
 moda = mfv(talla_final)
moda 
   