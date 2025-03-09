###### Bolsa estrella 


### tabla de abundancias: 

abundancias_estrella_BD <- data.frame( 
  especie = c("azul oscuro", "verde claro", "verde menta", "azul claro", 
              "azul cielo", "rosa mexicano", "amarillo", "rosa claro", "naranja",
              "rojo", "rosa", "morado"),
  numero_de_individuos = c(17, 15, 10, 4, 4, 3, 3, 2, 2, 1, 1, 1)
)

View(abundancias_estrella_BD)

library(ggplot2)

ggplot(abundancias_estrella_BD, aes(x = reorder(especie, -numero_de_individuos), 
                                 y = numero_de_individuos, 
                                 fill = especie)) +
  geom_bar(stat = "identity") +
  labs(title = "Abundancia de especies de la bolsa estrella",
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
  )) +
  theme(axis.text.x = element_text(angle = 90))

source("FUNCIONES.R") #para llamar las funciones

abundancias_estrella <- c(17, 15, 10, 4, 4, 3, 3, 2, 2, 1, 1, 1)

#Shannon:
E_shannon <- shannon_mejor(abundancias_estrella)
print(E_shannon)

#Pielou
E_pielou <- pielou(abundancias_estrella)
print(E_pielou)

#Simpson
E_simpson <- simpson_funcion(abundancias_estrella)
print(E_simpson)

#Simpson inverso
E_inverso <- inverso_simpson(abundancias_estrella)
print(E_inverso)





