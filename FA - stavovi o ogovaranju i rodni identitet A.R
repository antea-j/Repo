# FAKTORSKA ANALIZA - rodni identitet i ogovaranje #

library(psych)
library(GPArotation)
library(foreign)
library(corrplot)
library(FactoMineR)
library(factoextra)

# podaci
file.choose()
podaci <- as.data.frame(read.spss("C:\\R - o i RI\\ISTR.sav"))
attach(podaci)


head(podaci,10)

# 0 NA elemenata
sum(is.na(podaci))
cisti_podaci <- podaci[complete.cases(podaci),]

# matrix
matrix_podaci <- data.matrix(cisti_podaci, rownames.force = NA)
print(matrix_podaci)
summary(matrix_podaci)

# korelacijska tablica
cor_podaci <- cor(matrix_podaci)

# FA
fa_podaci <- fa(cor_podaci, nfactors = 6)
summary(fa_podaci)

#ili
str(cisti_podaci)
podaci_fa <- FAMD(cisti_podaci, graph = FALSE)
print(podaci_fa)

# vizulizacija
fviz_screeplot(podaci_fa)
fviz_famd_var(podaci_fa, repel = TRUE)
fviz_contrib(podaci_fa, "var", axes = 1)

# analiza var
varijable <- get_famd_var(podaci_fa)
varijable
head(varijable$contrib)
head(varijable$cos2)
head(varijable$coord)
varijable$contrib

# analiza kval var
kval <- get_famd_var(podaci_fa, "quali.var")
kval

