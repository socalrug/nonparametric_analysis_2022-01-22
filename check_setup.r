message('Installing required packages')
package <- c('exactRankTests', 'tidyverse', 'fANCOVA', 'bootstrap','magrittr',
             'tibble', 'stats', 'rstudioapi', 'stringr', 'devtools')
lapply(package, FUN = function(pkg) {
  if (!require(pkg, quietly = TRUE, warn.conflicts = FALSE, character.only = TRUE)){
    install.packages(pkg, dependencies = TRUE)
  }
})

# load the packages that this script needs
stopifnot(require(rstudioapi))
stopifnot(require(stringr))

message('Checking the version of R that you are using')
if (as.numeric(R.Version()$major) < 4 ||
    (as.numeric(R.Version()$major) == 4 &
     as.numeric(stringr::str_split(R.Version()$minor, "[.]")[[1]][[1]]) < 1)) {
  warning('Your version of R is quite old, consider upgrading')
}


message('Updating all the packages to the latest version')
update.packages(ask = FALSE)


message('checking the version of R Studio')
if ( rstudioapi::versionInfo()$version < "1.4") {
  warning('Using an old version of RStudio, consider upgrading')
}

