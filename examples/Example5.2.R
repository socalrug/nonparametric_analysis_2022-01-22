years<- c(12, 33, 5, 3, 12, 6, 3, 0, 2, 46)
health<- c(1, 2, 3, 3, 2, 2, 4, 4, 3, 1)

cor.test(years, health, method="spearman", alternative="less", exact=FALSE)
