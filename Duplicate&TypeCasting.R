install.packages("readr")
library(readr)

install.packages("moments")
library(moments)

install.packages("UsingR")
library(UsingR)

OnlineRetail <- read.csv(file.choose())

##### Q3. Do the data analysis (EDA)? Such as histogram, boxplot, scatterplot etc

mean(OnlineRetail$UnitPrice)
median(OnlineRetail$UnitPrice)
var(OnlineRetail$UnitPrice)
sd(OnlineRetail$UnitPrice)
skewness(OnlineRetail$UnitPrice)
kurtosis(OnlineRetail$UnitPrice)

barplot(OnlineRetail$UnitPrice)
hist(OnlineRetail$UnitPrice)
boxplot(OnlineRetail$UnitPrice)
plot(OnlineRetail$UnitPrice)

##### Q1. For the given dataset perform the type casting (convert the datatypes, ex. float to int)

#TYPE CASTING
str(OnlineRetail)
as.numeric(OnlineRetail$InvoiceNo)
is.integer((OnlineRetail$InvoiceNo))
is.integer(OnlineRetail$Quantity)

OnlineRetail$InvoiceNo <- as.factor(OnlineRetail$InvoiceNo)
str(OnlineRetail)
OnlineRetail$Quantity <- as.factor(OnlineRetail$Quantity)
str(OnlineRetail)

OnlineRetail1 <- read.csv(file.choose(), stringsAsFactors = TRUE)
str(OnlineRetail1)

##### Q2. Check for the duplicate values, and handle the duplicate values (ex. drop)

Dub_OnlineRetail <-duplicated(OnlineRetail)
Dub_OnlineRetail

OnlineRetail_New <- OnlineRetail[!duplicated(OnlineRetail), ]
OnlineRetail_New
