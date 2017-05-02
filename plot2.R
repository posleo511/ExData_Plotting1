## basic preparation
wd <- 'C:/Users/mdlyz/Desktop/DS/Assignment4_1'
setwd(wd)
library(dplyr)
library(lubridate)
dat <- read.table('household_power_consumption.txt', header=T, sep=';', na.strings='?', stringsAsFactors = FALSE)
dat <- tbl_df(dat)
dat$Date <- as.Date(dat$Date,'%d/%m/%Y')
ndat <- dat[dat$Date>='2007-02-01' & dat$Date<='2007-02-02',]

## plot1
with(ndat, plot(ymd_hms(paste(Date,Time)),Global_active_power,type='l',
                ylab='Global Active Power (kilowatts)',xlab=''))
