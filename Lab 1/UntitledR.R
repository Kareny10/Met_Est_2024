# ANDREA KARENY PÉREZ PINEDA
# 20/08/2024
# 2093794
# IF

#PARTE 1 
#Gastos meusuales de una estudiante universitaria de MCF

teléfono_celular <- 300
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833

#Gastos totales mensuales
300 + 240 + 1527 + 400 + 1500 + 1833

#Gastos por semestre escolar
5800 * 5 

#Gastos por año escolar
5800 * 10 

gastos <- c(teléfono_celular, transporte, comestibles, gimnasio, alquiler, otros)
gas <- c(300, 240, 1527, 400, 1500, 1833)

gastos <-c("teléfono_celular", "transporte", "comestibles", "gimnasio", "alquiler", "otros")
gas2 <- sort(gas, decreasing = T)


barplot(gas2, ylim = c(0,2000), 
        col = "purple",
        names.arg = gastos,
        xlab = "gastos",
        ylab = "Cantidad",
        main = "Gastos mensuales")





#PARTE 2 VARIABLES
#PROBLEMA 1
#Nombre del estudiante: CUALITATIVAS
#Fecha de nacimiento: CUANTITATIVAS
#Edad: CUANTITATIVA
#Dirección de casa: CUALITATIVAS
#Número de telefono: CUANTITATIVAS
#Área principal de estudio: CUALITATIVAS
#Grado de año universitario: primer año, segundo año, tercer año, último año: CUANTITATIVAS
#Puntaje de la prueba de mitad del período: CUALITATIVAS
#Calificación general: A,B,C,D,F:CUALITATIVAS 
#Tiempo: CUANTITATIVAS
#Número de hermanos: CUANTITATIVAS


#PROBLEMA 2
#árbol <- c(altura, edad, especie, estado)
#CUANTITATIVAS: altura, edad
#CUALITATIVAS: especie, estado

#PROBLEMA 3
#Es una variable cualitativa ya que se representa en categorías y no de una manera numérica. 


#PROBLEMA 4
#1INDIVIDUOS DE INTERÉS: estudiantes de universidades públicas
#VARIABLE: horas trabajadas por semana
#TIPO DE VARIABLE: cuantitativa
  
#2INDIVIDUOS DE INTERÉS: todosl los estudiantes universitarios de   México
#VARIABLE: proporción de estudiantes inscritos en universidades públicas
#TIPO DE VARIABLE:cualitativa

#3INDIVIDUOS DE INTERÉS: estudiantes femeninas y varones de universidades públicas
#VARIABLE:porcentaje de CENEVAL
#TIPO DE VARIABLE:cuantitativa

#4INDIVIDUOS DE INTERÉS:atletas universitarios y no universitarios
#VARIABLE:recibir asesoramiento académico
#TIPO DE VARIABLE:cualitativa

