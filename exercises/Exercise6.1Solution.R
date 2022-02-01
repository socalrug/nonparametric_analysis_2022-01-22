center <- c('Stockholm', 'Washington', 'Denver')
age <- c('20s30s', '40s50s', '60s', '70splus')
data <- matrix(c(5, 10, 13, 12, 8, 11, 4, 3, 2, 14, 8, 0),
               nrow = 3, dimnames = list(center, age))
fisher.test(data)
