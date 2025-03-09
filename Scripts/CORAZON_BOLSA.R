###### Bolsa estrella 


### tabla de abundancias: 

abundancias_corazon_BD <- data.frame( 
  especie = c("azul oscuro", "rosa mexicano", "amarillo", "rosa claro", "naranja",
              "rojo", "rosa", "morado"),
  numero_de_individuos = c(6, 2, 1, 7, 8, 1, 6, 9)
)

View(abundancias_corazon_BD)

library(ggplot2)

ggplot(abundancias_corazon_BD, aes(x = reorder(especie, -numero_de_individuos), 
                                    y = numero_de_individuos, 
                                    fill = especie)) +
  geom_bar(stat = "identity") +
  labs(title = "Abundancia de especies de la bolsa estrella",
       x = "Especies",
       y = "Número de individuos") +
  scale_fill_manual(values = c(
    "azul oscuro" = "darkblue",
    "rosa mexicano" = "deeppink",
    "amarillo" = "yellow",
    "rosa claro" = "lightpink",
    "naranja" = "orange",
    "rojo" = "red",
    "rosa" = "hotpink",
    "morado" = "purple"
  )) +
  theme(axis.text.x = element_text(angle = 90))

source("FUNCIONES.R") #para llamar las funciones

abundancias_corazon <- c(6, 2, 1, 7, 8, 1, 6, 9)

#Shannon:
C_shannon <- shannon_mejor(abundancias_corazon)
print(C_shannon)

#Pielou
C_pielou <- pielou(abundancias_corazon)
print(C_pielou)

#Simpson
C_simpson <- simpson_funcion(abundancias_corazon)
print(C_simpson)

#Simpson inverso
C_inverso <- inverso_simpson(abundancias_corazon)
print(C_inverso)



