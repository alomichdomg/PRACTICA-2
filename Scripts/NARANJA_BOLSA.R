####
library(DescTools)
#install.packages("DescTools")
library(vegan)
library(ggplot2)
####
source("FUNCIONES.R") #para llamar las funciones
#NARANJA:
naranaja_abundancias <- c(77)
naranja_nombres <- c("naranja")

names(naranaja_abundancias)<- naranja_nombres
print(naranaja_abundancias)

#Shannon:
shannon_mejor(naranaja_abundancias)-> shannon_naranja
print(shannon_naranja)
#  0

#Pielou
pielou(naranaja_abundancias)
#0

#Simpson
simpson_funcion(naranaja_abundancias)->simpson_naranja
print(simpson_naranja)
#1

simpson_mia(naranaja_abundancias) #mia, mejor la otra :/
#1

#Simpson inverso
inverso_simpson(naranaja_abundancias)->inverso_naranja
print(inverso_naranja)
#1

#Gini
Gini(naranaja_abundancias)->gini_naranja
print(gini_naranja)
#0

#Chao1
estimateR(naranaja_abundancias)-> chao_naranja
print(shannon_naranja[[2]])

#1

###GRAFICA DE ABUNDANCIAS.
plot(naranaja_abundancias)
#hacer el data frame:
naranja_dataframe <- data.frame(
  individuos = c(77),
  especies = c("naranja")
)
naranja_dataframe



fig2 <- ggplot (naranja_dataframe, aes(x= reorder (especies, -individuos),
                                    y= individuos, fill = especies))+  
  geom_bar ( stat = "identity") +
  labs(title = "Abundancia de especies de la bolsa naranja",
       x = "Especies",
       y = "Número de individuos") +
  scale_fill_manual(values = c(
    "naranja" =  "orange"))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

fig2
