mu <- 150
sigma <- 11/sqrt(300)
conf90 <- qnorm(c(0.05, 0.95), mu, sigma)
conf99 <- qnorm(c(0.005, 0.995), mu, sigma)
