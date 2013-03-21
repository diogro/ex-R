shannon2 = function(x) {return(-sum( (x[!is.na(x)]/sum(x[!is.na(x)])) * log(x[!is.na(x)]/sum(x[!is.na(x)]))))}
simpson2 = function(x) {return(sum((x[!is.na(x)]/sum(x[!is.na(x)]))^2))}
diversidade2 <- function(x, indice){
    if(indice == "shannon"){return(data.frame(shannon = apply (x, 2, shannon2)))}
    if(indice == "simpson"){return(data.frame(simpson = apply (x, 2, simpson2)))}
}
