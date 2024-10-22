#Correlación

#cuarteto 1
xl <- c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
yl <- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

mean(xl); mean(yl)
var(xl); var(yl)
sd(xl); sd(yl)

cor.test(xl,yl)


#caurteto 2
x2 <-c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y2 <-c(9.14, 8.14, 8.74, 8.77, 9.26, 8.10, 6.13, 3.10, 9.13, 7.26, 4.74)

mean(x2); mean(y2)
var(x2); var(y2)
sd(x2); sd(y2)

cor.test(x2,y2)


#cuarteto 3 
x3 <-c(10, 8, 13, 9, 11, 14, 6, 4, 12, 7, 5)
y3 <-c(7.46, 6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)

mean(x3); mean(y3)
var(x3); var(y3)
sd(x3); sd(y3)

cor.test(x3,y3)


#caurteto 4
x4 <-c(8, 8, 8, 8, 8, 8, 8, 19, 8, 8, 8)
y4 <-c(6.58, 5.76, 7.71, 8.84, 8.47, 7.04, 5.25, 12.50, 5.56, 7.91, 6.89)

mean(x4); mean(y4)
var(x4); var(y4)
sd(x4); sd(y4)

cor.test(x4,y4)

#Graficas cuatro plots
par(mfrow=c(2,2))
plot(xl,yl,main = "cuarteto 1")
plot(x2,y2,main = "cuarteto 2")
plot(x3,y3,main = "cuarteto 3")
plot(x4,y4,main = "cuarteto 4")
par(mfrow=c(1,1))


#Datos plántulas de ebano
eba <- read.csv("ebanos.csv", header =T)

plot(eba$diametro, eba$altura, col= "mediumpurple1", pch=8,
     xlab = "dbh (mm)",
     ylab = "Altura (cm)",
     text(15,20, "r=0.82"))

cor.test(eba$diametro, eba$altura)

