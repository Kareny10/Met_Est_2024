#Importar datos a GitHub

url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)

boxplot(madera$Peso_g ~ madera$Especie,
        ylab = "peso_g",
        xlab = "Especie",
        col = "pink")

shapiro.test(madera$Peso_g)

bartlett.test(madera$Peso_g ~ madera$Especie)

madera$peso_t<- log (madera$Peso_g)
boxplot(madera$peso_t ~ madera$Especie,
        ylab = "peso_t",
        xlab = "Especie",
        col = "skyblue")
t.test(madera$Peso_g ~ madera$Especie, var.equal = F)


boxplot(madera$Lado_C ~ madera$Especie,
        ylab = "Lado C",
        xlab = "Especie",
        col = "yellow2")

shapiro.test(madera$Lado_C)

bartlett.test(madera$Lado_C ~ madera$Especie)

madera$Lado_CA <- log(madera$Lado_C)

boxplot(madera$Lado_CA ~ madera$Especie,
        ylab = "Lado_CA",
        xlab = "Especie",
        col = "purple3")

t.test(madera$Lado_C ~madera$Especie, var.equal = F)
