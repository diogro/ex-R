shannon <- function(x) -sum(((x <- na.omit(x[x!=0]))/sum(x)) * log(x/sum(x)))
simpson <- function(x) sum(((x <- na.omit(x))/sum(x))^2)
diversidade <- function(x, indice = c("shannon", "simpson")){return(apply (x, 2, match.arg(indice)))}
