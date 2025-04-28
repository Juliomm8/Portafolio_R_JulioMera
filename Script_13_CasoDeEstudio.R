# Calcular la media de edad
media_edad <- mean(ventas_tienda_202510$Edad, na.rm = TRUE)
# Reemplazar los NA con la media
ventas_tienda_202510$Edad[is.na(ventas_tienda_202510$Edad)] <- media_edad


# Calcular la media de Precio 
media_precio <- mean(ventas_tienda_202510$Precio, na.rm = TRUE)
# Reemplazar los NA por la media
ventas_tienda_202510$Precio[is.na(ventas_tienda_202510$Precio)] <- media_precio


# Reemplazar los NA por 0
ventas_tienda_202510$Descuento[is.na(ventas_tienda_202510$Descuento)] <- 0


# Verifica si todos los valores son enteros
all(ventas_tienda_202510$Edad == floor(ventas_tienda_202510$Edad))
# Redondear los floats en enteros
ventas_tienda_202510$Edad <- round(ventas_tienda_202510$Edad)

# Verificar si todos los valores de la variable "genero" son de tipo charater
all(sapply(ventas_tienda_202510$Genero, is.character))

# Verificar si todos los valores de la variable "CategoriaProducto" son de tipo charater
all(sapply(ventas_tienda_202510$CategoríaProducto, is.character))

# Verificar si todos los valores de la variable "FechaCompra" son de tipo date
all(sapply(ventas_tienda_202510$FechaCompra, inherits, what = "Date"))

# Verificar si todos los valores de la variable "Precio" son del mismo tipo
all(sapply(ventas_tienda_202510$Precio, typeof) == typeof(ventas_tienda_202510$Precio[1]))

# Verificar si todos los valores de la variable "Cantidad" son del mismo tipo
all(sapply(ventas_tienda_202510$Cantidad, is.numeric))

# Verificar si todos los valores de la variable "Descuento" son del mismo tipo
all(sapply(ventas_tienda_202510$Descuento, is.numeric))

# Verificar si todos los valores de la variable "MétodoPago" son del mismo tipo
all(sapply(ventas_tienda_202510$MétodoPago, is.character))


# Nueva columna TotalVenta, que multiplica la Cantidad por Precio, menos el Descuento.
ventas_tienda_202510$TotalVenta <- (ventas_tienda_202510$Cantidad * ventas_tienda_202510$Precio) * (1 - ventas_tienda_202510$Descuento / 100)
# Para que haya solo 2 decimales en el código
ventas_tienda_202510$TotalVenta <- round(ventas_tienda_202510$TotalVenta, 2)


# Guardar la base de datos con el formato csv
write.csv(ventas_tienda_202510, "ventas_tienda_202510_limpia.csv", row.names = FALSE)