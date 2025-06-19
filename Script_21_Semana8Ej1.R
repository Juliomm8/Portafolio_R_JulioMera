# Paso 1: Espacio Muestral
s = 1:6

# Paso 2: Definir eventos
A = c(2, 4, 6)  # Numeros Pares
B = c(4, 5, 6)  # Mayores que 3

# Paso 3: Calcular interseccion
interseccion = intersect(A, B)

# Paso 4: Calcular probabilidades
P_A = length(A)/length(s)
P_B = length(B)/length(s)
P_AnB=length(interseccion)/length(s)

#Paso 5: Aplicar la regla de la suma
P_A_union_B = P_A + P_B - P_AnB

#Mostrar Resultados
cat("P(A) = ", P_A, "\n")
cat("P(B) = ", P_B, "\n")
cat("P(A n B) = ", P_AnB, "\n")
cat("P(A U B) = ", P_A_union_B, "\n")

