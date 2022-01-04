library(bootstrap)
years<- c(12, 33, 5, 3, 12, 6, 3, 0, 2, 46)
health<- c(1, 2, 3, 3, 2, 2, 4, 4, 3, 1)

alldata<- matrix(cbind(years,health), ncol=2)
theta<- function(x, alldata){
    cor(alldata[x,1], alldata[x,2], method="spearman")
  }

set.seed(28775)
boot.results<-bootstrap(1:10, 5000, theta, alldata)
hist(boot.results$thetastar, col = "light blue")
quantile(boot.results$thetastar, c(.005, .995))
