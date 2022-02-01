library(exactRankTests)
Tx <- c(3, 4, 6, 6, 8, 8)
Cx <- c(4, 4, 4, 5, 6, 7, 8, 10, 12)
wilcox.exact(Tx, Cx, paired = FALSE, alternative = "less")



