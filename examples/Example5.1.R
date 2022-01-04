Tx<- c(0.45, 1.95, 1.20, 0.65, 0.98, -1.98, 1.80, -0.76, 0.56)
Cx<- c(0.38, 0.90, 0.70, -0.50, 0.47, -1.30, 1.34, 0.13, -0.40)

cor.test(Tx, Cx, method="spearman", alternative="greater")
