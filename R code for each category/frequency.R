library(xlsx)
library(rJava)
Sys.setenv(JAVA_HOME="C:\\Program Files\\Java\\jre-9")
setwd("C:\\Users\\Ananth Kumar\\Desktop\\Months Data")
x<-read.xlsx("Dec17.xlsx",sheetIndex = 1)
levels(x$Type)
sold<-x$Sold
Type<-x$Type
counts<-table(sold,Type)
barplot(counts, main="Frequency of sold Medicines For Dec17",xlab="Type", ylab="Sold",cex.names =0.5)

