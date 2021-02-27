# Hello world, fucking hell
#So it's day month year
source <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
specsource <- subset(source, source$Date == "1/2/2007" | source$Date == 
                             "2/2/2007")$Global_active_power
gap_an <- as.numeric(specsource)
gap_an <- gap_an[!is.na(gap_an)]

par(bg="gray")
hist(gap_an, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     col="red",
     ylim=c(0,1200),
     )

#In first graph...