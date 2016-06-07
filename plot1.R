# Plot 1
rm(list = ls())

setwd("~/Coursera/exploratory_data_analysis/")

hpc <- read.table(file = "household_power_consumption.txt", sep  =";", header = TRUE)
hpc <- hpc[as.character(hpc$Date) %in% c("1/2/2007","2/2/2007") ,]

gap <- as.numeric(hpc$Global_active_power)/1000

png("plot1.png", width=480, height=480)
hist(gap, col="red", breaks = seq(0, 4, by = 0.25), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylim = c(0, 1200))
dev.off()
