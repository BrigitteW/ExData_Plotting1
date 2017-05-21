data<-read.table("household_power_consumption.txt", header=FALSE,na.strings="?",sep=";",skip=66637,nrows=2880,col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
as.Date(data$Date,format="%d/%m/%Y")
DayTime<-strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
png(filename="plot2.png", width=480, height=480)
plot(DayTime,data$Global_active_power, type="l",ylab="Global Active Power (kilowatts)")
dev.off