air.plot <- function(data){

  data$date <- as.Date(paste(2014, data$Month, data$Day, sep="-"), format="%Y-%m-%d")

  library(reshape2)
  df <- melt(data, id.vars=c("date", "Month", "Day"))

  library(ggplot2)
  p <- ggplot(df, aes(x=date, y=value)) +
    facet_wrap(~variable, nrow=4, scale="free_y") +
    geom_line() +
    theme_bw()

  return(p)

}

## 2 points for proper funciton declaration
## 2 points for date attribute (timeseries plot specified)
## 2 points for melt or other reshape
## 2 points for plot or ggplot
## 2 points for pull request
