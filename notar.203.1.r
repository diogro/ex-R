L.binom <- function(probs) dbinom(10, 200, probs)
valores <- seq(0.02, 0.1, length.out = 100)
relativa.copepod <- L.binom (valores)
relativa.copepod <- relativa.copepod/max(relativa.copepod)
MLE.index <- which(relativa.copepod == max(relativa.copepod))
copepod <- valores[MLE.index]
copepod.8 <- relativa.copepod[relativa.copepod > 1/8]
copepod.sup <- valores[which(relativa.copepod == copepod.8[length(copepod.8)])]

L.binom.nem <- function(probs) dbinom(0, 200, probs)
valores.nem <- seq(0, 0.1, length.out = 100)
relativa.nematoda <- L.binom.nem (valores.nem)
relativa.nematoda <- relativa.nematoda/max(relativa.nematoda)
MLE.index <- which(relativa.nematoda == max(relativa.nematoda))
nematoda <- valores.nem[MLE.index]
nematoda.8 <- relativa.nematoda[relativa.nematoda > 1/8]
nematoda.sup <- valores.nem[which(relativa.nematoda == nematoda.8[length(nematoda.8)])]
