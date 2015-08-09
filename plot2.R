hpc <- subset(read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?"), Date == "1/2/2007" | Date == "2/2/2007")
plot(strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S"), hpc$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)", type="l")
dev.copy(png, file = "plot2.png")
dev.off()
