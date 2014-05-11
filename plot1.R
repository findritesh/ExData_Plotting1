setwd('C:/Users/Ritesh/Desktop/projects/R Working Dir/Exploratory Data Analysis')
download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip','household_power_consumption.zip')
unzip('household_power_consumption.zip')
library('data.table')
dat=fread('household_power_consumption.txt')
subset=dat[dat$Date %in% c('1/2/2007','2/2/2007'),]

#Plot 1
windows()
hist(as.numeric(subset$Global_active_power),main="Global Active Power",col="RED",xlab="Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png",height=480,width=480,units="px")
dev.off() ## Don't forget to close the PNG device!
