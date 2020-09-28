library(readr)
myData <- read_delim("data/household_power_consumption.txt", delim = ";", col_names = T)
with(myData, plot(myData$Global_active_power, myData$Global_reactive_power, pch = 19, xlab = "Global Active Power", ylab = "Global Reactive power", col = "blue", frame = F))