# Plot 2
setwd("~/Coursera/exploratory_data_analysis/")

hpc <- read.table(file = "household_power_consumption.txt", sep  =";", header = TRUE, dec=".")
hpc <- hpc[as.character(hpc$Date) %in% c("1/2/2007","2/2/2007") ,]


Date.time <- strptime(paste(as.character(hpc$Date), as.character(hpc$Time)), format ="%d/%m/%Y %H:%M:%S")
gap <- as.numeric(hpc$Global_active_power)/1000


png("plot2.png", width=480, height=480)
plot(Date.time, gap, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()