source("FUNCIONES.R") #llamamos las funciones previamente hechas

verde_abundancias <- c(66)
verde_c<- c("verde menta")

names(verde_abundancias)<- verde_c
print(verde_abundancias)

#Shannon:
shannon_mejor(verde_abundancias)-> shannon_verde
print(shannon_verde)
#0

#pielou 
pielou(verde_abundancias)-> pielou_verde
print(pielou_verde)
#0

#simpson 
simpson_funcion(verde_abundancias)-> simpson_verde
print(simpson_verde)
#1

#simpson inversa 
inverso_simpson(verde_abundancias)-> inverso_verde
print(inverso_verde)
#1


#gini 
#usamos funciones ya hechas presentes en r 
Gini(verde_abundancias)-> gini_verde
print(gini_verde)
#0

#chao
estimateR(verde_abundancias)
#1

###Gráfica de abundancias
plot(verde_abundancias)

#data frame
verde_dataframe <- data.frame(
  especie_color = verde_c,
  abundancia = verde_abundancias
)
print (verde_dataframe)

#con ggplot2
G_verde <- ggplot (verde_dataframe, aes(x=especie_color, y= abundancia, fill = especie_color))+  
  geom_bar(stat = "identity") +
  labs(title = "Abundancia de especies en la bolsa verde",
       x = "Especies",
       y = "Número de individuos") +
  scale_fill_manual(values = c(
    "verde menta" = "mediumspringgreen"
  ))
print (G_verde)
