zeroamarelos <- dpois(0, 2.5)
zeroroxos <- dpois(0, 1.2)
zeroipes <- zeroamarelos * zeroroxos
quantoazar <- dbinom(3, 3, zeroipes)

