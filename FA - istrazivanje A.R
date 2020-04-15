
library(foreign)
library(GPArotation)
library(foreign)
library(corrplot)
library(FactoMineR)
library(factoextra)


choose.files()
podaci <- as.data.frame(read.spss("C:\\ISTR.A.sav"))
attach(podaci)


sum(is.na(podaci))
cisti_podaci <- podaci[complete.cases(podaci),]


matrix_podaci <- data.matrix(cisti_podaci, rownames.force = NA)
print(matrix_podaci)
summary(matrix_podaci)

cor_podaci <- cor(matrix_podaci)
print(cor_podaci)

fa_podaci <- fa(cor_podaci, nfactors = 6)
summary(fa_podaci)
