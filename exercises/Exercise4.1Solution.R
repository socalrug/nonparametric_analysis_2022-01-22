A <- c(3, 4, 4, 5, 7, 8)
B <- c(10, 11, 11, 12, 18)
C <- c(4, 5, 6, 6, 9, 10)

ppb <- list(sample1 = A,sample2 = B,sample3 = C)
kruskal.test(ppb)

wilcox.exact(A, B, alternative = "two.sided", exact = FALSE)
wilcox.exact(A, C, alternative = "two.sided", exact = FALSE)
wilcox.exact(B, C, alternative = "two.sided", exact = FALSE)

