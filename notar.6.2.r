caixeta = read.table("http://ecologia.ib.usp.br/bie5782/lib/exe/fetch.php?media=dados:caixeta.csv", header=T, sep=',')

area.basal.ind = ((caixeta$cap/(2*pi))^2*pi)

area.basal.parc = aggregate(area.basal.ind, list(caixeta$parcela), sum)
