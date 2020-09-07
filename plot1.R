library(dplyr)
dataplot1 <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
summary(dataplot1)
subsetdata <- dataplot1[dataplot1$Date %in% c("1/2/2007","2/2/2007"),]
activepower <- as.numeric(subsetdata$Global_active_power)
png("plot1.png",width=480,height=480)
hist(activepower,col="red",main="Global_Active_Power",xlab="Global Active Power (kilowatts)")
dev.off()

