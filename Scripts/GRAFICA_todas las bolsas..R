#####GRAFICA DE LA CURVA DE TODAS LAS BOLSAS:
#############################################################################
#1.- cargar la tabla al final.
#rarecurve: tiene que ser una matriz de los datos.
#####GRAFICA DE LA CURVA DE TODAS LAS BOLSAS:
#############################################################################
#1.- cargar la tabla al final.
#rarecurve: tiene que ser una matriz de los datos.
todos_datos <- read.csv("DATOS/datos_sitios - Hoja 1.csv", )

View(todos_datos)
attach(todos_datos)
numeric_data <- todos_datos [,sapply(todos_datos, is.numeric)]
str(numeric_data)
numeric_matrix <- as.matrix(numeric_data)
numeric_matrix_no_na <- na.omit(numeric_matrix)
library(iNEXT)
#install.packages("iNEXT")
D_abund <- iNEXT(numeric_matrix_no_na, datatype = "abundance")
plot(D_abund)

detach(todos_datos)

#link:https://youtu.be/bUFdei_zl88?si=jYSCPryuyXKTos6q 

