install.packages("jsonlite")
library(jsonlite)
ine.url <- "https://servicios.ine.es/wstempus/js/ES/DATOS_TABLA/2852?nult=5&tip=AM"
pob.esp <- fromJSON(ine.url)
cash.url <- "https://www.floatrates.com/daily/usd.json"
mon.world <- fromJSON(cash.url)