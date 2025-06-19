#En us sitema de bugs: 
# A = Modulo con error
# B = Detencion del error
# B | A = Deteccion de un error si realmente hay un error 

# Cual es la probabilidad de que el modulo ...

P_A = 0.1
P_B_dado_A = 0.9
P_B = 0.2

P_B_dado_B= (P_B_dado_A * P_A) / P_B
cat("P(B | A) =", P_B_dado_B,"\n")
