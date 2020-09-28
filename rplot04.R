library(readr)
myData <- read_delim("data/household_power_consumption.txt", delim = ";", col_names = T)

par(mfrow=c(2,2), mar=c(5,4,2,1))

plot(myDatafilter$newdata, myDatafilter$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", main = NULL)

plot(myDatafilter$newdata, myDatafilter$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", main = NULL)

with(myDatafilter, {plot(myDatafilter$newdata, myDatafilter$Sub_metering_1, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)") 
	lines(myDatafilter$newdata, myDatafilter$Sub_metering_2, col= "red")
	lines(myDatafilter$newdata, myDatafilter$Sub_metering_3, col= "blue")})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(myDatafilter$newdata, myDatafilter$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Reactive Power", main = NULL)
