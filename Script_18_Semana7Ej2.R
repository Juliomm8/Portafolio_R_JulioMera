S=1:6

#Probabilidad

probabilidad=rep(1/6,6)

probabilidad

#Tabla de probabilidades

data.frame(Resultado=S,Probabilidad=probabilidad)

#definir eventos

A=c(2,4,6) #numeros pares

B=c(4,5,6) #numeros >3

#definir probabilidad de eventos

PA=probabilidad[2] + probabilidad[4] + probabilidad[6]

PA

PB=probabilidad[4] + probabilidad[5] + probabilidad[6]

PB

#complementos 

complemento_A= setdiff(S,A)

complemento_B= setdiff(S,B)

complemento_A

complemento_B

PCA = 1-PA

PCA1= probabilidad[1]+probabilidad[3]+probabilidad[5]

PCB= 1-PB

PCB1=probabilidad[1]+probabilidad[2]+probabilidad[3]

#EVALUAR SI P (falla) es siginificativamente baja 

P_falla= PA

P_falla <=0.05 #resultado logico true/false

p_falla1=PB

p_falla1>=0.95 #resultado logico true/false

