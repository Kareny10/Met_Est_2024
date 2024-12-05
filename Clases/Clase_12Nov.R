#ANOVA
#Experimento de cuatro parajes y de sus diámetros
#Parajes de Chihuahua
# 12/11/2024


#importar datos......................................................................
paraje <- read.csv("Datos_Rascon_Anova.csv", header = T)
paraje$Paraje <- as.factor(paraje$Paraje)


boxplot(paraje$DAP ~ paraje$Paraje,
        col = "lavender",
        ylab = "DAP",
        xlab = "Paraje")

tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP,paraje$Paraje, var)

shapiro.test(paraje$DAP)
bartlett.test(paraje$DAP ~ paraje$Paraje)

par.aov <- aov(paraje$DAP ~ paraje$Paraje)
summary(par.aov)
9862/3
10476/116
#hipotesis alternativa
#se acepta una hipotesis alternativa, se quiere definir en donde estan las diferencias
#en los sitios

#Prueba de Tukey....................................................................
TukeyHSD(par.aov)
#Si existe diferencia significatva
plot(TukeyHSD(par.aov))
