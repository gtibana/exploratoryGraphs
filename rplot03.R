library(readr)
myData <- read_delim("data/household_power_consumption.txt", delim = ";", col_names = T)
with(myDatafilter, {plot(myDatafilter$newdata, myDatafilter$Sub_metering_1, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)") 
	lines(myDatafilter$newdata, myDatafilter$Sub_metering_2, col= "red")
	lines(myDatafilter$newdata, myDatafilter$Sub_metering_3, col= "blue")})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
