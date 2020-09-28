library(readr)
myData <- read_delim("data/household_power_consumption.txt", delim = ";", col_names = T)
hist(myData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active power")
