data(rivers)
prop.mm = sum(rivers<mean(rivers))/length(rivers)
quantil.75 = quantile(rivers, 0.75)
medias = c(mean(rivers), mean(rivers, 0.25), median(rivers))
