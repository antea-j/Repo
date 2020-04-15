# LDA #

library(foreign)
library(car)
library(rattle)

#podaci
file.choose()
podaci <- as.data.frame(read.spss("C:\\Users\\Mirela\\Documents\\antea-j_repo\\Repo\\O.R.I..sav"))
cisti_podaci <- podaci[complete.cases(podaci),]

#matrix
matrix_podaci <- data.matrix(cisti_podaci, rownames.force = NA)
head(matrix_podaci)
matrix_podaci <- as.data.frame(matrix_podaci)

#LDA
lda_podaci <- MASS::lda(O01~., data = matrix_podaci)
lda_pred <- predict(lda_podaci)
lda_pred

plot(lda_podaci, col = as.integer(cisti_podaci$O01))


