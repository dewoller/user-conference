devtools::install_github("jimmyday12/fitzRoy")

library(fitzRoy)


results <- get_match_results()


pbirthdaysim <- function(n) { 
  ntests <- 100000 
  pop <- 1:365 
  anydup <- function(i) 
    any(duplicated( sample(pop, n, replace=TRUE))) 
  sum(sapply(seq(ntests), anydup)) / ntests } 
bdayp <- sapply(1:100, pbirthdaysim) 
