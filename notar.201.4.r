euterpe <- c(202,151,124,51,122,94,229,78,119,323,157,303)
pois <- mean(euterpe)
normal <- coef(fitdistr(euterpe,"normal"))
neg.bn <- coef(fitdistr(euterpe,"negative binomial"))
