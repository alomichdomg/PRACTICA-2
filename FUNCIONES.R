####FUNCIONES:
#####################################################################################
shannon_mejor <- function(abundancias){
  proba <- abundancias/sum(abundancias) #probabilidades al cuadrado y luego sumadas
  return(-sum(proba*log2(proba)))
  
}
pielou <- function(abundancias){
  shannon_mejor(abundancias)/log(length(abundancias))
  
}


simpson_funcion <- function(simpson_vector){
  proba_1 <- simpson_vector/sum(simpson_vector)
  obj_1 <- sum(proba_1*proba_1)
  #objeto<- proba_1/sum(simpson_vector)*(sum(simpson_vector)-1)
  #obj_1<- sum(objeto)
  return(obj_1)
}

simpson_mia <- function(abundancias){
  individuos <- sum(abundancias) #riqueza 
  calculo_arriba <- sum(abundancias * (abundancias - 1))
  calculo_abajo <- individuos * (individuos - 1)
  resultado <- calculo_arriba / calculo_abajo
  return(resultado)
}



inverso_simpson <- function(vector){
  obj1<- 1/simpson_funcion(vector)
  return(obj1)
}