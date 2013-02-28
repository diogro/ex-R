pesos = c(0.1, 1.1, 3.7, 5.7, -1.2, -1.5, 3.0, -0.4, 0.6,
          1.5, -0.1, 2.0, 0.6, -3.0, -0.3, -0.2, 0.3, 1.5)
dieta = rep(rep(c("A", "B", "C"), each=3), 2)
cor = rep(c("claro", "escuro"), each=9)
hamsters = data.frame(dieta, cor, pesos)
