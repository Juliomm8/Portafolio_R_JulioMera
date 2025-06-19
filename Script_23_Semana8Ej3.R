# P(al menos uno) = 1 - P(ninguno)
# P(ninguno falla) = (1 - 0.1)^3 = 0.9^3 = 0.729
# P(al menos uno falla) = 1 - 0.729 = 0.271

# Probabilidad de que un módulo no falle
p_no_falla = 0.9

# Tres módulos independientes
p_ninguno_falla = p_no_falla^3

# Complemento: al menos uno falla
p_al_menos_uno = 1 - p_ninguno_falla

cat("P(al menos uno falla) =", round(p_al_menos_uno, 4),"\n")
  
