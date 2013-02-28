e.grandis = read.table("http://ecologia.ib.usp.br/bie5782/lib/exe/fetch.php?media=dados:egrandis.csv", sep=';', header=T)
breviarium = summary(e.grandis)
cont.1 = table(e.grandis$ano)
#cont.2 = table(e.grandis$regiao, e.grandis$rotacao)
cont.2 = table(e.grandis$rotacao, e.grandis$regiao)
bofete = e.grandis[e.grandis$regiao=="Bofete",]
write.table(bofete, "bofete.txt", col.names=F, sep = '\t')
