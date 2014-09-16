 p = pressure$pressure
 t = pressure$temperature
 reg1 = lm(p ~ t)
 reg2 = lm(p ~ t + I(t^2))
 reg3 = lm(p ~ t + I(t^2) + I(t^3))
 r2 = summary(reg3)$r.squared
