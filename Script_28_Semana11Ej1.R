#PROBABILIDAD CON Z
#P(Z <= z)
# La probabilidad de que Z sea menor o igual que un valor dado

#P(Z≤ 1.5)
pnorm(1.5)


#P(a<= Z <= b)
#La probabilidad de que Z esté entre valores

#P(a<= Z <= 1.5)
pnorm(1.5) - pnorm(-1)


#P(Z =>z)
#La probabilidad de que Z sea mayor o igual que un valor dado


#P(Z =>1.2)
1 - pnorm(1.2)
# o alternativamente:
pnorm(1.2, lower.tail = FALSE)



#VALORES DE Z CON PROBABILIDAD DADA

#Encontrar z tal que P(Zzz) - p
# Si se desea P(Z => z) = 0.10
qnorm(0.10, lower.tail = FALSE)


#Encontrar z tal que P(Z$ z) = p
#Si se desea P(Z ≤ z) = 0.75
qnorm(0.75)


#Encontrar z tal que P(-1 <= Z <= z) = p
#Esto es lo mismo que resolver: P(Z<=z) =p+P(Z<=-1)
#Supón que se desea que P(-1 <=Z <= z) = 0.70
p_deseada = 0.70
acumulado_menor_que_neg1 = pnorm(-1)
acumulado_total = p_deseada + acumulado_menor_que_neg1


# Buscar el valor de z
qnorm(acumulado_total)