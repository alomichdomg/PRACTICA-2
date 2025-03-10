####

library(DescTools)

library(vegan)
library(ggplot2)
####
source("FUNCIONES.R") #llamamos las funciones previamente hechas

sonrisa_abundancias <- c(1,2,2,3,3,4,4,5,5,5,7,9)
sonrisa_conjunto<- c("rosa claro", "rosa", "morado", "rosa mexicano", "azul claro","verde claro","amarillo", 
                     "azul cielo","rojo","naranja", "azul oscuro", "verde menta")

names(sonrisa_abundancias)<- sonrisa_conjunto
print(sonrisa_abundancias)

#Shannon:
shannon_mejor(sonrisa_abundancias)-> shannon_sonrisa
print(shannon_sonrisa)
#3.39

#pielou 
pielou(sonrisa_abundancias)-> pielou_sonrisa
print(pielou_sonrisa)
#1.36

#simpson 
simpson_funcion(sonrisa_abundancias)-> simpson_sonrisa
print(simpson_sonrisa)
#0.10

#simpson inversa 
inverso_simpson(sonrisa_abundancias)-> inverso_sonrisa
print(inverso_sonrisa)
#9.46


#gini 
#usamos funciones ya hechas presentes en r 
Gini(sonrisa_abundancias)-> gini_sonrisa
print(gini_sonrisa)
#0.30

#chao
estimateR(sonrisa_abundancias)
#12

###Gráfica de abundancias
plot(sonrisa_abundancias)

#data frame
sonrisa_dataframe <- data.frame(
  especie_color = sonrisa_conjunto,
  abundancia = sonrisa_abundancias
)
print (sonrisa_dataframe)

#con ggplot2
G_sonrisa <- ggplot (sonrisa_dataframe, aes(x=especie_color, y= abundancia, fill = especie_color))+  
  geom_bar(stat = "identity") +
  labs(title = "Abundancia de especies en la bolsa sonrisa",
       x = "Especies",
       y = "Número de individuos") +
  scale_fill_manual(values = c(
    "azul oscuro" = "darkblue",
    "verde claro" = "lightgreen",
    "verde menta" = "mediumspringgreen",
    "azul claro" = "lightblue",
    "azul cielo" = "skyblue",
    "rosa mexicano" = "deeppink",
    "amarillo" = "yellow",
    "rosa claro" = "lightpink",
    "naranja" = "orange",
    "rojo" = "red",
    "rosa" = "hotpink",
    "morado" = "purple"
  ))
print (G_sonrisa)
