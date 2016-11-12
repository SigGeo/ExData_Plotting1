setwd("C:/Users/George/Desktop/Coursera")
##Reading the Data and preprocessing
Data <-read.table("household_power_consumption.txt", header = TRUE, sep=";")
Data$Date <- as.Date(Data$Date, format="%d/%m/%Y")
subdata <- Data[(Data$Date=="2007-02-01") | (Data$Date=="2007-02-02"),]

subdata$Global_active_power <- as.numeric(as.character(subdata$Global_active_power))
subdata$Global_reactive_power <- as.numeric(as.character(subdata$Global_reactive_power))
subdata$Voltage <- as.numeric(as.character(subdata$Voltage))
subdata <- transform(subdata, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
subdata$Sub_metering_1 <- as.numeric(as.character(subdata$Sub_metering_1))
subdata$Sub_metering_2 <- as.numeric(as.character(subdata$Sub_metering_2))
subdata$Sub_metering_3 <- as.numeric(as.character(subdata$Sub_metering_3))
