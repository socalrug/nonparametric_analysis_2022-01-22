#install.packages("bootstrap")
library(bootstrap)
revenue <- c(437.94, 387.51, 400.48, 403.16,  350.87, 408.43, 275.94, 470.83,
             273.96, 423.90, 373.70, 462.77, 343.58, 425.04)
set.seed(564453)
boot.results <- bootstrap(revenue, 1000, mean)

hist(boot.results$thetastar, col = "purple")


quantile(boot.results$thetastar, c(.025, .975))
