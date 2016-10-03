load("C:/Users/Andreas/Desktop/UNi/5. semester/Data/home.Rdata") 
home = HOME2
library("ggplot2")
plot(home[,6],home[,5])
ggplot(home, aes(x=as.factor(Postnr), y=as.integer(Liggetid), colour = Boligtilstand)) + geom_point()

ggplot(home, aes(x=as.integer(Boligareal), y=as.integer(Kontantpris), colour = Boligtilstand)) + geom_point()

2+2
