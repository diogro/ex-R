dados.esaligna = read.table("http://ecologia.ib.usp.br/bie5782/lib/exe/fetch.php?media=dados:esaligna.csv", header=T, sep=',')
tronco.folha = dados.esaligna$tronco + dados.esaligna$folha
dados.esaligna2 = data.frame(dados.esaligna, tronco.folha)
raios = dados.esaligna$dap/2
area.basal = pi*raios^2
dados.esaligna.fin = data.frame(dados.esaligna2, area.basal)
dados.esaligna.10cm = dados.esaligna.fin[dados.esaligna.fin$dap>10,]
raios = dados.esaligna.10cm$dap/2

area.basal = tapply(pi*raios^2, dados.esaligna.10cm$talhao, sum)
media.area.basal = tapply(pi*raios^2, dados.esaligna.10cm$talhao, mean)

area.basal = aggregate(pi*raios^2, list(dados.esaligna.10cm$talhao), sum)
media.area.basal = aggregate(pi*raios^2, list(dados.esaligna.10cm$talhao), mean)
