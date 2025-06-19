# Crear matriz de datos
tabla_datos = matrix(
  c(352, 197, 251, 150, 161, 194),
  nrow = 2,
  byrow = TRUE,
  dimnames = list(
    Modalidad = c("Tiempo completo", "Tiempo parcial"),
    Pregrado = c("Negocios", "Ingeniería", "Economía")
  )
)
tabla_datos
#matrix() crea una matriz en R, que es una estructura de datos bidimensional (filas y columnas).
#c() crea un vector de valores numéricos que serán los contenidos de la matriz.
#nrow indica que la matriz tendrá 2 filas.
#byrow = TRUE significa que se llenará por filas dimnames da nombres a las filas y columnas de la matriz.

# Total general
total = sum(tabla_datos)

#Agregar los totales a la matriz
tabla = addmargins(tabla_datos)
tabla

#Crear la tabla de probabilidades 
tabla_prob=round(tabla/total,3)
tabla_prob

#sum( ) Suma todos los elementos de la matriz.
#addmargins(tabla) Añade márgenes o totales a la matriz.


#Probabilidad de ser estudiante tiempo completo
P_tiempo_completo = tabla_prob["Tiempo completo","Sum"]
P_tiempo_completo
#Probabilidad de ser estudiante tiempo parcial
P_tiempo_parcial = tabla_prob["Tiempo parcial","Sum"]
P_tiempo_parcial

#Probabilidad de haber estudiado negocios
P_estudio_negocio = tabla_prob["Sum", "Negocios"]
P_estudio_negocio

#Probabilidad de haber estudiado ingeniería
P_estudio_ingenieria = tabla_prob["Sum", "Ingeniería"]
P_estudio_ingenieria

#Probabilidad de haber estudiado economía
P_estudio_economia = tabla_prob["Sum", "Economía"]
P_estudio_economia


#Probabilidad de no haber estudiado ingeniería.
P_no_ingenieria = 1 - P_estudio_ingenieria
P_no_ingenieria

#Probabilidad de no estudiar tiempo completo
P_no_tiempo_completo = 1 - P_tiempo_completo
P_no_tiempo_completo


#Probabilidad de ser tiempo completo y estudiar economía.(y es interseccion)
P_TC_y_economia = tabla_prob[ "Tiempo completo", "Economía" ]
P_TC_y_economia
#Probabilidad de ser tiempo completo o haber estudiado economía. (o union)
P_TC_o_economia = P_tiempo_completo + P_estudio_economia - P_TC_y_economia
P_TC_o_economia

 #Probabilidad de haber estudiado economía dado que es tiempo completo(dado es condicional)
P_economia_dado_TC = P_TC_y_economia / P_tiempo_completo
P_economia_dado_TC
#Probabilidad de haber estudiado economía dado que es tiempo parcial.
P_TP_y_economia = tabla_prob["Tiempo parcial","Economía"]
P_economia_dado_TP = P_TP_y_economia/P_tiempo_parcial
P_economia_dado_TP
