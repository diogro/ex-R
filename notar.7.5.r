aves <- read.table('aves_cerrado.csv', header = T, sep=';', as.is=T)
aves$urubu[is.na(aves$urubu)] <- 0
aves$carcara[is.na(aves$carcara)] <- 0
aves$seriema[is.na(aves$seriema)] <- 0

aves$fisionomia[aves$fisionomia =='ce'] = 'Ce'

mod.ce  <-  lm(seriema[fisionomia=='Ce']~carcara[fisionomia=='Ce'], aves)
mod.cc  <-  lm(seriema[fisionomia=='CC']~carcara[fisionomia=='CC'], aves)
mod.cl  <-  lm(seriema[fisionomia=='CL']~carcara[fisionomia=='CL'], aves)

p.ce =  summary(mod.ce)$coefficients[2,4]
p.cc =  summary(mod.cc)$coefficients[2,4]
p.cl =  summary(mod.cl)$coefficients[2,4]

coef.ce = coef(mod.ce)
coef.cc = coef(mod.cc)
coef.cl = coef(mod.cl)
