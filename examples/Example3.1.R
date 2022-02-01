Tx <- c(3, 4, 6, 6, 8, 8)
Cx <- c(4, 4, 4, 5, 6, 7, 8, 10, 12)
ks.test(Tx, Cx, alternative = "greater", exact = FALSE)
