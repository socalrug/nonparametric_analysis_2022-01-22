library(bootstrap)
eruptions<- c(65, 82, 84, 54, 85, 78, 79, 87, 58, 68,
              76, 78, 74, 85, 75)
set.seed(1001222)
boot.results<- bootstrap(eruptions, 1000, median)
hist(boot.results$thetastar, col = "light green")
quantile(boot.results$thetastar, c(.025, .975))


