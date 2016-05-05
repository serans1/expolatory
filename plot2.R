#set wroking dir as our curren t
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)
#fetch & clean the data if not there 
if (!exists("dateFiltered"))
    source("base.R")
#run the global power line chart
plot (dateFiltered$ParsedDate,dateFiltered$Global_active_power,type="l",ylab = "Global active power (kiliwatts)")
#save to png file and close dev. 
dev.copy(png,'plot2.png')
dev.off()