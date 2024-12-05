#Código pregunta 15 y 16

set.seed(42)
n <- 30
altura <- rnorm(n, mean = 170, sd = 10)
peso <- 0.5 * altura + rnorm (n, mean = 0, sd = 5)

cor.test(peso,altura)
t.test(peso,altura)
