

# Problema 1---------------------------------------------------------------------------
# Ingresar en objetos la superficie reforestada por especie

Pinus <- 3140
mezquite <- 1453
Encinos <- 450
Teka <- 1200
Juniperos <- 720

Superficie <- c(Pinus, mezquite, Encinos, Teka, Juniperos)
Sup<- c(3140, 1453, 450, 1200, 720)

# Operaciones
#Transformar ha a m2

Superficie * 10000
Sup * 10000


nombre <- c ("Pinus", "Mez", "Teka", "Jun", "Encino" )
Sup2 <- sort(Sup, decreasing = T)

barplot(Sup2, ylim = c(0,3500), 
        col = "skyblue",
        names.arg = nombre,
        xlab = "Especies",
        ylab = "Superficie (ha)",
        main = "Reportes CONAFOR")

