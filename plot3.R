## basic preparation
wd <- 'C:/Users/mdlyz/Desktop/DS/Assignment4_1'
setwd(wd)
library(dplyr)
library(lubridate)
dat <- read.table('household_power_consumption.txt', header=T, sep=';', na.strings='?', stringsAsFactors = FALSE)
dat <- tbl_df(dat)
dat$Date <- as.Date(dat$Date,'%d/%m/%Y')
ndat <- dat[dat$Date>='2007-02-01' & dat$Date<='2007-02-02',] %>% arrange(Date)

## Plot3
with(ndat,plot(ymd_hms(paste(Date,Time)),Sub_metering_1,type='l',col='black',
               ylab='Energy sub metering',xlab=''))
with(ndat,points(ymd_hms(paste(Date,Time)),Sub_metering_2,type='l',col='red'))
with(ndat,points(ymd_hms(paste(Date,Time)),Sub_metering_3,type='l',col='blue'))
legend('topright',lty=1,col=c('black','red','blue'),
       legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
