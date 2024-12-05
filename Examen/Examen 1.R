#Descarga de datos
library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/refs/heads/main/Datos_Examen/parcelas.csv")
parcelas <- read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/refs/heads/main/Datos_Examen/parcelas.csv")


#Prueba de normalidad
shapiro.test(parcelas$Diámetro)

#Prueba de t
t.test(parcelas$Diámetro, var.equal = F)

