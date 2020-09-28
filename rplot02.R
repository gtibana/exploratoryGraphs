library(readr)
myData <- read_delim("data/household_power_consumption.txt", delim = ";", col_names = T)
myDatafilter <- subset(myData, Date %in% c("1/2/2007", "2/2/2007"))
myDatafilter$newdata <- as.POSIXct(paste(as.Date(myDatafilter$Date), myDatafilter$Time))
with(myDatafilter, plot(myDatafilter$newdata, myDatafilter$Global_active_power))
myDatafilter$Date <- as.Date(myDatafilter$Date, format = "%d/%m/%Y")
myDatafilter$newdata <- as.POSIXct(paste(as.Date(myDatafilter$Date), myDatafilter$Time))

with(myDatafilter, plot(myDatafilter$newdata, myDatafilter$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", main = NULL))
