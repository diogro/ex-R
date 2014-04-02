moeda = c('cara', 'coroa')

moedaamostra = sample(moeda, 1000, replace = TRUE)
contagem = table(moedaamostra)

moedaamostra2 = sample(moeda, 50, replace = TRUE)
contagem2 = table(moedaamostra2)

moedaamostra3 = sample(moeda, 100000, replace = TRUE)
contagem3 = table(moedaamostra3)

porcentagem = 100*contagem/1000
porcentagem2 = 100*contagem2/50
porcentagem3 = 100*contagem3/100000
porisso = 100000
