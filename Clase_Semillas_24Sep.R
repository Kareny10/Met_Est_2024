#Prueba de t de una muestra
#realizar la comparación de una muestra experimental vs una muestra teoretica

semillas <- read.csv("Datos_Raw.csv", header = T)

#Probar la normalidad de los datos de las semillas
shapiro.test(semillas$Peso)

#Primera visualización de los datos
boxplot(semillas$Peso, col = "lavender")
abline(h =6.2, col= "red", lwd = 3, lty = "dotdash")
abline(h =5.7, col= "green", lwd = 3, lty = "dotdash")

t.test(semillas$Peso, mu = 6.2)
#Existen diferencias entre el peso observado y el peso de la 
#media teorética
#Aceptamos la hipotesis alternativa


#EJEMPLO2--------------------------------------------------------------------------

#Ahora la media teorética es de 5.85
boxplot(semillas$Peso, col = "mistyrose")
abline(h = 5.85, col= "red", lwd = 3, lty = "dotdash")
abline(h =5.7, col= "green", lwd = 3, lty = "dotdash")

t.test(semillas$Peso, mu = 5.85)

#Existen diferencias entre las medias 


#EJEMPLO 3-------------------------------------------------------------------------
#Ahora la media teorética es de 5.78
boxplot(semillas$Peso, col = "cornsilk")
abline(h = 5.78, col= "red", lwd = 3, lty = "dotdash")
abline(h =5.7, col= "green", lwd = 3, lty = "dotdash")

t.test(semillas$Peso, mu = 5.78)


#---------------------------------------------------------------------------------
#Muestras dependientes 
#Mismos individuos medidos en dos tiempos diferentes
#(2012 vs 2013) producción de semillas

tiempo <- read.csv("mainproduccion.csv", header = T)

boxplot(tiempo$Kgsem ~ tiempo$Tiempo, 
        col = "skyblue",
        xlab = "Año",
        ylab = "Semillas (Kg)")
abline(h = 10.1, col= "red", lwd = 3, lty = "dotdash")
abline(h = 10.9, col= "green", lwd = 3, lty = "dotdash")


#Determinar las medias de Kg en ambos años
tapply(tiempo$Kgsem, tiempo$Tiempo, mean)

#Quiero saber si hay diferencia solamente
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired = T)

#saber si 2013 es mayor a 2012
t.test(tiempo$Kgsem ~ tiempo$Tiempo, paired = T, alternative = "less")




#