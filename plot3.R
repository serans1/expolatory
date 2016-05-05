#set wroking dir as our curren t
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
#fetch & clean the data if not there 
if (!exists("dateFiltered"))
    source("base.R")
#run the global power line chart
plot (dateFiltered$ParsedDate,dateFiltered$Sub_metering_1,type="l",col="black",xlab="",ylab = "Global active power (kiliwatts)")
lines(dateFiltered$ParsedDate,dateFiltered$Sub_metering_2,type='l',col="red")
lines(dateFiltered$ParsedDate,dateFiltered$Sub_metering_3,type='l',col="blue")
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3') , lty=1, col=c('black', 'red', 'blue'), cex=.75)
#save to png file and close dev. 
dev.copy(png,'plot3.png')
dev.off()