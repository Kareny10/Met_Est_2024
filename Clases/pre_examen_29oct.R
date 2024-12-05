#Pre_Examen
#Ejercicio 1 
Grupo <- gl(2,15,labels = c("bosque templado", "bosque tropical"))
biomasa <- c (45, 48, 47, 50, 46, 49, 51, 47, 46, 52, 48, 50, 49, 47, 46, 60,
              59, 62, 61, 58, 63, 62, 61, 60, 59, 62, 60, 61, 63, 62)
datos <- data.frame(Grupo, biomasa)
head(datos)

tapply(Datos$biomasa ~ Datos$Grupo, mean)
t.test(datos$biomasa ~ datos$Grupo)


  

#ejercicio 2
datos2 <- read.csv("Prep_examen.csv", header = T)
#¿Cuál es la hipótesis nula y la hipótesis alternativa para la prueba de t apareada en este contexto?
#hipotesis nula: no hay diferencias en las durezas de las maderas.
#hipotesis alternativa: si existe una diferencia en la dureza de la madera despues del trtatamiento que tuvieron.

#diferencia de durezas
dureza_inicial <- c(3.1, 2.9, 3.2, 3, 3.1, 3.2, 2.8, 3.3, 3, 3.1, 
                    2.9, 3.2, 2.8, 3, 3.1, 3.4, 3, 2.9, 3.1, 
                    3.3, 2.7, 3.1, 3, 2.9, 3.2, 3.3, 2.8, 
                    3, 3.2, 2.9)
dureza_posterior <- c(3.5, 3.4, 3.6, 3.2, 3.3, 3.4, 3, 3.7, 
                      3.3, 3.4, 3.2, 3.5, 3.1, 3.4, 3.3, 
                      3.8, 3.3, 3.2, 3.5, 3.6, 3, 3.5, 
                      3.4, 3.3, 3.5, 3.6, 3.2, 3.3, 
                      3.6, 3.4)

diferencia <- dureza_posterior - dureza_inicial
diferencia
#Realiza la prueba de t necesaria para evaluar si existe una diferencia significativa en la dureza de la madera
#antes y después del tratamiento. ¿Es significativa la diferencia al nivel de significancia del 5 %?
resultado <- t.test(dureza_posterior, dureza_inicial, var.equal = T)
head(resultado)
