library(dplyr)
dataplot1 <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
subsetdata <- dataplot1[dataplot1$Date %in% c("1/2/2007","2/2/2007"),]
activepower <- as.numeric(subsetdata$Global_active_power)
dateandtime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png",width=480,height=480)
plot(dateandtime, activepower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


