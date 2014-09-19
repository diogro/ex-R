distr <- "binomial"

incidencia <- c(1146,797,1081,
                1044,711,934)
classe <- rep(c("baixa", "media", "alta"), 2)
ano <- rep(c(1997, 2000), each = 3)
dados <- data.frame(incidencia, classe, ano)
sobrev <- dados$incidencia[dados$ano == 2000]/dados$incidencia[dados$ano == 1997]

L.baixa <- function(probs) dbinom(dados$incidencia[dados$ano == 2000 & dados$classe == 'baixa'],
                                  dados$incidencia[dados$ano == 1997 & dados$classe == 'baixa'],
                                  probs)
L.media <- function(probs) dbinom(dados$incidencia[dados$ano == 2000 & dados$classe == 'media'],
                                  dados$incidencia[dados$ano == 1997 & dados$classe == 'media'],
                                  probs)
L.alta <- function(probs) dbinom(dados$incidencia[dados$ano == 2000 & dados$classe == 'alta'],
                                 dados$incidencia[dados$ano == 1997 & dados$classe == 'alta'],
                                 probs)

valores  <- seq(0.82, 0.94, length.out = 200)
lh.baixa <- L.baixa(valores)
lh.media <- L.media(valores)
lh.alta  <- L.alta(valores)
lh.baixa <- lh.baixa/max(lh.baixa)
lh.media <- lh.media/max(lh.media)
lh.alta  <- lh.alta/max(lh.alta)

plot(lh.baixa~valores)
points(lh.media~valores, col = 'blue')
points(lh.alta~valores, col = 'red')

razoes.ml <- c(2, 4, 8, 16, 32)
alta_media <- function (razao) any(lh.alta > 1/razao & lh.media > 1/razao)
alta_baixa <- function (razao) any(lh.alta > 1/razao & lh.baixa > 1/razao)
altamedia <- max(razoes.ml[!sapply(razoes.ml, alta_media)])
altabaixa <- max(razoes.ml[!sapply(razoes.ml, alta_baixa)])

