caixeta = read.table("http://ecologia.ib.usp.br/bie5782/lib/exe/fetch.php?media=dados:caixeta.csv", header=T, sep=',')
area.basal.ind.fuste = ((caixeta$cap/(2*pi))^2*pi)
area.basal.ind = aggregate(area.basal.ind.fuste, list(caixeta$arvore), sum)
area.basal.parc = aggregate(area.basal.ind.fuste, list(caixeta$parcela), sum)

#dados.caixeta <- caixeta
#AB.IND.FUST <- ((dados.caixeta$cap/(2*pi))^2*pi)
#AB.ind <- aggregate(AB.IND.FUST,by=list(caixeta$arvore), sum)
#AB.parc <- aggregate(AB.IND.FUST,by=list(caixeta$parcela), sum)
