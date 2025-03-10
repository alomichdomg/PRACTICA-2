#Bolsa de la luna:
#LUNA:
#Mide la diversidad alfa con los índices Shannon, Pielou, 
#Simpson, Simpson inverso, Gini, y Chao1
#• Encuentra la curva de rarefacción para cada sitio
#• Calcula la gráfica de abundancias-ordenadas (rank-abundance) para cada sitio
#• Calcula la diversidad beta de todos las parejas de sitios utilizando los índices de: 
#Jaccard y Bray-Curtis.
#Construye una matriz de diferencias (distancias) para cada medida.
#• Discute tus resultados, es decir, interpreta lo que te sale en términos de esas medidas.
#Es decir, interpretar
#los patrones de diversidad y su significado ecológico.
#• Todas las gráficas que hagas debes estar hechas en ggplot2 e incluir el código.

####
library(DescTools)
  #install.packages("DescTools")
library(vegan)
library(ggplot2)
library(re)
####
source("FUNCIONES.R") #para llamar las funciones

luna_abundancias <- c(10, 10, 10, 10, 10, 10, 10, 9, 7, 6, 4, 3)
luna_conjunto<- c("amarillo", "rosa claro", "azul oscuro", "naranja", "rosa","rojo","morado", 
                  "rosa mexicano","verde claro","azul claro", "azul cielo", "verde menta")

names(luna_abundancias)<- luna_conjunto
print(luna_abundancias)

#Shannon:
shannon_mejor(luna_abundancias)-> shannon_luna
print(shannon_luna)
#  3.508342

#Pielou
pielou(luna_abundancias)->pielou_luna
print(pielou_luna)
#1.411861

#Simpson
simpson_funcion(luna_abundancias)->simpson_luna
print(simpson_luna)
#0.09090909

simpson_mia(luna_abundancias) #mia, mejor la otra :/
#0.08163265

#Simpson inverso
inverso_simpson(luna_abundancias)->inverso_luna
print(inverso_luna)
#11

#Gini
Gini(luna_abundancias)->gini_luna
print(gini_luna)
#0.1625344

#Chao1
estimateR(luna_abundancias)->chao_luna
print(chao_luna[[2]])
#12

###GRAFICA DE ABUNDANCIAS.
plot(luna_abundancias)
#hacer el data frame:
luna_dataframe <- data.frame(
  individuos = c(10, 10, 10, 10, 10, 10, 10, 9, 7, 6, 4, 3),
  especies = c("amarillo", "rosa claro", "azul oscuro", "naranja", "rosa","rojo","morado", 
                    "rosa mexicano","verde claro","azul claro", "azul cielo", "verde menta")
)
luna_dataframe



fig1 <- ggplot (luna_dataframe, aes(x= reorder (especies, -individuos),
                                    y= individuos, fill = especies))+  
  geom_bar ( stat = "identity") +
  labs(title = "Abundancia de especies de la bolsa luna",
       x = "Especies",
       y = "Número de individuos") +
  scale_fill_manual(values = c(
    "amarillo" = "yellow", 
      "rosa claro" =  "lightpink",
      "azul oscuro" =  "darkblue",
      "naranja" =  "orange",
      "rosa" =  "hotpink",
      "rojo" =  "red",
      "morado" =  "purple",
      "rosa mexicano" =  "deeppink",
      "verde claro" =  "lightgreen",
      "azul claro" =  "lightblue",
      "azul cielo" =  "skyblue",
      "verde menta" =  "#33FFFF"))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))
      
fig1


library(ggplot2)



######################################################################
#beta
#• Calcula la diversidad beta de todos las parejas de sitios utilizando los índices de: 
#Jaccard y Bray-Curtis.
#Construye una matriz de diferencias (distancias) para cada medida.

naranja_nombres <- c("naranja")
naranaja_abundancias <- c(77)



