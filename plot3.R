# Plot 3
setwd("~/Coursera/exploratory_data_analysis/")

hpc <- read.table(file = "household_power_consumption.txt", sep  =";", header = TRUE, dec=".")
hpc <- hpc[as.character(hpc$Date) %in% c("1/2/2007","2/2/2007") ,]


Date.time <- strptime(paste(as.character(hpc$Date), as.character(hpc$Time)), format ="%d/%m/%Y %H:%M:%S")
gap <- as.numeric(hpc$Global_active_power)/1000


png("plot3.png", width=480, height=480)
plot(Date.time, hpc$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(Date.time, hpc$Sub_metering_2, col = "red")
lines(Date.time, hpc$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
dev.off()