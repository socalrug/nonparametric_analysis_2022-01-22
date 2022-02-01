names <- c('pen', 'real', 'pen', 'pen', 'real', 'pen', 'pen', 'real', 'pen',
           'pen', 'pen', 'pen',	'pen', 'pen', 'real', 'real', 'real', 'pen',
           'pen', 'pen', 'pen', 'pen', 'real', 'pen', 'real',	'real', 'real',
           'pen', 'real', 'pen')

time <- c('after', 'before', 'after', 'before', 'before', 'after', 'after',
          'after', 'before', 'after', 'after', 'before', 'before', 'after',
          'after', 'before', 'after', 'after', 'after',	'before', 'after',
          'after', 'after', 'after', 'before', 'after', 'before', 'after',
          'before',	'before')
books.table <- table(names, time)
fisher.test(books.table)
