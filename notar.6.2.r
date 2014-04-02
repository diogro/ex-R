mudas = read.table("altura-mudas.csv", header=T, sep=',')

#library(ggplot2)
#mudas$bloco = factor(mudas$bloco)
#mudas$substrato = factor(mudas$substrato)
#ggplot(mudas, aes(especie, altura, group = especie)) + geom_boxplot() + facet_grid(~substrato) + theme_classic()

tamboril = subset(mudas, mudas$especie == "tamboril")
mean.tamboril = mean(tamboril$altura)
ss.total = sum((tamboril$altura - mean.tamboril)^2)
mean.tamboril.subs = tapply(tamboril$altura, tamboril$substrato, mean)
ss.intra = sum((tamboril$altura - mean.tamboril.subs[tamboril$substrato])^2)
ss.entre = 6*sum((mean.tamboril.subs - mean.tamboril)^2)
gl = dim(tamboril)[1] - 1
gl_entre = length(unique(tamboril$substrato)) - 1
gl_intra = gl - gl_entre
d_intra = ss.intra/gl_intra
d_entre = ss.entre/gl_entre
razao = d_entre/d_intra
prob = pf(razao, gl_entre, gl_intra, lower.tail = FALSE)
porc = 100* ss.intra/ss.total
