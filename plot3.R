setwd('C:/Users/Ritesh/Desktop/projects/R Working Dir/Exploratory Data Analysis')
download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip','household_power_consumption.zip')
unzip('household_power_consumption.zip')
library('data.table')
dat=fread('household_power_consumption.txt')
subset=dat[dat$Date %in% c('1/2/2007','2/2/2007'),]

#Plot 3

windows()
plot(x,subset2$Sub_metering_1,xlab='',ylab="Energy sub metering",ylim=c(0,40),type='l',col='BLACK')
points(x,subset2$Sub_metering_2,type='s',col='RED')
points(x,subset2$Sub_metering_3,type='l',col='BLUE')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1,col=c('BLACK','RED','BLUE'),cex=1.3)
dev.copy(png, file = "plot3.png",height=480,width=480,units="px")
dev.off() ## Don't forget to close the PNG device!
