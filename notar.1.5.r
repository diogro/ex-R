load("bichos.rdata")
rm(list=ls(pattern="temp*"))
save.image("bichos01.rdata")
print(sum(c("anfibios", "aves","mamiferos") %in% ls())==3)
rm(list=ls())

