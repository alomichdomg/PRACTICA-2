###### Bolsa estrella 


### tabla de abundancias: 

abundancias_estrella <- data.frame( 
  especie = c("azul oscuro", "verde claro", "verde menta", "azul claro", 
              "azul cielo", "rosa mexicano", "amarillo", "rosa claro", "naranja",
              "rojo", "rosa", "morado"),
  numero_de_individuos = c(17, 15, 10, 4, 4, 3, 3, 2, 2, 1, 1, 1)
))

View(abundancias_estrella)

library(ggplot2)

ggplot(abundancias_estrella, aes(x = reorder(especie, -numero_de_individuos), 
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


