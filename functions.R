subsetter <- function(vect, max) {
  use <- vect > max
  vect[use]
}


subsetter(c(2,56, 8, 14), 10)
class(subsetter)

column_mean <- function(y){
  nc <- ncol(y)
  means <- numeric(nc)
  print(means)
  for(i in 1:nc){
    means <- y[, i]
  }
  means
}

column_mean(airquality)
