setwd('C:/Users/Ritesh/Desktop/projects/R Working Dir/Exploratory Data Analysis')
download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip','household_power_consumption.zip')
unzip('household_power_consumption.zip')
library('data.table')
dat=fread('household_power_consumption.txt')
subset=dat[dat$Date %in% c('1/2/2007','2/2/2007'),]

#Plot 2
subset2=as.data.table(subset)
x=paste(subset$Date,subset$Time)
x=as.POSIXct(strptime(x,"%d/%m/%Y %H:%M:%S"))
windows()
plot(x,subset2$Global_active_power,xlab='',ylab="Global Active Power (kilowatts)",type='l')
dev.copy(png, file = "plot2.png",height=480,width=480,units="px")
dev.off() ## Don't forget to close the PNG device!
