mudas = read.table("altura-mudas.csv", header=T, sep=',')
mudas$substrato = factor(mudas$substrato)
tamboril = subset(mudas, mudas$especie == "tamboril")
aov.tamboril = aov(tamboril$altura ~ tamboril$substrato)
