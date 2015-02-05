x <- read.csv("household_power_consumption.txt", sep=";")
data <- x[x$Date=="2/2/2007" | x$Date=="1/2/2007",]
data$Global_active_power <- as.numeric(data$Global_active_power)
data$Date <- paste(data$Date, " ", data$Time)
data$Date <- strptime(data$Date, "%d/%m/%Y   %H:%M:%S")
with(data, plot(Date, as.numeric(Global_active_power)/1000, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.copy(png, file="plot2.png")
dev.off()