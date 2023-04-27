setwd("C:/Users/U S U A R I O/Documents/UPC/Ciclo V/Fundamentos de Data Science/LAB-S6")

data <- read.csv("../LAB-S6/missing-data.csv", na.strings = "" )

data.limpia <- na.omit(data)

is.na(data[4,2])

is.na(data$Income)

#1: Limpiar datos NA de sólo una variable de un dataframe
data.income.limpio <- data[!is.na(data$Income),]

#2: Limpiar datos NA de todo el dataframe
complete.cases(data)
data.limpia2 <- data[complete.cases(data),]

#3: Limpiar los valores ‘cero’ de una variable de un dataframe
data$Income[data$Income == 0]
data$Income[data$Income == 0] <- NA
data$Income[data$Income == 0]

#4: Limpiar los valores NA con valores/métricas estadísticas y/o matemáticas
mean(data$Income)
mean(data$Income, na.rm=TRUE)
sd(data$Income)
sd(data$Income, na.rm=TRUE)
sum(data$Income)
sum(data$Income, na.rm=TRUE)
