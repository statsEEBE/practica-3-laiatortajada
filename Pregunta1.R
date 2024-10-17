#ensayo de bernini
x<- c(0,1)
f<- c(0.68,0.32)
plot(x,f,type="h", ylim=c(0,1), clo="red")

n<- 43
Y<-function(i){sum(sample(x,n,f,replace=TRUE))}
Y(1)

encuestas <- sapply(1:400000,Y) #repetir un bucle
fr<-table(encuestas)/400000 #probabilitat pero caldria fer-ho amb infinit
barplot(fr)
fr["13"]


#per fer-ho amb R
#binomial = dbinom(n,p,prob)
dbinom(13,43,0.32)

y<- 0:43
plot(y,dbinom(y,43,0.32), type="h", col="red")
#p(z=17)
dbinom(17,44,0.32)
plot(y,dbinom(y,44,0.32), type="h", col="red")   

#per fer prob menor o igual
pbinom(16,44,0.32)
#mediana
qbinom(0.5,44,0.32)
qbinom(0.25,44,0.32)#1r quartil

24*0.68#media
24*0.68*0.32 #variança
qbinom(0.25,24,0.68)#1r quartil

y<- 0:43
plot(y,pbinom(y,24,0.68),type="s")

n2<- 46
#minim 2 televisons
n2*0.32
