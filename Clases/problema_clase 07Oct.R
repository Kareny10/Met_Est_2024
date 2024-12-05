Grupo <- gl(2,12, labels = c ("Fotografía","Araña"))
Ansiedad <- c(30,35,45,40,50,35,55,25,30,45,40,50,40,35,50,55,65,55,50,35,
              30,50,60,39)
Datos <- data.frame(Grupo, Ansiedad)
head(Datos)

tapply(Datos$Ansiedad, Datos$Grupo, mean)
#Existe mayor nivel de ansiedad en la araña que en la fotografía

boxplot(Datos$Ansiedad ~ Datos$Grupo)
t.test(Datos$Ansiedad ~ Datos$Grupo, var.equal = T)

t.test(Datos$Ansiedad ~ Datos$Grupo, var.equal = T, 
       alternative = "greater")
t.test(Datos$Ansiedad ~ Datos$Grupo, var.equal = T,
       alternative = "less")




costal <- c(87.7,80.01,77.28,78.76,81.52,74.2,80.71,79.5,77.87,81.94,80.7,
            82.32,75.78,80.19,83.91,79.4,77.52,77.62,81.4,74.89,82.95,73.59,
            77.92,77.18,79.83,81.23,79.28,78.44,79.01,80.47,76.23,78.89,77.14,
            89.94,78.54,79.7,82.45,77.29,75.52,77.21,75.99,81.94,80.41,77.7)
mean(costal)

plot(density(costal),
     main = "Producto costal",
     xlab = "Peso (Kg) costales",
     ylab = "Densidad",
     col = "hotpink",
     lwd = 2)

abline(v=mean(costal), col = "red", lwd = 2, lty =2)
abline(v=80,col = "blue", lwd =2, lty = 2)

t.test(costal, mu =80, alternative = "less")

