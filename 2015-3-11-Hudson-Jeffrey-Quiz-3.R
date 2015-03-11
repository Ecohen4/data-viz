data(airquality)
summary(airquality)
str(airquality)

library(magrittr)
library(dplyr)
library(ggplot2)

airquality$Day[airquality$Day < 10] %<>% paste0("0",.)
airquality$date <- as.POSIXct(paste("2014",airquality$Month,airquality$Day,sep = "-"))

CompareMonths <- function(month1,month2) {
  airquality1 <- filter(airquality, airquality$Month == month1)
  airquality2 <- filter(airquality, airquality$Month == month2)
  airqualityCombo <- rbind(airquality1,airquality2)
  ggplot(airqualityCombo, aes(x=date)) + geom_line(aes(y=Temp))
}

CompareMonths(5,7)
