X <- as.numeric(runif(10, pX <- 0.5))
Y <- as.numeric(runif(10, pY <- 0.1))

esperanca <- function(x) {
    n <- length(x)
    sum_x <- 0
    for(i in 1:n)
        sum_x <- sum_x + x[i]
    sum_x/n
}

variancia <- function(x){
  M <- 0
  S <- 0
  n <- length(x)
  for (i in 1:n){
    current_x <- x[i]
    oldM <- M
    M <- M + (current_x - M)/i
    S <- S + (current_x - M) * (current_x - oldM)
  }
  S/(n-1)
}

espX <- esperanca(X)
espY <- esperanca(Y)

varX <- variancia(X)
varY <- variancia(Y)
