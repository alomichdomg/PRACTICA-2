# Bolsa ESTRELLA
shannon_estrella <- 2.948402
pielou_estrella  <- 1.186524
simpson_estrella <- 0.170068
inverso_estrella <- 5.88
gini_estrella    <- 0.5497835
chao1_estrella   <- 13

# Bolsa CORAZÓN
shannon_corazon <- 2.691919
pielou_corazon  <- 1.294539
simpson_corazon <- 0.17
inverso_corazon <- 5.882353
gini_corazon    <- 0.3785714
chao1_corazon   <- 8.5

# Bolsa LUNA
shannon_luna   <- 3.508342
pielou_luna    <- 1.411861
simpson_luna   <- 0.09090909
inverso_luna   <- 11
gini_luna      <- 0.1625344
chao1_luna     <- 12

# Bolsa NARANJA
shannon_naranja <- 0
pielou_naranja  <- NA  
simpson_naranja <- 1
inverso_naranja <- 1
gini_naranja    <- NA  
chao1_naranja   <- 1

# Bolsa ULTIMA
shannon_ultima <- 2.391258
pielou_ultima  <- 1.149952
simpson_ultima <- 0.25
inverso_ultima <- 4
gini_ultima   <- 0.5555556
chao1_ultima  <- 8.333333


# Bolsa SONRISA
shannon_sonrisa <- 3.393466
pielou_sonrisa  <- 1.365631
simpson_sonrisa <- 0.1056
inverso_sonrisa <- 9.469697
gini_sonrisa    <- 0.3090909
chao1_sonrisa   <- 12


# Bolsa VERDE
shannon_verde <- 0
pielou_verde  <- NA  
simpson_verde <- 1
inverso_verde <- 1
gini_verde    <- NA  
chao1_verde   <- 1



indices <- data.frame(
  Bolsa = c("estrella", "corazon", "luna", "naranja", "ultima", "sonrisa", "verde"),
  Shannon = c(shannon_estrella, shannon_corazon, shannon_luna, shannon_naranja, shannon_ultima, shannon_sonrisa, shannon_verde),
  Pielou = c(pielou_estrella, pielou_corazon, pielou_luna, pielou_naranja, pielou_ultima, pielou_sonrisa, pielou_verde),
  Simpson = c(simpson_estrella, simpson_corazon, simpson_luna, simpson_naranja, simpson_ultima, simpson_sonrisa, simpson_verde),
  Simpson_Inverso = c(inverso_estrella, inverso_corazon, inverso_luna, inverso_naranja,inverso_ultima, inverso_sonrisa, inverso_verde),
  Gini = c(gini_estrella, gini_corazon, gini_luna, gini_naranja, gini_ultima, gini_sonrisa, gini_verde),
  Chao1 = c(chao1_estrella, chao1_corazon, chao1_luna, chao1_naranja, chao1_ultima, chao1_sonrisa, chao1_verde)
)

library(knitr)

kable(indices, caption = "Comparacion de indices de diversidad por bolsa")
