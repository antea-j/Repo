# ogovaranje deskriptivno #

#podaci
library(foreign)
file.choose()
podaci <- as.data.frame(read.spss("C:\\Users\\Mirela\\Desktop\\ogovaranje stavovi.sav"))
print(podaci)
ls(podaci)
cisti_podaci <- podaci[complete.cases(podaci),]

var01 <- as.numeric(cisti_podaci$O01)
var02 <- as.numeric(cisti_podaci$O02)
var03 <- as.numeric(cisti_podaci$O03)
var04 <- as.numeric(cisti_podaci$O04)
var05 <- as.numeric(cisti_podaci$O05)
var06 <- as.numeric(cisti_podaci$O06)
var07 <- as.numeric(cisti_podaci$O07)
var08 <- as.numeric(cisti_podaci$O08)
var09 <- as.numeric(cisti_podaci$O09)
var10 <- as.numeric(cisti_podaci$O10)
var11 <- as.numeric(cisti_podaci$O11)
var12 <- as.numeric(cisti_podaci$O12)
var13 <- as.numeric(cisti_podaci$O13)
var14 <- as.numeric(cisti_podaci$O14)
var15 <- as.numeric(cisti_podaci$O15)
var16 <- as.numeric(cisti_podaci$O16)
var17 <- as.numeric(cisti_podaci$O17)
var18 <- as.numeric(cisti_podaci$O18)
var19 <- as.numeric(cisti_podaci$O19)
var20 <- as.numeric(cisti_podaci$O20)
var21 <- as.numeric(cisti_podaci$O21)
var22 <- as.numeric(cisti_podaci$O22)
var23 <- as.numeric(cisti_podaci$O23)
var24 <- as.numeric(cisti_podaci$O24)
var25 <- as.numeric(cisti_podaci$O25)
var26 <- as.numeric(cisti_podaci$O26)
var27 <- as.numeric(cisti_podaci$O27)
var28 <- as.numeric(cisti_podaci$O28)

# hist za svaku za filtriranje koju uzeti koju ne
hist(var01)
hist(var02)
hist(var03)
hist(var04)
hist(var05)
hist(var06)
hist(var07)
hist(var08)
hist(var09)
hist(var10)
hist(var11)
hist(var12)
hist(var13)
hist(var14)
hist(var15)
hist(var16)
hist(var17)
hist(var18)
hist(var19)
hist(var20)
hist(var21)
hist(var22)
hist(var23)
hist(var24)
hist(var25)
hist(var26)
hist(var27)
hist(var28)

# novi data frame za potrebne num var
num_potrebni_podaci <- data.frame(var01, var02, var05, var07, var08, var09, var10, var11, var12, var13, var14, var15, var16, var18, var19, var20, var22, var23, var25, var28)

#korelacija
korelacija <- cor(num_potrebni_podaci)
korelacija

# vizualizacija
library(corrplot)
library(ggcorrplot)
corrplot(korelacija, method = "color")
corrplot(korelacija, method = "number")
corrplot(korelacija, type = "lower")


