setwd("C:/Repositorios/Met_Est_2024")
conjunto <- read.csv("Base de datos.csv", header=TRUE)
head(conjunto)

H.media <- which(conjunto$Altura<=mean(conjunto$Altura))
H.media

H.16 <- which(conjunto$Altura<16.5)
H.16

Vecinos_3 <- which(conjunto$Vecinos<=3)
Vecinos_3
Vecinos_4 <- which(conjunto$Vecinos>4)
Vecinos_4

DBH.media <- which(conjunto$Diametro<mean(conjunto$Diametro))
DBH.media
DBH_16 <-which(conjunto$Diametro>16)
DBH_16

Especie <- c("cegro rojo","Tsuga heterófilia", "Douglasia verde")
Especie

Diametro_16.9 <- which(conjunto$Diametro<=16.9)
Diametro_16.9

Altura_18.5 <- which(conjunto$Altura>18.5)
Altura_18.5

hist(conjunto$Altura,
     ylab = "metros",
     col = "pink")

hist(H.media,
     ylab = "metros",
     col = "skyblue")

hist(H.16,
     ylab = "metros",
     col = "lightgreen")

hist(Vecinos_3,
     ylab = "metros",
     col = "lightyellow")

hist(Vecinos_4,
     ylab = "metros",
     col = "orange")

hist(conjunto$Diametro,
     ylab = "metros",
     col = "hotpink")

hist(DBH.media,
     ylab = "metros",
     col = "red")

hist(DBH_16,
     ylab = "metros",
     col = "yellow")

mean(conjunto$Altura)
sd(conjunto$Altura)

mean(H.media)
sd(H.media)

mean(H.16)
sd(H.16)

mean(Vecinos_3)
sd(Vecinos_3)

mean(Vecinos_4)
sd(Vecinos_4)

mean(conjunto$Diametro)
sd(conjunto$Diametro)

mean(DBH.media)
sd(DBH.media)

mean(DBH_16)
sd(DBH_16)