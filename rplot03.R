library(readr)
myData <- read_delim("data/household_power_consumption.txt", delim = ";", col_names = T)
with(myData, plot(myData$Voltage, myData$Global_intensity, pch=20, col="yellow"), abline(lm(myData$Global_intensity ~ myData$Voltage, data = myData), col = "blue"))