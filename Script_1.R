 library(repmis)
 conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")


# media -------------------------------------------------------------------


 mean(conjunto$Altura)
 
 

# altura ------------------------------------------------------------------


 H.media <-subset(conjunto,
                  conjunto$Altura <= 13.9432)
 
 H.16 <- subset(conjunto,
                conjunto$Altura < 16.5)
 

# vecinos -----------------------------------------------------------------
 
vecinos_3 <-subset(conjunto,
                   conjunto$Vecinos <= 3)
vecinos_4  <-subset(conjunto,        
                    conjunto$Vecinos < 4)

# diametro ----------------------------------------------------------------
                                                                                                                                                                                                                                                                   
mean(conjunto$Diametro)                          
        
 DBH_media <- subset(conjunto,
                     conjunto$Diametro < 15.794)
 DBH_16 <- subset(conjunto,
                  conjunto$Diametro > 16)
 

# especie -----------------------------------------------------------------

cedro_rojo <- subset(conjunto,
                      conjunto$Especie == "C")
Diam_cedro <- subset(cedro_rojo,
                     cedro_rojo$Diametro <= 16.9)
Altura_cedro <- subset(cedro_rojo,
                       cedro_rojo$Altura > 18.5)

 Tsuga_heterofilia <- subset(conjunto,                
                             conjunto$Especie == "H")
 diam_tsuga <- subset(Tsuga_heterofilia,
                      Tsuga_heterofilia$Diametro <= 16.9)
 Altura_tsuga <-subset(Tsuga_heterofilia, 
                       Tsuga_heterofilia$Altura > 18.5)
 
 Douglasia_verde <- subset(conjunto, conjunto$Especie == "F")
 
 diam_douglasia <- subset(Douglasia_verde, Douglasia_verde$Diametro <= 16.9)
 
 Altura_douglasia <- subset(Douglasia_verde, Douglasia_verde$Altura > 18.5)
 
 HyF <- rbind(Tsuga_heterofilia, Douglasia_verde)
 tsu.doug <- subset(conjunto, conjunto$Especie == "H" | conjunto$Especie =="F")
 
 
 # histograma --------------------------------------------------------------

hist(conjunto$Altura, col= "red", xlab = "Altura (m)",
     ylab = "Frecuencia", main = "Histograma de Altura")
     
 hist(conjunto$Vecinos, col= "blue", xlab = "vecinos",
      ylab = "Frecuencia", main = "Histograma de vecinos")
 
 hist(conjunto$Diametro, col= "yellow", xlab = "Diametro",
      ylab = "Frecuencia", main = "Histograma de Diametro")
 

# 3 graficas --------------------------------------------------------------

par(mfrow=c(2,2) )
hist(Tsuga_heterofilia$Altura, main = "Altura especie H" , col = "red" ,
     xlab = "Altura" , ylab = "Frecencia") 
hist(Douglasia_verde$Altura, main = "Altura especie F" , col = "blue",
     xlab = "Altura" , ylab = "Frecuencia") 
hist(Tsuga_heterofilia$Diametro, main = "Diametro especie H" , col = "yellow" ,
     xlab = "Diametro" , ylab = "Frecuencia")
hist(Douglasia_verde$Diametro, main = "Diametro especie F" , col = "green" ,
     xlab = "Diametro" , ylab = "Frecuencia")
par(mfrow=c(1,1))

par(mfrow=c(2,2))
hist(H.media$Altura, col = "red" , xlab = "Alturas iguales o menores a la media", ylab = "Frecuencia")
hist(H.16$Altura, col = "blue", xlab = "Alturas mayores a 16", ylab = "Frecuencia")
hist(vecinos_3$Vecinos, col = "black", xlab = "Vecinos iguales o mayores a 3", ylab = "Frecuencia")
hist(vecinos_4$Vecinos, col = "green", xlab = "Vecinos mayores a 4", ylab = "Frecuencia")
hist(DBH_media$Diametro,  col = "Orange", xlab = "Diametros mayores a la media", ylab = "Frecuencia")
hist(DBH_16$Diametro,  col = "yellow", xlab = "Diametros mayores a 16", ylab = "Frecuencia")
par(mflow=c(1,1))

# basicos -----------------------------------------------------------------

mean(conjunto$Altura)  
mean(conjunto$Vecinos)  
mean(conjunto$Diametro) 
mean(H.media$Altura)
mean(H.16$Altura)
mean(vecinos_3$Vecinos)
mean(vecinos_4$Vecinos)
mean(DBH_media$Diametro)
mean(DBH_16$Diametro)


sd(conjunto$Altura)
sd(conjunto$Vecinos)
sd(conjunto$Diametro)
sd(H.media$Altura)
sd(H.16$Altura)
sd(vecinos_3$Vecinos)
sd(vecinos_4$Vecinos)
sd(DBH_media$Diametro)
sd(DBH_16$Diametro)











