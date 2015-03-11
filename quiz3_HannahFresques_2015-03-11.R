# write a function to plot a time series of air quality measurement in the maps library
# about 20 minutes

library("maps")
library("ggplot2")
library("reshape2")
data("airquality")


head(airquality)
str(airquality)

# must take two input objects
# must either return a plot object or directly plot the data



tsplot <- function(df){
  
  # data prep
  # Turn month and day into a date value
  aq2 <- df
  # I know this isn't right, but couldn't get a better answer in the time limit
  aq2$MD.n <- as.numeric(paste0(airquality$Month, airquality$Day))
  head(aq2)
  
  # Reshape
  # ideally would melt data and plot all vars. No time!
  #aq3 <- melt(data=aq2,  id.vars=(MD))
  
  # plot
  ggplot(data=aq2, aes(x=MD.n, y=Ozone)) + geom_point(stat="identity")
}

tsplot(df=airquality)








# extra code for converting date value - doesn't currently work!

# Try to turn month/day into a number
aq2$D2 <- as.character(aq2$Day)
aq2[which(aq2$Day <= 9), "D2"] <- paste0("0", aq2$D2) 

aq2$MD <- paste0(airquality$Month, airquality$Day)
head(aq2)

# couldn't figure out POSIX in the available time.
aq2$MD <- paste0(airquality$Month, "/", airquality$Day, "/1900")
aq2$MD2 <- as.POSIXct(aq2$MD, origin = "1900-01-01") 
aq2$MD2 <- as.Date(aq2$MD, format="%m-%d-%Y") 


