#set wroking dir as our curren t
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
#fetch & clean the data if not there 
if (!exists("dateFiltered"))
    source("base.R")
#run the global power histogram
hist (dateFiltered$Global_active_power, col="red",xlab = "Global Active power (Killowatts)", main="Global active power")
#save to png file and close dev. 
dev.copy(png,'plot1.png')
dev.off()