## basic preparation
wd <- 'C:/Users/mdlyz/Desktop/DS/Assignment4_1'
setwd(wd)
dat <- read.table('household_power_consumption.txt', header=T, sep=';', na.strings='?', stringsAsFactors = FALSE)
dat$Date <- as.Date(dat$Date,'%d/%m/%Y')
ndat <- as.data.table(dat[dat$Date>='2007-02-01' & dat$Date<='2007-02-02',])
library(lubridate)


## plot1
png(filename='plot1.png',width=480,height=480)
hist(as.numeric(ndat$Global_active_power), col='red',
     main='Global Active Power',
     xlab='Global Active Power (kilowatts)')
dev.off()

