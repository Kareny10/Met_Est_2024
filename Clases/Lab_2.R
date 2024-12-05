trees<-read.csv("DBH_1.csv", header=TRUE)



prof_url<- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa<- read.csv(prof_url)
head(profepa)

install.packages("repmis")
Library(repmis)
conjunto <- source ("https://www.dropbox.com/scl/fi/mpo1u26mb3efgv4pvfg8l/cuadro1.csv?rlkey=k0ccrhwur2uosvq9rlva29004&e=1&dl=1")

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)


#PARTE 2
mean(trees$dbh)

sd(trees$dbh)
