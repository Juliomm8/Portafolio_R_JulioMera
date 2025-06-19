# Conjunto: 10 válvulas, 3 defectuosas 
total=10
defectuosas=3

PA = defectuosas / total
PB = defectuosas / total

# Con reemplazo → Eventos independientes
PAyB = PA * PB

# Sin reemplazo → Eventos dependientes
PB2 = (defectuosas - 1) / (total - 1)
PAyB2 = PA * PB2

# Mostrar resultado
cat("Probabilidad de que ambas válvulas sean defectuosas (con reemplazo):", PAyB, "\n") 
cat("Probabilidad de que ambas válvulas sean defectuosas (sin reemplazo):", PAyB2,"\n")
 