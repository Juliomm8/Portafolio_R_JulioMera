hist(EDG_2023$edad)

edad_bien = filter(EDG_2023, edad <= 200)


hist(edad_bien$edad)

# Por la criminalidad hay una tendencia de muerte entre los 20
# La tendiencia que hay en entre los 80 es por muertes naturales
# La tendencia que hay en el 0, debe ser por nacidos muertos, o por la mala desnutricion, abdandonos

#Provincia que muere mas personas
# Provincia que muere mas los hombres
# Trabajar con la edad bien

table(edad_bien$prov_fall)
sort(edad_bien$prov_fall)


table(edad_bien$sexo, edad_bien$prov_fall)
table(edad_bien$sexo, edad_bien$mor_viol)



