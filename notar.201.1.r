X <- seq(0, 10)
Y <- seq(0, 10)

pX <- dbinom(X, 10, 0.5)
pY <- dbinom(Y, 10, 0.1)

esperanca <- function(x, px) sum(px * x)
variancia <- function(x, px) sum(px * ((x - esperanca(x, px)) * (x - esperanca(x, px))))

espX <- esperanca(X, pX)
espY <- esperanca(Y, pY)

varX <- variancia(X, pX)
varY <- variancia(Y, pY)
