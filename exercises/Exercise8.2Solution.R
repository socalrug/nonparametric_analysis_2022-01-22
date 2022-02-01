library(bootstrap)
husband <- c(66, 66, 75, 64, 80, 72, 78, 65, 63, 75, 79, 77, 73, 69, 67, 77, 72,
             74, 80, 64)
wife <- c(63, 65, 62, 68, 71, 66, 70, 66, 63, 69, 66, 71, 64, 70, 65, 58, 63, 64,
          70, 69)

alldata <- matrix(cbind(husband,wife), ncol = 2)
theta <- function(x, alldata) {
  mean(alldata[x,1] - alldata[x,2])
}

set.seed(311009)
boot.results <- bootstrap(1:20, 5000, theta, alldata)
hist(boot.results$thetastar, col = "magenta")
quantile(boot.results$thetastar, c(.005, .995))


