clinical.trial <- matrix(c(8, 2, 6, 4, 2, 8), nrow = 2,
                         dimnames = list(relief = c('yes', 'no'),
                         group = c('med. A', 'med. B', 'placebo')))
fisher.test(clinical.trial)
