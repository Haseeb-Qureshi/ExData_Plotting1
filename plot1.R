x <- read.csv("household_power_consumption.txt", sep=";")
data <- x[x$Date=="2/2/2007" | x$Date=="1/2/2007",]
with(data, hist(as.numeric(Global_active_power)/1000, breaks=20, col="red", main="Global Active Power", xlab="Global active power (kilowatts)"))
dev.copy(png, file="plot1.png")
dev.off()