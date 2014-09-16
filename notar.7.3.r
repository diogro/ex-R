iris.setosa = subset(iris, Species == "setosa")
lm.iris = lm(Sepal.Width~Sepal.Length, iris.setosa)
lm.iris.coef = coef(lm.iris)

p.w = lm(Sepal.Width~Petal.Length, iris.setosa)
p.l = lm(Sepal.Length~Petal.Length, iris.setosa)

s.w.r = residuals(p.w)
s.l.r = residuals(p.l)

lm.iris.nopetal = lm(s.w.r~s.l.r)
lm.iris.nopetal.coef = coef(lm.iris.nopetal)
