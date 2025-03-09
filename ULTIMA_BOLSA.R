####
library(DescTools)
#install.packages("DescTools")
library(vegan)
library(ggplot2)
####
source("FUNCIONES.R") #para llamar las funciones

#LA ULTIMA BOLSA:
otro_abundancias <- c(14,10,3,3,2,2,1,1)
otro_nombres <- c("azul cielo", "azul claro", "azul oscuro", "rosa mexicano", 
                  "rosa","rosa claro", 
                  "verde claro", "rojo")


names(otro_abundancias)<- otro_nombres
print(otro_abundancias)

#Shannon:
shannon_mejor(otro_abundancias)-> shannon_otro
print(shannon_otro)
#  2.391258

#Pielou
pielou(otro_abundancias)
# 1.149952

#Simpson
simpson_funcion(otro_abundancias)->simpson_otro
print(simpson_otro)
# 0.25


simpson_mia(otro_abundancias) #mia, mejor la otra :/
#  0.2285714

#Simpson inverso
inverso_simpson(otro_abundancias)->inverso_otro
print(inverso_otro)
# 4

#Gini
Gini(otro_abundancias)->gini_otro
print(gini_otro)
# 0.5555556

#Chao1
estimateR(otro_abundancias)
#  8.3333333

###GRAFICA DE ABUNDANCIAS.
plot(otro_abundancias)
#hacer el data frame:
otro_dataframe <- data.frame(
  especie_color = otro_nombres,
  abundancia = otro_abundancias
)
otro_dataframe

fig3 <- ggplot (otro_dataframe, aes(x= especie_color, y= abundancia))+  
  geom_bar ( stat = "identity", fill = "#339966") 
fig3
