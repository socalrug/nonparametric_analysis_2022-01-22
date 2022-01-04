actlevel <- c('high', 'moderate', 'low', 'low', 'low', 'low', 'low', 'moderate', 'moderate', 'high', 'low', 'moderate', 'moderate', 'high', 'moderate')
gym.used <- c('no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes')
fitness.table<- table(actlevel, gym.used)
fisher.test(fitness.table)