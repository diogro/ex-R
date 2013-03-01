shannon = function(x) {return(-sum( (x[!is.na(x)]/sum(x[!is.na(x)])) * log(x[!is.na(x)]/sum(x[!is.na(x)]))))}
simpson = function(x) {return(sum((x[!is.na(x)]/sum(x[!is.na(x)]))^2))}
diversidade <- function(x=matrix(), indice){
    if(indice == "shannon"){return(data.frame(apply (x, 2, shannon)))}
    if(indice == "simpson"){return(data.frame(apply (x, 2, simpson)))}
}
