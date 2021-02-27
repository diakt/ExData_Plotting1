
source <- read.table("household_power_consumption.txt", sep=";", header=TRUE)

day_abbrev <-  strptime(paste(source$Date, source$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
source <- cbind(source, day_abbrev)
data <- subset(source, source$Date == "1/2/2007" | source$Date == "2/2/2007")


with(data,      {
        plot(Sub_metering_1~day_abbrev, type="l", ylab="Energy sub metering", xlab="")
        lines(Sub_metering_2~day_abbrev, col="red")
        lines(Sub_metering_3~day_abbrev, col="blue")

})
legend("topright", col=c("black", "red", "blue"), lwd=1, lty=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
