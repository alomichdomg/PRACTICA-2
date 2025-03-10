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
estimateR(luna_abundancias)
#12

###GRAFICA DE ABUNDANCIAS.
plot(luna_abundancias)
#hacer el data frame:
luna_dataframe <- data.frame(
  abundancia = luna_abundancias,
  especie_color = luna_conjunto
)
luna_dataframe

fig1 <- ggplot (luna_dataframe, aes(x= especie_color, y= abundancia))+  
  geom_bar ( stat = "identity", fill = "#6666FF") 
fig1

######################################################################
#beta
#• Calcula la diversidad beta de todos las parejas de sitios utilizando los índices de: 
#Jaccard y Bray-Curtis.
#Construye una matriz de diferencias (distancias) para cada medida.

naranja_nombres <- c("naranja")
naranaja_abundancias <- c(77)

#JACCARD:
#define Jaccard Similarity function
jaccard <- function(a, b) {
  intersection = length(intersect(a, b))
  union = length(a) + length(b) - intersection
  return (intersection/union)
}

#find Jaccard Similarity between the two sets 
jaccard(luna_conjunto, naranja_nombres) #tiene que ser con los nombres de cada cosa.

#METODO CON LA MATRIZ DE DISTANCIAS:
df<-data.frame(luna_abundancias, naranaja_abundancias) #NO.
vegdist(df, method = "jaccard")


##################################################################
#rank abundance: