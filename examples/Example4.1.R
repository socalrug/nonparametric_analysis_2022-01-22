t24<- c(45,56,62,47,34,20)
t28<- c(67,72,76,80,63,63)
t30<- c(87,92,88,76,78,75)
t32<- c(85,87,85,90,90,92)
rates<- list(sample1=t24,sample2=t28,sample3=t30,sample4=t32)
kruskal.test(rates)


ks.test(t24,t28,alternative="two.sided",exact=FALSE)
ks.test(t24,t30,alternative="two.sided",exact=FALSE)
ks.test(t24,t32,alternative="two.sided",exact=FALSE)

ks.test(t28,t30,alternative="two.sided",exact=FALSE)
ks.test(t28,t32,alternative="two.sided",exact=FALSE)

ks.test(t30,t32,alternative="two.sided",exact=FALSE)

