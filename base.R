#set wroking dir as our curren t
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
#read the raw data 
raw <- read.csv("../household_power_consumption.txt",sep=";",na.strings="?", colClasses = "character")
#join the time and date to a single col for parsing 
raw$FullDate<-paste(raw$Date,raw$Time,sep=" ")
#parse the datetime string 
raw$ParsedDate<- strptime(raw$FullDate,format="%d/%m/%Y %H:%M:%S")
#filter the requested date range 
dateFiltered <- subset(raw, ParsedDate > "2007-02-01" & ParsedDate < "2007-02-03")
#convet the numeric data types 
dateFiltered[,c(3:9)]<-sapply(dateFiltered[, c(3:9)], as.numeric)

   
