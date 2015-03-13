df <-data(airquality)
str(airquality)
library(ggplot2)
library(plyr)
##Creates a function that plots the Temperature vs Ozone for a given month
Temp_Plot <- function(df,month){
    c_df <- subset(df,Month == month ,select = Ozone:Temp)
  A_Plot <- ggplot(df,aes(x=Ozone,y=Temp)) + geom_point(width=.5)
  return(A_Plot)
  }

Temp_Plot(airquality,8)