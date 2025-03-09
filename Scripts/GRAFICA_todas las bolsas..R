#####GRAFICA DE LA CURVA DE TODAS LAS BOLSAS:
#############################################################################
#1.- cargar la tabla al final.
#rarecurve: tiene que ser una matriz de los datos.

View(tabla_abundancias)
#attach(tabla_abundancias)
numeric_data <- tabla_abundancias [,sapply(tabla_abundancias, is.numeric)]
str(numeric_data)
numeric_matrix <- as.matrix(numeric_data)
numeric_matrix_no_na <- na.omit(numeric_matrix)
library(iNEXT)
#install.packages("iNEXT")
D_abund <- iNEXT(numeric_matrix_no_na, datatype = "abundance")
plot(D_abund)

#detach(tabla_abundancias)

#link:https://youtu.be/bUFdei_zl88?si=jYSCPryuyXKTos6q 

