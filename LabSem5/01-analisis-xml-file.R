install.packages("XML")
library(XML)
cd.url <-"C:/Users/U S U A R I O/Documents/UPC/Ciclo V/Fundamentos de Data Science/LAB-S5/cd_catalog.xml"
cd.doc<-xmlParse(cd.url)
root.node <- xmlRoot(cd.doc)
root.node[1]
cd.data <- xmlSApply(root.node, function(x) xmlSApply(x, xmlValue))
cd.datos <- data.frame(t(cd.data), row.names = NULL)