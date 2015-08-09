hpc <- subset(read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?"), Date == "1/2/2007" | Date == "2/2/2007")

par(mfcol=c(2,2))

plot(strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S"), hpc$Global_active_power, xlab = "", ylab = "Global Active Power", type="l")

with(hpc, plot(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), Sub_metering_1, xlab = "", ylab = "Energy sub metering", type="l", col="black"))
with(hpc, points(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), Sub_metering_2, xlab = "", ylab = "Energy sub metering", type="l", col="red"))
with(hpc, points(strptime(paste(Date,Time), "%d/%m/%Y %H:%M:%S"), Sub_metering_3, xlab = "", ylab = "Energy sub metering", type="l", col="blue"))
legend("topright", box.col=NA, lwd=1, lty=c(1,1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S"), hpc$Voltage, xlab = "datetime", ylab = "Voltage", type="l")

plot(strptime(paste(hpc$Date,hpc$Time), "%d/%m/%Y %H:%M:%S"), hpc$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type="l")

dev.copy(png, file = "plot4.png")
dev.off()
