
source <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
day_abbrev <-  strptime(paste(source$Date, source$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
source <- cbind(source, day_abbrev)
data <- subset(source, source$Date == "1/2/2007" | source$Date == "2/2/2007")

#adjusts for four plots
par(mfrow=c(2,2))

#Now for four plots

#Plot #1 - Second plot

plot(data$day_abbrev,
     data$Global_active_power, 
     type="l", 
     main="",
     xlab="", 
     ylab="Global Active Power")




#Plot #2 - Voltage vs datetime

plot(data$day_abbrev,
     data$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")



#Plot #3 - Third plot

with(data,      {
        plot(Sub_metering_1~day_abbrev, type="l", ylab="Energy sub metering", xlab="")
        lines(Sub_metering_2~day_abbrev, col="red")
        lines(Sub_metering_3~day_abbrev, col="blue")
        
})
legend("topright", col=c("black", "red", "blue"), lwd=1, lty=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))



#Plot #4 - Global reactive power vs datetime


plot(data$day_abbrev,
     data$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")



