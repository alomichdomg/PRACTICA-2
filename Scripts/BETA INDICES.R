###BETA:
#Jaccard:
library(vegan)
datos_beta <- read.csv("DATOS/beta - Hoja 1.csv")

# TIENE QUE SER UN DATA FRAME
datos_beta_1 <- as.data.frame((datos_beta > 0) * 1)


datos_beta_1[ ,-1] #ver datos 

# Calcular índice de Jaccard
jaccard_distancia <- vegdist(datos_beta_1[ ,-1], method = "jaccard")
print(jaccard_distancia)

#Bray-Curtis:
bray_distancia<- vegdist(datos_beta_1[ ,-1], method = "bray")
print(bray_distancia)
#########
