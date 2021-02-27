
source <- read.table("household_power_consumption.txt", sep=";", header=TRUE)

day_abbrev <-  strptime(paste(source$Date, source$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

source <- cbind(source, day_abbrev)

data <- subset(source, source$Date == "1/2/2007" | source$Date == "2/2/2007")


par(bg="gray", cex.lab=.8, mar=c(5,5,5,5) )  

plot(data$day_abbrev,
     data$Global_active_power, 
     type="l", 
     main="",
     xlab="", 
     ylab="Global Active Power (kilowatts)")
                 
     


#We now have the data            