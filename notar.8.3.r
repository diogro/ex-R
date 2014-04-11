shannon = function(x) {x <- x[!is.na(x) & x != 0]; return(-sum((x/sum(x)) * log(x/sum(x))))}
simpson = function(x) {x <- x[!is.na(x)]; return(sum((x/sum(x))^2))}
diversidade <- function(x, indice = c("shannon", "simpson")){
    indice = match.arg(indice)
    if(indice == "shannon"){return(apply (x, 2, shannon))}
    if(indice == "simpson"){return(apply (x, 2, simpson))}
}
