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
 
 # histograma --------------------------------------------------------------

hist(conjunto$Altura, col= "red", xlab = "Altura (m)",
     ylab = "Frecuencia", main = "Histograma de Altura")
     
 hist(conjunto$Vecinos, col= "blue", xlab = "vecinos",
      ylab = "Frecuencia", main = "Histograma de vecinos")
 
 hist(conjunto$Diametro, col= "yellow", xlab = "Diametro",
      ylab = "Frecuencia", main = "Histograma de Diametro")


# basicos -----------------------------------------------------------------

mean(conjunto$Altura)  
sd(conjunto$Altura)
  
 
mean(conjunto$Vecinos)  
sd(conjunto$Vecinos)

mean(conjunto$Diametro)  
sd(conjunto$Diametro)