# Plot 4
setwd("~/Coursera/exploratory_data_analysis/")

hpc <- read.table(file = "household_power_consumption.txt", sep  =";", header = TRUE, dec=".")
hpc <- hpc[as.character(hpc$Date) %in% c("1/2/2007","2/2/2007") ,]


Date.time <- strptime(paste(as.character(hpc$Date), as.character(hpc$Time)), format ="%d/%m/%Y %H:%M:%S")
gap <- as.numeric(hpc$Global_active_power)/1000


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
## Top-left
plot(Date.time, gap, type = "l", xlab = "", ylab = "Global Active Power")
## Top-right
plot(Date.time, hpc$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
## Bottom-left
plot(Date.time, hpc$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(Date.time, hpc$Sub_metering_2, col = "red")
lines(Date.time, hpc$Sub_metering_3, col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
## Bottom-right
plot(Date.time, hpc$Global_reactive_power, type = "l", col = "black", xlab = "datetime")
dev.off()