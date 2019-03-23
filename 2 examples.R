
library(class)

library(caret)
library(e1071)

list.files(getwd())

signs <- read.csv("signs.csv",header = TRUE)
next_sign <- read.csv("next_sign.csv",header = TRUE)


colnames(signs)[colnames(signs) =="ï..sign_type"] <- "sign_type"

sign_types <- signs$sign_type


dim(signs[-1])
dim(next_sign)

knn(train = signs[-1], test = next_sign, cl=sign_types)



# other example
datos <- read.csv("tallas.csv",header = TRUE)

colnames(datos)[colnames(datos)=="ï..Altura"] <- "Altura"

testdata <- data.frame("Altura" = c(155),
                       "Peso" = c(60))

dim(datos[-1])
dim(testdata)

knn(train = datos[1:2], test = testdata, cl= datos$Talla)
