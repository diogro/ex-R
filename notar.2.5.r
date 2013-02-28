pesos <- c(78.4, 79.8, 76.0, 75.3, 77.4, 78.6, 77.9, 78.8, 79.2, 75.2, 75.0, 79.4)
pesos.m = mean(pesos)
pesos.d2 = (pesos - pesos.m)^2
pesos.d2s = sum(pesos.d2)
pesos.var = pesos.d2s/(length(pesos)-1)
pesos.ds = sqrt(pesos.d2s)
pesos.sd = sqrt(pesos.var)
