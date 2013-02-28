require("datasets")
mean.iris = by(iris[,1:4], iris[5], mean)
mean.iris3 = apply(iris3, c(2, 3), mean)
