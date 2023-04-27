#1: Reemplazo de datos NA con la media de la población
data <- read.csv("../LAB-S6/missing-data.csv", na.strings = "" )
data$Income[data$Income == 0] <- NA
data$Income.mean <- ifelse(is.na(data$Income), mean(data$Income, na.rm = TRUE), data$Income)

